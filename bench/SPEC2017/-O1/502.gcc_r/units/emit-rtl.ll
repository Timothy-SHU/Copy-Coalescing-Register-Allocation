; ModuleID = 'emit-rtl.c'
source_filename = "emit-rtl.c"
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
%struct.real_value = type { i32, [3 x i64] }
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.double_int = type { i64, i64 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.ggc_cache_tab = type { ptr, i64, i64, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.reg_attrs = type { ptr, i64 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sequence_stack = type { ptr, ptr, ptr }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@split_branch_probability = dso_local local_unnamed_addr global i32 -1, align 4
@const_int_rtx = dso_local local_unnamed_addr global [129 x ptr] zeroinitializer, align 16
@const_int_htab = internal global ptr null, align 8
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str = private unnamed_addr constant [11 x i8] c"emit-rtl.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@reload_in_progress = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@x_rtl = dso_local local_unnamed_addr global %struct.rtl_data zeroinitializer, align 8
@global_rtl = dso_local local_unnamed_addr global [11 x ptr] zeroinitializer, align 16
@flag_pic = external local_unnamed_addr global i32, align 4
@pic_offset_table_rtx = dso_local local_unnamed_addr global ptr null, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@word_mode = dso_local local_unnamed_addr global i32 0, align 4
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@generating_concat_p = external local_unnamed_addr global i32, align 4
@regno_reg_rtx = dso_local local_unnamed_addr global ptr null, align 8
@label_num = internal global i32 1, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@flag_argument_noalias = external local_unnamed_addr global i32, align 4
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@spill_slot_decl = internal global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%sfp\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"unshare\00", align 1
@pass_unshare_all_rtl = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.3, ptr null, ptr @unshare_all_rtl, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@flag_enable_icf_debug = external local_unnamed_addr global i32, align 4
@debug_hooks = external local_unnamed_addr global ptr, align 8
@optimize = external local_unnamed_addr global i32, align 4
@free_sequence_stack = internal global ptr null, align 8
@copy_insn_n_scratches = internal unnamed_addr global i32 0, align 4
@copy_insn_scratch_in = internal unnamed_addr global [30 x ptr] zeroinitializer, align 16
@copy_insn_scratch_out = internal unnamed_addr global [30 x ptr] zeroinitializer, align 16
@orig_asm_constraints_vector = internal unnamed_addr global ptr null, align 8
@copy_asm_constraints_vector = internal unnamed_addr global ptr null, align 8
@orig_asm_operands_vector = internal unnamed_addr global ptr null, align 8
@copy_asm_operands_vector = internal unnamed_addr global ptr null, align 8
@static_regno_reg_rtx = internal global [53 x ptr] zeroinitializer, align 16
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16
@const_tiny_rtx = dso_local local_unnamed_addr global [3 x [87 x ptr]] zeroinitializer, align 16
@reg_attrs_htab = internal global ptr null, align 8
@reg_raw_mode = external local_unnamed_addr global [53 x i32], align 16
@const_double_htab = internal global ptr null, align 8
@const_fixed_htab = internal global ptr null, align 8
@mem_attrs_htab = internal global ptr null, align 8
@byte_mode = dso_local local_unnamed_addr global i32 0, align 4
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@ptr_mode = dso_local local_unnamed_addr global i32 0, align 4
@const_true_rtx = dso_local local_unnamed_addr global ptr null, align 8
@dconst0 = dso_local global %struct.real_value zeroinitializer, align 8
@dconst1 = dso_local global %struct.real_value zeroinitializer, align 8
@dconst2 = dso_local global %struct.real_value zeroinitializer, align 8
@dconstm1 = dso_local local_unnamed_addr global %struct.real_value zeroinitializer, align 8
@dconsthalf = dso_local local_unnamed_addr global %struct.real_value zeroinitializer, align 8
@fconst0 = dso_local global [18 x %struct.fixed_value] zeroinitializer, align 16
@fconst1 = dso_local global [8 x %struct.fixed_value] zeroinitializer, align 16
@mode_fbit = external local_unnamed_addr constant [87 x i8], align 16
@hard_reg_clobbers = internal global [87 x [53 x ptr]] zeroinitializer, align 16
@gt_ggc_r_gt_emit_rtl_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @spill_slot_decl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @static_regno_reg_rtx, i64 53, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_ggc_rd_gt_emit_rtl_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @hard_reg_clobbers, i64 1, i64 36888, ptr null, ptr null }, %struct.ggc_root_tab { ptr @free_sequence_stack, i64 1, i64 8, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_ggc_rc_gt_emit_rtl_h = dso_local local_unnamed_addr constant [6 x %struct.ggc_cache_tab] [%struct.ggc_cache_tab { ptr @const_fixed_htab, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def, ptr @ggc_marked_p }, %struct.ggc_cache_tab { ptr @const_double_htab, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def, ptr @ggc_marked_p }, %struct.ggc_cache_tab { ptr @reg_attrs_htab, i64 1, i64 8, ptr @gt_ggc_mx_reg_attrs, ptr @gt_pch_nx_reg_attrs, ptr @ggc_marked_p }, %struct.ggc_cache_tab { ptr @mem_attrs_htab, i64 1, i64 8, ptr @gt_ggc_mx_mem_attrs, ptr @gt_pch_nx_mem_attrs, ptr @ggc_marked_p }, %struct.ggc_cache_tab { ptr @const_int_htab, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def, ptr @ggc_marked_p }, %struct.ggc_cache_tab zeroinitializer], align 16
@gt_pch_rc_gt_emit_rtl_h = dso_local local_unnamed_addr constant [6 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @const_fixed_htab, i64 1, i64 8, ptr @gt_ggc_m_P7rtx_def4htab, ptr @gt_pch_n_P7rtx_def4htab }, %struct.ggc_root_tab { ptr @const_double_htab, i64 1, i64 8, ptr @gt_ggc_m_P7rtx_def4htab, ptr @gt_pch_n_P7rtx_def4htab }, %struct.ggc_root_tab { ptr @reg_attrs_htab, i64 1, i64 8, ptr @gt_ggc_m_P9reg_attrs4htab, ptr @gt_pch_n_P9reg_attrs4htab }, %struct.ggc_root_tab { ptr @mem_attrs_htab, i64 1, i64 8, ptr @gt_ggc_m_P9mem_attrs4htab, ptr @gt_pch_n_P9mem_attrs4htab }, %struct.ggc_root_tab { ptr @const_int_htab, i64 1, i64 8, ptr @gt_ggc_m_P7rtx_def4htab, ptr @gt_pch_n_P7rtx_def4htab }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_pch_rs_gt_emit_rtl_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @label_num, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@double_mode = dso_local local_unnamed_addr global i32 0, align 4
@return_address_pointer_rtx = dso_local local_unnamed_addr global ptr null, align 8
@switch.table.set_mem_attributes_minus_bitpos = private unnamed_addr constant [6 x i32] [i32 268435456, i32 0, i32 268435456, i32 268435456, i32 268435456, i32 268435456], align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !266 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !267
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !266 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !267
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !266 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !271
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !276
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !277

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #38
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !271
  %11 = load i8, ptr %3, align 1, !tbaa !278
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !266 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !271
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !276
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !277

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #38
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !271
  %11 = load i8, ptr %3, align 1, !tbaa !278
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !266 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !267
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !271
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !276
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !277

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #38
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !271
  %11 = load i8, ptr %3, align 1, !tbaa !278
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !266 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !267
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !266 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !279
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !280
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !277

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #38
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !279
  store i8 %12, ptr %4, align 1, !tbaa !278
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !266 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !279
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !280
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !277

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #38
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !279
  store i8 %12, ptr %4, align 1, !tbaa !278
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !266 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !267
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !279
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !280
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !277

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #38
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !279
  store i8 %12, ptr %4, align 1, !tbaa !278
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !266 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #38
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !266 {
  %2 = load i32, ptr %0, align 8, !tbaa !281
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !266 {
  %2 = load i32, ptr %0, align 8, !tbaa !281
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !266 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #38
  %6 = load ptr, ptr %5, align 8, !tbaa !267
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !282
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !266 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #38
  %6 = load ptr, ptr %5, align 8, !tbaa !267
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !282
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !266 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !266 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !266 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !266 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #38
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
  br i1 %23, label %7, label %24, !llvm.loop !283

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !266 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @gen_raw_REG(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !286 {
  %3 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef %0, i32 noundef %1) #38
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %1, ptr %4, align 8, !tbaa !278
  ret ptr %3
}

declare ptr @gen_rtx_fmt_i00_stat(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @gen_rtx_CONST_INT(i32 %0, i64 noundef %1) local_unnamed_addr #10 !prof !287 {
  %3 = alloca i64, align 8
  store i64 %1, ptr %3, align 8, !tbaa !288
  %4 = add i64 %1, 64
  %5 = icmp ult i64 %4, 129
  br i1 %5, label %6, label %8, !prof !289

6:                                                ; preds = %2
  %7 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %4
  br label %17

8:                                                ; preds = %2
  %9 = load ptr, ptr @const_int_htab, align 8, !tbaa !267
  %10 = trunc i64 %1 to i32
  %11 = call ptr @htab_find_slot_with_hash(ptr noundef %9, ptr noundef nonnull %3, i32 noundef %10, i32 noundef 1) #38
  %12 = load ptr, ptr %11, align 8, !tbaa !267
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17, !prof !290

14:                                               ; preds = %8
  %15 = load i64, ptr %3, align 8, !tbaa !288
  %16 = call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %15) #38
  store ptr %16, ptr %11, align 8, !tbaa !267
  br label %17

17:                                               ; preds = %8, %14, %6
  %18 = phi ptr [ %7, %6 ], [ %11, %14 ], [ %11, %8 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !267
  ret ptr %19
}

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_w_stat(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @gen_int_mode(i64 noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !291 {
  %3 = alloca i64, align 8
  %4 = tail call i64 @trunc_int_for_mode(i64 noundef %0, i32 noundef %1) #38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store i64 %4, ptr %3, align 8, !tbaa !288
  %5 = add i64 %4, 64
  %6 = icmp ult i64 %5, 129
  br i1 %6, label %7, label %9, !prof !289

7:                                                ; preds = %2
  %8 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %5
  br label %18

9:                                                ; preds = %2
  %10 = load ptr, ptr @const_int_htab, align 8, !tbaa !267
  %11 = trunc i64 %4 to i32
  %12 = call ptr @htab_find_slot_with_hash(ptr noundef %10, ptr noundef nonnull %3, i32 noundef %11, i32 noundef 1) #38
  %13 = load ptr, ptr %12, align 8, !tbaa !267
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18, !prof !290

15:                                               ; preds = %9
  %16 = load i64, ptr %3, align 8, !tbaa !288
  %17 = call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %16) #38
  store ptr %17, ptr %12, align 8, !tbaa !267
  br label %18

18:                                               ; preds = %7, %9, %15
  %19 = phi ptr [ %8, %7 ], [ %12, %15 ], [ %12, %9 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  ret ptr %20
}

declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @const_double_from_real_value(ptr nocapture noundef readonly byval(%struct.real_value) align 8 %0, i32 noundef %1) local_unnamed_addr #11 !prof !266 {
  %3 = tail call ptr @rtx_alloc_stat(i32 noundef 32) #38
  %4 = load i32, ptr %3, align 8
  %5 = shl i32 %1, 16
  %6 = and i32 %5, 16711680
  %7 = and i32 %4, -16711681
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !292
  %10 = load ptr, ptr @const_double_htab, align 8, !tbaa !267
  %11 = tail call ptr @htab_find_slot(ptr noundef %10, ptr noundef nonnull %3, i32 noundef 1) #38
  %12 = load ptr, ptr %11, align 8, !tbaa !267
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store ptr %3, ptr %11, align 8, !tbaa !267
  br label %15

15:                                               ; preds = %2, %14
  %16 = load ptr, ptr %11, align 8, !tbaa !267
  ret ptr %16
}

declare ptr @rtx_alloc_stat(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define dso_local ptr @const_fixed_from_fixed_value(ptr nocapture noundef readonly byval(%struct.fixed_value) align 8 %0, i32 noundef %1) local_unnamed_addr #9 !prof !293 {
  %3 = tail call ptr @rtx_alloc_stat(i32 noundef 31) #38
  %4 = load i32, ptr %3, align 8
  %5 = shl i32 %1, 16
  %6 = and i32 %5, 16711680
  %7 = and i32 %4, -16711681
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !294
  %10 = load ptr, ptr @const_fixed_htab, align 8, !tbaa !267
  %11 = tail call ptr @htab_find_slot(ptr noundef %10, ptr noundef nonnull %3, i32 noundef 1) #38
  %12 = load ptr, ptr %11, align 8, !tbaa !267
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !295

14:                                               ; preds = %2
  store ptr %3, ptr %11, align 8, !tbaa !267
  br label %15

15:                                               ; preds = %2, %14
  %16 = load ptr, ptr %11, align 8, !tbaa !267
  ret ptr %16
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @immed_double_const(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !296 {
  %4 = alloca i64, align 8
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %36, label %6, !prof !297

6:                                                ; preds = %3
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !278
  switch i8 %9, label %10 [
    i8 2, label %11
    i8 3, label %11
    i8 12, label %11
    i8 17, label %11
  ], !prof !298

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 547, ptr noundef nonnull @.str.1) #38
  br label %11

11:                                               ; preds = %6, %6, %6, %6, %10
  %12 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %13 = load i8, ptr %12, align 1, !tbaa !278
  %14 = icmp ult i8 %13, 9
  br i1 %14, label %15, label %33, !prof !299

15:                                               ; preds = %11
  %16 = tail call i64 @trunc_int_for_mode(i64 noundef %0, i32 noundef %2) #38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store i64 %16, ptr %4, align 8, !tbaa !288
  %17 = add i64 %16, 64
  %18 = icmp ult i64 %17, 129
  br i1 %18, label %19, label %21, !prof !289

19:                                               ; preds = %15
  %20 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %17
  br label %30

21:                                               ; preds = %15
  %22 = load ptr, ptr @const_int_htab, align 8, !tbaa !267
  %23 = trunc i64 %16 to i32
  %24 = call ptr @htab_find_slot_with_hash(ptr noundef %22, ptr noundef nonnull %4, i32 noundef %23, i32 noundef 1) #38
  %25 = load ptr, ptr %24, align 8, !tbaa !267
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30, !prof !290

27:                                               ; preds = %21
  %28 = load i64, ptr %4, align 8, !tbaa !288
  %29 = call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %28) #38
  store ptr %29, ptr %24, align 8, !tbaa !267
  br label %30

30:                                               ; preds = %19, %21, %27
  %31 = phi ptr [ %20, %19 ], [ %24, %27 ], [ %24, %21 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  br label %60

33:                                               ; preds = %11
  %34 = icmp eq i8 %13, 16
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 552, ptr noundef nonnull @.str.1) #38
  br label %36

36:                                               ; preds = %35, %33, %3
  %37 = icmp eq i64 %1, 0
  %38 = icmp sgt i64 %0, -1
  %39 = and i1 %38, %37
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = icmp eq i64 %1, -1
  %42 = icmp slt i64 %0, 0
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %36
  %45 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %0)
  br label %60

46:                                               ; preds = %40
  %47 = tail call ptr @rtx_alloc_stat(i32 noundef 32) #38
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, -16711681
  store i32 %49, ptr %47, align 8
  %50 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  store i64 %0, ptr %50, align 8, !tbaa !278
  %51 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  store i64 %1, ptr %51, align 8, !tbaa !278
  %52 = getelementptr i8, ptr %47, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, i8 0, i64 16, i1 false), !tbaa !278
  %53 = load ptr, ptr @const_double_htab, align 8, !tbaa !267
  %54 = tail call ptr @htab_find_slot(ptr noundef %53, ptr noundef nonnull %47, i32 noundef 1) #38
  %55 = load ptr, ptr %54, align 8, !tbaa !267
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store ptr %47, ptr %54, align 8, !tbaa !267
  br label %58

58:                                               ; preds = %46, %57
  %59 = load ptr, ptr %54, align 8, !tbaa !267
  br label %60

60:                                               ; preds = %58, %44, %30
  %61 = phi ptr [ %32, %30 ], [ %45, %44 ], [ %59, %58 ]
  ret ptr %61
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @gen_rtx_REG(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !300 {
  %3 = icmp ne i32 %0, 16
  %4 = load i32, ptr @reload_in_progress, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 true, i1 %5, !prof !301
  br i1 %6, label %62, label %7, !prof !302

7:                                                ; preds = %2
  switch i32 %1, label %29 [
    i32 20, label %8
    i32 6, label %17
    i32 16, label %27
  ], !prof !303

8:                                                ; preds = %7
  %9 = load i32, ptr @reload_completed, align 4, !tbaa !282
  %10 = icmp eq i32 %9, 0
  %11 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %12 = icmp ne i8 %11, 0
  %13 = select i1 %10, i1 true, i1 %12, !prof !304
  br i1 %13, label %14, label %16, !prof !304

14:                                               ; preds = %8
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !267
  br label %65

16:                                               ; preds = %8
  switch i32 %1, label %29 [
    i32 6, label %17
    i32 16, label %27
  ]

17:                                               ; preds = %16, %7
  %18 = load i32, ptr @reload_completed, align 4, !tbaa !282
  %19 = icmp eq i32 %18, 0
  %20 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %19, i1 true, i1 %21, !prof !305
  br i1 %22, label %23, label %25, !prof !305

23:                                               ; preds = %17
  %24 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !267
  br label %65

25:                                               ; preds = %17
  %26 = icmp eq i32 %1, 16
  br i1 %26, label %27, label %29

27:                                               ; preds = %16, %7, %25
  %28 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !267
  br label %65

29:                                               ; preds = %25, %7, %16
  %30 = load i32, ptr @flag_pic, align 4, !tbaa !282
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32, !prof !306

32:                                               ; preds = %29
  %33 = load i32, ptr @reload_completed, align 4, !tbaa !282
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !267
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !278
  br label %39

39:                                               ; preds = %35, %32, %29
  %40 = phi i32 [ -1, %29 ], [ %38, %35 ], [ 3, %32 ]
  %41 = icmp eq i32 %40, %1
  br i1 %41, label %42, label %58, !prof !307

42:                                               ; preds = %39
  br i1 %31, label %51, label %43

43:                                               ; preds = %42
  %44 = load i32, ptr @reload_completed, align 4, !tbaa !282
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !267
  %48 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !278
  %50 = zext i32 %49 to i64
  br label %51

51:                                               ; preds = %46, %43, %42
  %52 = phi i64 [ 4294967295, %42 ], [ %50, %46 ], [ 3, %43 ]
  %53 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !278
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !267
  br label %65

58:                                               ; preds = %51, %39
  %59 = icmp eq i32 %1, 7
  br i1 %59, label %60, label %62, !prof !308

60:                                               ; preds = %58
  %61 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !267
  br label %65

62:                                               ; preds = %58, %2
  %63 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef %0, i32 noundef %1) #38
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %1, ptr %64, align 8, !tbaa !278
  br label %65

65:                                               ; preds = %62, %60, %56, %27, %23, %14
  %66 = phi ptr [ %63, %62 ], [ %15, %14 ], [ %24, %23 ], [ %28, %27 ], [ %57, %56 ], [ %61, %60 ]
  ret ptr %66
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !309 {
  %3 = tail call ptr @gen_rtx_fmt_e0_stat(i32 noundef 43, i32 noundef %0, ptr noundef %1) #38
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %4, align 8, !tbaa !278
  ret ptr %3
}

declare ptr @gen_rtx_fmt_e0_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gen_const_mem(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !310 {
  %3 = tail call ptr @gen_rtx_fmt_e0_stat(i32 noundef 43, i32 noundef %0, ptr noundef %1) #38
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %4, align 8, !tbaa !278
  %5 = load i32, ptr %3, align 8
  %6 = or i32 %5, 100663296
  store i32 %6, ptr %3, align 8
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_frame_mem(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  %3 = tail call ptr @gen_rtx_fmt_e0_stat(i32 noundef 43, i32 noundef %0, ptr noundef %1) #38
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %4, align 8, !tbaa !278
  %5 = load i32, ptr %3, align 8
  %6 = or i32 %5, 33554432
  store i32 %6, ptr %3, align 8
  %7 = tail call i32 @get_frame_alias_set() #38
  tail call void @set_mem_alias_set(ptr noundef nonnull %3, i32 noundef %7)
  ret ptr %3
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @set_mem_alias_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !311 {
  %3 = alloca %struct.mem_attrs, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !312

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !313
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi ptr [ %8, %7 ], [ null, %2 ]
  br i1 %6, label %14, label %11, !prof !312

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !315
  br label %14

14:                                               ; preds = %9, %11
  %15 = phi ptr [ %13, %11 ], [ null, %9 ]
  br i1 %6, label %19, label %16, !prof !312

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %5, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !316
  br label %30

19:                                               ; preds = %14
  %20 = load i32, ptr %0, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = zext nneg i32 %22 to i64
  %26 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !278
  %28 = zext i8 %27 to i64
  %29 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %28)
  br label %30

30:                                               ; preds = %24, %19, %16
  %31 = phi ptr [ %18, %16 ], [ %29, %24 ], [ null, %19 ]
  %32 = load ptr, ptr %4, align 8, !tbaa !278
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34, !prof !312

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.mem_attrs, ptr %32, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !317
  br label %37

37:                                               ; preds = %30, %34
  %38 = phi i32 [ %36, %34 ], [ 8, %30 ]
  br i1 %33, label %42, label %39, !prof !312

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.mem_attrs, ptr %32, i64 0, i32 5
  %41 = load i8, ptr %40, align 8, !tbaa !318
  br label %42

42:                                               ; preds = %37, %39
  %43 = phi i8 [ %41, %39 ], [ 0, %37 ]
  %44 = load i32, ptr %0, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #38
  %47 = icmp eq i32 %1, 0
  %48 = icmp eq ptr %10, null
  %49 = and i1 %47, %48
  %50 = icmp eq ptr %15, null
  %51 = and i1 %49, %50
  %52 = icmp eq i8 %43, 0
  %53 = and i1 %51, %52
  br i1 %53, label %54, label %70, !prof !319

54:                                               ; preds = %42
  %55 = icmp eq ptr %31, null
  br i1 %55, label %68, label %56, !prof !320

56:                                               ; preds = %54
  %57 = icmp eq i32 %46, 1
  br i1 %57, label %70, label %58, !prof !321

58:                                               ; preds = %56
  %59 = zext nneg i32 %46 to i64
  %60 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !278
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !278
  %65 = icmp eq i64 %64, %62
  %66 = icmp eq i32 %38, 8
  %67 = and i1 %66, %65
  br i1 %67, label %84, label %70, !prof !322

68:                                               ; preds = %54
  %69 = icmp eq i32 %38, 8
  br i1 %69, label %84, label %70, !prof !323

70:                                               ; preds = %68, %58, %56, %42
  %71 = getelementptr inbounds %struct.mem_attrs, ptr %3, i64 0, i32 3
  store i32 %1, ptr %71, align 8, !tbaa !324
  store ptr %10, ptr %3, align 8, !tbaa !313
  %72 = getelementptr inbounds %struct.mem_attrs, ptr %3, i64 0, i32 1
  store ptr %15, ptr %72, align 8, !tbaa !315
  %73 = getelementptr inbounds %struct.mem_attrs, ptr %3, i64 0, i32 2
  store ptr %31, ptr %73, align 8, !tbaa !316
  %74 = getelementptr inbounds %struct.mem_attrs, ptr %3, i64 0, i32 4
  store i32 %38, ptr %74, align 4, !tbaa !317
  %75 = getelementptr inbounds %struct.mem_attrs, ptr %3, i64 0, i32 5
  store i8 %43, ptr %75, align 8, !tbaa !318
  %76 = load ptr, ptr @mem_attrs_htab, align 8, !tbaa !267
  %77 = call ptr @htab_find_slot(ptr noundef %76, ptr noundef nonnull %3, i32 noundef 1) #38
  %78 = load ptr, ptr %77, align 8, !tbaa !267
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82, !prof !325

80:                                               ; preds = %70
  %81 = call ptr @ggc_alloc_stat(i64 noundef 40) #38
  store ptr %81, ptr %77, align 8, !tbaa !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %81, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  br label %82

82:                                               ; preds = %80, %70
  %83 = load ptr, ptr %77, align 8, !tbaa !267
  br label %84

84:                                               ; preds = %58, %68, %82
  %85 = phi ptr [ %83, %82 ], [ null, %58 ], [ null, %68 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #38
  store ptr %85, ptr %4, align 8, !tbaa !278
  ret void
}

declare i32 @get_frame_alias_set() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_tmp_stack_mem(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  %3 = tail call ptr @gen_rtx_fmt_e0_stat(i32 noundef 43, i32 noundef %0, ptr noundef %1) #38
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %4, align 8, !tbaa !278
  %5 = load i32, ptr %3, align 8
  %6 = or i32 %5, 33554432
  store i32 %6, ptr %3, align 8
  %7 = load ptr, ptr @cfun, align 8, !tbaa !267
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 524288
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = tail call i32 @get_frame_alias_set() #38
  tail call void @set_mem_alias_set(ptr noundef nonnull %3, i32 noundef %13)
  br label %14

14:                                               ; preds = %12, %2
  ret ptr %3
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @validate_subreg(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #10 !prof !326 {
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !278
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !278
  %11 = zext i8 %10 to i32
  %12 = urem i32 %3, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i8 %7 to i32
  %15 = icmp ugt i32 %14, %3
  %16 = select i1 %13, i1 %15, i1 false, !prof !327
  br i1 %16, label %17, label %87, !prof !327

17:                                               ; preds = %4
  %18 = load i32, ptr @word_mode, align 4, !tbaa !282
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %48, label %20, !prof !328

20:                                               ; preds = %17
  %21 = icmp ult i8 %10, 4
  %22 = icmp ult i8 %7, %10
  %23 = select i1 %21, i1 true, i1 %22, !prof !329
  br i1 %23, label %24, label %48, !prof !329

24:                                               ; preds = %20
  %25 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %26 = load i8, ptr %25, align 1, !tbaa !278
  %27 = add i8 %26, -10
  %28 = icmp ult i8 %27, 8
  br i1 %28, label %29, label %34, !prof !330

29:                                               ; preds = %24
  %30 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %5
  %31 = load i8, ptr %30, align 1, !tbaa !278
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %48, label %34

34:                                               ; preds = %29, %24
  %35 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %36 = load i8, ptr %35, align 1, !tbaa !278
  %37 = add i8 %36, -12
  %38 = icmp ult i8 %37, 6
  br i1 %38, label %39, label %44, !prof !330

39:                                               ; preds = %34
  %40 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %8
  %41 = load i8, ptr %40, align 1, !tbaa !278
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, %1
  br i1 %43, label %48, label %44

44:                                               ; preds = %39, %34
  switch i8 %26, label %45 [
    i8 8, label %46
    i8 9, label %46
    i8 11, label %46
    i8 17, label %46
  ], !prof !331

45:                                               ; preds = %44
  switch i8 %36, label %48 [
    i8 8, label %46
    i8 9, label %46
    i8 11, label %46
    i8 17, label %46
  ], !prof !331

46:                                               ; preds = %45, %45, %45, %44, %44, %44, %45, %44
  %47 = icmp eq i8 %7, %10
  br i1 %47, label %48, label %87

48:                                               ; preds = %45, %20, %39, %46, %29, %17
  %49 = icmp ugt i8 %10, %7
  br i1 %49, label %50, label %53, !prof !328

50:                                               ; preds = %48
  %51 = icmp eq i32 %3, 0
  %52 = zext i1 %51 to i8
  br label %87

53:                                               ; preds = %48
  %54 = icmp eq ptr %2, null
  br i1 %54, label %81, label %55, !prof !330

55:                                               ; preds = %53
  %56 = load i32, ptr %2, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 37
  br i1 %58, label %59, label %81, !prof !332

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !278
  %62 = icmp ult i32 %61, 53
  br i1 %62, label %63, label %81, !prof !333

63:                                               ; preds = %59
  %64 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %65 = load i8, ptr %64, align 1, !tbaa !278
  %66 = add i8 %65, -10
  %67 = icmp ult i8 %66, 8
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %5
  %70 = load i8, ptr %69, align 1, !tbaa !278
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, %0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68, %63
  %74 = zext nneg i32 %61 to i64
  %75 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !282
  %77 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %1, i32 noundef %0, i32 noundef %76) #38
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %73, %68
  %80 = tail call zeroext i8 @subreg_offset_representable_p(i32 noundef %61, i32 noundef %1, i32 noundef %3, i32 noundef %0) #38
  br label %87

81:                                               ; preds = %59, %55, %53
  %82 = icmp ugt i8 %10, 3
  %83 = and i32 %3, 3
  %84 = icmp eq i32 %83, 0
  %85 = or i1 %84, %82
  %86 = zext i1 %85 to i8
  br label %87

87:                                               ; preds = %81, %79, %73, %46, %4, %50
  %88 = phi i8 [ %52, %50 ], [ 0, %4 ], [ 0, %46 ], [ %80, %79 ], [ 0, %73 ], [ %86, %81 ]
  ret i8 %88
}

declare zeroext i8 @ix86_cannot_change_mode_class(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @subreg_offset_representable_p(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #13 !prof !334 {
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @gen_rtx_SUBREG(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !335 {
  %4 = load i32, ptr %1, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !278
  %10 = zext i32 %0 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !278
  %13 = zext i8 %12 to i32
  %14 = urem i32 %2, %13
  %15 = icmp eq i32 %14, 0
  %16 = zext i8 %9 to i32
  %17 = icmp ugt i32 %16, %2
  %18 = select i1 %15, i1 %17, i1 false, !prof !327
  br i1 %18, label %19, label %86, !prof !327

19:                                               ; preds = %3
  %20 = load i32, ptr @word_mode, align 4, !tbaa !282
  %21 = icmp eq i32 %20, %0
  br i1 %21, label %50, label %22, !prof !328

22:                                               ; preds = %19
  %23 = icmp ult i8 %12, 4
  %24 = icmp ult i8 %9, %12
  %25 = select i1 %23, i1 true, i1 %24, !prof !329
  br i1 %25, label %26, label %50, !prof !329

26:                                               ; preds = %22
  %27 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %28 = load i8, ptr %27, align 1, !tbaa !278
  %29 = add i8 %28, -10
  %30 = icmp ult i8 %29, 8
  br i1 %30, label %31, label %36, !prof !330

31:                                               ; preds = %26
  %32 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %33 = load i8, ptr %32, align 1, !tbaa !278
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, %0
  br i1 %35, label %50, label %36

36:                                               ; preds = %31, %26
  %37 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %38 = load i8, ptr %37, align 1, !tbaa !278
  %39 = add i8 %38, -12
  %40 = icmp ult i8 %39, 6
  br i1 %40, label %41, label %46, !prof !330

41:                                               ; preds = %36
  %42 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %10
  %43 = load i8, ptr %42, align 1, !tbaa !278
  %44 = trunc i32 %5 to i8
  %45 = icmp eq i8 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %41, %36
  switch i8 %28, label %47 [
    i8 8, label %48
    i8 9, label %48
    i8 11, label %48
    i8 17, label %48
  ], !prof !331

47:                                               ; preds = %46
  switch i8 %38, label %50 [
    i8 8, label %48
    i8 9, label %48
    i8 11, label %48
    i8 17, label %48
  ], !prof !331

48:                                               ; preds = %47, %47, %47, %47, %46, %46, %46, %46
  %49 = icmp eq i8 %9, %12
  br i1 %49, label %50, label %86

50:                                               ; preds = %48, %47, %41, %31, %22, %19
  %51 = icmp ugt i8 %12, %9
  br i1 %51, label %52, label %55, !prof !328

52:                                               ; preds = %50
  %53 = icmp eq i32 %2, 0
  %54 = zext i1 %53 to i8
  br label %86

55:                                               ; preds = %50
  %56 = and i32 %4, 65535
  %57 = icmp eq i32 %56, 37
  br i1 %57, label %58, label %80, !prof !332

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !278
  %61 = icmp ult i32 %60, 53
  br i1 %61, label %62, label %80, !prof !333

62:                                               ; preds = %58
  %63 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %64 = load i8, ptr %63, align 1, !tbaa !278
  %65 = add i8 %64, -10
  %66 = icmp ult i8 %65, 8
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %7
  %69 = load i8, ptr %68, align 1, !tbaa !278
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, %0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67, %62
  %73 = zext nneg i32 %60 to i64
  %74 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !282
  %76 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %6, i32 noundef %0, i32 noundef %75) #38
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72, %67
  %79 = tail call zeroext i8 @subreg_offset_representable_p(i32 noundef %60, i32 noundef %6, i32 noundef %2, i32 noundef %0) #38
  br label %86

80:                                               ; preds = %58, %55
  %81 = icmp ugt i8 %12, 3
  %82 = and i32 %2, 3
  %83 = icmp eq i32 %82, 0
  %84 = or i1 %83, %81
  %85 = zext i1 %84 to i8
  br label %86

86:                                               ; preds = %3, %48, %52, %72, %78, %80
  %87 = phi i8 [ %54, %52 ], [ 0, %3 ], [ 0, %48 ], [ %79, %78 ], [ 0, %72 ], [ %85, %80 ]
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %90, !prof !336

89:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 776, ptr noundef nonnull @.str.1) #38
  br label %90

90:                                               ; preds = %86, %89
  %91 = tail call ptr @gen_rtx_fmt_ei_stat(i32 noundef 39, i32 noundef %0, ptr noundef nonnull %1, i32 noundef %2) #38
  ret ptr %91
}

declare ptr @gen_rtx_fmt_ei_stat(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gen_lowpart_SUBREG(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  %3 = tail call ptr @gen_rtx_SUBREG(i32 noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  ret ptr %3
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @gen_rtvec(i32 noundef %0, ...) local_unnamed_addr #10 !prof !337 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #38
  call void @llvm.va_start(ptr nonnull %2)
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %30, label %4, !prof !338

4:                                                ; preds = %1
  %5 = call ptr @rtvec_alloc(i32 noundef %0) #38
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %29, !prof !339

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %9 = zext nneg i32 %0 to i64
  br label %10

10:                                               ; preds = %7, %23
  %11 = phi i64 [ 0, %7 ], [ %27, %23 ]
  %12 = load i32, ptr %2, align 16
  %13 = icmp ult i32 %12, 41
  br i1 %13, label %14, label %19, !prof !340

14:                                               ; preds = %10
  %15 = load ptr, ptr %8, align 16
  %16 = zext nneg i32 %12 to i64
  %17 = getelementptr i8, ptr %15, i64 %16
  %18 = add nuw nsw i32 %12, 8
  store i32 %18, ptr %2, align 16
  br label %23

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i64 8
  store ptr %22, ptr %20, align 8
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi ptr [ %17, %14 ], [ %21, %19 ]
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.rtvec_def, ptr %5, i64 0, i32 1, i64 %11
  store ptr %25, ptr %26, align 8, !tbaa !267
  %27 = add nuw nsw i64 %11, 1
  %28 = icmp eq i64 %27, %9
  br i1 %28, label %29, label %10, !prof !341, !llvm.loop !342

29:                                               ; preds = %23, %4
  call void @llvm.va_end(ptr %2)
  br label %30

30:                                               ; preds = %1, %29
  %31 = phi ptr [ %5, %29 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #38
  ret ptr %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #14

declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #14

; Function Attrs: nounwind uwtable
define dso_local ptr @gen_rtvec_v(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !310 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %17, label %4, !prof !343

4:                                                ; preds = %2
  %5 = tail call ptr @rtvec_alloc(i32 noundef %0) #38
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %17, !prof !344

7:                                                ; preds = %4
  %8 = zext nneg i32 %0 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %15, %9 ]
  %11 = phi ptr [ %1, %7 ], [ %12, %9 ]
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %11, align 8, !tbaa !267
  %14 = getelementptr inbounds %struct.rtvec_def, ptr %5, i64 0, i32 1, i64 %10
  store ptr %13, ptr %14, align 8, !tbaa !267
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %8
  br i1 %16, label %17, label %9, !prof !345, !llvm.loop !346

17:                                               ; preds = %9, %4, %2
  %18 = phi ptr [ null, %2 ], [ %5, %4 ], [ %5, %9 ]
  ret ptr %18
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @byte_lowpart_offset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #15 !prof !266 {
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @gen_reg_rtx(i32 noundef %0) local_unnamed_addr #10 !prof !347 {
  %2 = tail call i32 @get_mode_alignment(i32 noundef %0) #38
  %3 = load i32, ptr @reload_in_progress, align 4, !tbaa !282
  %4 = icmp ne i32 %3, 0
  %5 = load i32, ptr @reload_completed, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6, !prof !348
  br i1 %7, label %8, label %9, !prof !348

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 863, ptr noundef nonnull @.str.1) #38
  br label %9

9:                                                ; preds = %1, %8
  %10 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !349
  %11 = icmp uge i32 %10, %2
  %12 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %11, i1 true, i1 %13, !prof !358
  br i1 %14, label %20, label %15, !prof !358

15:                                               ; preds = %9
  %16 = tail call i32 @ix86_minimum_alignment(ptr noundef null, i32 noundef %0, i32 noundef %2) #38
  %17 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !349
  %18 = icmp ult i32 %17, %16
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 %16, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !349
  br label %20

20:                                               ; preds = %15, %19, %9
  %21 = load i32, ptr @generating_concat_p, align 4, !tbaa !282
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23, !prof !359

23:                                               ; preds = %20
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !278
  %27 = and i8 %26, -2
  %28 = icmp eq i8 %27, 10
  br i1 %28, label %31, label %38, !prof !360

29:                                               ; preds = %54, %31
  %30 = phi ptr [ %37, %31 ], [ %56, %54 ]
  ret ptr %30

31:                                               ; preds = %23
  %32 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %24
  %33 = load i8, ptr %32, align 1, !tbaa !278
  %34 = zext i8 %33 to i32
  %35 = tail call ptr @gen_reg_rtx(i32 noundef %34)
  %36 = tail call ptr @gen_reg_rtx(i32 noundef %34)
  %37 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %0, ptr noundef %35, ptr noundef %36) #38
  br label %29

38:                                               ; preds = %23, %20
  %39 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !361
  %40 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 8), align 4, !tbaa !362
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %54, !prof !363

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !364
  %44 = shl nsw i32 %40, 1
  %45 = sext i32 %44 to i64
  %46 = tail call ptr @xrealloc(ptr noundef %43, i64 noundef %45) #38
  %47 = sext i32 %40 to i64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  tail call void @llvm.memset.p0.i64(ptr align 1 %48, i8 0, i64 %47, i1 false), !prof !365
  store ptr %46, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !364
  %49 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !267
  %50 = shl nsw i64 %45, 3
  %51 = tail call ptr @ggc_realloc_stat(ptr noundef %49, i64 noundef %50) #38
  %52 = getelementptr inbounds ptr, ptr %51, i64 %47
  %53 = shl nsw i64 %47, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %52, i8 0, i64 %53, i1 false), !prof !366
  store ptr %51, ptr @regno_reg_rtx, align 8, !tbaa !267
  store i32 %44, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 8), align 4, !tbaa !362
  br label %54

54:                                               ; preds = %42, %38
  %55 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !361
  %56 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef %0, i32 noundef %55) #38
  %57 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %55, ptr %57, align 8, !tbaa !278
  %58 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !267
  %59 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !361
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !361
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds ptr, ptr %58, i64 %61
  store ptr %56, ptr %62, align 8, !tbaa !267
  br label %29
}

declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #3

declare i32 @ix86_minimum_alignment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

declare ptr @ggc_realloc_stat(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @gen_rtx_REG_offset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !367 {
  %5 = alloca %struct.reg_attrs, align 8
  %6 = icmp ne i32 %1, 16
  %7 = load i32, ptr @reload_in_progress, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 true, i1 %8, !prof !301
  br i1 %9, label %65, label %10, !prof !302

10:                                               ; preds = %4
  switch i32 %2, label %32 [
    i32 20, label %11
    i32 6, label %20
    i32 16, label %30
  ], !prof !303

11:                                               ; preds = %10
  %12 = load i32, ptr @reload_completed, align 4, !tbaa !282
  %13 = icmp eq i32 %12, 0
  %14 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %15 = icmp ne i8 %14, 0
  %16 = select i1 %13, i1 true, i1 %15, !prof !304
  br i1 %16, label %17, label %19, !prof !304

17:                                               ; preds = %11
  %18 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !267
  br label %68

19:                                               ; preds = %11
  switch i32 %2, label %32 [
    i32 6, label %20
    i32 16, label %30
  ]

20:                                               ; preds = %19, %10
  %21 = load i32, ptr @reload_completed, align 4, !tbaa !282
  %22 = icmp eq i32 %21, 0
  %23 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %24 = icmp ne i8 %23, 0
  %25 = select i1 %22, i1 true, i1 %24, !prof !305
  br i1 %25, label %26, label %28, !prof !305

26:                                               ; preds = %20
  %27 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !267
  br label %68

28:                                               ; preds = %20
  %29 = icmp eq i32 %2, 16
  br i1 %29, label %30, label %32

30:                                               ; preds = %28, %19, %10
  %31 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !267
  br label %68

32:                                               ; preds = %28, %19, %10
  %33 = load i32, ptr @flag_pic, align 4, !tbaa !282
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35, !prof !306

35:                                               ; preds = %32
  %36 = load i32, ptr @reload_completed, align 4, !tbaa !282
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !267
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !278
  br label %42

42:                                               ; preds = %38, %35, %32
  %43 = phi i32 [ -1, %32 ], [ %41, %38 ], [ 3, %35 ]
  %44 = icmp eq i32 %43, %2
  br i1 %44, label %45, label %61, !prof !307

45:                                               ; preds = %42
  br i1 %34, label %54, label %46

46:                                               ; preds = %45
  %47 = load i32, ptr @reload_completed, align 4, !tbaa !282
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !267
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !278
  %53 = zext i32 %52 to i64
  br label %54

54:                                               ; preds = %49, %46, %45
  %55 = phi i64 [ 4294967295, %45 ], [ %53, %49 ], [ 3, %46 ]
  %56 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !278
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !267
  br label %68

61:                                               ; preds = %54, %42
  %62 = icmp eq i32 %2, 7
  br i1 %62, label %63, label %65, !prof !308

63:                                               ; preds = %61
  %64 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !267
  br label %68

65:                                               ; preds = %61, %4
  %66 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef %1, i32 noundef %2) #38
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %2, ptr %67, align 8, !tbaa !278
  br label %68

68:                                               ; preds = %17, %26, %30, %59, %63, %65
  %69 = phi ptr [ %66, %65 ], [ %18, %17 ], [ %27, %26 ], [ %31, %30 ], [ %60, %59 ], [ %64, %63 ]
  %70 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %71 = load ptr, ptr %70, align 8, !tbaa !278
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73, !prof !368

73:                                               ; preds = %68
  %74 = load ptr, ptr %71, align 8, !tbaa !369
  br label %75

75:                                               ; preds = %73, %68
  %76 = phi ptr [ %74, %73 ], [ null, %68 ]
  br i1 %72, label %81, label %77, !prof !368

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.reg_attrs, ptr %71, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !371
  %80 = trunc i64 %79 to i32
  br label %81

81:                                               ; preds = %75, %77
  %82 = phi i32 [ %80, %77 ], [ 0, %75 ]
  %83 = add i32 %82, %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #38
  %84 = icmp eq ptr %76, null
  %85 = icmp eq i32 %83, 0
  %86 = and i1 %84, %85
  br i1 %86, label %98, label %87, !prof !372

87:                                               ; preds = %81
  store ptr %76, ptr %5, align 8, !tbaa !369
  %88 = sext i32 %83 to i64
  %89 = getelementptr inbounds %struct.reg_attrs, ptr %5, i64 0, i32 1
  store i64 %88, ptr %89, align 8, !tbaa !371
  %90 = load ptr, ptr @reg_attrs_htab, align 8, !tbaa !267
  %91 = call ptr @htab_find_slot(ptr noundef %90, ptr noundef nonnull %5, i32 noundef 1) #38
  %92 = load ptr, ptr %91, align 8, !tbaa !267
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %96, !prof !373

94:                                               ; preds = %87
  %95 = call ptr @ggc_alloc_stat(i64 noundef 16) #38
  store ptr %95, ptr %91, align 8, !tbaa !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %95, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  br label %96

96:                                               ; preds = %94, %87
  %97 = load ptr, ptr %91, align 8, !tbaa !267
  br label %98

98:                                               ; preds = %81, %96
  %99 = phi ptr [ %97, %96 ], [ null, %81 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #38
  %100 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %99, ptr %100, align 8, !tbaa !278
  ret ptr %69
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gen_reg_rtx_offset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !prof !266 {
  %4 = tail call ptr @gen_reg_rtx(i32 noundef %1)
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %6, align 8, !tbaa !369
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ null, %3 ]
  br i1 %7, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.reg_attrs, ptr %6, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !371
  %15 = trunc i64 %14 to i32
  br label %16

16:                                               ; preds = %10, %12
  %17 = phi i32 [ %15, %12 ], [ 0, %10 ]
  %18 = add i32 %17, %2
  %19 = tail call fastcc ptr @get_reg_attrs(ptr noundef %11, i32 noundef %18)
  %20 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %19, ptr %20, align 8, !tbaa !278
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @adjust_reg_mode(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !374 {
  %3 = alloca %struct.reg_attrs, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !375

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !369
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi ptr [ %8, %7 ], [ null, %2 ]
  br i1 %6, label %15, label %11, !prof !375

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.reg_attrs, ptr %5, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !371
  %14 = trunc i64 %13 to i32
  br label %15

15:                                               ; preds = %9, %11
  %16 = phi i32 [ %14, %11 ], [ 0, %9 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #38
  %17 = icmp eq ptr %10, null
  %18 = icmp eq i32 %16, 0
  %19 = and i1 %17, %18
  br i1 %19, label %31, label %20, !prof !372

20:                                               ; preds = %15
  store ptr %10, ptr %3, align 8, !tbaa !369
  %21 = sext i32 %16 to i64
  %22 = getelementptr inbounds %struct.reg_attrs, ptr %3, i64 0, i32 1
  store i64 %21, ptr %22, align 8, !tbaa !371
  %23 = load ptr, ptr @reg_attrs_htab, align 8, !tbaa !267
  %24 = call ptr @htab_find_slot(ptr noundef %23, ptr noundef nonnull %3, i32 noundef 1) #38
  %25 = load ptr, ptr %24, align 8, !tbaa !267
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29, !prof !373

27:                                               ; preds = %20
  %28 = call ptr @ggc_alloc_stat(i64 noundef 16) #38
  store ptr %28, ptr %24, align 8, !tbaa !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %29

29:                                               ; preds = %27, %20
  %30 = load ptr, ptr %24, align 8, !tbaa !267
  br label %31

31:                                               ; preds = %15, %29
  %32 = phi ptr [ %30, %29 ], [ null, %15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #38
  store ptr %32, ptr %4, align 8, !tbaa !278
  %33 = load i32, ptr %0, align 8
  %34 = shl i32 %1, 16
  %35 = and i32 %34, 16711680
  %36 = and i32 %33, -16711681
  %37 = or disjoint i32 %36, %35
  store i32 %37, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @set_reg_attrs_from_value(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !376 {
  %3 = alloca %struct.reg_attrs, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !278
  %6 = icmp ult i32 %5, 53
  br i1 %6, label %97, label %7, !prof !377

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %97 [
    i16 43, label %10
    i16 37, label %55
  ], !prof !378

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !278
  %13 = icmp eq ptr %12, null
  br i1 %13, label %45, label %14, !prof !379

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mem_attrs, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !315
  %17 = icmp eq ptr %16, null
  br i1 %17, label %45, label %18, !prof !380

18:                                               ; preds = %14
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 30
  br i1 %21, label %22, label %45, !prof !381

22:                                               ; preds = %18
  %23 = load ptr, ptr %12, align 8, !tbaa !313
  %24 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !278
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #38
  %26 = icmp eq ptr %23, null
  %27 = and i64 %25, 4294967295
  %28 = icmp eq i64 %27, 0
  %29 = and i1 %26, %28
  br i1 %29, label %42, label %30, !prof !372

30:                                               ; preds = %22
  store ptr %23, ptr %3, align 8, !tbaa !369
  %31 = shl i64 %25, 32
  %32 = ashr exact i64 %31, 32
  %33 = getelementptr inbounds %struct.reg_attrs, ptr %3, i64 0, i32 1
  store i64 %32, ptr %33, align 8, !tbaa !371
  %34 = load ptr, ptr @reg_attrs_htab, align 8, !tbaa !267
  %35 = call ptr @htab_find_slot(ptr noundef %34, ptr noundef nonnull %3, i32 noundef 1) #38
  %36 = load ptr, ptr %35, align 8, !tbaa !267
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40, !prof !373

38:                                               ; preds = %30
  %39 = call ptr @ggc_alloc_stat(i64 noundef 16) #38
  store ptr %39, ptr %35, align 8, !tbaa !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %40

40:                                               ; preds = %38, %30
  %41 = load ptr, ptr %35, align 8, !tbaa !267
  br label %42

42:                                               ; preds = %22, %40
  %43 = phi ptr [ %41, %40 ], [ null, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #38
  %44 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %43, ptr %44, align 8, !tbaa !278
  br label %45

45:                                               ; preds = %10, %42, %18, %14
  %46 = load i32, ptr %1, align 8
  %47 = and i32 %46, 1073741824
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %97, label %49, !prof !382

49:                                               ; preds = %45
  %50 = load i32, ptr %0, align 8
  %51 = and i32 %50, 1073741824
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %97, !prof !383

53:                                               ; preds = %49
  %54 = or disjoint i32 %50, 1073741824
  store i32 %54, ptr %0, align 8
  br label %97

55:                                               ; preds = %7
  %56 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !278
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59, !prof !384

59:                                               ; preds = %55
  %60 = load ptr, ptr %57, align 8, !tbaa !369
  %61 = getelementptr inbounds %struct.reg_attrs, ptr %57, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !371
  %63 = trunc i64 %62 to i32
  %64 = tail call fastcc ptr @get_reg_attrs(ptr noundef %60, i32 noundef %63)
  %65 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %64, ptr %65, align 8, !tbaa !278
  br label %66

66:                                               ; preds = %59, %55
  %67 = load i32, ptr %1, align 8
  %68 = and i32 %67, 1073741824
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %97, label %70, !prof !385

70:                                               ; preds = %66
  %71 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !364
  %72 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !278
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %71, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !278
  %77 = load i32, ptr %0, align 8
  %78 = and i32 %77, 1073741824
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %70
  %81 = or disjoint i32 %77, 1073741824
  store i32 %81, ptr %0, align 8
  %82 = icmp eq i8 %76, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !364
  %85 = load i32, ptr %4, align 8, !tbaa !278
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %84, i64 %86
  store i8 %76, ptr %87, align 1, !tbaa !278
  br label %97

88:                                               ; preds = %70
  %89 = icmp eq i8 %76, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %88
  %91 = load i32, ptr %4, align 8, !tbaa !278
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %71, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !278
  %95 = icmp ugt i8 %94, %76
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i8 %76, ptr %93, align 1, !tbaa !278
  br label %97

97:                                               ; preds = %96, %90, %88, %83, %80, %53, %49, %45, %66, %7, %2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !prof !386 !PGOFuncName !387 {
  %3 = alloca %struct.reg_attrs, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #38
  %4 = icmp eq ptr %0, null
  %5 = icmp eq i32 %1, 0
  %6 = and i1 %4, %5
  br i1 %6, label %18, label %7, !prof !372

7:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !369
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.reg_attrs, ptr %3, i64 0, i32 1
  store i64 %8, ptr %9, align 8, !tbaa !371
  %10 = load ptr, ptr @reg_attrs_htab, align 8, !tbaa !267
  %11 = call ptr @htab_find_slot(ptr noundef %10, ptr noundef nonnull %3, i32 noundef 1) #38
  %12 = load ptr, ptr %11, align 8, !tbaa !267
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !373

14:                                               ; preds = %7
  %15 = call ptr @ggc_alloc_stat(i64 noundef 16) #38
  store ptr %15, ptr %11, align 8, !tbaa !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %16

16:                                               ; preds = %14, %7
  %17 = load ptr, ptr %11, align 8, !tbaa !267
  br label %18

18:                                               ; preds = %2, %16
  %19 = phi ptr [ %17, %16 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #38
  ret ptr %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mark_reg_pointer(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #17 !prof !388 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 1073741824
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %16, !prof !389

6:                                                ; preds = %2
  %7 = or disjoint i32 %3, 1073741824
  store i32 %7, ptr %0, align 8
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %29, label %9, !prof !390

9:                                                ; preds = %6
  %10 = trunc i32 %1 to i8
  %11 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !364
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !278
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  store i8 %10, ptr %15, align 1, !tbaa !278
  br label %29

16:                                               ; preds = %2
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %29, label %18, !prof !391

18:                                               ; preds = %16
  %19 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !364
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !278
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %19, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !278
  %25 = zext i8 %24 to i32
  %26 = icmp sgt i32 %25, %1
  br i1 %26, label %27, label %29, !prof !392

27:                                               ; preds = %18
  %28 = trunc i32 %1 to i8
  store i8 %28, ptr %23, align 1, !tbaa !278
  br label %29

29:                                               ; preds = %16, %18, %27, %6, %9
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @gen_reg_rtx_and_attrs(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !386 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 255
  %5 = tail call ptr @gen_reg_rtx(i32 noundef %4)
  tail call void @set_reg_attrs_from_value(ptr noundef %5, ptr noundef nonnull %0)
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local void @set_reg_attrs_for_parm(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 !prof !266 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %52 [
    i16 37, label %5
    i16 15, label %6
  ]

5:                                                ; preds = %2
  tail call void @set_reg_attrs_from_value(ptr noundef nonnull %0, ptr noundef %1)
  br label %52

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !278
  %9 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !267
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !278
  %13 = icmp eq ptr %12, null
  %14 = zext i1 %13 to i32
  %15 = load ptr, ptr %7, align 8, !tbaa !278
  %16 = load i32, ptr %15, align 8, !tbaa !393
  %17 = icmp sgt i32 %16, %14
  br i1 %17, label %18, label %52

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = zext i1 %13 to i64
  br label %21

21:                                               ; preds = %18, %46
  %22 = phi i64 [ %20, %18 ], [ %47, %46 ]
  %23 = phi ptr [ %15, %18 ], [ %48, %46 ]
  %24 = getelementptr inbounds %struct.rtvec_def, ptr %23, i64 0, i32 1, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !267
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !278
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %46

31:                                               ; preds = %21
  %32 = load ptr, ptr %19, align 8, !tbaa !278
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %32, align 8, !tbaa !313
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi ptr [ %35, %34 ], [ null, %31 ]
  %38 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !278
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !278
  %42 = trunc i64 %41 to i32
  %43 = tail call fastcc ptr @get_reg_attrs(ptr noundef %37, i32 noundef %42)
  %44 = load ptr, ptr %26, align 8, !tbaa !278
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %43, ptr %45, align 8, !tbaa !278
  br label %46

46:                                               ; preds = %36, %21
  %47 = add nuw nsw i64 %22, 1
  %48 = load ptr, ptr %7, align 8, !tbaa !278
  %49 = load i32, ptr %48, align 8, !tbaa !393
  %50 = trunc i64 %47 to i32
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %21, label %52, !llvm.loop !395

52:                                               ; preds = %46, %6, %2, %5
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @set_reg_attrs_for_decl_rtl(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !prof !396 {
  %3 = alloca %struct.reg_attrs, align 8
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %20, !prof !397

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 16711680
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load i32, ptr %14, align 8, !tbaa !278
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %7, %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1039, ptr noundef nonnull @.str.1) #38
  br label %18

18:                                               ; preds = %13, %17
  %19 = load ptr, ptr %8, align 8, !tbaa !278
  br label %20

20:                                               ; preds = %18, %2
  %21 = phi ptr [ %19, %18 ], [ %1, %2 ]
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 37
  br i1 %24, label %25, label %40, !prof !398

25:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #38
  %26 = icmp eq ptr %0, null
  br i1 %26, label %37, label %27, !prof !372

27:                                               ; preds = %25
  store ptr %0, ptr %3, align 8, !tbaa !369
  %28 = getelementptr inbounds %struct.reg_attrs, ptr %3, i64 0, i32 1
  store i64 0, ptr %28, align 8, !tbaa !371
  %29 = load ptr, ptr @reg_attrs_htab, align 8, !tbaa !267
  %30 = call ptr @htab_find_slot(ptr noundef %29, ptr noundef nonnull %3, i32 noundef 1) #38
  %31 = load ptr, ptr %30, align 8, !tbaa !267
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35, !prof !373

33:                                               ; preds = %27
  %34 = call ptr @ggc_alloc_stat(i64 noundef 16) #38
  store ptr %34, ptr %30, align 8, !tbaa !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %35

35:                                               ; preds = %33, %27
  %36 = load ptr, ptr %30, align 8, !tbaa !267
  br label %37

37:                                               ; preds = %25, %35
  %38 = phi ptr [ %36, %35 ], [ null, %25 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #38
  %39 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %38, ptr %39, align 8, !tbaa !278
  br label %40

40:                                               ; preds = %37, %20
  %41 = load i32, ptr %21, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 41
  br i1 %43, label %44, label %77, !prof !397

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !278
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = call fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef 0)
  %52 = load ptr, ptr %45, align 8, !tbaa !278
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %51, ptr %53, align 8, !tbaa !278
  br label %54

54:                                               ; preds = %50, %44
  %55 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !278
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 37
  br i1 %59, label %60, label %77

60:                                               ; preds = %54
  %61 = load ptr, ptr %45, align 8, !tbaa !278
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 16
  %64 = and i32 %63, 255
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !278
  %68 = icmp eq i8 %67, 0
  %69 = zext i8 %67 to i64
  %70 = select i1 %68, i64 %65, i64 %69
  %71 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !278
  %73 = zext i8 %72 to i32
  %74 = call fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef %73)
  %75 = load ptr, ptr %55, align 8, !tbaa !278
  %76 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %74, ptr %76, align 8, !tbaa !278
  br label %77

77:                                               ; preds = %54, %60, %40
  %78 = load i32, ptr %21, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 15
  br i1 %80, label %81, label %120, !prof !397

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !278
  %84 = getelementptr inbounds %struct.rtvec_def, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !267
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !278
  %88 = icmp eq ptr %87, null
  %89 = zext i1 %88 to i32
  %90 = load ptr, ptr %82, align 8, !tbaa !278
  %91 = load i32, ptr %90, align 8, !tbaa !393
  %92 = icmp sgt i32 %91, %89
  br i1 %92, label %93, label %120

93:                                               ; preds = %81
  %94 = zext i1 %88 to i64
  br label %95

95:                                               ; preds = %93, %114
  %96 = phi i64 [ %94, %93 ], [ %115, %114 ]
  %97 = phi ptr [ %90, %93 ], [ %116, %114 ]
  %98 = getelementptr inbounds %struct.rtvec_def, ptr %97, i64 0, i32 1, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !267
  %100 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !278
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 37
  br i1 %104, label %105, label %114

105:                                              ; preds = %95
  %106 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1, i32 0, i32 0, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !278
  %108 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !278
  %110 = trunc i64 %109 to i32
  %111 = call fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef %110)
  %112 = load ptr, ptr %100, align 8, !tbaa !278
  %113 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %111, ptr %113, align 8, !tbaa !278
  br label %114

114:                                              ; preds = %105, %95
  %115 = add nuw nsw i64 %96, 1
  %116 = load ptr, ptr %82, align 8, !tbaa !278
  %117 = load i32, ptr %116, align 8, !tbaa !393
  %118 = trunc i64 %115 to i32
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %95, label %120, !llvm.loop !399

120:                                              ; preds = %114, %81, %77
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @subreg_lowpart_p(ptr nocapture noundef readonly %0) local_unnamed_addr #18 !prof !400 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %16, !prof !401

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !278
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 16711680
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !402

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load i32, ptr %12, align 8, !tbaa !278
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %5, %1, %11
  %17 = phi i32 [ %15, %11 ], [ 1, %1 ], [ 0, %5 ]
  ret i32 %17
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @set_decl_rtl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !403 {
  %3 = alloca %struct.reg_attrs, align 8
  %4 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !278
  %5 = icmp eq ptr %1, null
  br i1 %5, label %122, label %6, !prof !404

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 39
  br i1 %9, label %10, label %23, !prof !397

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !278
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 16711680
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load i32, ptr %17, align 8, !tbaa !278
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1039, ptr noundef nonnull @.str.1) #38
  br label %21

21:                                               ; preds = %20, %16
  %22 = load ptr, ptr %11, align 8, !tbaa !278
  br label %23

23:                                               ; preds = %21, %6
  %24 = phi ptr [ %22, %21 ], [ %1, %6 ]
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 37
  br i1 %27, label %28, label %43, !prof !398

28:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #38
  %29 = icmp eq ptr %0, null
  br i1 %29, label %40, label %30, !prof !372

30:                                               ; preds = %28
  store ptr %0, ptr %3, align 8, !tbaa !369
  %31 = getelementptr inbounds %struct.reg_attrs, ptr %3, i64 0, i32 1
  store i64 0, ptr %31, align 8, !tbaa !371
  %32 = load ptr, ptr @reg_attrs_htab, align 8, !tbaa !267
  %33 = call ptr @htab_find_slot(ptr noundef %32, ptr noundef nonnull %3, i32 noundef 1) #38
  %34 = load ptr, ptr %33, align 8, !tbaa !267
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38, !prof !373

36:                                               ; preds = %30
  %37 = call ptr @ggc_alloc_stat(i64 noundef 16) #38
  store ptr %37, ptr %33, align 8, !tbaa !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %38

38:                                               ; preds = %36, %30
  %39 = load ptr, ptr %33, align 8, !tbaa !267
  br label %40

40:                                               ; preds = %38, %28
  %41 = phi ptr [ %39, %38 ], [ null, %28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #38
  %42 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %41, ptr %42, align 8, !tbaa !278
  br label %43

43:                                               ; preds = %40, %23
  %44 = load i32, ptr %24, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 41
  br i1 %46, label %47, label %80, !prof !397

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !278
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 37
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = call fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef 0)
  %55 = load ptr, ptr %48, align 8, !tbaa !278
  %56 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %54, ptr %56, align 8, !tbaa !278
  br label %57

57:                                               ; preds = %53, %47
  %58 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !278
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 37
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load ptr, ptr %48, align 8, !tbaa !278
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !278
  %71 = icmp eq i8 %70, 0
  %72 = zext i8 %70 to i64
  %73 = select i1 %71, i64 %68, i64 %72
  %74 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !278
  %76 = zext i8 %75 to i32
  %77 = call fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef %76)
  %78 = load ptr, ptr %58, align 8, !tbaa !278
  %79 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %77, ptr %79, align 8, !tbaa !278
  br label %80

80:                                               ; preds = %63, %57, %43
  %81 = load i32, ptr %24, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 15
  br i1 %83, label %84, label %122, !prof !397

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !278
  %87 = getelementptr inbounds %struct.rtvec_def, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !267
  %89 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !278
  %91 = icmp eq ptr %90, null
  %92 = zext i1 %91 to i32
  %93 = load i32, ptr %86, align 8, !tbaa !393
  %94 = icmp sgt i32 %93, %92
  br i1 %94, label %95, label %122

95:                                               ; preds = %84
  %96 = zext i1 %91 to i64
  br label %97

97:                                               ; preds = %116, %95
  %98 = phi i64 [ %96, %95 ], [ %117, %116 ]
  %99 = phi ptr [ %86, %95 ], [ %118, %116 ]
  %100 = getelementptr inbounds %struct.rtvec_def, ptr %99, i64 0, i32 1, i64 %98
  %101 = load ptr, ptr %100, align 8, !tbaa !267
  %102 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !278
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 65535
  %106 = icmp eq i32 %105, 37
  br i1 %106, label %107, label %116

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !278
  %110 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %111 = load i64, ptr %110, align 8, !tbaa !278
  %112 = trunc i64 %111 to i32
  %113 = call fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef %112)
  %114 = load ptr, ptr %102, align 8, !tbaa !278
  %115 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %113, ptr %115, align 8, !tbaa !278
  br label %116

116:                                              ; preds = %107, %97
  %117 = add nuw nsw i64 %98, 1
  %118 = load ptr, ptr %85, align 8, !tbaa !278
  %119 = load i32, ptr %118, align 8, !tbaa !393
  %120 = trunc i64 %117 to i32
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %97, label %122, !llvm.loop !399

122:                                              ; preds = %116, %84, %80, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_decl_incoming_rtl(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #9 !prof !405 {
  %4 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !278
  %5 = icmp eq ptr %1, null
  %6 = icmp ne i8 %2, 0
  %7 = or i1 %5, %6
  br i1 %7, label %9, label %8, !prof !406

8:                                                ; preds = %3
  tail call void @set_reg_attrs_for_decl_rtl(ptr noundef %0, ptr noundef %1)
  br label %9

9:                                                ; preds = %8, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mark_user_reg(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !405 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %11 [
    i16 41, label %4
    i16 37, label %12
  ], !prof !407

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = load i32, ptr %6, align 8
  %8 = or i32 %7, 134217728
  store i32 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !278
  br label %12

11:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1107, ptr noundef nonnull @.str.1) #38
  br label %12

12:                                               ; preds = %11, %1, %4
  %13 = phi ptr [ %10, %4 ], [ %0, %1 ], [ %0, %11 ]
  %14 = load i32, ptr %13, align 8
  %15 = or i32 %14, 134217728
  store i32 %15, ptr %13, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @max_reg_num() local_unnamed_addr #19 !prof !408 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !361
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @max_label_num() local_unnamed_addr #20 !prof !409 {
  %1 = load i32, ptr @label_num, align 4, !tbaa !282
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_first_label_num() local_unnamed_addr #20 !prof !410 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 1), align 4, !tbaa !411
  ret i32 %1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @maybe_set_first_label_num(ptr nocapture noundef readonly %0) local_unnamed_addr #21 !prof !266 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !278
  %4 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 1), align 4, !tbaa !411
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 %3, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 1), align 4, !tbaa !411
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @gen_lowpart_common(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !412 {
  br label %3

3:                                                ; preds = %58, %2
  %4 = phi ptr [ %1, %2 ], [ %53, %58 ]
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !278
  %8 = zext i8 %7 to i32
  %9 = load i32, ptr %4, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 30
  %12 = icmp ult i8 %7, 9
  %13 = select i1 %11, i1 %12, i1 false, !prof !413
  br i1 %13, label %18, label %14, !prof !413

14:                                               ; preds = %3
  %15 = lshr i32 %9, 16
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21, !prof !414

18:                                               ; preds = %14, %3
  %19 = phi i32 [ 64, %3 ], [ 128, %14 ]
  %20 = tail call i32 @mode_for_size(i32 noundef %19, i32 noundef 2, i32 noundef 0) #38
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i32 [ %16, %14 ], [ %20, %18 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !278
  %26 = zext i8 %25 to i32
  %27 = icmp ugt i32 %22, 1
  br i1 %27, label %29, label %28, !prof !415

28:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1195, ptr noundef nonnull @.str.1) #38
  br label %29

29:                                               ; preds = %21, %28
  %30 = icmp eq i32 %22, %0
  br i1 %30, label %71, label %31, !prof !416

31:                                               ; preds = %29
  %32 = add nuw nsw i32 %8, 3
  %33 = lshr i32 %32, 2
  %34 = add nuw nsw i32 %26, 3
  %35 = lshr i32 %34, 2
  %36 = icmp ugt i32 %33, %35
  br i1 %36, label %71, label %37, !prof !417

37:                                               ; preds = %31
  %38 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %39 = load i8, ptr %38, align 1, !tbaa !278
  %40 = and i8 %39, -2
  %41 = icmp eq i8 %40, 8
  %42 = icmp ugt i8 %7, %25
  %43 = select i1 %41, i1 %42, i1 false, !prof !417
  br i1 %43, label %71, label %44, !prof !417

44:                                               ; preds = %37
  %45 = load i32, ptr %4, align 8
  %46 = and i32 %45, 65535
  %47 = and i32 %45, 65534
  %48 = icmp eq i32 %47, 98
  %49 = icmp eq i8 %40, 2
  %50 = and i1 %49, %48
  br i1 %50, label %51, label %67, !prof !417

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !278
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 255
  %57 = icmp eq i32 %56, %0
  br i1 %57, label %71, label %58

58:                                               ; preds = %51
  %59 = zext nneg i32 %56 to i64
  %60 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !278
  %62 = icmp ult i8 %7, %61
  br i1 %62, label %3, label %63

63:                                               ; preds = %58
  %64 = icmp ult i8 %7, %25
  br i1 %64, label %65, label %71

65:                                               ; preds = %63
  %66 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %46, i32 noundef %0, ptr noundef nonnull %53) #38
  br label %71

67:                                               ; preds = %44
  %68 = trunc i32 %45 to i16
  switch i16 %68, label %71 [
    i16 39, label %69
    i16 37, label %69
    i16 41, label %69
    i16 33, label %69
    i16 32, label %69
    i16 30, label %69
  ], !prof !418

69:                                               ; preds = %67, %67, %67, %67, %67, %67
  %70 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %4, i32 noundef %22, i32 noundef 0) #38
  br label %71

71:                                               ; preds = %37, %63, %67, %51, %31, %29, %69, %65
  %72 = phi ptr [ %66, %65 ], [ %70, %69 ], [ %4, %29 ], [ null, %31 ], [ %53, %51 ], [ null, %67 ], [ null, %63 ], [ null, %37 ]
  ret ptr %72
}

declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gen_highpart(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !278
  %6 = icmp ult i8 %5, 5
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !278
  %14 = icmp eq i8 %13, 0
  %15 = zext i8 %13 to i64
  %16 = select i1 %14, i64 %11, i64 %15
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !278
  %19 = icmp eq i8 %5, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1248, ptr noundef nonnull @.str.1) #38
  br label %21

21:                                               ; preds = %2, %7, %20
  %22 = load i32, ptr %1, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !278
  %28 = load i8, ptr %4, align 1, !tbaa !278
  %29 = icmp ult i8 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1307, ptr noundef nonnull @.str.1) #38
  br label %31

31:                                               ; preds = %21, %30
  %32 = zext i8 %27 to i32
  %33 = zext i8 %28 to i32
  %34 = sub nsw i32 %32, %33
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 0)
  %36 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %1, i32 noundef %24, i32 noundef %35) #38
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1252, ptr noundef nonnull @.str.1) #38
  br label %39

39:                                               ; preds = %31, %38
  %40 = load i32, ptr %36, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 43
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = tail call ptr @validize_mem(ptr noundef nonnull %36) #38
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1260, ptr noundef nonnull @.str.1) #38
  br label %47

47:                                               ; preds = %46, %43, %39
  %48 = phi ptr [ %44, %43 ], [ null, %46 ], [ %36, %39 ]
  ret ptr %48
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @subreg_highpart_offset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !266 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !278
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !278
  %9 = icmp ult i8 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1307, ptr noundef nonnull @.str.1) #38
  br label %11

11:                                               ; preds = %2, %10
  %12 = zext i8 %5 to i32
  %13 = zext i8 %8 to i32
  %14 = sub nsw i32 %12, %13
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 0)
  ret i32 %15
}

declare ptr @validize_mem(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gen_highpart_mode(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !prof !266 {
  %4 = load i32, ptr %2, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = icmp eq i32 %6, %1
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1273, ptr noundef nonnull @.str.1) #38
  br label %11

11:                                               ; preds = %8, %10
  %12 = tail call ptr @gen_highpart(i32 noundef %0, ptr noundef nonnull %2)
  br label %28

13:                                               ; preds = %3
  %14 = zext i32 %1 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !278
  %17 = zext i32 %0 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !278
  %20 = icmp ult i8 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1307, ptr noundef nonnull @.str.1) #38
  br label %22

22:                                               ; preds = %13, %21
  %23 = zext i8 %16 to i32
  %24 = zext i8 %19 to i32
  %25 = sub nsw i32 %23, %24
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0)
  %27 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %2, i32 noundef %1, i32 noundef %26) #38
  br label %28

28:                                               ; preds = %22, %11
  %29 = phi ptr [ %12, %11 ], [ %27, %22 ]
  ret ptr %29
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @operand_subword(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 !prof !266 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ %9, %6 ], [ %3, %4 ]
  switch i32 %11, label %13 [
    i32 0, label %12
    i32 1, label %25
  ]

12:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1367, ptr noundef nonnull @.str.1) #38
  br label %13

13:                                               ; preds = %12, %10
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !278
  %17 = icmp ult i8 %16, 4
  br i1 %17, label %63, label %18

18:                                               ; preds = %13
  %19 = shl i32 %1, 2
  %20 = add i32 %19, 4
  %21 = zext i8 %16 to i32
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !267
  br label %63

25:                                               ; preds = %10, %18
  %26 = load i32, ptr %0, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 43
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load i32, ptr @word_mode, align 4, !tbaa !282
  %31 = shl i32 %1, 2
  %32 = zext i32 %31 to i64
  %33 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef %30, i64 noundef %32, i32 noundef 0, i32 noundef 1)
  %34 = icmp eq i32 %2, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %29
  %36 = load i32, ptr @reload_completed, align 4, !tbaa !282
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr @word_mode, align 4, !tbaa !282
  %40 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !278
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !278
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.mem_attrs, ptr %43, i64 0, i32 5
  %47 = load i8, ptr %46, align 8, !tbaa !318
  br label %48

48:                                               ; preds = %38, %45
  %49 = phi i8 [ %47, %45 ], [ 0, %38 ]
  %50 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %39, ptr noundef %41, i8 noundef zeroext %49) #38
  %51 = icmp ne i32 %50, 0
  br label %56

52:                                               ; preds = %35
  %53 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !278
  tail call void @update_temp_slot_address(ptr noundef %54, ptr noundef %54) #38
  %55 = tail call fastcc ptr @change_address_1(ptr noundef %33, i32 noundef 0, ptr noundef %54, i32 noundef 1)
  br label %56

56:                                               ; preds = %48, %29, %52
  %57 = phi ptr [ %55, %52 ], [ %33, %29 ], [ null, %48 ]
  %58 = phi i1 [ false, %52 ], [ false, %29 ], [ %51, %48 ]
  br i1 %58, label %59, label %63

59:                                               ; preds = %56, %25
  %60 = load i32, ptr @word_mode, align 4, !tbaa !282
  %61 = shl i32 %1, 2
  %62 = tail call ptr @simplify_gen_subreg(i32 noundef %60, ptr noundef nonnull %0, i32 noundef %11, i32 noundef %61) #38
  br label %63

63:                                               ; preds = %56, %13, %59, %23
  %64 = phi ptr [ %24, %23 ], [ %62, %59 ], [ null, %13 ], [ %57, %56 ]
  ret ptr %64
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @adjust_address_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #10 !prof !419 {
  %6 = alloca %struct.mem_attrs, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !278
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !278
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !420

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.mem_attrs, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !315
  br label %17

17:                                               ; preds = %5, %14
  %18 = phi ptr [ %16, %14 ], [ null, %5 ]
  br i1 %13, label %22, label %19, !prof !420

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.mem_attrs, ptr %12, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !317
  br label %22

22:                                               ; preds = %17, %19
  %23 = phi i32 [ %21, %19 ], [ 8, %17 ]
  br i1 %13, label %27, label %24, !prof !420

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.mem_attrs, ptr %12, i64 0, i32 5
  %26 = load i8, ptr %25, align 8, !tbaa !318
  br label %27

27:                                               ; preds = %22, %24
  %28 = phi i8 [ %26, %24 ], [ 0, %22 ]
  %29 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !421
  %30 = tail call i32 %29(i8 noundef zeroext %28) #38, !prof !433
  %31 = load i32, ptr %0, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = icmp ne i32 %33, %1
  %35 = icmp ne i64 %2, 0
  %36 = or i1 %35, %34
  br i1 %36, label %42, label %37, !prof !434

37:                                               ; preds = %27
  %38 = icmp eq i32 %3, 0
  br i1 %38, label %340, label %39, !prof !435

39:                                               ; preds = %37
  %40 = tail call i32 @memory_address_addr_space_p(i32 noundef %1, ptr noundef %10, i8 noundef zeroext %28) #38
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %340, !prof !436

42:                                               ; preds = %39, %27
  %43 = tail call ptr @copy_rtx(ptr noundef %10) #38
  %44 = zext i32 %30 to i64
  %45 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !278
  %47 = icmp ult i8 %46, 8
  br i1 %47, label %48, label %54, !prof !437

48:                                               ; preds = %42
  %49 = shl nuw nsw i8 %46, 3
  %50 = sub nuw nsw i8 64, %49
  %51 = zext nneg i8 %50 to i64
  %52 = shl i64 %2, %51
  %53 = ashr exact i64 %52, %51
  br label %54

54:                                               ; preds = %48, %42
  %55 = phi i64 [ %53, %48 ], [ %2, %42 ]
  %56 = icmp eq i32 %4, 0
  br i1 %56, label %82, label %57, !prof !438

57:                                               ; preds = %54
  %58 = load i32, ptr %0, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %80, label %62, !prof !439

62:                                               ; preds = %57
  %63 = load i32, ptr %43, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 122
  %66 = icmp sgt i64 %55, -1
  %67 = select i1 %65, i1 %66, i1 false, !prof !440
  br i1 %67, label %68, label %80, !prof !440

68:                                               ; preds = %62
  %69 = tail call i32 @get_mode_alignment(i32 noundef %60) #38
  %70 = lshr i32 %69, 3
  %71 = zext nneg i32 %70 to i64
  %72 = icmp ult i64 %55, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !278
  %76 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !278
  %78 = tail call ptr @plus_constant(ptr noundef %77, i64 noundef %55) #38
  %79 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 122, i32 noundef %30, ptr noundef %75, ptr noundef %78) #38
  br label %82

80:                                               ; preds = %68, %62, %57
  %81 = tail call ptr @plus_constant(ptr noundef %43, i64 noundef %55) #38
  br label %82

82:                                               ; preds = %73, %80, %54
  %83 = phi ptr [ %79, %73 ], [ %81, %80 ], [ %43, %54 ]
  %84 = load i32, ptr %0, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 43
  br i1 %86, label %88, label %87, !prof !441

87:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1899, ptr noundef nonnull @.str.1) #38
  br label %88

88:                                               ; preds = %87, %82
  %89 = load ptr, ptr %11, align 8, !tbaa !278
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91, !prof !442

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.mem_attrs, ptr %89, i64 0, i32 5
  %93 = load i8, ptr %92, align 8, !tbaa !318
  br label %94

94:                                               ; preds = %91, %88
  %95 = phi i8 [ %93, %91 ], [ 0, %88 ]
  %96 = icmp eq i32 %1, 0
  br i1 %96, label %97, label %101, !prof !443

97:                                               ; preds = %94
  %98 = load i32, ptr %0, align 8
  %99 = lshr i32 %98, 16
  %100 = and i32 %99, 255
  br label %101

101:                                              ; preds = %97, %94
  %102 = phi i32 [ %100, %97 ], [ %1, %94 ]
  %103 = icmp eq ptr %83, null
  br i1 %103, label %104, label %106, !prof !444

104:                                              ; preds = %101
  %105 = load ptr, ptr %9, align 8, !tbaa !278
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi ptr [ %105, %104 ], [ %83, %101 ]
  %108 = load i32, ptr %0, align 8
  %109 = lshr i32 %108, 16
  %110 = and i32 %109, 255
  %111 = icmp eq i32 %102, %110
  br i1 %111, label %112, label %120, !prof !445

112:                                              ; preds = %106
  %113 = load ptr, ptr %9, align 8, !tbaa !278
  %114 = icmp eq ptr %107, %113
  br i1 %114, label %115, label %120, !prof !446

115:                                              ; preds = %112
  %116 = icmp eq i32 %3, 0
  br i1 %116, label %177, label %117, !prof !447

117:                                              ; preds = %115
  %118 = tail call i32 @memory_address_addr_space_p(i32 noundef %102, ptr noundef %107, i8 noundef zeroext %95) #38
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %177

120:                                              ; preds = %117, %112, %106
  %121 = icmp eq i32 %3, 0
  br i1 %121, label %134, label %122, !prof !448

122:                                              ; preds = %120
  %123 = load i32, ptr @reload_in_progress, align 4, !tbaa !282
  %124 = icmp ne i32 %123, 0
  %125 = load i32, ptr @reload_completed, align 4
  %126 = icmp ne i32 %125, 0
  %127 = select i1 %124, i1 true, i1 %126, !prof !449
  br i1 %127, label %128, label %132, !prof !450

128:                                              ; preds = %122
  %129 = tail call i32 @memory_address_addr_space_p(i32 noundef %102, ptr noundef %107, i8 noundef zeroext %95) #38
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %134, !prof !451

131:                                              ; preds = %128
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1912, ptr noundef nonnull @.str.1) #38
  br label %134

132:                                              ; preds = %122
  %133 = tail call ptr @memory_address_addr_space(i32 noundef %102, ptr noundef %107, i8 noundef zeroext %95) #38
  br label %134

134:                                              ; preds = %132, %131, %128, %120
  %135 = phi ptr [ %107, %128 ], [ %107, %131 ], [ %133, %132 ], [ %107, %120 ]
  %136 = load ptr, ptr %9, align 8, !tbaa !278
  %137 = tail call i32 @rtx_equal_p(ptr noundef %135, ptr noundef %136) #38
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139, !prof !452

139:                                              ; preds = %134
  %140 = load i32, ptr %0, align 8
  %141 = lshr i32 %140, 16
  %142 = and i32 %141, 255
  %143 = icmp eq i32 %102, %142
  br i1 %143, label %177, label %144, !prof !453

144:                                              ; preds = %139, %134
  %145 = tail call ptr @gen_rtx_fmt_e0_stat(i32 noundef 43, i32 noundef %102, ptr noundef %135) #38
  %146 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %146, align 8, !tbaa !278
  %147 = load i32, ptr %0, align 8
  %148 = and i32 %147, 134217728
  %149 = load i32, ptr %145, align 8
  %150 = and i32 %149, -134217729
  %151 = or disjoint i32 %150, %148
  store i32 %151, ptr %145, align 8
  %152 = load i32, ptr %0, align 8
  %153 = and i32 %152, 268435456
  %154 = and i32 %151, -268435457
  %155 = or disjoint i32 %154, %153
  store i32 %155, ptr %145, align 8
  %156 = load i32, ptr %0, align 8
  %157 = and i32 %156, -2147483648
  %158 = and i32 %155, 2147483647
  %159 = or disjoint i32 %158, %157
  store i32 %159, ptr %145, align 8
  %160 = load i32, ptr %0, align 8
  %161 = and i32 %160, 33554432
  %162 = and i32 %159, -33554433
  %163 = or disjoint i32 %162, %161
  store i32 %163, ptr %145, align 8
  %164 = load i32, ptr %0, align 8
  %165 = and i32 %164, 67108864
  %166 = and i32 %163, -67108865
  %167 = or disjoint i32 %166, %165
  store i32 %167, ptr %145, align 8
  %168 = load i32, ptr %0, align 8
  %169 = and i32 %168, 16777216
  %170 = and i32 %167, -16777217
  %171 = or disjoint i32 %170, %169
  store i32 %171, ptr %145, align 8
  %172 = load i32, ptr %0, align 8
  %173 = and i32 %172, 1073741824
  %174 = and i32 %171, -1073741825
  %175 = or disjoint i32 %174, %173
  store i32 %175, ptr %145, align 8
  %176 = load ptr, ptr %11, align 8, !tbaa !278
  store ptr %176, ptr %146, align 8, !tbaa !278
  br label %177

177:                                              ; preds = %115, %117, %139, %144
  %178 = phi ptr [ %145, %144 ], [ %0, %117 ], [ %0, %115 ], [ %0, %139 ]
  %179 = icmp eq ptr %178, %0
  %180 = icmp ne i64 %55, 0
  %181 = select i1 %179, i1 %180, i1 false, !prof !438
  br i1 %181, label %182, label %184, !prof !438

182:                                              ; preds = %177
  %183 = tail call ptr @copy_rtx(ptr noundef nonnull %178) #38
  br label %184

184:                                              ; preds = %182, %177
  %185 = phi ptr [ %183, %182 ], [ %178, %177 ]
  %186 = icmp eq ptr %18, null
  br i1 %186, label %207, label %187, !prof !454

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %189 = load i64, ptr %188, align 8, !tbaa !278
  %190 = add nsw i64 %189, %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store i64 %190, ptr %8, align 8, !tbaa !288
  %191 = add i64 %190, 64
  %192 = icmp ult i64 %191, 129
  br i1 %192, label %193, label %195, !prof !289

193:                                              ; preds = %187
  %194 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %191
  br label %204

195:                                              ; preds = %187
  %196 = load ptr, ptr @const_int_htab, align 8, !tbaa !267
  %197 = trunc i64 %190 to i32
  %198 = call ptr @htab_find_slot_with_hash(ptr noundef %196, ptr noundef nonnull %8, i32 noundef %197, i32 noundef 1) #38
  %199 = load ptr, ptr %198, align 8, !tbaa !267
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %204, !prof !290

201:                                              ; preds = %195
  %202 = load i64, ptr %8, align 8, !tbaa !288
  %203 = call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %202) #38
  store ptr %203, ptr %198, align 8, !tbaa !267
  br label %204

204:                                              ; preds = %193, %195, %201
  %205 = phi ptr [ %194, %193 ], [ %198, %201 ], [ %198, %195 ]
  %206 = load ptr, ptr %205, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  br label %207

207:                                              ; preds = %204, %184
  %208 = phi ptr [ %206, %204 ], [ null, %184 ]
  br i1 %180, label %209, label %217, !prof !455

209:                                              ; preds = %207
  %210 = zext i32 %23 to i64
  %211 = sub nsw i64 0, %55
  %212 = and i64 %55, %211
  %213 = shl i64 %212, 3
  %214 = icmp ugt i64 %213, %210
  %215 = trunc i64 %213 to i32
  %216 = select i1 %214, i32 %23, i32 %215, !prof !456
  br label %217

217:                                              ; preds = %209, %207
  %218 = phi i32 [ %216, %209 ], [ %23, %207 ]
  %219 = load i32, ptr %185, align 8
  %220 = lshr i32 %219, 16
  %221 = and i32 %220, 255
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %244, label %223, !prof !438

223:                                              ; preds = %217
  %224 = zext nneg i32 %221 to i64
  %225 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !278
  %227 = zext i8 %226 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store i64 %227, ptr %7, align 8, !tbaa !288
  %228 = icmp ult i8 %226, 65
  br i1 %228, label %229, label %232, !prof !289

229:                                              ; preds = %223
  %230 = add nuw nsw i64 %227, 64
  %231 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %230
  br label %241

232:                                              ; preds = %223
  %233 = load ptr, ptr @const_int_htab, align 8, !tbaa !267
  %234 = zext i8 %226 to i32
  %235 = call ptr @htab_find_slot_with_hash(ptr noundef %233, ptr noundef nonnull %7, i32 noundef %234, i32 noundef 1) #38
  %236 = load ptr, ptr %235, align 8, !tbaa !267
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %241, !prof !290

238:                                              ; preds = %232
  %239 = load i64, ptr %7, align 8, !tbaa !288
  %240 = call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %239) #38
  store ptr %240, ptr %235, align 8, !tbaa !267
  br label %241

241:                                              ; preds = %229, %232, %238
  %242 = phi ptr [ %231, %229 ], [ %235, %238 ], [ %235, %232 ]
  %243 = load ptr, ptr %242, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  br label %284

244:                                              ; preds = %217
  %245 = load ptr, ptr %11, align 8, !tbaa !278
  %246 = icmp eq ptr %245, null
  br i1 %246, label %251, label %247

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.mem_attrs, ptr %245, i64 0, i32 2
  %249 = load ptr, ptr %248, align 8, !tbaa !316
  %250 = icmp eq ptr %249, null
  br i1 %250, label %284, label %263

251:                                              ; preds = %244
  %252 = load i32, ptr %0, align 8
  %253 = lshr i32 %252, 16
  %254 = and i32 %253, 255
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %284, label %256

256:                                              ; preds = %251
  %257 = zext nneg i32 %254 to i64
  %258 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !278
  %260 = zext i8 %259 to i64
  %261 = call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %260)
  %262 = icmp eq ptr %261, null
  br i1 %262, label %284, label %263

263:                                              ; preds = %256, %247
  %264 = load ptr, ptr %11, align 8, !tbaa !278
  %265 = icmp eq ptr %264, null
  br i1 %265, label %269, label %266

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.mem_attrs, ptr %264, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !316
  br label %280

269:                                              ; preds = %263
  %270 = load i32, ptr %0, align 8
  %271 = lshr i32 %270, 16
  %272 = and i32 %271, 255
  %273 = icmp eq i32 %272, 1
  br i1 %273, label %280, label %274

274:                                              ; preds = %269
  %275 = zext nneg i32 %272 to i64
  %276 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %275
  %277 = load i8, ptr %276, align 1, !tbaa !278
  %278 = zext i8 %277 to i64
  %279 = call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %278)
  br label %280

280:                                              ; preds = %274, %269, %266
  %281 = phi ptr [ %268, %266 ], [ %279, %274 ], [ null, %269 ]
  %282 = sub nsw i64 0, %55
  %283 = call ptr @plus_constant(ptr noundef %281, i64 noundef %282) #38
  br label %284

284:                                              ; preds = %256, %247, %280, %251, %241
  %285 = phi ptr [ %243, %241 ], [ %283, %280 ], [ null, %247 ], [ null, %251 ], [ null, %256 ]
  %286 = load ptr, ptr %11, align 8, !tbaa !278
  %287 = icmp eq ptr %286, null
  br i1 %287, label %291, label %288, !prof !457

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.mem_attrs, ptr %286, i64 0, i32 3
  %290 = load i32, ptr %289, align 8, !tbaa !324
  br label %291

291:                                              ; preds = %284, %288
  %292 = phi i32 [ %290, %288 ], [ 0, %284 ]
  br i1 %287, label %295, label %293, !prof !457

293:                                              ; preds = %291
  %294 = load ptr, ptr %286, align 8, !tbaa !313
  br label %295

295:                                              ; preds = %291, %293
  %296 = phi ptr [ %294, %293 ], [ null, %291 ]
  %297 = load i32, ptr %185, align 8
  %298 = lshr i32 %297, 16
  %299 = and i32 %298, 255
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #38
  %300 = icmp eq i32 %292, 0
  %301 = icmp eq ptr %296, null
  %302 = and i1 %300, %301
  %303 = icmp eq ptr %208, null
  %304 = and i1 %303, %302
  %305 = icmp eq i8 %28, 0
  %306 = and i1 %305, %304
  br i1 %306, label %307, label %323, !prof !319

307:                                              ; preds = %295
  %308 = icmp eq ptr %285, null
  br i1 %308, label %321, label %309, !prof !320

309:                                              ; preds = %307
  %310 = icmp eq i32 %299, 1
  br i1 %310, label %323, label %311, !prof !321

311:                                              ; preds = %309
  %312 = zext nneg i32 %299 to i64
  %313 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %312
  %314 = load i8, ptr %313, align 1, !tbaa !278
  %315 = zext i8 %314 to i64
  %316 = getelementptr inbounds %struct.rtx_def, ptr %285, i64 0, i32 1
  %317 = load i64, ptr %316, align 8, !tbaa !278
  %318 = icmp eq i64 %317, %315
  %319 = icmp eq i32 %218, 8
  %320 = and i1 %319, %318
  br i1 %320, label %337, label %323, !prof !322

321:                                              ; preds = %307
  %322 = icmp eq i32 %218, 8
  br i1 %322, label %337, label %323, !prof !323

323:                                              ; preds = %321, %311, %309, %295
  %324 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 3
  store i32 %292, ptr %324, align 8, !tbaa !324
  store ptr %296, ptr %6, align 8, !tbaa !313
  %325 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 1
  store ptr %208, ptr %325, align 8, !tbaa !315
  %326 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 2
  store ptr %285, ptr %326, align 8, !tbaa !316
  %327 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 4
  store i32 %218, ptr %327, align 4, !tbaa !317
  %328 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 5
  store i8 %28, ptr %328, align 8, !tbaa !318
  %329 = load ptr, ptr @mem_attrs_htab, align 8, !tbaa !267
  %330 = call ptr @htab_find_slot(ptr noundef %329, ptr noundef nonnull %6, i32 noundef 1) #38
  %331 = load ptr, ptr %330, align 8, !tbaa !267
  %332 = icmp eq ptr %331, null
  br i1 %332, label %333, label %335, !prof !325

333:                                              ; preds = %323
  %334 = call ptr @ggc_alloc_stat(i64 noundef 40) #38
  store ptr %334, ptr %330, align 8, !tbaa !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %334, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false)
  br label %335

335:                                              ; preds = %333, %323
  %336 = load ptr, ptr %330, align 8, !tbaa !267
  br label %337

337:                                              ; preds = %311, %321, %335
  %338 = phi ptr [ %336, %335 ], [ null, %311 ], [ null, %321 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #38
  %339 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %338, ptr %339, align 8, !tbaa !278
  br label %340

340:                                              ; preds = %37, %39, %337
  %341 = phi ptr [ %185, %337 ], [ %0, %39 ], [ %0, %37 ]
  ret ptr %341
}

declare i32 @strict_memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @replace_equiv_address(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !458 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !278
  tail call void @update_temp_slot_address(ptr noundef %4, ptr noundef %1) #38
  %5 = tail call fastcc ptr @change_address_1(ptr noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef 1)
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @operand_subword_force(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !prof !266 {
  %4 = tail call ptr @operand_subword(ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef %2)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = icmp ugt i32 %2, 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %6
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call ptr @copy_to_reg(ptr noundef nonnull %0) #38
  br label %16

14:                                               ; preds = %8
  %15 = tail call ptr @force_reg(i32 noundef %2, ptr noundef nonnull %0) #38
  br label %16

16:                                               ; preds = %12, %14, %6
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ], [ %0, %6 ]
  %18 = tail call ptr @operand_subword(ptr noundef %17, i32 noundef %1, i32 noundef 1, i32 noundef %2)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1428, ptr noundef nonnull @.str.1) #38
  br label %21

21:                                               ; preds = %20, %16, %3
  %22 = phi ptr [ %4, %3 ], [ %18, %16 ], [ %18, %20 ]
  ret ptr %22
}

declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #3

declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @mem_expr_equal_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !459 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %16, label %4, !prof !323

4:                                                ; preds = %2
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %16, !prof !460

8:                                                ; preds = %4
  %9 = load i64, ptr %0, align 8
  %10 = load i64, ptr %1, align 8
  %11 = xor i64 %10, %9
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16, !prof !460

14:                                               ; preds = %8
  %15 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #38
  br label %16

16:                                               ; preds = %8, %4, %2, %14
  %17 = phi i32 [ %15, %14 ], [ 1, %2 ], [ 0, %4 ], [ 0, %8 ]
  ret i32 %17
}

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @get_mem_align_offset(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 !prof !266 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1476, ptr noundef nonnull @.str.1) #38
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !313
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ %12, %11 ], [ null, %7 ]
  %15 = icmp eq ptr %14, null
  %16 = or i1 %10, %15
  br i1 %16, label %101, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !315
  %20 = icmp eq ptr %19, null
  br i1 %20, label %101, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %19, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 30
  br i1 %24, label %25, label %101

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !278
  %28 = load i64, ptr %14, align 8
  %29 = and i64 %28, 65535
  %30 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !282
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !278
  %36 = icmp ult i32 %35, %1
  br i1 %36, label %101, label %95

37:                                               ; preds = %25
  %38 = trunc i64 %28 to i16
  switch i16 %38, label %101 [
    i16 47, label %39
    i16 48, label %39
    i16 49, label %39
    i16 41, label %45
  ]

39:                                               ; preds = %37, %37, %37
  %40 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !278
  %42 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !278
  %44 = icmp ult i32 %43, %1
  br i1 %44, label %101, label %95

45:                                               ; preds = %37, %91
  %46 = phi i64 [ %93, %91 ], [ %27, %37 ]
  %47 = phi ptr [ %94, %91 ], [ %14, %37 ]
  %48 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !278
  %50 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !278
  %52 = tail call ptr @component_ref_field_offset(ptr noundef %47) #38
  %53 = getelementptr inbounds %struct.tree_field_decl, ptr %51, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !278
  %55 = icmp eq ptr %52, null
  br i1 %55, label %91, label %56

56:                                               ; preds = %45
  %57 = tail call i32 @host_integerp(ptr noundef nonnull %52, i32 noundef 1) #38
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %91, label %59

59:                                               ; preds = %56
  %60 = tail call i32 @host_integerp(ptr noundef %54, i32 noundef 1) #38
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %91, label %62

62:                                               ; preds = %59
  %63 = tail call i64 @tree_low_cst(ptr noundef nonnull %52, i32 noundef 1) #38
  %64 = add i64 %63, %46
  %65 = tail call i64 @tree_low_cst(ptr noundef %54, i32 noundef 1) #38
  %66 = sdiv i64 %65, 8
  %67 = add i64 %64, %66
  %68 = icmp eq ptr %49, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.tree_decl_minimal, ptr %51, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !278
  %72 = getelementptr inbounds %struct.tree_type, ptr %71, i64 0, i32 7
  %73 = load i32, ptr %72, align 8, !tbaa !278
  %74 = icmp ult i32 %73, %1
  %75 = select i1 %74, i32 1, i32 3
  br label %91

76:                                               ; preds = %62
  %77 = load i64, ptr %49, align 8
  %78 = and i64 %77, 65535
  %79 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !282
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.tree_decl_common, ptr %49, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !278
  %85 = icmp ult i32 %84, %1
  %86 = select i1 %85, i32 1, i32 3
  br label %91

87:                                               ; preds = %76
  %88 = icmp ne i64 %78, 41
  %89 = zext i1 %88 to i32
  %90 = select i1 %88, ptr %47, ptr %49
  br label %91

91:                                               ; preds = %45, %87, %82, %69, %56, %59
  %92 = phi i32 [ 1, %59 ], [ 1, %56 ], [ %75, %69 ], [ %86, %82 ], [ %89, %87 ], [ 1, %45 ]
  %93 = phi i64 [ %46, %59 ], [ %46, %56 ], [ %67, %69 ], [ %67, %82 ], [ %67, %87 ], [ %46, %45 ]
  %94 = phi ptr [ %47, %59 ], [ %47, %56 ], [ %47, %69 ], [ %47, %82 ], [ %90, %87 ], [ %47, %45 ]
  switch i32 %92, label %101 [
    i32 0, label %45
    i32 3, label %95
  ], !llvm.loop !461

95:                                               ; preds = %91, %39, %33
  %96 = phi i64 [ %27, %33 ], [ %27, %39 ], [ %93, %91 ]
  %97 = lshr i32 %1, 3
  %98 = add nsw i32 %97, -1
  %99 = trunc i64 %96 to i32
  %100 = and i32 %98, %99
  br label %101

101:                                              ; preds = %91, %37, %13, %39, %33, %17, %21, %95
  %102 = phi i32 [ %100, %95 ], [ -1, %21 ], [ -1, %17 ], [ -1, %13 ], [ -1, %33 ], [ -1, %39 ], [ -1, %37 ], [ -1, %91 ]
  ret i32 %102
}

declare ptr @component_ref_field_offset(ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @set_mem_attributes_minus_bitpos(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #10 !prof !462 {
  %5 = alloca %struct.mem_attrs, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !278
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !463

14:                                               ; preds = %4
  %15 = load ptr, ptr %12, align 8, !tbaa !313
  br label %16

16:                                               ; preds = %4, %14
  %17 = phi ptr [ %15, %14 ], [ null, %4 ]
  br i1 %13, label %21, label %18, !prof !463

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.mem_attrs, ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !315
  br label %21

21:                                               ; preds = %16, %18
  %22 = phi ptr [ %20, %18 ], [ null, %16 ]
  br i1 %13, label %26, label %23, !prof !463

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.mem_attrs, ptr %12, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !316
  br label %52

26:                                               ; preds = %21
  %27 = load i32, ptr %0, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %52, label %31, !prof !464

31:                                               ; preds = %26
  %32 = zext nneg i32 %29 to i64
  %33 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !278
  %35 = zext i8 %34 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10)
  store i64 %35, ptr %10, align 8, !tbaa !288
  %36 = icmp ult i8 %34, 65
  br i1 %36, label %37, label %40, !prof !289

37:                                               ; preds = %31
  %38 = add nuw nsw i64 %35, 64
  %39 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %38
  br label %49

40:                                               ; preds = %31
  %41 = load ptr, ptr @const_int_htab, align 8, !tbaa !267
  %42 = zext i8 %34 to i32
  %43 = call ptr @htab_find_slot_with_hash(ptr noundef %41, ptr noundef nonnull %10, i32 noundef %42, i32 noundef 1) #38
  %44 = load ptr, ptr %43, align 8, !tbaa !267
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49, !prof !290

46:                                               ; preds = %40
  %47 = load i64, ptr %10, align 8, !tbaa !288
  %48 = call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %47) #38
  store ptr %48, ptr %43, align 8, !tbaa !267
  br label %49

49:                                               ; preds = %37, %40, %46
  %50 = phi ptr [ %39, %37 ], [ %43, %46 ], [ %43, %40 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10)
  br label %52

52:                                               ; preds = %49, %26, %23
  %53 = phi ptr [ %25, %23 ], [ %51, %49 ], [ null, %26 ]
  %54 = load ptr, ptr %11, align 8, !tbaa !278
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56, !prof !463

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.mem_attrs, ptr %54, i64 0, i32 4
  %58 = load i32, ptr %57, align 4, !tbaa !317
  br label %59

59:                                               ; preds = %52, %56
  %60 = phi i32 [ %58, %56 ], [ 8, %52 ]
  %61 = icmp eq ptr %1, null
  br i1 %61, label %558, label %62, !prof !465

62:                                               ; preds = %59
  %63 = load i64, ptr %1, align 8
  %64 = and i64 %63, 65535
  %65 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !282
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %71, label %68, !prof !466

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !278
  br label %71

71:                                               ; preds = %62, %68
  %72 = phi ptr [ %70, %68 ], [ %1, %62 ]
  %73 = load ptr, ptr @global_trees, align 16, !tbaa !267
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %558, label %75, !prof !465

75:                                               ; preds = %71
  %76 = icmp eq i32 %66, 3
  br i1 %76, label %77, label %88, !prof !467

77:                                               ; preds = %75
  %78 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %64, i64 11
  %79 = load i8, ptr %78, align 1, !tbaa !278
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %84, label %81, !prof !468

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !278
  br label %84

84:                                               ; preds = %81, %77
  %85 = phi ptr [ null, %77 ], [ %83, %81 ]
  %86 = icmp eq ptr %85, %0
  br i1 %86, label %87, label %88, !prof !468

87:                                               ; preds = %84
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1566, ptr noundef nonnull @.str.1) #38
  br label %88

88:                                               ; preds = %75, %84, %87
  %89 = call i32 @get_alias_set(ptr noundef nonnull %1) #38
  %90 = load i64, ptr %72, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i32, ptr %0, align 8
  %93 = shl i32 %91, 8
  %94 = and i32 %93, 134217728
  %95 = or i32 %94, %92
  store i32 %95, ptr %0, align 8
  %96 = load i64, ptr %72, align 8
  %97 = trunc i64 %96 to i16
  %98 = add i16 %97, -13
  %99 = icmp ult i16 %98, 6
  br i1 %99, label %100, label %104

100:                                              ; preds = %88
  %101 = zext nneg i16 %98 to i64
  %102 = getelementptr inbounds [6 x i32], ptr @switch.table.set_mem_attributes_minus_bitpos, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4
  br label %104

104:                                              ; preds = %88, %100
  %105 = phi i32 [ %103, %100 ], [ 0, %88 ]
  %106 = and i32 %95, -268435457
  %107 = or disjoint i32 %105, %106
  store i32 %107, ptr %0, align 8
  %108 = load i64, ptr %72, align 8
  %109 = trunc i64 %108 to i32
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 10
  %112 = icmp eq i32 %110, 12
  %113 = or i1 %111, %112
  %114 = select i1 %113, i32 1073741824, i32 0, !prof !469
  %115 = and i32 %107, -1073741825
  %116 = or disjoint i32 %114, %115
  store i32 %116, ptr %0, align 8
  %117 = icmp eq i32 %2, 0
  br i1 %117, label %118, label %124, !prof !470

118:                                              ; preds = %104
  %119 = load i64, ptr %1, align 8
  %120 = and i64 %119, 65535
  %121 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !282
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %124, label %129, !prof !471

124:                                              ; preds = %118, %104
  %125 = load i64, ptr %72, align 8
  %126 = trunc i64 %125 to i16
  switch i16 %126, label %127 [
    i16 15, label %129
    i16 16, label %129
    i16 17, label %129
    i16 18, label %129
    i16 13, label %129
  ], !prof !472

127:                                              ; preds = %124
  %128 = or i32 %116, -2147483648
  store i32 %128, ptr %0, align 8
  br label %129

129:                                              ; preds = %124, %124, %124, %124, %118, %124, %127
  br i1 %117, label %130, label %140, !prof !470

130:                                              ; preds = %129
  %131 = load i64, ptr %1, align 8
  %132 = trunc i64 %131 to i32
  %133 = and i32 %132, 65535
  %134 = add nsw i32 %133, -47
  %135 = icmp ult i32 %134, 2
  br i1 %135, label %140, label %136, !prof !473

136:                                              ; preds = %130
  %137 = load i64, ptr %72, align 8
  %138 = and i64 %137, 33554432
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %144, label %140, !prof !474

140:                                              ; preds = %130, %136, %129
  %141 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 7
  %142 = load i32, ptr %141, align 8, !tbaa !278
  %143 = call i32 @llvm.umax.i32(i32 %60, i32 %142)
  br label %155

144:                                              ; preds = %136
  %145 = icmp eq i32 %133, 49
  br i1 %145, label %146, label %155, !prof !475

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !278
  %149 = call i32 @integer_zerop(ptr noundef %148) #38
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load ptr, ptr %147, align 8, !tbaa !278
  %153 = call i64 @tree_low_cst(ptr noundef %152, i32 noundef 1) #38
  %154 = trunc i64 %153 to i32
  br label %155

155:                                              ; preds = %146, %144, %151, %140
  %156 = phi i32 [ %143, %140 ], [ %154, %151 ], [ %60, %144 ], [ 8, %146 ]
  %157 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !278
  %159 = icmp eq ptr %158, null
  br i1 %159, label %182, label %160, !prof !465

160:                                              ; preds = %155
  %161 = call i32 @host_integerp(ptr noundef nonnull %158, i32 noundef 1) #38
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %182, label %163, !prof !465

163:                                              ; preds = %160
  %164 = load ptr, ptr %157, align 8, !tbaa !278
  %165 = call i64 @tree_low_cst(ptr noundef %164, i32 noundef 1) #38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9)
  store i64 %165, ptr %9, align 8, !tbaa !288
  %166 = add i64 %165, 64
  %167 = icmp ult i64 %166, 129
  br i1 %167, label %168, label %170, !prof !289

168:                                              ; preds = %163
  %169 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %166
  br label %179

170:                                              ; preds = %163
  %171 = load ptr, ptr @const_int_htab, align 8, !tbaa !267
  %172 = trunc i64 %165 to i32
  %173 = call ptr @htab_find_slot_with_hash(ptr noundef %171, ptr noundef nonnull %9, i32 noundef %172, i32 noundef 1) #38
  %174 = load ptr, ptr %173, align 8, !tbaa !267
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %179, !prof !290

176:                                              ; preds = %170
  %177 = load i64, ptr %9, align 8, !tbaa !288
  %178 = call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %177) #38
  store ptr %178, ptr %173, align 8, !tbaa !267
  br label %179

179:                                              ; preds = %168, %170, %176
  %180 = phi ptr [ %169, %168 ], [ %173, %176 ], [ %173, %170 ]
  %181 = load ptr, ptr %180, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9)
  br label %182

182:                                              ; preds = %179, %160, %155
  %183 = phi ptr [ %181, %179 ], [ %53, %160 ], [ %53, %155 ]
  %184 = load i64, ptr %1, align 8
  %185 = and i64 %184, 65535
  %186 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !282
  %188 = icmp eq i32 %187, 2
  br i1 %188, label %482, label %189, !prof !466

189:                                              ; preds = %182
  %190 = and i64 %184, 524288
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %195, label %192, !prof !476

192:                                              ; preds = %189
  %193 = load i32, ptr %0, align 8
  %194 = or i32 %193, 134217728
  store i32 %194, ptr %0, align 8
  br label %195

195:                                              ; preds = %192, %189
  br label %196

196:                                              ; preds = %195, %206
  %197 = phi ptr [ %208, %206 ], [ %1, %195 ]
  %198 = load i64, ptr %197, align 8
  %199 = trunc i64 %198 to i16
  switch i16 %199, label %200 [
    i16 116, label %206
    i16 113, label %206
    i16 118, label %206
    i16 120, label %206
  ], !prof !477

200:                                              ; preds = %196
  %201 = load i64, ptr %197, align 8
  %202 = trunc i64 %201 to i32
  %203 = and i32 %202, 65535
  %204 = add nsw i32 %203, -41
  %205 = icmp ult i32 %204, 4
  br i1 %205, label %209, label %218, !prof !478

206:                                              ; preds = %196, %196, %196, %196
  %207 = getelementptr inbounds %struct.tree_exp, ptr %197, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !278
  br label %196, !llvm.loop !479

209:                                              ; preds = %200, %209
  %210 = phi ptr [ %212, %209 ], [ %197, %200 ]
  %211 = getelementptr inbounds %struct.tree_exp, ptr %210, i64 0, i32 3
  %212 = load ptr, ptr %211, align 8, !tbaa !278
  %213 = load i64, ptr %212, align 8
  %214 = trunc i64 %213 to i32
  %215 = and i32 %214, 65535
  %216 = add nsw i32 %215, -41
  %217 = icmp ult i32 %216, 4
  br i1 %217, label %209, label %218, !prof !480, !llvm.loop !481

218:                                              ; preds = %209, %200
  %219 = phi ptr [ %197, %200 ], [ %212, %209 ]
  %220 = phi i64 [ %201, %200 ], [ %213, %209 ]
  %221 = phi i32 [ %202, %200 ], [ %214, %209 ]
  %222 = and i64 %220, 65535
  %223 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !282
  %225 = icmp eq i32 %224, 3
  br i1 %225, label %226, label %242, !prof !482

226:                                              ; preds = %218
  %227 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %222, i64 13
  %228 = load i8, ptr %227, align 1, !tbaa !278
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %239, label %230, !prof !483

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %219, i64 0, i32 4
  %232 = load i32, ptr %231, align 8
  %233 = load i32, ptr %0, align 8
  %234 = shl i32 %232, 18
  %235 = and i32 %234, 33554432
  %236 = and i32 %233, -33554433
  %237 = or disjoint i32 %235, %236
  %238 = xor i32 %237, 33554432
  br label %247

239:                                              ; preds = %226
  %240 = load i32, ptr %0, align 8
  %241 = or i32 %240, 33554432
  br label %247

242:                                              ; preds = %218
  %243 = and i32 %221, 33554432
  %244 = load i32, ptr %0, align 8
  %245 = and i32 %244, -33554433
  %246 = or disjoint i32 %245, %243
  br label %247

247:                                              ; preds = %230, %239, %242
  %248 = phi i32 [ %238, %230 ], [ %241, %239 ], [ %246, %242 ]
  store i32 %248, ptr %0, align 8
  %249 = call ptr @get_base_address(ptr noundef nonnull %219) #38
  %250 = icmp eq ptr %249, null
  br i1 %250, label %286, label %251, !prof !484

251:                                              ; preds = %247
  %252 = load i64, ptr %249, align 8
  %253 = and i64 %252, 65535
  %254 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !282
  %256 = icmp ne i32 %255, 3
  %257 = and i64 %252, 1048576
  %258 = icmp eq i64 %257, 0
  %259 = or i1 %256, %258
  br i1 %259, label %286, label %260, !prof !485

260:                                              ; preds = %251
  %261 = and i64 %252, 67108864
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %268, !prof !486

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.tree_decl_common, ptr %249, i64 0, i32 2
  %265 = load i64, ptr %264, align 8
  %266 = and i64 %265, 33554432
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %286, label %268

268:                                              ; preds = %263, %260
  %269 = getelementptr inbounds %struct.tree_common, ptr %249, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !278
  %271 = icmp eq ptr %270, null
  br i1 %271, label %283, label %272, !prof !486

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.tree_type, ptr %270, i64 0, i32 6
  %274 = load i32, ptr %273, align 4
  %275 = and i32 %274, 2048
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %283, label %277, !prof !487

277:                                              ; preds = %272
  %278 = getelementptr inbounds %struct.tree_decl_common, ptr %249, i64 0, i32 2
  %279 = load i64, ptr %278, align 8
  %280 = and i64 %279, 4096
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1647, ptr noundef nonnull @.str.1) #38
  br label %283

283:                                              ; preds = %268, %272, %277, %282
  %284 = load i32, ptr %0, align 8
  %285 = or i32 %284, 67108864
  store i32 %285, ptr %0, align 8
  br label %286

286:                                              ; preds = %283, %263, %251, %247
  %287 = call zeroext i8 @component_uses_parent_alias_set(ptr noundef nonnull %197) #38
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %292, label %289, !prof !488

289:                                              ; preds = %286
  %290 = load i32, ptr %0, align 8
  %291 = or i32 %290, 16777216
  store i32 %291, ptr %0, align 8
  br label %292

292:                                              ; preds = %289, %286
  %293 = load i64, ptr %197, align 8
  %294 = and i64 %293, 65535
  %295 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %294
  %296 = load i32, ptr %295, align 4, !tbaa !282
  switch i32 %296, label %332 [
    i32 3, label %297
    i32 1, label %328
  ], !prof !489

297:                                              ; preds = %292
  %298 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !267
  %299 = getelementptr inbounds %struct.tree_decl_common, ptr %197, i64 0, i32 4
  %300 = load ptr, ptr %299, align 8, !tbaa !278
  %301 = icmp eq ptr %300, null
  br i1 %301, label %324, label %302, !prof !468

302:                                              ; preds = %297
  %303 = call i32 @host_integerp(ptr noundef nonnull %300, i32 noundef 1) #38
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %324, label %305, !prof !468

305:                                              ; preds = %302
  %306 = load ptr, ptr %299, align 8, !tbaa !278
  %307 = call i64 @tree_low_cst(ptr noundef %306, i32 noundef 1) #38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store i64 %307, ptr %8, align 8, !tbaa !288
  %308 = add i64 %307, 64
  %309 = icmp ult i64 %308, 129
  br i1 %309, label %310, label %312, !prof !289

310:                                              ; preds = %305
  %311 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %308
  br label %321

312:                                              ; preds = %305
  %313 = load ptr, ptr @const_int_htab, align 8, !tbaa !267
  %314 = trunc i64 %307 to i32
  %315 = call ptr @htab_find_slot_with_hash(ptr noundef %313, ptr noundef nonnull %8, i32 noundef %314, i32 noundef 1) #38
  %316 = load ptr, ptr %315, align 8, !tbaa !267
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %321, !prof !290

318:                                              ; preds = %312
  %319 = load i64, ptr %8, align 8, !tbaa !288
  %320 = call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %319) #38
  store ptr %320, ptr %315, align 8, !tbaa !267
  br label %321

321:                                              ; preds = %310, %312, %318
  %322 = phi ptr [ %311, %310 ], [ %315, %318 ], [ %315, %312 ]
  %323 = load ptr, ptr %322, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  br label %324

324:                                              ; preds = %297, %302, %321
  %325 = phi ptr [ %323, %321 ], [ null, %302 ], [ null, %297 ]
  %326 = getelementptr inbounds %struct.tree_decl_common, ptr %197, i64 0, i32 3
  %327 = load i32, ptr %326, align 8, !tbaa !278
  br label %462

328:                                              ; preds = %292
  %329 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 7
  %330 = load i32, ptr %329, align 8, !tbaa !278
  %331 = call i32 @ix86_constant_alignment(ptr noundef nonnull %197, i32 noundef %330) #38
  br label %462

332:                                              ; preds = %292
  %333 = icmp eq i64 %294, 41
  br i1 %333, label %334, label %343, !prof !490

334:                                              ; preds = %332
  %335 = getelementptr inbounds %struct.tree_exp, ptr %197, i64 1
  %336 = load ptr, ptr %335, align 8, !tbaa !278
  %337 = getelementptr inbounds %struct.tree_decl_common, ptr %336, i64 0, i32 2
  %338 = load i64, ptr %337, align 8
  %339 = and i64 %338, 33554432
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %341, label %343, !prof !491

341:                                              ; preds = %334
  %342 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !267
  br label %462

343:                                              ; preds = %334, %332
  %344 = trunc i64 %293 to i32
  %345 = and i32 %344, 65535
  %346 = icmp eq i32 %345, 45
  br i1 %346, label %347, label %448, !prof !492

347:                                              ; preds = %343
  %348 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !267
  br label %349

349:                                              ; preds = %363, %347
  %350 = phi ptr [ %348, %347 ], [ %368, %363 ]
  %351 = phi ptr [ %197, %347 ], [ %369, %363 ]
  %352 = getelementptr inbounds %struct.tree_exp, ptr %351, i64 0, i32 3
  %353 = getelementptr inbounds %struct.tree_exp, ptr %351, i64 1
  %354 = load ptr, ptr %353, align 8, !tbaa !278
  %355 = call ptr @array_ref_low_bound(ptr noundef nonnull %351) #38
  %356 = call ptr @array_ref_element_size(ptr noundef nonnull %351) #38
  %357 = call i32 @integer_zerop(ptr noundef %355) #38
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %363, !prof !493

359:                                              ; preds = %349
  %360 = getelementptr inbounds %struct.tree_common, ptr %354, i64 0, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !278
  %362 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %361, ptr noundef %354, ptr noundef %355) #38
  br label %363

363:                                              ; preds = %349, %359
  %364 = phi ptr [ %362, %359 ], [ %354, %349 ]
  %365 = load ptr, ptr @sizetype_tab, align 16, !tbaa !267
  %366 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %365, ptr noundef %364) #38
  %367 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %366, ptr noundef %356) #38
  %368 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %367, ptr noundef %350) #38
  %369 = load ptr, ptr %352, align 8, !tbaa !278
  %370 = load i64, ptr %369, align 8
  %371 = trunc i64 %370 to i32
  %372 = and i32 %371, 65535
  %373 = icmp eq i32 %372, 45
  br i1 %373, label %349, label %374, !prof !493, !llvm.loop !494

374:                                              ; preds = %363
  %375 = and i64 %370, 65535
  %376 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %375
  %377 = load i32, ptr %376, align 4, !tbaa !282
  %378 = icmp eq i32 %377, 3
  br i1 %378, label %379, label %411, !prof !495

379:                                              ; preds = %374
  %380 = call i32 @host_integerp(ptr noundef %368, i32 noundef 1) #38
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %462, label %382, !prof !496

382:                                              ; preds = %379
  %383 = call i64 @tree_low_cst(ptr noundef %368, i32 noundef 1) #38
  %384 = sub nsw i64 0, %383
  %385 = and i64 %383, %384
  %386 = shl nsw i64 %385, 3
  %387 = getelementptr inbounds %struct.tree_decl_common, ptr %369, i64 0, i32 3
  %388 = load i32, ptr %387, align 8, !tbaa !278
  %389 = icmp ne i64 %385, 0
  %390 = zext i32 %388 to i64
  %391 = icmp ult i64 %386, %390
  %392 = select i1 %389, i1 %391, i1 false, !prof !497
  %393 = trunc i64 %386 to i32
  %394 = select i1 %392, i32 %393, i32 %388, !prof !496
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store i64 %383, ptr %7, align 8, !tbaa !288
  %395 = add i64 %383, 64
  %396 = icmp ult i64 %395, 129
  br i1 %396, label %397, label %399, !prof !289

397:                                              ; preds = %382
  %398 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %395
  br label %408

399:                                              ; preds = %382
  %400 = load ptr, ptr @const_int_htab, align 8, !tbaa !267
  %401 = trunc i64 %383 to i32
  %402 = call ptr @htab_find_slot_with_hash(ptr noundef %400, ptr noundef nonnull %7, i32 noundef %401, i32 noundef 1) #38
  %403 = load ptr, ptr %402, align 8, !tbaa !267
  %404 = icmp eq ptr %403, null
  br i1 %404, label %405, label %408, !prof !290

405:                                              ; preds = %399
  %406 = load i64, ptr %7, align 8, !tbaa !288
  %407 = call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %406) #38
  store ptr %407, ptr %402, align 8, !tbaa !267
  br label %408

408:                                              ; preds = %397, %399, %405
  %409 = phi ptr [ %398, %397 ], [ %402, %405 ], [ %402, %399 ]
  %410 = load ptr, ptr %409, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  br label %462

411:                                              ; preds = %374
  %412 = icmp eq i32 %372, 41
  br i1 %412, label %413, label %434, !prof !498

413:                                              ; preds = %411
  %414 = call i32 @host_integerp(ptr noundef %368, i32 noundef 1) #38
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %462, label %416, !prof !499

416:                                              ; preds = %413
  %417 = call i64 @tree_low_cst(ptr noundef %368, i32 noundef 1) #38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store i64 %417, ptr %6, align 8, !tbaa !288
  %418 = add i64 %417, 64
  %419 = icmp ult i64 %418, 129
  br i1 %419, label %420, label %422, !prof !289

420:                                              ; preds = %416
  %421 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %418
  br label %431

422:                                              ; preds = %416
  %423 = load ptr, ptr @const_int_htab, align 8, !tbaa !267
  %424 = trunc i64 %417 to i32
  %425 = call ptr @htab_find_slot_with_hash(ptr noundef %423, ptr noundef nonnull %6, i32 noundef %424, i32 noundef 1) #38
  %426 = load ptr, ptr %425, align 8, !tbaa !267
  %427 = icmp eq ptr %426, null
  br i1 %427, label %428, label %431, !prof !290

428:                                              ; preds = %422
  %429 = load i64, ptr %6, align 8, !tbaa !288
  %430 = call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %429) #38
  store ptr %430, ptr %425, align 8, !tbaa !267
  br label %431

431:                                              ; preds = %420, %422, %428
  %432 = phi ptr [ %421, %420 ], [ %425, %428 ], [ %425, %422 ]
  %433 = load ptr, ptr %432, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  br label %462

434:                                              ; preds = %411
  %435 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !282
  %436 = icmp sgt i32 %435, 1
  %437 = add nsw i32 %372, -47
  %438 = icmp ult i32 %437, 3
  %439 = and i1 %438, %436
  br i1 %439, label %440, label %462

440:                                              ; preds = %434
  %441 = getelementptr inbounds %struct.tree_exp, ptr %369, i64 0, i32 3
  %442 = load ptr, ptr %441, align 8, !tbaa !278
  %443 = load i64, ptr %442, align 8
  %444 = and i64 %443, 65535
  %445 = icmp eq i64 %444, 34
  %446 = select i1 %445, ptr null, ptr %22
  %447 = select i1 %445, ptr %369, ptr %17
  br label %462

448:                                              ; preds = %343
  %449 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !282
  %450 = icmp sgt i32 %449, 1
  %451 = add nsw i32 %345, -47
  %452 = icmp ult i32 %451, 3
  %453 = and i1 %452, %450
  br i1 %453, label %454, label %462, !prof !500

454:                                              ; preds = %448
  %455 = getelementptr inbounds %struct.tree_exp, ptr %197, i64 0, i32 3
  %456 = load ptr, ptr %455, align 8, !tbaa !278
  %457 = load i64, ptr %456, align 8
  %458 = and i64 %457, 65535
  %459 = icmp eq i64 %458, 34
  %460 = select i1 %459, ptr null, ptr %22
  %461 = select i1 %459, ptr %197, ptr %17
  br label %462

462:                                              ; preds = %454, %440, %408, %379, %434, %413, %431, %328, %448, %341, %324
  %463 = phi i64 [ %3, %324 ], [ 0, %328 ], [ 0, %448 ], [ %3, %341 ], [ %3, %408 ], [ 0, %379 ], [ %3, %431 ], [ 0, %413 ], [ 0, %434 ], [ 0, %440 ], [ 0, %454 ]
  %464 = phi i1 [ false, %324 ], [ false, %328 ], [ true, %448 ], [ true, %341 ], [ false, %408 ], [ true, %379 ], [ true, %431 ], [ true, %413 ], [ true, %434 ], [ true, %440 ], [ true, %454 ]
  %465 = phi i32 [ %327, %324 ], [ %331, %328 ], [ %156, %448 ], [ %156, %341 ], [ %394, %408 ], [ %156, %379 ], [ %156, %431 ], [ %156, %413 ], [ %156, %434 ], [ %156, %440 ], [ %156, %454 ]
  %466 = phi ptr [ %325, %324 ], [ %183, %328 ], [ %183, %448 ], [ %183, %341 ], [ %183, %408 ], [ %183, %379 ], [ %183, %431 ], [ %183, %413 ], [ %183, %434 ], [ %183, %440 ], [ %183, %454 ]
  %467 = phi ptr [ %298, %324 ], [ %22, %328 ], [ %22, %448 ], [ %342, %341 ], [ %410, %408 ], [ null, %379 ], [ %433, %431 ], [ null, %413 ], [ %22, %434 ], [ %446, %440 ], [ %460, %454 ]
  %468 = phi ptr [ %197, %324 ], [ %17, %328 ], [ %17, %448 ], [ %197, %341 ], [ %369, %408 ], [ %369, %379 ], [ %369, %431 ], [ %369, %413 ], [ %17, %434 ], [ %447, %440 ], [ %461, %454 ]
  br i1 %464, label %469, label %482, !prof !501

469:                                              ; preds = %462
  %470 = load i64, ptr %197, align 8
  %471 = trunc i64 %470 to i32
  %472 = and i32 %471, 65535
  %473 = add nsw i32 %472, -47
  %474 = icmp ult i32 %473, 3
  br i1 %474, label %482, label %475, !prof !502

475:                                              ; preds = %469
  %476 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !282
  %477 = and i32 %476, 32
  %478 = icmp eq i32 %477, 0
  %479 = select i1 %478, i32 128, i32 256, !prof !503
  %480 = call i32 @get_object_alignment(ptr noundef nonnull %197, i32 noundef %465, i32 noundef %479) #38
  %481 = call i32 @llvm.umax.i32(i32 %465, i32 %480)
  br label %482

482:                                              ; preds = %469, %462, %475, %182
  %483 = phi i64 [ 0, %182 ], [ %463, %469 ], [ %463, %475 ], [ %463, %462 ]
  %484 = phi i32 [ %156, %182 ], [ %465, %469 ], [ %481, %475 ], [ %465, %462 ]
  %485 = phi ptr [ %183, %182 ], [ %466, %469 ], [ %466, %475 ], [ %466, %462 ]
  %486 = phi ptr [ %22, %182 ], [ %467, %469 ], [ %467, %475 ], [ %467, %462 ]
  %487 = phi ptr [ %17, %182 ], [ %468, %469 ], [ %468, %475 ], [ %468, %462 ]
  %488 = phi ptr [ %1, %182 ], [ %197, %469 ], [ %197, %475 ], [ %197, %462 ]
  %489 = icmp eq i64 %483, 0
  br i1 %489, label %497, label %490, !prof !504

490:                                              ; preds = %482
  %491 = sdiv i64 %483, 8
  %492 = sub nsw i64 0, %491
  %493 = call ptr @plus_constant(ptr noundef %486, i64 noundef %492) #38
  %494 = icmp eq ptr %485, null
  br i1 %494, label %497, label %495, !prof !505

495:                                              ; preds = %490
  %496 = call ptr @plus_constant(ptr noundef nonnull %485, i64 noundef %491) #38
  br label %497

497:                                              ; preds = %490, %495, %482
  %498 = phi ptr [ %496, %495 ], [ null, %490 ], [ %485, %482 ]
  %499 = phi ptr [ %493, %495 ], [ %493, %490 ], [ %486, %482 ]
  %500 = load i64, ptr %488, align 8
  %501 = and i64 %500, 65535
  %502 = icmp eq i64 %501, 48
  %503 = select i1 %502, ptr null, ptr %499, !prof !465
  %504 = select i1 %502, ptr null, ptr %487, !prof !465
  %505 = load i64, ptr %72, align 8
  %506 = lshr i64 %505, 56
  %507 = trunc i64 %506 to i8
  %508 = load i32, ptr %0, align 8
  %509 = lshr i32 %508, 16
  %510 = and i32 %509, 255
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #38
  %511 = icmp eq i32 %89, 0
  %512 = icmp eq ptr %504, null
  %513 = and i1 %511, %512
  %514 = icmp eq ptr %503, null
  %515 = and i1 %514, %513
  %516 = icmp eq i8 %507, 0
  %517 = and i1 %516, %515
  br i1 %517, label %518, label %534, !prof !319

518:                                              ; preds = %497
  %519 = icmp eq ptr %498, null
  br i1 %519, label %532, label %520, !prof !320

520:                                              ; preds = %518
  %521 = icmp eq i32 %510, 1
  br i1 %521, label %534, label %522, !prof !321

522:                                              ; preds = %520
  %523 = zext nneg i32 %510 to i64
  %524 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %523
  %525 = load i8, ptr %524, align 1, !tbaa !278
  %526 = zext i8 %525 to i64
  %527 = getelementptr inbounds %struct.rtx_def, ptr %498, i64 0, i32 1
  %528 = load i64, ptr %527, align 8, !tbaa !278
  %529 = icmp eq i64 %528, %526
  %530 = icmp eq i32 %484, 8
  %531 = and i1 %530, %529
  br i1 %531, label %548, label %534, !prof !322

532:                                              ; preds = %518
  %533 = icmp eq i32 %484, 8
  br i1 %533, label %548, label %534, !prof !323

534:                                              ; preds = %532, %522, %520, %497
  %535 = getelementptr inbounds %struct.mem_attrs, ptr %5, i64 0, i32 3
  store i32 %89, ptr %535, align 8, !tbaa !324
  store ptr %504, ptr %5, align 8, !tbaa !313
  %536 = getelementptr inbounds %struct.mem_attrs, ptr %5, i64 0, i32 1
  store ptr %503, ptr %536, align 8, !tbaa !315
  %537 = getelementptr inbounds %struct.mem_attrs, ptr %5, i64 0, i32 2
  store ptr %498, ptr %537, align 8, !tbaa !316
  %538 = getelementptr inbounds %struct.mem_attrs, ptr %5, i64 0, i32 4
  store i32 %484, ptr %538, align 4, !tbaa !317
  %539 = getelementptr inbounds %struct.mem_attrs, ptr %5, i64 0, i32 5
  store i8 %507, ptr %539, align 8, !tbaa !318
  %540 = load ptr, ptr @mem_attrs_htab, align 8, !tbaa !267
  %541 = call ptr @htab_find_slot(ptr noundef %540, ptr noundef nonnull %5, i32 noundef 1) #38
  %542 = load ptr, ptr %541, align 8, !tbaa !267
  %543 = icmp eq ptr %542, null
  br i1 %543, label %544, label %546, !prof !325

544:                                              ; preds = %534
  %545 = call ptr @ggc_alloc_stat(i64 noundef 40) #38
  store ptr %545, ptr %541, align 8, !tbaa !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %545, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  br label %546

546:                                              ; preds = %544, %534
  %547 = load ptr, ptr %541, align 8, !tbaa !267
  br label %548

548:                                              ; preds = %522, %532, %546
  %549 = phi ptr [ %547, %546 ], [ null, %522 ], [ null, %532 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #38
  store ptr %549, ptr %11, align 8, !tbaa !278
  %550 = load i32, ptr %0, align 8
  %551 = and i32 %550, -1879048192
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %558, !prof !506

553:                                              ; preds = %548
  %554 = load i64, ptr %488, align 8
  %555 = trunc i64 %554 to i16
  switch i16 %555, label %558 [
    i16 41, label %556
    i16 45, label %556
    i16 46, label %556
    i16 42, label %556
  ], !prof !507

556:                                              ; preds = %553, %553, %553, %553
  %557 = or disjoint i32 %550, 268435456
  store i32 %557, ptr %0, align 8
  br label %558

558:                                              ; preds = %556, %553, %548, %71, %59
  ret void
}

declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #3

declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @component_uses_parent_alias_set(ptr noundef) local_unnamed_addr #3

declare i32 @ix86_constant_alignment(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #3

declare ptr @array_ref_element_size(ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @get_object_alignment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @get_mem_attrs(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5, i32 noundef %6) unnamed_addr #10 !prof !508 !PGOFuncName !509 {
  %8 = alloca %struct.mem_attrs, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #38
  %9 = icmp eq i32 %0, 0
  %10 = icmp eq ptr %1, null
  %11 = and i1 %9, %10
  %12 = icmp eq ptr %2, null
  %13 = and i1 %11, %12
  %14 = icmp eq i8 %5, 0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %32, !prof !319

16:                                               ; preds = %7
  %17 = icmp eq ptr %3, null
  br i1 %17, label %30, label %18, !prof !320

18:                                               ; preds = %16
  %19 = icmp eq i32 %6, 1
  br i1 %19, label %32, label %20, !prof !321

20:                                               ; preds = %18
  %21 = zext i32 %6 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !278
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !278
  %27 = icmp eq i64 %26, %24
  %28 = icmp eq i32 %4, 8
  %29 = and i1 %28, %27
  br i1 %29, label %46, label %32, !prof !322

30:                                               ; preds = %16
  %31 = icmp eq i32 %4, 8
  br i1 %31, label %46, label %32, !prof !323

32:                                               ; preds = %20, %30, %18, %7
  %33 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 3
  store i32 %0, ptr %33, align 8, !tbaa !324
  store ptr %1, ptr %8, align 8, !tbaa !313
  %34 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 1
  store ptr %2, ptr %34, align 8, !tbaa !315
  %35 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 2
  store ptr %3, ptr %35, align 8, !tbaa !316
  %36 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 4
  store i32 %4, ptr %36, align 4, !tbaa !317
  %37 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 5
  store i8 %5, ptr %37, align 8, !tbaa !318
  %38 = load ptr, ptr @mem_attrs_htab, align 8, !tbaa !267
  %39 = call ptr @htab_find_slot(ptr noundef %38, ptr noundef nonnull %8, i32 noundef 1) #38
  %40 = load ptr, ptr %39, align 8, !tbaa !267
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44, !prof !325

42:                                               ; preds = %32
  %43 = call ptr @ggc_alloc_stat(i64 noundef 40) #38
  store ptr %43, ptr %39, align 8, !tbaa !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %43, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false)
  br label %44

44:                                               ; preds = %42, %32
  %45 = load ptr, ptr %39, align 8, !tbaa !267
  br label %46

46:                                               ; preds = %30, %20, %44
  %47 = phi ptr [ %45, %44 ], [ null, %20 ], [ null, %30 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #38
  ret ptr %47
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @set_mem_attributes(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !510 {
  tail call void @set_mem_attributes_minus_bitpos(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_mem_addr_space(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #9 !prof !511 {
  %3 = alloca %struct.mem_attrs, align 8
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !500

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mem_attrs, ptr %5, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !324
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %2 ]
  br i1 %6, label %14, label %12, !prof !500

12:                                               ; preds = %10
  %13 = load ptr, ptr %5, align 8, !tbaa !313
  br label %14

14:                                               ; preds = %10, %12
  %15 = phi ptr [ %13, %12 ], [ null, %10 ]
  br i1 %6, label %19, label %16, !prof !500

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !315
  br label %19

19:                                               ; preds = %14, %16
  %20 = phi ptr [ %18, %16 ], [ null, %14 ]
  br i1 %6, label %24, label %21, !prof !500

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.mem_attrs, ptr %5, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !316
  br label %35

24:                                               ; preds = %19
  %25 = load i32, ptr %0, align 8
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = zext nneg i32 %27 to i64
  %31 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !278
  %33 = zext i8 %32 to i64
  %34 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %33)
  br label %35

35:                                               ; preds = %29, %24, %21
  %36 = phi ptr [ %23, %21 ], [ %34, %29 ], [ null, %24 ]
  %37 = load ptr, ptr %4, align 8, !tbaa !278
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39, !prof !500

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.mem_attrs, ptr %37, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !317
  br label %42

42:                                               ; preds = %35, %39
  %43 = phi i32 [ %41, %39 ], [ 8, %35 ]
  %44 = load i32, ptr %0, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #38
  %47 = icmp eq i32 %11, 0
  %48 = icmp eq ptr %15, null
  %49 = and i1 %47, %48
  %50 = icmp eq ptr %20, null
  %51 = and i1 %49, %50
  %52 = icmp eq i8 %1, 0
  %53 = and i1 %52, %51
  br i1 %53, label %54, label %70, !prof !319

54:                                               ; preds = %42
  %55 = icmp eq ptr %36, null
  br i1 %55, label %68, label %56, !prof !320

56:                                               ; preds = %54
  %57 = icmp eq i32 %46, 1
  br i1 %57, label %70, label %58, !prof !321

58:                                               ; preds = %56
  %59 = zext nneg i32 %46 to i64
  %60 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !278
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !278
  %65 = icmp eq i64 %64, %62
  %66 = icmp eq i32 %43, 8
  %67 = and i1 %66, %65
  br i1 %67, label %84, label %70, !prof !322

68:                                               ; preds = %54
  %69 = icmp eq i32 %43, 8
  br i1 %69, label %84, label %70, !prof !323

70:                                               ; preds = %68, %58, %56, %42
  %71 = getelementptr inbounds %struct.mem_attrs, ptr %3, i64 0, i32 3
  store i32 %11, ptr %71, align 8, !tbaa !324
  store ptr %15, ptr %3, align 8, !tbaa !313
  %72 = getelementptr inbounds %struct.mem_attrs, ptr %3, i64 0, i32 1
  store ptr %20, ptr %72, align 8, !tbaa !315
  %73 = getelementptr inbounds %struct.mem_attrs, ptr %3, i64 0, i32 2
  store ptr %36, ptr %73, align 8, !tbaa !316
  %74 = getelementptr inbounds %struct.mem_attrs, ptr %3, i64 0, i32 4
  store i32 %43, ptr %74, align 4, !tbaa !317
  %75 = getelementptr inbounds %struct.mem_attrs, ptr %3, i64 0, i32 5
  store i8 %1, ptr %75, align 8, !tbaa !318
  %76 = load ptr, ptr @mem_attrs_htab, align 8, !tbaa !267
  %77 = call ptr @htab_find_slot(ptr noundef %76, ptr noundef nonnull %3, i32 noundef 1) #38
  %78 = load ptr, ptr %77, align 8, !tbaa !267
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82, !prof !325

80:                                               ; preds = %70
  %81 = call ptr @ggc_alloc_stat(i64 noundef 40) #38
  store ptr %81, ptr %77, align 8, !tbaa !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %81, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  br label %82

82:                                               ; preds = %80, %70
  %83 = load ptr, ptr %77, align 8, !tbaa !267
  br label %84

84:                                               ; preds = %58, %68, %82
  %85 = phi ptr [ %83, %82 ], [ null, %58 ], [ null, %68 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #38
  store ptr %85, ptr %4, align 8, !tbaa !278
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @set_mem_align(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !512 {
  %3 = alloca %struct.mem_attrs, align 8
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8, !prof !513

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !324
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i32 [ %10, %8 ], [ 0, %2 ]
  br i1 %7, label %15, label %13, !prof !513

13:                                               ; preds = %11
  %14 = load ptr, ptr %6, align 8, !tbaa !313
  br label %15

15:                                               ; preds = %11, %13
  %16 = phi ptr [ %14, %13 ], [ null, %11 ]
  br i1 %7, label %20, label %17, !prof !513

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !315
  br label %20

20:                                               ; preds = %15, %17
  %21 = phi ptr [ %19, %17 ], [ null, %15 ]
  br i1 %7, label %25, label %22, !prof !513

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !316
  br label %51

25:                                               ; preds = %20
  %26 = load i32, ptr %0, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %51, label %30, !prof !514

30:                                               ; preds = %25
  %31 = zext nneg i32 %28 to i64
  %32 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !278
  %34 = zext i8 %33 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store i64 %34, ptr %4, align 8, !tbaa !288
  %35 = icmp ult i8 %33, 65
  br i1 %35, label %36, label %39, !prof !289

36:                                               ; preds = %30
  %37 = add nuw nsw i64 %34, 64
  %38 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %37
  br label %48

39:                                               ; preds = %30
  %40 = load ptr, ptr @const_int_htab, align 8, !tbaa !267
  %41 = zext i8 %33 to i32
  %42 = call ptr @htab_find_slot_with_hash(ptr noundef %40, ptr noundef nonnull %4, i32 noundef %41, i32 noundef 1) #38
  %43 = load ptr, ptr %42, align 8, !tbaa !267
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48, !prof !290

45:                                               ; preds = %39
  %46 = load i64, ptr %4, align 8, !tbaa !288
  %47 = call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %46) #38
  store ptr %47, ptr %42, align 8, !tbaa !267
  br label %48

48:                                               ; preds = %36, %39, %45
  %49 = phi ptr [ %38, %36 ], [ %42, %45 ], [ %42, %39 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  br label %51

51:                                               ; preds = %48, %25, %22
  %52 = phi ptr [ %24, %22 ], [ %50, %48 ], [ null, %25 ]
  %53 = load ptr, ptr %5, align 8, !tbaa !278
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55, !prof !513

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.mem_attrs, ptr %53, i64 0, i32 5
  %57 = load i8, ptr %56, align 8, !tbaa !318
  br label %58

58:                                               ; preds = %51, %55
  %59 = phi i8 [ %57, %55 ], [ 0, %51 ]
  %60 = load i32, ptr %0, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #38
  %63 = icmp eq i32 %12, 0
  %64 = icmp eq ptr %16, null
  %65 = and i1 %63, %64
  %66 = icmp eq ptr %21, null
  %67 = and i1 %65, %66
  %68 = icmp eq i8 %59, 0
  %69 = and i1 %67, %68
  br i1 %69, label %70, label %86, !prof !319

70:                                               ; preds = %58
  %71 = icmp eq ptr %52, null
  br i1 %71, label %84, label %72, !prof !320

72:                                               ; preds = %70
  %73 = icmp eq i32 %62, 1
  br i1 %73, label %86, label %74, !prof !321

74:                                               ; preds = %72
  %75 = zext nneg i32 %62 to i64
  %76 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !278
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !278
  %81 = icmp eq i64 %80, %78
  %82 = icmp eq i32 %1, 8
  %83 = and i1 %82, %81
  br i1 %83, label %100, label %86, !prof !322

84:                                               ; preds = %70
  %85 = icmp eq i32 %1, 8
  br i1 %85, label %100, label %86, !prof !323

86:                                               ; preds = %84, %74, %72, %58
  %87 = getelementptr inbounds %struct.mem_attrs, ptr %3, i64 0, i32 3
  store i32 %12, ptr %87, align 8, !tbaa !324
  store ptr %16, ptr %3, align 8, !tbaa !313
  %88 = getelementptr inbounds %struct.mem_attrs, ptr %3, i64 0, i32 1
  store ptr %21, ptr %88, align 8, !tbaa !315
  %89 = getelementptr inbounds %struct.mem_attrs, ptr %3, i64 0, i32 2
  store ptr %52, ptr %89, align 8, !tbaa !316
  %90 = getelementptr inbounds %struct.mem_attrs, ptr %3, i64 0, i32 4
  store i32 %1, ptr %90, align 4, !tbaa !317
  %91 = getelementptr inbounds %struct.mem_attrs, ptr %3, i64 0, i32 5
  store i8 %59, ptr %91, align 8, !tbaa !318
  %92 = load ptr, ptr @mem_attrs_htab, align 8, !tbaa !267
  %93 = call ptr @htab_find_slot(ptr noundef %92, ptr noundef nonnull %3, i32 noundef 1) #38
  %94 = load ptr, ptr %93, align 8, !tbaa !267
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %98, !prof !325

96:                                               ; preds = %86
  %97 = call ptr @ggc_alloc_stat(i64 noundef 40) #38
  store ptr %97, ptr %93, align 8, !tbaa !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %97, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  br label %98

98:                                               ; preds = %96, %86
  %99 = load ptr, ptr %93, align 8, !tbaa !267
  br label %100

100:                                              ; preds = %74, %84, %98
  %101 = phi ptr [ %99, %98 ], [ null, %74 ], [ null, %84 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #38
  store ptr %101, ptr %5, align 8, !tbaa !278
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @set_mem_expr(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !515 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !278
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !516

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !324
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  br i1 %5, label %14, label %11, !prof !516

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !315
  br label %14

14:                                               ; preds = %9, %11
  %15 = phi ptr [ %13, %11 ], [ null, %9 ]
  br i1 %5, label %19, label %16, !prof !516

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !316
  br label %30

19:                                               ; preds = %14
  %20 = load i32, ptr %0, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = zext nneg i32 %22 to i64
  %26 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !278
  %28 = zext i8 %27 to i64
  %29 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %28)
  br label %30

30:                                               ; preds = %24, %19, %16
  %31 = phi ptr [ %18, %16 ], [ %29, %24 ], [ null, %19 ]
  %32 = load ptr, ptr %3, align 8, !tbaa !278
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34, !prof !516

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.mem_attrs, ptr %32, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !317
  br label %37

37:                                               ; preds = %30, %34
  %38 = phi i32 [ %36, %34 ], [ 8, %30 ]
  br i1 %33, label %42, label %39, !prof !516

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.mem_attrs, ptr %32, i64 0, i32 5
  %41 = load i8, ptr %40, align 8, !tbaa !318
  br label %42

42:                                               ; preds = %37, %39
  %43 = phi i8 [ %41, %39 ], [ 0, %37 ]
  %44 = load i32, ptr %0, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = tail call fastcc ptr @get_mem_attrs(i32 noundef %10, ptr noundef %1, ptr noundef %15, ptr noundef %31, i32 noundef %38, i8 noundef zeroext %43, i32 noundef %46)
  store ptr %47, ptr %3, align 8, !tbaa !278
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @set_mem_offset(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !515 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !278
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !516

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !324
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  br i1 %5, label %13, label %11, !prof !516

11:                                               ; preds = %9
  %12 = load ptr, ptr %4, align 8, !tbaa !313
  br label %13

13:                                               ; preds = %9, %11
  %14 = phi ptr [ %12, %11 ], [ null, %9 ]
  br i1 %5, label %18, label %15, !prof !516

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !316
  br label %29

18:                                               ; preds = %13
  %19 = load i32, ptr %0, align 8
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = zext nneg i32 %21 to i64
  %25 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !278
  %27 = zext i8 %26 to i64
  %28 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %27)
  br label %29

29:                                               ; preds = %23, %18, %15
  %30 = phi ptr [ %17, %15 ], [ %28, %23 ], [ null, %18 ]
  %31 = load ptr, ptr %3, align 8, !tbaa !278
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33, !prof !516

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.mem_attrs, ptr %31, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !317
  br label %36

36:                                               ; preds = %29, %33
  %37 = phi i32 [ %35, %33 ], [ 8, %29 ]
  br i1 %32, label %41, label %38, !prof !516

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.mem_attrs, ptr %31, i64 0, i32 5
  %40 = load i8, ptr %39, align 8, !tbaa !318
  br label %41

41:                                               ; preds = %36, %38
  %42 = phi i8 [ %40, %38 ], [ 0, %36 ]
  %43 = load i32, ptr %0, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = tail call fastcc ptr @get_mem_attrs(i32 noundef %10, ptr noundef %14, ptr noundef %1, ptr noundef %30, i32 noundef %37, i8 noundef zeroext %42, i32 noundef %45)
  store ptr %46, ptr %3, align 8, !tbaa !278
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @set_mem_size(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !515 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !278
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !516

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !324
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  br i1 %5, label %13, label %11, !prof !516

11:                                               ; preds = %9
  %12 = load ptr, ptr %4, align 8, !tbaa !313
  br label %13

13:                                               ; preds = %9, %11
  %14 = phi ptr [ %12, %11 ], [ null, %9 ]
  br i1 %5, label %18, label %15, !prof !516

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !315
  br label %18

18:                                               ; preds = %13, %15
  %19 = phi ptr [ %17, %15 ], [ null, %13 ]
  br i1 %5, label %23, label %20, !prof !516

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !317
  br label %23

23:                                               ; preds = %18, %20
  %24 = phi i32 [ %22, %20 ], [ 8, %18 ]
  br i1 %5, label %28, label %25, !prof !516

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 5
  %27 = load i8, ptr %26, align 8, !tbaa !318
  br label %28

28:                                               ; preds = %23, %25
  %29 = phi i8 [ %27, %25 ], [ 0, %23 ]
  %30 = load i32, ptr %0, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = tail call fastcc ptr @get_mem_attrs(i32 noundef %10, ptr noundef %14, ptr noundef %19, ptr noundef %1, i32 noundef %24, i8 noundef zeroext %29, i32 noundef %32)
  store ptr %33, ptr %3, align 8, !tbaa !278
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @change_address(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !prof !266 {
  %4 = tail call fastcc ptr @change_address_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 1)
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !278
  %13 = zext i8 %12 to i64
  %14 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %13)
  br label %15

15:                                               ; preds = %3, %9
  %16 = phi ptr [ %14, %9 ], [ null, %3 ]
  br i1 %8, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call i32 @get_mode_alignment(i32 noundef %7) #38
  br label %19

19:                                               ; preds = %15, %17
  %20 = phi i32 [ %18, %17 ], [ 8, %15 ]
  %21 = icmp eq ptr %4, %0
  br i1 %21, label %22, label %81

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !278
  %26 = icmp eq ptr %25, null
  br i1 %26, label %98, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %25, align 8, !tbaa !313
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.mem_attrs, ptr %25, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !315
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.mem_attrs, ptr %25, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !316
  %37 = icmp eq ptr %36, %16
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load ptr, ptr %24, align 8, !tbaa !278
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.mem_attrs, ptr %39, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !317
  br label %44

44:                                               ; preds = %38, %41
  %45 = phi i32 [ %43, %41 ], [ 8, %38 ]
  %46 = icmp eq i32 %45, %20
  br i1 %46, label %98, label %47

47:                                               ; preds = %44, %34, %30, %27
  %48 = load ptr, ptr %23, align 8, !tbaa !278
  %49 = tail call ptr @gen_rtx_fmt_e0_stat(i32 noundef 43, i32 noundef %7, ptr noundef %48) #38
  %50 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %50, align 8, !tbaa !278
  %51 = load i32, ptr %0, align 8
  %52 = and i32 %51, 134217728
  %53 = load i32, ptr %49, align 8
  %54 = and i32 %53, -134217729
  %55 = or disjoint i32 %54, %52
  store i32 %55, ptr %49, align 8
  %56 = load i32, ptr %0, align 8
  %57 = and i32 %56, 268435456
  %58 = and i32 %55, -268435457
  %59 = or disjoint i32 %58, %57
  store i32 %59, ptr %49, align 8
  %60 = load i32, ptr %0, align 8
  %61 = and i32 %60, -2147483648
  %62 = and i32 %59, 2147483647
  %63 = or disjoint i32 %62, %61
  store i32 %63, ptr %49, align 8
  %64 = load i32, ptr %0, align 8
  %65 = and i32 %64, 33554432
  %66 = and i32 %63, -33554433
  %67 = or disjoint i32 %66, %65
  store i32 %67, ptr %49, align 8
  %68 = load i32, ptr %0, align 8
  %69 = and i32 %68, 67108864
  %70 = and i32 %67, -67108865
  %71 = or disjoint i32 %70, %69
  store i32 %71, ptr %49, align 8
  %72 = load i32, ptr %0, align 8
  %73 = and i32 %72, 16777216
  %74 = and i32 %71, -16777217
  %75 = or disjoint i32 %74, %73
  store i32 %75, ptr %49, align 8
  %76 = load i32, ptr %0, align 8
  %77 = and i32 %76, 1073741824
  %78 = and i32 %75, -1073741825
  %79 = or disjoint i32 %78, %77
  store i32 %79, ptr %49, align 8
  %80 = load ptr, ptr %24, align 8, !tbaa !278
  store ptr %80, ptr %50, align 8, !tbaa !278
  br label %81

81:                                               ; preds = %47, %19
  %82 = phi ptr [ %49, %47 ], [ %4, %19 ]
  %83 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !278
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.mem_attrs, ptr %84, i64 0, i32 3
  %88 = load i32, ptr %87, align 8, !tbaa !324
  br label %89

89:                                               ; preds = %81, %86
  %90 = phi i32 [ %88, %86 ], [ 0, %81 ]
  br i1 %85, label %94, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.mem_attrs, ptr %84, i64 0, i32 5
  %93 = load i8, ptr %92, align 8, !tbaa !318
  br label %94

94:                                               ; preds = %89, %91
  %95 = phi i8 [ %93, %91 ], [ 0, %89 ]
  %96 = tail call fastcc ptr @get_mem_attrs(i32 noundef %90, ptr noundef null, ptr noundef null, ptr noundef %16, i32 noundef %20, i8 noundef zeroext %95, i32 noundef %7)
  %97 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %96, ptr %97, align 8, !tbaa !278
  br label %98

98:                                               ; preds = %22, %44, %94
  %99 = phi ptr [ %82, %94 ], [ %4, %44 ], [ %4, %22 ]
  ret ptr %99
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef ptr @change_address_1(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #10 !prof !517 !PGOFuncName !518 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 43
  br i1 %7, label %9, label %8, !prof !441

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1899, ptr noundef nonnull @.str.1) #38
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !278
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !442

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.mem_attrs, ptr %12, i64 0, i32 5
  %16 = load i8, ptr %15, align 8, !tbaa !318
  br label %17

17:                                               ; preds = %9, %14
  %18 = phi i8 [ %16, %14 ], [ 0, %9 ]
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %20, label %24, !prof !443

20:                                               ; preds = %17
  %21 = load i32, ptr %0, align 8
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %23, %20 ], [ %1, %17 ]
  %26 = icmp eq ptr %2, null
  br i1 %26, label %27, label %29, !prof !444

27:                                               ; preds = %24
  %28 = load ptr, ptr %10, align 8, !tbaa !278
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi ptr [ %28, %27 ], [ %2, %24 ]
  %31 = load i32, ptr %0, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %25, %33
  br i1 %34, label %35, label %43, !prof !445

35:                                               ; preds = %29
  %36 = load ptr, ptr %10, align 8, !tbaa !278
  %37 = icmp eq ptr %30, %36
  br i1 %37, label %38, label %43, !prof !446

38:                                               ; preds = %35
  %39 = icmp eq i32 %3, 0
  br i1 %39, label %100, label %40, !prof !447

40:                                               ; preds = %38
  %41 = tail call i32 @memory_address_addr_space_p(i32 noundef %25, ptr noundef %30, i8 noundef zeroext %18) #38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %100

43:                                               ; preds = %40, %35, %29
  %44 = icmp eq i32 %3, 0
  br i1 %44, label %57, label %45, !prof !448

45:                                               ; preds = %43
  %46 = load i32, ptr @reload_in_progress, align 4, !tbaa !282
  %47 = icmp ne i32 %46, 0
  %48 = load i32, ptr @reload_completed, align 4
  %49 = icmp ne i32 %48, 0
  %50 = select i1 %47, i1 true, i1 %49, !prof !449
  br i1 %50, label %51, label %55, !prof !450

51:                                               ; preds = %45
  %52 = tail call i32 @memory_address_addr_space_p(i32 noundef %25, ptr noundef %30, i8 noundef zeroext %18) #38
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57, !prof !451

54:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1912, ptr noundef nonnull @.str.1) #38
  br label %57

55:                                               ; preds = %45
  %56 = tail call ptr @memory_address_addr_space(i32 noundef %25, ptr noundef %30, i8 noundef zeroext %18) #38
  br label %57

57:                                               ; preds = %54, %51, %55, %43
  %58 = phi ptr [ %30, %51 ], [ %30, %54 ], [ %56, %55 ], [ %30, %43 ]
  %59 = load ptr, ptr %10, align 8, !tbaa !278
  %60 = tail call i32 @rtx_equal_p(ptr noundef %58, ptr noundef %59) #38
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62, !prof !452

62:                                               ; preds = %57
  %63 = load i32, ptr %0, align 8
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = icmp eq i32 %25, %65
  br i1 %66, label %100, label %67, !prof !453

67:                                               ; preds = %62, %57
  %68 = tail call ptr @gen_rtx_fmt_e0_stat(i32 noundef 43, i32 noundef %25, ptr noundef %58) #38
  %69 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %69, align 8, !tbaa !278
  %70 = load i32, ptr %0, align 8
  %71 = and i32 %70, 134217728
  %72 = load i32, ptr %68, align 8
  %73 = and i32 %72, -134217729
  %74 = or disjoint i32 %73, %71
  store i32 %74, ptr %68, align 8
  %75 = load i32, ptr %0, align 8
  %76 = and i32 %75, 268435456
  %77 = and i32 %74, -268435457
  %78 = or disjoint i32 %77, %76
  store i32 %78, ptr %68, align 8
  %79 = load i32, ptr %0, align 8
  %80 = and i32 %79, -2147483648
  %81 = and i32 %78, 2147483647
  %82 = or disjoint i32 %81, %80
  store i32 %82, ptr %68, align 8
  %83 = load i32, ptr %0, align 8
  %84 = and i32 %83, 33554432
  %85 = and i32 %82, -33554433
  %86 = or disjoint i32 %85, %84
  store i32 %86, ptr %68, align 8
  %87 = load i32, ptr %0, align 8
  %88 = and i32 %87, 67108864
  %89 = and i32 %86, -67108865
  %90 = or disjoint i32 %89, %88
  store i32 %90, ptr %68, align 8
  %91 = load i32, ptr %0, align 8
  %92 = and i32 %91, 16777216
  %93 = and i32 %90, -16777217
  %94 = or disjoint i32 %93, %92
  store i32 %94, ptr %68, align 8
  %95 = load i32, ptr %0, align 8
  %96 = and i32 %95, 1073741824
  %97 = and i32 %94, -1073741825
  %98 = or disjoint i32 %97, %96
  store i32 %98, ptr %68, align 8
  %99 = load ptr, ptr %11, align 8, !tbaa !278
  store ptr %99, ptr %69, align 8, !tbaa !278
  br label %100

100:                                              ; preds = %62, %38, %40, %67
  %101 = phi ptr [ %68, %67 ], [ %0, %40 ], [ %0, %38 ], [ %0, %62 ]
  ret ptr %101
}

declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @adjust_automodify_address_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #11 !prof !266 {
  %6 = tail call fastcc ptr @change_address_1(ptr noundef %0, i32 noundef 0, ptr noundef %2, i32 noundef %4)
  %7 = tail call ptr @adjust_address_1(ptr noundef %6, i32 noundef %1, i64 noundef %3, i32 noundef %4, i32 noundef 0)
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @offset_address(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 !prof !519 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !278
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !520

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %7, i64 0, i32 5
  %11 = load i8, ptr %10, align 8, !tbaa !318
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi i8 [ %11, %9 ], [ 0, %3 ]
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !421
  %15 = tail call i32 %14(i8 noundef zeroext %13) #38, !prof !521
  %16 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %15, ptr noundef %5, ptr noundef %1) #38
  %17 = load i32, ptr %0, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = tail call i32 @memory_address_addr_space_p(i32 noundef %19, ptr noundef %16, i8 noundef zeroext %13) #38
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %36, !prof !520

22:                                               ; preds = %12
  %23 = load i32, ptr %5, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 49
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !278
  %29 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !267
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = lshr i32 %23, 16
  %33 = and i32 %32, 255
  %34 = tail call ptr @force_reg(i32 noundef %33, ptr noundef nonnull %5) #38
  %35 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %15, ptr noundef %34, ptr noundef %1) #38
  br label %36

36:                                               ; preds = %31, %26, %22, %12
  %37 = phi ptr [ %16, %12 ], [ %35, %31 ], [ %16, %26 ], [ %16, %22 ]
  %38 = load ptr, ptr %4, align 8, !tbaa !278
  tail call void @update_temp_slot_address(ptr noundef %38, ptr noundef %37) #38
  %39 = tail call fastcc ptr @change_address_1(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %37, i32 noundef 1)
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %74, label %41, !prof !520

41:                                               ; preds = %36
  %42 = load ptr, ptr %6, align 8, !tbaa !278
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44, !prof !520

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.mem_attrs, ptr %42, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !324
  br label %47

47:                                               ; preds = %41, %44
  %48 = phi i32 [ %46, %44 ], [ 0, %41 ]
  br i1 %43, label %51, label %49, !prof !520

49:                                               ; preds = %47
  %50 = load ptr, ptr %42, align 8, !tbaa !313
  br label %51

51:                                               ; preds = %47, %49
  %52 = phi ptr [ %50, %49 ], [ null, %47 ]
  br i1 %43, label %57, label %53, !prof !520

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.mem_attrs, ptr %42, i64 0, i32 4
  %55 = load i32, ptr %54, align 4, !tbaa !317
  %56 = zext i32 %55 to i64
  br label %57

57:                                               ; preds = %51, %53
  %58 = phi i64 [ %56, %53 ], [ 8, %51 ]
  %59 = shl i64 %2, 3
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %66, !prof !520

61:                                               ; preds = %57
  br i1 %43, label %66, label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.mem_attrs, ptr %42, i64 0, i32 4
  %64 = load i32, ptr %63, align 4, !tbaa !317
  %65 = zext i32 %64 to i64
  br label %66

66:                                               ; preds = %57, %62, %61
  %67 = phi i64 [ %65, %62 ], [ 8, %61 ], [ %59, %57 ]
  %68 = trunc i64 %67 to i32
  %69 = load i32, ptr %39, align 8
  %70 = lshr i32 %69, 16
  %71 = and i32 %70, 255
  %72 = tail call fastcc ptr @get_mem_attrs(i32 noundef %48, ptr noundef %52, ptr noundef null, ptr noundef null, i32 noundef %68, i8 noundef zeroext %13, i32 noundef %71)
  %73 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %72, ptr %73, align 8, !tbaa !278
  br label %74

74:                                               ; preds = %36, %66
  ret ptr %39
}

declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @update_temp_slot_address(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @replace_equiv_address_nv(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !522 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %7, label %6, !prof !441

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1899, ptr noundef nonnull @.str.1) #38
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load i32, ptr %0, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = icmp eq ptr %1, null
  br i1 %13, label %14, label %16, !prof !444

14:                                               ; preds = %7
  %15 = load ptr, ptr %8, align 8, !tbaa !278
  br label %16

16:                                               ; preds = %7, %14
  %17 = phi ptr [ %15, %14 ], [ %1, %7 ]
  %18 = load ptr, ptr %8, align 8, !tbaa !278
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %62, label %20, !prof !446

20:                                               ; preds = %16
  %21 = load ptr, ptr %8, align 8, !tbaa !278
  %22 = tail call i32 @rtx_equal_p(ptr noundef %17, ptr noundef %21) #38
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24, !prof !452

24:                                               ; preds = %20
  %25 = load i32, ptr %0, align 8
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %12, %27
  br i1 %28, label %62, label %29, !prof !453

29:                                               ; preds = %24, %20
  %30 = tail call ptr @gen_rtx_fmt_e0_stat(i32 noundef 43, i32 noundef %12, ptr noundef %17) #38
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %31, align 8, !tbaa !278
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 134217728
  %34 = load i32, ptr %30, align 8
  %35 = and i32 %34, -134217729
  %36 = or disjoint i32 %35, %33
  store i32 %36, ptr %30, align 8
  %37 = load i32, ptr %0, align 8
  %38 = and i32 %37, 268435456
  %39 = and i32 %36, -268435457
  %40 = or disjoint i32 %39, %38
  store i32 %40, ptr %30, align 8
  %41 = load i32, ptr %0, align 8
  %42 = and i32 %41, -2147483648
  %43 = and i32 %40, 2147483647
  %44 = or disjoint i32 %43, %42
  store i32 %44, ptr %30, align 8
  %45 = load i32, ptr %0, align 8
  %46 = and i32 %45, 33554432
  %47 = and i32 %44, -33554433
  %48 = or disjoint i32 %47, %46
  store i32 %48, ptr %30, align 8
  %49 = load i32, ptr %0, align 8
  %50 = and i32 %49, 67108864
  %51 = and i32 %48, -67108865
  %52 = or disjoint i32 %51, %50
  store i32 %52, ptr %30, align 8
  %53 = load i32, ptr %0, align 8
  %54 = and i32 %53, 16777216
  %55 = and i32 %52, -16777217
  %56 = or disjoint i32 %55, %54
  store i32 %56, ptr %30, align 8
  %57 = load i32, ptr %0, align 8
  %58 = and i32 %57, 1073741824
  %59 = and i32 %56, -1073741825
  %60 = or disjoint i32 %59, %58
  store i32 %60, ptr %30, align 8
  %61 = load ptr, ptr %9, align 8, !tbaa !278
  store ptr %61, ptr %31, align 8, !tbaa !278
  br label %62

62:                                               ; preds = %16, %24, %29
  %63 = phi ptr [ %30, %29 ], [ %0, %24 ], [ %0, %16 ]
  ret ptr %63
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @widen_memory_access(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #11 !prof !266 {
  %4 = tail call ptr @adjust_address_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef 1, i32 noundef 1)
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %6, align 8, !tbaa !313
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %9, %8 ], [ null, %3 ]
  br i1 %7, label %15, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !315
  br label %15

15:                                               ; preds = %10, %12
  %16 = phi ptr [ %14, %12 ], [ null, %10 ]
  %17 = zext i32 %1 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !278
  %20 = icmp eq ptr %4, %0
  br i1 %20, label %114, label %21

21:                                               ; preds = %15
  %22 = icmp eq ptr %16, null
  %23 = select i1 %22, ptr null, ptr %11
  %24 = zext i8 %19 to i64
  br label %25

25:                                               ; preds = %67, %21
  %26 = phi ptr [ %16, %21 ], [ %68, %67 ]
  %27 = phi ptr [ %23, %21 ], [ %70, %67 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %94, label %29

29:                                               ; preds = %25
  %30 = load i64, ptr %27, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 41
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 0, i32 3
  %35 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !278
  %37 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %27) #38
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %36, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !278
  %40 = icmp eq ptr %39, null
  br i1 %40, label %67, label %41

41:                                               ; preds = %33
  %42 = load i64, ptr %39, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 23
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = tail call i32 @compare_tree_int(ptr noundef nonnull %39, i64 noundef %24) #38
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !278
  %51 = icmp sgt i64 %50, -1
  br i1 %51, label %67, label %52

52:                                               ; preds = %48, %45, %41
  %53 = tail call i32 @host_integerp(ptr noundef %37, i32 noundef 1) #38
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %34, align 8, !tbaa !278
  %57 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !278
  %59 = tail call i64 @tree_low_cst(ptr noundef %37, i32 noundef 1) #38
  %60 = add nsw i64 %59, %58
  %61 = getelementptr inbounds %struct.tree_field_decl, ptr %36, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !278
  %63 = tail call i64 @tree_low_cst(ptr noundef %62, i32 noundef 1) #38
  %64 = sdiv i64 %63, 8
  %65 = add nsw i64 %60, %64
  %66 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %65)
  br label %67

67:                                               ; preds = %52, %48, %33, %55
  %68 = phi ptr [ %66, %55 ], [ %26, %33 ], [ %26, %48 ], [ %26, %52 ]
  %69 = phi i1 [ true, %55 ], [ false, %33 ], [ false, %48 ], [ false, %52 ]
  %70 = phi ptr [ %56, %55 ], [ null, %33 ], [ %27, %48 ], [ null, %52 ]
  br i1 %69, label %25, label %94

71:                                               ; preds = %29
  %72 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %31
  %73 = load i32, ptr %72, align 4, !tbaa !282
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %75, label %93

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.tree_decl_common, ptr %27, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !278
  %78 = icmp eq ptr %77, null
  br i1 %78, label %93, label %79

79:                                               ; preds = %75
  %80 = load i64, ptr %77, align 8
  %81 = and i64 %80, 65535
  %82 = icmp eq i64 %81, 23
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = zext i8 %19 to i64
  %85 = tail call i32 @compare_tree_int(ptr noundef nonnull %77, i64 noundef %84) #38
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = icmp eq ptr %26, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !278
  %92 = icmp sgt i64 %91, -1
  br i1 %92, label %94, label %93

93:                                               ; preds = %89, %83, %79, %75, %71
  br label %94

94:                                               ; preds = %67, %25, %87, %89, %93
  %95 = phi ptr [ %26, %89 ], [ %26, %93 ], [ null, %87 ], [ %26, %25 ], [ %68, %67 ]
  %96 = phi ptr [ %27, %89 ], [ null, %93 ], [ %27, %87 ], [ null, %25 ], [ %70, %67 ]
  %97 = icmp eq ptr %96, null
  %98 = select i1 %97, ptr null, ptr %95
  %99 = zext i8 %19 to i64
  %100 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %99)
  %101 = load ptr, ptr %5, align 8, !tbaa !278
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.mem_attrs, ptr %101, i64 0, i32 4
  %105 = load i32, ptr %104, align 4, !tbaa !317
  br label %106

106:                                              ; preds = %94, %103
  %107 = phi i32 [ %105, %103 ], [ 8, %94 ]
  br i1 %102, label %111, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.mem_attrs, ptr %101, i64 0, i32 5
  %110 = load i8, ptr %109, align 8, !tbaa !318
  br label %111

111:                                              ; preds = %106, %108
  %112 = phi i8 [ %110, %108 ], [ 0, %106 ]
  %113 = tail call fastcc ptr @get_mem_attrs(i32 noundef 0, ptr noundef %96, ptr noundef %98, ptr noundef %100, i32 noundef %107, i8 noundef zeroext %112, i32 noundef %1)
  store ptr %113, ptr %5, align 8, !tbaa !278
  br label %114

114:                                              ; preds = %15, %111
  ret ptr %4
}

declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @get_spill_slot_decl(i8 noundef zeroext %0) local_unnamed_addr #9 !prof !523 {
  %2 = load ptr, ptr @spill_slot_decl, align 8, !tbaa !267
  %3 = icmp eq ptr %2, null
  %4 = icmp ne i8 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %27, !prof !524

6:                                                ; preds = %1
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !267
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !278
  %10 = tail call ptr @get_identifier(ptr noundef nonnull @.str.2) #38
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !267
  %12 = tail call ptr @build_decl_stat(i32 noundef %9, i32 noundef 32, ptr noundef %10, ptr noundef %11) #38
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = or i64 %14, 5120
  store i64 %15, ptr %13, align 8
  %16 = load i64, ptr %12, align 8
  %17 = or i64 %16, 50331648
  store i64 %17, ptr %12, align 8
  store ptr %12, ptr @spill_slot_decl, align 8, !tbaa !267
  %18 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !267
  %19 = tail call ptr @gen_rtx_fmt_e0_stat(i32 noundef 43, i32 noundef 1, ptr noundef %18) #38
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %20, align 8, !tbaa !278
  %21 = load i32, ptr %19, align 8
  %22 = or i32 %21, 33554432
  store i32 %22, ptr %19, align 8
  %23 = tail call i32 @new_alias_set() #38
  %24 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !267
  %25 = tail call fastcc ptr @get_mem_attrs(i32 noundef %23, ptr noundef nonnull %12, ptr noundef %24, ptr noundef null, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 1)
  store ptr %25, ptr %20, align 8, !tbaa !278
  %26 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %12, i64 0, i32 1
  store ptr %19, ptr %26, align 8, !tbaa !278
  tail call void @set_reg_attrs_for_decl_rtl(ptr noundef nonnull %12, ptr noundef nonnull %19)
  br label %27

27:                                               ; preds = %1, %6
  %28 = phi ptr [ %12, %6 ], [ %2, %1 ]
  ret ptr %28
}

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare i32 @new_alias_set() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @set_mem_attrs_for_spill(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !525 {
  %2 = alloca %struct.mem_attrs, align 8
  %3 = tail call ptr @get_spill_slot_decl(i8 noundef zeroext 1)
  %4 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9, !prof !526

7:                                                ; preds = %1
  tail call void @make_decl_rtl(ptr noundef %3) #38
  %8 = load ptr, ptr %4, align 8, !tbaa !278
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi ptr [ %8, %7 ], [ %5, %1 ]
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !278
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14, !prof !526

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8, !tbaa !278
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !526

17:                                               ; preds = %14
  tail call void @make_decl_rtl(ptr noundef %3) #38
  %18 = load ptr, ptr %4, align 8, !tbaa !278
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi ptr [ %18, %17 ], [ %15, %14 ]
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !278
  %23 = getelementptr inbounds %struct.mem_attrs, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !324
  br label %25

25:                                               ; preds = %9, %19
  %26 = phi i32 [ %24, %19 ], [ 0, %9 ]
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !278
  %29 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !267
  %30 = load i32, ptr %28, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 49
  br i1 %32, label %33, label %40, !prof !527

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !278
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 30
  %39 = select i1 %38, ptr %35, ptr %29, !prof !527
  br label %40

40:                                               ; preds = %33, %25
  %41 = phi ptr [ %29, %25 ], [ %39, %33 ]
  %42 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !278
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45, !prof !526

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.mem_attrs, ptr %43, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !316
  br label %59

48:                                               ; preds = %40
  %49 = load i32, ptr %0, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = zext nneg i32 %51 to i64
  %55 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !278
  %57 = zext i8 %56 to i64
  %58 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %57)
  br label %59

59:                                               ; preds = %53, %48, %45
  %60 = phi ptr [ %47, %45 ], [ %58, %53 ], [ null, %48 ]
  %61 = load ptr, ptr %42, align 8, !tbaa !278
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63, !prof !526

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.mem_attrs, ptr %61, i64 0, i32 4
  %65 = load i32, ptr %64, align 4, !tbaa !317
  br label %66

66:                                               ; preds = %59, %63
  %67 = phi i32 [ %65, %63 ], [ 8, %59 ]
  %68 = load i32, ptr %0, align 8
  %69 = lshr i32 %68, 16
  %70 = and i32 %69, 255
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #38
  %71 = icmp eq i32 %26, 0
  %72 = icmp eq ptr %3, null
  %73 = and i1 %72, %71
  %74 = icmp eq ptr %41, null
  %75 = and i1 %73, %74
  br i1 %75, label %76, label %92, !prof !319

76:                                               ; preds = %66
  %77 = icmp eq ptr %60, null
  br i1 %77, label %90, label %78, !prof !320

78:                                               ; preds = %76
  %79 = icmp eq i32 %70, 1
  br i1 %79, label %92, label %80, !prof !321

80:                                               ; preds = %78
  %81 = zext nneg i32 %70 to i64
  %82 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !278
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !278
  %87 = icmp eq i64 %86, %84
  %88 = icmp eq i32 %67, 8
  %89 = and i1 %88, %87
  br i1 %89, label %106, label %92, !prof !322

90:                                               ; preds = %76
  %91 = icmp eq i32 %67, 8
  br i1 %91, label %106, label %92, !prof !323

92:                                               ; preds = %90, %80, %78, %66
  %93 = getelementptr inbounds %struct.mem_attrs, ptr %2, i64 0, i32 3
  store i32 %26, ptr %93, align 8, !tbaa !324
  store ptr %3, ptr %2, align 8, !tbaa !313
  %94 = getelementptr inbounds %struct.mem_attrs, ptr %2, i64 0, i32 1
  store ptr %41, ptr %94, align 8, !tbaa !315
  %95 = getelementptr inbounds %struct.mem_attrs, ptr %2, i64 0, i32 2
  store ptr %60, ptr %95, align 8, !tbaa !316
  %96 = getelementptr inbounds %struct.mem_attrs, ptr %2, i64 0, i32 4
  store i32 %67, ptr %96, align 4, !tbaa !317
  %97 = getelementptr inbounds %struct.mem_attrs, ptr %2, i64 0, i32 5
  store i8 0, ptr %97, align 8, !tbaa !318
  %98 = load ptr, ptr @mem_attrs_htab, align 8, !tbaa !267
  %99 = call ptr @htab_find_slot(ptr noundef %98, ptr noundef nonnull %2, i32 noundef 1) #38
  %100 = load ptr, ptr %99, align 8, !tbaa !267
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %104, !prof !325

102:                                              ; preds = %92
  %103 = call ptr @ggc_alloc_stat(i64 noundef 40) #38
  store ptr %103, ptr %99, align 8, !tbaa !267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %103, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  br label %104

104:                                              ; preds = %102, %92
  %105 = load ptr, ptr %99, align 8, !tbaa !267
  br label %106

106:                                              ; preds = %80, %90, %104
  %107 = phi ptr [ %105, %104 ], [ null, %80 ], [ null, %90 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #38
  store ptr %107, ptr %42, align 8, !tbaa !278
  %108 = load i32, ptr %0, align 8
  %109 = or i32 %108, 33554432
  store i32 %109, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @gen_label_rtx() local_unnamed_addr #10 !prof !528 {
  %1 = load i32, ptr @label_num, align 4, !tbaa !282
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @label_num, align 4, !tbaa !282
  %3 = tail call ptr @gen_rtx_fmt_iuuB00is_stat(i32 noundef 12, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %1, ptr noundef null) #38
  ret ptr %3
}

declare ptr @gen_rtx_fmt_iuuB00is_stat(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_new_first_and_last_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #22 !prof !266 {
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  store ptr %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  store i32 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !267
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 117, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !532
  %6 = icmp ne i32 %5, 0
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %0, null
  br i1 %11, label %57, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  br label %48

14:                                               ; preds = %2
  %15 = add nsw i32 %5, -1
  store i32 %15, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  store i32 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !534
  %16 = icmp eq ptr %0, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %14, %34
  %18 = phi i32 [ %37, %34 ], [ 0, %14 ]
  %19 = phi ptr [ %39, %34 ], [ %0, %14 ]
  %20 = phi i32 [ %36, %34 ], [ %15, %14 ]
  %21 = phi i32 [ %35, %34 ], [ 0, %14 ]
  %22 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !278
  %24 = icmp slt i32 %23, %5
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = tail call i32 @llvm.smax.i32(i32 %21, i32 %23)
  store i32 %26, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !534
  br label %34

27:                                               ; preds = %17
  %28 = tail call i32 @llvm.smax.i32(i32 %20, i32 %23)
  store i32 %28, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %29 = load i32, ptr %19, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 7
  %32 = zext i1 %31 to i32
  %33 = add nsw i32 %18, %32
  br label %34

34:                                               ; preds = %27, %25
  %35 = phi i32 [ %26, %25 ], [ %21, %27 ]
  %36 = phi i32 [ %20, %25 ], [ %28, %27 ]
  %37 = phi i32 [ %18, %25 ], [ %33, %27 ]
  %38 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !278
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %17, !llvm.loop !535

41:                                               ; preds = %34, %14
  %42 = phi i32 [ 0, %14 ], [ %37, %34 ]
  %43 = icmp eq i32 %42, 0
  %44 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4
  %45 = add nsw i32 %44, 1
  %46 = add nsw i32 %42, %5
  %47 = select i1 %43, i32 %45, i32 %46
  store i32 %47, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !534
  br label %57

48:                                               ; preds = %12, %48
  %49 = phi ptr [ %55, %48 ], [ %0, %12 ]
  %50 = phi i32 [ %53, %48 ], [ %13, %12 ]
  %51 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !278
  %53 = tail call i32 @llvm.smax.i32(i32 %50, i32 %52)
  store i32 %53, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %54 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %55 = load ptr, ptr %54, align 8, !tbaa !278
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %48, !llvm.loop !536

57:                                               ; preds = %48, %10, %41
  %58 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @unshare_all_rtl_again(ptr noundef %0) local_unnamed_addr #9 !prof !405 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %21, label %6, !prof !537

6:                                                ; preds = %1, %17
  %7 = phi ptr [ %19, %17 ], [ %0, %1 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %17, !prof !538

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !278
  tail call void @reset_used_flags(ptr noundef %14)
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !278
  tail call void @reset_used_flags(ptr noundef %16)
  br label %17

17:                                               ; preds = %6, %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !278
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %6, !prof !539, !llvm.loop !540

21:                                               ; preds = %17, %1
  %22 = load ptr, ptr @cfun, align 8, !tbaa !267
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !541
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !278
  tail call fastcc void @set_used_decls(ptr noundef %26)
  %27 = load ptr, ptr @cfun, align 8, !tbaa !267
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !541
  %30 = getelementptr inbounds %struct.tree_decl_non_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !278
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33, !prof !537

33:                                               ; preds = %21, %40
  %34 = phi ptr [ %43, %40 ], [ %31, %21 ]
  %35 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !278
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40, !prof !406

38:                                               ; preds = %33
  tail call void @make_decl_rtl(ptr noundef nonnull %34) #38
  %39 = load ptr, ptr %35, align 8, !tbaa !278
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %36, %33 ]
  tail call void @set_used_flags(ptr noundef %41)
  %42 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !278
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %33, !prof !543, !llvm.loop !544

45:                                               ; preds = %40, %21
  %46 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !545
  tail call void @reset_used_flags(ptr noundef %46)
  %47 = icmp eq ptr %0, null
  br i1 %47, label %65, label %48, !prof !546

48:                                               ; preds = %45, %61
  %49 = phi ptr [ %63, %61 ], [ %0, %45 ]
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = add nsw i32 %51, -7
  %53 = icmp ult i32 %52, 4
  br i1 %53, label %54, label %61, !prof !547

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %56, ptr %3, align 8, !tbaa !267
  call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %3)
  %57 = load ptr, ptr %3, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  store ptr %57, ptr %55, align 8, !tbaa !278
  %58 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 1, i32 1, i32 0, i32 0, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %59, ptr %2, align 8, !tbaa !267
  call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %2)
  %60 = load ptr, ptr %2, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  store ptr %60, ptr %58, align 8, !tbaa !278
  br label %61

61:                                               ; preds = %54, %48
  %62 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !278
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %48, !prof !548, !llvm.loop !549

65:                                               ; preds = %61, %45
  %66 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !545
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store ptr %66, ptr %4, align 8, !tbaa !267
  call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %4)
  %67 = load ptr, ptr %4, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  store ptr %67, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !545
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @reset_used_flags(ptr noundef %0) local_unnamed_addr #23 !prof !550 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %57, label %3, !prof !551

3:                                                ; preds = %1, %35
  %4 = phi ptr [ %39, %35 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %7 [
    i16 37, label %57
    i16 2, label %57
    i16 1, label %57
    i16 30, label %57
    i16 32, label %57
    i16 31, label %57
    i16 33, label %57
    i16 45, label %57
    i16 12, label %57
    i16 36, label %57
    i16 46, label %57
    i16 7, label %57
    i16 8, label %57
    i16 9, label %57
    i16 10, label %57
    i16 13, label %57
    i16 44, label %57
    i16 11, label %57
  ], !prof !552

7:                                                ; preds = %3
  %8 = and i32 %5, 65535
  %9 = and i32 %5, -536870913
  store i32 %9, ptr %4, align 8
  %10 = zext nneg i32 %8 to i64
  %11 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !278
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %57, label %14, !prof !553

14:                                               ; preds = %7
  %15 = zext i8 %12 to i64
  %16 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %10
  %17 = load ptr, ptr %16, align 8, !tbaa !267
  %18 = add nuw nsw i64 %15, 4294967295
  %19 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %20 = and i64 %18, 4294967295
  %21 = zext i8 %12 to i64
  br label %22

22:                                               ; preds = %14, %54
  %23 = phi i64 [ 0, %14 ], [ %55, %54 ]
  %24 = phi ptr [ %17, %14 ], [ %25, %54 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %24, align 1, !tbaa !278
  switch i8 %26, label %54 [
    i8 101, label %33
    i8 69, label %27
  ], !prof !554

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %29 = getelementptr inbounds [1 x %union.rtunion_def], ptr %28, i64 0, i64 %23
  %30 = load ptr, ptr %29, align 8, !tbaa !278
  %31 = load i32, ptr %30, align 8, !tbaa !393
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %44, label %54, !prof !555

33:                                               ; preds = %22
  %34 = icmp eq i64 %23, %20
  br i1 %34, label %35, label %41, !prof !556

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %37 = and i64 %23, 4294967295
  %38 = getelementptr inbounds [1 x %union.rtunion_def], ptr %36, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !278
  %40 = icmp eq ptr %39, null
  br i1 %40, label %57, label %3, !prof !557

41:                                               ; preds = %33
  %42 = getelementptr inbounds [1 x %union.rtunion_def], ptr %19, i64 0, i64 %23
  %43 = load ptr, ptr %42, align 8, !tbaa !278
  tail call void @reset_used_flags(ptr noundef %43)
  br label %54

44:                                               ; preds = %27, %44
  %45 = phi i64 [ %49, %44 ], [ 0, %27 ]
  %46 = phi ptr [ %50, %44 ], [ %30, %27 ]
  %47 = getelementptr inbounds %struct.rtvec_def, ptr %46, i64 0, i32 1, i64 %45
  %48 = load ptr, ptr %47, align 8, !tbaa !267
  tail call void @reset_used_flags(ptr noundef %48)
  %49 = add nuw nsw i64 %45, 1
  %50 = load ptr, ptr %29, align 8, !tbaa !278
  %51 = load i32, ptr %50, align 8, !tbaa !393
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %44, label %54, !prof !558, !llvm.loop !559

54:                                               ; preds = %44, %27, %41, %22
  %55 = add nuw nsw i64 %23, 1
  %56 = icmp eq i64 %55, %21
  br i1 %56, label %57, label %22, !prof !560, !llvm.loop !561

57:                                               ; preds = %35, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %7, %54, %1
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_used_decls(ptr nocapture noundef readonly %0) unnamed_addr #24 !prof !562 !PGOFuncName !563 {
  %2 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !278
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5, !prof !564

5:                                                ; preds = %1, %17
  %6 = phi ptr [ %19, %17 ], [ %3, %1 ]
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %8, i64 11
  %10 = load i8, ptr %9, align 1, !tbaa !278
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12, !prof !406

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !278
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !406

16:                                               ; preds = %12
  tail call void @set_used_flags(ptr noundef nonnull %14)
  br label %17

17:                                               ; preds = %5, %12, %16
  %18 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !278
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %5, !prof !565, !llvm.loop !566

21:                                               ; preds = %17, %1
  %22 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !278
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25, !prof !567

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %28, %25 ], [ %23, %21 ]
  tail call fastcc void @set_used_decls(ptr noundef nonnull %26)
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !278
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %25, !prof !568, !llvm.loop !569

30:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_used_flags(ptr noundef %0) local_unnamed_addr #24 !prof !570 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3, !prof !571

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %6 [
    i16 37, label %45
    i16 2, label %45
    i16 1, label %45
    i16 30, label %45
    i16 32, label %45
    i16 31, label %45
    i16 33, label %45
    i16 45, label %45
    i16 12, label %45
    i16 36, label %45
    i16 46, label %45
    i16 7, label %45
    i16 8, label %45
    i16 9, label %45
    i16 10, label %45
    i16 13, label %45
    i16 44, label %45
    i16 11, label %45
  ], !prof !572

6:                                                ; preds = %3
  %7 = and i32 %4, 65535
  %8 = or i32 %4, 536870912
  store i32 %8, ptr %0, align 8
  %9 = zext nneg i32 %7 to i64
  %10 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !278
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %45, label %13, !prof !573

13:                                               ; preds = %6
  %14 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %9
  %15 = load ptr, ptr %14, align 8, !tbaa !267
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %17 = zext i8 %11 to i64
  br label %18

18:                                               ; preds = %13, %42
  %19 = phi i64 [ 0, %13 ], [ %43, %42 ]
  %20 = phi ptr [ %15, %13 ], [ %21, %42 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  %22 = load i8, ptr %20, align 1, !tbaa !278
  switch i8 %22, label %42 [
    i8 101, label %29
    i8 69, label %23
  ], !prof !574

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds [1 x %union.rtunion_def], ptr %24, i64 0, i64 %19
  %26 = load ptr, ptr %25, align 8, !tbaa !278
  %27 = load i32, ptr %26, align 8, !tbaa !393
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %32, label %42

29:                                               ; preds = %18
  %30 = getelementptr inbounds [1 x %union.rtunion_def], ptr %16, i64 0, i64 %19
  %31 = load ptr, ptr %30, align 8, !tbaa !278
  tail call void @set_used_flags(ptr noundef %31)
  br label %42

32:                                               ; preds = %23, %32
  %33 = phi i64 [ %37, %32 ], [ 0, %23 ]
  %34 = phi ptr [ %38, %32 ], [ %26, %23 ]
  %35 = getelementptr inbounds %struct.rtvec_def, ptr %34, i64 0, i32 1, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !267
  tail call void @set_used_flags(ptr noundef %36)
  %37 = add nuw nsw i64 %33, 1
  %38 = load ptr, ptr %25, align 8, !tbaa !278
  %39 = load i32, ptr %38, align 8, !tbaa !393
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %32, label %42, !llvm.loop !575

42:                                               ; preds = %32, %23, %29, %18
  %43 = add nuw nsw i64 %19, 1
  %44 = icmp eq i64 %43, %17
  br i1 %44, label %45, label %18, !prof !576, !llvm.loop !577

45:                                               ; preds = %42, %6, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @unshare_all_rtl() #9 !prof !405 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6, !prof !546

6:                                                ; preds = %0, %19
  %7 = phi ptr [ %21, %19 ], [ %4, %0 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %19, !prof !547

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %14, ptr %2, align 8, !tbaa !267
  call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %2)
  %15 = load ptr, ptr %2, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  store ptr %15, ptr %13, align 8, !tbaa !278
  %16 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1)
  store ptr %17, ptr %1, align 8, !tbaa !267
  call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %1)
  %18 = load ptr, ptr %1, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1)
  store ptr %18, ptr %16, align 8, !tbaa !278
  br label %19

19:                                               ; preds = %12, %6
  %20 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !278
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %6, !prof !548, !llvm.loop !549

23:                                               ; preds = %19, %0
  %24 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !545
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %24, ptr %3, align 8, !tbaa !267
  call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %3)
  %25 = load ptr, ptr %3, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  store ptr %25, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !545
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @get_insns() local_unnamed_addr #19 !prof !578 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @verify_rtl_sharing() local_unnamed_addr #11 !prof !266 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !278
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %46, %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !278
  %5 = icmp eq ptr %4, null
  br i1 %5, label %65, label %50

6:                                                ; preds = %0, %46
  %7 = phi ptr [ %48, %46 ], [ %1, %0 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %46

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !278
  tail call void @reset_used_flags(ptr noundef %14)
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !278
  tail call void @reset_used_flags(ptr noundef %16)
  %17 = load ptr, ptr %13, align 8, !tbaa !278
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 5
  br i1 %20, label %21, label %46

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !278
  %24 = load i32, ptr %23, align 8, !tbaa !393
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %21, %36
  %27 = phi i64 [ %41, %36 ], [ 0, %21 ]
  %28 = phi ptr [ %42, %36 ], [ %23, %21 ]
  %29 = getelementptr inbounds %struct.rtvec_def, ptr %28, i64 0, i32 1, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !267
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2528, ptr noundef nonnull @.str.1) #38
  br label %36

36:                                               ; preds = %26, %35
  %37 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !278
  tail call void @reset_used_flags(ptr noundef %38)
  %39 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !278
  tail call void @reset_used_flags(ptr noundef %40)
  %41 = add nuw nsw i64 %27, 1
  %42 = load ptr, ptr %22, align 8, !tbaa !278
  %43 = load i32, ptr %42, align 8, !tbaa !393
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %26, label %46, !llvm.loop !579

46:                                               ; preds = %36, %21, %6, %12
  %47 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !278
  %49 = icmp eq ptr %48, null
  br i1 %49, label %3, label %6, !llvm.loop !580

50:                                               ; preds = %3, %61
  %51 = phi ptr [ %63, %61 ], [ %4, %3 ]
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = add nsw i32 %53, -7
  %55 = icmp ult i32 %54, 4
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !278
  tail call fastcc void @verify_rtx_sharing(ptr noundef %58)
  %59 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 1, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !278
  tail call fastcc void @verify_rtx_sharing(ptr noundef %60)
  br label %61

61:                                               ; preds = %50, %56
  %62 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !278
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %50, !llvm.loop !581

65:                                               ; preds = %61, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @verify_rtx_sharing(ptr noundef %0) unnamed_addr #11 !prof !266 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %95, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = trunc i32 %4 to i16
  switch i16 %6, label %31 [
    i16 37, label %95
    i16 2, label %95
    i16 1, label %95
    i16 30, label %95
    i16 32, label %95
    i16 31, label %95
    i16 33, label %95
    i16 45, label %95
    i16 44, label %95
    i16 12, label %95
    i16 36, label %95
    i16 46, label %95
    i16 38, label %95
    i16 25, label %7
    i16 35, label %17
    i16 43, label %20
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %31

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !278
  %16 = icmp ult i32 %15, 53
  br i1 %16, label %95, label %31

17:                                               ; preds = %3
  %18 = tail call zeroext i8 @shared_const_p(ptr noundef nonnull %0) #38
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %31, label %95

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !278
  %23 = tail call zeroext i8 @constant_address_p(ptr noundef %22) #38
  %24 = icmp ne i8 %23, 0
  %25 = load i32, ptr @reload_completed, align 4
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %24, i1 true, i1 %26
  %28 = load i32, ptr @reload_in_progress, align 4
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %95, label %31

31:                                               ; preds = %20, %17, %13, %3, %7
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 536870912
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2467, ptr noundef nonnull @.str.1) #38
  br label %36

36:                                               ; preds = %31, %35
  %37 = load i32, ptr %0, align 8
  %38 = or i32 %37, 536870912
  store i32 %38, ptr %0, align 8
  %39 = zext nneg i32 %5 to i64
  %40 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !278
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %95, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %39
  %45 = load ptr, ptr %44, align 8, !tbaa !267
  %46 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %47 = zext i8 %41 to i64
  br label %48

48:                                               ; preds = %43, %92
  %49 = phi i64 [ 0, %43 ], [ %93, %92 ]
  %50 = phi ptr [ %45, %43 ], [ %51, %92 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  %52 = load i8, ptr %50, align 1, !tbaa !278
  switch i8 %52, label %92 [
    i8 101, label %53
    i8 69, label %57
  ]

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %55 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %49
  %56 = load ptr, ptr %55, align 8, !tbaa !278
  tail call fastcc void @verify_rtx_sharing(ptr noundef %56)
  br label %92

57:                                               ; preds = %48
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %46, i64 0, i64 %49
  %59 = load ptr, ptr %58, align 8, !tbaa !278
  %60 = icmp eq ptr %59, null
  br i1 %60, label %92, label %61

61:                                               ; preds = %57
  %62 = load i32, ptr %59, align 8, !tbaa !393
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %61
  %65 = zext nneg i32 %62 to i64
  br label %66

66:                                               ; preds = %64, %87
  %67 = phi i64 [ 0, %64 ], [ %90, %87 ]
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %58, align 8, !tbaa !278
  %71 = getelementptr inbounds %struct.rtvec_def, ptr %70, i64 0, i32 1, i64 %67
  %72 = load ptr, ptr %71, align 8, !tbaa !267
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 23
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1, i32 0, i32 0, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !278
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 17
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  br label %87

84:                                               ; preds = %76, %69, %66
  %85 = load ptr, ptr %58, align 8, !tbaa !278
  %86 = getelementptr inbounds %struct.rtvec_def, ptr %85, i64 0, i32 1, i64 %67
  br label %87

87:                                               ; preds = %82, %84
  %88 = phi ptr [ %83, %82 ], [ %86, %84 ]
  %89 = load ptr, ptr %88, align 8, !tbaa !278
  tail call fastcc void @verify_rtx_sharing(ptr noundef %89)
  %90 = add nuw nsw i64 %67, 1
  %91 = icmp eq i64 %90, %65
  br i1 %91, label %92, label %66, !llvm.loop !582

92:                                               ; preds = %87, %61, %53, %48, %57
  %93 = add nuw nsw i64 %49, 1
  %94 = icmp eq i64 %93, %47
  br i1 %94, label %95, label %48, !llvm.loop !583

95:                                               ; preds = %92, %36, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %20, %17, %13, %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @unshare_all_rtl_in_chain(ptr noundef %0) local_unnamed_addr #9 !prof !584 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %22, label %5, !prof !546

5:                                                ; preds = %1, %18
  %6 = phi ptr [ %20, %18 ], [ %0, %1 ]
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -7
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %18, !prof !547

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %13, ptr %3, align 8, !tbaa !267
  call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %3)
  %14 = load ptr, ptr %3, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  store ptr %14, ptr %12, align 8, !tbaa !278
  %15 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %16, ptr %2, align 8, !tbaa !267
  call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %2)
  %17 = load ptr, ptr %2, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  store ptr %17, ptr %15, align 8, !tbaa !278
  br label %18

18:                                               ; preds = %5, %11
  %19 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !278
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %5, !prof !548, !llvm.loop !549

22:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @copy_rtx_if_shared(ptr noundef %0) local_unnamed_addr #10 !prof !585 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !267
  call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %2)
  %3 = load ptr, ptr %2, align 8, !tbaa !267
  ret ptr %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @copy_rtx_if_shared_1(ptr nocapture noundef %0) unnamed_addr #10 !prof !586 !PGOFuncName !587 {
  br label %2

2:                                                ; preds = %96, %1
  %3 = phi i32 [ 0, %1 ], [ %31, %96 ]
  %4 = phi ptr [ %0, %1 ], [ %97, %96 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !267
  %6 = icmp eq ptr %5, null
  br i1 %6, label %99, label %7, !prof !588

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 8
  %9 = and i32 %8, 65535
  %10 = trunc i32 %8 to i16
  switch i16 %10, label %24 [
    i16 37, label %99
    i16 2, label %99
    i16 1, label %99
    i16 30, label %99
    i16 32, label %99
    i16 31, label %99
    i16 33, label %99
    i16 45, label %99
    i16 44, label %99
    i16 12, label %99
    i16 36, label %99
    i16 46, label %99
    i16 38, label %99
    i16 25, label %11
    i16 35, label %21
    i16 7, label %99
    i16 8, label %99
    i16 9, label %99
    i16 10, label %99
    i16 13, label %99
    i16 11, label %99
  ], !prof !589

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !278
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %24, !prof !590

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !278
  %20 = icmp ult i32 %19, 53
  br i1 %20, label %99, label %24, !prof !591

21:                                               ; preds = %7
  %22 = tail call zeroext i8 @shared_const_p(ptr noundef nonnull %5) #38
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %99, !prof !592

24:                                               ; preds = %7, %21, %11, %17
  %25 = load i32, ptr %5, align 8
  %26 = and i32 %25, 536870912
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28, !prof !593

28:                                               ; preds = %24
  %29 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %5) #38
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ 1, %28 ], [ %3, %24 ]
  %32 = phi ptr [ %29, %28 ], [ %5, %24 ]
  %33 = load i32, ptr %32, align 8
  %34 = or i32 %33, 536870912
  store i32 %34, ptr %32, align 8
  %35 = zext nneg i32 %9 to i64
  %36 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !278
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %96, label %39, !prof !594

39:                                               ; preds = %30
  %40 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %35
  %41 = load ptr, ptr %40, align 8, !tbaa !267
  %42 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %43 = zext i8 %37 to i64
  br label %44

44:                                               ; preds = %39, %92
  %45 = phi i64 [ 0, %39 ], [ %94, %92 ]
  %46 = phi ptr [ %41, %39 ], [ %48, %92 ]
  %47 = phi ptr [ null, %39 ], [ %93, %92 ]
  %48 = getelementptr inbounds i8, ptr %46, i64 1
  %49 = load i8, ptr %46, align 1, !tbaa !278
  switch i8 %49, label %92 [
    i8 101, label %50
    i8 69, label %55
  ], !prof !595

50:                                               ; preds = %44
  %51 = icmp eq ptr %47, null
  br i1 %51, label %53, label %52, !prof !596

52:                                               ; preds = %50
  tail call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %47)
  br label %53

53:                                               ; preds = %52, %50
  %54 = getelementptr inbounds [1 x %union.rtunion_def], ptr %42, i64 0, i64 %45
  br label %92

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %57 = getelementptr inbounds [1 x %union.rtunion_def], ptr %56, i64 0, i64 %45
  %58 = load ptr, ptr %57, align 8, !tbaa !278
  %59 = icmp eq ptr %58, null
  br i1 %59, label %92, label %60, !prof !597

60:                                               ; preds = %55
  %61 = icmp ne i32 %31, 0
  %62 = load i32, ptr %58, align 8, !tbaa !393
  %63 = icmp sgt i32 %62, 0
  %64 = select i1 %61, i1 %63, i1 false, !prof !597
  br i1 %64, label %65, label %78, !prof !597

65:                                               ; preds = %60
  %66 = getelementptr %struct.rtvec_def, ptr %58, i64 0, i32 1
  %67 = tail call ptr @rtvec_alloc(i32 noundef %62) #38
  %68 = zext i32 %62 to i64
  br label %69

69:                                               ; preds = %65, %69
  %70 = phi i64 [ 0, %65 ], [ %75, %69 ]
  %71 = phi ptr [ %66, %65 ], [ %72, %69 ]
  %72 = getelementptr inbounds ptr, ptr %71, i64 1
  %73 = load ptr, ptr %71, align 8, !tbaa !267
  %74 = getelementptr inbounds %struct.rtvec_def, ptr %67, i64 0, i32 1, i64 %70
  store ptr %73, ptr %74, align 8, !tbaa !267
  %75 = add nuw nsw i64 %70, 1
  %76 = icmp eq i64 %75, %68
  br i1 %76, label %77, label %69, !llvm.loop !346

77:                                               ; preds = %69
  store ptr %67, ptr %57, align 8, !tbaa !278
  br label %78

78:                                               ; preds = %77, %60
  %79 = icmp sgt i32 %62, 0
  br i1 %79, label %80, label %92, !prof !598

80:                                               ; preds = %78
  %81 = zext nneg i32 %62 to i64
  br label %82

82:                                               ; preds = %80, %87
  %83 = phi i64 [ 0, %80 ], [ %90, %87 ]
  %84 = phi ptr [ %47, %80 ], [ %89, %87 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86, !prof !599

86:                                               ; preds = %82
  tail call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %84)
  br label %87

87:                                               ; preds = %86, %82
  %88 = load ptr, ptr %57, align 8, !tbaa !278
  %89 = getelementptr inbounds %struct.rtvec_def, ptr %88, i64 0, i32 1, i64 %83
  %90 = add nuw nsw i64 %83, 1
  %91 = icmp eq i64 %90, %81
  br i1 %91, label %92, label %82, !prof !600, !llvm.loop !601

92:                                               ; preds = %87, %78, %53, %44, %55
  %93 = phi ptr [ %47, %44 ], [ %47, %55 ], [ %54, %53 ], [ %47, %78 ], [ %89, %87 ]
  %94 = add nuw nsw i64 %45, 1
  %95 = icmp eq i64 %94, %43
  br i1 %95, label %96, label %44, !prof !602, !llvm.loop !603

96:                                               ; preds = %92, %30
  %97 = phi ptr [ null, %30 ], [ %93, %92 ]
  store ptr %32, ptr %4, align 8, !tbaa !267
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %2, !prof !604

99:                                               ; preds = %96, %21, %17, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @make_safe_from(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  br label %3

3:                                                ; preds = %2, %7
  %4 = phi ptr [ %1, %2 ], [ %9, %7 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %10 [
    i16 39, label %7
    i16 40, label %7
    i16 98, label %7
    i16 99, label %7
  ]

7:                                                ; preds = %3, %3, %3, %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  br label %3, !llvm.loop !605

10:                                               ; preds = %3
  %11 = and i32 %5, 65535
  %12 = trunc i32 %5 to i16
  switch i16 %12, label %38 [
    i16 43, label %13
    i16 37, label %25
  ]

13:                                               ; preds = %10
  %14 = load i32, ptr %0, align 8
  %15 = and i32 %14, 65535
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !282
  %19 = icmp eq i32 %18, 9
  %20 = and i32 %14, 65533
  %21 = icmp eq i32 %20, 37
  %22 = or i1 %19, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = icmp eq i32 %11, 37
  br i1 %24, label %25, label %38

25:                                               ; preds = %10, %23
  %26 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !278
  %28 = icmp ult i32 %27, 53
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %4, ptr noundef %0) #38
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %13, %29, %25
  %33 = load i32, ptr %0, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = tail call ptr @gen_reg_rtx(i32 noundef %35)
  %37 = tail call ptr @emit_move_insn(ptr noundef %36, ptr noundef nonnull %0) #38
  br label %38

38:                                               ; preds = %29, %10, %23, %32
  %39 = phi ptr [ %36, %32 ], [ %0, %23 ], [ %0, %10 ], [ %0, %29 ]
  ret ptr %39
}

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @set_first_insn(ptr noundef %0) local_unnamed_addr #9 !prof !606 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !278
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !607

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2912, ptr noundef nonnull @.str.1) #38
  br label %6

6:                                                ; preds = %1, %5
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @get_last_insn() local_unnamed_addr #19 !prof !608 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local void @set_last_insn(ptr noundef %0) local_unnamed_addr #9 !prof !609 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !278
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !610

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2929, ptr noundef nonnull @.str.1) #38
  br label %6

6:                                                ; preds = %1, %5
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_last_insn_anywhere() local_unnamed_addr #25 !prof !266 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %15

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !267
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %10

6:                                                ; preds = %10
  %7 = getelementptr inbounds %struct.sequence_stack, ptr %11, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !267
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !llvm.loop !611

10:                                               ; preds = %3, %6
  %11 = phi ptr [ %8, %6 ], [ %4, %3 ]
  %12 = getelementptr inbounds %struct.sequence_stack, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !612
  %14 = icmp eq ptr %13, null
  br i1 %14, label %6, label %15

15:                                               ; preds = %10, %6, %3, %0
  %16 = phi ptr [ %1, %0 ], [ null, %3 ], [ null, %6 ], [ %13, %10 ]
  ret ptr %16
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_first_nonnote_insn() local_unnamed_addr #25 !prof !266 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %2 = icmp eq ptr %1, null
  br i1 %2, label %66, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr %1, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %66 [
    i16 13, label %6
    i16 8, label %55
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !278
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !278
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !278
  %23 = getelementptr inbounds %struct.rtvec_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !267
  br label %25

25:                                               ; preds = %6, %10, %14, %20
  %26 = phi ptr [ %24, %20 ], [ %8, %14 ], [ %8, %10 ], [ null, %6 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %66, label %28

28:                                               ; preds = %25, %52
  %29 = phi ptr [ %53, %52 ], [ %26, %25 ]
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 13
  br i1 %32, label %33, label %66

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !278
  %36 = icmp eq ptr %35, null
  br i1 %36, label %52, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %35, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !278
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 5
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !278
  %50 = getelementptr inbounds %struct.rtvec_def, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !267
  br label %52

52:                                               ; preds = %33, %37, %41, %47
  %53 = phi ptr [ %51, %47 ], [ %35, %41 ], [ %35, %37 ], [ null, %33 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %66, label %28, !llvm.loop !614

55:                                               ; preds = %3
  %56 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !278
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 5
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !278
  %64 = getelementptr inbounds %struct.rtvec_def, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !267
  br label %66

66:                                               ; preds = %28, %52, %25, %3, %61, %55, %0
  %67 = phi ptr [ %65, %61 ], [ %1, %55 ], [ null, %0 ], [ %1, %3 ], [ null, %25 ], [ null, %52 ], [ %29, %28 ]
  ret ptr %67
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_insn(ptr noundef readonly %0) local_unnamed_addr #26 !prof !266 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !278
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !278
  %20 = getelementptr inbounds %struct.rtvec_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !267
  br label %22

22:                                               ; preds = %3, %7, %11, %17, %1
  %23 = phi ptr [ %21, %17 ], [ %5, %11 ], [ %5, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %23
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_last_nonnote_insn() local_unnamed_addr #25 !prof !266 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %2 = icmp eq ptr %1, null
  br i1 %2, label %75, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr %1, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %75 [
    i16 13, label %6
    i16 8, label %61
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !278
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !278
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !278
  %23 = load i32, ptr %22, align 8, !tbaa !393
  %24 = add nsw i32 %23, -1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.rtvec_def, ptr %22, i64 0, i32 1, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !267
  br label %28

28:                                               ; preds = %6, %10, %14, %20
  %29 = phi ptr [ %27, %20 ], [ %8, %14 ], [ %8, %10 ], [ null, %6 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %75, label %31

31:                                               ; preds = %28, %58
  %32 = phi ptr [ %59, %58 ], [ %29, %28 ]
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 13
  br i1 %35, label %36, label %75

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !278
  %39 = icmp eq ptr %38, null
  br i1 %39, label %58, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %38, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !278
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 5
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !278
  %53 = load i32, ptr %52, align 8, !tbaa !393
  %54 = add nsw i32 %53, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.rtvec_def, ptr %52, i64 0, i32 1, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !267
  br label %58

58:                                               ; preds = %36, %40, %44, %50
  %59 = phi ptr [ %57, %50 ], [ %38, %44 ], [ %38, %40 ], [ null, %36 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %75, label %31, !llvm.loop !615

61:                                               ; preds = %3
  %62 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !278
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 5
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !278
  %70 = load i32, ptr %69, align 8, !tbaa !393
  %71 = add nsw i32 %70, -1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.rtvec_def, ptr %69, i64 0, i32 1, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !267
  br label %75

75:                                               ; preds = %31, %58, %28, %3, %67, %61, %0
  %76 = phi ptr [ %74, %67 ], [ %1, %61 ], [ null, %0 ], [ %1, %3 ], [ null, %28 ], [ null, %58 ], [ %32, %31 ]
  ret ptr %76
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @previous_insn(ptr noundef readonly %0) local_unnamed_addr #26 !prof !266 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !278
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !278
  %20 = load i32, ptr %19, align 8, !tbaa !393
  %21 = add nsw i32 %20, -1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.rtvec_def, ptr %19, i64 0, i32 1, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !267
  br label %25

25:                                               ; preds = %3, %7, %11, %17, %1
  %26 = phi ptr [ %24, %17 ], [ %5, %11 ], [ %5, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %26
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_max_uid() local_unnamed_addr #19 !prof !616 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_max_insn_count() local_unnamed_addr #27 !prof !617 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %2 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !534
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !267
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 117, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !532
  %6 = tail call i32 @llvm.smax.i32(i32 %2, i32 %5)
  %7 = sub nsw i32 %1, %6
  ret i32 %7
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_nonnote_insn(ptr noundef readonly %0) local_unnamed_addr #28 !prof !618 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !619

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !620

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 13
  br i1 %11, label %3, label %12, !prof !621, !llvm.loop !622

12:                                               ; preds = %8, %3, %1
  %13 = phi ptr [ null, %1 ], [ null, %3 ], [ %6, %8 ]
  ret ptr %13
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_nonnote_insn_bb(ptr noundef readonly %0) local_unnamed_addr #28 !prof !623 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi ptr [ %0, %1 ], [ %7, %13 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5, !prof !624

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !278
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9, !prof !625

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 13
  br i1 %12, label %13, label %17, !prof !626

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %15 = load i32, ptr %14, align 8, !tbaa !278
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %2, !prof !627, !llvm.loop !628

17:                                               ; preds = %13, %2, %9, %5
  %18 = phi ptr [ null, %5 ], [ %7, %9 ], [ null, %2 ], [ null, %13 ]
  ret ptr %18
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_nonnote_insn(ptr noundef readonly %0) local_unnamed_addr #28 !prof !629 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !630

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !631

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 13
  br i1 %11, label %3, label %12, !prof !632, !llvm.loop !633

12:                                               ; preds = %8, %3, %1
  %13 = phi ptr [ null, %1 ], [ null, %3 ], [ %6, %8 ]
  ret ptr %13
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_nonnote_insn_bb(ptr noundef readonly %0) local_unnamed_addr #25 !prof !266 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi ptr [ %0, %1 ], [ %7, %13 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !278
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 13
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %15 = load i32, ptr %14, align 8, !tbaa !278
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %2, !llvm.loop !634

17:                                               ; preds = %13, %2, %9, %5
  %18 = phi ptr [ null, %5 ], [ %7, %9 ], [ null, %2 ], [ null, %13 ]
  ret ptr %18
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_nondebug_insn(ptr noundef readonly %0) local_unnamed_addr #25 !prof !266 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %3, label %12, !llvm.loop !635

12:                                               ; preds = %8, %3, %1
  %13 = phi ptr [ null, %1 ], [ null, %3 ], [ %6, %8 ]
  ret ptr %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_nondebug_insn(ptr noundef readonly %0) local_unnamed_addr #29 !prof !636 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !637

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !637

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %3, label %12, !prof !637, !llvm.loop !638

12:                                               ; preds = %8, %3, %1
  %13 = phi ptr [ null, %1 ], [ null, %3 ], [ %6, %8 ]
  ret ptr %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_real_insn(ptr noundef readonly %0) local_unnamed_addr #29 !prof !639 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3, !prof !640

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8, !prof !641

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -7
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %3, !prof !642

13:                                               ; preds = %8, %3, %1
  %14 = phi ptr [ null, %1 ], [ null, %3 ], [ %6, %8 ]
  ret ptr %14
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_real_insn(ptr noundef readonly %0) local_unnamed_addr #25 !prof !266 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -7
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %3

13:                                               ; preds = %8, %3, %1
  %14 = phi ptr [ null, %1 ], [ null, %3 ], [ %6, %8 ]
  ret ptr %14
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_call_insn() local_unnamed_addr #29 !prof !643 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !278
  %2 = icmp eq ptr %1, null
  br i1 %2, label %12, label %3, !prof !644

3:                                                ; preds = %0, %8
  %4 = phi ptr [ %10, %8 ], [ %1, %0 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %12, label %8, !prof !645

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !278
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %3, !prof !646, !llvm.loop !647

12:                                               ; preds = %3, %8, %0
  %13 = phi ptr [ %1, %0 ], [ %4, %3 ], [ %10, %8 ]
  ret ptr %13
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @active_insn_p(ptr nocapture noundef readonly %0) local_unnamed_addr #18 !prof !648 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %16 [
    i16 10, label %17
    i16 9, label %17
    i16 8, label %4
  ], !prof !649

4:                                                ; preds = %1
  %5 = load i32, ptr @reload_completed, align 4, !tbaa !282
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7, !prof !650

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 24
  br i1 %12, label %17, label %13, !prof !651

13:                                               ; preds = %7
  %14 = icmp ne i32 %11, 25
  %15 = zext i1 %14 to i32
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %1, %1, %16, %7, %13, %4
  %18 = phi i32 [ 1, %4 ], [ 0, %7 ], [ %15, %13 ], [ 1, %1 ], [ 0, %16 ], [ 1, %1 ]
  ret i32 %18
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_active_insn(ptr noundef readonly %0) local_unnamed_addr #28 !prof !652 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3, !prof !653

3:                                                ; preds = %1, %24
  %4 = phi ptr [ %6, %24 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8, !prof !654

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = trunc i32 %9 to i16
  switch i16 %10, label %23 [
    i16 10, label %24
    i16 9, label %24
    i16 8, label %11
  ], !prof !655

11:                                               ; preds = %8
  %12 = load i32, ptr @reload_completed, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14, !prof !656

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !278
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 24
  br i1 %19, label %24, label %20, !prof !657

20:                                               ; preds = %14
  %21 = icmp ne i32 %18, 25
  %22 = zext i1 %21 to i32
  br label %24

23:                                               ; preds = %8
  br label %24

24:                                               ; preds = %8, %8, %11, %14, %20, %23
  %25 = phi i32 [ 1, %11 ], [ 0, %14 ], [ %22, %20 ], [ 1, %8 ], [ 0, %23 ], [ 1, %8 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %3, label %27, !prof !658, !llvm.loop !659

27:                                               ; preds = %24, %3, %1
  %28 = phi ptr [ null, %1 ], [ null, %3 ], [ %6, %24 ]
  ret ptr %28
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_active_insn(ptr noundef readonly %0) local_unnamed_addr #29 !prof !660 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3, !prof !661

3:                                                ; preds = %1
  %4 = load i32, ptr @reload_completed, align 4
  %5 = icmp eq i32 %4, 0
  br label %6

6:                                                ; preds = %3, %25
  %7 = phi ptr [ %9, %25 ], [ %0, %3 ]
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11, !prof !662

11:                                               ; preds = %6
  %12 = load i32, ptr %9, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %24 [
    i16 10, label %25
    i16 9, label %25
    i16 8, label %14
  ], !prof !663

14:                                               ; preds = %11
  br i1 %5, label %25, label %15, !prof !662

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !278
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 24
  br i1 %20, label %25, label %21, !prof !664

21:                                               ; preds = %15
  %22 = icmp ne i32 %19, 25
  %23 = zext i1 %22 to i32
  br label %25

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %11, %11, %14, %15, %21, %24
  %26 = phi i32 [ 1, %14 ], [ 0, %15 ], [ %23, %21 ], [ 1, %11 ], [ 0, %24 ], [ 1, %11 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %6, label %28, !prof !664, !llvm.loop !665

28:                                               ; preds = %25, %6, %1
  %29 = phi ptr [ null, %1 ], [ null, %6 ], [ %9, %25 ]
  ret ptr %29
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_label(ptr noundef readonly %0) local_unnamed_addr #25 !prof !266 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 12
  br i1 %11, label %12, label %3, !llvm.loop !666

12:                                               ; preds = %8, %3, %1
  %13 = phi ptr [ null, %1 ], [ null, %3 ], [ %6, %8 ]
  ret ptr %13
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_label(ptr noundef readonly %0) local_unnamed_addr #25 !prof !266 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 12
  br i1 %11, label %12, label %3, !llvm.loop !667

12:                                               ; preds = %8, %3, %1
  %13 = phi ptr [ null, %1 ], [ null, %3 ], [ %6, %8 ]
  ret ptr %13
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @skip_consecutive_labels(ptr noundef readonly %0) local_unnamed_addr #25 !prof !266 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1, %10
  %4 = phi ptr [ %14, %10 ], [ %0, %1 ]
  %5 = phi ptr [ %12, %10 ], [ %0, %1 ]
  %6 = load i32, ptr %4, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %7, 12
  %12 = select i1 %11, ptr %4, ptr %5
  %13 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !278
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %3, !llvm.loop !668

16:                                               ; preds = %10, %3, %1
  %17 = phi ptr [ %0, %1 ], [ %12, %10 ], [ %5, %3 ]
  ret ptr %17
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @try_split(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !669 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !278
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %10 = load ptr, ptr %9, align 8, !tbaa !278
  %11 = load i32, ptr %1, align 8
  %12 = and i32 %11, 1073741824
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %253, !prof !670

14:                                               ; preds = %3
  %15 = tail call i32 @any_condjump_p(ptr noundef nonnull %1) #38
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17, !prof !671

17:                                               ; preds = %14
  %18 = tail call ptr @find_reg_note(ptr noundef nonnull %1, i32 noundef 13, ptr noundef null) #38
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20, !prof !672

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !278
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !278
  %25 = trunc i64 %24 to i32
  store i32 %25, ptr @split_branch_probability, align 4, !tbaa !282
  br label %26

26:                                               ; preds = %20, %17, %14
  %27 = load i32, ptr @split_branch_probability, align 4, !tbaa !282
  %28 = tail call ptr @split_insns(ptr noundef %0, ptr noundef nonnull %1) #38
  store i32 -1, ptr @split_branch_probability, align 4, !tbaa !282
  %29 = icmp eq ptr %10, null
  br i1 %29, label %37, label %30, !prof !673

30:                                               ; preds = %26
  %31 = load i32, ptr %10, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 11
  br i1 %33, label %34, label %37, !prof !674

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !278
  br label %37

37:                                               ; preds = %34, %30, %26
  %38 = phi i1 [ false, %34 ], [ true, %30 ], [ true, %26 ]
  %39 = phi ptr [ %36, %34 ], [ %10, %30 ], [ null, %26 ]
  %40 = icmp eq ptr %28, null
  br i1 %40, label %253, label %41, !prof !675

41:                                               ; preds = %37, %52
  %42 = phi ptr [ %54, %52 ], [ %28, %37 ]
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = add nsw i32 %44, -7
  %46 = icmp ult i32 %45, 4
  br i1 %46, label %47, label %52, !prof !676

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !278
  %50 = tail call i32 @rtx_equal_p(ptr noundef %49, ptr noundef %0) #38
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %253, !prof !676

52:                                               ; preds = %41, %47
  %53 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !278
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %41, !prof !677, !llvm.loop !678

56:                                               ; preds = %52, %69
  %57 = phi ptr [ %71, %69 ], [ %28, %52 ]
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = add nsw i32 %59, -7
  %61 = icmp ult i32 %60, 4
  br i1 %61, label %62, label %69, !prof !547

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %64, ptr %6, align 8, !tbaa !267
  call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %6)
  %65 = load ptr, ptr %6, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  store ptr %65, ptr %63, align 8, !tbaa !278
  %66 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 1, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %67, ptr %5, align 8, !tbaa !267
  call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %5)
  %68 = load ptr, ptr %5, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  store ptr %68, ptr %66, align 8, !tbaa !278
  br label %69

69:                                               ; preds = %62, %56
  %70 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 2
  %71 = load ptr, ptr %70, align 8, !tbaa !278
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %56, !prof !548, !llvm.loop !549

73:                                               ; preds = %69, %109
  %74 = phi i32 [ %110, %109 ], [ 0, %69 ]
  %75 = phi ptr [ %112, %109 ], [ %42, %69 ]
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 9
  br i1 %78, label %79, label %109, !prof !679

79:                                               ; preds = %73
  %80 = icmp eq i32 %27, -1
  %81 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !278
  call void @mark_jump_label(ptr noundef %82, ptr noundef nonnull %75, i32 noundef 0) #38
  %83 = add nsw i32 %74, 1
  br i1 %80, label %109, label %84, !prof !680

84:                                               ; preds = %79
  %85 = call i32 @any_condjump_p(ptr noundef nonnull %75) #38
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %109, label %87, !prof !680

87:                                               ; preds = %84
  %88 = call ptr @find_reg_note(ptr noundef nonnull %75, i32 noundef 13, ptr noundef null) #38
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %109, !prof !681

90:                                               ; preds = %87
  %91 = icmp eq i32 %74, 0
  br i1 %91, label %93, label %92, !prof !681

92:                                               ; preds = %90
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3497, ptr noundef nonnull @.str.1) #38
  br label %93

93:                                               ; preds = %90, %92
  %94 = sext i32 %27 to i64
  %95 = add nsw i64 %94, 64
  %96 = icmp ult i64 %95, 129
  %97 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store i64 %94, ptr %4, align 8, !tbaa !288
  br i1 %96, label %106, label %98, !prof !289

98:                                               ; preds = %93
  %99 = load ptr, ptr @const_int_htab, align 8, !tbaa !267
  %100 = call ptr @htab_find_slot_with_hash(ptr noundef %99, ptr noundef nonnull %4, i32 noundef %27, i32 noundef 1) #38
  %101 = load ptr, ptr %100, align 8, !tbaa !267
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %106, !prof !290

103:                                              ; preds = %98
  %104 = load i64, ptr %4, align 8, !tbaa !288
  %105 = call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %104) #38
  store ptr %105, ptr %100, align 8, !tbaa !267
  br label %106

106:                                              ; preds = %93, %98, %103
  %107 = phi ptr [ %100, %103 ], [ %100, %98 ], [ %97, %93 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  call void @add_reg_note(ptr noundef nonnull %75, i32 noundef 13, ptr noundef %108) #38
  br label %109

109:                                              ; preds = %73, %106, %87, %84, %79
  %110 = phi i32 [ %83, %87 ], [ %83, %106 ], [ %83, %84 ], [ %83, %79 ], [ %74, %73 ]
  %111 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !278
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %73, !prof !677, !llvm.loop !682

114:                                              ; preds = %109
  %115 = load i32, ptr %1, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 10
  br i1 %117, label %118, label %149, !prof !683

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 2
  br label %120

120:                                              ; preds = %118, %145
  %121 = phi ptr [ %42, %118 ], [ %147, %145 ]
  %122 = load i32, ptr %121, align 8
  %123 = and i32 %122, 65535
  %124 = icmp eq i32 %123, 10
  br i1 %124, label %125, label %145

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 1, i32 1, i32 0, i32 0, i64 2
  br label %127

127:                                              ; preds = %127, %125
  %128 = phi ptr [ %126, %125 ], [ %131, %127 ]
  %129 = load ptr, ptr %128, align 8, !tbaa !267
  %130 = icmp eq ptr %129, null
  %131 = getelementptr inbounds %struct.rtx_def, ptr %129, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %130, label %132, label %127, !llvm.loop !684

132:                                              ; preds = %127
  %133 = load ptr, ptr %119, align 8, !tbaa !278
  store ptr %133, ptr %128, align 8, !tbaa !267
  %134 = load i32, ptr %1, align 8
  %135 = and i32 %134, 16777216
  %136 = load i32, ptr %121, align 8
  %137 = and i32 %136, -16777217
  %138 = or disjoint i32 %137, %135
  store i32 %138, ptr %121, align 8
  %139 = load i32, ptr @flag_enable_icf_debug, align 4, !tbaa !282
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %132
  %142 = load ptr, ptr @debug_hooks, align 8, !tbaa !267
  %143 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %142, i64 0, i32 28
  %144 = load ptr, ptr %143, align 8, !tbaa !685
  call void %144(ptr noundef nonnull %1, ptr noundef nonnull %121) #38
  br label %145

145:                                              ; preds = %132, %141, %120
  %146 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1, i32 0, i32 0, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !278
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %120, !llvm.loop !687

149:                                              ; preds = %145, %114
  %150 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !278
  %152 = icmp eq ptr %151, null
  br i1 %152, label %195, label %153, !prof !688

153:                                              ; preds = %149, %191
  %154 = phi ptr [ %193, %191 ], [ %151, %149 ]
  %155 = load i32, ptr %154, align 8
  %156 = lshr i32 %155, 16
  %157 = trunc i32 %156 to i8
  switch i8 %157, label %191 [
    i8 25, label %160
    i8 27, label %161
    i8 30, label %161
    i8 28, label %158
  ], !prof !689

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1
  br label %177

160:                                              ; preds = %153
  call void @copy_reg_eh_region_note_backward(ptr noundef nonnull %154, ptr noundef nonnull %42, ptr noundef null) #38
  br label %191

161:                                              ; preds = %153, %153
  %162 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1
  br label %163

163:                                              ; preds = %161, %173
  %164 = phi ptr [ %42, %161 ], [ %175, %173 ]
  %165 = load i32, ptr %164, align 8
  %166 = and i32 %165, 65535
  %167 = icmp eq i32 %166, 10
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load i32, ptr %154, align 8
  %170 = lshr i32 %169, 16
  %171 = and i32 %170, 255
  %172 = load ptr, ptr %162, align 8, !tbaa !278
  call void @add_reg_note(ptr noundef nonnull %164, i32 noundef %171, ptr noundef %172) #38
  br label %173

173:                                              ; preds = %163, %168
  %174 = getelementptr inbounds %struct.rtx_def, ptr %164, i64 0, i32 1, i32 0, i32 0, i64 1
  %175 = load ptr, ptr %174, align 8, !tbaa !278
  %176 = icmp eq ptr %175, null
  br i1 %176, label %191, label %163, !llvm.loop !690

177:                                              ; preds = %158, %187
  %178 = phi ptr [ %42, %158 ], [ %189, %187 ]
  %179 = load i32, ptr %178, align 8
  %180 = and i32 %179, 65535
  %181 = icmp eq i32 %180, 9
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load i32, ptr %154, align 8
  %184 = lshr i32 %183, 16
  %185 = and i32 %184, 255
  %186 = load ptr, ptr %159, align 8, !tbaa !278
  call void @add_reg_note(ptr noundef nonnull %178, i32 noundef %185, ptr noundef %186) #38
  br label %187

187:                                              ; preds = %177, %182
  %188 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1, i32 0, i32 0, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !278
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %177, !llvm.loop !691

191:                                              ; preds = %187, %173, %160, %153
  %192 = getelementptr inbounds %struct.rtx_def, ptr %154, i64 0, i32 1, i32 0, i32 0, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !278
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %153, !prof !692, !llvm.loop !693

195:                                              ; preds = %191, %149
  %196 = load i32, ptr %1, align 8
  %197 = and i32 %196, 65535
  %198 = add nsw i32 %197, -7
  %199 = icmp ult i32 %198, 4
  br i1 %199, label %200, label %212, !prof !694

200:                                              ; preds = %195, %208
  %201 = phi ptr [ %210, %208 ], [ %42, %195 ]
  %202 = load i32, ptr %201, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 8
  br i1 %204, label %205, label %208, !prof !695

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.rtx_def, ptr %201, i64 1
  %207 = load ptr, ptr %206, align 8, !tbaa !278
  call fastcc void @mark_label_nuses(ptr noundef %207)
  br label %208

208:                                              ; preds = %205, %200
  %209 = getelementptr inbounds %struct.rtx_def, ptr %201, i64 0, i32 1, i32 0, i32 0, i64 1
  %210 = load ptr, ptr %209, align 8, !tbaa !278
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %200, !prof !677, !llvm.loop !696

212:                                              ; preds = %208, %195
  %213 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %214 = load i32, ptr %213, align 8, !tbaa !278
  %215 = call ptr @emit_insn_after_setloc(ptr noundef nonnull %28, ptr noundef nonnull %1, i32 noundef %214)
  %216 = call ptr @delete_insn(ptr noundef nonnull %1) #38
  br i1 %38, label %222, label %217, !prof !694

217:                                              ; preds = %212
  %218 = call ptr @rtx_alloc_stat(i32 noundef 11) #38
  %219 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %220 = add nsw i32 %219, 1
  store i32 %220, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %221 = getelementptr inbounds %struct.rtx_def, ptr %218, i64 0, i32 1
  store i32 %219, ptr %221, align 8, !tbaa !278
  call void @add_insn_after(ptr noundef %218, ptr noundef %215, ptr poison)
  br label %222

222:                                              ; preds = %217, %212
  %223 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  %224 = load ptr, ptr %223, align 8, !tbaa !278
  %225 = icmp eq ptr %224, %39
  br i1 %225, label %244, label %226, !prof !688

226:                                              ; preds = %222, %239
  %227 = phi ptr [ %242, %239 ], [ %224, %222 ]
  %228 = load i32, ptr %227, align 8
  %229 = and i32 %228, 134217728
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %239, !prof !676

231:                                              ; preds = %226
  %232 = and i32 %228, 65535
  %233 = add nsw i32 %232, -7
  %234 = icmp ult i32 %233, 4
  br i1 %234, label %235, label %239, !prof !676

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !278
  %238 = call ptr @try_split(ptr noundef %237, ptr noundef nonnull %227, i32 noundef 1)
  br label %239

239:                                              ; preds = %231, %226, %235
  %240 = phi ptr [ %227, %226 ], [ %238, %235 ], [ %227, %231 ]
  %241 = getelementptr inbounds %struct.rtx_def, ptr %240, i64 0, i32 1, i32 0, i32 0, i64 2
  %242 = load ptr, ptr %241, align 8, !tbaa !278
  %243 = icmp eq ptr %242, %39
  br i1 %243, label %244, label %226, !prof !697, !llvm.loop !698

244:                                              ; preds = %239, %222
  %245 = icmp eq i32 %2, 0
  br i1 %245, label %250, label %246, !prof !683

246:                                              ; preds = %244
  %247 = icmp eq ptr %39, null
  br i1 %247, label %250, label %248, !prof !683

248:                                              ; preds = %246
  %249 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %250

250:                                              ; preds = %244, %246, %248
  %251 = phi ptr [ %249, %248 ], [ getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), %246 ], [ %223, %244 ]
  %252 = load ptr, ptr %251, align 8, !tbaa !278
  br label %253

253:                                              ; preds = %47, %37, %3, %250
  %254 = phi ptr [ %252, %250 ], [ %1, %3 ], [ %1, %37 ], [ %1, %47 ]
  ret ptr %254
}

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @split_insns(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mark_jump_label(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @copy_reg_eh_region_note_backward(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mark_label_nuses(ptr nocapture noundef readonly %0) unnamed_addr #23 !prof !699 !PGOFuncName !700 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 44
  br i1 %4, label %5, label %15, !prof !701

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !278
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 12
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !278
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !278
  br label %15

15:                                               ; preds = %11, %5, %1
  %16 = zext nneg i32 %3 to i64
  %17 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !267
  %19 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !278
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %50, label %22, !prof !702

22:                                               ; preds = %15
  %23 = zext i8 %20 to i64
  br label %24

24:                                               ; preds = %22, %48
  %25 = phi i64 [ %23, %22 ], [ %26, %48 ]
  %26 = add nsw i64 %25, -1
  %27 = getelementptr inbounds i8, ptr %18, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !278
  switch i8 %28, label %48 [
    i8 101, label %29
    i8 69, label %33
  ], !prof !703

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %31 = getelementptr inbounds [1 x %union.rtunion_def], ptr %30, i64 0, i64 %26
  %32 = load ptr, ptr %31, align 8, !tbaa !278
  tail call fastcc void @mark_label_nuses(ptr noundef %32)
  br label %48

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = getelementptr inbounds [1 x %union.rtunion_def], ptr %34, i64 0, i64 %26
  %36 = load ptr, ptr %35, align 8, !tbaa !278
  %37 = load i32, ptr %36, align 8, !tbaa !393
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %48, !prof !704

39:                                               ; preds = %33
  %40 = zext nneg i32 %37 to i64
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ %40, %39 ], [ %43, %41 ]
  %43 = add nsw i64 %42, -1
  %44 = load ptr, ptr %35, align 8, !tbaa !278
  %45 = getelementptr inbounds %struct.rtvec_def, ptr %44, i64 0, i32 1, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !267
  tail call fastcc void @mark_label_nuses(ptr noundef %46)
  %47 = icmp sgt i64 %42, 1
  br i1 %47, label %41, label %48, !prof !705, !llvm.loop !706

48:                                               ; preds = %41, %33, %24, %29
  %49 = icmp sgt i64 %25, 1
  br i1 %49, label %24, label %50, !prof !707, !llvm.loop !708

50:                                               ; preds = %48, %15
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @emit_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !709 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6, !prof !710

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4331, ptr noundef nonnull @.str.1) #38
  br label %6

6:                                                ; preds = %5, %3
  %7 = icmp eq ptr %0, null
  br i1 %7, label %85, label %8, !prof !711

8:                                                ; preds = %6
  %9 = load i32, ptr %0, align 8
  %10 = trunc i32 %9 to i16
  %11 = add i16 %10, -7
  %12 = icmp ult i16 %11, 7
  br i1 %12, label %13, label %74, !prof !712

13:                                               ; preds = %8
  %14 = load i32, ptr %1, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 11
  br i1 %16, label %20, label %17, !prof !713

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !278
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi ptr [ null, %13 ], [ %19, %17 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %56, label %23, !prof !714

23:                                               ; preds = %20
  tail call void @df_set_bb_dirty(ptr noundef nonnull %21) #38
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !278
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27, !prof !715

27:                                               ; preds = %23, %36
  %28 = phi ptr [ %38, %36 ], [ %24, %23 ]
  %29 = phi ptr [ %37, %36 ], [ %0, %23 ]
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 11
  br i1 %32, label %36, label %33, !prof !716

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 1
  store ptr %21, ptr %34, align 8, !tbaa !278
  %35 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %29) #38
  br label %36

36:                                               ; preds = %33, %27
  %37 = load ptr, ptr %28, align 8, !tbaa !278
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !278
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %27, !prof !717, !llvm.loop !718

41:                                               ; preds = %36, %23
  %42 = phi ptr [ %0, %23 ], [ %37, %36 ]
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 11
  br i1 %45, label %49, label %46, !prof !719

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 1
  store ptr %21, ptr %47, align 8, !tbaa !278
  %48 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %42) #38
  br label %49

49:                                               ; preds = %46, %41
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !278
  %52 = getelementptr inbounds %struct.rtl_bb_info, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !720
  %54 = icmp eq ptr %53, %1
  br i1 %54, label %55, label %61, !prof !722

55:                                               ; preds = %49
  store ptr %42, ptr %52, align 8, !tbaa !720
  br label %61

56:                                               ; preds = %20, %56
  %57 = phi ptr [ %59, %56 ], [ %0, %20 ]
  %58 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 2
  %59 = load ptr, ptr %58, align 8, !tbaa !278
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %56, !prof !723, !llvm.loop !724

61:                                               ; preds = %56, %55, %49
  %62 = phi ptr [ %42, %55 ], [ %42, %49 ], [ %57, %56 ]
  %63 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %64 = load ptr, ptr %63, align 8, !tbaa !278
  store ptr %0, ptr %63, align 8, !tbaa !278
  %65 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %65, align 8, !tbaa !278
  %66 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %64, ptr %66, align 8, !tbaa !278
  %67 = icmp eq ptr %64, null
  br i1 %67, label %70, label %68, !prof !725

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %62, ptr %69, align 8, !tbaa !278
  br label %70

70:                                               ; preds = %68, %61
  %71 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %72 = icmp eq ptr %71, %1
  br i1 %72, label %73, label %85, !prof !725

73:                                               ; preds = %70
  store ptr %62, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %85

74:                                               ; preds = %8
  %75 = tail call ptr @rtx_alloc_stat(i32 noundef 8) #38
  %76 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %78 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  store i32 %76, ptr %78, align 8, !tbaa !278
  %79 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 1
  store ptr %0, ptr %79, align 8, !tbaa !278
  %80 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 1, i32 1
  store i32 -1, ptr %80, align 8, !tbaa !278
  %81 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %81, align 8, !tbaa !278
  %82 = tail call i32 @curr_insn_locator() #38
  %83 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 2
  store i32 %82, ptr %83, align 8, !tbaa !278
  %84 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %84, align 8, !tbaa !278
  tail call void @add_insn_after(ptr noundef %75, ptr noundef %1, ptr poison)
  br label %85

85:                                               ; preds = %6, %70, %73, %74
  %86 = phi ptr [ %1, %6 ], [ %75, %74 ], [ %62, %70 ], [ %62, %73 ]
  %87 = icmp ne ptr %0, null
  %88 = icmp ne i32 %2, 0
  %89 = and i1 %87, %88
  br i1 %89, label %90, label %120, !prof !726

90:                                               ; preds = %85
  %91 = load i32, ptr @reload_completed, align 4
  %92 = icmp eq i32 %91, 0
  br label %93

93:                                               ; preds = %90, %118
  %94 = phi ptr [ %96, %118 ], [ %1, %90 ]
  %95 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1, i32 0, i32 0, i64 2
  %96 = load ptr, ptr %95, align 8, !tbaa !278
  %97 = load i32, ptr %96, align 8
  %98 = trunc i32 %97 to i16
  switch i16 %98, label %109 [
    i16 10, label %110
    i16 9, label %110
    i16 8, label %99
  ], !prof !727

99:                                               ; preds = %93
  br i1 %92, label %110, label %100, !prof !728

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !278
  %103 = load i32, ptr %102, align 8
  %104 = and i32 %103, 65535
  %105 = icmp eq i32 %104, 24
  br i1 %105, label %110, label %106, !prof !729

106:                                              ; preds = %100
  %107 = icmp ne i32 %104, 25
  %108 = zext i1 %107 to i32
  br label %110

109:                                              ; preds = %93
  br label %110

110:                                              ; preds = %93, %93, %99, %100, %106, %109
  %111 = phi i32 [ 1, %99 ], [ 0, %100 ], [ %108, %106 ], [ 1, %93 ], [ 0, %109 ], [ 1, %93 ]
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %113, !prof !730

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !278
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118, !prof !731

117:                                              ; preds = %113
  store i32 %2, ptr %114, align 8, !tbaa !278
  br label %118

118:                                              ; preds = %110, %117, %113
  %119 = icmp eq ptr %96, %86
  br i1 %119, label %120, label %93, !prof !732, !llvm.loop !733

120:                                              ; preds = %118, %85
  ret ptr %86
}

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @emit_barrier_after(ptr noundef %0) local_unnamed_addr #10 !prof !734 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 11) #38
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !278
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !278
  %8 = load i32, ptr @optimize, align 4, !tbaa !282
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !735

10:                                               ; preds = %1
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 134217728
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !736

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3723, ptr noundef nonnull @.str.1) #38
  br label %15

15:                                               ; preds = %14, %10, %1
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %7, ptr %16, align 8, !tbaa !278
  %17 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %0, ptr %17, align 8, !tbaa !278
  %18 = icmp eq ptr %7, null
  br i1 %18, label %36, label %19, !prof !737

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %2, ptr %20, align 8, !tbaa !278
  %21 = load i32, ptr %7, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %24, label %55, !prof !738

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !278
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %55, !prof !739

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !278
  %33 = getelementptr inbounds %struct.rtvec_def, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !267
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %2, ptr %35, align 8, !tbaa !278
  br label %55

36:                                               ; preds = %15
  %37 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %38 = icmp eq ptr %37, %0
  br i1 %38, label %42, label %39, !prof !740

39:                                               ; preds = %36
  %40 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !267
  %41 = icmp eq ptr %40, null
  br i1 %41, label %54, label %43

42:                                               ; preds = %36
  store ptr %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %55

43:                                               ; preds = %39, %50
  %44 = phi ptr [ %52, %50 ], [ %40, %39 ]
  %45 = getelementptr inbounds %struct.sequence_stack, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !612
  %47 = icmp eq ptr %46, %0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.sequence_stack, ptr %44, i64 0, i32 1
  store ptr %2, ptr %49, align 8, !tbaa !612
  br label %55

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.sequence_stack, ptr %44, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !267
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %43, !llvm.loop !741

54:                                               ; preds = %50, %39
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3747, ptr noundef nonnull @.str.1) #38
  br label %55

55:                                               ; preds = %54, %48, %42, %30, %24, %19
  %56 = load i32, ptr %0, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 11
  br i1 %58, label %87, label %59, !prof !735

59:                                               ; preds = %55
  %60 = load i32, ptr %2, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 11
  br i1 %62, label %87, label %63, !prof !742

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !278
  %66 = icmp eq ptr %65, null
  br i1 %66, label %87, label %67, !prof !743

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  store ptr %65, ptr %68, align 8, !tbaa !278
  %69 = add nsw i32 %61, -7
  %70 = icmp ult i32 %69, 4
  br i1 %70, label %71, label %73, !prof !744

71:                                               ; preds = %67
  %72 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %2) #38
  br label %73

73:                                               ; preds = %71, %67
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !278
  %76 = getelementptr inbounds %struct.rtl_bb_info, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !720
  %78 = icmp eq ptr %77, %0
  br i1 %78, label %79, label %87, !prof !745

79:                                               ; preds = %73
  %80 = load i32, ptr %2, align 8
  %81 = trunc i32 %80 to i16
  switch i16 %81, label %86 [
    i16 11, label %87
    i16 13, label %82
  ], !prof !746

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %84 = load i32, ptr %83, align 8, !tbaa !278
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %87, label %86, !prof !747

86:                                               ; preds = %82, %79
  store ptr %2, ptr %76, align 8, !tbaa !720
  br label %87

87:                                               ; preds = %86, %82, %79, %73, %63, %59, %55
  store ptr %2, ptr %6, align 8, !tbaa !278
  %88 = load i32, ptr %0, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 8
  br i1 %90, label %91, label %106, !prof !748

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !278
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 65535
  %96 = icmp eq i32 %95, 5
  br i1 %96, label %97, label %106, !prof !749

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.rtx_def, ptr %93, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !278
  %100 = load i32, ptr %99, align 8, !tbaa !393
  %101 = add nsw i32 %100, -1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.rtvec_def, ptr %99, i64 0, i32 1, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !267
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %2, ptr %105, align 8, !tbaa !278
  br label %106

106:                                              ; preds = %87, %91, %97
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @make_insn_raw(ptr noundef %0) local_unnamed_addr #11 !prof !750 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 8) #38
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !278
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store ptr %0, ptr %6, align 8, !tbaa !278
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1
  store i32 -1, ptr %7, align 8, !tbaa !278
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %8, align 8, !tbaa !278
  %9 = tail call i32 @curr_insn_locator() #38
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  store i32 %9, ptr %10, align 8, !tbaa !278
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !278
  ret ptr %2
}

declare i32 @curr_insn_locator() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @make_debug_insn_raw(ptr noundef %0) local_unnamed_addr #11 !prof !266 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 7) #38
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !534
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !534
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !278
  %6 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !534
  %7 = load ptr, ptr @compiler_params, align 8, !tbaa !267
  %8 = getelementptr inbounds %struct.param_info, ptr %7, i64 117, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !532
  %10 = icmp sgt i32 %6, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  store i32 %12, ptr %5, align 8, !tbaa !278
  br label %14

14:                                               ; preds = %11, %1
  %15 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store ptr %0, ptr %15, align 8, !tbaa !278
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1
  store i32 -1, ptr %16, align 8, !tbaa !278
  %17 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %17, align 8, !tbaa !278
  %18 = tail call i32 @curr_insn_locator() #38
  %19 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  store i32 %18, ptr %19, align 8, !tbaa !278
  %20 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %20, align 8, !tbaa !278
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @make_jump_insn_raw(ptr noundef %0) local_unnamed_addr #11 !prof !266 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 9) #38
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !278
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store ptr %0, ptr %6, align 8, !tbaa !278
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1
  store i32 -1, ptr %7, align 8, !tbaa !278
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %9 = tail call i32 @curr_insn_locator() #38
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  store i32 %9, ptr %10, align 8, !tbaa !278
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !278
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @add_insn(ptr noundef %0) local_unnamed_addr #30 !prof !266 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %2, ptr %3, align 8, !tbaa !278
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %4, align 8, !tbaa !278
  %5 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %8, align 8, !tbaa !278
  br label %9

9:                                                ; preds = %7, %1
  %10 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %13

13:                                               ; preds = %12, %9
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @add_insn_after(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) local_unnamed_addr #10 !prof !751 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = load i32, ptr @optimize, align 4, !tbaa !282
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !735

8:                                                ; preds = %3
  %9 = load i32, ptr %1, align 8
  %10 = and i32 %9, 134217728
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !736

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3723, ptr noundef nonnull @.str.1) #38
  br label %13

13:                                               ; preds = %3, %8, %12
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %5, ptr %14, align 8, !tbaa !278
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %15, align 8, !tbaa !278
  %16 = icmp eq ptr %5, null
  br i1 %16, label %34, label %17, !prof !737

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %0, ptr %18, align 8, !tbaa !278
  %19 = load i32, ptr %5, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %22, label %53, !prof !738

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !278
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %53, !prof !739

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !278
  %31 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !267
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %0, ptr %33, align 8, !tbaa !278
  br label %53

34:                                               ; preds = %13
  %35 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %40, label %37, !prof !740

37:                                               ; preds = %34
  %38 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !267
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %41

40:                                               ; preds = %34
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %53

41:                                               ; preds = %37, %48
  %42 = phi ptr [ %50, %48 ], [ %38, %37 ]
  %43 = getelementptr inbounds %struct.sequence_stack, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !612
  %45 = icmp eq ptr %44, %1
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.sequence_stack, ptr %42, i64 0, i32 1
  store ptr %0, ptr %47, align 8, !tbaa !612
  br label %53

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.sequence_stack, ptr %42, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !267
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %41, !llvm.loop !741

52:                                               ; preds = %48, %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3747, ptr noundef nonnull @.str.1) #38
  br label %53

53:                                               ; preds = %46, %52, %40, %17, %22, %28
  %54 = load i32, ptr %1, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 11
  br i1 %56, label %85, label %57, !prof !735

57:                                               ; preds = %53
  %58 = load i32, ptr %0, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 11
  br i1 %60, label %85, label %61, !prof !742

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !278
  %64 = icmp eq ptr %63, null
  br i1 %64, label %85, label %65, !prof !743

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %63, ptr %66, align 8, !tbaa !278
  %67 = add nsw i32 %59, -7
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %69, label %71, !prof !744

69:                                               ; preds = %65
  %70 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %0) #38
  br label %71

71:                                               ; preds = %65, %69
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !278
  %74 = getelementptr inbounds %struct.rtl_bb_info, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !720
  %76 = icmp eq ptr %75, %1
  br i1 %76, label %77, label %85, !prof !745

77:                                               ; preds = %71
  %78 = load i32, ptr %0, align 8
  %79 = trunc i32 %78 to i16
  switch i16 %79, label %84 [
    i16 11, label %85
    i16 13, label %80
  ], !prof !746

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %82 = load i32, ptr %81, align 8, !tbaa !278
  %83 = icmp eq i32 %82, 10
  br i1 %83, label %85, label %84, !prof !747

84:                                               ; preds = %80, %77
  store ptr %0, ptr %74, align 8, !tbaa !720
  br label %85

85:                                               ; preds = %77, %71, %80, %84, %61, %57, %53
  store ptr %0, ptr %4, align 8, !tbaa !278
  %86 = load i32, ptr %1, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %104, !prof !748

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !278
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 5
  br i1 %94, label %95, label %104, !prof !749

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !278
  %98 = load i32, ptr %97, align 8, !tbaa !393
  %99 = add nsw i32 %98, -1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.rtvec_def, ptr %97, i64 0, i32 1, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !267
  %103 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %103, align 8, !tbaa !278
  br label %104

104:                                              ; preds = %95, %89, %85
  ret void
}

declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @add_insn_before(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !266 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = load i32, ptr @optimize, align 4, !tbaa !282
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !752

8:                                                ; preds = %3
  %9 = load i32, ptr %1, align 8
  %10 = and i32 %9, 134217728
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !753

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3785, ptr noundef nonnull @.str.1) #38
  br label %13

13:                                               ; preds = %3, %8, %12
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %5, ptr %14, align 8, !tbaa !278
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %1, ptr %15, align 8, !tbaa !278
  %16 = icmp eq ptr %5, null
  br i1 %16, label %37, label %17, !prof !754

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %18, align 8, !tbaa !278
  %19 = load i32, ptr %5, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %22, label %54, !prof !755

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !278
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %54, !prof !756

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !278
  %31 = load i32, ptr %30, align 8, !tbaa !393
  %32 = add nsw i32 %31, -1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !267
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %36, align 8, !tbaa !278
  br label %54

37:                                               ; preds = %13
  %38 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %43, label %40, !prof !757

40:                                               ; preds = %37
  %41 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !267
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %44

43:                                               ; preds = %37
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %54

44:                                               ; preds = %40, %49
  %45 = phi ptr [ %51, %49 ], [ %41, %40 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !758
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store ptr %0, ptr %45, align 8, !tbaa !758
  br label %54

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.sequence_stack, ptr %45, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !267
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44, !llvm.loop !759

53:                                               ; preds = %49, %40
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3812, ptr noundef nonnull @.str.1) #38
  br label %54

54:                                               ; preds = %48, %53, %43, %17, %22, %28
  %55 = icmp eq ptr %2, null
  br i1 %55, label %56, label %67, !prof !760

56:                                               ; preds = %54
  %57 = load i32, ptr %1, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 11
  br i1 %59, label %67, label %60, !prof !761

60:                                               ; preds = %56
  %61 = load i32, ptr %0, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 11
  br i1 %63, label %67, label %64, !prof !761

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !278
  br label %67

67:                                               ; preds = %64, %60, %56, %54
  %68 = phi ptr [ %2, %54 ], [ null, %56 ], [ null, %60 ], [ %66, %64 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %91, label %70, !prof !762

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %68, ptr %71, align 8, !tbaa !278
  %72 = load i32, ptr %0, align 8
  %73 = and i32 %72, 65535
  %74 = add nsw i32 %73, -7
  %75 = icmp ult i32 %74, 4
  br i1 %75, label %76, label %78, !prof !763

76:                                               ; preds = %70
  %77 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %0) #38
  br label %78

78:                                               ; preds = %70, %76
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 7
  %80 = load ptr, ptr %79, align 8, !tbaa !278
  %81 = load ptr, ptr %80, align 8, !tbaa !764
  %82 = icmp eq ptr %81, %0
  br i1 %82, label %83, label %91, !prof !765

83:                                               ; preds = %78
  %84 = load i32, ptr %0, align 8
  %85 = trunc i32 %84 to i16
  switch i16 %85, label %90 [
    i16 11, label %91
    i16 13, label %86
  ]

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %88 = load i32, ptr %87, align 8, !tbaa !278
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %91, label %90

90:                                               ; preds = %86, %83
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3830, ptr noundef nonnull @.str.1) #38
  br label %91

91:                                               ; preds = %83, %90, %86, %78, %67
  store ptr %0, ptr %4, align 8, !tbaa !278
  %92 = load i32, ptr %1, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 8
  br i1 %94, label %95, label %107, !prof !766

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !278
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 5
  br i1 %100, label %101, label %107, !prof !767

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !278
  %104 = getelementptr inbounds %struct.rtvec_def, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !267
  %106 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %0, ptr %106, align 8, !tbaa !278
  br label %107

107:                                              ; preds = %101, %95, %91
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_insn_deleted(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !768 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !278
  %5 = load i32, ptr %2, align 8, !tbaa !278
  tail call void @df_insn_delete(ptr noundef %4, i32 noundef %5) #38
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, -65536
  %8 = or disjoint i32 %7, 13
  store i32 %8, ptr %0, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  store i32 0, ptr %9, align 8, !tbaa !278
  ret void
}

declare void @df_insn_delete(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @remove_insn(ptr noundef readonly %0) local_unnamed_addr #10 !prof !769 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !278
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = load i32, ptr %2, align 8, !tbaa !278
  tail call void @df_insn_delete(ptr noundef null, i32 noundef %7) #38
  %8 = icmp eq ptr %6, null
  br i1 %8, label %29, label %9, !prof !770

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %10, align 8, !tbaa !278
  %11 = load i32, ptr %6, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %14, label %46, !prof !771

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !278
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %46, !prof !772

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !278
  %23 = load i32, ptr %22, align 8, !tbaa !393
  %24 = add nsw i32 %23, -1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.rtvec_def, ptr %22, i64 0, i32 1, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !267
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %28, align 8, !tbaa !278
  br label %46

29:                                               ; preds = %1
  %30 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %35, label %32, !prof !757

32:                                               ; preds = %29
  %33 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !267
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %36

35:                                               ; preds = %29
  store ptr %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %46

36:                                               ; preds = %32, %41
  %37 = phi ptr [ %43, %41 ], [ %33, %32 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !758
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store ptr %4, ptr %37, align 8, !tbaa !758
  br label %46

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.sequence_stack, ptr %37, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !267
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %36, !llvm.loop !773

45:                                               ; preds = %41, %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3884, ptr noundef nonnull @.str.1) #38
  br label %46

46:                                               ; preds = %40, %45, %35, %9, %14, %20
  %47 = icmp eq ptr %4, null
  br i1 %47, label %65, label %48, !prof !774

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %6, ptr %49, align 8, !tbaa !278
  %50 = load i32, ptr %4, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 8
  br i1 %52, label %53, label %84, !prof !775

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !278
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 5
  br i1 %58, label %59, label %84, !prof !776

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !278
  %62 = getelementptr inbounds %struct.rtvec_def, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !267
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %6, ptr %64, align 8, !tbaa !278
  br label %84

65:                                               ; preds = %46
  %66 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %67 = icmp eq ptr %66, %0
  br i1 %67, label %71, label %68, !prof !777

68:                                               ; preds = %65
  %69 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !267
  %70 = icmp eq ptr %69, null
  br i1 %70, label %83, label %72

71:                                               ; preds = %65
  store ptr %6, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %84

72:                                               ; preds = %68, %79
  %73 = phi ptr [ %81, %79 ], [ %69, %68 ]
  %74 = getelementptr inbounds %struct.sequence_stack, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !612
  %76 = icmp eq ptr %75, %0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.sequence_stack, ptr %73, i64 0, i32 1
  store ptr %6, ptr %78, align 8, !tbaa !612
  br label %84

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.sequence_stack, ptr %73, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !267
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %72, !llvm.loop !778

83:                                               ; preds = %79, %68
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3906, ptr noundef nonnull @.str.1) #38
  br label %84

84:                                               ; preds = %77, %83, %71, %48, %53, %59
  %85 = load i32, ptr %0, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 11
  br i1 %87, label %114, label %88, !prof !779

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !278
  %91 = icmp eq ptr %90, null
  br i1 %91, label %114, label %92, !prof !780

92:                                               ; preds = %88
  %93 = add nsw i32 %86, -7
  %94 = icmp ult i32 %93, 4
  br i1 %94, label %95, label %96, !prof !781

95:                                               ; preds = %92
  tail call void @df_set_bb_dirty(ptr noundef nonnull %90) #38
  br label %96

96:                                               ; preds = %92, %95
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 7
  %98 = load ptr, ptr %97, align 8, !tbaa !278
  %99 = load ptr, ptr %98, align 8, !tbaa !764
  %100 = icmp eq ptr %99, %0
  br i1 %100, label %101, label %108, !prof !782

101:                                              ; preds = %96
  %102 = load i32, ptr %0, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 13
  br i1 %104, label %105, label %106, !prof !783

105:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3917, ptr noundef nonnull @.str.1) #38
  br label %106

106:                                              ; preds = %101, %105
  %107 = load ptr, ptr %97, align 8, !tbaa !278
  store ptr %4, ptr %107, align 8, !tbaa !764
  br label %108

108:                                              ; preds = %106, %96
  %109 = load ptr, ptr %97, align 8, !tbaa !278
  %110 = getelementptr inbounds %struct.rtl_bb_info, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !720
  %112 = icmp eq ptr %111, %0
  br i1 %112, label %113, label %114, !prof !784

113:                                              ; preds = %108
  store ptr %6, ptr %110, align 8, !tbaa !720
  br label %114

114:                                              ; preds = %108, %113, %88, %84
  ret void
}

declare void @df_set_bb_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @add_function_usage_to(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !643 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4, !prof !646

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %9, label %8, !prof !645

8:                                                ; preds = %4, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3930, ptr noundef nonnull @.str.1) #38
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !278
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13, !prof !645

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !278
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !785

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %20

20:                                               ; preds = %9, %18
  %21 = phi ptr [ %19, %18 ], [ %10, %9 ]
  store ptr %1, ptr %21, align 8, !tbaa !278
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @delete_insns_since(ptr noundef %0) local_unnamed_addr #31 !prof !266 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %4 = select i1 %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), ptr %3
  store ptr null, ptr %4, align 8, !tbaa !278
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @reorder_insns_nobb(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #17 !prof !266 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !786

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %9, ptr %10, align 8, !tbaa !278
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !278
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !787

15:                                               ; preds = %11
  %16 = load ptr, ptr %4, align 8, !tbaa !278
  %17 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %16, ptr %17, align 8, !tbaa !278
  br label %18

18:                                               ; preds = %15, %11
  %19 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %23, !prof !787

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 8, !tbaa !278
  store ptr %22, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %23

23:                                               ; preds = %21, %18
  %24 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %28, !prof !786

26:                                               ; preds = %23
  %27 = load ptr, ptr %12, align 8, !tbaa !278
  store ptr %27, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %28

28:                                               ; preds = %26, %23
  %29 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !278
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32, !prof !788

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %33, align 8, !tbaa !278
  br label %34

34:                                               ; preds = %32, %28
  %35 = load ptr, ptr %29, align 8, !tbaa !278
  store ptr %35, ptr %12, align 8, !tbaa !278
  store ptr %2, ptr %4, align 8, !tbaa !278
  store ptr %0, ptr %29, align 8, !tbaa !278
  %36 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %38, label %39, !prof !788

38:                                               ; preds = %34
  store ptr %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %39

39:                                               ; preds = %38, %34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @reorder_insns(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !789 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !786

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %9, ptr %10, align 8, !tbaa !278
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !278
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !787

15:                                               ; preds = %11
  %16 = load ptr, ptr %4, align 8, !tbaa !278
  %17 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %16, ptr %17, align 8, !tbaa !278
  br label %18

18:                                               ; preds = %15, %11
  %19 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %23, !prof !787

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 8, !tbaa !278
  store ptr %22, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %23

23:                                               ; preds = %21, %18
  %24 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %28, !prof !786

26:                                               ; preds = %23
  %27 = load ptr, ptr %12, align 8, !tbaa !278
  store ptr %27, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %28

28:                                               ; preds = %26, %23
  %29 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !278
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32, !prof !788

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %33, align 8, !tbaa !278
  br label %34

34:                                               ; preds = %32, %28
  %35 = load ptr, ptr %29, align 8, !tbaa !278
  store ptr %35, ptr %12, align 8, !tbaa !278
  store ptr %2, ptr %4, align 8, !tbaa !278
  store ptr %0, ptr %29, align 8, !tbaa !278
  %36 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %38, label %39, !prof !788

38:                                               ; preds = %34
  store ptr %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %39

39:                                               ; preds = %34, %38
  %40 = load i32, ptr %2, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 11
  br i1 %42, label %84, label %43, !prof !786

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !278
  %46 = icmp eq ptr %45, null
  br i1 %46, label %84, label %47, !prof !788

47:                                               ; preds = %43
  tail call void @df_set_bb_dirty(ptr noundef nonnull %45) #38
  %48 = load i32, ptr %0, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 11
  br i1 %50, label %63, label %51, !prof !790

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !278
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55, !prof !790

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !278
  %58 = getelementptr inbounds %struct.rtl_bb_info, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !720
  %60 = icmp eq ptr %59, %1
  br i1 %60, label %61, label %62, !prof !790

61:                                               ; preds = %55
  store ptr %5, ptr %58, align 8, !tbaa !720
  br label %62

62:                                               ; preds = %61, %55
  tail call void @df_set_bb_dirty(ptr noundef nonnull %53) #38
  br label %63

63:                                               ; preds = %62, %51, %47
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !278
  %66 = getelementptr inbounds %struct.rtl_bb_info, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !720
  %68 = icmp eq ptr %67, %2
  br i1 %68, label %69, label %70, !prof !790

69:                                               ; preds = %63
  store ptr %1, ptr %66, align 8, !tbaa !720
  br label %70

70:                                               ; preds = %69, %63
  %71 = load ptr, ptr %12, align 8, !tbaa !278
  %72 = icmp eq ptr %71, %0
  br i1 %72, label %84, label %73, !prof !791

73:                                               ; preds = %70, %79
  %74 = phi ptr [ %81, %79 ], [ %0, %70 ]
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 11
  br i1 %77, label %79, label %78, !prof !790

78:                                               ; preds = %73
  tail call void @df_insn_change_bb(ptr noundef nonnull %74, ptr noundef nonnull %45) #38
  br label %79

79:                                               ; preds = %73, %78
  %80 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !278
  %82 = load ptr, ptr %12, align 8, !tbaa !278
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %84, label %73, !prof !792, !llvm.loop !793

84:                                               ; preds = %79, %70, %43, %39
  ret void
}

declare void @df_insn_change_bb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @emit_insn_before_noloc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !794 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6, !prof !795

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4061, ptr noundef nonnull @.str.1) #38
  br label %6

6:                                                ; preds = %3, %5
  %7 = icmp eq ptr %0, null
  br i1 %7, label %234, label %8, !prof !796

8:                                                ; preds = %6
  %9 = load i32, ptr %0, align 8
  %10 = trunc i32 %9 to i16
  %11 = add i16 %10, -7
  %12 = icmp ult i16 %11, 7
  br i1 %12, label %13, label %122, !prof !797

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = icmp eq ptr %2, null
  %16 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  br label %17

17:                                               ; preds = %13, %120
  %18 = phi ptr [ %0, %13 ], [ %20, %120 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !278
  %21 = load ptr, ptr %14, align 8, !tbaa !278
  %22 = load i32, ptr @optimize, align 4, !tbaa !282
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24, !prof !752

24:                                               ; preds = %17
  %25 = load i32, ptr %1, align 8
  %26 = and i32 %25, 134217728
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !753

28:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3785, ptr noundef nonnull @.str.1) #38
  br label %29

29:                                               ; preds = %28, %24, %17
  %30 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %21, ptr %30, align 8, !tbaa !278
  store ptr %1, ptr %19, align 8, !tbaa !278
  %31 = icmp eq ptr %21, null
  br i1 %31, label %52, label %32, !prof !754

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %18, ptr %33, align 8, !tbaa !278
  %34 = load i32, ptr %21, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 8
  br i1 %36, label %37, label %69, !prof !755

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !278
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 5
  br i1 %42, label %43, label %69, !prof !756

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !278
  %46 = load i32, ptr %45, align 8, !tbaa !393
  %47 = add nsw i32 %46, -1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.rtvec_def, ptr %45, i64 0, i32 1, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !267
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %18, ptr %51, align 8, !tbaa !278
  br label %69

52:                                               ; preds = %29
  %53 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %54 = icmp eq ptr %53, %1
  br i1 %54, label %58, label %55, !prof !757

55:                                               ; preds = %52
  %56 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !267
  %57 = icmp eq ptr %56, null
  br i1 %57, label %68, label %59

58:                                               ; preds = %52
  store ptr %18, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %69

59:                                               ; preds = %55, %64
  %60 = phi ptr [ %66, %64 ], [ %56, %55 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !758
  %62 = icmp eq ptr %61, %1
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store ptr %18, ptr %60, align 8, !tbaa !758
  br label %69

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.sequence_stack, ptr %60, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !267
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %59, !llvm.loop !759

68:                                               ; preds = %64, %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3812, ptr noundef nonnull @.str.1) #38
  br label %69

69:                                               ; preds = %68, %63, %58, %43, %37, %32
  br i1 %15, label %70, label %80, !prof !760

70:                                               ; preds = %69
  %71 = load i32, ptr %1, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 11
  br i1 %73, label %80, label %74, !prof !761

74:                                               ; preds = %70
  %75 = load i32, ptr %18, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 11
  br i1 %77, label %80, label %78, !prof !761

78:                                               ; preds = %74
  %79 = load ptr, ptr %16, align 8, !tbaa !278
  br label %80

80:                                               ; preds = %78, %74, %70, %69
  %81 = phi ptr [ %2, %69 ], [ null, %70 ], [ null, %74 ], [ %79, %78 ]
  %82 = icmp eq ptr %81, null
  br i1 %82, label %104, label %83, !prof !762

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  store ptr %81, ptr %84, align 8, !tbaa !278
  %85 = load i32, ptr %18, align 8
  %86 = and i32 %85, 65535
  %87 = add nsw i32 %86, -7
  %88 = icmp ult i32 %87, 4
  br i1 %88, label %89, label %91, !prof !763

89:                                               ; preds = %83
  %90 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %18) #38
  br label %91

91:                                               ; preds = %89, %83
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 7
  %93 = load ptr, ptr %92, align 8, !tbaa !278
  %94 = load ptr, ptr %93, align 8, !tbaa !764
  %95 = icmp eq ptr %94, %18
  br i1 %95, label %96, label %104, !prof !765

96:                                               ; preds = %91
  %97 = load i32, ptr %18, align 8
  %98 = trunc i32 %97 to i16
  switch i16 %98, label %103 [
    i16 11, label %104
    i16 13, label %99
  ]

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 1
  %101 = load i32, ptr %100, align 8, !tbaa !278
  %102 = icmp eq i32 %101, 10
  br i1 %102, label %104, label %103

103:                                              ; preds = %99, %96
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3830, ptr noundef nonnull @.str.1) #38
  br label %104

104:                                              ; preds = %103, %99, %96, %91, %80
  store ptr %18, ptr %14, align 8, !tbaa !278
  %105 = load i32, ptr %1, align 8
  %106 = and i32 %105, 65535
  %107 = icmp eq i32 %106, 8
  br i1 %107, label %108, label %120, !prof !766

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %110 = load ptr, ptr %109, align 8, !tbaa !278
  %111 = load i32, ptr %110, align 8
  %112 = and i32 %111, 65535
  %113 = icmp eq i32 %112, 5
  br i1 %113, label %114, label %120, !prof !767

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.rtx_def, ptr %110, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !278
  %117 = getelementptr inbounds %struct.rtvec_def, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !267
  %119 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %18, ptr %119, align 8, !tbaa !278
  br label %120

120:                                              ; preds = %104, %108, %114
  %121 = icmp eq ptr %20, null
  br i1 %121, label %234, label %17, !prof !798, !llvm.loop !799

122:                                              ; preds = %8
  %123 = tail call ptr @rtx_alloc_stat(i32 noundef 8) #38
  %124 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %126 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1
  store i32 %124, ptr %126, align 8, !tbaa !278
  %127 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 1
  store ptr %0, ptr %127, align 8, !tbaa !278
  %128 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 1, i32 1
  store i32 -1, ptr %128, align 8, !tbaa !278
  %129 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %129, align 8, !tbaa !278
  %130 = tail call i32 @curr_insn_locator() #38
  %131 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 2
  store i32 %130, ptr %131, align 8, !tbaa !278
  %132 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %132, align 8, !tbaa !278
  %133 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !278
  %135 = load i32, ptr @optimize, align 4, !tbaa !282
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %142, label %137, !prof !752

137:                                              ; preds = %122
  %138 = load i32, ptr %1, align 8
  %139 = and i32 %138, 134217728
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %142, label %141, !prof !753

141:                                              ; preds = %137
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3785, ptr noundef nonnull @.str.1) #38
  br label %142

142:                                              ; preds = %141, %137, %122
  %143 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %134, ptr %143, align 8, !tbaa !278
  %144 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %1, ptr %144, align 8, !tbaa !278
  %145 = icmp eq ptr %134, null
  br i1 %145, label %166, label %146, !prof !754

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %123, ptr %147, align 8, !tbaa !278
  %148 = load i32, ptr %134, align 8
  %149 = and i32 %148, 65535
  %150 = icmp eq i32 %149, 8
  br i1 %150, label %151, label %183, !prof !755

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 1
  %153 = load ptr, ptr %152, align 8, !tbaa !278
  %154 = load i32, ptr %153, align 8
  %155 = and i32 %154, 65535
  %156 = icmp eq i32 %155, 5
  br i1 %156, label %157, label %183, !prof !756

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.rtx_def, ptr %153, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !278
  %160 = load i32, ptr %159, align 8, !tbaa !393
  %161 = add nsw i32 %160, -1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.rtvec_def, ptr %159, i64 0, i32 1, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !267
  %165 = getelementptr inbounds %struct.rtx_def, ptr %164, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %123, ptr %165, align 8, !tbaa !278
  br label %183

166:                                              ; preds = %142
  %167 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %168 = icmp eq ptr %167, %1
  br i1 %168, label %172, label %169, !prof !757

169:                                              ; preds = %166
  %170 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !267
  %171 = icmp eq ptr %170, null
  br i1 %171, label %182, label %173

172:                                              ; preds = %166
  store ptr %123, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %183

173:                                              ; preds = %169, %178
  %174 = phi ptr [ %180, %178 ], [ %170, %169 ]
  %175 = load ptr, ptr %174, align 8, !tbaa !758
  %176 = icmp eq ptr %175, %1
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  store ptr %123, ptr %174, align 8, !tbaa !758
  br label %183

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.sequence_stack, ptr %174, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !267
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %173, !llvm.loop !759

182:                                              ; preds = %178, %169
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3812, ptr noundef nonnull @.str.1) #38
  br label %183

183:                                              ; preds = %182, %177, %172, %157, %151, %146
  %184 = icmp eq ptr %2, null
  br i1 %184, label %185, label %196, !prof !760

185:                                              ; preds = %183
  %186 = load i32, ptr %1, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 11
  br i1 %188, label %196, label %189, !prof !761

189:                                              ; preds = %185
  %190 = load i32, ptr %123, align 8
  %191 = and i32 %190, 65535
  %192 = icmp eq i32 %191, 11
  br i1 %192, label %196, label %193, !prof !761

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !278
  br label %196

196:                                              ; preds = %193, %189, %185, %183
  %197 = phi ptr [ %2, %183 ], [ null, %185 ], [ null, %189 ], [ %195, %193 ]
  %198 = icmp eq ptr %197, null
  br i1 %198, label %218, label %199, !prof !762

199:                                              ; preds = %196
  store ptr %197, ptr %132, align 8, !tbaa !278
  %200 = load i32, ptr %123, align 8
  %201 = and i32 %200, 65535
  %202 = add nsw i32 %201, -7
  %203 = icmp ult i32 %202, 4
  br i1 %203, label %204, label %206, !prof !763

204:                                              ; preds = %199
  %205 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %123) #38
  br label %206

206:                                              ; preds = %204, %199
  %207 = getelementptr inbounds %struct.basic_block_def, ptr %197, i64 0, i32 7
  %208 = load ptr, ptr %207, align 8, !tbaa !278
  %209 = load ptr, ptr %208, align 8, !tbaa !764
  %210 = icmp eq ptr %209, %123
  br i1 %210, label %211, label %218, !prof !765

211:                                              ; preds = %206
  %212 = load i32, ptr %123, align 8
  %213 = trunc i32 %212 to i16
  switch i16 %213, label %217 [
    i16 11, label %218
    i16 13, label %214
  ]

214:                                              ; preds = %211
  %215 = load i32, ptr %127, align 8, !tbaa !278
  %216 = icmp eq i32 %215, 10
  br i1 %216, label %218, label %217

217:                                              ; preds = %214, %211
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3830, ptr noundef nonnull @.str.1) #38
  br label %218

218:                                              ; preds = %217, %214, %211, %206, %196
  store ptr %123, ptr %133, align 8, !tbaa !278
  %219 = load i32, ptr %1, align 8
  %220 = and i32 %219, 65535
  %221 = icmp eq i32 %220, 8
  br i1 %221, label %222, label %234, !prof !766

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %224 = load ptr, ptr %223, align 8, !tbaa !278
  %225 = load i32, ptr %224, align 8
  %226 = and i32 %225, 65535
  %227 = icmp eq i32 %226, 5
  br i1 %227, label %228, label %234, !prof !767

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.rtx_def, ptr %224, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !278
  %231 = getelementptr inbounds %struct.rtvec_def, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !267
  %233 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %123, ptr %233, align 8, !tbaa !278
  br label %234

234:                                              ; preds = %120, %228, %222, %218, %6
  %235 = phi ptr [ %1, %6 ], [ %123, %218 ], [ %123, %222 ], [ %123, %228 ], [ %18, %120 ]
  ret ptr %235
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_jump_insn_before_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4108, ptr noundef nonnull @.str.1) #38
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, -7
  %9 = icmp ult i16 %8, 7
  br i1 %9, label %10, label %15

10:                                               ; preds = %5, %10
  %11 = phi ptr [ %13, %10 ], [ %0, %5 ]
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !278
  tail call void @add_insn_before(ptr noundef nonnull %11, ptr noundef %1, ptr noundef null)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %10, !llvm.loop !800

15:                                               ; preds = %5
  %16 = tail call ptr @rtx_alloc_stat(i32 noundef 9) #38
  %17 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %19 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  store i32 %17, ptr %19, align 8, !tbaa !278
  %20 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1
  store ptr %0, ptr %20, align 8, !tbaa !278
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1, i32 1
  store i32 -1, ptr %21, align 8, !tbaa !278
  %22 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %23 = tail call i32 @curr_insn_locator() #38
  %24 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 2
  store i32 %23, ptr %24, align 8, !tbaa !278
  %25 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %25, align 8, !tbaa !278
  tail call void @add_insn_before(ptr noundef %16, ptr noundef %1, ptr noundef null)
  br label %26

26:                                               ; preds = %10, %15
  %27 = phi ptr [ %16, %15 ], [ %11, %10 ]
  ret ptr %27
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_call_insn_before_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4152, ptr noundef nonnull @.str.1) #38
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, -7
  %9 = icmp ult i16 %8, 7
  br i1 %9, label %10, label %15

10:                                               ; preds = %5, %10
  %11 = phi ptr [ %13, %10 ], [ %0, %5 ]
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !278
  tail call void @add_insn_before(ptr noundef nonnull %11, ptr noundef %1, ptr noundef null)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %10, !llvm.loop !801

15:                                               ; preds = %5
  %16 = tail call ptr @rtx_alloc_stat(i32 noundef 10) #38
  %17 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %19 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  store i32 %17, ptr %19, align 8, !tbaa !278
  %20 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1
  store ptr %0, ptr %20, align 8, !tbaa !278
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1, i32 1
  store i32 -1, ptr %21, align 8, !tbaa !278
  %22 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %23 = tail call i32 @curr_insn_locator() #38
  %24 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 2
  store i32 %23, ptr %24, align 8, !tbaa !278
  %25 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %25, align 8, !tbaa !278
  tail call void @add_insn_before(ptr noundef %16, ptr noundef %1, ptr noundef null)
  br label %26

26:                                               ; preds = %10, %15
  %27 = phi ptr [ %16, %15 ], [ %11, %10 ]
  ret ptr %27
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @emit_debug_insn_before_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4196, ptr noundef nonnull @.str.1) #38
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, -7
  %9 = icmp ult i16 %8, 7
  br i1 %9, label %10, label %15

10:                                               ; preds = %5, %10
  %11 = phi ptr [ %13, %10 ], [ %0, %5 ]
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !278
  tail call void @add_insn_before(ptr noundef nonnull %11, ptr noundef %1, ptr noundef null)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %10, !llvm.loop !802

15:                                               ; preds = %5
  %16 = tail call ptr @make_debug_insn_raw(ptr noundef nonnull %0)
  tail call void @add_insn_before(ptr noundef %16, ptr noundef %1, ptr noundef null)
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %16, %15 ], [ %11, %10 ]
  ret ptr %18
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @emit_barrier_before(ptr noundef %0) local_unnamed_addr #11 !prof !266 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 11) #38
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !278
  tail call void @add_insn_before(ptr noundef %2, ptr noundef %0, ptr noundef null)
  ret ptr %2
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @emit_label_before(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #10 !prof !803 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !278
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %110, !prof !804

6:                                                ; preds = %2
  %7 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  store i32 %7, ptr %3, align 8, !tbaa !278
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !278
  %11 = load i32, ptr @optimize, align 4, !tbaa !282
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !752

13:                                               ; preds = %6
  %14 = load i32, ptr %1, align 8
  %15 = and i32 %14, 134217728
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !753

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3785, ptr noundef nonnull @.str.1) #38
  br label %18

18:                                               ; preds = %17, %13, %6
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %10, ptr %19, align 8, !tbaa !278
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %1, ptr %20, align 8, !tbaa !278
  %21 = icmp eq ptr %10, null
  br i1 %21, label %42, label %22, !prof !754

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %23, align 8, !tbaa !278
  %24 = load i32, ptr %10, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %59, !prof !755

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !278
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %33, label %59, !prof !756

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !278
  %36 = load i32, ptr %35, align 8, !tbaa !393
  %37 = add nsw i32 %36, -1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.rtvec_def, ptr %35, i64 0, i32 1, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !267
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %41, align 8, !tbaa !278
  br label %59

42:                                               ; preds = %18
  %43 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %48, label %45, !prof !757

45:                                               ; preds = %42
  %46 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !267
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %49

48:                                               ; preds = %42
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %59

49:                                               ; preds = %45, %54
  %50 = phi ptr [ %56, %54 ], [ %46, %45 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !758
  %52 = icmp eq ptr %51, %1
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store ptr %0, ptr %50, align 8, !tbaa !758
  br label %59

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.sequence_stack, ptr %50, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !267
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %49, !llvm.loop !759

58:                                               ; preds = %54, %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3812, ptr noundef nonnull @.str.1) #38
  br label %59

59:                                               ; preds = %58, %53, %48, %33, %27, %22
  %60 = load i32, ptr %1, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 11
  br i1 %62, label %70, label %63, !prof !761

63:                                               ; preds = %59
  %64 = load i32, ptr %0, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 11
  br i1 %66, label %70, label %67, !prof !761

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !278
  br label %70

70:                                               ; preds = %67, %63, %59
  %71 = phi ptr [ null, %59 ], [ null, %63 ], [ %69, %67 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %94, label %73, !prof !762

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %71, ptr %74, align 8, !tbaa !278
  %75 = load i32, ptr %0, align 8
  %76 = and i32 %75, 65535
  %77 = add nsw i32 %76, -7
  %78 = icmp ult i32 %77, 4
  br i1 %78, label %79, label %81, !prof !763

79:                                               ; preds = %73
  %80 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %0) #38
  br label %81

81:                                               ; preds = %79, %73
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !278
  %84 = load ptr, ptr %83, align 8, !tbaa !764
  %85 = icmp eq ptr %84, %0
  br i1 %85, label %86, label %94, !prof !765

86:                                               ; preds = %81
  %87 = load i32, ptr %0, align 8
  %88 = trunc i32 %87 to i16
  switch i16 %88, label %93 [
    i16 11, label %94
    i16 13, label %89
  ]

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %91 = load i32, ptr %90, align 8, !tbaa !278
  %92 = icmp eq i32 %91, 10
  br i1 %92, label %94, label %93

93:                                               ; preds = %89, %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3830, ptr noundef nonnull @.str.1) #38
  br label %94

94:                                               ; preds = %93, %89, %86, %81, %70
  store ptr %0, ptr %9, align 8, !tbaa !278
  %95 = load i32, ptr %1, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 8
  br i1 %97, label %98, label %110, !prof !766

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !278
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 65535
  %103 = icmp eq i32 %102, 5
  br i1 %103, label %104, label %110, !prof !767

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !278
  %107 = getelementptr inbounds %struct.rtvec_def, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !267
  %109 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %0, ptr %109, align 8, !tbaa !278
  br label %110

110:                                              ; preds = %104, %98, %94, %2
  ret ptr %0
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @emit_note_before(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !805 {
  %3 = tail call ptr @rtx_alloc_stat(i32 noundef 13) #38
  %4 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  store i32 %4, ptr %6, align 8, !tbaa !278
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  store i32 %0, ptr %7, align 8, !tbaa !278
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = load ptr, ptr %9, align 8, !tbaa !278
  %11 = load i32, ptr @optimize, align 4, !tbaa !282
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !752

13:                                               ; preds = %2
  %14 = load i32, ptr %1, align 8
  %15 = and i32 %14, 134217728
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !753

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3785, ptr noundef nonnull @.str.1) #38
  br label %18

18:                                               ; preds = %17, %13, %2
  %19 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %10, ptr %19, align 8, !tbaa !278
  %20 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %1, ptr %20, align 8, !tbaa !278
  %21 = icmp eq ptr %10, null
  br i1 %21, label %42, label %22, !prof !754

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %3, ptr %23, align 8, !tbaa !278
  %24 = load i32, ptr %10, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %59, !prof !755

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !278
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %33, label %59, !prof !756

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !278
  %36 = load i32, ptr %35, align 8, !tbaa !393
  %37 = add nsw i32 %36, -1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.rtvec_def, ptr %35, i64 0, i32 1, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !267
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %3, ptr %41, align 8, !tbaa !278
  br label %59

42:                                               ; preds = %18
  %43 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %48, label %45, !prof !757

45:                                               ; preds = %42
  %46 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !267
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %49

48:                                               ; preds = %42
  store ptr %3, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %59

49:                                               ; preds = %45, %54
  %50 = phi ptr [ %56, %54 ], [ %46, %45 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !758
  %52 = icmp eq ptr %51, %1
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store ptr %3, ptr %50, align 8, !tbaa !758
  br label %59

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.sequence_stack, ptr %50, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !267
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %49, !llvm.loop !759

58:                                               ; preds = %54, %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3812, ptr noundef nonnull @.str.1) #38
  br label %59

59:                                               ; preds = %58, %53, %48, %33, %27, %22
  %60 = load i32, ptr %1, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 11
  br i1 %62, label %70, label %63, !prof !761

63:                                               ; preds = %59
  %64 = load i32, ptr %3, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 11
  br i1 %66, label %70, label %67, !prof !761

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !278
  br label %70

70:                                               ; preds = %67, %63, %59
  %71 = phi ptr [ null, %59 ], [ null, %63 ], [ %69, %67 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %92, label %73, !prof !762

73:                                               ; preds = %70
  store ptr %71, ptr %8, align 8, !tbaa !278
  %74 = load i32, ptr %3, align 8
  %75 = and i32 %74, 65535
  %76 = add nsw i32 %75, -7
  %77 = icmp ult i32 %76, 4
  br i1 %77, label %78, label %80, !prof !763

78:                                               ; preds = %73
  %79 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %3) #38
  br label %80

80:                                               ; preds = %78, %73
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !278
  %83 = load ptr, ptr %82, align 8, !tbaa !764
  %84 = icmp eq ptr %83, %3
  br i1 %84, label %85, label %92, !prof !765

85:                                               ; preds = %80
  %86 = load i32, ptr %3, align 8
  %87 = trunc i32 %86 to i16
  switch i16 %87, label %91 [
    i16 11, label %92
    i16 13, label %88
  ]

88:                                               ; preds = %85
  %89 = load i32, ptr %7, align 8, !tbaa !278
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %92, label %91

91:                                               ; preds = %88, %85
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3830, ptr noundef nonnull @.str.1) #38
  br label %92

92:                                               ; preds = %91, %88, %85, %80, %70
  store ptr %3, ptr %9, align 8, !tbaa !278
  %93 = load i32, ptr %1, align 8
  %94 = and i32 %93, 65535
  %95 = icmp eq i32 %94, 8
  br i1 %95, label %96, label %108, !prof !766

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !278
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, 65535
  %101 = icmp eq i32 %100, 5
  br i1 %101, label %102, label %108, !prof !767

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !278
  %105 = getelementptr inbounds %struct.rtvec_def, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !267
  %107 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %3, ptr %107, align 8, !tbaa !278
  br label %108

108:                                              ; preds = %92, %96, %102
  ret ptr %3
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @emit_insn_after_noloc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !806 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6, !prof !710

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4331, ptr noundef nonnull @.str.1) #38
  br label %6

6:                                                ; preds = %3, %5
  %7 = icmp eq ptr %0, null
  br i1 %7, label %87, label %8, !prof !711

8:                                                ; preds = %6
  %9 = load i32, ptr %0, align 8
  %10 = trunc i32 %9 to i16
  %11 = add i16 %10, -7
  %12 = icmp ult i16 %11, 7
  br i1 %12, label %13, label %76, !prof !712

13:                                               ; preds = %8
  %14 = icmp eq ptr %2, null
  br i1 %14, label %15, label %22, !prof !807

15:                                               ; preds = %13
  %16 = load i32, ptr %1, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 11
  br i1 %18, label %22, label %19, !prof !713

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !278
  br label %22

22:                                               ; preds = %19, %15, %13
  %23 = phi ptr [ %2, %13 ], [ null, %15 ], [ %21, %19 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %58, label %25, !prof !714

25:                                               ; preds = %22
  tail call void @df_set_bb_dirty(ptr noundef nonnull %23) #38
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !278
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29, !prof !715

29:                                               ; preds = %25, %38
  %30 = phi ptr [ %40, %38 ], [ %26, %25 ]
  %31 = phi ptr [ %39, %38 ], [ %0, %25 ]
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 11
  br i1 %34, label %38, label %35, !prof !716

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 1
  store ptr %23, ptr %36, align 8, !tbaa !278
  %37 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %31) #38
  br label %38

38:                                               ; preds = %35, %29
  %39 = load ptr, ptr %30, align 8, !tbaa !278
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 2
  %41 = load ptr, ptr %40, align 8, !tbaa !278
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %29, !prof !717, !llvm.loop !718

43:                                               ; preds = %38, %25
  %44 = phi ptr [ %0, %25 ], [ %39, %38 ]
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 11
  br i1 %47, label %51, label %48, !prof !719

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 1
  store ptr %23, ptr %49, align 8, !tbaa !278
  %50 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %44) #38
  br label %51

51:                                               ; preds = %48, %43
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !278
  %54 = getelementptr inbounds %struct.rtl_bb_info, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !720
  %56 = icmp eq ptr %55, %1
  br i1 %56, label %57, label %63, !prof !722

57:                                               ; preds = %51
  store ptr %44, ptr %54, align 8, !tbaa !720
  br label %63

58:                                               ; preds = %22, %58
  %59 = phi ptr [ %61, %58 ], [ %0, %22 ]
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !278
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %58, !prof !723, !llvm.loop !724

63:                                               ; preds = %58, %57, %51
  %64 = phi ptr [ %44, %57 ], [ %44, %51 ], [ %59, %58 ]
  %65 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %66 = load ptr, ptr %65, align 8, !tbaa !278
  store ptr %0, ptr %65, align 8, !tbaa !278
  %67 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %67, align 8, !tbaa !278
  %68 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %66, ptr %68, align 8, !tbaa !278
  %69 = icmp eq ptr %66, null
  br i1 %69, label %72, label %70, !prof !725

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %64, ptr %71, align 8, !tbaa !278
  br label %72

72:                                               ; preds = %70, %63
  %73 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %74 = icmp eq ptr %73, %1
  br i1 %74, label %75, label %87, !prof !725

75:                                               ; preds = %72
  store ptr %64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %87

76:                                               ; preds = %8
  %77 = tail call ptr @rtx_alloc_stat(i32 noundef 8) #38
  %78 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %80 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  store i32 %78, ptr %80, align 8, !tbaa !278
  %81 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 1
  store ptr %0, ptr %81, align 8, !tbaa !278
  %82 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 1, i32 1
  store i32 -1, ptr %82, align 8, !tbaa !278
  %83 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %83, align 8, !tbaa !278
  %84 = tail call i32 @curr_insn_locator() #38
  %85 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 2
  store i32 %84, ptr %85, align 8, !tbaa !278
  %86 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %86, align 8, !tbaa !278
  tail call void @add_insn_after(ptr noundef %77, ptr noundef %1, ptr poison)
  br label %87

87:                                               ; preds = %75, %72, %76, %6
  %88 = phi ptr [ %1, %6 ], [ %77, %76 ], [ %64, %72 ], [ %64, %75 ]
  ret ptr %88
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @emit_insn_after_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !266 !PGOFuncName !808 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %12, !prof !807

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 11
  br i1 %8, label %12, label %9, !prof !713

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !278
  br label %12

12:                                               ; preds = %9, %5, %3
  %13 = phi ptr [ %2, %3 ], [ null, %5 ], [ %11, %9 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %48, label %15, !prof !714

15:                                               ; preds = %12
  tail call void @df_set_bb_dirty(ptr noundef nonnull %13) #38
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !278
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19, !prof !715

19:                                               ; preds = %15, %28
  %20 = phi ptr [ %30, %28 ], [ %16, %15 ]
  %21 = phi ptr [ %29, %28 ], [ %0, %15 ]
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 11
  br i1 %24, label %28, label %25, !prof !716

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 1
  store ptr %13, ptr %26, align 8, !tbaa !278
  %27 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %21) #38
  br label %28

28:                                               ; preds = %19, %25
  %29 = load ptr, ptr %20, align 8, !tbaa !278
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !278
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %19, !prof !717, !llvm.loop !718

33:                                               ; preds = %28, %15
  %34 = phi ptr [ %0, %15 ], [ %29, %28 ]
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 11
  br i1 %37, label %41, label %38, !prof !719

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 1
  store ptr %13, ptr %39, align 8, !tbaa !278
  %40 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %34) #38
  br label %41

41:                                               ; preds = %38, %33
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !278
  %44 = getelementptr inbounds %struct.rtl_bb_info, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !720
  %46 = icmp eq ptr %45, %1
  br i1 %46, label %47, label %53, !prof !722

47:                                               ; preds = %41
  store ptr %34, ptr %44, align 8, !tbaa !720
  br label %53

48:                                               ; preds = %12, %48
  %49 = phi ptr [ %51, %48 ], [ %0, %12 ]
  %50 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !278
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %48, !prof !723, !llvm.loop !724

53:                                               ; preds = %48, %41, %47
  %54 = phi ptr [ %34, %47 ], [ %34, %41 ], [ %49, %48 ]
  %55 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %56 = load ptr, ptr %55, align 8, !tbaa !278
  store ptr %0, ptr %55, align 8, !tbaa !278
  %57 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %57, align 8, !tbaa !278
  %58 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %56, ptr %58, align 8, !tbaa !278
  %59 = icmp eq ptr %56, null
  br i1 %59, label %62, label %60, !prof !725

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %54, ptr %61, align 8, !tbaa !278
  br label %62

62:                                               ; preds = %60, %53
  %63 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %64 = icmp eq ptr %63, %1
  br i1 %64, label %65, label %66, !prof !725

65:                                               ; preds = %62
  store ptr %54, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %66

66:                                               ; preds = %65, %62
  ret ptr %54
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @emit_jump_insn_after_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !266 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5, !prof !809

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4372, ptr noundef nonnull @.str.1) #38
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, -7
  %9 = icmp ult i16 %8, 7
  br i1 %9, label %10, label %12, !prof !809

10:                                               ; preds = %5
  %11 = tail call fastcc ptr @emit_insn_after_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null)
  br label %121

12:                                               ; preds = %5
  %13 = tail call ptr @rtx_alloc_stat(i32 noundef 9) #38
  %14 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %16 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  store i32 %14, ptr %16, align 8, !tbaa !278
  %17 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1
  store ptr %0, ptr %17, align 8, !tbaa !278
  %18 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1, i32 1
  store i32 -1, ptr %18, align 8, !tbaa !278
  %19 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %20 = tail call i32 @curr_insn_locator() #38
  %21 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 2
  store i32 %20, ptr %21, align 8, !tbaa !278
  %22 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %22, align 8, !tbaa !278
  %23 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !278
  %25 = load i32, ptr @optimize, align 4, !tbaa !282
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27, !prof !735

27:                                               ; preds = %12
  %28 = load i32, ptr %1, align 8
  %29 = and i32 %28, 134217728
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31, !prof !736

31:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3723, ptr noundef nonnull @.str.1) #38
  br label %32

32:                                               ; preds = %31, %27, %12
  %33 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %24, ptr %33, align 8, !tbaa !278
  %34 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %34, align 8, !tbaa !278
  %35 = icmp eq ptr %24, null
  br i1 %35, label %53, label %36, !prof !737

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %13, ptr %37, align 8, !tbaa !278
  %38 = load i32, ptr %24, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %72, !prof !738

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !278
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 5
  br i1 %46, label %47, label %72, !prof !739

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !278
  %50 = getelementptr inbounds %struct.rtvec_def, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !267
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %13, ptr %52, align 8, !tbaa !278
  br label %72

53:                                               ; preds = %32
  %54 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %55 = icmp eq ptr %54, %1
  br i1 %55, label %59, label %56, !prof !740

56:                                               ; preds = %53
  %57 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !267
  %58 = icmp eq ptr %57, null
  br i1 %58, label %71, label %60

59:                                               ; preds = %53
  store ptr %13, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %72

60:                                               ; preds = %56, %67
  %61 = phi ptr [ %69, %67 ], [ %57, %56 ]
  %62 = getelementptr inbounds %struct.sequence_stack, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !612
  %64 = icmp eq ptr %63, %1
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.sequence_stack, ptr %61, i64 0, i32 1
  store ptr %13, ptr %66, align 8, !tbaa !612
  br label %72

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.sequence_stack, ptr %61, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !267
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %60, !llvm.loop !741

71:                                               ; preds = %67, %56
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3747, ptr noundef nonnull @.str.1) #38
  br label %72

72:                                               ; preds = %71, %65, %59, %47, %41, %36
  %73 = load i32, ptr %1, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 11
  br i1 %75, label %102, label %76, !prof !735

76:                                               ; preds = %72
  %77 = load i32, ptr %13, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 11
  br i1 %79, label %102, label %80, !prof !742

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !278
  %83 = icmp eq ptr %82, null
  br i1 %83, label %102, label %84, !prof !743

84:                                               ; preds = %80
  store ptr %82, ptr %22, align 8, !tbaa !278
  %85 = add nsw i32 %78, -7
  %86 = icmp ult i32 %85, 4
  br i1 %86, label %87, label %89, !prof !744

87:                                               ; preds = %84
  %88 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %13) #38
  br label %89

89:                                               ; preds = %87, %84
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !278
  %92 = getelementptr inbounds %struct.rtl_bb_info, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !720
  %94 = icmp eq ptr %93, %1
  br i1 %94, label %95, label %102, !prof !745

95:                                               ; preds = %89
  %96 = load i32, ptr %13, align 8
  %97 = trunc i32 %96 to i16
  switch i16 %97, label %101 [
    i16 11, label %102
    i16 13, label %98
  ], !prof !746

98:                                               ; preds = %95
  %99 = load i32, ptr %17, align 8, !tbaa !278
  %100 = icmp eq i32 %99, 10
  br i1 %100, label %102, label %101, !prof !747

101:                                              ; preds = %98, %95
  store ptr %13, ptr %92, align 8, !tbaa !720
  br label %102

102:                                              ; preds = %101, %98, %95, %89, %80, %76, %72
  store ptr %13, ptr %23, align 8, !tbaa !278
  %103 = load i32, ptr %1, align 8
  %104 = and i32 %103, 65535
  %105 = icmp eq i32 %104, 8
  br i1 %105, label %106, label %121, !prof !748

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %108 = load ptr, ptr %107, align 8, !tbaa !278
  %109 = load i32, ptr %108, align 8
  %110 = and i32 %109, 65535
  %111 = icmp eq i32 %110, 5
  br i1 %111, label %112, label %121, !prof !749

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !278
  %115 = load i32, ptr %114, align 8, !tbaa !393
  %116 = add nsw i32 %115, -1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.rtvec_def, ptr %114, i64 0, i32 1, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !267
  %120 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %13, ptr %120, align 8, !tbaa !278
  br label %121

121:                                              ; preds = %112, %106, %102, %10
  %122 = phi ptr [ %11, %10 ], [ %13, %102 ], [ %13, %106 ], [ %13, %112 ]
  ret ptr %122
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_call_insn_after_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4409, ptr noundef nonnull @.str.1) #38
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, -7
  %9 = icmp ult i16 %8, 7
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call fastcc ptr @emit_insn_after_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null)
  br label %23

12:                                               ; preds = %5
  %13 = tail call ptr @rtx_alloc_stat(i32 noundef 10) #38
  %14 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %16 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  store i32 %14, ptr %16, align 8, !tbaa !278
  %17 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1
  store ptr %0, ptr %17, align 8, !tbaa !278
  %18 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1, i32 1
  store i32 -1, ptr %18, align 8, !tbaa !278
  %19 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %20 = tail call i32 @curr_insn_locator() #38
  %21 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 2
  store i32 %20, ptr %21, align 8, !tbaa !278
  %22 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %22, align 8, !tbaa !278
  tail call void @add_insn_after(ptr noundef %13, ptr noundef %1, ptr poison)
  br label %23

23:                                               ; preds = %12, %10
  %24 = phi ptr [ %13, %12 ], [ %11, %10 ]
  ret ptr %24
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_debug_insn_after_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4446, ptr noundef nonnull @.str.1) #38
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, -7
  %9 = icmp ult i16 %8, 7
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call fastcc ptr @emit_insn_after_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null)
  br label %14

12:                                               ; preds = %5
  %13 = tail call ptr @make_debug_insn_raw(ptr noundef nonnull %0)
  tail call void @add_insn_after(ptr noundef %13, ptr noundef %1, ptr poison)
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %13, %12 ], [ %11, %10 ]
  ret ptr %15
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @emit_label_after(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !278
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  store i32 %7, ptr %3, align 8, !tbaa !278
  tail call void @add_insn_after(ptr noundef %0, ptr noundef %1, ptr poison)
  br label %9

9:                                                ; preds = %6, %2
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @emit_note_after(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !810 {
  %3 = tail call ptr @rtx_alloc_stat(i32 noundef 13) #38
  %4 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  store i32 %4, ptr %6, align 8, !tbaa !278
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  store i32 %0, ptr %7, align 8, !tbaa !278
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @add_insn_after(ptr noundef %3, ptr noundef %1, ptr poison)
  ret ptr %3
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @emit_insn_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !811 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %1, %2 ], [ %9, %7 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %129 [
    i16 7, label %7
    i16 8, label %10
    i16 9, label %10
    i16 10, label %10
  ], !prof !812

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  br label %3, !llvm.loop !813

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !278
  %13 = icmp eq ptr %1, null
  br i1 %13, label %14, label %15, !prof !710

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4331, ptr noundef nonnull @.str.1) #38
  br label %15

15:                                               ; preds = %14, %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %94, label %17, !prof !711

17:                                               ; preds = %15
  %18 = load i32, ptr %0, align 8
  %19 = trunc i32 %18 to i16
  %20 = add i16 %19, -7
  %21 = icmp ult i16 %20, 7
  br i1 %21, label %22, label %83, !prof !712

22:                                               ; preds = %17
  %23 = load i32, ptr %1, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 11
  br i1 %25, label %29, label %26, !prof !713

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !278
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi ptr [ null, %22 ], [ %28, %26 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %65, label %32, !prof !714

32:                                               ; preds = %29
  tail call void @df_set_bb_dirty(ptr noundef nonnull %30) #38
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !278
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36, !prof !715

36:                                               ; preds = %32, %45
  %37 = phi ptr [ %47, %45 ], [ %33, %32 ]
  %38 = phi ptr [ %46, %45 ], [ %0, %32 ]
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 11
  br i1 %41, label %45, label %42, !prof !716

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 1
  store ptr %30, ptr %43, align 8, !tbaa !278
  %44 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %38) #38
  br label %45

45:                                               ; preds = %42, %36
  %46 = load ptr, ptr %37, align 8, !tbaa !278
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !278
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %36, !prof !717, !llvm.loop !718

50:                                               ; preds = %45, %32
  %51 = phi ptr [ %0, %32 ], [ %46, %45 ]
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 11
  br i1 %54, label %58, label %55, !prof !719

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 1
  store ptr %30, ptr %56, align 8, !tbaa !278
  %57 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %51) #38
  br label %58

58:                                               ; preds = %55, %50
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !278
  %61 = getelementptr inbounds %struct.rtl_bb_info, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !720
  %63 = icmp eq ptr %62, %1
  br i1 %63, label %64, label %70, !prof !722

64:                                               ; preds = %58
  store ptr %51, ptr %61, align 8, !tbaa !720
  br label %70

65:                                               ; preds = %29, %65
  %66 = phi ptr [ %68, %65 ], [ %0, %29 ]
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 2
  %68 = load ptr, ptr %67, align 8, !tbaa !278
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %65, !prof !723, !llvm.loop !724

70:                                               ; preds = %65, %64, %58
  %71 = phi ptr [ %51, %64 ], [ %51, %58 ], [ %66, %65 ]
  %72 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %73 = load ptr, ptr %72, align 8, !tbaa !278
  store ptr %0, ptr %72, align 8, !tbaa !278
  %74 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %74, align 8, !tbaa !278
  %75 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %73, ptr %75, align 8, !tbaa !278
  %76 = icmp eq ptr %73, null
  br i1 %76, label %79, label %77, !prof !725

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %71, ptr %78, align 8, !tbaa !278
  br label %79

79:                                               ; preds = %77, %70
  %80 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %81 = icmp eq ptr %80, %1
  br i1 %81, label %82, label %94, !prof !725

82:                                               ; preds = %79
  store ptr %71, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %94

83:                                               ; preds = %17
  %84 = tail call ptr @rtx_alloc_stat(i32 noundef 8) #38
  %85 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %87 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  store i32 %85, ptr %87, align 8, !tbaa !278
  %88 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 1
  store ptr %0, ptr %88, align 8, !tbaa !278
  %89 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 1, i32 1
  store i32 -1, ptr %89, align 8, !tbaa !278
  %90 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %90, align 8, !tbaa !278
  %91 = tail call i32 @curr_insn_locator() #38
  %92 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 2
  store i32 %91, ptr %92, align 8, !tbaa !278
  %93 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %93, align 8, !tbaa !278
  tail call void @add_insn_after(ptr noundef %84, ptr noundef %1, ptr poison)
  br label %94

94:                                               ; preds = %83, %82, %79, %15
  %95 = phi ptr [ %1, %15 ], [ %84, %83 ], [ %71, %79 ], [ %71, %82 ]
  %96 = icmp ne ptr %0, null
  %97 = icmp ne i32 %12, 0
  %98 = and i1 %96, %97
  br i1 %98, label %99, label %131, !prof !726

99:                                               ; preds = %94
  %100 = load i32, ptr @reload_completed, align 4
  %101 = icmp eq i32 %100, 0
  br label %102

102:                                              ; preds = %127, %99
  %103 = phi ptr [ %105, %127 ], [ %1, %99 ]
  %104 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1, i32 0, i32 0, i64 2
  %105 = load ptr, ptr %104, align 8, !tbaa !278
  %106 = load i32, ptr %105, align 8
  %107 = trunc i32 %106 to i16
  switch i16 %107, label %118 [
    i16 10, label %119
    i16 9, label %119
    i16 8, label %108
  ], !prof !727

108:                                              ; preds = %102
  br i1 %101, label %119, label %109, !prof !728

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !278
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 24
  br i1 %114, label %119, label %115, !prof !729

115:                                              ; preds = %109
  %116 = icmp ne i32 %113, 25
  %117 = zext i1 %116 to i32
  br label %119

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %118, %115, %109, %108, %102, %102
  %120 = phi i32 [ 1, %108 ], [ 0, %109 ], [ %117, %115 ], [ 1, %102 ], [ 0, %118 ], [ 1, %102 ]
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122, !prof !730

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !278
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127, !prof !731

126:                                              ; preds = %122
  store i32 %12, ptr %123, align 8, !tbaa !278
  br label %127

127:                                              ; preds = %126, %122, %119
  %128 = icmp eq ptr %105, %95
  br i1 %128, label %131, label %102, !prof !732, !llvm.loop !733

129:                                              ; preds = %3
  %130 = tail call ptr @emit_insn_after_noloc(ptr noundef %0, ptr noundef %1, ptr noundef null)
  br label %131

131:                                              ; preds = %127, %94, %129
  %132 = phi ptr [ %130, %129 ], [ %95, %94 ], [ %95, %127 ]
  ret ptr %132
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @emit_jump_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !814 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6, !prof !809

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4372, ptr noundef nonnull @.str.1) #38
  br label %6

6:                                                ; preds = %5, %3
  %7 = load i32, ptr %0, align 8
  %8 = trunc i32 %7 to i16
  %9 = add i16 %8, -7
  %10 = icmp ult i16 %9, 7
  br i1 %10, label %11, label %13, !prof !809

11:                                               ; preds = %6
  %12 = tail call fastcc ptr @emit_insn_after_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null)
  br label %122

13:                                               ; preds = %6
  %14 = tail call ptr @rtx_alloc_stat(i32 noundef 9) #38
  %15 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %17 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  store i32 %15, ptr %17, align 8, !tbaa !278
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  store ptr %0, ptr %18, align 8, !tbaa !278
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1, i32 1
  store i32 -1, ptr %19, align 8, !tbaa !278
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %21 = tail call i32 @curr_insn_locator() #38
  %22 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 2
  store i32 %21, ptr %22, align 8, !tbaa !278
  %23 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %23, align 8, !tbaa !278
  %24 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !278
  %26 = load i32, ptr @optimize, align 4, !tbaa !282
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28, !prof !735

28:                                               ; preds = %13
  %29 = load i32, ptr %1, align 8
  %30 = and i32 %29, 134217728
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32, !prof !736

32:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3723, ptr noundef nonnull @.str.1) #38
  br label %33

33:                                               ; preds = %32, %28, %13
  %34 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %25, ptr %34, align 8, !tbaa !278
  %35 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %35, align 8, !tbaa !278
  %36 = icmp eq ptr %25, null
  br i1 %36, label %54, label %37, !prof !737

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %14, ptr %38, align 8, !tbaa !278
  %39 = load i32, ptr %25, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %42, label %73, !prof !738

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !278
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 5
  br i1 %47, label %48, label %73, !prof !739

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !278
  %51 = getelementptr inbounds %struct.rtvec_def, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !267
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %14, ptr %53, align 8, !tbaa !278
  br label %73

54:                                               ; preds = %33
  %55 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %56 = icmp eq ptr %55, %1
  br i1 %56, label %60, label %57, !prof !740

57:                                               ; preds = %54
  %58 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !267
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %61

60:                                               ; preds = %54
  store ptr %14, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %73

61:                                               ; preds = %57, %68
  %62 = phi ptr [ %70, %68 ], [ %58, %57 ]
  %63 = getelementptr inbounds %struct.sequence_stack, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !612
  %65 = icmp eq ptr %64, %1
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.sequence_stack, ptr %62, i64 0, i32 1
  store ptr %14, ptr %67, align 8, !tbaa !612
  br label %73

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.sequence_stack, ptr %62, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !267
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %61, !llvm.loop !741

72:                                               ; preds = %68, %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3747, ptr noundef nonnull @.str.1) #38
  br label %73

73:                                               ; preds = %72, %66, %60, %48, %42, %37
  %74 = load i32, ptr %1, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 11
  br i1 %76, label %103, label %77, !prof !735

77:                                               ; preds = %73
  %78 = load i32, ptr %14, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 11
  br i1 %80, label %103, label %81, !prof !742

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !278
  %84 = icmp eq ptr %83, null
  br i1 %84, label %103, label %85, !prof !743

85:                                               ; preds = %81
  store ptr %83, ptr %23, align 8, !tbaa !278
  %86 = add nsw i32 %79, -7
  %87 = icmp ult i32 %86, 4
  br i1 %87, label %88, label %90, !prof !744

88:                                               ; preds = %85
  %89 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %14) #38
  br label %90

90:                                               ; preds = %88, %85
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 7
  %92 = load ptr, ptr %91, align 8, !tbaa !278
  %93 = getelementptr inbounds %struct.rtl_bb_info, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !720
  %95 = icmp eq ptr %94, %1
  br i1 %95, label %96, label %103, !prof !745

96:                                               ; preds = %90
  %97 = load i32, ptr %14, align 8
  %98 = trunc i32 %97 to i16
  switch i16 %98, label %102 [
    i16 11, label %103
    i16 13, label %99
  ], !prof !746

99:                                               ; preds = %96
  %100 = load i32, ptr %18, align 8, !tbaa !278
  %101 = icmp eq i32 %100, 10
  br i1 %101, label %103, label %102, !prof !747

102:                                              ; preds = %99, %96
  store ptr %14, ptr %93, align 8, !tbaa !720
  br label %103

103:                                              ; preds = %102, %99, %96, %90, %81, %77, %73
  store ptr %14, ptr %24, align 8, !tbaa !278
  %104 = load i32, ptr %1, align 8
  %105 = and i32 %104, 65535
  %106 = icmp eq i32 %105, 8
  br i1 %106, label %107, label %122, !prof !748

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !278
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 5
  br i1 %112, label %113, label %122, !prof !749

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !278
  %116 = load i32, ptr %115, align 8, !tbaa !393
  %117 = add nsw i32 %116, -1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.rtvec_def, ptr %115, i64 0, i32 1, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !267
  %121 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %14, ptr %121, align 8, !tbaa !278
  br label %122

122:                                              ; preds = %11, %103, %107, %113
  %123 = phi ptr [ %12, %11 ], [ %14, %103 ], [ %14, %107 ], [ %14, %113 ]
  %124 = icmp eq i32 %2, 0
  br i1 %124, label %155, label %125, !prof !815

125:                                              ; preds = %122
  %126 = load i32, ptr @reload_completed, align 4
  br label %127

127:                                              ; preds = %125, %153
  %128 = phi ptr [ %130, %153 ], [ %1, %125 ]
  %129 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1, i32 0, i32 0, i64 2
  %130 = load ptr, ptr %129, align 8, !tbaa !278
  %131 = load i32, ptr %130, align 8
  %132 = trunc i32 %131 to i16
  switch i16 %132, label %144 [
    i16 10, label %145
    i16 9, label %145
    i16 8, label %133
  ], !prof !816

133:                                              ; preds = %127
  %134 = icmp eq i32 %126, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !278
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 24
  br i1 %140, label %145, label %141

141:                                              ; preds = %135
  %142 = icmp ne i32 %139, 25
  %143 = zext i1 %142 to i32
  br label %145

144:                                              ; preds = %127
  br label %145

145:                                              ; preds = %127, %127, %133, %135, %141, %144
  %146 = phi i32 [ 1, %133 ], [ 0, %135 ], [ %143, %141 ], [ 1, %127 ], [ 0, %144 ], [ 1, %127 ]
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %148, !prof !817

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1, i32 0, i32 2
  %150 = load i32, ptr %149, align 8, !tbaa !278
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153, !prof !818

152:                                              ; preds = %148
  store i32 %2, ptr %149, align 8, !tbaa !278
  br label %153

153:                                              ; preds = %145, %152, %148
  %154 = icmp eq ptr %130, %123
  br i1 %154, label %155, label %127, !prof !818, !llvm.loop !819

155:                                              ; preds = %153, %122
  ret ptr %123
}

; Function Attrs: nounwind uwtable
define dso_local ptr @emit_jump_insn_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !266 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %1, %2 ], [ %9, %7 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %14 [
    i16 7, label %7
    i16 8, label %10
    i16 9, label %10
    i16 10, label %10
  ], !prof !820

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  br label %3, !llvm.loop !821

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !278
  %13 = tail call ptr @emit_jump_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %12)
  br label %16

14:                                               ; preds = %3
  %15 = tail call ptr @emit_jump_insn_after_noloc(ptr noundef %0, ptr noundef %1)
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_call_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 !prof !266 {
  %4 = tail call ptr @emit_call_insn_after_noloc(ptr noundef %0, ptr noundef %1)
  %5 = icmp ne ptr %0, null
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %38

8:                                                ; preds = %3
  %9 = load i32, ptr @reload_completed, align 4
  %10 = icmp eq i32 %9, 0
  br label %11

11:                                               ; preds = %8, %36
  %12 = phi ptr [ %14, %36 ], [ %1, %8 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !278
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %27 [
    i16 10, label %28
    i16 9, label %28
    i16 8, label %17
  ]

17:                                               ; preds = %11
  br i1 %10, label %28, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !278
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 24
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = icmp ne i32 %22, 25
  %26 = zext i1 %25 to i32
  br label %28

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %11, %11, %17, %18, %24, %27
  %29 = phi i32 [ 1, %17 ], [ 0, %18 ], [ %26, %24 ], [ 1, %11 ], [ 0, %27 ], [ 1, %11 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !278
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 %2, ptr %32, align 8, !tbaa !278
  br label %36

36:                                               ; preds = %28, %35, %31
  %37 = icmp eq ptr %14, %4
  br i1 %37, label %38, label %11, !llvm.loop !822

38:                                               ; preds = %36, %3
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_call_insn_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %1, %2 ], [ %9, %7 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %14 [
    i16 7, label %7
    i16 8, label %10
    i16 9, label %10
    i16 10, label %10
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  br label %3, !llvm.loop !823

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !278
  %13 = tail call ptr @emit_call_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %12)
  br label %16

14:                                               ; preds = %3
  %15 = tail call ptr @emit_call_insn_after_noloc(ptr noundef %0, ptr noundef %1)
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_debug_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 !prof !266 {
  %4 = tail call ptr @emit_debug_insn_after_noloc(ptr noundef %0, ptr noundef %1)
  %5 = icmp ne ptr %0, null
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %38

8:                                                ; preds = %3
  %9 = load i32, ptr @reload_completed, align 4
  %10 = icmp eq i32 %9, 0
  br label %11

11:                                               ; preds = %8, %36
  %12 = phi ptr [ %14, %36 ], [ %1, %8 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !278
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %27 [
    i16 10, label %28
    i16 9, label %28
    i16 8, label %17
  ]

17:                                               ; preds = %11
  br i1 %10, label %28, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !278
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 24
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = icmp ne i32 %22, 25
  %26 = zext i1 %25 to i32
  br label %28

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %11, %11, %17, %18, %24, %27
  %29 = phi i32 [ 1, %17 ], [ 0, %18 ], [ %26, %24 ], [ 1, %11 ], [ 0, %27 ], [ 1, %11 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !278
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 %2, ptr %32, align 8, !tbaa !278
  br label %36

36:                                               ; preds = %28, %35, %31
  %37 = icmp eq ptr %14, %4
  br i1 %37, label %38, label %11, !llvm.loop !824

38:                                               ; preds = %36, %3
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_debug_insn_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !278
  %10 = tail call ptr @emit_debug_insn_after_setloc(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %9)
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @emit_debug_insn_after_noloc(ptr noundef %0, ptr noundef nonnull %1)
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %10, %7 ], [ %12, %11 ]
  ret ptr %14
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @emit_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !584 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8, !prof !795

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4061, ptr noundef nonnull @.str.1) #38
  br label %8

8:                                                ; preds = %7, %3
  %9 = icmp eq ptr %0, null
  br i1 %9, label %230, label %10, !prof !796

10:                                               ; preds = %8
  %11 = load i32, ptr %0, align 8
  %12 = trunc i32 %11 to i16
  %13 = add i16 %12, -7
  %14 = icmp ult i16 %13, 7
  br i1 %14, label %15, label %121, !prof !797

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  br label %17

17:                                               ; preds = %119, %15
  %18 = phi ptr [ %0, %15 ], [ %20, %119 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !278
  %21 = load ptr, ptr %4, align 8, !tbaa !278
  %22 = load i32, ptr @optimize, align 4, !tbaa !282
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24, !prof !752

24:                                               ; preds = %17
  %25 = load i32, ptr %1, align 8
  %26 = and i32 %25, 134217728
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !753

28:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3785, ptr noundef nonnull @.str.1) #38
  br label %29

29:                                               ; preds = %28, %24, %17
  %30 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %21, ptr %30, align 8, !tbaa !278
  store ptr %1, ptr %19, align 8, !tbaa !278
  %31 = icmp eq ptr %21, null
  br i1 %31, label %52, label %32, !prof !754

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %18, ptr %33, align 8, !tbaa !278
  %34 = load i32, ptr %21, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 8
  br i1 %36, label %37, label %69, !prof !755

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !278
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 5
  br i1 %42, label %43, label %69, !prof !756

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !278
  %46 = load i32, ptr %45, align 8, !tbaa !393
  %47 = add nsw i32 %46, -1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.rtvec_def, ptr %45, i64 0, i32 1, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !267
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %18, ptr %51, align 8, !tbaa !278
  br label %69

52:                                               ; preds = %29
  %53 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %54 = icmp eq ptr %53, %1
  br i1 %54, label %58, label %55, !prof !757

55:                                               ; preds = %52
  %56 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !267
  %57 = icmp eq ptr %56, null
  br i1 %57, label %68, label %59

58:                                               ; preds = %52
  store ptr %18, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %69

59:                                               ; preds = %55, %64
  %60 = phi ptr [ %66, %64 ], [ %56, %55 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !758
  %62 = icmp eq ptr %61, %1
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store ptr %18, ptr %60, align 8, !tbaa !758
  br label %69

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.sequence_stack, ptr %60, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !267
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %59, !llvm.loop !759

68:                                               ; preds = %64, %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3812, ptr noundef nonnull @.str.1) #38
  br label %69

69:                                               ; preds = %68, %63, %58, %43, %37, %32
  %70 = load i32, ptr %1, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 11
  br i1 %72, label %79, label %73, !prof !761

73:                                               ; preds = %69
  %74 = load i32, ptr %18, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 11
  br i1 %76, label %79, label %77, !prof !761

77:                                               ; preds = %73
  %78 = load ptr, ptr %16, align 8, !tbaa !278
  br label %79

79:                                               ; preds = %77, %73, %69
  %80 = phi ptr [ null, %69 ], [ null, %73 ], [ %78, %77 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %103, label %82, !prof !762

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  store ptr %80, ptr %83, align 8, !tbaa !278
  %84 = load i32, ptr %18, align 8
  %85 = and i32 %84, 65535
  %86 = add nsw i32 %85, -7
  %87 = icmp ult i32 %86, 4
  br i1 %87, label %88, label %90, !prof !763

88:                                               ; preds = %82
  %89 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %18) #38
  br label %90

90:                                               ; preds = %88, %82
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 7
  %92 = load ptr, ptr %91, align 8, !tbaa !278
  %93 = load ptr, ptr %92, align 8, !tbaa !764
  %94 = icmp eq ptr %93, %18
  br i1 %94, label %95, label %103, !prof !765

95:                                               ; preds = %90
  %96 = load i32, ptr %18, align 8
  %97 = trunc i32 %96 to i16
  switch i16 %97, label %102 [
    i16 11, label %103
    i16 13, label %98
  ]

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 1
  %100 = load i32, ptr %99, align 8, !tbaa !278
  %101 = icmp eq i32 %100, 10
  br i1 %101, label %103, label %102

102:                                              ; preds = %98, %95
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3830, ptr noundef nonnull @.str.1) #38
  br label %103

103:                                              ; preds = %102, %98, %95, %90, %79
  store ptr %18, ptr %4, align 8, !tbaa !278
  %104 = load i32, ptr %1, align 8
  %105 = and i32 %104, 65535
  %106 = icmp eq i32 %105, 8
  br i1 %106, label %107, label %119, !prof !766

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !278
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 5
  br i1 %112, label %113, label %119, !prof !767

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !278
  %116 = getelementptr inbounds %struct.rtvec_def, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !267
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %18, ptr %118, align 8, !tbaa !278
  br label %119

119:                                              ; preds = %113, %107, %103
  %120 = icmp eq ptr %20, null
  br i1 %120, label %230, label %17, !prof !798, !llvm.loop !799

121:                                              ; preds = %10
  %122 = tail call ptr @rtx_alloc_stat(i32 noundef 8) #38
  %123 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %125 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  store i32 %123, ptr %125, align 8, !tbaa !278
  %126 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 1
  store ptr %0, ptr %126, align 8, !tbaa !278
  %127 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 1, i32 1
  store i32 -1, ptr %127, align 8, !tbaa !278
  %128 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %128, align 8, !tbaa !278
  %129 = tail call i32 @curr_insn_locator() #38
  %130 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 2
  store i32 %129, ptr %130, align 8, !tbaa !278
  %131 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %131, align 8, !tbaa !278
  %132 = load ptr, ptr %4, align 8, !tbaa !278
  %133 = load i32, ptr @optimize, align 4, !tbaa !282
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %140, label %135, !prof !752

135:                                              ; preds = %121
  %136 = load i32, ptr %1, align 8
  %137 = and i32 %136, 134217728
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %140, label %139, !prof !753

139:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3785, ptr noundef nonnull @.str.1) #38
  br label %140

140:                                              ; preds = %139, %135, %121
  %141 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %132, ptr %141, align 8, !tbaa !278
  %142 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %1, ptr %142, align 8, !tbaa !278
  %143 = icmp eq ptr %132, null
  br i1 %143, label %164, label %144, !prof !754

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %122, ptr %145, align 8, !tbaa !278
  %146 = load i32, ptr %132, align 8
  %147 = and i32 %146, 65535
  %148 = icmp eq i32 %147, 8
  br i1 %148, label %149, label %181, !prof !755

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 1
  %151 = load ptr, ptr %150, align 8, !tbaa !278
  %152 = load i32, ptr %151, align 8
  %153 = and i32 %152, 65535
  %154 = icmp eq i32 %153, 5
  br i1 %154, label %155, label %181, !prof !756

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !278
  %158 = load i32, ptr %157, align 8, !tbaa !393
  %159 = add nsw i32 %158, -1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.rtvec_def, ptr %157, i64 0, i32 1, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !267
  %163 = getelementptr inbounds %struct.rtx_def, ptr %162, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %122, ptr %163, align 8, !tbaa !278
  br label %181

164:                                              ; preds = %140
  %165 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %166 = icmp eq ptr %165, %1
  br i1 %166, label %170, label %167, !prof !757

167:                                              ; preds = %164
  %168 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !267
  %169 = icmp eq ptr %168, null
  br i1 %169, label %180, label %171

170:                                              ; preds = %164
  store ptr %122, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %181

171:                                              ; preds = %167, %176
  %172 = phi ptr [ %178, %176 ], [ %168, %167 ]
  %173 = load ptr, ptr %172, align 8, !tbaa !758
  %174 = icmp eq ptr %173, %1
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store ptr %122, ptr %172, align 8, !tbaa !758
  br label %181

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.sequence_stack, ptr %172, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !267
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %171, !llvm.loop !759

180:                                              ; preds = %176, %167
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3812, ptr noundef nonnull @.str.1) #38
  br label %181

181:                                              ; preds = %180, %175, %170, %155, %149, %144
  %182 = load i32, ptr %1, align 8
  %183 = and i32 %182, 65535
  %184 = icmp eq i32 %183, 11
  br i1 %184, label %192, label %185, !prof !761

185:                                              ; preds = %181
  %186 = load i32, ptr %122, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 11
  br i1 %188, label %192, label %189, !prof !761

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !278
  br label %192

192:                                              ; preds = %189, %185, %181
  %193 = phi ptr [ null, %181 ], [ null, %185 ], [ %191, %189 ]
  %194 = icmp eq ptr %193, null
  br i1 %194, label %214, label %195, !prof !762

195:                                              ; preds = %192
  store ptr %193, ptr %131, align 8, !tbaa !278
  %196 = load i32, ptr %122, align 8
  %197 = and i32 %196, 65535
  %198 = add nsw i32 %197, -7
  %199 = icmp ult i32 %198, 4
  br i1 %199, label %200, label %202, !prof !763

200:                                              ; preds = %195
  %201 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %122) #38
  br label %202

202:                                              ; preds = %200, %195
  %203 = getelementptr inbounds %struct.basic_block_def, ptr %193, i64 0, i32 7
  %204 = load ptr, ptr %203, align 8, !tbaa !278
  %205 = load ptr, ptr %204, align 8, !tbaa !764
  %206 = icmp eq ptr %205, %122
  br i1 %206, label %207, label %214, !prof !765

207:                                              ; preds = %202
  %208 = load i32, ptr %122, align 8
  %209 = trunc i32 %208 to i16
  switch i16 %209, label %213 [
    i16 11, label %214
    i16 13, label %210
  ]

210:                                              ; preds = %207
  %211 = load i32, ptr %126, align 8, !tbaa !278
  %212 = icmp eq i32 %211, 10
  br i1 %212, label %214, label %213

213:                                              ; preds = %210, %207
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3830, ptr noundef nonnull @.str.1) #38
  br label %214

214:                                              ; preds = %213, %210, %207, %202, %192
  store ptr %122, ptr %4, align 8, !tbaa !278
  %215 = load i32, ptr %1, align 8
  %216 = and i32 %215, 65535
  %217 = icmp eq i32 %216, 8
  br i1 %217, label %218, label %230, !prof !766

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %220 = load ptr, ptr %219, align 8, !tbaa !278
  %221 = load i32, ptr %220, align 8
  %222 = and i32 %221, 65535
  %223 = icmp eq i32 %222, 5
  br i1 %223, label %224, label %230, !prof !767

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.rtx_def, ptr %220, i64 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !278
  %227 = getelementptr inbounds %struct.rtvec_def, ptr %226, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !267
  %229 = getelementptr inbounds %struct.rtx_def, ptr %228, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %122, ptr %229, align 8, !tbaa !278
  br label %230

230:                                              ; preds = %119, %8, %214, %218, %224
  %231 = phi ptr [ %1, %8 ], [ %122, %214 ], [ %122, %218 ], [ %122, %224 ], [ %18, %119 ]
  %232 = icmp ne ptr %0, null
  %233 = icmp ne i32 %2, 0
  %234 = and i1 %232, %233
  br i1 %234, label %235, label %268, !prof !825

235:                                              ; preds = %230
  %236 = icmp eq ptr %5, null
  %237 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %238 = select i1 %236, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), ptr %237, !prof !826
  %239 = load i32, ptr @reload_completed, align 4
  %240 = icmp eq i32 %239, 0
  br label %241

241:                                              ; preds = %265, %235
  %242 = phi ptr [ %238, %235 ], [ %267, %265 ]
  %243 = load ptr, ptr %242, align 8, !tbaa !278
  %244 = load i32, ptr %243, align 8
  %245 = trunc i32 %244 to i16
  switch i16 %245, label %256 [
    i16 10, label %257
    i16 9, label %257
    i16 8, label %246
  ], !prof !827

246:                                              ; preds = %241
  br i1 %240, label %257, label %247, !prof !828

247:                                              ; preds = %246
  %248 = getelementptr inbounds %struct.rtx_def, ptr %243, i64 1
  %249 = load ptr, ptr %248, align 8, !tbaa !278
  %250 = load i32, ptr %249, align 8
  %251 = and i32 %250, 65535
  %252 = icmp eq i32 %251, 24
  br i1 %252, label %257, label %253, !prof !829

253:                                              ; preds = %247
  %254 = icmp ne i32 %251, 25
  %255 = zext i1 %254 to i32
  br label %257

256:                                              ; preds = %241
  br label %257

257:                                              ; preds = %241, %241, %246, %247, %253, %256
  %258 = phi i32 [ 1, %246 ], [ 0, %247 ], [ %255, %253 ], [ 1, %241 ], [ 0, %256 ], [ 1, %241 ]
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %265, label %260, !prof !830

260:                                              ; preds = %257
  %261 = getelementptr inbounds %struct.rtx_def, ptr %243, i64 0, i32 1, i32 0, i32 2
  %262 = load i32, ptr %261, align 8, !tbaa !278
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %265, !prof !831

264:                                              ; preds = %260
  store i32 %2, ptr %261, align 8, !tbaa !278
  br label %265

265:                                              ; preds = %264, %260, %257
  %266 = icmp eq ptr %243, %231
  %267 = getelementptr inbounds %struct.rtx_def, ptr %243, i64 0, i32 1, i32 0, i32 0, i64 2
  br i1 %266, label %268, label %241, !prof !832, !llvm.loop !833

268:                                              ; preds = %265, %230
  ret ptr %231
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @emit_insn_before(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !834 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %1, %2 ], [ %9, %7 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %277 [
    i16 7, label %7
    i16 8, label %10
    i16 9, label %10
    i16 10, label %10
  ], !prof !835

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  br label %3, !llvm.loop !836

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !278
  %13 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !278
  %15 = icmp eq ptr %1, null
  br i1 %15, label %16, label %17, !prof !795

16:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4061, ptr noundef nonnull @.str.1) #38
  br label %17

17:                                               ; preds = %16, %10
  %18 = icmp eq ptr %0, null
  br i1 %18, label %239, label %19, !prof !796

19:                                               ; preds = %17
  %20 = load i32, ptr %0, align 8
  %21 = trunc i32 %20 to i16
  %22 = add i16 %21, -7
  %23 = icmp ult i16 %22, 7
  br i1 %23, label %24, label %130, !prof !797

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  br label %26

26:                                               ; preds = %128, %24
  %27 = phi ptr [ %0, %24 ], [ %29, %128 ]
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !278
  %30 = load ptr, ptr %13, align 8, !tbaa !278
  %31 = load i32, ptr @optimize, align 4, !tbaa !282
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33, !prof !752

33:                                               ; preds = %26
  %34 = load i32, ptr %1, align 8
  %35 = and i32 %34, 134217728
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37, !prof !753

37:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3785, ptr noundef nonnull @.str.1) #38
  br label %38

38:                                               ; preds = %37, %33, %26
  %39 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %30, ptr %39, align 8, !tbaa !278
  store ptr %1, ptr %28, align 8, !tbaa !278
  %40 = icmp eq ptr %30, null
  br i1 %40, label %61, label %41, !prof !754

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %27, ptr %42, align 8, !tbaa !278
  %43 = load i32, ptr %30, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %46, label %78, !prof !755

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !278
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %52, label %78, !prof !756

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !278
  %55 = load i32, ptr %54, align 8, !tbaa !393
  %56 = add nsw i32 %55, -1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.rtvec_def, ptr %54, i64 0, i32 1, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !267
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %27, ptr %60, align 8, !tbaa !278
  br label %78

61:                                               ; preds = %38
  %62 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %63 = icmp eq ptr %62, %1
  br i1 %63, label %67, label %64, !prof !757

64:                                               ; preds = %61
  %65 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !267
  %66 = icmp eq ptr %65, null
  br i1 %66, label %77, label %68

67:                                               ; preds = %61
  store ptr %27, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %78

68:                                               ; preds = %64, %73
  %69 = phi ptr [ %75, %73 ], [ %65, %64 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !758
  %71 = icmp eq ptr %70, %1
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store ptr %27, ptr %69, align 8, !tbaa !758
  br label %78

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.sequence_stack, ptr %69, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !267
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %68, !llvm.loop !759

77:                                               ; preds = %73, %64
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3812, ptr noundef nonnull @.str.1) #38
  br label %78

78:                                               ; preds = %77, %72, %67, %52, %46, %41
  %79 = load i32, ptr %1, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 11
  br i1 %81, label %88, label %82, !prof !761

82:                                               ; preds = %78
  %83 = load i32, ptr %27, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 11
  br i1 %85, label %88, label %86, !prof !761

86:                                               ; preds = %82
  %87 = load ptr, ptr %25, align 8, !tbaa !278
  br label %88

88:                                               ; preds = %86, %82, %78
  %89 = phi ptr [ null, %78 ], [ null, %82 ], [ %87, %86 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %112, label %91, !prof !762

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 1
  store ptr %89, ptr %92, align 8, !tbaa !278
  %93 = load i32, ptr %27, align 8
  %94 = and i32 %93, 65535
  %95 = add nsw i32 %94, -7
  %96 = icmp ult i32 %95, 4
  br i1 %96, label %97, label %99, !prof !763

97:                                               ; preds = %91
  %98 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %27) #38
  br label %99

99:                                               ; preds = %97, %91
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %89, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !278
  %102 = load ptr, ptr %101, align 8, !tbaa !764
  %103 = icmp eq ptr %102, %27
  br i1 %103, label %104, label %112, !prof !765

104:                                              ; preds = %99
  %105 = load i32, ptr %27, align 8
  %106 = trunc i32 %105 to i16
  switch i16 %106, label %111 [
    i16 11, label %112
    i16 13, label %107
  ]

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1
  %109 = load i32, ptr %108, align 8, !tbaa !278
  %110 = icmp eq i32 %109, 10
  br i1 %110, label %112, label %111

111:                                              ; preds = %107, %104
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3830, ptr noundef nonnull @.str.1) #38
  br label %112

112:                                              ; preds = %111, %107, %104, %99, %88
  store ptr %27, ptr %13, align 8, !tbaa !278
  %113 = load i32, ptr %1, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 8
  br i1 %115, label %116, label %128, !prof !766

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %118 = load ptr, ptr %117, align 8, !tbaa !278
  %119 = load i32, ptr %118, align 8
  %120 = and i32 %119, 65535
  %121 = icmp eq i32 %120, 5
  br i1 %121, label %122, label %128, !prof !767

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !278
  %125 = getelementptr inbounds %struct.rtvec_def, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !267
  %127 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %27, ptr %127, align 8, !tbaa !278
  br label %128

128:                                              ; preds = %122, %116, %112
  %129 = icmp eq ptr %29, null
  br i1 %129, label %239, label %26, !prof !798, !llvm.loop !799

130:                                              ; preds = %19
  %131 = tail call ptr @rtx_alloc_stat(i32 noundef 8) #38
  %132 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %133 = add nsw i32 %132, 1
  store i32 %133, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %134 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1
  store i32 %132, ptr %134, align 8, !tbaa !278
  %135 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 1
  store ptr %0, ptr %135, align 8, !tbaa !278
  %136 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 1, i32 1
  store i32 -1, ptr %136, align 8, !tbaa !278
  %137 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %137, align 8, !tbaa !278
  %138 = tail call i32 @curr_insn_locator() #38
  %139 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1, i32 0, i32 2
  store i32 %138, ptr %139, align 8, !tbaa !278
  %140 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %140, align 8, !tbaa !278
  %141 = load ptr, ptr %13, align 8, !tbaa !278
  %142 = load i32, ptr @optimize, align 4, !tbaa !282
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %149, label %144, !prof !752

144:                                              ; preds = %130
  %145 = load i32, ptr %1, align 8
  %146 = and i32 %145, 134217728
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %148, !prof !753

148:                                              ; preds = %144
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3785, ptr noundef nonnull @.str.1) #38
  br label %149

149:                                              ; preds = %148, %144, %130
  %150 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %141, ptr %150, align 8, !tbaa !278
  %151 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %1, ptr %151, align 8, !tbaa !278
  %152 = icmp eq ptr %141, null
  br i1 %152, label %173, label %153, !prof !754

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %131, ptr %154, align 8, !tbaa !278
  %155 = load i32, ptr %141, align 8
  %156 = and i32 %155, 65535
  %157 = icmp eq i32 %156, 8
  br i1 %157, label %158, label %190, !prof !755

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.rtx_def, ptr %141, i64 1
  %160 = load ptr, ptr %159, align 8, !tbaa !278
  %161 = load i32, ptr %160, align 8
  %162 = and i32 %161, 65535
  %163 = icmp eq i32 %162, 5
  br i1 %163, label %164, label %190, !prof !756

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !278
  %167 = load i32, ptr %166, align 8, !tbaa !393
  %168 = add nsw i32 %167, -1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.rtvec_def, ptr %166, i64 0, i32 1, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !267
  %172 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %131, ptr %172, align 8, !tbaa !278
  br label %190

173:                                              ; preds = %149
  %174 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %175 = icmp eq ptr %174, %1
  br i1 %175, label %179, label %176, !prof !757

176:                                              ; preds = %173
  %177 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !267
  %178 = icmp eq ptr %177, null
  br i1 %178, label %189, label %180

179:                                              ; preds = %173
  store ptr %131, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %190

180:                                              ; preds = %176, %185
  %181 = phi ptr [ %187, %185 ], [ %177, %176 ]
  %182 = load ptr, ptr %181, align 8, !tbaa !758
  %183 = icmp eq ptr %182, %1
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  store ptr %131, ptr %181, align 8, !tbaa !758
  br label %190

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.sequence_stack, ptr %181, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !267
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %180, !llvm.loop !759

189:                                              ; preds = %185, %176
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3812, ptr noundef nonnull @.str.1) #38
  br label %190

190:                                              ; preds = %189, %184, %179, %164, %158, %153
  %191 = load i32, ptr %1, align 8
  %192 = and i32 %191, 65535
  %193 = icmp eq i32 %192, 11
  br i1 %193, label %201, label %194, !prof !761

194:                                              ; preds = %190
  %195 = load i32, ptr %131, align 8
  %196 = and i32 %195, 65535
  %197 = icmp eq i32 %196, 11
  br i1 %197, label %201, label %198, !prof !761

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !278
  br label %201

201:                                              ; preds = %198, %194, %190
  %202 = phi ptr [ null, %190 ], [ null, %194 ], [ %200, %198 ]
  %203 = icmp eq ptr %202, null
  br i1 %203, label %223, label %204, !prof !762

204:                                              ; preds = %201
  store ptr %202, ptr %140, align 8, !tbaa !278
  %205 = load i32, ptr %131, align 8
  %206 = and i32 %205, 65535
  %207 = add nsw i32 %206, -7
  %208 = icmp ult i32 %207, 4
  br i1 %208, label %209, label %211, !prof !763

209:                                              ; preds = %204
  %210 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %131) #38
  br label %211

211:                                              ; preds = %209, %204
  %212 = getelementptr inbounds %struct.basic_block_def, ptr %202, i64 0, i32 7
  %213 = load ptr, ptr %212, align 8, !tbaa !278
  %214 = load ptr, ptr %213, align 8, !tbaa !764
  %215 = icmp eq ptr %214, %131
  br i1 %215, label %216, label %223, !prof !765

216:                                              ; preds = %211
  %217 = load i32, ptr %131, align 8
  %218 = trunc i32 %217 to i16
  switch i16 %218, label %222 [
    i16 11, label %223
    i16 13, label %219
  ]

219:                                              ; preds = %216
  %220 = load i32, ptr %135, align 8, !tbaa !278
  %221 = icmp eq i32 %220, 10
  br i1 %221, label %223, label %222

222:                                              ; preds = %219, %216
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3830, ptr noundef nonnull @.str.1) #38
  br label %223

223:                                              ; preds = %222, %219, %216, %211, %201
  store ptr %131, ptr %13, align 8, !tbaa !278
  %224 = load i32, ptr %1, align 8
  %225 = and i32 %224, 65535
  %226 = icmp eq i32 %225, 8
  br i1 %226, label %227, label %239, !prof !766

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %229 = load ptr, ptr %228, align 8, !tbaa !278
  %230 = load i32, ptr %229, align 8
  %231 = and i32 %230, 65535
  %232 = icmp eq i32 %231, 5
  br i1 %232, label %233, label %239, !prof !767

233:                                              ; preds = %227
  %234 = getelementptr inbounds %struct.rtx_def, ptr %229, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !278
  %236 = getelementptr inbounds %struct.rtvec_def, ptr %235, i64 0, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !267
  %238 = getelementptr inbounds %struct.rtx_def, ptr %237, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %131, ptr %238, align 8, !tbaa !278
  br label %239

239:                                              ; preds = %128, %233, %227, %223, %17
  %240 = phi ptr [ %1, %17 ], [ %131, %223 ], [ %131, %227 ], [ %131, %233 ], [ %27, %128 ]
  %241 = icmp ne ptr %0, null
  %242 = icmp ne i32 %12, 0
  %243 = and i1 %241, %242
  br i1 %243, label %244, label %279, !prof !825

244:                                              ; preds = %239
  %245 = icmp eq ptr %14, null
  %246 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %247 = select i1 %245, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), ptr %246, !prof !826
  %248 = load i32, ptr @reload_completed, align 4
  %249 = icmp eq i32 %248, 0
  br label %250

250:                                              ; preds = %274, %244
  %251 = phi ptr [ %247, %244 ], [ %276, %274 ]
  %252 = load ptr, ptr %251, align 8, !tbaa !278
  %253 = load i32, ptr %252, align 8
  %254 = trunc i32 %253 to i16
  switch i16 %254, label %265 [
    i16 10, label %266
    i16 9, label %266
    i16 8, label %255
  ], !prof !827

255:                                              ; preds = %250
  br i1 %249, label %266, label %256, !prof !828

256:                                              ; preds = %255
  %257 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 1
  %258 = load ptr, ptr %257, align 8, !tbaa !278
  %259 = load i32, ptr %258, align 8
  %260 = and i32 %259, 65535
  %261 = icmp eq i32 %260, 24
  br i1 %261, label %266, label %262, !prof !829

262:                                              ; preds = %256
  %263 = icmp ne i32 %260, 25
  %264 = zext i1 %263 to i32
  br label %266

265:                                              ; preds = %250
  br label %266

266:                                              ; preds = %265, %262, %256, %255, %250, %250
  %267 = phi i32 [ 1, %255 ], [ 0, %256 ], [ %264, %262 ], [ 1, %250 ], [ 0, %265 ], [ 1, %250 ]
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %274, label %269, !prof !830

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1, i32 0, i32 2
  %271 = load i32, ptr %270, align 8, !tbaa !278
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %274, !prof !831

273:                                              ; preds = %269
  store i32 %12, ptr %270, align 8, !tbaa !278
  br label %274

274:                                              ; preds = %273, %269, %266
  %275 = icmp eq ptr %252, %240
  %276 = getelementptr inbounds %struct.rtx_def, ptr %252, i64 0, i32 1, i32 0, i32 0, i64 2
  br i1 %275, label %279, label %250, !prof !832, !llvm.loop !833

277:                                              ; preds = %3
  %278 = tail call ptr @emit_insn_before_noloc(ptr noundef %0, ptr noundef %1, ptr noundef null)
  br label %279

279:                                              ; preds = %274, %239, %277
  %280 = phi ptr [ %278, %277 ], [ %240, %239 ], [ %240, %274 ]
  ret ptr %280
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_jump_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 !prof !266 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = tail call ptr @emit_jump_insn_before_noloc(ptr noundef %0, ptr noundef %1)
  %7 = icmp eq ptr %0, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr @reload_completed, align 4
  %10 = icmp eq i32 %9, 0
  br label %11

11:                                               ; preds = %8, %36
  %12 = phi ptr [ %14, %36 ], [ %5, %8 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !278
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %27 [
    i16 10, label %28
    i16 9, label %28
    i16 8, label %17
  ]

17:                                               ; preds = %11
  br i1 %10, label %28, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !278
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 24
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = icmp ne i32 %22, 25
  %26 = zext i1 %25 to i32
  br label %28

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %11, %11, %17, %18, %24, %27
  %29 = phi i32 [ 1, %17 ], [ 0, %18 ], [ %26, %24 ], [ 1, %11 ], [ 0, %27 ], [ 1, %11 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !278
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 %2, ptr %32, align 8, !tbaa !278
  br label %36

36:                                               ; preds = %28, %35, %31
  %37 = icmp eq ptr %14, %6
  br i1 %37, label %38, label %11, !llvm.loop !837

38:                                               ; preds = %36, %3
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_jump_insn_before(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %1, %2 ], [ %9, %7 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %14 [
    i16 7, label %7
    i16 8, label %10
    i16 9, label %10
    i16 10, label %10
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  br label %3, !llvm.loop !838

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !278
  %13 = tail call ptr @emit_jump_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %12)
  br label %16

14:                                               ; preds = %3
  %15 = tail call ptr @emit_jump_insn_before_noloc(ptr noundef %0, ptr noundef %1)
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_call_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 !prof !266 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = tail call ptr @emit_call_insn_before_noloc(ptr noundef %0, ptr noundef %1)
  %7 = icmp eq ptr %0, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr @reload_completed, align 4
  %10 = icmp eq i32 %9, 0
  br label %11

11:                                               ; preds = %8, %36
  %12 = phi ptr [ %14, %36 ], [ %5, %8 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !278
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %27 [
    i16 10, label %28
    i16 9, label %28
    i16 8, label %17
  ]

17:                                               ; preds = %11
  br i1 %10, label %28, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !278
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 24
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = icmp ne i32 %22, 25
  %26 = zext i1 %25 to i32
  br label %28

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %11, %11, %17, %18, %24, %27
  %29 = phi i32 [ 1, %17 ], [ 0, %18 ], [ %26, %24 ], [ 1, %11 ], [ 0, %27 ], [ 1, %11 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !278
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 %2, ptr %32, align 8, !tbaa !278
  br label %36

36:                                               ; preds = %28, %35, %31
  %37 = icmp eq ptr %14, %6
  br i1 %37, label %38, label %11, !llvm.loop !839

38:                                               ; preds = %36, %3
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_call_insn_before(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %1, %2 ], [ %9, %7 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %14 [
    i16 7, label %7
    i16 8, label %10
    i16 9, label %10
    i16 10, label %10
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  br label %3, !llvm.loop !840

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !278
  %13 = tail call ptr @emit_call_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %12)
  br label %16

14:                                               ; preds = %3
  %15 = tail call ptr @emit_call_insn_before_noloc(ptr noundef %0, ptr noundef %1)
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @emit_debug_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #11 !prof !266 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = tail call ptr @emit_debug_insn_before_noloc(ptr noundef %0, ptr noundef %1)
  %7 = icmp eq ptr %0, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr @reload_completed, align 4
  %10 = icmp eq i32 %9, 0
  br label %11

11:                                               ; preds = %8, %36
  %12 = phi ptr [ %14, %36 ], [ %5, %8 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !278
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i16
  switch i16 %16, label %27 [
    i16 10, label %28
    i16 9, label %28
    i16 8, label %17
  ]

17:                                               ; preds = %11
  br i1 %10, label %28, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !278
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 24
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = icmp ne i32 %22, 25
  %26 = zext i1 %25 to i32
  br label %28

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %11, %11, %17, %18, %24, %27
  %29 = phi i32 [ 1, %17 ], [ 0, %18 ], [ %26, %24 ], [ 1, %11 ], [ 0, %27 ], [ 1, %11 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !278
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 %2, ptr %32, align 8, !tbaa !278
  br label %36

36:                                               ; preds = %28, %35, %31
  %37 = icmp eq ptr %14, %6
  br i1 %37, label %38, label %11, !llvm.loop !841

38:                                               ; preds = %36, %3
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @emit_debug_insn_before(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !278
  %10 = tail call ptr @emit_debug_insn_before_setloc(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %9)
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @emit_debug_insn_before_noloc(ptr noundef %0, ptr noundef nonnull %1)
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %10, %7 ], [ %12, %11 ]
  ret ptr %14
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @emit_insn(ptr noundef %0) local_unnamed_addr #10 !prof !842 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %3 = icmp eq ptr %0, null
  br i1 %3, label %48, label %4, !prof !843

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  %7 = add i16 %6, -7
  %8 = icmp ult i16 %7, 7
  br i1 %8, label %9, label %25, !prof !844

9:                                                ; preds = %4, %23
  %10 = phi ptr [ %12, %23 ], [ %0, %4 ]
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !278
  %13 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %14 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %13, ptr %14, align 8, !tbaa !278
  store ptr null, ptr %11, align 8, !tbaa !278
  %15 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !845

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %10, ptr %18, align 8, !tbaa !278
  br label %19

19:                                               ; preds = %17, %9
  %20 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !845

22:                                               ; preds = %19
  store ptr %10, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %23

23:                                               ; preds = %19, %22
  store ptr %10, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %24 = icmp eq ptr %12, null
  br i1 %24, label %48, label %9, !prof !846, !llvm.loop !847

25:                                               ; preds = %4
  %26 = tail call ptr @rtx_alloc_stat(i32 noundef 8) #38
  %27 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %29 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  store i32 %27, ptr %29, align 8, !tbaa !278
  %30 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1
  store ptr %0, ptr %30, align 8, !tbaa !278
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1, i32 1
  store i32 -1, ptr %31, align 8, !tbaa !278
  %32 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %32, align 8, !tbaa !278
  %33 = tail call i32 @curr_insn_locator() #38
  %34 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 2
  store i32 %33, ptr %34, align 8, !tbaa !278
  %35 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %35, align 8, !tbaa !278
  %36 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %37 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %36, ptr %37, align 8, !tbaa !278
  %38 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %38, align 8, !tbaa !278
  %39 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41, !prof !848

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %26, ptr %42, align 8, !tbaa !278
  br label %43

43:                                               ; preds = %41, %25
  %44 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47, !prof !848

46:                                               ; preds = %43
  store ptr %26, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %47

47:                                               ; preds = %43, %46
  store ptr %26, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %48

48:                                               ; preds = %23, %47, %1
  %49 = phi ptr [ %2, %1 ], [ %26, %47 ], [ %10, %23 ]
  ret ptr %49
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_debug_insn(ptr noundef %0) local_unnamed_addr #11 !prof !266 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  %7 = add i16 %6, -7
  %8 = icmp ult i16 %7, 7
  br i1 %8, label %9, label %25

9:                                                ; preds = %4, %23
  %10 = phi ptr [ %12, %23 ], [ %0, %4 ]
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !278
  %13 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %14 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %13, ptr %14, align 8, !tbaa !278
  store ptr null, ptr %11, align 8, !tbaa !278
  %15 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %10, ptr %18, align 8, !tbaa !278
  br label %19

19:                                               ; preds = %17, %9
  %20 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store ptr %10, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %23

23:                                               ; preds = %19, %22
  store ptr %10, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %24 = icmp eq ptr %12, null
  br i1 %24, label %39, label %9, !llvm.loop !849

25:                                               ; preds = %4
  %26 = tail call ptr @make_debug_insn_raw(ptr noundef nonnull %0)
  %27 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %28 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %27, ptr %28, align 8, !tbaa !278
  %29 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %29, align 8, !tbaa !278
  %30 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %26, ptr %33, align 8, !tbaa !278
  br label %34

34:                                               ; preds = %32, %25
  %35 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store ptr %26, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %38

38:                                               ; preds = %34, %37
  store ptr %26, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %39

39:                                               ; preds = %23, %38, %1
  %40 = phi ptr [ %2, %1 ], [ %26, %38 ], [ %10, %23 ]
  ret ptr %40
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @emit_jump_insn(ptr noundef %0) local_unnamed_addr #10 !prof !850 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  %4 = add i16 %3, -7
  %5 = icmp ult i16 %4, 7
  br i1 %5, label %6, label %22, !prof !851

6:                                                ; preds = %1, %20
  %7 = phi ptr [ %9, %20 ], [ %0, %1 ]
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  %10 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %11 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %10, ptr %11, align 8, !tbaa !278
  store ptr null, ptr %8, align 8, !tbaa !278
  %12 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !852

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %7, ptr %15, align 8, !tbaa !278
  br label %16

16:                                               ; preds = %14, %6
  %17 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !852

19:                                               ; preds = %16
  store ptr %7, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %20

20:                                               ; preds = %16, %19
  store ptr %7, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %21 = icmp eq ptr %9, null
  br i1 %21, label %45, label %6, !prof !853, !llvm.loop !854

22:                                               ; preds = %1
  %23 = tail call ptr @rtx_alloc_stat(i32 noundef 9) #38
  %24 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %26 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  store i32 %24, ptr %26, align 8, !tbaa !278
  %27 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1
  store ptr %0, ptr %27, align 8, !tbaa !278
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1, i32 1
  store i32 -1, ptr %28, align 8, !tbaa !278
  %29 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %30 = tail call i32 @curr_insn_locator() #38
  %31 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 2
  store i32 %30, ptr %31, align 8, !tbaa !278
  %32 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %32, align 8, !tbaa !278
  %33 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %34 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %33, ptr %34, align 8, !tbaa !278
  %35 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %35, align 8, !tbaa !278
  %36 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !855

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %23, ptr %39, align 8, !tbaa !278
  br label %40

40:                                               ; preds = %38, %22
  %41 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44, !prof !855

43:                                               ; preds = %40
  store ptr %23, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %44

44:                                               ; preds = %40, %43
  store ptr %23, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %45

45:                                               ; preds = %20, %44
  %46 = phi ptr [ %23, %44 ], [ %7, %20 ]
  ret ptr %46
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @emit_call_insn(ptr noundef %0) local_unnamed_addr #10 !prof !856 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  %4 = add i16 %3, -7
  %5 = icmp ult i16 %4, 7
  br i1 %5, label %6, label %22, !prof !857

6:                                                ; preds = %1, %20
  %7 = phi ptr [ %9, %20 ], [ %0, %1 ]
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  %10 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %11 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %10, ptr %11, align 8, !tbaa !278
  store ptr null, ptr %8, align 8, !tbaa !278
  %12 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !845

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %7, ptr %15, align 8, !tbaa !278
  br label %16

16:                                               ; preds = %14, %6
  %17 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !845

19:                                               ; preds = %16
  store ptr %7, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %20

20:                                               ; preds = %19, %16
  store ptr %7, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %21 = icmp eq ptr %9, null
  br i1 %21, label %45, label %6, !prof !846, !llvm.loop !847

22:                                               ; preds = %1
  %23 = tail call ptr @rtx_alloc_stat(i32 noundef 10) #38
  %24 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %26 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  store i32 %24, ptr %26, align 8, !tbaa !278
  %27 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1
  store ptr %0, ptr %27, align 8, !tbaa !278
  %28 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1, i32 1
  store i32 -1, ptr %28, align 8, !tbaa !278
  %29 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %30 = tail call i32 @curr_insn_locator() #38
  %31 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 2
  store i32 %30, ptr %31, align 8, !tbaa !278
  %32 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %32, align 8, !tbaa !278
  %33 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %34 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %33, ptr %34, align 8, !tbaa !278
  %35 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %35, align 8, !tbaa !278
  %36 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !645

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %23, ptr %39, align 8, !tbaa !278
  br label %40

40:                                               ; preds = %38, %22
  %41 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44, !prof !645

43:                                               ; preds = %40
  store ptr %23, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %44

44:                                               ; preds = %40, %43
  store ptr %23, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %45

45:                                               ; preds = %20, %44
  %46 = phi ptr [ %23, %44 ], [ %7, %20 ]
  ret ptr %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @emit_label(ptr noundef returned %0) local_unnamed_addr #17 !prof !858 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !278
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20, !prof !859

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  store i32 %6, ptr %2, align 8, !tbaa !278
  %8 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %8, ptr %9, align 8, !tbaa !278
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %10, align 8, !tbaa !278
  %11 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !860

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %14, align 8, !tbaa !278
  br label %15

15:                                               ; preds = %13, %5
  %16 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !860

18:                                               ; preds = %15
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %19

19:                                               ; preds = %15, %18
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %20

20:                                               ; preds = %19, %1
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @emit_barrier() local_unnamed_addr #9 !prof !861 {
  %1 = tail call ptr @rtx_alloc_stat(i32 noundef 11) #38
  %2 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  store i32 %2, ptr %4, align 8, !tbaa !278
  %5 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %5, ptr %6, align 8, !tbaa !278
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %7, align 8, !tbaa !278
  %8 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !862

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %1, ptr %11, align 8, !tbaa !278
  br label %12

12:                                               ; preds = %10, %0
  %13 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !862

15:                                               ; preds = %12
  store ptr %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %16

16:                                               ; preds = %12, %15
  store ptr %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @emit_note_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !863 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 13) #38
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !278
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load i32, ptr %9, align 8, !tbaa !278
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store i32 %10, ptr %11, align 8, !tbaa !278
  %12 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %12, align 8, !tbaa !278
  %13 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %14 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %13, ptr %14, align 8, !tbaa !278
  %15 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %15, align 8, !tbaa !278
  %16 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18, !prof !864

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %2, ptr %19, align 8, !tbaa !278
  br label %20

20:                                               ; preds = %18, %1
  %21 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24, !prof !864

23:                                               ; preds = %20
  store ptr %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %24

24:                                               ; preds = %20, %23
  store ptr %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  ret ptr %2
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @emit_note(i32 noundef %0) local_unnamed_addr #10 !prof !865 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 13) #38
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !278
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store i32 %0, ptr %6, align 8, !tbaa !278
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %8, ptr %9, align 8, !tbaa !278
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %10, align 8, !tbaa !278
  %11 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !866

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %2, ptr %14, align 8, !tbaa !278
  br label %15

15:                                               ; preds = %13, %1
  %16 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !866

18:                                               ; preds = %15
  store ptr %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %19

19:                                               ; preds = %15, %18
  store ptr %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @emit_clobber(ptr noundef %0) local_unnamed_addr #9 !prof !410 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi ptr [ %0, %1 ], [ %12, %7 ]
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 41
  br i1 %6, label %7, label %13, !prof !867

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  %10 = tail call ptr @emit_clobber(ptr noundef %9)
  %11 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !278
  br label %2

13:                                               ; preds = %2
  %14 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %3) #38
  %15 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %16 = icmp eq ptr %14, null
  br i1 %16, label %61, label %17, !prof !843

17:                                               ; preds = %13
  %18 = load i32, ptr %14, align 8
  %19 = trunc i32 %18 to i16
  %20 = add i16 %19, -7
  %21 = icmp ult i16 %20, 7
  br i1 %21, label %22, label %38, !prof !844

22:                                               ; preds = %17, %36
  %23 = phi ptr [ %25, %36 ], [ %14, %17 ]
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !278
  %26 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %27 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %26, ptr %27, align 8, !tbaa !278
  store ptr null, ptr %24, align 8, !tbaa !278
  %28 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !845

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %23, ptr %31, align 8, !tbaa !278
  br label %32

32:                                               ; preds = %30, %22
  %33 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !845

35:                                               ; preds = %32
  store ptr %23, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %36

36:                                               ; preds = %35, %32
  store ptr %23, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %37 = icmp eq ptr %25, null
  br i1 %37, label %61, label %22, !prof !846, !llvm.loop !847

38:                                               ; preds = %17
  %39 = tail call ptr @rtx_alloc_stat(i32 noundef 8) #38
  %40 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %42 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  store i32 %40, ptr %42, align 8, !tbaa !278
  %43 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 1
  store ptr %14, ptr %43, align 8, !tbaa !278
  %44 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 1, i32 1
  store i32 -1, ptr %44, align 8, !tbaa !278
  %45 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %45, align 8, !tbaa !278
  %46 = tail call i32 @curr_insn_locator() #38
  %47 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 2
  store i32 %46, ptr %47, align 8, !tbaa !278
  %48 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %48, align 8, !tbaa !278
  %49 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %50 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %49, ptr %50, align 8, !tbaa !278
  %51 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %51, align 8, !tbaa !278
  %52 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !848

54:                                               ; preds = %38
  %55 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %39, ptr %55, align 8, !tbaa !278
  br label %56

56:                                               ; preds = %54, %38
  %57 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60, !prof !848

59:                                               ; preds = %56
  store ptr %39, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %60

60:                                               ; preds = %59, %56
  store ptr %39, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %61

61:                                               ; preds = %36, %60, %13
  %62 = phi ptr [ %15, %13 ], [ %39, %60 ], [ %23, %36 ]
  ret ptr %62
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gen_clobber(ptr noundef %0) local_unnamed_addr #11 !prof !266 {
  tail call void @start_sequence()
  %2 = tail call ptr @emit_clobber(ptr noundef %0)
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !868
  %5 = load ptr, ptr %4, align 8, !tbaa !758
  store ptr %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %6 = getelementptr inbounds %struct.sequence_stack, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !612
  store ptr %7, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %8 = getelementptr inbounds %struct.sequence_stack, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !869
  store ptr %9, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !868
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %10 = load ptr, ptr @free_sequence_stack, align 8, !tbaa !267
  store ptr %10, ptr %8, align 8, !tbaa !869
  store ptr %4, ptr @free_sequence_stack, align 8, !tbaa !267
  ret ptr %3
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @start_sequence() local_unnamed_addr #10 !prof !870 {
  %1 = load ptr, ptr @free_sequence_stack, align 8, !tbaa !267
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3, !prof !871

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.sequence_stack, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !869
  store ptr %5, ptr @free_sequence_stack, align 8, !tbaa !267
  br label %8

6:                                                ; preds = %0
  %7 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #38
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi ptr [ %1, %3 ], [ %7, %6 ]
  %10 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !868
  %11 = getelementptr inbounds %struct.sequence_stack, ptr %9, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !869
  %12 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  store ptr %12, ptr %9, align 8, !tbaa !758
  %13 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %14 = getelementptr inbounds %struct.sequence_stack, ptr %9, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !612
  store ptr %9, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !868
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @end_sequence() local_unnamed_addr #32 !prof !872 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !868
  %2 = load ptr, ptr %1, align 8, !tbaa !758
  store ptr %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %3 = getelementptr inbounds %struct.sequence_stack, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !612
  store ptr %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %5 = getelementptr inbounds %struct.sequence_stack, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !869
  store ptr %6, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !868
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr @free_sequence_stack, align 8, !tbaa !267
  store ptr %7, ptr %5, align 8, !tbaa !869
  store ptr %1, ptr @free_sequence_stack, align 8, !tbaa !267
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @emit_use(ptr noundef %0) local_unnamed_addr #9 !prof !405 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi ptr [ %0, %1 ], [ %12, %7 ]
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 41
  br i1 %6, label %7, label %13, !prof !406

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  %10 = tail call ptr @emit_use(ptr noundef %9)
  %11 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !278
  br label %2

13:                                               ; preds = %2
  %14 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %3) #38
  %15 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %16 = icmp eq ptr %14, null
  br i1 %16, label %61, label %17, !prof !843

17:                                               ; preds = %13
  %18 = load i32, ptr %14, align 8
  %19 = trunc i32 %18 to i16
  %20 = add i16 %19, -7
  %21 = icmp ult i16 %20, 7
  br i1 %21, label %22, label %38, !prof !844

22:                                               ; preds = %17, %36
  %23 = phi ptr [ %25, %36 ], [ %14, %17 ]
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !278
  %26 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %27 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %26, ptr %27, align 8, !tbaa !278
  store ptr null, ptr %24, align 8, !tbaa !278
  %28 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30, !prof !845

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %23, ptr %31, align 8, !tbaa !278
  br label %32

32:                                               ; preds = %30, %22
  %33 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !845

35:                                               ; preds = %32
  store ptr %23, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %36

36:                                               ; preds = %35, %32
  store ptr %23, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %37 = icmp eq ptr %25, null
  br i1 %37, label %61, label %22, !prof !846, !llvm.loop !847

38:                                               ; preds = %17
  %39 = tail call ptr @rtx_alloc_stat(i32 noundef 8) #38
  %40 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %42 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  store i32 %40, ptr %42, align 8, !tbaa !278
  %43 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 1
  store ptr %14, ptr %43, align 8, !tbaa !278
  %44 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 1, i32 1
  store i32 -1, ptr %44, align 8, !tbaa !278
  %45 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %45, align 8, !tbaa !278
  %46 = tail call i32 @curr_insn_locator() #38
  %47 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 2
  store i32 %46, ptr %47, align 8, !tbaa !278
  %48 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %48, align 8, !tbaa !278
  %49 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %50 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %49, ptr %50, align 8, !tbaa !278
  %51 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %51, align 8, !tbaa !278
  %52 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !848

54:                                               ; preds = %38
  %55 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %39, ptr %55, align 8, !tbaa !278
  br label %56

56:                                               ; preds = %54, %38
  %57 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60, !prof !848

59:                                               ; preds = %56
  store ptr %39, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %60

60:                                               ; preds = %59, %56
  store ptr %39, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %61

61:                                               ; preds = %36, %60, %13
  %62 = phi ptr [ %15, %13 ], [ %39, %60 ], [ %23, %36 ]
  ret ptr %62
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gen_use(ptr noundef %0) local_unnamed_addr #11 !prof !266 {
  tail call void @start_sequence()
  %2 = tail call ptr @emit_use(ptr noundef %0)
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !868
  %5 = load ptr, ptr %4, align 8, !tbaa !758
  store ptr %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %6 = getelementptr inbounds %struct.sequence_stack, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !612
  store ptr %7, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %8 = getelementptr inbounds %struct.sequence_stack, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !869
  store ptr %9, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !868
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %10 = load ptr, ptr @free_sequence_stack, align 8, !tbaa !267
  store ptr %10, ptr %8, align 8, !tbaa !869
  store ptr %4, ptr @free_sequence_stack, align 8, !tbaa !267
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @force_next_line_note() local_unnamed_addr #33 !prof !410 {
  store i32 -1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 7), align 8, !tbaa !873
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @set_unique_reg_note(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !874 {
  %4 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef %1, ptr noundef null) #38
  %5 = add i32 %1, -3
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %27, !prof !875

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !278
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 15
  br i1 %12, label %13, label %19, !prof !876

13:                                               ; preds = %7
  %14 = tail call i32 @multiple_sets(ptr noundef %0) #38
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16, !prof !877

16:                                               ; preds = %13
  %17 = icmp eq ptr %4, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5124, ptr noundef nonnull @.str.1) #38
  br label %36

19:                                               ; preds = %13, %7
  %20 = load i32, ptr %2, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 17
  br i1 %22, label %36, label %23, !prof !878

23:                                               ; preds = %19
  %24 = icmp eq ptr %4, null
  br i1 %24, label %31, label %25, !prof !879

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %26, align 8, !tbaa !278
  tail call void @df_notes_rescan(ptr noundef %0) #38
  br label %36

27:                                               ; preds = %3
  %28 = icmp eq ptr %4, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %30, align 8, !tbaa !278
  br label %36

31:                                               ; preds = %27, %23
  tail call void @add_reg_note(ptr noundef %0, i32 noundef %1, ptr noundef %2) #38
  br i1 %6, label %32, label %33, !prof !880

32:                                               ; preds = %31
  tail call void @df_notes_rescan(ptr noundef %0) #38
  br label %33

33:                                               ; preds = %31, %32
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !278
  br label %36

36:                                               ; preds = %19, %18, %16, %33, %29, %25
  %37 = phi ptr [ %4, %29 ], [ %35, %33 ], [ %4, %25 ], [ null, %16 ], [ null, %18 ], [ null, %19 ]
  ret ptr %37
}

declare i32 @multiple_sets(ptr noundef) local_unnamed_addr #3

declare void @df_notes_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @emit(ptr noundef %0) local_unnamed_addr #9 !prof !881 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %52 [
    i16 12, label %53
    i16 26, label %4
    i16 27, label %5
    i16 23, label %6
    i16 15, label %18
  ], !prof !882

4:                                                ; preds = %1
  br label %53

5:                                                ; preds = %1
  br label %53

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !278
  %9 = load ptr, ptr @global_rtl, align 16, !tbaa !267
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %53, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !278
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 26
  %17 = select i1 %16, i32 10, i32 8
  br label %53

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !278
  %21 = load i32, ptr %20, align 8, !tbaa !393
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %49, label %23, !prof !883

23:                                               ; preds = %18
  %24 = load ptr, ptr @global_rtl, align 16
  %25 = zext nneg i32 %21 to i64
  br label %26

26:                                               ; preds = %23, %47
  %27 = phi i64 [ %25, %23 ], [ %29, %47 ]
  %28 = phi i1 [ %22, %23 ], [ %48, %47 ]
  %29 = add nsw i64 %27, -1
  %30 = getelementptr inbounds %struct.rtvec_def, ptr %20, i64 0, i32 1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !267
  %32 = load i32, ptr %31, align 8
  %33 = trunc i32 %32 to i16
  switch i16 %33, label %38 [
    i16 26, label %49
    i16 23, label %34
  ], !prof !884

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !278
  %37 = icmp eq ptr %36, %24
  br i1 %37, label %49, label %38, !prof !885

38:                                               ; preds = %34, %26
  %39 = and i32 %32, 65535
  %40 = icmp eq i32 %39, 23
  br i1 %40, label %41, label %47, !prof !886

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !278
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 26
  br i1 %46, label %49, label %47, !prof !885

47:                                               ; preds = %41, %38
  %48 = icmp slt i64 %27, 2
  br i1 %48, label %49, label %26, !prof !887, !llvm.loop !888

49:                                               ; preds = %47, %26, %34, %41, %18
  %50 = phi i1 [ %22, %18 ], [ %48, %47 ], [ %28, %26 ], [ %28, %34 ], [ %28, %41 ]
  %51 = phi i32 [ undef, %18 ], [ undef, %47 ], [ 10, %26 ], [ 9, %34 ], [ 10, %41 ]
  br i1 %50, label %52, label %53, !prof !889

52:                                               ; preds = %49, %1
  br label %53

53:                                               ; preds = %1, %4, %5, %6, %11, %49, %52
  %54 = phi i32 [ 10, %4 ], [ 9, %5 ], [ %51, %49 ], [ 8, %52 ], [ 12, %1 ], [ 9, %6 ], [ %17, %11 ]
  switch i32 %54, label %130 [
    i32 12, label %55
    i32 8, label %74
    i32 9, label %116
    i32 10, label %126
    i32 7, label %128
  ], !prof !890

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !278
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %131

59:                                               ; preds = %55
  %60 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  store i32 %60, ptr %56, align 8, !tbaa !278
  %62 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %63 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %62, ptr %63, align 8, !tbaa !278
  %64 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %64, align 8, !tbaa !278
  %65 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %68, align 8, !tbaa !278
  br label %69

69:                                               ; preds = %67, %59
  %70 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %73

73:                                               ; preds = %72, %69
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %131

74:                                               ; preds = %53
  %75 = add i16 %3, -7
  %76 = icmp ult i16 %75, 7
  br i1 %76, label %77, label %93, !prof !844

77:                                               ; preds = %74, %91
  %78 = phi ptr [ %80, %91 ], [ %0, %74 ]
  %79 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !278
  %81 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %82 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %81, ptr %82, align 8, !tbaa !278
  store ptr null, ptr %79, align 8, !tbaa !278
  %83 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85, !prof !845

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %78, ptr %86, align 8, !tbaa !278
  br label %87

87:                                               ; preds = %85, %77
  %88 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91, !prof !845

90:                                               ; preds = %87
  store ptr %78, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %91

91:                                               ; preds = %90, %87
  store ptr %78, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %92 = icmp eq ptr %80, null
  br i1 %92, label %131, label %77, !prof !846, !llvm.loop !847

93:                                               ; preds = %74
  %94 = tail call ptr @rtx_alloc_stat(i32 noundef 8) #38
  %95 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  %97 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  store i32 %95, ptr %97, align 8, !tbaa !278
  %98 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 1
  store ptr %0, ptr %98, align 8, !tbaa !278
  %99 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 1, i32 1
  store i32 -1, ptr %99, align 8, !tbaa !278
  %100 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %100, align 8, !tbaa !278
  %101 = tail call i32 @curr_insn_locator() #38
  %102 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1, i32 0, i32 2
  store i32 %101, ptr %102, align 8, !tbaa !278
  %103 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %103, align 8, !tbaa !278
  %104 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %105 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %104, ptr %105, align 8, !tbaa !278
  %106 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %106, align 8, !tbaa !278
  %107 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109, !prof !848

109:                                              ; preds = %93
  %110 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %94, ptr %110, align 8, !tbaa !278
  br label %111

111:                                              ; preds = %109, %93
  %112 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %115, !prof !848

114:                                              ; preds = %111
  store ptr %94, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  br label %115

115:                                              ; preds = %114, %111
  store ptr %94, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  br label %131

116:                                              ; preds = %53
  %117 = tail call ptr @emit_jump_insn(ptr noundef nonnull %0)
  %118 = tail call i32 @any_uncondjump_p(ptr noundef %117) #38
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, ptr %0, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 27
  br i1 %123, label %124, label %131

124:                                              ; preds = %120, %116
  %125 = tail call ptr @emit_barrier()
  br label %131

126:                                              ; preds = %53
  %127 = tail call ptr @emit_call_insn(ptr noundef nonnull %0)
  br label %131

128:                                              ; preds = %53
  %129 = tail call ptr @emit_debug_insn(ptr noundef nonnull %0)
  br label %131

130:                                              ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5228, ptr noundef nonnull @.str.1) #38
  br label %131

131:                                              ; preds = %91, %115, %73, %55, %124, %120, %130, %128, %126
  %132 = phi ptr [ null, %130 ], [ %129, %128 ], [ %127, %126 ], [ %125, %124 ], [ %117, %120 ], [ %0, %55 ], [ %0, %73 ], [ %94, %115 ], [ %78, %91 ]
  ret ptr %132
}

declare i32 @any_uncondjump_p(ptr noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @push_to_sequence(ptr noundef %0) local_unnamed_addr #9 !prof !891 {
  %2 = load ptr, ptr @free_sequence_stack, align 8, !tbaa !267
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !871

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.sequence_stack, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !869
  store ptr %6, ptr @free_sequence_stack, align 8, !tbaa !267
  br label %9

7:                                                ; preds = %1
  %8 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #38
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %2, %4 ], [ %8, %7 ]
  %11 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !868
  %12 = getelementptr inbounds %struct.sequence_stack, ptr %10, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !869
  %13 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  store ptr %13, ptr %10, align 8, !tbaa !758
  %14 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %15 = getelementptr inbounds %struct.sequence_stack, ptr %10, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !612
  store ptr %10, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !868
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), i8 0, i64 16, i1 false)
  br label %16

16:                                               ; preds = %19, %9
  %17 = phi ptr [ %0, %9 ], [ %21, %19 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19, !prof !892

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !278
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %16, !prof !893, !llvm.loop !894

23:                                               ; preds = %19, %16
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  store ptr %17, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @push_to_sequence2(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  tail call void @start_sequence()
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  store ptr %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @push_topmost_sequence() local_unnamed_addr #11 !prof !266 {
  tail call void @start_sequence()
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi ptr [ getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), %0 ], [ %6, %1 ]
  %3 = phi ptr [ null, %0 ], [ %4, %1 ]
  %4 = load ptr, ptr %2, align 8, !tbaa !267
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.sequence_stack, ptr %4, i64 0, i32 2
  br i1 %5, label %7, label %1, !llvm.loop !895

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !tbaa !758
  store ptr %8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %9 = getelementptr inbounds %struct.sequence_stack, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !612
  store ptr %10, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @pop_topmost_sequence() local_unnamed_addr #34 !prof !266 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi ptr [ getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), %0 ], [ %6, %1 ]
  %3 = phi ptr [ null, %0 ], [ %4, %1 ]
  %4 = load ptr, ptr %2, align 8, !tbaa !267
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.sequence_stack, ptr %4, i64 0, i32 2
  br i1 %5, label %7, label %1, !llvm.loop !896

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  store ptr %8, ptr %3, align 8, !tbaa !758
  %9 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %10 = getelementptr inbounds %struct.sequence_stack, ptr %3, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !612
  %11 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !868
  %12 = load ptr, ptr %11, align 8, !tbaa !758
  store ptr %12, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !529
  %13 = getelementptr inbounds %struct.sequence_stack, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !612
  store ptr %14, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !530
  %15 = getelementptr inbounds %struct.sequence_stack, ptr %11, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !869
  store ptr %16, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !868
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %17 = load ptr, ptr @free_sequence_stack, align 8, !tbaa !267
  store ptr %17, ptr %15, align 8, !tbaa !869
  store ptr %11, ptr @free_sequence_stack, align 8, !tbaa !267
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @in_sequence_p() local_unnamed_addr #20 !prof !897 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !868
  %2 = icmp ne ptr %1, null
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @copy_insn_1(ptr noundef %0) local_unnamed_addr #9 !prof !898 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %139, label %3, !prof !899

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %34 [
    i16 37, label %139
    i16 30, label %139
    i16 32, label %139
    i16 31, label %139
    i16 33, label %139
    i16 45, label %139
    i16 12, label %139
    i16 36, label %139
    i16 46, label %139
    i16 25, label %9
    i16 38, label %6
    i16 35, label %31
  ], !prof !900

6:                                                ; preds = %3
  %7 = load i32, ptr @copy_insn_n_scratches, align 4, !tbaa !282
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %23, label %34, !prof !644

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !278
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %34, !prof !901

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !278
  %18 = icmp ult i32 %17, 53
  br i1 %18, label %139, label %34, !prof !902

19:                                               ; preds = %23
  %20 = zext nneg i32 %7 to i64
  %21 = add nuw nsw i64 %24, 1
  %22 = icmp eq i64 %21, %20
  br i1 %22, label %34, label %23, !prof !757, !llvm.loop !903

23:                                               ; preds = %6, %19
  %24 = phi i64 [ %21, %19 ], [ 0, %6 ]
  %25 = getelementptr inbounds [30 x ptr], ptr @copy_insn_scratch_in, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !267
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %19

28:                                               ; preds = %23
  %29 = getelementptr inbounds [30 x ptr], ptr @copy_insn_scratch_out, i64 0, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !267
  br label %139

31:                                               ; preds = %3
  %32 = tail call zeroext i8 @shared_const_p(ptr noundef nonnull %0) #38
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %139

34:                                               ; preds = %19, %6, %31, %15, %3, %9
  %35 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #38
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, -536870913
  store i32 %37, ptr %35, align 8
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, -7
  %41 = icmp ult i32 %40, 4
  br i1 %41, label %42, label %44, !prof !904

42:                                               ; preds = %34
  %43 = and i32 %36, -1660944385
  store i32 %43, ptr %35, align 8
  br label %44

44:                                               ; preds = %34, %42
  %45 = load i32, ptr %35, align 8
  %46 = and i32 %45, 65535
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !278
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %120, label %51, !prof !905

51:                                               ; preds = %44
  %52 = load i32, ptr %35, align 8
  %53 = and i32 %52, 65535
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !267
  %57 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %58 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  br label %59

59:                                               ; preds = %51, %111
  %60 = phi i64 [ 0, %51 ], [ %112, %111 ]
  %61 = phi ptr [ %56, %51 ], [ %62, %111 ]
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = load i8, ptr %61, align 1, !tbaa !278
  switch i8 %63, label %110 [
    i8 101, label %64
    i8 69, label %71
    i8 86, label %71
    i8 116, label %111
    i8 119, label %111
    i8 105, label %111
    i8 115, label %111
    i8 83, label %111
    i8 117, label %111
    i8 48, label %111
  ], !prof !906

64:                                               ; preds = %59
  %65 = getelementptr inbounds [1 x %union.rtunion_def], ptr %57, i64 0, i64 %60
  %66 = load ptr, ptr %65, align 8, !tbaa !278
  %67 = icmp eq ptr %66, null
  br i1 %67, label %111, label %68, !prof !907

68:                                               ; preds = %64
  %69 = tail call ptr @copy_insn_1(ptr noundef nonnull %66)
  %70 = getelementptr inbounds [1 x %union.rtunion_def], ptr %58, i64 0, i64 %60
  store ptr %69, ptr %70, align 8, !tbaa !278
  br label %111

71:                                               ; preds = %59, %59
  %72 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %73 = getelementptr inbounds [1 x %union.rtunion_def], ptr %72, i64 0, i64 %60
  %74 = load ptr, ptr %73, align 8, !tbaa !278
  %75 = load ptr, ptr @orig_asm_constraints_vector, align 8, !tbaa !267
  %76 = icmp eq ptr %74, %75
  br i1 %76, label %77, label %81, !prof !908

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %79 = load ptr, ptr @copy_asm_constraints_vector, align 8, !tbaa !267
  %80 = getelementptr inbounds [1 x %union.rtunion_def], ptr %78, i64 0, i64 %60
  store ptr %79, ptr %80, align 8, !tbaa !278
  br label %111

81:                                               ; preds = %71
  %82 = load ptr, ptr @orig_asm_operands_vector, align 8, !tbaa !267
  %83 = icmp eq ptr %74, %82
  br i1 %83, label %84, label %88, !prof !908

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %86 = load ptr, ptr @copy_asm_operands_vector, align 8, !tbaa !267
  %87 = getelementptr inbounds [1 x %union.rtunion_def], ptr %85, i64 0, i64 %60
  store ptr %86, ptr %87, align 8, !tbaa !278
  br label %111

88:                                               ; preds = %81
  %89 = icmp eq ptr %74, null
  br i1 %89, label %111, label %90, !prof !908

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %92 = load i32, ptr %74, align 8, !tbaa !393
  %93 = tail call ptr @rtvec_alloc(i32 noundef %92) #38
  %94 = getelementptr inbounds [1 x %union.rtunion_def], ptr %91, i64 0, i64 %60
  store ptr %93, ptr %94, align 8, !tbaa !278
  %95 = load i32, ptr %93, align 8, !tbaa !393
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %111, !prof !909

97:                                               ; preds = %90, %97
  %98 = phi i64 [ %105, %97 ], [ 0, %90 ]
  %99 = load ptr, ptr %73, align 8, !tbaa !278
  %100 = getelementptr inbounds %struct.rtvec_def, ptr %99, i64 0, i32 1, i64 %98
  %101 = load ptr, ptr %100, align 8, !tbaa !267
  %102 = tail call ptr @copy_insn_1(ptr noundef %101)
  %103 = load ptr, ptr %94, align 8, !tbaa !278
  %104 = getelementptr inbounds %struct.rtvec_def, ptr %103, i64 0, i32 1, i64 %98
  store ptr %102, ptr %104, align 8, !tbaa !267
  %105 = add nuw nsw i64 %98, 1
  %106 = load ptr, ptr %94, align 8, !tbaa !278
  %107 = load i32, ptr %106, align 8, !tbaa !393
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %97, label %111, !prof !910, !llvm.loop !911

110:                                              ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5509, ptr noundef nonnull @.str.1) #38
  br label %111

111:                                              ; preds = %97, %90, %59, %59, %59, %59, %59, %59, %110, %68, %64, %84, %88, %77, %59
  %112 = add nuw nsw i64 %60, 1
  %113 = load i32, ptr %35, align 8
  %114 = and i32 %113, 65535
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !278
  %118 = zext i8 %117 to i64
  %119 = icmp ult i64 %112, %118
  br i1 %119, label %59, label %120, !prof !912, !llvm.loop !913

120:                                              ; preds = %111, %44
  switch i16 %5, label %139 [
    i16 38, label %121
    i16 17, label %130
  ], !prof !914

121:                                              ; preds = %120
  %122 = load i32, ptr @copy_insn_n_scratches, align 4, !tbaa !282
  %123 = add nsw i32 %122, 1
  store i32 %123, ptr @copy_insn_n_scratches, align 4, !tbaa !282
  %124 = icmp slt i32 %122, 30
  br i1 %124, label %126, label %125, !prof !915

125:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5515, ptr noundef nonnull @.str.1) #38
  br label %126

126:                                              ; preds = %121, %125
  %127 = sext i32 %122 to i64
  %128 = getelementptr inbounds [30 x ptr], ptr @copy_insn_scratch_in, i64 0, i64 %127
  store ptr %0, ptr %128, align 8, !tbaa !267
  %129 = getelementptr inbounds [30 x ptr], ptr @copy_insn_scratch_out, i64 0, i64 %127
  store ptr %35, ptr %129, align 8, !tbaa !267
  br label %139

130:                                              ; preds = %120
  %131 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !278
  store ptr %132, ptr @orig_asm_operands_vector, align 8, !tbaa !267
  %133 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !278
  store ptr %134, ptr @copy_asm_operands_vector, align 8, !tbaa !267
  %135 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !278
  store ptr %136, ptr @orig_asm_constraints_vector, align 8, !tbaa !267
  %137 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !278
  store ptr %138, ptr @copy_asm_constraints_vector, align 8, !tbaa !267
  br label %139

139:                                              ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %126, %130, %120, %31, %15, %3, %1, %28
  %140 = phi ptr [ %30, %28 ], [ null, %1 ], [ %0, %3 ], [ %0, %15 ], [ %0, %31 ], [ %35, %120 ], [ %35, %130 ], [ %35, %126 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ]
  ret ptr %140
}

declare zeroext i8 @shared_const_p(ptr noundef) local_unnamed_addr #3

declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @copy_insn(ptr noundef %0) local_unnamed_addr #9 !prof !916 {
  store i32 0, ptr @copy_insn_n_scratches, align 4, !tbaa !282
  store ptr null, ptr @orig_asm_operands_vector, align 8, !tbaa !267
  store ptr null, ptr @orig_asm_constraints_vector, align 8, !tbaa !267
  store ptr null, ptr @copy_asm_operands_vector, align 8, !tbaa !267
  store ptr null, ptr @copy_asm_constraints_vector, align 8, !tbaa !267
  %2 = tail call ptr @copy_insn_1(ptr noundef %0)
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @init_emit() local_unnamed_addr #9 !prof !897 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), i8 0, i64 16, i1 false)
  %1 = load ptr, ptr @compiler_params, align 8, !tbaa !267
  %2 = getelementptr inbounds %struct.param_info, ptr %1, i64 117, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !532
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !531
  store i32 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !534
  store i32 58, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !361
  store i32 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 7), align 8, !tbaa !873
  %5 = load i32, ptr @label_num, align 4, !tbaa !282
  store i32 %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 1), align 4, !tbaa !411
  store ptr null, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !868
  store i32 158, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 8), align 4, !tbaa !362
  %6 = tail call ptr @xcalloc(i64 noundef 158, i64 noundef 1) #38
  store ptr %6, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !364
  %7 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 8), align 4, !tbaa !362
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call ptr @ggc_alloc_stat(i64 noundef %9) #38
  store ptr %10, ptr @regno_reg_rtx, align 8, !tbaa !267
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %10, ptr noundef nonnull align 16 dereferenceable(424) @static_regno_reg_rtx, i64 424, i1 false)
  %11 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !267
  %12 = getelementptr inbounds ptr, ptr %10, i64 53
  store ptr %11, ptr %12, align 8, !tbaa !267
  %13 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !267
  %14 = getelementptr inbounds ptr, ptr %10, i64 54
  store ptr %13, ptr %14, align 8, !tbaa !267
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !267
  %16 = getelementptr inbounds ptr, ptr %10, i64 55
  store ptr %15, ptr %16, align 8, !tbaa !267
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !267
  %18 = getelementptr inbounds ptr, ptr %10, i64 56
  store ptr %17, ptr %18, align 8, !tbaa !267
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !267
  %20 = getelementptr inbounds ptr, ptr %10, i64 57
  store ptr %19, ptr %20, align 8, !tbaa !267
  %21 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !267
  %22 = load i32, ptr %21, align 8
  %23 = or i32 %22, 1073741824
  store i32 %23, ptr %21, align 8
  %24 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !267
  %25 = load i32, ptr %24, align 8
  %26 = or i32 %25, 1073741824
  store i32 %26, ptr %24, align 8
  %27 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !267
  %28 = load i32, ptr %27, align 8
  %29 = or i32 %28, 1073741824
  store i32 %29, ptr %27, align 8
  %30 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !267
  %31 = load i32, ptr %30, align 8
  %32 = or i32 %31, 1073741824
  store i32 %32, ptr %30, align 8
  %33 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !267
  %34 = load i32, ptr %33, align 8
  %35 = or i32 %34, 1073741824
  store i32 %35, ptr %33, align 8
  %36 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !267
  %37 = load i32, ptr %36, align 8
  %38 = or i32 %37, 1073741824
  store i32 %38, ptr %36, align 8
  %39 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !267
  %40 = load i32, ptr %39, align 8
  %41 = or i32 %40, 1073741824
  store i32 %41, ptr %39, align 8
  %42 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !267
  %43 = load i32, ptr %42, align 8
  %44 = or i32 %43, 1073741824
  store i32 %44, ptr %42, align 8
  %45 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !267
  %46 = load i32, ptr %45, align 8
  %47 = or i32 %46, 1073741824
  store i32 %47, ptr %45, align 8
  %48 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !364
  %49 = getelementptr inbounds i8, ptr %48, i64 7
  store i8 32, ptr %49, align 1, !tbaa !278
  %50 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !364
  %51 = getelementptr inbounds i8, ptr %50, i64 20
  store i8 32, ptr %51, align 1, !tbaa !278
  %52 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !364
  %53 = getelementptr inbounds i8, ptr %52, i64 6
  store i8 32, ptr %53, align 1, !tbaa !278
  %54 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !364
  %55 = getelementptr inbounds i8, ptr %54, i64 16
  store i8 32, ptr %55, align 1, !tbaa !278
  %56 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !364
  %57 = getelementptr inbounds i8, ptr %56, i64 53
  store i8 32, ptr %57, align 1, !tbaa !278
  %58 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !364
  %59 = getelementptr inbounds i8, ptr %58, i64 54
  store i8 32, ptr %59, align 1, !tbaa !278
  %60 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !364
  %61 = getelementptr inbounds i8, ptr %60, i64 55
  store i8 32, ptr %61, align 1, !tbaa !278
  %62 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !364
  %63 = getelementptr inbounds i8, ptr %62, i64 56
  store i8 32, ptr %63, align 1, !tbaa !278
  %64 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !364
  %65 = getelementptr inbounds i8, ptr %64, i64 57
  store i8 32, ptr %65, align 1, !tbaa !278
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gen_rtx_CONST_VECTOR(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !266 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !278
  %6 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %3
  %7 = load i8, ptr %6, align 1, !tbaa !278
  %8 = zext i8 %7 to i32
  %9 = add nsw i32 %8, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.rtvec_def, ptr %1, i64 0, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !267
  %13 = add nsw i32 %8, -2
  %14 = icmp ugt i8 %7, 1
  br i1 %14, label %15, label %24

15:                                               ; preds = %2, %21
  %16 = phi i32 [ %22, %21 ], [ %13, %2 ]
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds %struct.rtvec_def, ptr %1, i64 0, i32 1, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !267
  %20 = icmp eq ptr %19, %12
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = add nsw i32 %16, -1
  %23 = icmp sgt i32 %16, 0
  br i1 %23, label %15, label %24, !llvm.loop !917

24:                                               ; preds = %21, %15, %2
  %25 = phi i32 [ %13, %2 ], [ -1, %21 ], [ %16, %15 ]
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = zext i8 %5 to i64
  %29 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !267
  %31 = icmp eq ptr %12, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = sext i32 %0 to i64
  %34 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !267
  br label %46

36:                                               ; preds = %27
  %37 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %28
  %38 = load ptr, ptr %37, align 8, !tbaa !267
  %39 = icmp eq ptr %12, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = sext i32 %0 to i64
  %42 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !267
  br label %46

44:                                               ; preds = %36, %24
  %45 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 33, i32 noundef %0, ptr noundef %1) #38
  br label %46

46:                                               ; preds = %44, %40, %32
  %47 = phi ptr [ %35, %32 ], [ %43, %40 ], [ %45, %44 ]
  ret ptr %47
}

declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @init_emit_regs() local_unnamed_addr #9 !prof !750 {
  %1 = load ptr, ptr @reg_attrs_htab, align 8, !tbaa !267
  tail call void @htab_empty(ptr noundef %1) #38
  tail call void @init_reg_modes_target() #38
  %2 = tail call ptr @gen_rtx_fmt__stat(i32 noundef 36, i32 noundef 0) #38
  store ptr %2, ptr @global_rtl, align 16, !tbaa !267
  %3 = tail call ptr @gen_rtx_fmt__stat(i32 noundef 46, i32 noundef 0) #38
  store ptr %3, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 1), align 8, !tbaa !267
  %4 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef 16, i32 noundef 7) #38
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 7, ptr %5, align 8, !tbaa !278
  store ptr %4, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !267
  %6 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef 16, i32 noundef 20) #38
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 20, ptr %7, align 8, !tbaa !278
  store ptr %6, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !267
  %8 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef 16, i32 noundef 6) #38
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 6, ptr %9, align 8, !tbaa !278
  store ptr %8, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !267
  %10 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef 16, i32 noundef 16) #38
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 16, ptr %11, align 8, !tbaa !278
  store ptr %10, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !267
  %12 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef 16, i32 noundef 53) #38
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 53, ptr %13, align 8, !tbaa !278
  store ptr %12, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !267
  %14 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef 16, i32 noundef 54) #38
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 54, ptr %15, align 8, !tbaa !278
  store ptr %14, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !267
  %16 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef 16, i32 noundef 55) #38
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 55, ptr %17, align 8, !tbaa !278
  store ptr %16, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !267
  %18 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef 16, i32 noundef 56) #38
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 56, ptr %19, align 8, !tbaa !278
  store ptr %18, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !267
  %20 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef 16, i32 noundef 57) #38
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 57, ptr %21, align 8, !tbaa !278
  store ptr %20, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !267
  br label %22

22:                                               ; preds = %0, %22
  %23 = phi i64 [ 0, %0 ], [ %31, %22 ]
  %24 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !282
  %26 = trunc i64 %23 to i32
  %27 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef %25, i32 noundef %26) #38
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = trunc i64 %23 to i32
  store i32 %29, ptr %28, align 8, !tbaa !278
  %30 = getelementptr inbounds [53 x ptr], ptr @static_regno_reg_rtx, i64 0, i64 %23
  store ptr %27, ptr %30, align 8, !tbaa !267
  %31 = add nuw nsw i64 %23, 1
  %32 = icmp eq i64 %31, 53
  br i1 %32, label %33, label %22, !prof !918, !llvm.loop !919

33:                                               ; preds = %22
  %34 = load i32, ptr @flag_pic, align 4, !tbaa !282
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %53, label %36, !prof !757

36:                                               ; preds = %33
  %37 = load i32, ptr @reload_completed, align 4, !tbaa !282
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !267
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !278
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  br i1 %38, label %49, label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !267
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !278
  br label %49

49:                                               ; preds = %36, %45, %44
  %50 = phi i32 [ %48, %45 ], [ 3, %44 ], [ 3, %36 ]
  %51 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef 16, i32 noundef %50) #38
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %50, ptr %52, align 8, !tbaa !278
  br label %53

53:                                               ; preds = %39, %33, %49
  %54 = phi ptr [ %51, %49 ], [ null, %33 ], [ null, %39 ]
  store ptr %54, ptr @pic_offset_table_rtx, align 8, !tbaa !267
  ret void
}

declare void @htab_empty(ptr noundef) local_unnamed_addr #3

declare void @init_reg_modes_target() local_unnamed_addr #3

declare ptr @gen_rtx_fmt__stat(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @init_emit_once() local_unnamed_addr #9 !prof !750 {
  %1 = alloca %struct.real_value, align 8
  %2 = alloca %struct.real_value, align 8
  %3 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @const_int_htab_hash, ptr noundef nonnull @const_int_htab_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #38
  store ptr %3, ptr @const_int_htab, align 8, !tbaa !267
  %4 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @const_double_htab_hash, ptr noundef nonnull @const_double_htab_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #38
  store ptr %4, ptr @const_double_htab, align 8, !tbaa !267
  %5 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @const_fixed_htab_hash, ptr noundef nonnull @const_fixed_htab_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #38
  store ptr %5, ptr @const_fixed_htab, align 8, !tbaa !267
  %6 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @mem_attrs_htab_hash, ptr noundef nonnull @mem_attrs_htab_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #38
  store ptr %6, ptr @mem_attrs_htab, align 8, !tbaa !267
  %7 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @reg_attrs_htab_hash, ptr noundef nonnull @reg_attrs_htab_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #38
  store ptr %7, ptr @reg_attrs_htab, align 8, !tbaa !267
  store i32 0, ptr @byte_mode, align 4, !tbaa !282
  store i32 0, ptr @word_mode, align 4, !tbaa !282
  %8 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !278
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13, !prof !920

10:                                               ; preds = %31, %0
  %11 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 8), align 8, !tbaa !278
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %50, label %36, !prof !920

13:                                               ; preds = %0, %31
  %14 = phi i8 [ %34, %31 ], [ %8, %0 ]
  %15 = phi i32 [ %26, %31 ], [ 0, %0 ]
  %16 = phi i32 [ %32, %31 ], [ 0, %0 ]
  %17 = zext i8 %14 to i32
  %18 = zext i8 %14 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !278
  %21 = icmp eq i8 %20, 1
  %22 = icmp eq i32 %15, 0
  %23 = select i1 %21, i1 %22, i1 false, !prof !921
  br i1 %23, label %24, label %25, !prof !921

24:                                               ; preds = %13
  store i32 %17, ptr @byte_mode, align 4, !tbaa !282
  br label %25

25:                                               ; preds = %24, %13
  %26 = phi i32 [ %17, %24 ], [ %15, %13 ]
  %27 = icmp eq i8 %20, 4
  %28 = icmp eq i32 %16, 0
  %29 = select i1 %27, i1 %28, i1 false, !prof !921
  br i1 %29, label %30, label %31, !prof !921

30:                                               ; preds = %25
  store i32 %17, ptr @word_mode, align 4, !tbaa !282
  br label %31

31:                                               ; preds = %25, %30
  %32 = phi i32 [ %16, %25 ], [ %17, %30 ]
  %33 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %18
  %34 = load i8, ptr %33, align 1, !tbaa !278
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %10, label %13, !prof !922, !llvm.loop !923

36:                                               ; preds = %10, %36
  %37 = phi i8 [ %48, %36 ], [ %11, %10 ]
  %38 = phi i32 [ %46, %36 ], [ 0, %10 ]
  %39 = zext i8 %37 to i32
  %40 = zext i8 %37 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !278
  %43 = icmp eq i8 %42, 8
  %44 = icmp eq i32 %38, 0
  %45 = select i1 %43, i1 %44, i1 false, !prof !924
  %46 = select i1 %45, i32 %39, i32 %38, !prof !924
  %47 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %40
  %48 = load i8, ptr %47, align 1, !tbaa !278
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %36, !prof !925, !llvm.loop !926

50:                                               ; preds = %36, %10
  %51 = phi i32 [ 0, %10 ], [ %46, %36 ]
  %52 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_class, i64 0, i64 16), align 16, !tbaa !278
  %53 = zext i8 %52 to i32
  %54 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef %53, i32 noundef 0) #38
  store i32 %54, ptr @ptr_mode, align 4, !tbaa !282
  br label %55

55:                                               ; preds = %50, %55
  %56 = phi i64 [ -64, %50 ], [ %60, %55 ]
  %57 = tail call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %56) #38
  %58 = add nsw i64 %56, 64
  %59 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %58
  store ptr %57, ptr %59, align 8, !tbaa !267
  %60 = add nsw i64 %56, 1
  %61 = icmp eq i64 %60, 65
  br i1 %61, label %62, label %55, !prof !927, !llvm.loop !928

62:                                               ; preds = %55
  %63 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !267
  store ptr %63, ptr @const_true_rtx, align 8, !tbaa !267
  tail call void @real_from_integer(ptr noundef nonnull @dconst0, i32 noundef %51, i64 noundef 0, i64 noundef 0, i32 noundef 0) #38
  tail call void @real_from_integer(ptr noundef nonnull @dconst1, i32 noundef %51, i64 noundef 1, i64 noundef 0, i32 noundef 0) #38
  tail call void @real_from_integer(ptr noundef nonnull @dconst2, i32 noundef %51, i64 noundef 2, i64 noundef 0, i32 noundef 0) #38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @dconstm1, ptr noundef nonnull align 8 dereferenceable(32) @dconst1, i64 32, i1 false), !tbaa.struct !292
  %64 = load i32, ptr @dconstm1, align 8
  %65 = or i32 %64, 8
  store i32 %65, ptr @dconstm1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @dconsthalf, ptr noundef nonnull align 8 dereferenceable(32) @dconst1, i64 32, i1 false), !tbaa.struct !292
  %66 = load i32, ptr @dconsthalf, align 8
  %67 = and i32 %66, -64
  %68 = add i32 %67, -64
  %69 = and i32 %66, 63
  %70 = or disjoint i32 %68, %69
  store i32 %70, ptr @dconsthalf, align 8
  %71 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 8), align 8, !tbaa !278
  %72 = icmp eq i8 %71, 0
  %73 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 9), align 1
  %74 = icmp eq i8 %73, 0
  %75 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2
  %76 = icmp eq i8 %75, 0
  %77 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 3), align 1
  %78 = icmp eq i8 %77, 0
  br label %82

79:                                               ; preds = %151
  %80 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 10), align 2, !tbaa !278
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %154, label %157, !prof !920

82:                                               ; preds = %62, %151
  %83 = phi i64 [ 0, %62 ], [ %152, %151 ]
  %84 = icmp eq i64 %83, 0
  %85 = icmp eq i64 %83, 1
  %86 = select i1 %85, ptr @dconst1, ptr @dconst2, !prof !929
  %87 = select i1 %84, ptr @dconst0, ptr %86, !prof !929
  br i1 %72, label %88, label %89, !prof !930

88:                                               ; preds = %103, %82
  br i1 %74, label %131, label %110, !prof !930

89:                                               ; preds = %82, %103
  %90 = phi i8 [ %108, %103 ], [ %71, %82 ]
  %91 = zext i8 %90 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %87, i64 32, i1 false)
  %92 = tail call ptr @rtx_alloc_stat(i32 noundef 32) #38
  %93 = load i32, ptr %92, align 8
  %94 = shl nuw nsw i32 %91, 16
  %95 = and i32 %93, -16711681
  %96 = or disjoint i32 %95, %94
  store i32 %96, ptr %92, align 8
  %97 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %97, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !292
  %98 = load ptr, ptr @const_double_htab, align 8, !tbaa !267
  %99 = tail call ptr @htab_find_slot(ptr noundef %98, ptr noundef nonnull %92, i32 noundef 1) #38
  %100 = load ptr, ptr %99, align 8, !tbaa !267
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %103, !prof !931

102:                                              ; preds = %89
  store ptr %92, ptr %99, align 8, !tbaa !267
  br label %103

103:                                              ; preds = %89, %102
  %104 = load ptr, ptr %99, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  %105 = zext i8 %90 to i64
  %106 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %83, i64 %105
  store ptr %104, ptr %106, align 8, !tbaa !267
  %107 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %105
  %108 = load i8, ptr %107, align 1, !tbaa !278
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %88, label %89, !prof !932, !llvm.loop !933

110:                                              ; preds = %88, %124
  %111 = phi i8 [ %129, %124 ], [ %73, %88 ]
  %112 = zext i8 %111 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %87, i64 32, i1 false)
  %113 = tail call ptr @rtx_alloc_stat(i32 noundef 32) #38
  %114 = load i32, ptr %113, align 8
  %115 = shl nuw nsw i32 %112, 16
  %116 = and i32 %114, -16711681
  %117 = or disjoint i32 %116, %115
  store i32 %117, ptr %113, align 8
  %118 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %118, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !292
  %119 = load ptr, ptr @const_double_htab, align 8, !tbaa !267
  %120 = tail call ptr @htab_find_slot(ptr noundef %119, ptr noundef nonnull %113, i32 noundef 1) #38
  %121 = load ptr, ptr %120, align 8, !tbaa !267
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %124, !prof !934

123:                                              ; preds = %110
  store ptr %113, ptr %120, align 8, !tbaa !267
  br label %124

124:                                              ; preds = %110, %123
  %125 = load ptr, ptr %120, align 8, !tbaa !267
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1)
  %126 = zext i8 %111 to i64
  %127 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %83, i64 %126
  store ptr %125, ptr %127, align 8, !tbaa !267
  %128 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %126
  %129 = load i8, ptr %128, align 1, !tbaa !278
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %110, !prof !935, !llvm.loop !936

131:                                              ; preds = %124, %88
  %132 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %83)
  %133 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %83
  store ptr %132, ptr %133, align 8, !tbaa !267
  br i1 %76, label %134, label %135, !prof !930

134:                                              ; preds = %135, %131
  br i1 %78, label %151, label %143, !prof !757

135:                                              ; preds = %131, %135
  %136 = phi i8 [ %141, %135 ], [ %75, %131 ]
  %137 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %83)
  %138 = zext i8 %136 to i64
  %139 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %83, i64 %138
  store ptr %137, ptr %139, align 8, !tbaa !267
  %140 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %138
  %141 = load i8, ptr %140, align 1, !tbaa !278
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %134, label %135, !prof !937, !llvm.loop !938

143:                                              ; preds = %134, %143
  %144 = phi i8 [ %149, %143 ], [ %77, %134 ]
  %145 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %83)
  %146 = zext i8 %144 to i64
  %147 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %83, i64 %146
  store ptr %145, ptr %147, align 8, !tbaa !267
  %148 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %146
  %149 = load i8, ptr %148, align 1, !tbaa !278
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %143, !prof !757, !llvm.loop !939

151:                                              ; preds = %143, %134
  %152 = add nuw nsw i64 %83, 1
  %153 = icmp eq i64 %152, 3
  br i1 %153, label %79, label %82, !prof !929, !llvm.loop !940

154:                                              ; preds = %157, %79
  %155 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 11), align 1, !tbaa !278
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %171, label %174, !prof !920

157:                                              ; preds = %79, %157
  %158 = phi i8 [ %169, %157 ], [ %80, %79 ]
  %159 = zext i8 %158 to i32
  %160 = zext i8 %158 to i64
  %161 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !278
  %163 = zext i8 %162 to i64
  %164 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !267
  %166 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %159, ptr noundef %165, ptr noundef %165) #38
  %167 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %160
  store ptr %166, ptr %167, align 8, !tbaa !267
  %168 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %160
  %169 = load i8, ptr %168, align 1, !tbaa !278
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %154, label %157, !prof !922, !llvm.loop !941

171:                                              ; preds = %174, %154
  %172 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 12), align 4, !tbaa !278
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %188, label %191, !prof !920

174:                                              ; preds = %154, %174
  %175 = phi i8 [ %186, %174 ], [ %155, %154 ]
  %176 = zext i8 %175 to i32
  %177 = zext i8 %175 to i64
  %178 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !278
  %180 = zext i8 %179 to i64
  %181 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !267
  %183 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %176, ptr noundef %182, ptr noundef %182) #38
  %184 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %177
  store ptr %183, ptr %184, align 8, !tbaa !267
  %185 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %177
  %186 = load i8, ptr %185, align 1, !tbaa !278
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %171, label %174, !prof !925, !llvm.loop !942

188:                                              ; preds = %191, %171
  %189 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 17), align 1, !tbaa !278
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %202, label %205, !prof !920

191:                                              ; preds = %171, %191
  %192 = phi i8 [ %200, %191 ], [ %172, %171 ]
  %193 = zext i8 %192 to i32
  %194 = tail call fastcc ptr @gen_const_vector(i32 noundef %193, i32 noundef 0)
  %195 = zext i8 %192 to i64
  %196 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %195
  store ptr %194, ptr %196, align 8, !tbaa !267
  %197 = tail call fastcc ptr @gen_const_vector(i32 noundef %193, i32 noundef 1)
  %198 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %195
  store ptr %197, ptr %198, align 8, !tbaa !267
  %199 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %195
  %200 = load i8, ptr %199, align 1, !tbaa !278
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %188, label %191, !prof !943, !llvm.loop !944

202:                                              ; preds = %205, %188
  %203 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 4), align 4, !tbaa !278
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %216, label %219, !prof !920

205:                                              ; preds = %188, %205
  %206 = phi i8 [ %214, %205 ], [ %189, %188 ]
  %207 = zext i8 %206 to i32
  %208 = tail call fastcc ptr @gen_const_vector(i32 noundef %207, i32 noundef 0)
  %209 = zext i8 %206 to i64
  %210 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %209
  store ptr %208, ptr %210, align 8, !tbaa !267
  %211 = tail call fastcc ptr @gen_const_vector(i32 noundef %207, i32 noundef 1)
  %212 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %209
  store ptr %211, ptr %212, align 8, !tbaa !267
  %213 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %209
  %214 = load i8, ptr %213, align 1, !tbaa !278
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %202, label %205, !prof !945, !llvm.loop !946

216:                                              ; preds = %219, %202
  %217 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 5), align 1, !tbaa !278
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %232, label %235, !prof !920

219:                                              ; preds = %202, %219
  %220 = phi i8 [ %230, %219 ], [ %203, %202 ]
  %221 = zext i8 %220 to i32
  %222 = add nsw i32 %221, -20
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %223
  %225 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %223, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %224, i8 0, i64 16, i1 false)
  store i32 %221, ptr %225, align 8, !tbaa !947
  %226 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %224, i32 noundef %221)
  %227 = zext i8 %220 to i64
  %228 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %227
  store ptr %226, ptr %228, align 8, !tbaa !267
  %229 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %227
  %230 = load i8, ptr %229, align 1, !tbaa !278
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %216, label %219, !prof !950, !llvm.loop !951

232:                                              ; preds = %235, %216
  %233 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 6), align 2, !tbaa !278
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %248, label %251, !prof !920

235:                                              ; preds = %216, %235
  %236 = phi i8 [ %246, %235 ], [ %217, %216 ]
  %237 = zext i8 %236 to i32
  %238 = add nsw i32 %237, -20
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %239
  %241 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %239, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %240, i8 0, i64 16, i1 false)
  store i32 %237, ptr %241, align 8, !tbaa !947
  %242 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %240, i32 noundef %237)
  %243 = zext i8 %236 to i64
  %244 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %243
  store ptr %242, ptr %244, align 8, !tbaa !267
  %245 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %243
  %246 = load i8, ptr %245, align 1, !tbaa !278
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %232, label %235, !prof !950, !llvm.loop !952

248:                                              ; preds = %272, %232
  %249 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 7), align 1, !tbaa !278
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %279, label %282, !prof !920

251:                                              ; preds = %232, %272
  %252 = phi i8 [ %277, %272 ], [ %233, %232 ]
  %253 = zext i8 %252 to i32
  %254 = add nsw i32 %253, -20
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %255
  %257 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %255, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %256, i8 0, i64 16, i1 false)
  store i32 %253, ptr %257, align 8, !tbaa !947
  %258 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %256, i32 noundef %253)
  %259 = zext i8 %252 to i64
  %260 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %259
  store ptr %258, ptr %260, align 8, !tbaa !267
  %261 = add nsw i32 %253, -30
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds [8 x %struct.fixed_value], ptr @fconst1, i64 0, i64 %262
  %264 = getelementptr inbounds %struct.double_int, ptr %263, i64 0, i32 1
  %265 = getelementptr inbounds [8 x %struct.fixed_value], ptr @fconst1, i64 0, i64 %262, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %263, i8 0, i64 16, i1 false)
  store i32 %253, ptr %265, align 8, !tbaa !947
  %266 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %259
  %267 = load i8, ptr %266, align 1, !tbaa !278
  %268 = zext i8 %267 to i64
  %269 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %259
  %270 = load i8, ptr %269, align 1, !tbaa !278
  switch i8 %270, label %271 [
    i8 4, label %272
    i8 13, label %272
    i8 6, label %272
    i8 15, label %272
  ], !prof !953

271:                                              ; preds = %251
  br label %272

272:                                              ; preds = %251, %251, %251, %251, %271
  %273 = phi i32 [ 0, %271 ], [ 1, %251 ], [ 1, %251 ], [ 1, %251 ], [ 1, %251 ]
  tail call void @lshift_double(i64 noundef 1, i64 noundef 0, i64 noundef %268, i32 noundef 128, ptr noundef nonnull %263, ptr noundef nonnull %264, i32 noundef %273) #38
  %274 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %263, i32 noundef %253)
  %275 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %259
  store ptr %274, ptr %275, align 8, !tbaa !267
  %276 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %259
  %277 = load i8, ptr %276, align 1, !tbaa !278
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %248, label %251, !prof !925, !llvm.loop !954

279:                                              ; preds = %303, %248
  %280 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 13), align 1, !tbaa !278
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %310, label %313, !prof !757

282:                                              ; preds = %248, %303
  %283 = phi i8 [ %308, %303 ], [ %249, %248 ]
  %284 = zext i8 %283 to i32
  %285 = add nsw i32 %284, -20
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %286
  %288 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %286, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %287, i8 0, i64 16, i1 false)
  store i32 %284, ptr %288, align 8, !tbaa !947
  %289 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %287, i32 noundef %284)
  %290 = zext i8 %283 to i64
  %291 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %290
  store ptr %289, ptr %291, align 8, !tbaa !267
  %292 = add nsw i32 %284, -30
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds [8 x %struct.fixed_value], ptr @fconst1, i64 0, i64 %293
  %295 = getelementptr inbounds %struct.double_int, ptr %294, i64 0, i32 1
  %296 = getelementptr inbounds [8 x %struct.fixed_value], ptr @fconst1, i64 0, i64 %293, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %294, i8 0, i64 16, i1 false)
  store i32 %284, ptr %296, align 8, !tbaa !947
  %297 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %290
  %298 = load i8, ptr %297, align 1, !tbaa !278
  %299 = zext i8 %298 to i64
  %300 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %290
  %301 = load i8, ptr %300, align 1, !tbaa !278
  switch i8 %301, label %302 [
    i8 4, label %303
    i8 13, label %303
    i8 6, label %303
    i8 15, label %303
  ], !prof !955

302:                                              ; preds = %282
  br label %303

303:                                              ; preds = %282, %282, %282, %282, %302
  %304 = phi i32 [ 0, %302 ], [ 1, %282 ], [ 1, %282 ], [ 1, %282 ], [ 1, %282 ]
  tail call void @lshift_double(i64 noundef 1, i64 noundef 0, i64 noundef %299, i32 noundef 128, ptr noundef nonnull %294, ptr noundef nonnull %295, i32 noundef %304) #38
  %305 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %294, i32 noundef %284)
  %306 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %290
  store ptr %305, ptr %306, align 8, !tbaa !267
  %307 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %290
  %308 = load i8, ptr %307, align 1, !tbaa !278
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %279, label %282, !prof !925, !llvm.loop !956

310:                                              ; preds = %313, %279
  %311 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 14), align 2, !tbaa !278
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %322, label %325, !prof !757

313:                                              ; preds = %279, %313
  %314 = phi i8 [ %320, %313 ], [ %280, %279 ]
  %315 = zext i8 %314 to i32
  %316 = tail call fastcc ptr @gen_const_vector(i32 noundef %315, i32 noundef 0)
  %317 = zext i8 %314 to i64
  %318 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %317
  store ptr %316, ptr %318, align 8, !tbaa !267
  %319 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %317
  %320 = load i8, ptr %319, align 1, !tbaa !278
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %310, label %313, !prof !757, !llvm.loop !957

322:                                              ; preds = %325, %310
  %323 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 15), align 1, !tbaa !278
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %334, label %337, !prof !757

325:                                              ; preds = %310, %325
  %326 = phi i8 [ %332, %325 ], [ %311, %310 ]
  %327 = zext i8 %326 to i32
  %328 = tail call fastcc ptr @gen_const_vector(i32 noundef %327, i32 noundef 0)
  %329 = zext i8 %326 to i64
  %330 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %329
  store ptr %328, ptr %330, align 8, !tbaa !267
  %331 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %329
  %332 = load i8, ptr %331, align 1, !tbaa !278
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %322, label %325, !prof !757, !llvm.loop !958

334:                                              ; preds = %337, %322
  %335 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 16), align 16, !tbaa !278
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %348, label %350, !prof !757

337:                                              ; preds = %322, %337
  %338 = phi i8 [ %346, %337 ], [ %323, %322 ]
  %339 = zext i8 %338 to i32
  %340 = tail call fastcc ptr @gen_const_vector(i32 noundef %339, i32 noundef 0)
  %341 = zext i8 %338 to i64
  %342 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %341
  store ptr %340, ptr %342, align 8, !tbaa !267
  %343 = tail call fastcc ptr @gen_const_vector(i32 noundef %339, i32 noundef 1)
  %344 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %341
  store ptr %343, ptr %344, align 8, !tbaa !267
  %345 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %341
  %346 = load i8, ptr %345, align 1, !tbaa !278
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %334, label %337, !prof !757, !llvm.loop !959

348:                                              ; preds = %350, %334
  %349 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  br label %361

350:                                              ; preds = %334, %350
  %351 = phi i8 [ %359, %350 ], [ %335, %334 ]
  %352 = zext i8 %351 to i32
  %353 = tail call fastcc ptr @gen_const_vector(i32 noundef %352, i32 noundef 0)
  %354 = zext i8 %351 to i64
  %355 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %354
  store ptr %353, ptr %355, align 8, !tbaa !267
  %356 = tail call fastcc ptr @gen_const_vector(i32 noundef %352, i32 noundef 1)
  %357 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %354
  store ptr %356, ptr %357, align 8, !tbaa !267
  %358 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %354
  %359 = load i8, ptr %358, align 1, !tbaa !278
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %348, label %350, !prof !757, !llvm.loop !960

361:                                              ; preds = %348, %368
  %362 = phi i64 [ 2, %348 ], [ %369, %368 ]
  %363 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %362
  %364 = load i8, ptr %363, align 1, !tbaa !278
  %365 = icmp eq i8 %364, 1
  br i1 %365, label %366, label %368, !prof !961

366:                                              ; preds = %361
  %367 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %362
  store ptr %349, ptr %367, align 8, !tbaa !267
  br label %368

368:                                              ; preds = %361, %366
  %369 = add nuw nsw i64 %362, 1
  %370 = icmp eq i64 %369, 87
  br i1 %370, label %371, label %361, !prof !962, !llvm.loop !963

371:                                              ; preds = %368
  %372 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !267
  store ptr %372, ptr getelementptr inbounds ([3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 0, i64 13), align 8, !tbaa !267
  %373 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !267
  store ptr %373, ptr getelementptr inbounds ([3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 13), align 16, !tbaa !267
  ret void
}

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @const_int_htab_hash(ptr nocapture noundef readonly %0) #35 !prof !964 !PGOFuncName !965 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !278
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @const_int_htab_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #36 !prof !966 !PGOFuncName !967 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !278
  %5 = load i64, ptr %1, align 8, !tbaa !288
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

declare void @ggc_free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @const_double_htab_hash(ptr noundef %0) #9 !prof !968 !PGOFuncName !969 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 16711680
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  br i1 %4, label %6, label %12, !prof !970

6:                                                ; preds = %1
  %7 = load i64, ptr %5, align 8, !tbaa !278
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load i64, ptr %8, align 8, !tbaa !278
  %10 = xor i64 %9, %7
  %11 = trunc i64 %10 to i32
  br label %18

12:                                               ; preds = %1
  %13 = tail call i32 @real_hash(ptr noundef nonnull %5) #38
  %14 = load i32, ptr %0, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = xor i32 %16, %13
  br label %18

18:                                               ; preds = %12, %6
  %19 = phi i32 [ %11, %6 ], [ %17, %12 ]
  ret i32 %19
}

; Function Attrs: cold nounwind uwtable
define internal i32 @const_double_htab_eq(ptr noundef %0, ptr noundef %1) #11 !prof !750 !PGOFuncName !971 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = load i32, ptr %1, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %29, !prof !644

10:                                               ; preds = %2
  %11 = icmp eq i32 %5, 0
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  br i1 %11, label %13, label %25

13:                                               ; preds = %10
  %14 = load i64, ptr %12, align 8, !tbaa !278
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !278
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load i64, ptr %19, align 8, !tbaa !278
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load i64, ptr %21, align 8, !tbaa !278
  %23 = icmp eq i64 %20, %22
  %24 = zext i1 %23 to i32
  br label %29

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %27 = tail call zeroext i8 @real_identical(ptr noundef nonnull %12, ptr noundef nonnull %26) #38
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %13, %18, %2, %25
  %30 = phi i32 [ %28, %25 ], [ 0, %2 ], [ 0, %13 ], [ %24, %18 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @const_fixed_htab_hash(ptr noundef %0) #9 !prof !293 !PGOFuncName !972 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = tail call i32 @fixed_hash(ptr noundef nonnull %2) #38
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = xor i32 %6, %3
  ret i32 %7
}

; Function Attrs: cold nounwind uwtable
define internal i32 @const_fixed_htab_eq(ptr noundef %0, ptr noundef %1) #11 !prof !973 !PGOFuncName !974 {
  %3 = load i32, ptr %0, align 8
  %4 = load i32, ptr %1, align 8
  %5 = xor i32 %4, %3
  %6 = and i32 %5, 16711680
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13, !prof !975

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %11 = tail call zeroext i8 @fixed_identical(ptr noundef nonnull %9, ptr noundef nonnull %10) #38
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi i32 [ %12, %8 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @mem_attrs_htab_hash(ptr nocapture noundef readonly %0) #10 !prof !976 !PGOFuncName !977 {
  %2 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !324
  %4 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !317
  %6 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 8, !tbaa !318
  %8 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !315
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !978

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !278
  %14 = mul nsw i64 %13, 50000
  br label %15

15:                                               ; preds = %1, %11
  %16 = phi i64 [ %14, %11 ], [ 0, %1 ]
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !316
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !979

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !278
  %23 = mul nsw i64 %22, 2500000
  br label %24

24:                                               ; preds = %15, %20
  %25 = phi i64 [ %23, %20 ], [ 0, %15 ]
  %26 = mul i32 %5, 1000
  %27 = xor i32 %26, %3
  %28 = zext i8 %7 to i32
  %29 = mul nuw nsw i32 %28, 4000
  %30 = xor i32 %27, %29
  %31 = zext i32 %30 to i64
  %32 = xor i64 %16, %31
  %33 = xor i64 %32, %25
  %34 = load ptr, ptr %0, align 8, !tbaa !313
  %35 = tail call i32 @iterative_hash_expr(ptr noundef %34, i32 noundef 0) #38
  %36 = trunc i64 %33 to i32
  %37 = xor i32 %35, %36
  ret i32 %37
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @mem_attrs_htab_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !980 !PGOFuncName !981 {
  %3 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !324
  %5 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !324
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %44, !prof !982

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !315
  %11 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !315
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %44, !prof !983

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !316
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !316
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %20, label %44, !prof !984

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !317
  %23 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !317
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %44, !prof !985

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 5
  %28 = load i8, ptr %27, align 8, !tbaa !318
  %29 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 5
  %30 = load i8, ptr %29, align 8, !tbaa !318
  %31 = icmp eq i8 %28, %30
  br i1 %31, label %32, label %44, !prof !985

32:                                               ; preds = %26
  %33 = load ptr, ptr %0, align 8, !tbaa !313
  %34 = load ptr, ptr %1, align 8, !tbaa !313
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %44, label %36, !prof !986

36:                                               ; preds = %32
  %37 = icmp eq ptr %33, null
  %38 = icmp eq ptr %34, null
  %39 = or i1 %37, %38
  br i1 %39, label %44, label %40, !prof !987

40:                                               ; preds = %36
  %41 = tail call i32 @operand_equal_p(ptr noundef nonnull %33, ptr noundef nonnull %34, i32 noundef 0) #38
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %32, %40, %36, %26, %20, %14, %8, %2
  %45 = phi i32 [ 0, %26 ], [ 0, %20 ], [ 0, %14 ], [ 0, %8 ], [ 0, %2 ], [ 1, %32 ], [ 0, %36 ], [ %43, %40 ]
  ret i32 %45
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @reg_attrs_htab_hash(ptr nocapture noundef readonly %0) #36 !prof !988 !PGOFuncName !989 {
  %2 = getelementptr inbounds %struct.reg_attrs, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !371
  %4 = mul nsw i64 %3, 1000
  %5 = load ptr, ptr %0, align 8, !tbaa !369
  %6 = ptrtoint ptr %5 to i64
  %7 = xor i64 %4, %6
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @reg_attrs_htab_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #36 !prof !990 !PGOFuncName !991 {
  %3 = load ptr, ptr %0, align 8, !tbaa !369
  %4 = load ptr, ptr %1, align 8, !tbaa !369
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %13, !prof !992

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.reg_attrs, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !371
  %9 = getelementptr inbounds %struct.reg_attrs, ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !371
  %11 = icmp eq i64 %8, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %6 ]
  ret i32 %14
}

declare void @real_from_integer(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @gen_const_vector(i32 noundef %0, i32 noundef %1) unnamed_addr #9 !prof !993 !PGOFuncName !994 {
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !278
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %3
  %8 = load i8, ptr %7, align 1, !tbaa !278
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !278
  %12 = icmp eq i8 %11, 9
  br i1 %12, label %13, label %14, !prof !995

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5626, ptr noundef nonnull @.str.1) #38
  br label %14

14:                                               ; preds = %2, %13
  %15 = tail call ptr @rtvec_alloc(i32 noundef %6) #38
  %16 = zext nneg i32 %1 to i64
  %17 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %16, i64 %9
  %18 = load ptr, ptr %17, align 8, !tbaa !267
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !995

20:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5632, ptr noundef nonnull @.str.1) #38
  br label %21

21:                                               ; preds = %14, %20
  %22 = icmp eq i8 %5, 0
  br i1 %22, label %31, label %23, !prof !920

23:                                               ; preds = %21
  %24 = zext i8 %5 to i64
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ 0, %23 ], [ %29, %25 ]
  %27 = load ptr, ptr %17, align 8, !tbaa !267
  %28 = getelementptr inbounds %struct.rtvec_def, ptr %15, i64 0, i32 1, i64 %26
  store ptr %27, ptr %28, align 8, !tbaa !267
  %29 = add nuw nsw i64 %26, 1
  %30 = icmp eq i64 %29, %24
  br i1 %30, label %31, label %25, !prof !996, !llvm.loop !997

31:                                               ; preds = %25, %21
  %32 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 33, i32 noundef %0, ptr noundef %15) #38
  ret ptr %32
}

declare void @lshift_double(i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @emit_copy_of_insn_after(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !998 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %61 [
    i16 8, label %5
    i16 9, label %10
    i16 7, label %27
    i16 10, label %32
  ], !prof !999

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !278
  store i32 0, ptr @copy_insn_n_scratches, align 4, !tbaa !282
  store ptr null, ptr @orig_asm_operands_vector, align 8, !tbaa !267
  store ptr null, ptr @orig_asm_constraints_vector, align 8, !tbaa !267
  store ptr null, ptr @copy_asm_operands_vector, align 8, !tbaa !267
  store ptr null, ptr @copy_asm_constraints_vector, align 8, !tbaa !267
  %8 = tail call ptr @copy_insn_1(ptr noundef %7)
  %9 = tail call ptr @emit_insn_after(ptr noundef %8, ptr noundef %1)
  br label %62

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !278
  store i32 0, ptr @copy_insn_n_scratches, align 4, !tbaa !282
  store ptr null, ptr @orig_asm_operands_vector, align 8, !tbaa !267
  store ptr null, ptr @orig_asm_constraints_vector, align 8, !tbaa !267
  store ptr null, ptr @copy_asm_operands_vector, align 8, !tbaa !267
  store ptr null, ptr @copy_asm_constraints_vector, align 8, !tbaa !267
  %13 = tail call ptr @copy_insn_1(ptr noundef %12)
  br label %14

14:                                               ; preds = %18, %10
  %15 = phi ptr [ %1, %10 ], [ %20, %18 ]
  %16 = load i32, ptr %15, align 8
  %17 = trunc i32 %16 to i16
  switch i16 %17, label %25 [
    i16 7, label %18
    i16 8, label %21
    i16 9, label %21
    i16 10, label %21
  ], !prof !820

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !278
  br label %14, !llvm.loop !821

21:                                               ; preds = %14, %14, %14
  %22 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !278
  %24 = tail call ptr @emit_jump_insn_after_setloc(ptr noundef %13, ptr noundef %1, i32 noundef %23)
  br label %62

25:                                               ; preds = %14
  %26 = tail call ptr @emit_jump_insn_after_noloc(ptr noundef %13, ptr noundef %1)
  br label %62

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !278
  store i32 0, ptr @copy_insn_n_scratches, align 4, !tbaa !282
  store ptr null, ptr @orig_asm_operands_vector, align 8, !tbaa !267
  store ptr null, ptr @orig_asm_constraints_vector, align 8, !tbaa !267
  store ptr null, ptr @copy_asm_operands_vector, align 8, !tbaa !267
  store ptr null, ptr @copy_asm_constraints_vector, align 8, !tbaa !267
  %30 = tail call ptr @copy_insn_1(ptr noundef %29)
  %31 = tail call ptr @emit_debug_insn_after(ptr noundef %30, ptr noundef %1)
  br label %62

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !278
  store i32 0, ptr @copy_insn_n_scratches, align 4, !tbaa !282
  store ptr null, ptr @orig_asm_operands_vector, align 8, !tbaa !267
  store ptr null, ptr @orig_asm_constraints_vector, align 8, !tbaa !267
  store ptr null, ptr @copy_asm_operands_vector, align 8, !tbaa !267
  store ptr null, ptr @copy_asm_constraints_vector, align 8, !tbaa !267
  %35 = tail call ptr @copy_insn_1(ptr noundef %34)
  %36 = tail call ptr @emit_call_insn_after(ptr noundef %35, ptr noundef %1)
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !278
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  store i32 0, ptr @copy_insn_n_scratches, align 4, !tbaa !282
  store ptr null, ptr @orig_asm_operands_vector, align 8, !tbaa !267
  store ptr null, ptr @orig_asm_constraints_vector, align 8, !tbaa !267
  store ptr null, ptr @copy_asm_operands_vector, align 8, !tbaa !267
  store ptr null, ptr @copy_asm_constraints_vector, align 8, !tbaa !267
  %41 = tail call ptr @copy_insn_1(ptr noundef nonnull %38)
  %42 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %41, ptr %42, align 8, !tbaa !278
  br label %43

43:                                               ; preds = %40, %32
  %44 = load i32, ptr %0, align 8
  %45 = and i32 %44, 16777216
  %46 = load i32, ptr %36, align 8
  %47 = and i32 %46, -16777217
  %48 = or disjoint i32 %47, %45
  store i32 %48, ptr %36, align 8
  %49 = load i32, ptr %0, align 8
  %50 = and i32 %49, 67108864
  %51 = and i32 %48, -67108865
  %52 = or disjoint i32 %51, %50
  store i32 %52, ptr %36, align 8
  %53 = load i32, ptr %0, align 8
  %54 = and i32 %53, -2147483648
  %55 = and i32 %52, 2147483647
  %56 = or disjoint i32 %55, %54
  store i32 %56, ptr %36, align 8
  %57 = load i32, ptr %0, align 8
  %58 = and i32 %57, 33554432
  %59 = and i32 %56, -33554433
  %60 = or disjoint i32 %59, %58
  store i32 %60, ptr %36, align 8
  br label %62

61:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6007, ptr noundef nonnull @.str.1) #38
  br label %62

62:                                               ; preds = %25, %21, %61, %43, %27, %5
  %63 = phi ptr [ undef, %61 ], [ %36, %43 ], [ %31, %27 ], [ %9, %5 ], [ %24, %21 ], [ %26, %25 ]
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !278
  tail call void @mark_jump_label(ptr noundef %65, ptr noundef %63, i32 noundef 0) #38
  %66 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !278
  %68 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 2
  store i32 %67, ptr %68, align 8, !tbaa !278
  %69 = load i32, ptr %0, align 8
  %70 = and i32 %69, 1073741824
  %71 = load i32, ptr %63, align 8
  %72 = and i32 %71, -1073741825
  %73 = or disjoint i32 %72, %70
  store i32 %73, ptr %63, align 8
  %74 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !278
  %76 = icmp eq ptr %75, null
  br i1 %76, label %96, label %77, !prof !1000

77:                                               ; preds = %62, %92
  %78 = phi ptr [ %94, %92 ], [ %75, %62 ]
  %79 = load i32, ptr %78, align 8
  %80 = lshr i32 %79, 16
  %81 = and i32 %80, 255
  %82 = icmp eq i32 %81, 10
  br i1 %82, label %92, label %83, !prof !1001

83:                                               ; preds = %77
  %84 = and i32 %79, 65535
  %85 = icmp eq i32 %84, 3
  %86 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !278
  br i1 %85, label %88, label %90, !prof !1002

88:                                               ; preds = %83
  %89 = tail call ptr @copy_insn_1(ptr noundef %87)
  br label %90

90:                                               ; preds = %83, %88
  %91 = phi ptr [ %89, %88 ], [ %87, %83 ]
  tail call void @add_reg_note(ptr noundef nonnull %63, i32 noundef %81, ptr noundef %91) #38
  br label %92

92:                                               ; preds = %90, %77
  %93 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !278
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %77, !prof !1002, !llvm.loop !1003

96:                                               ; preds = %92, %62
  %97 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !278
  %99 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 1, i32 1
  store i32 %98, ptr %99, align 8, !tbaa !278
  ret ptr %63
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gen_hard_reg_clobber(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !1004 {
  %3 = zext i32 %0 to i64
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [87 x [53 x ptr]], ptr @hard_reg_clobbers, i64 0, i64 %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !267
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11, !prof !1005

8:                                                ; preds = %2
  %9 = tail call ptr @gen_rtx_REG(i32 noundef %0, i32 noundef %1)
  %10 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %9) #38
  store ptr %10, ptr %5, align 8, !tbaa !267
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %10, %8 ], [ %6, %2 ]
  ret ptr %12
}

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #3

declare void @gt_pch_nx_lang_tree_node(ptr noundef) #3

declare void @gt_ggc_mx_rtx_def(ptr noundef) #3

declare void @gt_pch_nx_rtx_def(ptr noundef) #3

declare i32 @ggc_marked_p(ptr noundef) #3

declare void @gt_ggc_mx_reg_attrs(ptr noundef) #3

declare void @gt_pch_nx_reg_attrs(ptr noundef) #3

declare void @gt_ggc_mx_mem_attrs(ptr noundef) #3

declare void @gt_pch_nx_mem_attrs(ptr noundef) #3

declare void @gt_ggc_m_P7rtx_def4htab(ptr noundef) #3

declare void @gt_pch_n_P7rtx_def4htab(ptr noundef) #3

declare void @gt_ggc_m_P9reg_attrs4htab(ptr noundef) #3

declare void @gt_pch_n_P9reg_attrs4htab(ptr noundef) #3

declare void @gt_ggc_m_P9mem_attrs4htab(ptr noundef) #3

declare void @gt_pch_n_P9mem_attrs4htab(ptr noundef) #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @constant_address_p(ptr noundef) local_unnamed_addr #3

declare i32 @real_hash(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_identical(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @fixed_hash(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @fixed_identical(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #37

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #37

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #38 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!265}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!35 = !{ptr @gen_raw_REG, ptr @gen_rtx_fmt_i00_stat, i64 70}
!36 = !{ptr @gen_rtx_CONST_INT, ptr @htab_find_slot_with_hash, i64 1518720}
!37 = !{ptr @gen_rtx_CONST_INT, ptr @gen_rtx_fmt_w_stat, i64 783}
!38 = !{ptr @gen_int_mode, ptr @trunc_int_for_mode, i64 4085414}
!39 = !{ptr @gen_int_mode, ptr @htab_find_slot_with_hash, i64 1843057}
!40 = !{ptr @gen_int_mode, ptr @gen_rtx_fmt_w_stat, i64 951}
!41 = !{ptr @const_fixed_from_fixed_value, ptr @rtx_alloc_stat, i64 26}
!42 = !{ptr @const_fixed_from_fixed_value, ptr @htab_find_slot, i64 26}
!43 = !{ptr @immed_double_const, ptr @trunc_int_for_mode, i64 218461}
!44 = !{ptr @immed_double_const, ptr @htab_find_slot_with_hash, i64 98555}
!45 = !{ptr @immed_double_const, ptr @gen_rtx_fmt_w_stat, i64 51}
!46 = !{ptr @gen_rtx_REG, ptr @gen_rtx_fmt_i00_stat, i64 745446}
!47 = !{ptr @gen_rtx_MEM, ptr @gen_rtx_fmt_e0_stat, i64 316509}
!48 = !{ptr @gen_const_mem, ptr @gen_rtx_fmt_e0_stat, i64 23}
!49 = !{ptr @set_mem_alias_set, ptr @htab_find_slot, i64 163342}
!50 = !{ptr @set_mem_alias_set, ptr @ggc_alloc_stat, i64 82}
!51 = !{ptr @gen_rtx_SUBREG, ptr @gen_rtx_fmt_ei_stat, i64 115290}
!52 = !{ptr @gen_rtvec, ptr @rtvec_alloc, i64 118260}
!53 = !{ptr @gen_rtvec_v, ptr @rtvec_alloc, i64 23}
!54 = !{ptr @gen_reg_rtx, ptr @get_mode_alignment, i64 289798}
!55 = !{ptr @gen_reg_rtx, ptr @xrealloc, i64 101}
!56 = !{ptr @gen_reg_rtx, ptr @ggc_realloc_stat, i64 101}
!57 = !{ptr @gen_reg_rtx, ptr @gen_rtx_fmt_i00_stat, i64 289798}
!58 = !{ptr @gen_rtx_REG_offset, ptr @gen_rtx_fmt_i00_stat, i64 3118}
!59 = !{ptr @gen_rtx_REG_offset, ptr @htab_find_slot, i64 2911}
!60 = !{ptr @gen_rtx_REG_offset, ptr @ggc_alloc_stat, i64 954}
!61 = !{ptr @adjust_reg_mode, ptr @htab_find_slot, i64 20923}
!62 = !{ptr @adjust_reg_mode, ptr @ggc_alloc_stat, i64 6859}
!63 = !{ptr @set_reg_attrs_from_value, ptr @htab_find_slot, i64 18699}
!64 = !{ptr @set_reg_attrs_from_value, ptr @ggc_alloc_stat, i64 6130}
!65 = !{ptr @set_reg_attrs_from_value, ptr @get_reg_attrs, i64 3}
!66 = !{ptr @get_reg_attrs, ptr @htab_find_slot, i64 3}
!67 = !{ptr @get_reg_attrs, ptr @ggc_alloc_stat, i64 1}
!68 = !{ptr @gen_reg_rtx_and_attrs, ptr @gen_reg_rtx, i64 3}
!69 = !{ptr @gen_reg_rtx_and_attrs, ptr @set_reg_attrs_from_value, i64 3}
!70 = !{ptr @set_reg_attrs_for_decl_rtl, ptr @htab_find_slot, i64 174725}
!71 = !{ptr @set_reg_attrs_for_decl_rtl, ptr @ggc_alloc_stat, i64 57276}
!72 = !{ptr @set_decl_rtl, ptr @htab_find_slot, i64 99371}
!73 = !{ptr @set_decl_rtl, ptr @ggc_alloc_stat, i64 32575}
!74 = !{ptr @set_decl_incoming_rtl, ptr @set_reg_attrs_for_decl_rtl, i64 38}
!75 = !{ptr @gen_lowpart_common, ptr @mode_for_size, i64 282576}
!76 = !{ptr @gen_lowpart_common, ptr @simplify_gen_subreg, i64 344689}
!77 = !{ptr @adjust_address_1, ptr @memory_address_addr_space_p, i64 1131}
!78 = !{ptr @adjust_address_1, ptr @copy_rtx, i64 106326}
!79 = !{ptr @adjust_address_1, ptr @plus_constant, i64 106326}
!80 = !{ptr @adjust_address_1, ptr @memory_address_addr_space, i64 2611}
!81 = !{ptr @adjust_address_1, ptr @rtx_equal_p, i64 14641}
!82 = !{ptr @adjust_address_1, ptr @gen_rtx_fmt_e0_stat, i64 14641}
!83 = !{ptr @adjust_address_1, ptr @htab_find_slot_with_hash, i64 95809}
!84 = !{ptr @adjust_address_1, ptr @gen_rtx_fmt_w_stat, i64 50}
!85 = !{ptr @adjust_address_1, ptr @htab_find_slot, i64 106318}
!86 = !{ptr @adjust_address_1, ptr @ggc_alloc_stat, i64 54}
!87 = !{ptr @replace_equiv_address, ptr @update_temp_slot_address, i64 81706}
!88 = !{ptr @replace_equiv_address, ptr @change_address_1, i64 81706}
!89 = !{ptr @mem_expr_equal_p, ptr @operand_equal_p, i64 8}
!90 = !{ptr @set_mem_attributes_minus_bitpos, ptr @htab_find_slot_with_hash, i64 160682}
!91 = !{ptr @set_mem_attributes_minus_bitpos, ptr @gen_rtx_fmt_w_stat, i64 83}
!92 = !{ptr @set_mem_attributes_minus_bitpos, ptr @get_alias_set, i64 178333}
!93 = !{ptr @set_mem_attributes_minus_bitpos, ptr @host_integerp, i64 192800}
!94 = !{ptr @set_mem_attributes_minus_bitpos, ptr @tree_low_cst, i64 192794}
!95 = !{ptr @set_mem_attributes_minus_bitpos, ptr @get_base_address, i64 14997}
!96 = !{ptr @set_mem_attributes_minus_bitpos, ptr @component_uses_parent_alias_set, i64 14997}
!97 = !{ptr @set_mem_attributes_minus_bitpos, ptr @ix86_constant_alignment, i64 3}
!98 = !{ptr @set_mem_attributes_minus_bitpos, ptr @array_ref_low_bound, i64 14383}
!99 = !{ptr @set_mem_attributes_minus_bitpos, ptr @array_ref_element_size, i64 14383}
!100 = !{ptr @set_mem_attributes_minus_bitpos, ptr @integer_zerop, i64 14383}
!101 = !{ptr @set_mem_attributes_minus_bitpos, ptr @fold_convert_loc, i64 14383}
!102 = !{ptr @set_mem_attributes_minus_bitpos, ptr @size_binop_loc, i64 28766}
!103 = !{ptr @set_mem_attributes_minus_bitpos, ptr @get_object_alignment, i64 12609}
!104 = !{ptr @set_mem_attributes_minus_bitpos, ptr @plus_constant, i64 80}
!105 = !{ptr @set_mem_attributes_minus_bitpos, ptr @htab_find_slot, i64 178320}
!106 = !{ptr @set_mem_attributes_minus_bitpos, ptr @ggc_alloc_stat, i64 90}
!107 = !{ptr @get_mem_attrs, ptr @htab_find_slot, i64 55}
!108 = !{ptr @set_mem_attributes, ptr @set_mem_attributes_minus_bitpos, i64 178293}
!109 = !{ptr @set_mem_addr_space, ptr @htab_find_slot, i64 267}
!110 = !{ptr @set_mem_align, ptr @htab_find_slot_with_hash, i64 36848}
!111 = !{ptr @set_mem_align, ptr @gen_rtx_fmt_w_stat, i64 19}
!112 = !{ptr @set_mem_align, ptr @htab_find_slot, i64 245099}
!113 = !{ptr @set_mem_align, ptr @ggc_alloc_stat, i64 124}
!114 = !{ptr @set_mem_expr, ptr @get_mem_attrs, i64 16}
!115 = !{ptr @set_mem_offset, ptr @get_mem_attrs, i64 16}
!116 = !{ptr @set_mem_size, ptr @get_mem_attrs, i64 16}
!117 = !{ptr @change_address_1, ptr @memory_address_addr_space_p, i64 1}
!118 = !{ptr @change_address_1, ptr @memory_address_addr_space, i64 2006}
!119 = !{ptr @change_address_1, ptr @rtx_equal_p, i64 11251}
!120 = !{ptr @change_address_1, ptr @gen_rtx_fmt_e0_stat, i64 11251}
!121 = !{ptr @offset_address, ptr @simplify_gen_binary, i64 6}
!122 = !{ptr @offset_address, ptr @memory_address_addr_space_p, i64 6}
!123 = !{ptr @offset_address, ptr @update_temp_slot_address, i64 6}
!124 = !{ptr @offset_address, ptr @change_address_1, i64 6}
!125 = !{ptr @offset_address, ptr @get_mem_attrs, i64 6}
!126 = !{ptr @replace_equiv_address_nv, ptr @rtx_equal_p, i64 424541}
!127 = !{ptr @replace_equiv_address_nv, ptr @gen_rtx_fmt_e0_stat, i64 424541}
!128 = !{ptr @get_spill_slot_decl, ptr @get_identifier, i64 1}
!129 = !{ptr @get_spill_slot_decl, ptr @build_decl_stat, i64 1}
!130 = !{ptr @get_spill_slot_decl, ptr @gen_rtx_fmt_e0_stat, i64 1}
!131 = !{ptr @get_spill_slot_decl, ptr @new_alias_set, i64 1}
!132 = !{ptr @get_spill_slot_decl, ptr @get_mem_attrs, i64 1}
!133 = !{ptr @get_spill_slot_decl, ptr @set_reg_attrs_for_decl_rtl, i64 1}
!134 = !{ptr @set_mem_attrs_for_spill, ptr @get_spill_slot_decl, i64 302}
!135 = !{ptr @set_mem_attrs_for_spill, ptr @htab_find_slot, i64 302}
!136 = !{ptr @gen_label_rtx, ptr @gen_rtx_fmt_iuuB00is_stat, i64 164541}
!137 = !{ptr @unshare_all_rtl_again, ptr @reset_used_flags, i64 1115756}
!138 = !{ptr @unshare_all_rtl_again, ptr @set_used_decls, i64 38}
!139 = !{ptr @unshare_all_rtl_again, ptr @set_used_flags, i64 38}
!140 = !{ptr @unshare_all_rtl_again, ptr @copy_rtx_if_shared_1, i64 7340}
!141 = !{ptr @reset_used_flags, ptr @reset_used_flags, i64 2837119}
!142 = !{ptr @set_used_decls, ptr @set_used_flags, i64 38}
!143 = !{ptr @set_used_decls, ptr @set_used_decls, i64 42}
!144 = !{ptr @set_used_flags, ptr @set_used_flags, i64 3987}
!145 = !{ptr @unshare_all_rtl, ptr @copy_rtx_if_shared_1, i64 7340}
!146 = !{ptr @unshare_all_rtl_in_chain, ptr @copy_rtx_if_shared_1, i64 354328}
!147 = !{ptr @copy_rtx_if_shared, ptr @copy_rtx_if_shared_1, i64 260820}
!148 = !{ptr @copy_rtx_if_shared_1, ptr @shared_const_p, i64 33934}
!149 = !{ptr @copy_rtx_if_shared_1, ptr @shallow_copy_rtx_stat, i64 3247}
!150 = !{ptr @copy_rtx_if_shared_1, ptr @copy_rtx_if_shared_1, i64 3674872}
!151 = !{ptr @try_split, ptr @any_condjump_p, i64 1791788}
!152 = !{ptr @try_split, ptr @find_reg_note, i64 458153}
!153 = !{ptr @try_split, ptr @split_insns, i64 1784950}
!154 = !{ptr @try_split, ptr @rtx_equal_p, i64 20304}
!155 = !{ptr @try_split, ptr @copy_rtx_if_shared_1, i64 2340186}
!156 = !{ptr @try_split, ptr @mark_jump_label, i64 6838}
!157 = !{ptr @try_split, ptr @htab_find_slot_with_hash, i64 3085}
!158 = !{ptr @try_split, ptr @gen_rtx_fmt_w_stat, i64 2}
!159 = !{ptr @try_split, ptr @add_reg_note, i64 6838}
!160 = !{ptr @try_split, ptr @mark_label_nuses, i64 13466}
!161 = !{ptr @try_split, ptr @emit_insn_after_setloc, i64 12178}
!162 = !{ptr @try_split, ptr @delete_insn, i64 12178}
!163 = !{ptr @try_split, ptr @try_split, i64 20304}
!164 = !{ptr @mark_label_nuses, ptr @mark_label_nuses, i64 80166}
!165 = !{ptr @emit_insn_after_setloc, ptr @df_set_bb_dirty, i64 2253}
!166 = !{ptr @emit_insn_after_setloc, ptr @df_insn_rescan, i64 2526}
!167 = !{ptr @emit_insn_after_setloc, ptr @rtx_alloc_stat, i64 9}
!168 = !{ptr @emit_insn_after_setloc, ptr @curr_insn_locator, i64 9}
!169 = !{ptr @emit_insn_after_setloc, ptr @add_insn_after, i64 9}
!170 = !{ptr @emit_barrier_after, ptr @rtx_alloc_stat, i64 146507}
!171 = !{ptr @emit_barrier_after, ptr @df_insn_rescan, i64 60096}
!172 = !{ptr @make_insn_raw, ptr @rtx_alloc_stat, i64 1}
!173 = !{ptr @make_insn_raw, ptr @curr_insn_locator, i64 1}
!174 = !{ptr @add_insn_after, ptr @df_insn_rescan, i64 27683}
!175 = !{ptr @set_insn_deleted, ptr @df_insn_delete, i64 73685}
!176 = !{ptr @remove_insn, ptr @df_insn_delete, i64 883108}
!177 = !{ptr @remove_insn, ptr @df_set_bb_dirty, i64 620180}
!178 = !{ptr @reorder_insns, ptr @df_set_bb_dirty, i64 119320}
!179 = !{ptr @reorder_insns, ptr @df_insn_change_bb, i64 59660}
!180 = !{ptr @emit_insn_before_noloc, ptr @df_insn_rescan, i64 328}
!181 = !{ptr @emit_insn_before_noloc, ptr @rtx_alloc_stat, i64 290}
!182 = !{ptr @emit_insn_before_noloc, ptr @curr_insn_locator, i64 290}
!183 = !{ptr @emit_label_before, ptr @df_insn_rescan, i64 57847}
!184 = !{ptr @emit_note_before, ptr @rtx_alloc_stat, i64 143633}
!185 = !{ptr @emit_note_before, ptr @df_insn_rescan, i64 84049}
!186 = !{ptr @emit_insn_after_noloc, ptr @df_set_bb_dirty, i64 4346}
!187 = !{ptr @emit_insn_after_noloc, ptr @df_insn_rescan, i64 4873}
!188 = !{ptr @emit_insn_after_noloc, ptr @rtx_alloc_stat, i64 17}
!189 = !{ptr @emit_insn_after_noloc, ptr @curr_insn_locator, i64 17}
!190 = !{ptr @emit_insn_after_noloc, ptr @add_insn_after, i64 17}
!191 = !{ptr @emit_note_after, ptr @rtx_alloc_stat, i64 65662}
!192 = !{ptr @emit_note_after, ptr @add_insn_after, i64 65662}
!193 = !{ptr @emit_insn_after, ptr @df_set_bb_dirty, i64 89368}
!194 = !{ptr @emit_insn_after, ptr @df_insn_rescan, i64 100200}
!195 = !{ptr @emit_insn_after, ptr @rtx_alloc_stat, i64 349}
!196 = !{ptr @emit_insn_after, ptr @curr_insn_locator, i64 349}
!197 = !{ptr @emit_insn_after, ptr @add_insn_after, i64 349}
!198 = !{ptr @emit_insn_after, ptr @emit_insn_after_noloc, i64 325}
!199 = !{ptr @emit_jump_insn_after_setloc, ptr @rtx_alloc_stat, i64 146416}
!200 = !{ptr @emit_jump_insn_after_setloc, ptr @curr_insn_locator, i64 146416}
!201 = !{ptr @emit_jump_insn_after_setloc, ptr @df_insn_rescan, i64 60059}
!202 = !{ptr @emit_insn_before_setloc, ptr @df_insn_rescan, i64 217}
!203 = !{ptr @emit_insn_before_setloc, ptr @rtx_alloc_stat, i64 191}
!204 = !{ptr @emit_insn_before_setloc, ptr @curr_insn_locator, i64 191}
!205 = !{ptr @emit_insn_before, ptr @df_insn_rescan, i64 233974}
!206 = !{ptr @emit_insn_before, ptr @rtx_alloc_stat, i64 206712}
!207 = !{ptr @emit_insn_before, ptr @curr_insn_locator, i64 206712}
!208 = !{ptr @emit_insn, ptr @rtx_alloc_stat, i64 487151}
!209 = !{ptr @emit_insn, ptr @curr_insn_locator, i64 487151}
!210 = !{ptr @emit_jump_insn, ptr @rtx_alloc_stat, i64 167405}
!211 = !{ptr @emit_jump_insn, ptr @curr_insn_locator, i64 167405}
!212 = !{ptr @emit_call_insn, ptr @rtx_alloc_stat, i64 68958}
!213 = !{ptr @emit_call_insn, ptr @curr_insn_locator, i64 68958}
!214 = !{ptr @emit_barrier, ptr @rtx_alloc_stat, i64 10534}
!215 = !{ptr @emit_note_copy, ptr @rtx_alloc_stat, i64 29}
!216 = !{ptr @emit_note, ptr @rtx_alloc_stat, i64 97688}
!217 = !{ptr @emit_clobber, ptr @gen_rtx_fmt_e_stat, i64 76}
!218 = !{ptr @emit_clobber, ptr @rtx_alloc_stat, i64 39}
!219 = !{ptr @emit_clobber, ptr @curr_insn_locator, i64 39}
!220 = !{ptr @start_sequence, ptr @ggc_alloc_stat, i64 4}
!221 = !{ptr @emit_use, ptr @gen_rtx_fmt_e_stat, i64 38}
!222 = !{ptr @emit_use, ptr @rtx_alloc_stat, i64 19}
!223 = !{ptr @emit_use, ptr @curr_insn_locator, i64 19}
!224 = !{ptr @set_unique_reg_note, ptr @find_reg_note, i64 52423}
!225 = !{ptr @set_unique_reg_note, ptr @multiple_sets, i64 9378}
!226 = !{ptr @set_unique_reg_note, ptr @df_notes_rescan, i64 52423}
!227 = !{ptr @set_unique_reg_note, ptr @add_reg_note, i64 51196}
!228 = !{ptr @emit, ptr @rtx_alloc_stat, i64 9421}
!229 = !{ptr @emit, ptr @curr_insn_locator, i64 9421}
!230 = !{ptr @copy_insn_1, ptr @shallow_copy_rtx_stat, i64 1809}
!231 = !{ptr @copy_insn_1, ptr @copy_insn_1, i64 3068}
!232 = !{ptr @copy_insn_1, ptr @rtvec_alloc, i64 309}
!233 = !{ptr @copy_insn, ptr @copy_insn_1, i64 209}
!234 = !{ptr @init_emit, ptr @xcalloc, i64 40}
!235 = !{ptr @init_emit, ptr @ggc_alloc_stat, i64 40}
!236 = !{ptr @init_emit_regs, ptr @htab_empty, i64 1}
!237 = !{ptr @init_emit_regs, ptr @init_reg_modes_target, i64 1}
!238 = !{ptr @init_emit_regs, ptr @gen_rtx_fmt__stat, i64 2}
!239 = !{ptr @init_emit_regs, ptr @gen_rtx_fmt_i00_stat, i64 62}
!240 = !{ptr @init_emit_once, ptr @htab_create_alloc, i64 5}
!241 = !{ptr @init_emit_once, ptr @mode_for_size, i64 1}
!242 = !{ptr @init_emit_once, ptr @gen_rtx_fmt_w_stat, i64 129}
!243 = !{ptr @init_emit_once, ptr @real_from_integer, i64 3}
!244 = !{ptr @init_emit_once, ptr @rtx_alloc_stat, i64 21}
!245 = !{ptr @init_emit_once, ptr @htab_find_slot, i64 21}
!246 = !{ptr @init_emit_once, ptr @gen_rtx_CONST_INT, i64 21}
!247 = !{ptr @init_emit_once, ptr @gen_rtx_fmt_ee_stat, i64 10}
!248 = !{ptr @init_emit_once, ptr @gen_const_vector, i64 64}
!249 = !{ptr @init_emit_once, ptr @const_fixed_from_fixed_value, i64 26}
!250 = !{ptr @init_emit_once, ptr @lshift_double, i64 8}
!251 = !{ptr @const_double_htab_hash, ptr @real_hash, i64 21}
!252 = !{ptr @const_fixed_htab_hash, ptr @fixed_hash, i64 26}
!253 = !{ptr @const_fixed_htab_eq, ptr @fixed_identical, i64 2}
!254 = !{ptr @mem_attrs_htab_hash, ptr @iterative_hash_expr, i64 694035}
!255 = !{ptr @mem_attrs_htab_eq, ptr @operand_equal_p, i64 15045}
!256 = !{ptr @gen_const_vector, ptr @rtvec_alloc, i64 64}
!257 = !{ptr @gen_const_vector, ptr @gen_rtx_fmt_E_stat, i64 64}
!258 = !{ptr @emit_copy_of_insn_after, ptr @copy_insn_1, i64 561}
!259 = !{ptr @emit_copy_of_insn_after, ptr @emit_insn_after, i64 375}
!260 = !{ptr @emit_copy_of_insn_after, ptr @emit_jump_insn_after_setloc, i64 29}
!261 = !{ptr @emit_copy_of_insn_after, ptr @mark_jump_label, i64 404}
!262 = !{ptr @emit_copy_of_insn_after, ptr @add_reg_note, i64 157}
!263 = !{ptr @gen_hard_reg_clobber, ptr @gen_rtx_REG, i64 1}
!264 = !{ptr @gen_hard_reg_clobber, ptr @gen_rtx_fmt_e_stat, i64 1}
!265 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!266 = !{!"function_entry_count", i64 0}
!267 = !{!268, !268, i64 0}
!268 = !{!"any pointer", !269, i64 0}
!269 = !{!"omnipotent char", !270, i64 0}
!270 = !{!"Simple C/C++ TBAA"}
!271 = !{!272, !268, i64 8}
!272 = !{!"_IO_FILE", !273, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !268, i64 56, !268, i64 64, !268, i64 72, !268, i64 80, !268, i64 88, !268, i64 96, !268, i64 104, !273, i64 112, !273, i64 116, !274, i64 120, !275, i64 128, !269, i64 130, !269, i64 131, !268, i64 136, !274, i64 144, !268, i64 152, !268, i64 160, !268, i64 168, !268, i64 176, !274, i64 184, !273, i64 192, !269, i64 196}
!273 = !{!"int", !269, i64 0}
!274 = !{!"long", !269, i64 0}
!275 = !{!"short", !269, i64 0}
!276 = !{!272, !268, i64 16}
!277 = !{!"branch_weights", i32 2000, i32 1}
!278 = !{!269, !269, i64 0}
!279 = !{!272, !268, i64 40}
!280 = !{!272, !268, i64 48}
!281 = !{!272, !273, i64 0}
!282 = !{!273, !273, i64 0}
!283 = distinct !{!283, !284, !285}
!284 = !{!"llvm.loop.mustprogress"}
!285 = !{!"llvm.loop.unroll.disable"}
!286 = !{!"function_entry_count", i64 70}
!287 = !{!"function_entry_count", i64 3366472}
!288 = !{!274, !274, i64 0}
!289 = !{!"branch_weights", i32 4570659, i32 3756755}
!290 = !{!"branch_weights", i32 1938, i32 3754817}
!291 = !{!"function_entry_count", i64 4085414}
!292 = !{i64 0, i64 4, !282, i64 0, i64 4, !282, i64 0, i64 4, !282, i64 0, i64 4, !282, i64 0, i64 4, !282, i64 0, i64 4, !282, i64 8, i64 24, !278}
!293 = !{!"function_entry_count", i64 26}
!294 = !{i64 0, i64 8, !288, i64 8, i64 8, !288, i64 16, i64 4, !282}
!295 = !{!"branch_weights", i32 26, i32 0}
!296 = !{!"function_entry_count", i64 218461}
!297 = !{!"branch_weights", i32 0, i32 218461}
!298 = !{!"branch_weights", i32 0, i32 218461, i32 0, i32 0, i32 0}
!299 = !{!"branch_weights", i32 218461, i32 0}
!300 = !{!"function_entry_count", i64 746183}
!301 = !{!"branch_weights", i32 244484, i32 504820}
!302 = !{!"branch_weights", i32 244634, i32 504670}
!303 = !{!"branch_weights", i32 504441, i32 76, i32 77, i32 76}
!304 = !{!"branch_weights", i32 76, i32 0}
!305 = !{!"branch_weights", i32 77, i32 0}
!306 = !{!"branch_weights", i32 504441, i32 0}
!307 = !{!"branch_weights", i32 0, i32 504441}
!308 = !{!"branch_weights", i32 511, i32 503930}
!309 = !{!"function_entry_count", i64 316509}
!310 = !{!"function_entry_count", i64 23}
!311 = !{!"function_entry_count", i64 163354}
!312 = !{!"branch_weights", i32 0, i32 163354}
!313 = !{!314, !268, i64 0}
!314 = !{!"mem_attrs", !268, i64 0, !268, i64 8, !268, i64 16, !273, i64 24, !273, i64 28, !269, i64 32}
!315 = !{!314, !268, i64 8}
!316 = !{!314, !268, i64 16}
!317 = !{!314, !273, i64 28}
!318 = !{!314, !269, i64 32}
!319 = !{!"branch_weights", i32 245104, i32 448650}
!320 = !{!"branch_weights", i32 8, i32 245096}
!321 = !{!"branch_weights", i32 6, i32 245090}
!322 = !{!"branch_weights", i32 50, i32 245040}
!323 = !{!"branch_weights", i32 0, i32 8}
!324 = !{!314, !273, i64 24}
!325 = !{!"branch_weights", i32 350, i32 693354}
!326 = !{!"function_entry_count", i64 43554}
!327 = !{!"branch_weights", i32 158844, i32 0}
!328 = !{!"branch_weights", i32 77184, i32 81660}
!329 = !{!"branch_weights", i32 81660, i32 0}
!330 = !{!"branch_weights", i32 0, i32 81660}
!331 = !{!"branch_weights", i32 81660, i32 0, i32 0, i32 0, i32 0}
!332 = !{!"branch_weights", i32 63756, i32 17904}
!333 = !{!"branch_weights", i32 0, i32 63756}
!334 = !{!"function_entry_count", i64 16659}
!335 = !{!"function_entry_count", i64 115290}
!336 = !{!"branch_weights", i32 0, i32 115290}
!337 = !{!"function_entry_count", i64 118260}
!338 = !{!"branch_weights", i32 0, i32 118260}
!339 = !{!"branch_weights", i32 118259, i32 1}
!340 = !{!"branch_weights", i32 212276, i32 0}
!341 = !{!"branch_weights", i32 118259, i32 94017}
!342 = distinct !{!342, !284, !285}
!343 = !{!"branch_weights", i32 0, i32 23}
!344 = !{!"branch_weights", i32 183, i32 1}
!345 = !{!"branch_weights", i32 183, i32 323825}
!346 = distinct !{!346, !284, !285}
!347 = !{!"function_entry_count", i64 289798}
!348 = !{!"branch_weights", i32 0, i32 289798}
!349 = !{!350, !273, i64 452}
!350 = !{!"rtl_data", !351, i64 0, !352, i64 40, !353, i64 96, !354, i64 112, !356, i64 208, !357, i64 248, !273, i64 312, !268, i64 320, !268, i64 328, !268, i64 336, !268, i64 344, !268, i64 352, !268, i64 360, !268, i64 368, !268, i64 376, !268, i64 384, !268, i64 392, !274, i64 400, !268, i64 408, !268, i64 416, !268, i64 424, !273, i64 432, !273, i64 436, !273, i64 440, !273, i64 444, !273, i64 448, !273, i64 452, !268, i64 456, !269, i64 464, !269, i64 465, !269, i64 466, !269, i64 467, !269, i64 468, !269, i64 469, !269, i64 470, !269, i64 471, !269, i64 472, !269, i64 473, !269, i64 474, !269, i64 475, !269, i64 476, !269, i64 477, !269, i64 478, !269, i64 479, !269, i64 480, !269, i64 481, !269, i64 482, !269, i64 483, !269, i64 484, !269, i64 485}
!351 = !{!"expr_status", !273, i64 0, !273, i64 4, !273, i64 8, !268, i64 16, !268, i64 24, !268, i64 32}
!352 = !{!"emit_status", !273, i64 0, !273, i64 4, !268, i64 8, !268, i64 16, !268, i64 24, !273, i64 32, !273, i64 36, !273, i64 40, !273, i64 44, !268, i64 48}
!353 = !{!"varasm_status", !268, i64 0, !273, i64 8}
!354 = !{!"incoming_args", !273, i64 0, !273, i64 4, !273, i64 8, !268, i64 16, !355, i64 24, !268, i64 88}
!355 = !{!"ix86_args", !273, i64 0, !273, i64 4, !273, i64 8, !273, i64 12, !273, i64 16, !273, i64 20, !273, i64 24, !273, i64 28, !273, i64 32, !273, i64 36, !273, i64 40, !273, i64 44, !273, i64 48, !273, i64 52, !273, i64 56, !273, i64 60}
!356 = !{!"function_subsections", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32}
!357 = !{!"rtl_eh", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !269, i64 48}
!358 = !{!"branch_weights", i32 289798, i32 0}
!359 = !{!"branch_weights", i32 682, i32 289116}
!360 = !{!"branch_weights", i32 0, i32 289116}
!361 = !{!350, !273, i64 40}
!362 = !{!350, !273, i64 84}
!363 = !{!"branch_weights", i32 101, i32 289697}
!364 = !{!350, !268, i64 88}
!365 = !{!"VP", i32 1, i64 101, i64 513, i64 55, i64 129, i64 26, i64 257, i64 20}
!366 = !{!"VP", i32 1, i64 101, i64 513, i64 101}
!367 = !{!"function_entry_count", i64 3121}
!368 = !{!"branch_weights", i32 405, i32 2716}
!369 = !{!370, !268, i64 0}
!370 = !{!"reg_attrs", !268, i64 0, !274, i64 8}
!371 = !{!370, !274, i64 8}
!372 = !{!"branch_weights", i32 22837, i32 316632}
!373 = !{!"branch_weights", i32 103795, i32 212837}
!374 = !{!"function_entry_count", i64 22432}
!375 = !{!"branch_weights", i32 22432, i32 0}
!376 = !{!"function_entry_count", i64 600994}
!377 = !{!"branch_weights", i32 474942, i32 126052}
!378 = !{!"branch_weights", i32 105184, i32 20096, i32 772}
!379 = !{!"branch_weights", i32 48, i32 20048}
!380 = !{!"branch_weights", i32 0, i32 20048}
!381 = !{!"branch_weights", i32 20048, i32 0}
!382 = !{!"branch_weights", i32 6064, i32 14032}
!383 = !{!"branch_weights", i32 0, i32 14032}
!384 = !{!"branch_weights", i32 769, i32 3}
!385 = !{!"branch_weights", i32 772, i32 0}
!386 = !{!"function_entry_count", i64 3}
!387 = !{!"emit-rtl.c;get_reg_attrs"}
!388 = !{!"function_entry_count", i64 69922}
!389 = !{!"branch_weights", i32 42517, i32 27405}
!390 = !{!"branch_weights", i32 14032, i32 28485}
!391 = !{!"branch_weights", i32 0, i32 27405}
!392 = !{!"branch_weights", i32 12306, i32 15099}
!393 = !{!394, !273, i64 0}
!394 = !{!"rtvec_def", !273, i64 0, !269, i64 8}
!395 = distinct !{!395, !284, !285}
!396 = !{!"function_entry_count", i64 190168}
!397 = !{!"branch_weights", i32 0, i32 298322}
!398 = !{!"branch_weights", i32 293865, i32 4457}
!399 = distinct !{!399, !284, !285}
!400 = !{!"function_entry_count", i64 243807}
!401 = !{!"branch_weights", i32 243807, i32 0}
!402 = !{!"branch_weights", i32 0, i32 243807}
!403 = !{!"function_entry_count", i64 109614}
!404 = !{!"branch_weights", i32 1460, i32 108154}
!405 = !{!"function_entry_count", i64 38}
!406 = !{!"branch_weights", i32 0, i32 38}
!407 = !{!"branch_weights", i32 0, i32 0, i32 38}
!408 = !{!"function_entry_count", i64 4211920}
!409 = !{!"function_entry_count", i64 114}
!410 = !{!"function_entry_count", i64 76}
!411 = !{!350, !273, i64 44}
!412 = !{!"function_entry_count", i64 504554}
!413 = !{!"branch_weights", i32 282576, i32 221978}
!414 = !{!"branch_weights", i32 0, i32 221978}
!415 = !{!"branch_weights", i32 504554, i32 0}
!416 = !{!"branch_weights", i32 23843, i32 480711}
!417 = !{!"branch_weights", i32 0, i32 480711}
!418 = !{!"branch_weights", i32 136022, i32 24780, i32 37333, i32 0, i32 0, i32 0, i32 282576}
!419 = !{!"function_entry_count", i64 129765}
!420 = !{!"branch_weights", i32 50, i32 129715}
!421 = !{!422, !268, i64 1184}
!422 = !{!"gcc_target", !423, i64 0, !425, i64 368, !426, i64 664, !273, i64 744, !268, i64 752, !268, i64 760, !268, i64 768, !268, i64 776, !268, i64 784, !268, i64 792, !268, i64 800, !268, i64 808, !268, i64 816, !268, i64 824, !268, i64 832, !268, i64 840, !268, i64 848, !268, i64 856, !268, i64 864, !268, i64 872, !268, i64 880, !268, i64 888, !268, i64 896, !268, i64 904, !268, i64 912, !268, i64 920, !268, i64 928, !268, i64 936, !268, i64 944, !268, i64 952, !268, i64 960, !268, i64 968, !268, i64 976, !268, i64 984, !268, i64 992, !268, i64 1000, !268, i64 1008, !268, i64 1016, !268, i64 1024, !268, i64 1032, !268, i64 1040, !268, i64 1048, !268, i64 1056, !274, i64 1064, !274, i64 1072, !268, i64 1080, !268, i64 1088, !268, i64 1096, !268, i64 1104, !268, i64 1112, !268, i64 1120, !268, i64 1128, !268, i64 1136, !268, i64 1144, !268, i64 1152, !268, i64 1160, !268, i64 1168, !427, i64 1176, !268, i64 1232, !268, i64 1240, !268, i64 1248, !268, i64 1256, !268, i64 1264, !268, i64 1272, !268, i64 1280, !268, i64 1288, !268, i64 1296, !268, i64 1304, !268, i64 1312, !268, i64 1320, !268, i64 1328, !268, i64 1336, !268, i64 1344, !268, i64 1352, !268, i64 1360, !268, i64 1368, !268, i64 1376, !268, i64 1384, !268, i64 1392, !268, i64 1400, !268, i64 1408, !268, i64 1416, !268, i64 1424, !268, i64 1432, !268, i64 1440, !268, i64 1448, !268, i64 1456, !274, i64 1464, !428, i64 1472, !268, i64 1664, !268, i64 1672, !268, i64 1680, !268, i64 1688, !268, i64 1696, !268, i64 1704, !268, i64 1712, !268, i64 1720, !268, i64 1728, !268, i64 1736, !268, i64 1744, !268, i64 1752, !268, i64 1760, !268, i64 1768, !268, i64 1776, !429, i64 1784, !430, i64 1792, !431, i64 1896, !432, i64 1968, !268, i64 2016, !269, i64 2024, !269, i64 2025, !269, i64 2026, !269, i64 2027, !269, i64 2028, !269, i64 2029, !269, i64 2030, !269, i64 2031, !269, i64 2032, !269, i64 2033, !269, i64 2034, !269, i64 2035}
!423 = !{!"asm_out", !268, i64 0, !268, i64 8, !268, i64 16, !424, i64 24, !424, i64 56, !268, i64 88, !268, i64 96, !268, i64 104, !268, i64 112, !268, i64 120, !268, i64 128, !268, i64 136, !268, i64 144, !268, i64 152, !268, i64 160, !268, i64 168, !268, i64 176, !268, i64 184, !268, i64 192, !268, i64 200, !268, i64 208, !268, i64 216, !268, i64 224, !268, i64 232, !268, i64 240, !268, i64 248, !268, i64 256, !268, i64 264, !268, i64 272, !268, i64 280, !268, i64 288, !268, i64 296, !268, i64 304, !268, i64 312, !268, i64 320, !268, i64 328, !268, i64 336, !268, i64 344, !268, i64 352, !268, i64 360}
!424 = !{!"asm_int_op", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24}
!425 = !{!"sched", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !268, i64 56, !268, i64 64, !268, i64 72, !268, i64 80, !268, i64 88, !268, i64 96, !268, i64 104, !268, i64 112, !268, i64 120, !268, i64 128, !268, i64 136, !268, i64 144, !268, i64 152, !268, i64 160, !268, i64 168, !268, i64 176, !268, i64 184, !268, i64 192, !268, i64 200, !268, i64 208, !268, i64 216, !268, i64 224, !268, i64 232, !268, i64 240, !268, i64 248, !268, i64 256, !268, i64 264, !268, i64 272, !268, i64 280, !268, i64 288}
!426 = !{!"vectorize", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !268, i64 56, !268, i64 64, !268, i64 72}
!427 = !{!"addr_space", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48}
!428 = !{!"calls", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !268, i64 56, !268, i64 64, !268, i64 72, !268, i64 80, !268, i64 88, !268, i64 96, !268, i64 104, !268, i64 112, !268, i64 120, !268, i64 128, !268, i64 136, !268, i64 144, !268, i64 152, !268, i64 160, !268, i64 168, !268, i64 176, !268, i64 184}
!429 = !{!"c", !268, i64 0}
!430 = !{!"cxx", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !268, i64 56, !268, i64 64, !268, i64 72, !268, i64 80, !268, i64 88, !268, i64 96}
!431 = !{!"emutls", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !268, i64 56, !269, i64 64, !269, i64 65}
!432 = !{!"target_option_hooks", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40}
!433 = !{!"VP", i32 0, i64 129765, i64 -6774708585206560366, i64 129765}
!434 = !{!"branch_weights", i32 106326, i32 23439}
!435 = !{!"branch_weights", i32 22309, i32 1130}
!436 = !{!"branch_weights", i32 0, i32 1130}
!437 = !{!"branch_weights", i32 106326, i32 0}
!438 = !{!"branch_weights", i32 0, i32 106326}
!439 = !{!"branch_weights", i32 14643, i32 91683}
!440 = !{!"branch_weights", i32 0, i32 91683}
!441 = !{!"branch_weights", i32 3922536, i32 0}
!442 = !{!"branch_weights", i32 987404, i32 2935132}
!443 = !{!"branch_weights", i32 3816210, i32 106326}
!444 = !{!"branch_weights", i32 0, i32 3922536}
!445 = !{!"branch_weights", i32 3816260, i32 106276}
!446 = !{!"branch_weights", i32 3382424, i32 433836}
!447 = !{!"branch_weights", i32 3382424, i32 0}
!448 = !{!"branch_weights", i32 443749, i32 96363}
!449 = !{!"branch_weights", i32 0, i32 96363}
!450 = !{!"branch_weights", i32 50, i32 96313}
!451 = !{!"branch_weights", i32 0, i32 50}
!452 = !{!"branch_weights", i32 449535, i32 90577}
!453 = !{!"branch_weights", i32 0, i32 90577}
!454 = !{!"branch_weights", i32 277, i32 106049}
!455 = !{!"branch_weights", i32 12259, i32 94067}
!456 = !{!"branch_weights", i32 1530, i32 10729}
!457 = !{!"branch_weights", i32 50, i32 106276}
!458 = !{!"function_entry_count", i64 81706}
!459 = !{!"function_entry_count", i64 8}
!460 = !{!"branch_weights", i32 8, i32 0}
!461 = distinct !{!461, !285}
!462 = !{!"function_entry_count", i64 178333}
!463 = !{!"branch_weights", i32 163690, i32 14643}
!464 = !{!"branch_weights", i32 310, i32 163380}
!465 = !{!"branch_weights", i32 0, i32 178333}
!466 = !{!"branch_weights", i32 163336, i32 14997}
!467 = !{!"branch_weights", i32 84, i32 178249}
!468 = !{!"branch_weights", i32 0, i32 84}
!469 = !{!"branch_weights", i32 150750, i32 27583}
!470 = !{!"branch_weights", i32 14910, i32 163423}
!471 = !{!"branch_weights", i32 0, i32 14910}
!472 = !{!"branch_weights", i32 163380, i32 42, i32 1, i32 0, i32 0, i32 0}
!473 = !{!"branch_weights", i32 267, i32 14643}
!474 = !{!"branch_weights", i32 14643, i32 0}
!475 = !{!"branch_weights", i32 0, i32 14643}
!476 = !{!"branch_weights", i32 14997, i32 0}
!477 = !{!"branch_weights", i32 14997, i32 0, i32 0, i32 0, i32 0}
!478 = !{!"branch_weights", i32 260, i32 14737}
!479 = distinct !{!479, !284, !285}
!480 = !{!"branch_weights", i32 0, i32 260}
!481 = distinct !{!481, !284, !285}
!482 = !{!"branch_weights", i32 84, i32 14913}
!483 = !{!"branch_weights", i32 38, i32 46}
!484 = !{!"branch_weights", i32 0, i32 14997}
!485 = !{!"branch_weights", i32 14958, i32 39}
!486 = !{!"branch_weights", i32 0, i32 39}
!487 = !{!"branch_weights", i32 39, i32 0}
!488 = !{!"branch_weights", i32 12882, i32 2115}
!489 = !{!"branch_weights", i32 14910, i32 84, i32 3}
!490 = !{!"branch_weights", i32 260, i32 14650}
!491 = !{!"branch_weights", i32 260, i32 0}
!492 = !{!"branch_weights", i32 14383, i32 267}
!493 = !{!"branch_weights", i32 0, i32 14383}
!494 = distinct !{!494, !284, !285}
!495 = !{!"branch_weights", i32 2034, i32 12349}
!496 = !{!"branch_weights", i32 0, i32 2034}
!497 = !{!"branch_weights", i32 2034, i32 0}
!498 = !{!"branch_weights", i32 12349, i32 0}
!499 = !{!"branch_weights", i32 6, i32 12343}
!500 = !{!"branch_weights", i32 0, i32 267}
!501 = !{!"branch_weights", i32 12876, i32 2121}
!502 = !{!"branch_weights", i32 267, i32 12609}
!503 = !{!"branch_weights", i32 12609, i32 0}
!504 = !{!"branch_weights", i32 178293, i32 40}
!505 = !{!"branch_weights", i32 0, i32 40}
!506 = !{!"branch_weights", i32 14643, i32 163690}
!507 = !{!"branch_weights", i32 0, i32 260, i32 14383, i32 0, i32 0}
!508 = !{!"function_entry_count", i64 55}
!509 = !{!"emit-rtl.c;get_mem_attrs"}
!510 = !{!"function_entry_count", i64 178293}
!511 = !{!"function_entry_count", i64 267}
!512 = !{!"function_entry_count", i64 245117}
!513 = !{!"branch_weights", i32 81688, i32 163429}
!514 = !{!"branch_weights", i32 8, i32 81680}
!515 = !{!"function_entry_count", i64 16}
!516 = !{!"branch_weights", i32 0, i32 16}
!517 = !{!"function_entry_count", i64 81712}
!518 = !{!"emit-rtl.c;change_address_1"}
!519 = !{!"function_entry_count", i64 6}
!520 = !{!"branch_weights", i32 0, i32 6}
!521 = !{!"VP", i32 0, i64 6, i64 -6774708585206560366, i64 6}
!522 = !{!"function_entry_count", i64 3734498}
!523 = !{!"function_entry_count", i64 1481}
!524 = !{!"branch_weights", i32 1, i32 1480}
!525 = !{!"function_entry_count", i64 302}
!526 = !{!"branch_weights", i32 0, i32 302}
!527 = !{!"branch_weights", i32 302, i32 0}
!528 = !{!"function_entry_count", i64 164541}
!529 = !{!350, !268, i64 48}
!530 = !{!350, !268, i64 56}
!531 = !{!350, !273, i64 72}
!532 = !{!533, !273, i64 8}
!533 = !{!"param_info", !268, i64 0, !273, i64 8, !269, i64 12, !273, i64 16, !273, i64 20, !268, i64 24}
!534 = !{!350, !273, i64 76}
!535 = distinct !{!535, !284, !285}
!536 = distinct !{!536, !284, !285}
!537 = !{!"branch_weights", i32 1, i32 151}
!538 = !{!"branch_weights", i32 557857, i32 277181}
!539 = !{!"branch_weights", i32 151, i32 3340001}
!540 = distinct !{!540, !284, !285}
!541 = !{!542, !268, i64 48}
!542 = !{!"function", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !268, i64 56, !268, i64 64, !268, i64 72, !268, i64 80, !268, i64 88, !268, i64 96, !273, i64 104, !273, i64 108, !273, i64 112, !273, i64 116, !273, i64 120, !273, i64 124, !268, i64 128, !273, i64 136, !273, i64 137, !273, i64 138, !273, i64 138, !273, i64 138, !273, i64 138, !273, i64 138, !273, i64 138, !273, i64 138, !273, i64 139, !273, i64 139, !273, i64 139, !273, i64 139, !273, i64 139, !273, i64 139, !273, i64 139}
!543 = !{!"branch_weights", i32 151, i32 1}
!544 = distinct !{!544, !284, !285}
!545 = !{!350, !268, i64 368}
!546 = !{!"branch_weights", i32 1, i32 14097}
!547 = !{!"branch_weights", i32 1354475, i32 714623}
!548 = !{!"branch_weights", i32 14097, i32 2055001}
!549 = distinct !{!549, !284, !285}
!550 = !{!"function_entry_count", i64 3676108}
!551 = !{!"branch_weights", i32 1, i32 766547}
!552 = !{!"branch_weights", i32 2035164, i32 1016354, i32 0, i32 0, i32 815004, i32 0, i32 0, i32 0, i32 167624, i32 0, i32 391119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 239693, i32 0}
!553 = !{!"branch_weights", i32 1, i32 279765}
!554 = !{!"branch_weights", i32 264255, i32 3946409, i32 15557}
!555 = !{!"branch_weights", i32 15556, i32 1}
!556 = !{!"branch_weights", i32 1755398, i32 2191011}
!557 = !{!"branch_weights", i32 766547, i32 3898411}
!558 = !{!"branch_weights", i32 56013, i32 15556}
!559 = distinct !{!559, !284, !285}
!560 = !{!"branch_weights", i32 279765, i32 3946456}
!561 = distinct !{!561, !284, !285}
!562 = !{!"function_entry_count", i64 80}
!563 = !{!"emit-rtl.c;set_used_decls"}
!564 = !{!"branch_weights", i32 42, i32 38}
!565 = !{!"branch_weights", i32 38, i32 0}
!566 = distinct !{!566, !284, !285}
!567 = !{!"branch_weights", i32 38, i32 42}
!568 = !{!"branch_weights", i32 42, i32 0}
!569 = distinct !{!569, !284, !285}
!570 = !{!"function_entry_count", i64 7751}
!571 = !{!"branch_weights", i32 0, i32 7751}
!572 = !{!"branch_weights", i32 2120, i32 3534, i32 0, i32 0, i32 1867, i32 0, i32 0, i32 0, i32 230, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!573 = !{!"branch_weights", i32 1, i32 2119}
!574 = !{!"branch_weights", i32 231, i32 3987, i32 0}
!575 = distinct !{!575, !284, !285}
!576 = !{!"branch_weights", i32 2119, i32 2099}
!577 = distinct !{!577, !284, !285}
!578 = !{!"function_entry_count", i64 852921}
!579 = distinct !{!579, !284, !285}
!580 = distinct !{!580, !284, !285}
!581 = distinct !{!581, !284, !285}
!582 = distinct !{!582, !284, !285}
!583 = distinct !{!583, !284, !285}
!584 = !{!"function_entry_count", i64 1844}
!585 = !{!"function_entry_count", i64 260820}
!586 = !{!"function_entry_count", i64 6644718}
!587 = !{!"emit-rtl.c;copy_rtx_if_shared_1"}
!588 = !{!"branch_weights", i32 1563204, i32 8844603}
!589 = !{!"branch_weights", i32 3763051, i32 2036427, i32 0, i32 0, i32 1512409, i32 0, i32 0, i32 0, i32 282874, i32 472476, i32 0, i32 703283, i32 0, i32 0, i32 40149, i32 33934, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!590 = !{!"branch_weights", i32 40149, i32 0}
!591 = !{!"branch_weights", i32 40111, i32 38}
!592 = !{!"branch_weights", i32 0, i32 33934}
!593 = !{!"branch_weights", i32 3759842, i32 3247}
!594 = !{!"branch_weights", i32 1, i32 3763088}
!595 = !{!"branch_weights", i32 502420, i32 7276059, i32 40496}
!596 = !{!"branch_weights", i32 3722593, i32 3553466}
!597 = !{!"branch_weights", i32 0, i32 40496}
!598 = !{!"branch_weights", i32 40495, i32 1}
!599 = !{!"branch_weights", i32 40496, i32 121406}
!600 = !{!"branch_weights", i32 40495, i32 121407}
!601 = distinct !{!601, !284, !285}
!602 = !{!"branch_weights", i32 3763088, i32 4055887}
!603 = distinct !{!603, !284, !285}
!604 = !{!"branch_weights", i32 0, i32 3763089}
!605 = distinct !{!605, !285}
!606 = !{!"function_entry_count", i64 228}
!607 = !{!"branch_weights", i32 228, i32 0}
!608 = !{!"function_entry_count", i64 1171592}
!609 = !{!"function_entry_count", i64 240}
!610 = !{!"branch_weights", i32 240, i32 0}
!611 = distinct !{!611, !284, !285}
!612 = !{!613, !268, i64 8}
!613 = !{!"sequence_stack", !268, i64 0, !268, i64 8, !268, i64 16}
!614 = distinct !{!614, !284, !285}
!615 = distinct !{!615, !284, !285}
!616 = !{!"function_entry_count", i64 4244577}
!617 = !{!"function_entry_count", i64 124}
!618 = !{!"function_entry_count", i64 31720156}
!619 = !{!"branch_weights", i32 0, i32 31720156}
!620 = !{!"branch_weights", i32 0, i32 33572358}
!621 = !{!"branch_weights", i32 1852202, i32 31720156}
!622 = distinct !{!622, !284, !285}
!623 = !{!"function_entry_count", i64 119731}
!624 = !{!"branch_weights", i32 0, i32 119731}
!625 = !{!"branch_weights", i32 18, i32 119713}
!626 = !{!"branch_weights", i32 21, i32 119692}
!627 = !{!"branch_weights", i32 21, i32 0}
!628 = distinct !{!628, !284, !285}
!629 = !{!"function_entry_count", i64 386800}
!630 = !{!"branch_weights", i32 0, i32 386800}
!631 = !{!"branch_weights", i32 0, i32 388011}
!632 = !{!"branch_weights", i32 1211, i32 386800}
!633 = distinct !{!633, !284, !285}
!634 = distinct !{!634, !284, !285}
!635 = distinct !{!635, !284, !285}
!636 = !{!"function_entry_count", i64 24999}
!637 = !{!"branch_weights", i32 0, i32 24999}
!638 = distinct !{!638, !284, !285}
!639 = !{!"function_entry_count", i64 33347}
!640 = !{!"branch_weights", i32 0, i32 33347}
!641 = !{!"branch_weights", i32 0, i32 55792}
!642 = !{!"branch_weights", i32 33347, i32 22445}
!643 = !{!"function_entry_count", i64 68958}
!644 = !{!"branch_weights", i32 0, i32 1}
!645 = !{!"branch_weights", i32 68958, i32 0}
!646 = !{!"branch_weights", i32 0, i32 68958}
!647 = distinct !{!647, !284, !285}
!648 = !{!"function_entry_count", i64 2910860}
!649 = !{!"branch_weights", i32 650546, i32 191787, i32 513879, i32 1554648}
!650 = !{!"branch_weights", i32 798002, i32 756646}
!651 = !{!"branch_weights", i32 236, i32 756410}
!652 = !{!"function_entry_count", i64 1962862}
!653 = !{!"branch_weights", i32 0, i32 1962862}
!654 = !{!"branch_weights", i32 763, i32 3800999}
!655 = !{!"branch_weights", i32 1837044, i32 0, i32 360195, i32 1603760}
!656 = !{!"branch_weights", i32 909130, i32 694630}
!657 = !{!"branch_weights", i32 1856, i32 692774}
!658 = !{!"branch_weights", i32 1838900, i32 1962099}
!659 = distinct !{!659, !284, !285}
!660 = !{!"function_entry_count", i64 67}
!661 = !{!"branch_weights", i32 0, i32 67}
!662 = !{!"branch_weights", i32 0, i32 69}
!663 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 69}
!664 = !{!"branch_weights", i32 2, i32 67}
!665 = distinct !{!665, !284, !285}
!666 = distinct !{!666, !284, !285}
!667 = distinct !{!667, !284, !285}
!668 = distinct !{!668, !284, !285}
!669 = !{!"function_entry_count", i64 1785306}
!670 = !{!"branch_weights", i32 1784950, i32 356}
!671 = !{!"branch_weights", i32 1333635, i32 451315}
!672 = !{!"branch_weights", i32 0, i32 451315}
!673 = !{!"branch_weights", i32 31, i32 1784919}
!674 = !{!"branch_weights", i32 53123, i32 1731796}
!675 = !{!"branch_weights", i32 1772772, i32 12178}
!676 = !{!"branch_weights", i32 20304, i32 0}
!677 = !{!"branch_weights", i32 12178, i32 8126}
!678 = distinct !{!678, !285}
!679 = !{!"branch_weights", i32 6838, i32 13466}
!680 = !{!"branch_weights", i32 0, i32 6838}
!681 = !{!"branch_weights", i32 6838, i32 0}
!682 = distinct !{!682, !284, !285}
!683 = !{!"branch_weights", i32 0, i32 12178}
!684 = distinct !{!684, !284, !285}
!685 = !{!686, !268, i64 224}
!686 = !{!"gcc_debug_hooks", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !268, i64 32, !268, i64 40, !268, i64 48, !268, i64 56, !268, i64 64, !268, i64 72, !268, i64 80, !268, i64 88, !268, i64 96, !268, i64 104, !268, i64 112, !268, i64 120, !268, i64 128, !268, i64 136, !268, i64 144, !268, i64 152, !268, i64 160, !268, i64 168, !268, i64 176, !268, i64 184, !268, i64 192, !268, i64 200, !268, i64 208, !268, i64 216, !268, i64 224, !268, i64 232, !268, i64 240, !273, i64 248}
!687 = distinct !{!687, !284, !285}
!688 = !{!"branch_weights", i32 1, i32 12177}
!689 = !{!"branch_weights", i32 25846, i32 0, i32 0, i32 0, i32 0}
!690 = distinct !{!690, !284, !285}
!691 = distinct !{!691, !284, !285}
!692 = !{!"branch_weights", i32 12177, i32 13669}
!693 = distinct !{!693, !284, !285}
!694 = !{!"branch_weights", i32 12178, i32 0}
!695 = !{!"branch_weights", i32 13466, i32 6838}
!696 = distinct !{!696, !284, !285}
!697 = !{!"branch_weights", i32 12177, i32 8127}
!698 = distinct !{!698, !284, !285}
!699 = !{!"function_entry_count", i64 93632}
!700 = !{!"emit-rtl.c;mark_label_nuses"}
!701 = !{!"branch_weights", i32 0, i32 93632}
!702 = !{!"branch_weights", i32 1, i32 93631}
!703 = !{!"branch_weights", i32 124651, i32 79868, i32 149}
!704 = !{!"branch_weights", i32 148, i32 1}
!705 = !{!"branch_weights", i32 150, i32 148}
!706 = distinct !{!706, !284, !285}
!707 = !{!"branch_weights", i32 111037, i32 93631}
!708 = distinct !{!708, !284, !285}
!709 = !{!"function_entry_count", i64 32362}
!710 = !{!"branch_weights", i32 0, i32 1378242}
!711 = !{!"branch_weights", i32 1281862, i32 96380}
!712 = !{!"branch_weights", i32 96005, i32 375}
!713 = !{!"branch_weights", i32 38, i32 33877}
!714 = !{!"branch_weights", i32 38, i32 95967}
!715 = !{!"branch_weights", i32 84335, i32 11632}
!716 = !{!"branch_weights", i32 0, i32 11632}
!717 = !{!"branch_weights", i32 11632, i32 0}
!718 = distinct !{!718, !284, !285}
!719 = !{!"branch_weights", i32 0, i32 95967}
!720 = !{!721, !268, i64 8}
!721 = !{!"rtl_bb_info", !268, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !273, i64 32}
!722 = !{!"branch_weights", i32 68913, i32 27054}
!723 = !{!"branch_weights", i32 38, i32 38}
!724 = distinct !{!724, !284, !285}
!725 = !{!"branch_weights", i32 0, i32 96005}
!726 = !{!"branch_weights", i32 33965, i32 1281862}
!727 = !{!"branch_weights", i32 0, i32 0, i32 6838, i32 38165}
!728 = !{!"branch_weights", i32 8044, i32 30121}
!729 = !{!"branch_weights", i32 15, i32 30106}
!730 = !{!"branch_weights", i32 15, i32 44988}
!731 = !{!"branch_weights", i32 44988, i32 0}
!732 = !{!"branch_weights", i32 33965, i32 11038}
!733 = distinct !{!733, !285}
!734 = !{!"function_entry_count", i64 146507}
!735 = !{!"branch_weights", i32 0, i32 360410}
!736 = !{!"branch_weights", i32 360410, i32 0}
!737 = !{!"branch_weights", i32 57368, i32 303042}
!738 = !{!"branch_weights", i32 1653, i32 301389}
!739 = !{!"branch_weights", i32 0, i32 1653}
!740 = !{!"branch_weights", i32 57368, i32 0}
!741 = distinct !{!741, !284, !285}
!742 = !{!"branch_weights", i32 146507, i32 213903}
!743 = !{!"branch_weights", i32 57272, i32 156631}
!744 = !{!"branch_weights", i32 147837, i32 8794}
!745 = !{!"branch_weights", i32 154978, i32 1653}
!746 = !{!"branch_weights", i32 146387, i32 0, i32 8591}
!747 = !{!"branch_weights", i32 8591, i32 0}
!748 = !{!"branch_weights", i32 77442, i32 282968}
!749 = !{!"branch_weights", i32 0, i32 77442}
!750 = !{!"function_entry_count", i64 1}
!751 = !{!"function_entry_count", i64 67487}
!752 = !{!"branch_weights", i32 0, i32 643261}
!753 = !{!"branch_weights", i32 643261, i32 0}
!754 = !{!"branch_weights", i32 1, i32 643260}
!755 = !{!"branch_weights", i32 130504, i32 512756}
!756 = !{!"branch_weights", i32 0, i32 130504}
!757 = !{!"branch_weights", i32 1, i32 0}
!758 = !{!613, !268, i64 0}
!759 = distinct !{!759, !284, !285}
!760 = !{!"branch_weights", i32 640469, i32 2792}
!761 = !{!"branch_weights", i32 0, i32 640469}
!762 = !{!"branch_weights", i32 26575, i32 616686}
!763 = !{!"branch_weights", i32 376414, i32 240272}
!764 = !{!721, !268, i64 0}
!765 = !{!"branch_weights", i32 0, i32 616686}
!766 = !{!"branch_weights", i32 257168, i32 386093}
!767 = !{!"branch_weights", i32 0, i32 257168}
!768 = !{!"function_entry_count", i64 73685}
!769 = !{!"function_entry_count", i64 883108}
!770 = !{!"branch_weights", i32 1, i32 883107}
!771 = !{!"branch_weights", i32 303323, i32 579784}
!772 = !{!"branch_weights", i32 0, i32 303323}
!773 = distinct !{!773, !284, !285}
!774 = !{!"branch_weights", i32 65, i32 883043}
!775 = !{!"branch_weights", i32 399052, i32 483991}
!776 = !{!"branch_weights", i32 0, i32 399052}
!777 = !{!"branch_weights", i32 65, i32 0}
!778 = distinct !{!778, !284, !285}
!779 = !{!"branch_weights", i32 472, i32 882636}
!780 = !{!"branch_weights", i32 307, i32 882329}
!781 = !{!"branch_weights", i32 620180, i32 262149}
!782 = !{!"branch_weights", i32 1893, i32 880436}
!783 = !{!"branch_weights", i32 0, i32 1893}
!784 = !{!"branch_weights", i32 282758, i32 599571}
!785 = distinct !{!785, !284, !285}
!786 = !{!"branch_weights", i32 0, i32 59700}
!787 = !{!"branch_weights", i32 47, i32 59653}
!788 = !{!"branch_weights", i32 40, i32 59660}
!789 = !{!"function_entry_count", i64 59700}
!790 = !{!"branch_weights", i32 0, i32 59660}
!791 = !{!"branch_weights", i32 1, i32 59659}
!792 = !{!"branch_weights", i32 59659, i32 1}
!793 = distinct !{!793, !284, !285}
!794 = !{!"function_entry_count", i64 2792}
!795 = !{!"branch_weights", i32 0, i32 1996342}
!796 = !{!"branch_weights", i32 1601776, i32 394566}
!797 = !{!"branch_weights", i32 187373, i32 207193}
!798 = !{!"branch_weights", i32 187373, i32 6206}
!799 = distinct !{!799, !284, !285}
!800 = distinct !{!800, !284, !285}
!801 = distinct !{!801, !284, !285}
!802 = distinct !{!802, !284, !285}
!803 = !{!"function_entry_count", i64 98856}
!804 = !{!"branch_weights", i32 98856, i32 0}
!805 = !{!"function_entry_count", i64 143633}
!806 = !{!"function_entry_count", i64 62415}
!807 = !{!"branch_weights", i32 33915, i32 62090}
!808 = !{!"emit-rtl.c;emit_insn_after_1"}
!809 = !{!"branch_weights", i32 0, i32 146416}
!810 = !{!"function_entry_count", i64 65662}
!811 = !{!"function_entry_count", i64 1283790}
!812 = !{!"branch_weights", i32 325, i32 0, i32 1283281, i32 184, i32 0}
!813 = distinct !{!813, !284, !285}
!814 = !{!"function_entry_count", i64 146416}
!815 = !{!"branch_weights", i32 145305, i32 1111}
!816 = !{!"branch_weights", i32 0, i32 0, i32 1111, i32 0}
!817 = !{!"branch_weights", i32 0, i32 1111}
!818 = !{!"branch_weights", i32 1111, i32 0}
!819 = distinct !{!819, !285}
!820 = !{!"branch_weights", i32 0, i32 0, i32 29, i32 0, i32 0}
!821 = distinct !{!821, !284, !285}
!822 = distinct !{!822, !285}
!823 = distinct !{!823, !284, !285}
!824 = distinct !{!824, !285}
!825 = !{!"branch_weights", i32 310483, i32 1683067}
!826 = !{!"branch_weights", i32 0, i32 310483}
!827 = !{!"branch_weights", i32 19, i32 0, i32 0, i32 316670}
!828 = !{!"branch_weights", i32 19085, i32 297585}
!829 = !{!"branch_weights", i32 0, i32 297585}
!830 = !{!"branch_weights", i32 19, i32 316670}
!831 = !{!"branch_weights", i32 135967, i32 180703}
!832 = !{!"branch_weights", i32 310483, i32 6206}
!833 = distinct !{!833, !285}
!834 = !{!"function_entry_count", i64 1991706}
!835 = !{!"branch_weights", i32 0, i32 0, i32 1848289, i32 140325, i32 3092}
!836 = distinct !{!836, !284, !285}
!837 = distinct !{!837, !285}
!838 = distinct !{!838, !284, !285}
!839 = distinct !{!839, !285}
!840 = distinct !{!840, !284, !285}
!841 = distinct !{!841, !285}
!842 = !{!"function_entry_count", i64 961436}
!843 = !{!"branch_weights", i32 38, i32 1049063}
!844 = !{!"branch_weights", i32 517493, i32 531570}
!845 = !{!"branch_weights", i32 218349, i32 522151}
!846 = !{!"branch_weights", i32 517493, i32 223007}
!847 = distinct !{!847, !284, !285}
!848 = !{!"branch_weights", i32 488908, i32 42662}
!849 = distinct !{!849, !284, !285}
!850 = !{!"function_entry_count", i64 317489}
!851 = !{!"branch_weights", i32 150084, i32 167405}
!852 = !{!"branch_weights", i32 0, i32 300258}
!853 = !{!"branch_weights", i32 150084, i32 150174}
!854 = distinct !{!854, !284, !285}
!855 = !{!"branch_weights", i32 23, i32 167382}
!856 = !{!"function_entry_count", i64 137916}
!857 = !{!"branch_weights", i32 68958, i32 68958}
!858 = !{!"function_entry_count", i64 65685}
!859 = !{!"branch_weights", i32 65685, i32 0}
!860 = !{!"branch_weights", i32 0, i32 65685}
!861 = !{!"function_entry_count", i64 10534}
!862 = !{!"branch_weights", i32 0, i32 10534}
!863 = !{!"function_entry_count", i64 29}
!864 = !{!"branch_weights", i32 0, i32 29}
!865 = !{!"function_entry_count", i64 97688}
!866 = !{!"branch_weights", i32 95, i32 97593}
!867 = !{!"branch_weights", i32 0, i32 76}
!868 = !{!350, !268, i64 64}
!869 = !{!613, !268, i64 16}
!870 = !{!"function_entry_count", i64 857960}
!871 = !{!"branch_weights", i32 4, i32 858000}
!872 = !{!"function_entry_count", i64 858004}
!873 = !{!350, !273, i64 80}
!874 = !{!"function_entry_count", i64 52423}
!875 = !{!"branch_weights", i32 52423, i32 0}
!876 = !{!"branch_weights", i32 9378, i32 43045}
!877 = !{!"branch_weights", i32 9378, i32 0}
!878 = !{!"branch_weights", i32 0, i32 52423}
!879 = !{!"branch_weights", i32 51196, i32 1227}
!880 = !{!"branch_weights", i32 51196, i32 0}
!881 = !{!"function_entry_count", i64 18593}
!882 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 18593}
!883 = !{!"branch_weights", i32 1, i32 18592}
!884 = !{!"branch_weights", i32 18593, i32 0, i32 18593}
!885 = !{!"branch_weights", i32 0, i32 18593}
!886 = !{!"branch_weights", i32 18593, i32 18593}
!887 = !{!"branch_weights", i32 18592, i32 18594}
!888 = distinct !{!888, !284, !285}
!889 = !{!"branch_weights", i32 18593, i32 0}
!890 = !{!"branch_weights", i32 0, i32 0, i32 18593, i32 0, i32 0, i32 0}
!891 = !{!"function_entry_count", i64 44}
!892 = !{!"branch_weights", i32 42, i32 2}
!893 = !{!"branch_weights", i32 2, i32 0}
!894 = distinct !{!894, !284, !285}
!895 = distinct !{!895, !284, !285}
!896 = distinct !{!896, !284, !285}
!897 = !{!"function_entry_count", i64 40}
!898 = !{!"function_entry_count", i64 3899}
!899 = !{!"branch_weights", i32 0, i32 3899}
!900 = !{!"branch_weights", i32 1751, i32 1247, i32 580, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 287, i32 29, i32 0}
!901 = !{!"branch_weights", i32 258, i32 29}
!902 = !{!"branch_weights", i32 258, i32 0}
!903 = distinct !{!903, !284, !285}
!904 = !{!"branch_weights", i32 0, i32 1809}
!905 = !{!"branch_weights", i32 1, i32 1808}
!906 = !{!"branch_weights", i32 0, i32 2477, i32 309, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 378}
!907 = !{!"branch_weights", i32 56, i32 2421}
!908 = !{!"branch_weights", i32 0, i32 309}
!909 = !{!"branch_weights", i32 308, i32 1}
!910 = !{!"branch_weights", i32 339, i32 308}
!911 = distinct !{!911, !284, !285}
!912 = !{!"branch_weights", i32 1356, i32 1808}
!913 = distinct !{!913, !284, !285}
!914 = !{!"branch_weights", i32 1780, i32 29, i32 0}
!915 = !{!"branch_weights", i32 29, i32 0}
!916 = !{!"function_entry_count", i64 209}
!917 = distinct !{!917, !284, !285}
!918 = !{!"branch_weights", i32 1, i32 52}
!919 = distinct !{!919, !284, !285}
!920 = !{!"branch_weights", i32 1, i32 127}
!921 = !{!"branch_weights", i32 1, i32 5}
!922 = !{!"branch_weights", i32 127, i32 641}
!923 = distinct !{!923, !284, !285}
!924 = !{!"branch_weights", i32 1, i32 3}
!925 = !{!"branch_weights", i32 127, i32 385}
!926 = distinct !{!926, !284, !285}
!927 = !{!"branch_weights", i32 1, i32 128}
!928 = distinct !{!928, !284, !285}
!929 = !{!"branch_weights", i32 1, i32 2}
!930 = !{!"branch_weights", i32 1, i32 191}
!931 = !{!"branch_weights", i32 12, i32 0}
!932 = !{!"branch_weights", i32 191, i32 577}
!933 = distinct !{!933, !284, !285}
!934 = !{!"branch_weights", i32 9, i32 0}
!935 = !{!"branch_weights", i32 191, i32 385}
!936 = distinct !{!936, !284, !285}
!937 = !{!"branch_weights", i32 191, i32 961}
!938 = distinct !{!938, !284, !285}
!939 = distinct !{!939, !284, !285}
!940 = distinct !{!940, !284, !285}
!941 = distinct !{!941, !284, !285}
!942 = distinct !{!942, !284, !285}
!943 = !{!"branch_weights", i32 127, i32 2817}
!944 = distinct !{!944, !284, !285}
!945 = !{!"branch_weights", i32 127, i32 1025}
!946 = distinct !{!946, !284, !285}
!947 = !{!948, !273, i64 16}
!948 = !{!"fixed_value", !949, i64 0, !273, i64 16}
!949 = !{!"", !274, i64 0, !274, i64 8}
!950 = !{!"branch_weights", i32 127, i32 513}
!951 = distinct !{!951, !284, !285}
!952 = distinct !{!952, !284, !285}
!953 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 4, i32 0}
!954 = distinct !{!954, !284, !285}
!955 = !{!"branch_weights", i32 4, i32 0, i32 0, i32 0, i32 0}
!956 = distinct !{!956, !284, !285}
!957 = distinct !{!957, !284, !285}
!958 = distinct !{!958, !284, !285}
!959 = distinct !{!959, !284, !285}
!960 = distinct !{!960, !284, !285}
!961 = !{!"branch_weights", i32 11, i32 74}
!962 = !{!"branch_weights", i32 1, i32 84}
!963 = distinct !{!963, !284, !285}
!964 = !{!"function_entry_count", i64 3009}
!965 = !{!"emit-rtl.c;const_int_htab_hash"}
!966 = !{!"function_entry_count", i64 4475852}
!967 = !{!"emit-rtl.c;const_int_htab_eq"}
!968 = !{!"function_entry_count", i64 21}
!969 = !{!"emit-rtl.c;const_double_htab_hash"}
!970 = !{!"branch_weights", i32 0, i32 21}
!971 = !{!"emit-rtl.c;const_double_htab_eq"}
!972 = !{!"emit-rtl.c;const_fixed_htab_hash"}
!973 = !{!"function_entry_count", i64 9}
!974 = !{!"emit-rtl.c;const_fixed_htab_eq"}
!975 = !{!"branch_weights", i32 2, i32 7}
!976 = !{!"function_entry_count", i64 694035}
!977 = !{!"emit-rtl.c;mem_attrs_htab_hash"}
!978 = !{!"branch_weights", i32 572610, i32 121425}
!979 = !{!"branch_weights", i32 19, i32 694016}
!980 = !{!"function_entry_count", i64 1099393}
!981 = !{!"emit-rtl.c;mem_attrs_htab_eq"}
!982 = !{!"branch_weights", i32 948372, i32 151021}
!983 = !{!"branch_weights", i32 696163, i32 252209}
!984 = !{!"branch_weights", i32 695969, i32 194}
!985 = !{!"branch_weights", i32 695969, i32 0}
!986 = !{!"branch_weights", i32 680923, i32 15046}
!987 = !{!"branch_weights", i32 1, i32 15045}
!988 = !{!"function_entry_count", i64 513148}
!989 = !{!"emit-rtl.c;reg_attrs_htab_hash"}
!990 = !{!"function_entry_count", i64 694469}
!991 = !{!"emit-rtl.c;reg_attrs_htab_eq"}
!992 = !{!"branch_weights", i32 212837, i32 481632}
!993 = !{!"function_entry_count", i64 64}
!994 = !{!"emit-rtl.c;gen_const_vector"}
!995 = !{!"branch_weights", i32 0, i32 64}
!996 = !{!"branch_weights", i32 127, i32 1037}
!997 = distinct !{!997, !284, !285}
!998 = !{!"function_entry_count", i64 404}
!999 = !{!"branch_weights", i32 0, i32 375, i32 29, i32 0, i32 0}
!1000 = !{!"branch_weights", i32 247, i32 157}
!1001 = !{!"branch_weights", i32 0, i32 157}
!1002 = !{!"branch_weights", i32 157, i32 0}
!1003 = distinct !{!1003, !284, !285}
!1004 = !{!"function_entry_count", i64 39133}
!1005 = !{!"branch_weights", i32 1, i32 39132}
