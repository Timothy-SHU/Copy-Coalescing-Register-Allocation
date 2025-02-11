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
%struct.real_value = type { i32, [3 x i64] }
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.double_int = type { i64, i64 }
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
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.ggc_cache_tab = type { ptr, i64, i64, ptr, ptr, ptr }
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

@byte_mode = dso_local local_unnamed_addr global i32 0, align 4
@word_mode = dso_local local_unnamed_addr global i32 0, align 4
@double_mode = dso_local local_unnamed_addr global i32 0, align 4
@ptr_mode = dso_local local_unnamed_addr global i32 0, align 4
@x_rtl = dso_local local_unnamed_addr global %struct.rtl_data zeroinitializer, align 8
@regno_reg_rtx = dso_local local_unnamed_addr global ptr null, align 8
@global_rtl = dso_local local_unnamed_addr global [11 x ptr] zeroinitializer, align 16
@const_tiny_rtx = dso_local local_unnamed_addr global [3 x [87 x ptr]] zeroinitializer, align 16
@const_true_rtx = dso_local local_unnamed_addr global ptr null, align 8
@dconst0 = dso_local global %struct.real_value zeroinitializer, align 8
@dconst1 = dso_local global %struct.real_value zeroinitializer, align 8
@dconst2 = dso_local global %struct.real_value zeroinitializer, align 8
@dconstm1 = dso_local local_unnamed_addr global %struct.real_value zeroinitializer, align 8
@dconsthalf = dso_local local_unnamed_addr global %struct.real_value zeroinitializer, align 8
@fconst0 = dso_local global [18 x %struct.fixed_value] zeroinitializer, align 16
@fconst1 = dso_local global [8 x %struct.fixed_value] zeroinitializer, align 16
@pic_offset_table_rtx = dso_local local_unnamed_addr global ptr null, align 8
@return_address_pointer_rtx = dso_local local_unnamed_addr global ptr null, align 8
@const_int_rtx = dso_local local_unnamed_addr global [129 x ptr] zeroinitializer, align 16
@split_branch_probability = dso_local local_unnamed_addr global i32 -1, align 4
@const_int_htab = internal global ptr null, align 8
@const_double_htab = internal global ptr null, align 8
@const_fixed_htab = internal global ptr null, align 8
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str = private unnamed_addr constant [11 x i8] c"emit-rtl.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@reload_in_progress = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@flag_pic = external local_unnamed_addr global i32, align 4
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@generating_concat_p = external local_unnamed_addr global i32, align 4
@reg_attrs_htab = internal global ptr null, align 8
@label_num = internal global i32 1, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@flag_argument_noalias = external local_unnamed_addr global i32, align 4
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@mem_attrs_htab = internal global ptr null, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@spill_slot_decl = internal global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%sfp\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@pass_unshare_all_rtl = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.3, ptr null, ptr @unshare_all_rtl, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1025 } }, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"unshare\00", align 1
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
@reg_raw_mode = external local_unnamed_addr global [53 x i32], align 16
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@mode_fbit = external local_unnamed_addr constant [87 x i8], align 16
@hard_reg_clobbers = internal global [87 x [53 x ptr]] zeroinitializer, align 16
@gt_ggc_r_gt_emit_rtl_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @spill_slot_decl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @static_regno_reg_rtx, i64 53, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_ggc_rd_gt_emit_rtl_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @hard_reg_clobbers, i64 1, i64 36888, ptr null, ptr null }, %struct.ggc_root_tab { ptr @free_sequence_stack, i64 1, i64 8, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_ggc_rc_gt_emit_rtl_h = dso_local local_unnamed_addr constant [6 x %struct.ggc_cache_tab] [%struct.ggc_cache_tab { ptr @const_fixed_htab, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def, ptr @ggc_marked_p }, %struct.ggc_cache_tab { ptr @const_double_htab, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def, ptr @ggc_marked_p }, %struct.ggc_cache_tab { ptr @reg_attrs_htab, i64 1, i64 8, ptr @gt_ggc_mx_reg_attrs, ptr @gt_pch_nx_reg_attrs, ptr @ggc_marked_p }, %struct.ggc_cache_tab { ptr @mem_attrs_htab, i64 1, i64 8, ptr @gt_ggc_mx_mem_attrs, ptr @gt_pch_nx_mem_attrs, ptr @ggc_marked_p }, %struct.ggc_cache_tab { ptr @const_int_htab, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def, ptr @ggc_marked_p }, %struct.ggc_cache_tab zeroinitializer], align 16
@gt_pch_rc_gt_emit_rtl_h = dso_local local_unnamed_addr constant [6 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @const_fixed_htab, i64 1, i64 8, ptr @gt_ggc_m_P7rtx_def4htab, ptr @gt_pch_n_P7rtx_def4htab }, %struct.ggc_root_tab { ptr @const_double_htab, i64 1, i64 8, ptr @gt_ggc_m_P7rtx_def4htab, ptr @gt_pch_n_P7rtx_def4htab }, %struct.ggc_root_tab { ptr @reg_attrs_htab, i64 1, i64 8, ptr @gt_ggc_m_P9reg_attrs4htab, ptr @gt_pch_n_P9reg_attrs4htab }, %struct.ggc_root_tab { ptr @mem_attrs_htab, i64 1, i64 8, ptr @gt_ggc_m_P9mem_attrs4htab, ptr @gt_pch_n_P9mem_attrs4htab }, %struct.ggc_root_tab { ptr @const_int_htab, i64 1, i64 8, ptr @gt_ggc_m_P7rtx_def4htab, ptr @gt_pch_n_P7rtx_def4htab }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_pch_rs_gt_emit_rtl_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @label_num, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@switch.table.set_mem_attributes_minus_bitpos = private unnamed_addr constant [6 x i32] [i32 268435456, i32 0, i32 268435456, i32 268435456, i32 268435456, i32 268435456], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_raw_REG(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef %0, i32 noundef %1) #20
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %1, ptr %4, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_i00_stat(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_rtx_CONST_INT(i32 %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  store i64 %1, ptr %3, align 8, !tbaa !9
  %4 = add i64 %1, 64
  %5 = icmp ult i64 %4, 129
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %4
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  br label %18

9:                                                ; preds = %2
  %10 = load ptr, ptr @const_int_htab, align 8, !tbaa !11
  %11 = trunc i64 %1 to i32
  %12 = call ptr @htab_find_slot_with_hash(ptr noundef %10, ptr noundef nonnull %3, i32 noundef %11, i32 noundef 1) #20
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i64, ptr %3, align 8, !tbaa !9
  %17 = call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %16) #20
  store ptr %17, ptr %12, align 8, !tbaa !11
  br label %18

18:                                               ; preds = %9, %15, %6
  %19 = phi ptr [ %8, %6 ], [ %17, %15 ], [ %13, %9 ]
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_w_stat(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_int_mode(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @trunc_int_for_mode(i64 noundef %0, i32 noundef %1) #20
  %4 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %3) #21
  ret ptr %4
}

; Function Attrs: optsize
declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @const_double_from_real_value(ptr nocapture noundef readonly byval(%struct.real_value) align 8 %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @rtx_alloc_stat(i32 noundef 32) #20
  %4 = load i32, ptr %3, align 8
  %5 = shl i32 %1, 16
  %6 = and i32 %5, 16711680
  %7 = and i32 %4, -16711681
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !13
  %10 = tail call fastcc ptr @lookup_const_double(ptr noundef nonnull %3) #21
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @rtx_alloc_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_const_double(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @const_double_htab, align 8, !tbaa !11
  %3 = tail call ptr @htab_find_slot(ptr noundef %2, ptr noundef %0, i32 noundef 1) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store ptr %0, ptr %3, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi ptr [ %0, %6 ], [ %4, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @const_fixed_from_fixed_value(ptr nocapture noundef readonly byval(%struct.fixed_value) align 8 %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @rtx_alloc_stat(i32 noundef 31) #20
  %4 = load i32, ptr %3, align 8
  %5 = shl i32 %1, 16
  %6 = and i32 %5, 16711680
  %7 = and i32 %4, -16711681
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !16
  %10 = tail call fastcc ptr @lookup_const_fixed(ptr noundef nonnull %3) #21
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_const_fixed(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @const_fixed_htab, align 8, !tbaa !11
  %3 = tail call ptr @htab_find_slot(ptr noundef %2, ptr noundef %0, i32 noundef 1) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store ptr %0, ptr %3, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi ptr [ %0, %6 ], [ %4, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @immed_double_const(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !6
  switch i8 %8, label %9 [
    i8 2, label %10
    i8 3, label %10
    i8 12, label %10
    i8 17, label %10
  ]

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 547, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %5, %5, %5, %5, %9
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %12 = load i8, ptr %11, align 1, !tbaa !6
  %13 = icmp ult i8 %12, 9
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call ptr @gen_int_mode(i64 noundef %0, i32 noundef %2) #21
  br label %37

16:                                               ; preds = %10
  %17 = icmp eq i8 %12, 16
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 552, ptr noundef nonnull @.str.1) #20
  br label %19

19:                                               ; preds = %18, %16, %3
  %20 = icmp eq i64 %1, 0
  %21 = icmp sgt i64 %0, -1
  %22 = and i1 %21, %20
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = icmp eq i64 %1, -1
  %25 = icmp slt i64 %0, 0
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %19
  %28 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %0) #21
  br label %37

29:                                               ; preds = %23
  %30 = tail call ptr @rtx_alloc_stat(i32 noundef 32) #20
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, -16711681
  store i32 %32, ptr %30, align 8
  %33 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  store i64 %0, ptr %33, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  store i64 %1, ptr %34, align 8, !tbaa !6
  %35 = getelementptr i8, ptr %30, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false), !tbaa !6
  %36 = tail call fastcc ptr @lookup_const_double(ptr noundef nonnull %30) #21
  br label %37

37:                                               ; preds = %29, %27, %14
  %38 = phi ptr [ %15, %14 ], [ %28, %27 ], [ %36, %29 ]
  ret ptr %38
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_rtx_REG(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne i32 %0, 16
  %4 = load i32, ptr @reload_in_progress, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %53, label %7

7:                                                ; preds = %2
  switch i32 %1, label %26 [
    i32 20, label %8
    i32 6, label %16
    i32 16, label %24
  ]

8:                                                ; preds = %7
  %9 = load i32, ptr @reload_completed, align 4, !tbaa !14
  %10 = icmp eq i32 %9, 0
  %11 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %12 = icmp ne i8 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !11
  br label %55

16:                                               ; preds = %7
  %17 = load i32, ptr @reload_completed, align 4, !tbaa !14
  %18 = icmp eq i32 %17, 0
  %19 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %20 = icmp ne i8 %19, 0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !11
  br label %55

24:                                               ; preds = %7
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !11
  br label %55

26:                                               ; preds = %16, %8, %7
  %27 = load i32, ptr @flag_pic, align 4, !tbaa !14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr @reload_completed, align 4, !tbaa !14
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  switch i32 %1, label %53 [
    i32 3, label %42
    i32 7, label %51
  ]

33:                                               ; preds = %29
  %34 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !11
  %35 = tail call fastcc i32 @rhs_regno(ptr noundef %34) #21
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %38, label %49

37:                                               ; preds = %26
  switch i32 %1, label %53 [
    i32 -1, label %42
    i32 7, label %51
  ]

38:                                               ; preds = %33
  %39 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !11
  %40 = tail call fastcc i32 @rhs_regno(ptr noundef %39) #21
  %41 = zext i32 %40 to i64
  br label %42

42:                                               ; preds = %32, %37, %38
  %43 = phi i64 [ %41, %38 ], [ 4294967295, %37 ], [ 3, %32 ]
  %44 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !6
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !11
  br label %55

49:                                               ; preds = %33, %42
  %50 = icmp eq i32 %1, 7
  br i1 %50, label %51, label %53

51:                                               ; preds = %32, %37, %49
  %52 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !11
  br label %55

53:                                               ; preds = %32, %37, %49, %2
  %54 = tail call ptr @gen_raw_REG(i32 noundef %0, i32 noundef %1) #21
  br label %55

55:                                               ; preds = %53, %51, %47, %24, %22, %14
  %56 = phi ptr [ %54, %53 ], [ %15, %14 ], [ %23, %22 ], [ %25, %24 ], [ %48, %47 ], [ %52, %51 ]
  ret ptr %56
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !6
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gen_rtx_fmt_e0_stat(i32 noundef 43, i32 noundef %0, ptr noundef %1) #20
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %4, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e0_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_const_mem(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %1) #21
  %4 = load i32, ptr %3, align 8
  %5 = or i32 %4, 100663296
  store i32 %5, ptr %3, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_frame_mem(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %1) #21
  %4 = load i32, ptr %3, align 8
  %5 = or i32 %4, 33554432
  store i32 %5, ptr %3, align 8
  %6 = tail call i32 @get_frame_alias_set() #20
  tail call void @set_mem_alias_set(ptr noundef nonnull %3, i32 noundef %6) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_alias_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  br label %25

12:                                               ; preds = %2
  %13 = load i32, ptr %0, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %34, label %17

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !6
  %21 = zext i8 %20 to i64
  %22 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %21) #21
  %23 = load ptr, ptr %3, align 8, !tbaa !6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %6, %17
  %26 = phi ptr [ %11, %6 ], [ %22, %17 ]
  %27 = phi ptr [ %7, %6 ], [ null, %17 ]
  %28 = phi ptr [ %9, %6 ], [ null, %17 ]
  %29 = phi ptr [ %4, %6 ], [ %23, %17 ]
  %30 = getelementptr inbounds %struct.mem_attrs, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !21
  %32 = getelementptr inbounds %struct.mem_attrs, ptr %29, i64 0, i32 5
  %33 = load i8, ptr %32, align 8, !tbaa !22
  br label %34

34:                                               ; preds = %12, %17, %25
  %35 = phi ptr [ %26, %25 ], [ %22, %17 ], [ null, %12 ]
  %36 = phi ptr [ %27, %25 ], [ null, %17 ], [ null, %12 ]
  %37 = phi ptr [ %28, %25 ], [ null, %17 ], [ null, %12 ]
  %38 = phi i32 [ %31, %25 ], [ 8, %17 ], [ 8, %12 ]
  %39 = phi i8 [ %33, %25 ], [ 0, %17 ], [ 0, %12 ]
  %40 = load i32, ptr %0, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = tail call fastcc ptr @get_mem_attrs(i32 noundef %1, ptr noundef %36, ptr noundef %37, ptr noundef %35, i32 noundef %38, i8 noundef zeroext %39, i32 noundef %42) #21
  store ptr %43, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare i32 @get_frame_alias_set() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_tmp_stack_mem(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %1) #21
  %4 = load i32, ptr %3, align 8
  %5 = or i32 %4, 33554432
  store i32 %5, ptr %3, align 8
  %6 = load ptr, ptr @cfun, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 20
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 524288
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = tail call i32 @get_frame_alias_set() #20
  tail call void @set_mem_alias_set(ptr noundef nonnull %3, i32 noundef %12) #21
  br label %13

13:                                               ; preds = %11, %2
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @validate_subreg(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !6
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !6
  %11 = zext i8 %10 to i32
  %12 = urem i32 %3, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i8 %7 to i32
  %15 = icmp ugt i32 %14, %3
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %86

17:                                               ; preds = %4
  %18 = load i32, ptr @word_mode, align 4
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %48, label %20

20:                                               ; preds = %17
  %21 = icmp ult i8 %10, 4
  %22 = icmp ult i8 %7, %10
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %26 = load i8, ptr %25, align 1, !tbaa !6
  %27 = add i8 %26, -10
  %28 = icmp ult i8 %27, 8
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %5
  %31 = load i8, ptr %30, align 1, !tbaa !6
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %48, label %34

34:                                               ; preds = %24, %29
  %35 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %36 = load i8, ptr %35, align 1, !tbaa !6
  %37 = add i8 %36, -12
  %38 = icmp ult i8 %37, 6
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %8
  %41 = load i8, ptr %40, align 1, !tbaa !6
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, %1
  br i1 %43, label %48, label %44

44:                                               ; preds = %34, %39
  switch i8 %26, label %45 [
    i8 8, label %46
    i8 9, label %46
    i8 11, label %46
    i8 17, label %46
  ]

45:                                               ; preds = %44
  switch i8 %36, label %48 [
    i8 8, label %46
    i8 9, label %46
    i8 11, label %46
    i8 17, label %46
  ]

46:                                               ; preds = %45, %45, %45, %45, %44, %44, %44, %44
  %47 = icmp eq i8 %7, %10
  br i1 %47, label %48, label %86

48:                                               ; preds = %45, %20, %39, %46, %29, %17
  %49 = icmp ugt i8 %10, %7
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = icmp eq i32 %3, 0
  %52 = zext i1 %51 to i8
  br label %86

53:                                               ; preds = %48
  %54 = icmp eq ptr %2, null
  br i1 %54, label %80, label %55

55:                                               ; preds = %53
  %56 = load i32, ptr %2, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 37
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #21
  %61 = icmp ult i32 %60, 53
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %64 = load i8, ptr %63, align 1, !tbaa !6
  %65 = add i8 %64, -10
  %66 = icmp ult i8 %65, 8
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %5
  %69 = load i8, ptr %68, align 1, !tbaa !6
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, %0
  br i1 %71, label %78, label %72

72:                                               ; preds = %62, %67
  %73 = zext nneg i32 %60 to i64
  %74 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !14
  %76 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %1, i32 noundef %0, i32 noundef %75) #20
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72, %67
  %79 = tail call zeroext i8 @subreg_offset_representable_p(i32 noundef %60, i32 noundef %1, i32 noundef %3, i32 noundef %0) #20
  br label %86

80:                                               ; preds = %59, %55, %53
  %81 = icmp ugt i8 %10, 3
  %82 = and i32 %3, 3
  %83 = icmp eq i32 %82, 0
  %84 = or i1 %83, %81
  %85 = zext i1 %84 to i8
  br label %86

86:                                               ; preds = %80, %78, %72, %46, %4, %50
  %87 = phi i8 [ %52, %50 ], [ 0, %4 ], [ 0, %46 ], [ %79, %78 ], [ 0, %72 ], [ %85, %80 ]
  ret i8 %87
}

; Function Attrs: optsize
declare zeroext i8 @ix86_cannot_change_mode_class(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @subreg_offset_representable_p(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_rtx_SUBREG(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = tail call zeroext i8 @validate_subreg(i32 noundef %0, i32 noundef %6, ptr noundef nonnull %1, i32 noundef %2) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 776, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %3, %9
  %11 = tail call ptr @gen_rtx_fmt_ei_stat(i32 noundef 39, i32 noundef %0, ptr noundef nonnull %1, i32 noundef %2) #20
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ei_stat(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_lowpart_SUBREG(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @gen_rtx_SUBREG(i32 noundef %0, ptr noundef nonnull %1, i32 noundef 0) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_rtvec(i32 noundef %0, ...) local_unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call void @llvm.va_start(ptr nonnull %2)
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = call ptr @rtvec_alloc(i32 noundef %0) #20
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %9 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %10 = zext nneg i32 %0 to i64
  br label %11

11:                                               ; preds = %7, %23
  %12 = phi i64 [ 0, %7 ], [ %27, %23 ]
  %13 = load i32, ptr %2, align 16
  %14 = icmp ult i32 %13, 41
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load ptr, ptr %9, align 16
  %17 = zext nneg i32 %13 to i64
  %18 = getelementptr i8, ptr %16, i64 %17
  %19 = add nuw nsw i32 %13, 8
  store i32 %19, ptr %2, align 16
  br label %23

20:                                               ; preds = %11
  %21 = load ptr, ptr %8, align 8
  %22 = getelementptr i8, ptr %21, i64 8
  store ptr %22, ptr %8, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi ptr [ %18, %15 ], [ %21, %20 ]
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.rtvec_def, ptr %5, i64 0, i32 1, i64 %12
  store ptr %25, ptr %26, align 8, !tbaa !11
  %27 = add nuw nsw i64 %12, 1
  %28 = icmp eq i64 %27, %10
  br i1 %28, label %29, label %11, !llvm.loop !23

29:                                               ; preds = %23, %4
  call void @llvm.va_end(ptr nonnull %2)
  br label %30

30:                                               ; preds = %1, %29
  %31 = phi ptr [ %5, %29 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret ptr %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: optsize
declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_rtvec_v(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @rtvec_alloc(i32 noundef %0) #20
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = zext nneg i32 %0 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %15, %9 ]
  %11 = phi ptr [ %1, %7 ], [ %12, %9 ]
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %11, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.rtvec_def, ptr %5, i64 0, i32 1, i64 %10
  store ptr %13, ptr %14, align 8, !tbaa !11
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %8
  br i1 %16, label %17, label %9, !llvm.loop !25

17:                                               ; preds = %9, %4, %2
  %18 = phi ptr [ null, %2 ], [ %5, %4 ], [ %5, %9 ]
  ret ptr %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @byte_lowpart_offset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_reg_rtx(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @get_mode_alignment(i32 noundef %0) #20
  %3 = load i32, ptr @reload_in_progress, align 4, !tbaa !14
  %4 = icmp ne i32 %3, 0
  %5 = load i32, ptr @reload_completed, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 863, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %1, %8
  %10 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !26
  %11 = icmp uge i32 %10, %2
  %12 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = tail call i32 @ix86_minimum_alignment(ptr noundef null, i32 noundef %0, i32 noundef %2) #20
  %17 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !26
  %18 = icmp ult i32 %17, %16
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 %16, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !26
  br label %20

20:                                               ; preds = %15, %19, %9
  %21 = load i32, ptr @generating_concat_p, align 4, !tbaa !14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !6
  %27 = and i8 %26, -2
  %28 = icmp eq i8 %27, 10
  br i1 %28, label %31, label %38

29:                                               ; preds = %31, %55
  %30 = phi ptr [ %57, %55 ], [ %37, %31 ]
  ret ptr %30

31:                                               ; preds = %23
  %32 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %24
  %33 = load i8, ptr %32, align 1, !tbaa !6
  %34 = zext i8 %33 to i32
  %35 = tail call ptr @gen_reg_rtx(i32 noundef %34) #21
  %36 = tail call ptr @gen_reg_rtx(i32 noundef %34) #21
  %37 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %0, ptr noundef %35, ptr noundef %36) #20
  br label %29

38:                                               ; preds = %23, %20
  %39 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !35
  %40 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 8), align 4, !tbaa !36
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !37
  %44 = shl nsw i32 %39, 1
  %45 = sext i32 %44 to i64
  %46 = tail call ptr @xrealloc(ptr noundef %43, i64 noundef %45) #20
  %47 = sext i32 %39 to i64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  tail call void @llvm.memset.p0.i64(ptr align 1 %48, i8 0, i64 %47, i1 false)
  store ptr %46, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !37
  %49 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !11
  %50 = shl nsw i64 %45, 3
  %51 = tail call ptr @ggc_realloc_stat(ptr noundef %49, i64 noundef %50) #20
  %52 = getelementptr inbounds ptr, ptr %51, i64 %47
  %53 = shl nsw i64 %47, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %52, i8 0, i64 %53, i1 false)
  store ptr %51, ptr @regno_reg_rtx, align 8, !tbaa !11
  store i32 %44, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 8), align 4, !tbaa !36
  %54 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !35
  br label %55

55:                                               ; preds = %42, %38
  %56 = phi i32 [ %54, %42 ], [ %39, %38 ]
  %57 = tail call ptr @gen_raw_REG(i32 noundef %0, i32 noundef %56) #21
  %58 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !11
  %59 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !35
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !35
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds ptr, ptr %58, i64 %61
  store ptr %57, ptr %62, align 8, !tbaa !11
  br label %29
}

; Function Attrs: optsize
declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_minimum_alignment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare ptr @ggc_realloc_stat(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_rtx_REG_offset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @gen_rtx_REG(i32 noundef %1, i32 noundef %2) #21
  tail call fastcc void @update_reg_offset(ptr noundef %5, ptr noundef %0, i32 noundef %3) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_reg_offset(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.reg_attrs, ptr %5, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !40
  %11 = trunc i64 %10 to i32
  br label %12

12:                                               ; preds = %3, %7
  %13 = phi ptr [ %8, %7 ], [ null, %3 ]
  %14 = phi i32 [ %11, %7 ], [ 0, %3 ]
  %15 = add i32 %14, %2
  %16 = tail call fastcc ptr @get_reg_attrs(ptr noundef %13, i32 noundef %15) #21
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %16, ptr %17, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.reg_attrs, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = icmp eq ptr %0, null
  %5 = icmp eq i32 %1, 0
  %6 = and i1 %4, %5
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !38
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.reg_attrs, ptr %3, i64 0, i32 1
  store i64 %8, ptr %9, align 8, !tbaa !40
  %10 = load ptr, ptr @reg_attrs_htab, align 8, !tbaa !11
  %11 = call ptr @htab_find_slot(ptr noundef %10, ptr noundef nonnull %3, i32 noundef 1) #20
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = call ptr @ggc_alloc_stat(i64 noundef 16) #20
  store ptr %15, ptr %11, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %16 = load ptr, ptr %11, align 8, !tbaa !11
  br label %17

17:                                               ; preds = %7, %14, %2
  %18 = phi ptr [ null, %2 ], [ %16, %14 ], [ %12, %7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret ptr %18
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_reg_rtx_offset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @gen_reg_rtx(i32 noundef %1) #21
  tail call fastcc void @update_reg_offset(ptr noundef %4, ptr noundef %0, i32 noundef %2) #21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @adjust_reg_mode(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @update_reg_offset(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef 0) #21
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %4, 16711680
  %6 = and i32 %3, -16711681
  %7 = or disjoint i32 %6, %5
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_reg_attrs_from_value(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #21
  %4 = icmp ult i32 %3, 53
  br i1 %4, label %51, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %51 [
    i16 43, label %8
    i16 37, label %32
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mem_attrs, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %14, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 30
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load ptr, ptr %10, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !6
  %24 = trunc i64 %23 to i32
  %25 = tail call fastcc ptr @get_reg_attrs(ptr noundef %21, i32 noundef %24) #21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %25, ptr %26, align 8, !tbaa !6
  %27 = load i32, ptr %1, align 8
  br label %28

28:                                               ; preds = %8, %20, %16, %12
  %29 = phi i32 [ %6, %8 ], [ %27, %20 ], [ %6, %16 ], [ %6, %12 ]
  %30 = and i32 %29, 1073741824
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %51, label %49

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  tail call fastcc void @update_reg_offset(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #21
  %37 = load i32, ptr %1, align 8
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %37, %36 ], [ %6, %32 ]
  %40 = and i32 %39, 1073741824
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !37
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #21
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !6
  %48 = zext i8 %47 to i32
  br label %49

49:                                               ; preds = %28, %42
  %50 = phi i32 [ %48, %42 ], [ 0, %28 ]
  tail call void @mark_reg_pointer(ptr noundef nonnull %0, i32 noundef %50) #21
  br label %51

51:                                               ; preds = %49, %28, %38, %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mark_reg_pointer(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 1073741824
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = or disjoint i32 %3, 1073741824
  store i32 %7, ptr %0, align 8
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %6
  %10 = trunc i32 %1 to i8
  %11 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !37
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #21
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  store i8 %10, ptr %14, align 1, !tbaa !6
  br label %27

15:                                               ; preds = %2
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !37
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #21
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !6
  %23 = zext i8 %22 to i32
  %24 = icmp sgt i32 %23, %1
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = trunc i32 %1 to i8
  store i8 %26, ptr %21, align 1, !tbaa !6
  br label %27

27:                                               ; preds = %15, %17, %25, %6, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_reg_rtx_and_attrs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 255
  %5 = tail call ptr @gen_reg_rtx(i32 noundef %4) #21
  tail call void @set_reg_attrs_from_value(ptr noundef %5, ptr noundef nonnull %0) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_reg_attrs_for_parm(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %54 [
    i16 37, label %5
    i16 15, label %6
  ]

5:                                                ; preds = %2
  tail call void @set_reg_attrs_from_value(ptr noundef nonnull %0, ptr noundef %1) #21
  br label %54

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = icmp eq ptr %12, null
  %14 = zext i1 %13 to i32
  %15 = load i32, ptr %8, align 8, !tbaa !41
  %16 = icmp sgt i32 %15, %14
  br i1 %16, label %17, label %54

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = zext i1 %13 to i64
  br label %20

20:                                               ; preds = %17, %48
  %21 = phi i32 [ %15, %17 ], [ %49, %48 ]
  %22 = phi ptr [ %8, %17 ], [ %50, %48 ]
  %23 = phi i64 [ %19, %17 ], [ %51, %48 ]
  %24 = getelementptr inbounds %struct.rtvec_def, ptr %22, i64 0, i32 1, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %48

31:                                               ; preds = %20
  %32 = load ptr, ptr %18, align 8, !tbaa !6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %32, align 8, !tbaa !17
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi ptr [ %35, %34 ], [ null, %31 ]
  %38 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !6
  %42 = trunc i64 %41 to i32
  %43 = tail call fastcc ptr @get_reg_attrs(ptr noundef %37, i32 noundef %42) #21
  %44 = load ptr, ptr %26, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %43, ptr %45, align 8, !tbaa !6
  %46 = load ptr, ptr %7, align 8, !tbaa !6
  %47 = load i32, ptr %46, align 8, !tbaa !41
  br label %48

48:                                               ; preds = %36, %20
  %49 = phi i32 [ %47, %36 ], [ %21, %20 ]
  %50 = phi ptr [ %46, %36 ], [ %22, %20 ]
  %51 = add nuw nsw i64 %23, 1
  %52 = trunc i64 %51 to i32
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %20, label %54, !llvm.loop !43

54:                                               ; preds = %48, %6, %2, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_reg_attrs_for_decl_rtl(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %1) #21, !range !44
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1039, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = load i32, ptr %12, align 8
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ %13, %10 ], [ %3, %2 ]
  %16 = phi ptr [ %12, %10 ], [ %1, %2 ]
  %17 = and i32 %15, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef 0) #21
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %20, ptr %21, align 8, !tbaa !6
  %22 = load i32, ptr %16, align 8
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i32 [ %22, %19 ], [ %15, %14 ]
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 41
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 37
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = tail call fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef 0) #21
  %35 = load ptr, ptr %28, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %34, ptr %36, align 8, !tbaa !6
  br label %37

37:                                               ; preds = %33, %27
  %38 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 37
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load ptr, ptr %28, align 8, !tbaa !6
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !6
  %51 = icmp eq i8 %50, 0
  %52 = zext i8 %50 to i64
  %53 = select i1 %51, i64 %48, i64 %52
  %54 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !6
  %56 = zext i8 %55 to i32
  %57 = tail call fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef %56) #21
  %58 = load ptr, ptr %38, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %57, ptr %59, align 8, !tbaa !6
  br label %60

60:                                               ; preds = %37, %43, %23
  %61 = load i32, ptr %16, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 15
  br i1 %63, label %64, label %105

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !11
  %69 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = icmp eq ptr %70, null
  %72 = zext i1 %71 to i32
  %73 = load i32, ptr %66, align 8, !tbaa !41
  %74 = icmp sgt i32 %73, %72
  br i1 %74, label %75, label %105

75:                                               ; preds = %64
  %76 = zext i1 %71 to i64
  br label %77

77:                                               ; preds = %75, %99
  %78 = phi i32 [ %73, %75 ], [ %100, %99 ]
  %79 = phi ptr [ %66, %75 ], [ %101, %99 ]
  %80 = phi i64 [ %76, %75 ], [ %102, %99 ]
  %81 = getelementptr inbounds %struct.rtvec_def, ptr %79, i64 0, i32 1, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !11
  %83 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !6
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 37
  br i1 %87, label %88, label %99

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !6
  %93 = trunc i64 %92 to i32
  %94 = tail call fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef %93) #21
  %95 = load ptr, ptr %83, align 8, !tbaa !6
  %96 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %94, ptr %96, align 8, !tbaa !6
  %97 = load ptr, ptr %65, align 8, !tbaa !6
  %98 = load i32, ptr %97, align 8, !tbaa !41
  br label %99

99:                                               ; preds = %88, %77
  %100 = phi i32 [ %98, %88 ], [ %78, %77 ]
  %101 = phi ptr [ %97, %88 ], [ %79, %77 ]
  %102 = add nuw nsw i64 %80, 1
  %103 = trunc i64 %102 to i32
  %104 = icmp sgt i32 %100, %103
  br i1 %104, label %77, label %105, !llvm.loop !45

105:                                              ; preds = %99, %64, %60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @subreg_lowpart_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 16711680
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load i32, ptr %12, align 8, !tbaa !6
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %5, %1, %11
  %17 = phi i32 [ %15, %11 ], [ 1, %1 ], [ 0, %5 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_decl_rtl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !6
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @set_reg_attrs_for_decl_rtl(ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_decl_incoming_rtl(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !6
  %5 = icmp eq ptr %1, null
  %6 = icmp ne i8 %2, 0
  %7 = or i1 %5, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @set_reg_attrs_for_decl_rtl(ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  br label %9

9:                                                ; preds = %8, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_user_reg(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %11 [
    i16 41, label %4
    i16 37, label %15
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = load i32, ptr %6, align 8
  %8 = or i32 %7, 134217728
  store i32 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  br label %12

11:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1107, ptr noundef nonnull @.str.1) #20
  br label %12

12:                                               ; preds = %4, %11
  %13 = phi ptr [ %0, %11 ], [ %10, %4 ]
  %14 = load i32, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %1
  %16 = phi i32 [ %2, %1 ], [ %14, %12 ]
  %17 = phi ptr [ %0, %1 ], [ %13, %12 ]
  %18 = or i32 %16, 134217728
  store i32 %18, ptr %17, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @max_reg_num() local_unnamed_addr #10 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !35
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @max_label_num() local_unnamed_addr #10 {
  %1 = load i32, ptr @label_num, align 4, !tbaa !14
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_first_label_num() local_unnamed_addr #10 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 1), align 4, !tbaa !46
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @maybe_set_first_label_num(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 1), align 4, !tbaa !46
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 %3, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 1), align 4, !tbaa !46
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_lowpart_common(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %3
  %6 = load i32, ptr %1, align 8
  br label %7

7:                                                ; preds = %58, %2
  %8 = phi i32 [ %6, %2 ], [ %54, %58 ]
  %9 = phi ptr [ %1, %2 ], [ %53, %58 ]
  %10 = load i8, ptr %4, align 1, !tbaa !6
  %11 = zext i8 %10 to i32
  %12 = and i32 %8, 65535
  %13 = icmp eq i32 %12, 30
  %14 = icmp ult i8 %10, 9
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = lshr i32 %8, 16
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %7
  %21 = phi i32 [ 64, %7 ], [ 128, %16 ]
  %22 = tail call i32 @mode_for_size(i32 noundef %21, i32 noundef 2, i32 noundef 0) #20
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i32 [ %18, %16 ], [ %22, %20 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !6
  %28 = zext i8 %27 to i32
  %29 = icmp ugt i32 %24, 1
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1195, ptr noundef nonnull @.str.1) #20
  br label %31

31:                                               ; preds = %23, %30
  %32 = icmp eq i32 %24, %0
  br i1 %32, label %72, label %33

33:                                               ; preds = %31
  %34 = add nuw nsw i32 %11, 3
  %35 = lshr i32 %34, 2
  %36 = add nuw nsw i32 %28, 3
  %37 = lshr i32 %36, 2
  %38 = icmp ugt i32 %35, %37
  br i1 %38, label %72, label %39

39:                                               ; preds = %33
  %40 = load i8, ptr %5, align 1, !tbaa !6
  %41 = and i8 %40, -2
  %42 = icmp eq i8 %41, 8
  %43 = icmp ugt i8 %10, %27
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %72, label %45

45:                                               ; preds = %39
  %46 = load i32, ptr %9, align 8
  %47 = and i32 %46, 65534
  %48 = icmp eq i32 %47, 98
  %49 = icmp eq i8 %41, 2
  %50 = and i1 %49, %48
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 255
  %57 = icmp eq i32 %56, %0
  br i1 %57, label %72, label %58

58:                                               ; preds = %51
  %59 = zext nneg i32 %56 to i64
  %60 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !6
  %62 = icmp ult i8 %10, %61
  br i1 %62, label %7, label %63

63:                                               ; preds = %58
  %64 = icmp ult i8 %10, %27
  br i1 %64, label %65, label %72

65:                                               ; preds = %63
  %66 = and i32 %46, 65535
  %67 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %66, i32 noundef %0, ptr noundef nonnull %53) #20
  br label %72

68:                                               ; preds = %45
  %69 = trunc i32 %46 to i16
  switch i16 %69, label %72 [
    i16 39, label %70
    i16 37, label %70
    i16 41, label %70
    i16 33, label %70
    i16 32, label %70
    i16 30, label %70
  ]

70:                                               ; preds = %68, %68, %68, %68, %68, %68
  %71 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %9, i32 noundef %24, i32 noundef 0) #20
  br label %72

72:                                               ; preds = %39, %51, %33, %31, %63, %68, %70, %65
  %73 = phi ptr [ %67, %65 ], [ %71, %70 ], [ null, %68 ], [ null, %63 ], [ null, %39 ], [ %53, %51 ], [ null, %33 ], [ %9, %31 ]
  ret ptr %73
}

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_highpart(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !6
  %6 = icmp ult i8 %5, 5
  %7 = load i32, ptr %1, align 8
  br i1 %6, label %22, label %8

8:                                                ; preds = %2
  %9 = lshr i32 %7, 16
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !6
  %14 = icmp eq i8 %13, 0
  %15 = zext i8 %13 to i64
  %16 = select i1 %14, i64 %11, i64 %15
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !6
  %19 = icmp eq i8 %5, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1248, ptr noundef nonnull @.str.1) #20
  %21 = load i32, ptr %1, align 8
  br label %22

22:                                               ; preds = %2, %8, %20
  %23 = phi i32 [ %7, %2 ], [ %7, %8 ], [ %21, %20 ]
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = tail call i32 @subreg_highpart_offset(i32 noundef %0, i32 noundef %25) #21, !range !47
  %27 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %1, i32 noundef %25, i32 noundef %26) #20
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1252, ptr noundef nonnull @.str.1) #20
  br label %30

30:                                               ; preds = %22, %29
  %31 = load i32, ptr %27, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 43
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = tail call ptr @validize_mem(ptr noundef nonnull %27) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1260, ptr noundef nonnull @.str.1) #20
  br label %38

38:                                               ; preds = %37, %34, %30
  %39 = phi ptr [ %35, %34 ], [ null, %37 ], [ %27, %30 ]
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @subreg_highpart_offset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !6
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !6
  %9 = icmp ult i8 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1307, ptr noundef nonnull @.str.1) #20
  br label %11

11:                                               ; preds = %2, %10
  %12 = zext i8 %5 to i32
  %13 = zext i8 %8 to i32
  %14 = sub nsw i32 %12, %13
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 0)
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @validize_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_highpart_mode(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %2, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = icmp eq i32 %6, %1
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1273, ptr noundef nonnull @.str.1) #20
  br label %11

11:                                               ; preds = %8, %10
  %12 = tail call ptr @gen_highpart(i32 noundef %0, ptr noundef nonnull %2) #21
  br label %16

13:                                               ; preds = %3
  %14 = tail call i32 @subreg_highpart_offset(i32 noundef %0, i32 noundef %1) #21, !range !47
  %15 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %2, i32 noundef %1, i32 noundef %14) #20
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi ptr [ %12, %11 ], [ %15, %13 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @operand_subword(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1367, ptr noundef nonnull @.str.1) #20
  br label %15

12:                                               ; preds = %4, %6
  %13 = phi i32 [ %9, %6 ], [ %3, %4 ]
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %28, label %15

15:                                               ; preds = %11, %12
  %16 = phi i32 [ 0, %11 ], [ %13, %12 ]
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !6
  %20 = icmp ult i8 %19, 4
  br i1 %20, label %66, label %21

21:                                               ; preds = %15
  %22 = shl i32 %1, 2
  %23 = add i32 %22, 4
  %24 = zext i8 %19 to i32
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !11
  br label %66

28:                                               ; preds = %12, %21
  %29 = phi i32 [ 1, %12 ], [ %16, %21 ]
  %30 = load i32, ptr %0, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 43
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = shl i32 %1, 2
  br label %62

35:                                               ; preds = %28
  %36 = load i32, ptr @word_mode, align 4, !tbaa !14
  %37 = shl i32 %1, 2
  %38 = zext i32 %37 to i64
  %39 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef %36, i64 noundef %38, i32 noundef 0, i32 noundef 1) #21
  %40 = icmp eq i32 %2, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %35
  %42 = load i32, ptr @reload_completed, align 4, !tbaa !14
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr @word_mode, align 4, !tbaa !14
  %46 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.mem_attrs, ptr %49, i64 0, i32 5
  %53 = load i8, ptr %52, align 8, !tbaa !22
  br label %58

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = tail call ptr @replace_equiv_address(ptr noundef %39, ptr noundef %56) #21
  br label %66

58:                                               ; preds = %51, %44
  %59 = phi i8 [ %53, %51 ], [ 0, %44 ]
  %60 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %45, ptr noundef %47, i8 noundef zeroext %59) #20
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %33, %58
  %63 = phi i32 [ %34, %33 ], [ %37, %58 ]
  %64 = load i32, ptr @word_mode, align 4, !tbaa !14
  %65 = tail call ptr @simplify_gen_subreg(i32 noundef %64, ptr noundef nonnull %0, i32 noundef %29, i32 noundef %63) #20
  br label %66

66:                                               ; preds = %35, %54, %58, %15, %62, %26
  %67 = phi ptr [ %27, %26 ], [ null, %58 ], [ %65, %62 ], [ null, %15 ], [ %39, %35 ], [ %57, %54 ]
  ret ptr %67
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @adjust_address_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !21
  %16 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 5
  %17 = load i8, ptr %16, align 8, !tbaa !22
  br label %18

18:                                               ; preds = %5, %11
  %19 = phi i32 [ %15, %11 ], [ 8, %5 ]
  %20 = phi ptr [ %13, %11 ], [ null, %5 ]
  %21 = phi i8 [ %17, %11 ], [ 0, %5 ]
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !48
  %23 = tail call i32 %22(i8 noundef zeroext %21) #20
  %24 = load i32, ptr %0, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = icmp ne i32 %26, %1
  %28 = icmp ne i64 %2, 0
  %29 = or i1 %28, %27
  br i1 %29, label %35, label %30

30:                                               ; preds = %18
  %31 = icmp eq i32 %3, 0
  br i1 %31, label %170, label %32

32:                                               ; preds = %30
  %33 = tail call i32 @memory_address_addr_space_p(i32 noundef %1, ptr noundef %7, i8 noundef zeroext %21) #20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %170

35:                                               ; preds = %32, %18
  %36 = tail call ptr @copy_rtx(ptr noundef %7) #20
  %37 = zext i32 %23 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !6
  %40 = icmp ult i8 %39, 8
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = shl nuw nsw i8 %39, 3
  %43 = sub nuw nsw i8 64, %42
  %44 = zext nneg i8 %43 to i64
  %45 = shl i64 %2, %44
  %46 = ashr exact i64 %45, %44
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi i64 [ %46, %41 ], [ %2, %35 ]
  %49 = icmp eq i32 %4, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %0, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %73, label %55

55:                                               ; preds = %50
  %56 = load i32, ptr %36, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 122
  %59 = icmp sgt i64 %48, -1
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = tail call i32 @get_mode_alignment(i32 noundef %53) #20
  %63 = lshr i32 %62, 3
  %64 = zext nneg i32 %63 to i64
  %65 = icmp ult i64 %48, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = tail call ptr @plus_constant(ptr noundef %70, i64 noundef %48) #20
  %72 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 122, i32 noundef %23, ptr noundef %68, ptr noundef %71) #20
  br label %75

73:                                               ; preds = %61, %55, %50
  %74 = tail call ptr @plus_constant(ptr noundef %36, i64 noundef %48) #20
  br label %75

75:                                               ; preds = %66, %73, %47
  %76 = phi ptr [ %72, %66 ], [ %74, %73 ], [ %36, %47 ]
  %77 = tail call fastcc ptr @change_address_1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %76, i32 noundef %3) #21
  %78 = icmp eq ptr %77, %0
  %79 = icmp ne i64 %48, 0
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = tail call ptr @copy_rtx(ptr noundef nonnull %0) #20
  br label %83

83:                                               ; preds = %81, %75
  %84 = phi ptr [ %82, %81 ], [ %77, %75 ]
  %85 = icmp eq ptr %20, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !6
  %89 = add nsw i64 %88, %48
  %90 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %89) #21
  br label %91

91:                                               ; preds = %86, %83
  %92 = phi ptr [ %90, %86 ], [ null, %83 ]
  br i1 %79, label %93, label %101

93:                                               ; preds = %91
  %94 = zext i32 %19 to i64
  %95 = sub nsw i64 0, %48
  %96 = and i64 %48, %95
  %97 = shl i64 %96, 3
  %98 = icmp ugt i64 %97, %94
  %99 = trunc i64 %97 to i32
  %100 = select i1 %98, i32 %19, i32 %99
  br label %101

101:                                              ; preds = %93, %91
  %102 = phi i32 [ %100, %93 ], [ %19, %91 ]
  %103 = load i32, ptr %84, align 8
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = zext nneg i32 %105 to i64
  %109 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !6
  %111 = zext i8 %110 to i64
  %112 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %111) #21
  br label %154

113:                                              ; preds = %101
  %114 = load ptr, ptr %8, align 8, !tbaa !6
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.mem_attrs, ptr %114, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !20
  %119 = icmp eq ptr %118, null
  br i1 %119, label %154, label %135

120:                                              ; preds = %113
  %121 = load i32, ptr %0, align 8
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %154, label %125

125:                                              ; preds = %120
  %126 = zext nneg i32 %123 to i64
  %127 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !6
  %129 = zext i8 %128 to i64
  %130 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %129) #21
  %131 = icmp eq ptr %130, null
  br i1 %131, label %154, label %132

132:                                              ; preds = %125
  %133 = load ptr, ptr %8, align 8, !tbaa !6
  %134 = icmp eq ptr %133, null
  br i1 %134, label %139, label %135

135:                                              ; preds = %116, %132
  %136 = phi ptr [ %133, %132 ], [ %114, %116 ]
  %137 = getelementptr inbounds %struct.mem_attrs, ptr %136, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !20
  br label %150

139:                                              ; preds = %132
  %140 = load i32, ptr %0, align 8
  %141 = lshr i32 %140, 16
  %142 = and i32 %141, 255
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %150, label %144

144:                                              ; preds = %139
  %145 = zext nneg i32 %142 to i64
  %146 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !6
  %148 = zext i8 %147 to i64
  %149 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %148) #21
  br label %150

150:                                              ; preds = %144, %139, %135
  %151 = phi ptr [ %138, %135 ], [ %149, %144 ], [ null, %139 ]
  %152 = sub nsw i64 0, %48
  %153 = tail call ptr @plus_constant(ptr noundef %151, i64 noundef %152) #20
  br label %154

154:                                              ; preds = %116, %125, %150, %120, %107
  %155 = phi ptr [ %112, %107 ], [ %153, %150 ], [ null, %116 ], [ null, %125 ], [ null, %120 ]
  %156 = load ptr, ptr %8, align 8, !tbaa !6
  %157 = icmp eq ptr %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.mem_attrs, ptr %156, i64 0, i32 3
  %160 = load i32, ptr %159, align 8, !tbaa !60
  %161 = load ptr, ptr %156, align 8, !tbaa !17
  br label %162

162:                                              ; preds = %154, %158
  %163 = phi i32 [ %160, %158 ], [ 0, %154 ]
  %164 = phi ptr [ %161, %158 ], [ null, %154 ]
  %165 = load i32, ptr %84, align 8
  %166 = lshr i32 %165, 16
  %167 = and i32 %166, 255
  %168 = tail call fastcc ptr @get_mem_attrs(i32 noundef %163, ptr noundef %164, ptr noundef %92, ptr noundef %155, i32 noundef %102, i8 noundef zeroext %21, i32 noundef %167) #21
  %169 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %168, ptr %169, align 8, !tbaa !6
  br label %170

170:                                              ; preds = %30, %32, %162
  %171 = phi ptr [ %84, %162 ], [ %0, %32 ], [ %0, %30 ]
  ret ptr %171
}

; Function Attrs: optsize
declare i32 @strict_memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @replace_equiv_address(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  tail call void @update_temp_slot_address(ptr noundef %4, ptr noundef %1) #20
  %5 = tail call fastcc ptr @change_address_1(ptr noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef 1) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @operand_subword_force(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @operand_subword(ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef %2) #21
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
  %13 = tail call ptr @copy_to_reg(ptr noundef nonnull %0) #20
  br label %16

14:                                               ; preds = %8
  %15 = tail call ptr @force_reg(i32 noundef %2, ptr noundef nonnull %0) #20
  br label %16

16:                                               ; preds = %12, %14, %6
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ], [ %0, %6 ]
  %18 = tail call ptr @operand_subword(ptr noundef %17, i32 noundef %1, i32 noundef 1, i32 noundef %2) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1428, ptr noundef nonnull @.str.1) #20
  br label %21

21:                                               ; preds = %20, %16, %3
  %22 = phi ptr [ %4, %3 ], [ %18, %16 ], [ null, %20 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @mem_expr_equal_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load i64, ptr %0, align 8
  %10 = load i64, ptr %1, align 8
  %11 = xor i64 %10, %9
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #20
  br label %16

16:                                               ; preds = %8, %4, %2, %14
  %17 = phi i32 [ %15, %14 ], [ 1, %2 ], [ 0, %4 ], [ 0, %8 ]
  ret i32 %17
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem_align_offset(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1476, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %90, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %90, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %90, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 30
  br i1 %21, label %22, label %90

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !6
  %25 = load i64, ptr %12, align 8
  %26 = and i64 %25, 65535
  %27 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !14
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !6
  %33 = icmp ult i32 %32, %1
  br i1 %33, label %90, label %84

34:                                               ; preds = %22
  %35 = trunc i64 %25 to i16
  switch i16 %35, label %90 [
    i16 47, label %36
    i16 48, label %36
    i16 49, label %36
    i16 41, label %42
  ]

36:                                               ; preds = %34, %34, %34
  %37 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !6
  %41 = icmp ult i32 %40, %1
  br i1 %41, label %90, label %84

42:                                               ; preds = %34, %82
  %43 = phi i64 [ %64, %82 ], [ %24, %34 ]
  %44 = phi ptr [ %46, %82 ], [ %12, %34 ]
  %45 = getelementptr inbounds %struct.tree_exp, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.tree_exp, ptr %44, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %44) #20
  %50 = getelementptr inbounds %struct.tree_field_decl, ptr %48, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = icmp eq ptr %49, null
  br i1 %52, label %90, label %53

53:                                               ; preds = %42
  %54 = tail call i32 @host_integerp(ptr noundef nonnull %49, i32 noundef 1) #20
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %90, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @host_integerp(ptr noundef %51, i32 noundef 1) #20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %90, label %59

59:                                               ; preds = %56
  %60 = tail call i64 @tree_low_cst(ptr noundef nonnull %49, i32 noundef 1) #20
  %61 = add i64 %60, %43
  %62 = tail call i64 @tree_low_cst(ptr noundef %51, i32 noundef 1) #20
  %63 = sdiv i64 %62, 8
  %64 = add i64 %61, %63
  %65 = icmp eq ptr %46, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.tree_decl_minimal, ptr %48, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !6
  %71 = icmp ult i32 %70, %1
  br i1 %71, label %90, label %84

72:                                               ; preds = %59
  %73 = load i64, ptr %46, align 8
  %74 = and i64 %73, 65535
  %75 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !14
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.tree_decl_common, ptr %46, i64 0, i32 3
  %80 = load i32, ptr %79, align 8, !tbaa !6
  %81 = icmp ult i32 %80, %1
  br i1 %81, label %90, label %84

82:                                               ; preds = %72
  %83 = icmp eq i64 %74, 41
  br i1 %83, label %42, label %90

84:                                               ; preds = %78, %66, %36, %30
  %85 = phi i64 [ %24, %30 ], [ %24, %36 ], [ %64, %66 ], [ %64, %78 ]
  %86 = lshr i32 %1, 3
  %87 = add nsw i32 %86, -1
  %88 = trunc i64 %85 to i32
  %89 = and i32 %87, %88
  br label %90

90:                                               ; preds = %82, %42, %53, %56, %78, %66, %7, %34, %36, %30, %11, %14, %18, %84
  %91 = phi i32 [ %89, %84 ], [ -1, %18 ], [ -1, %14 ], [ -1, %11 ], [ -1, %30 ], [ -1, %36 ], [ -1, %34 ], [ -1, %7 ], [ -1, %66 ], [ -1, %78 ], [ -1, %56 ], [ -1, %53 ], [ -1, %42 ], [ -1, %82 ]
  ret i32 %91
}

; Function Attrs: optsize
declare ptr @component_ref_field_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_attributes_minus_bitpos(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  br label %27

14:                                               ; preds = %4
  %15 = load i32, ptr %0, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %34, label %19

19:                                               ; preds = %14
  %20 = zext nneg i32 %17 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !6
  %23 = zext i8 %22 to i64
  %24 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %23) #21
  %25 = load ptr, ptr %5, align 8, !tbaa !6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %8, %19
  %28 = phi ptr [ %13, %8 ], [ %24, %19 ]
  %29 = phi ptr [ %9, %8 ], [ null, %19 ]
  %30 = phi ptr [ %11, %8 ], [ null, %19 ]
  %31 = phi ptr [ %6, %8 ], [ %25, %19 ]
  %32 = getelementptr inbounds %struct.mem_attrs, ptr %31, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !21
  br label %34

34:                                               ; preds = %14, %19, %27
  %35 = phi ptr [ %28, %27 ], [ %24, %19 ], [ null, %14 ]
  %36 = phi ptr [ %29, %27 ], [ null, %19 ], [ null, %14 ]
  %37 = phi ptr [ %30, %27 ], [ null, %19 ], [ null, %14 ]
  %38 = phi i32 [ %33, %27 ], [ 8, %19 ], [ 8, %14 ]
  %39 = icmp eq ptr %1, null
  br i1 %39, label %439, label %40

40:                                               ; preds = %34
  %41 = load i64, ptr %1, align 8
  %42 = and i64 %41, 65535
  %43 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !14
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = load ptr, ptr @global_trees, align 16, !tbaa !11
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %439, label %54

51:                                               ; preds = %40
  %52 = load ptr, ptr @global_trees, align 16, !tbaa !11
  %53 = icmp eq ptr %52, %1
  br i1 %53, label %439, label %67

54:                                               ; preds = %46
  %55 = icmp eq i32 %44, 3
  br i1 %55, label %56, label %67

56:                                               ; preds = %54
  %57 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %42, i64 11
  %58 = load i8, ptr %57, align 1, !tbaa !6
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi ptr [ null, %56 ], [ %62, %60 ]
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1566, ptr noundef nonnull @.str.1) #20
  br label %67

67:                                               ; preds = %51, %54, %63, %66
  %68 = phi ptr [ %48, %54 ], [ %48, %63 ], [ %48, %66 ], [ %1, %51 ]
  %69 = tail call i32 @get_alias_set(ptr noundef nonnull %1) #20
  %70 = load i64, ptr %68, align 8
  %71 = trunc i64 %70 to i32
  %72 = load i32, ptr %0, align 8
  %73 = shl i32 %71, 8
  %74 = and i32 %73, 134217728
  %75 = or i32 %74, %72
  store i32 %75, ptr %0, align 8
  %76 = load i64, ptr %68, align 8
  %77 = trunc i64 %76 to i16
  %78 = add i16 %77, -13
  %79 = icmp ult i16 %78, 6
  br i1 %79, label %80, label %84

80:                                               ; preds = %67
  %81 = zext nneg i16 %78 to i64
  %82 = getelementptr inbounds [6 x i32], ptr @switch.table.set_mem_attributes_minus_bitpos, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4
  br label %84

84:                                               ; preds = %80, %67
  %85 = phi i32 [ 0, %67 ], [ %83, %80 ]
  %86 = and i32 %75, -268435457
  %87 = or disjoint i32 %85, %86
  store i32 %87, ptr %0, align 8
  %88 = load i64, ptr %68, align 8
  %89 = trunc i64 %88 to i32
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 10
  %92 = icmp eq i32 %90, 12
  %93 = or i1 %91, %92
  %94 = select i1 %93, i32 1073741824, i32 0
  %95 = and i32 %87, -1073741825
  %96 = or disjoint i32 %94, %95
  store i32 %96, ptr %0, align 8
  %97 = icmp eq i32 %2, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %84
  %99 = load i64, ptr %1, align 8
  %100 = and i64 %99, 65535
  %101 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !14
  %103 = icmp eq i32 %102, 3
  br i1 %103, label %104, label %112

104:                                              ; preds = %98, %84
  %105 = load i64, ptr %68, align 8
  %106 = trunc i64 %105 to i16
  switch i16 %106, label %107 [
    i16 15, label %109
    i16 16, label %109
    i16 17, label %109
    i16 18, label %109
    i16 13, label %109
  ]

107:                                              ; preds = %104
  %108 = or i32 %96, -2147483648
  store i32 %108, ptr %0, align 8
  br label %109

109:                                              ; preds = %104, %104, %104, %104, %104, %107
  br i1 %97, label %110, label %122

110:                                              ; preds = %109
  %111 = load i64, ptr %1, align 8
  br label %112

112:                                              ; preds = %110, %98
  %113 = phi i64 [ %111, %110 ], [ %99, %98 ]
  %114 = trunc i64 %113 to i32
  %115 = and i32 %114, 65535
  %116 = add nsw i32 %115, -47
  %117 = icmp ult i32 %116, 2
  br i1 %117, label %122, label %118

118:                                              ; preds = %112
  %119 = load i64, ptr %68, align 8
  %120 = and i64 %119, 33554432
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %112, %118, %109
  %123 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 7
  %124 = load i32, ptr %123, align 8, !tbaa !6
  %125 = tail call i32 @llvm.umax.i32(i32 %38, i32 %124)
  br label %137

126:                                              ; preds = %118
  %127 = icmp eq i32 %115, 49
  br i1 %127, label %128, label %137

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !6
  %131 = tail call i32 @integer_zerop(ptr noundef %130) #20
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load ptr, ptr %129, align 8, !tbaa !6
  %135 = tail call i64 @tree_low_cst(ptr noundef %134, i32 noundef 1) #20
  %136 = trunc i64 %135 to i32
  br label %137

137:                                              ; preds = %128, %126, %133, %122
  %138 = phi i32 [ %125, %122 ], [ %136, %133 ], [ %38, %126 ], [ 8, %128 ]
  %139 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !6
  %141 = icmp eq ptr %140, null
  br i1 %141, label %149, label %142

142:                                              ; preds = %137
  %143 = tail call i32 @host_integerp(ptr noundef nonnull %140, i32 noundef 1) #20
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %139, align 8, !tbaa !6
  %147 = tail call i64 @tree_low_cst(ptr noundef %146, i32 noundef 1) #20
  %148 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %147) #21
  br label %149

149:                                              ; preds = %145, %142, %137
  %150 = phi ptr [ %148, %145 ], [ %35, %142 ], [ %35, %137 ]
  %151 = load i64, ptr %1, align 8
  %152 = and i64 %151, 65535
  %153 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !14
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %413, label %156

156:                                              ; preds = %149
  %157 = and i64 %151, 524288
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load i32, ptr %0, align 8
  %161 = or i32 %160, 134217728
  store i32 %161, ptr %0, align 8
  br label %162

162:                                              ; preds = %159, %156
  br label %163

163:                                              ; preds = %162, %172
  %164 = phi ptr [ %174, %172 ], [ %1, %162 ]
  %165 = load i64, ptr %164, align 8
  %166 = trunc i64 %165 to i16
  switch i16 %166, label %167 [
    i16 116, label %172
    i16 113, label %172
    i16 118, label %172
    i16 120, label %172
  ]

167:                                              ; preds = %163
  %168 = trunc i64 %165 to i32
  %169 = and i32 %168, 65535
  %170 = add nsw i32 %169, -41
  %171 = icmp ult i32 %170, 4
  br i1 %171, label %175, label %184

172:                                              ; preds = %163, %163, %163, %163
  %173 = getelementptr inbounds %struct.tree_exp, ptr %164, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !6
  br label %163, !llvm.loop !61

175:                                              ; preds = %167, %175
  %176 = phi ptr [ %178, %175 ], [ %164, %167 ]
  %177 = getelementptr inbounds %struct.tree_exp, ptr %176, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !6
  %179 = load i64, ptr %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = and i32 %180, 65535
  %182 = add nsw i32 %181, -41
  %183 = icmp ult i32 %182, 4
  br i1 %183, label %175, label %184, !llvm.loop !62

184:                                              ; preds = %175, %167
  %185 = phi ptr [ %164, %167 ], [ %178, %175 ]
  %186 = phi i64 [ %165, %167 ], [ %179, %175 ]
  %187 = phi i32 [ %168, %167 ], [ %180, %175 ]
  %188 = and i64 %186, 65535
  %189 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !14
  %191 = icmp eq i32 %190, 3
  br i1 %191, label %192, label %208

192:                                              ; preds = %184
  %193 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %188, i64 13
  %194 = load i8, ptr %193, align 1, !tbaa !6
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %185, i64 0, i32 4
  %198 = load i32, ptr %197, align 8
  %199 = load i32, ptr %0, align 8
  %200 = shl i32 %198, 18
  %201 = and i32 %200, 33554432
  %202 = and i32 %199, -33554433
  %203 = or disjoint i32 %201, %202
  %204 = xor i32 %203, 33554432
  br label %213

205:                                              ; preds = %192
  %206 = load i32, ptr %0, align 8
  %207 = or i32 %206, 33554432
  br label %213

208:                                              ; preds = %184
  %209 = and i32 %187, 33554432
  %210 = load i32, ptr %0, align 8
  %211 = and i32 %210, -33554433
  %212 = or disjoint i32 %211, %209
  br label %213

213:                                              ; preds = %196, %205, %208
  %214 = phi i32 [ %204, %196 ], [ %207, %205 ], [ %212, %208 ]
  store i32 %214, ptr %0, align 8
  %215 = tail call ptr @get_base_address(ptr noundef nonnull %185) #20
  %216 = icmp eq ptr %215, null
  br i1 %216, label %252, label %217

217:                                              ; preds = %213
  %218 = load i64, ptr %215, align 8
  %219 = and i64 %218, 65535
  %220 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !14
  %222 = icmp ne i32 %221, 3
  %223 = and i64 %218, 1048576
  %224 = icmp eq i64 %223, 0
  %225 = or i1 %222, %224
  br i1 %225, label %252, label %226

226:                                              ; preds = %217
  %227 = and i64 %218, 67108864
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %226
  %230 = getelementptr inbounds %struct.tree_decl_common, ptr %215, i64 0, i32 2
  %231 = load i64, ptr %230, align 8
  %232 = and i64 %231, 33554432
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %252, label %234

234:                                              ; preds = %229, %226
  %235 = getelementptr inbounds %struct.tree_common, ptr %215, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !6
  %237 = icmp eq ptr %236, null
  br i1 %237, label %249, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.tree_type, ptr %236, i64 0, i32 6
  %240 = load i32, ptr %239, align 4
  %241 = and i32 %240, 2048
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %249, label %243

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.tree_decl_common, ptr %215, i64 0, i32 2
  %245 = load i64, ptr %244, align 8
  %246 = and i64 %245, 4096
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %243
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1647, ptr noundef nonnull @.str.1) #20
  br label %249

249:                                              ; preds = %234, %238, %243, %248
  %250 = load i32, ptr %0, align 8
  %251 = or i32 %250, 67108864
  store i32 %251, ptr %0, align 8
  br label %252

252:                                              ; preds = %249, %229, %217, %213
  %253 = tail call zeroext i8 @component_uses_parent_alias_set(ptr noundef nonnull %164) #20
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %252
  %256 = load i32, ptr %0, align 8
  %257 = or i32 %256, 16777216
  store i32 %257, ptr %0, align 8
  br label %258

258:                                              ; preds = %255, %252
  %259 = load i64, ptr %164, align 8
  %260 = and i64 %259, 65535
  %261 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !14
  switch i32 %262, label %283 [
    i32 3, label %263
    i32 1, label %279
  ]

263:                                              ; preds = %258
  %264 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !11
  %265 = getelementptr inbounds %struct.tree_decl_common, ptr %164, i64 0, i32 4
  %266 = load ptr, ptr %265, align 8, !tbaa !6
  %267 = icmp eq ptr %266, null
  br i1 %267, label %275, label %268

268:                                              ; preds = %263
  %269 = tail call i32 @host_integerp(ptr noundef nonnull %266, i32 noundef 1) #20
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %275, label %271

271:                                              ; preds = %268
  %272 = load ptr, ptr %265, align 8, !tbaa !6
  %273 = tail call i64 @tree_low_cst(ptr noundef %272, i32 noundef 1) #20
  %274 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %273) #21
  br label %275

275:                                              ; preds = %263, %268, %271
  %276 = phi ptr [ %274, %271 ], [ null, %268 ], [ null, %263 ]
  %277 = getelementptr inbounds %struct.tree_decl_common, ptr %164, i64 0, i32 3
  %278 = load i32, ptr %277, align 8, !tbaa !6
  br label %399

279:                                              ; preds = %258
  %280 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 7
  %281 = load i32, ptr %280, align 8, !tbaa !6
  %282 = tail call i32 @ix86_constant_alignment(ptr noundef nonnull %164, i32 noundef %281) #20
  br label %413

283:                                              ; preds = %258
  %284 = icmp eq i64 %260, 41
  br i1 %284, label %285, label %294

285:                                              ; preds = %283
  %286 = getelementptr inbounds %struct.tree_exp, ptr %164, i64 1
  %287 = load ptr, ptr %286, align 8, !tbaa !6
  %288 = getelementptr inbounds %struct.tree_decl_common, ptr %287, i64 0, i32 2
  %289 = load i64, ptr %288, align 8
  %290 = and i64 %289, 33554432
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %285
  %293 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !11
  br label %383

294:                                              ; preds = %285, %283
  %295 = trunc i64 %259 to i32
  %296 = and i32 %295, 65535
  %297 = icmp eq i32 %296, 45
  br i1 %297, label %298, label %369

298:                                              ; preds = %294
  %299 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !11
  br label %300

300:                                              ; preds = %314, %298
  %301 = phi ptr [ %299, %298 ], [ %319, %314 ]
  %302 = phi ptr [ %164, %298 ], [ %320, %314 ]
  %303 = getelementptr inbounds %struct.tree_exp, ptr %302, i64 0, i32 3
  %304 = getelementptr inbounds %struct.tree_exp, ptr %302, i64 1
  %305 = load ptr, ptr %304, align 8, !tbaa !6
  %306 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %302) #20
  %307 = tail call ptr @array_ref_element_size(ptr noundef nonnull %302) #20
  %308 = tail call i32 @integer_zerop(ptr noundef %306) #20
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %300
  %311 = getelementptr inbounds %struct.tree_common, ptr %305, i64 0, i32 2
  %312 = load ptr, ptr %311, align 8, !tbaa !6
  %313 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %312, ptr noundef %305, ptr noundef %306) #20
  br label %314

314:                                              ; preds = %310, %300
  %315 = phi ptr [ %305, %300 ], [ %313, %310 ]
  %316 = load ptr, ptr @sizetype_tab, align 16, !tbaa !11
  %317 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %316, ptr noundef %315) #20
  %318 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %317, ptr noundef %307) #20
  %319 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %318, ptr noundef %301) #20
  %320 = load ptr, ptr %303, align 8, !tbaa !6
  %321 = load i64, ptr %320, align 8
  %322 = trunc i64 %321 to i32
  %323 = and i32 %322, 65535
  %324 = icmp eq i32 %323, 45
  br i1 %324, label %300, label %325, !llvm.loop !63

325:                                              ; preds = %314
  %326 = and i64 %321, 65535
  %327 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %326
  %328 = load i32, ptr %327, align 4, !tbaa !14
  %329 = icmp eq i32 %328, 3
  br i1 %329, label %330, label %347

330:                                              ; preds = %325
  %331 = tail call i32 @host_integerp(ptr noundef %319, i32 noundef 1) #20
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %383, label %333

333:                                              ; preds = %330
  %334 = tail call i64 @tree_low_cst(ptr noundef %319, i32 noundef 1) #20
  %335 = sub nsw i64 0, %334
  %336 = and i64 %334, %335
  %337 = shl nsw i64 %336, 3
  %338 = getelementptr inbounds %struct.tree_decl_common, ptr %320, i64 0, i32 3
  %339 = load i32, ptr %338, align 8, !tbaa !6
  %340 = icmp ne i64 %336, 0
  %341 = zext i32 %339 to i64
  %342 = icmp ult i64 %337, %341
  %343 = select i1 %340, i1 %342, i1 false
  %344 = trunc i64 %337 to i32
  %345 = select i1 %343, i32 %344, i32 %339
  %346 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %334) #21
  br label %399

347:                                              ; preds = %325
  %348 = icmp eq i32 %323, 41
  br i1 %348, label %349, label %355

349:                                              ; preds = %347
  %350 = tail call i32 @host_integerp(ptr noundef %319, i32 noundef 1) #20
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %383, label %352

352:                                              ; preds = %349
  %353 = tail call i64 @tree_low_cst(ptr noundef %319, i32 noundef 1) #20
  %354 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %353) #21
  br label %383

355:                                              ; preds = %347
  %356 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !14
  %357 = icmp sgt i32 %356, 1
  %358 = add nsw i32 %323, -47
  %359 = icmp ult i32 %358, 3
  %360 = and i1 %359, %357
  br i1 %360, label %361, label %383

361:                                              ; preds = %355
  %362 = getelementptr inbounds %struct.tree_exp, ptr %320, i64 0, i32 3
  %363 = load ptr, ptr %362, align 8, !tbaa !6
  %364 = load i64, ptr %363, align 8
  %365 = and i64 %364, 65535
  %366 = icmp eq i64 %365, 34
  %367 = select i1 %366, ptr null, ptr %37
  %368 = select i1 %366, ptr %320, ptr %36
  br label %383

369:                                              ; preds = %294
  %370 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !14
  %371 = icmp sgt i32 %370, 1
  %372 = add nsw i32 %296, -47
  %373 = icmp ult i32 %372, 3
  %374 = and i1 %373, %371
  br i1 %374, label %375, label %383

375:                                              ; preds = %369
  %376 = getelementptr inbounds %struct.tree_exp, ptr %164, i64 0, i32 3
  %377 = load ptr, ptr %376, align 8, !tbaa !6
  %378 = load i64, ptr %377, align 8
  %379 = and i64 %378, 65535
  %380 = icmp eq i64 %379, 34
  %381 = select i1 %380, ptr null, ptr %37
  %382 = select i1 %380, ptr %164, ptr %36
  br label %383

383:                                              ; preds = %369, %292, %330, %352, %349, %355, %361, %375
  %384 = phi i64 [ 0, %375 ], [ 0, %361 ], [ 0, %355 ], [ 0, %349 ], [ %3, %352 ], [ 0, %330 ], [ %3, %292 ], [ 0, %369 ]
  %385 = phi ptr [ %381, %375 ], [ %367, %361 ], [ %37, %355 ], [ null, %349 ], [ %354, %352 ], [ null, %330 ], [ %293, %292 ], [ %37, %369 ]
  %386 = phi ptr [ %382, %375 ], [ %368, %361 ], [ %36, %355 ], [ %320, %349 ], [ %320, %352 ], [ %320, %330 ], [ %164, %292 ], [ %36, %369 ]
  %387 = load i64, ptr %164, align 8
  %388 = trunc i64 %387 to i32
  %389 = and i32 %388, 65535
  %390 = add nsw i32 %389, -47
  %391 = icmp ult i32 %390, 3
  br i1 %391, label %399, label %392

392:                                              ; preds = %383
  %393 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !14
  %394 = and i32 %393, 32
  %395 = icmp eq i32 %394, 0
  %396 = select i1 %395, i32 128, i32 256
  %397 = tail call i32 @get_object_alignment(ptr noundef nonnull %164, i32 noundef %138, i32 noundef %396) #20
  %398 = tail call i32 @llvm.umax.i32(i32 %138, i32 %397)
  br label %399

399:                                              ; preds = %275, %333, %383, %392
  %400 = phi i64 [ %384, %383 ], [ %384, %392 ], [ %3, %275 ], [ %3, %333 ]
  %401 = phi i32 [ %138, %383 ], [ %398, %392 ], [ %278, %275 ], [ %345, %333 ]
  %402 = phi ptr [ %150, %383 ], [ %150, %392 ], [ %276, %275 ], [ %150, %333 ]
  %403 = phi ptr [ %385, %383 ], [ %385, %392 ], [ %264, %275 ], [ %346, %333 ]
  %404 = phi ptr [ %386, %383 ], [ %386, %392 ], [ %164, %275 ], [ %320, %333 ]
  %405 = icmp eq i64 %400, 0
  br i1 %405, label %413, label %406

406:                                              ; preds = %399
  %407 = sdiv i64 %400, 8
  %408 = sub nsw i64 0, %407
  %409 = tail call ptr @plus_constant(ptr noundef %403, i64 noundef %408) #20
  %410 = icmp eq ptr %402, null
  br i1 %410, label %413, label %411

411:                                              ; preds = %406
  %412 = tail call ptr @plus_constant(ptr noundef nonnull %402, i64 noundef %407) #20
  br label %413

413:                                              ; preds = %279, %149, %406, %411, %399
  %414 = phi ptr [ %164, %411 ], [ %164, %406 ], [ %164, %399 ], [ %164, %279 ], [ %1, %149 ]
  %415 = phi ptr [ %404, %411 ], [ %404, %406 ], [ %404, %399 ], [ %36, %279 ], [ %36, %149 ]
  %416 = phi i32 [ %401, %411 ], [ %401, %406 ], [ %401, %399 ], [ %282, %279 ], [ %138, %149 ]
  %417 = phi ptr [ %412, %411 ], [ null, %406 ], [ %402, %399 ], [ %150, %279 ], [ %150, %149 ]
  %418 = phi ptr [ %409, %411 ], [ %409, %406 ], [ %403, %399 ], [ %37, %279 ], [ %37, %149 ]
  %419 = load i64, ptr %414, align 8
  %420 = and i64 %419, 65535
  %421 = icmp eq i64 %420, 48
  %422 = select i1 %421, ptr null, ptr %418
  %423 = select i1 %421, ptr null, ptr %415
  %424 = load i64, ptr %68, align 8
  %425 = lshr i64 %424, 56
  %426 = trunc i64 %425 to i8
  %427 = load i32, ptr %0, align 8
  %428 = lshr i32 %427, 16
  %429 = and i32 %428, 255
  %430 = tail call fastcc ptr @get_mem_attrs(i32 noundef %69, ptr noundef %423, ptr noundef %422, ptr noundef %417, i32 noundef %416, i8 noundef zeroext %426, i32 noundef %429) #21
  store ptr %430, ptr %5, align 8, !tbaa !6
  %431 = load i32, ptr %0, align 8
  %432 = and i32 %431, -1879048192
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %439

434:                                              ; preds = %413
  %435 = load i64, ptr %414, align 8
  %436 = trunc i64 %435 to i16
  switch i16 %436, label %439 [
    i16 41, label %437
    i16 45, label %437
    i16 46, label %437
    i16 42, label %437
  ]

437:                                              ; preds = %434, %434, %434, %434
  %438 = or disjoint i32 %431, 268435456
  store i32 %438, ptr %0, align 8
  br label %439

439:                                              ; preds = %51, %437, %434, %413, %46, %34
  ret void
}

; Function Attrs: optsize
declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @component_uses_parent_alias_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_constant_alignment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @array_ref_element_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_object_alignment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_mem_attrs(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.mem_attrs, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #22
  %9 = icmp eq i32 %0, 0
  %10 = icmp eq ptr %1, null
  %11 = and i1 %9, %10
  %12 = icmp eq ptr %2, null
  %13 = and i1 %11, %12
  %14 = icmp eq i8 %5, 0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %7
  %17 = icmp eq ptr %3, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %16
  %19 = icmp eq i32 %6, 1
  br i1 %19, label %32, label %20

20:                                               ; preds = %18
  %21 = zext i32 %6 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !6
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !6
  %27 = icmp eq i64 %26, %24
  %28 = icmp eq i32 %4, 8
  %29 = and i1 %28, %27
  br i1 %29, label %45, label %32

30:                                               ; preds = %16
  %31 = icmp eq i32 %4, 8
  br i1 %31, label %45, label %32

32:                                               ; preds = %30, %20, %18, %7
  %33 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 3
  store i32 %0, ptr %33, align 8, !tbaa !60
  store ptr %1, ptr %8, align 8, !tbaa !17
  %34 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 1
  store ptr %2, ptr %34, align 8, !tbaa !19
  %35 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 2
  store ptr %3, ptr %35, align 8, !tbaa !20
  %36 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 4
  store i32 %4, ptr %36, align 4, !tbaa !21
  %37 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 5
  store i8 %5, ptr %37, align 8, !tbaa !22
  %38 = load ptr, ptr @mem_attrs_htab, align 8, !tbaa !11
  %39 = call ptr @htab_find_slot(ptr noundef %38, ptr noundef nonnull %8, i32 noundef 1) #20
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = call ptr @ggc_alloc_stat(i64 noundef 40) #20
  store ptr %43, ptr %39, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %43, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false)
  %44 = load ptr, ptr %39, align 8, !tbaa !11
  br label %45

45:                                               ; preds = %32, %42, %30, %20
  %46 = phi ptr [ null, %20 ], [ null, %30 ], [ %44, %42 ], [ %40, %32 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #22
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_attributes(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @set_mem_attributes_minus_bitpos(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef 0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_addr_space(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !60
  %9 = load ptr, ptr %4, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  br label %27

14:                                               ; preds = %2
  %15 = load i32, ptr %0, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %35, label %19

19:                                               ; preds = %14
  %20 = zext nneg i32 %17 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !6
  %23 = zext i8 %22 to i64
  %24 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %23) #21
  %25 = load ptr, ptr %3, align 8, !tbaa !6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %6, %19
  %28 = phi ptr [ %13, %6 ], [ %24, %19 ]
  %29 = phi ptr [ %9, %6 ], [ null, %19 ]
  %30 = phi i32 [ %8, %6 ], [ 0, %19 ]
  %31 = phi ptr [ %11, %6 ], [ null, %19 ]
  %32 = phi ptr [ %4, %6 ], [ %25, %19 ]
  %33 = getelementptr inbounds %struct.mem_attrs, ptr %32, i64 0, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !21
  br label %35

35:                                               ; preds = %14, %19, %27
  %36 = phi ptr [ %28, %27 ], [ %24, %19 ], [ null, %14 ]
  %37 = phi ptr [ %29, %27 ], [ null, %19 ], [ null, %14 ]
  %38 = phi i32 [ %30, %27 ], [ 0, %19 ], [ 0, %14 ]
  %39 = phi ptr [ %31, %27 ], [ null, %19 ], [ null, %14 ]
  %40 = phi i32 [ %34, %27 ], [ 8, %19 ], [ 8, %14 ]
  %41 = load i32, ptr %0, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = tail call fastcc ptr @get_mem_attrs(i32 noundef %38, ptr noundef %37, ptr noundef %39, ptr noundef %36, i32 noundef %40, i8 noundef zeroext %1, i32 noundef %43) #21
  store ptr %44, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_align(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !60
  %9 = load ptr, ptr %4, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  br label %27

14:                                               ; preds = %2
  %15 = load i32, ptr %0, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %35, label %19

19:                                               ; preds = %14
  %20 = zext nneg i32 %17 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !6
  %23 = zext i8 %22 to i64
  %24 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %23) #21
  %25 = load ptr, ptr %3, align 8, !tbaa !6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %6, %19
  %28 = phi ptr [ %13, %6 ], [ %24, %19 ]
  %29 = phi ptr [ %9, %6 ], [ null, %19 ]
  %30 = phi i32 [ %8, %6 ], [ 0, %19 ]
  %31 = phi ptr [ %11, %6 ], [ null, %19 ]
  %32 = phi ptr [ %4, %6 ], [ %25, %19 ]
  %33 = getelementptr inbounds %struct.mem_attrs, ptr %32, i64 0, i32 5
  %34 = load i8, ptr %33, align 8, !tbaa !22
  br label %35

35:                                               ; preds = %14, %19, %27
  %36 = phi ptr [ %28, %27 ], [ %24, %19 ], [ null, %14 ]
  %37 = phi ptr [ %29, %27 ], [ null, %19 ], [ null, %14 ]
  %38 = phi i32 [ %30, %27 ], [ 0, %19 ], [ 0, %14 ]
  %39 = phi ptr [ %31, %27 ], [ null, %19 ], [ null, %14 ]
  %40 = phi i8 [ %34, %27 ], [ 0, %19 ], [ 0, %14 ]
  %41 = load i32, ptr %0, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = tail call fastcc ptr @get_mem_attrs(i32 noundef %38, ptr noundef %37, ptr noundef %39, ptr noundef %36, i32 noundef %1, i8 noundef zeroext %40, i32 noundef %43) #21
  store ptr %44, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_expr(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !20
  br label %26

13:                                               ; preds = %2
  %14 = load i32, ptr %0, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %35, label %18

18:                                               ; preds = %13
  %19 = zext nneg i32 %16 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !6
  %22 = zext i8 %21 to i64
  %23 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %22) #21
  %24 = load ptr, ptr %3, align 8, !tbaa !6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %6, %18
  %27 = phi ptr [ %12, %6 ], [ %23, %18 ]
  %28 = phi i32 [ %8, %6 ], [ 0, %18 ]
  %29 = phi ptr [ %10, %6 ], [ null, %18 ]
  %30 = phi ptr [ %4, %6 ], [ %24, %18 ]
  %31 = getelementptr inbounds %struct.mem_attrs, ptr %30, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !21
  %33 = getelementptr inbounds %struct.mem_attrs, ptr %30, i64 0, i32 5
  %34 = load i8, ptr %33, align 8, !tbaa !22
  br label %35

35:                                               ; preds = %13, %18, %26
  %36 = phi ptr [ %27, %26 ], [ %23, %18 ], [ null, %13 ]
  %37 = phi i32 [ %28, %26 ], [ 0, %18 ], [ 0, %13 ]
  %38 = phi ptr [ %29, %26 ], [ null, %18 ], [ null, %13 ]
  %39 = phi i32 [ %32, %26 ], [ 8, %18 ], [ 8, %13 ]
  %40 = phi i8 [ %34, %26 ], [ 0, %18 ], [ 0, %13 ]
  %41 = load i32, ptr %0, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = tail call fastcc ptr @get_mem_attrs(i32 noundef %37, ptr noundef %1, ptr noundef %38, ptr noundef %36, i32 noundef %39, i8 noundef zeroext %40, i32 noundef %43) #21
  store ptr %44, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_offset(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !60
  %9 = load ptr, ptr %4, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  br label %25

12:                                               ; preds = %2
  %13 = load i32, ptr %0, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %34, label %17

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !6
  %21 = zext i8 %20 to i64
  %22 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %21) #21
  %23 = load ptr, ptr %3, align 8, !tbaa !6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %6, %17
  %26 = phi ptr [ %11, %6 ], [ %22, %17 ]
  %27 = phi i32 [ %8, %6 ], [ 0, %17 ]
  %28 = phi ptr [ %9, %6 ], [ null, %17 ]
  %29 = phi ptr [ %4, %6 ], [ %23, %17 ]
  %30 = getelementptr inbounds %struct.mem_attrs, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !21
  %32 = getelementptr inbounds %struct.mem_attrs, ptr %29, i64 0, i32 5
  %33 = load i8, ptr %32, align 8, !tbaa !22
  br label %34

34:                                               ; preds = %12, %17, %25
  %35 = phi ptr [ %26, %25 ], [ %22, %17 ], [ null, %12 ]
  %36 = phi i32 [ %27, %25 ], [ 0, %17 ], [ 0, %12 ]
  %37 = phi ptr [ %28, %25 ], [ null, %17 ], [ null, %12 ]
  %38 = phi i32 [ %31, %25 ], [ 8, %17 ], [ 8, %12 ]
  %39 = phi i8 [ %33, %25 ], [ 0, %17 ], [ 0, %12 ]
  %40 = load i32, ptr %0, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = tail call fastcc ptr @get_mem_attrs(i32 noundef %36, ptr noundef %37, ptr noundef %1, ptr noundef %35, i32 noundef %38, i8 noundef zeroext %39, i32 noundef %42) #21
  store ptr %43, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_size(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !60
  %9 = load ptr, ptr %4, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !21
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 5
  %15 = load i8, ptr %14, align 8, !tbaa !22
  br label %16

16:                                               ; preds = %2, %6
  %17 = phi i32 [ %13, %6 ], [ 8, %2 ]
  %18 = phi ptr [ %9, %6 ], [ null, %2 ]
  %19 = phi i32 [ %8, %6 ], [ 0, %2 ]
  %20 = phi ptr [ %11, %6 ], [ null, %2 ]
  %21 = phi i8 [ %15, %6 ], [ 0, %2 ]
  %22 = load i32, ptr %0, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = tail call fastcc ptr @get_mem_attrs(i32 noundef %19, ptr noundef %18, ptr noundef %20, ptr noundef %1, i32 noundef %17, i8 noundef zeroext %21, i32 noundef %24) #21
  store ptr %25, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @change_address(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @change_address_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 1) #21
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !6
  %13 = zext i8 %12 to i64
  %14 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %13) #21
  %15 = tail call i32 @get_mode_alignment(i32 noundef %7) #20
  br label %16

16:                                               ; preds = %3, %9
  %17 = phi ptr [ %14, %9 ], [ null, %3 ]
  %18 = phi i32 [ %15, %9 ], [ 8, %3 ]
  %19 = icmp eq ptr %4, %0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  br label %77

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %91, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %26, align 8, !tbaa !17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.mem_attrs, ptr %26, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.mem_attrs, ptr %26, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !20
  %38 = icmp eq ptr %37, %17
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.mem_attrs, ptr %26, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !21
  %42 = icmp eq i32 %41, %18
  br i1 %42, label %91, label %43

43:                                               ; preds = %39, %35, %31, %28
  %44 = load ptr, ptr %24, align 8, !tbaa !6
  %45 = tail call ptr @gen_rtx_MEM(i32 noundef %7, ptr noundef %44) #21
  %46 = load i32, ptr %0, align 8
  %47 = and i32 %46, 134217728
  %48 = load i32, ptr %45, align 8
  %49 = and i32 %48, -134217729
  %50 = or disjoint i32 %49, %47
  store i32 %50, ptr %45, align 8
  %51 = load i32, ptr %0, align 8
  %52 = and i32 %51, 268435456
  %53 = and i32 %50, -268435457
  %54 = or disjoint i32 %53, %52
  store i32 %54, ptr %45, align 8
  %55 = load i32, ptr %0, align 8
  %56 = and i32 %55, -2147483648
  %57 = and i32 %54, 2147483647
  %58 = or disjoint i32 %57, %56
  store i32 %58, ptr %45, align 8
  %59 = load i32, ptr %0, align 8
  %60 = and i32 %59, 33554432
  %61 = and i32 %58, -33554433
  %62 = or disjoint i32 %61, %60
  store i32 %62, ptr %45, align 8
  %63 = load i32, ptr %0, align 8
  %64 = and i32 %63, 67108864
  %65 = and i32 %62, -67108865
  %66 = or disjoint i32 %65, %64
  store i32 %66, ptr %45, align 8
  %67 = load i32, ptr %0, align 8
  %68 = and i32 %67, 16777216
  %69 = and i32 %66, -16777217
  %70 = or disjoint i32 %69, %68
  store i32 %70, ptr %45, align 8
  %71 = load i32, ptr %0, align 8
  %72 = and i32 %71, 1073741824
  %73 = and i32 %70, -1073741825
  %74 = or disjoint i32 %73, %72
  store i32 %74, ptr %45, align 8
  %75 = load ptr, ptr %25, align 8, !tbaa !6
  %76 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %75, ptr %76, align 8, !tbaa !6
  br label %77

77:                                               ; preds = %20, %43
  %78 = phi ptr [ %75, %43 ], [ %22, %20 ]
  %79 = phi ptr [ %45, %43 ], [ %4, %20 ]
  %80 = icmp eq ptr %78, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.mem_attrs, ptr %78, i64 0, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !60
  %84 = getelementptr inbounds %struct.mem_attrs, ptr %78, i64 0, i32 5
  %85 = load i8, ptr %84, align 8, !tbaa !22
  br label %86

86:                                               ; preds = %77, %81
  %87 = phi i32 [ %83, %81 ], [ 0, %77 ]
  %88 = phi i8 [ %85, %81 ], [ 0, %77 ]
  %89 = tail call fastcc ptr @get_mem_attrs(i32 noundef %87, ptr noundef null, ptr noundef null, ptr noundef %17, i32 noundef %18, i8 noundef zeroext %88, i32 noundef %7) #21
  %90 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %89, ptr %90, align 8, !tbaa !6
  br label %91

91:                                               ; preds = %23, %39, %86
  %92 = phi ptr [ %79, %86 ], [ %0, %39 ], [ %0, %23 ]
  ret ptr %92
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @change_address_1(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 43
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1899, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.mem_attrs, ptr %12, i64 0, i32 5
  %16 = load i8, ptr %15, align 8, !tbaa !22
  br label %17

17:                                               ; preds = %9, %14
  %18 = phi i8 [ %16, %14 ], [ 0, %9 ]
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, ptr %0, align 8
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %23, %20 ], [ %1, %17 ]
  %26 = icmp eq ptr %2, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load ptr, ptr %10, align 8, !tbaa !6
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi ptr [ %28, %27 ], [ %2, %24 ]
  %31 = load i32, ptr %0, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %25, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load ptr, ptr %10, align 8, !tbaa !6
  %37 = icmp eq ptr %30, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = icmp eq i32 %3, 0
  br i1 %39, label %100, label %40

40:                                               ; preds = %38
  %41 = tail call i32 @memory_address_addr_space_p(i32 noundef %25, ptr noundef %30, i8 noundef zeroext %18) #20
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %100

43:                                               ; preds = %35, %29
  %44 = icmp eq i32 %3, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %40, %43
  %46 = load i32, ptr @reload_in_progress, align 4, !tbaa !14
  %47 = icmp ne i32 %46, 0
  %48 = load i32, ptr @reload_completed, align 4
  %49 = icmp ne i32 %48, 0
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = tail call i32 @memory_address_addr_space_p(i32 noundef %25, ptr noundef %30, i8 noundef zeroext %18) #20
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1912, ptr noundef nonnull @.str.1) #20
  br label %57

55:                                               ; preds = %45
  %56 = tail call ptr @memory_address_addr_space(i32 noundef %25, ptr noundef %30, i8 noundef zeroext %18) #20
  br label %57

57:                                               ; preds = %54, %51, %55, %43
  %58 = phi ptr [ %30, %51 ], [ %30, %54 ], [ %56, %55 ], [ %30, %43 ]
  %59 = load ptr, ptr %10, align 8, !tbaa !6
  %60 = tail call i32 @rtx_equal_p(ptr noundef %58, ptr noundef %59) #20
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i32, ptr %0, align 8
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = icmp eq i32 %25, %65
  br i1 %66, label %100, label %67

67:                                               ; preds = %62, %57
  %68 = tail call ptr @gen_rtx_MEM(i32 noundef %25, ptr noundef %58) #21
  %69 = load i32, ptr %0, align 8
  %70 = and i32 %69, 134217728
  %71 = load i32, ptr %68, align 8
  %72 = and i32 %71, -134217729
  %73 = or disjoint i32 %72, %70
  store i32 %73, ptr %68, align 8
  %74 = load i32, ptr %0, align 8
  %75 = and i32 %74, 268435456
  %76 = and i32 %73, -268435457
  %77 = or disjoint i32 %76, %75
  store i32 %77, ptr %68, align 8
  %78 = load i32, ptr %0, align 8
  %79 = and i32 %78, -2147483648
  %80 = and i32 %77, 2147483647
  %81 = or disjoint i32 %80, %79
  store i32 %81, ptr %68, align 8
  %82 = load i32, ptr %0, align 8
  %83 = and i32 %82, 33554432
  %84 = and i32 %81, -33554433
  %85 = or disjoint i32 %84, %83
  store i32 %85, ptr %68, align 8
  %86 = load i32, ptr %0, align 8
  %87 = and i32 %86, 67108864
  %88 = and i32 %85, -67108865
  %89 = or disjoint i32 %88, %87
  store i32 %89, ptr %68, align 8
  %90 = load i32, ptr %0, align 8
  %91 = and i32 %90, 16777216
  %92 = and i32 %89, -16777217
  %93 = or disjoint i32 %92, %91
  store i32 %93, ptr %68, align 8
  %94 = load i32, ptr %0, align 8
  %95 = and i32 %94, 1073741824
  %96 = and i32 %93, -1073741825
  %97 = or disjoint i32 %96, %95
  store i32 %97, ptr %68, align 8
  %98 = load ptr, ptr %11, align 8, !tbaa !6
  %99 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %98, ptr %99, align 8, !tbaa !6
  br label %100

100:                                              ; preds = %62, %38, %40, %67
  %101 = phi ptr [ %68, %67 ], [ %0, %40 ], [ %0, %38 ], [ %0, %62 ]
  ret ptr %101
}

; Function Attrs: optsize
declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @adjust_automodify_address_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @change_address_1(ptr noundef %0, i32 noundef 0, ptr noundef %2, i32 noundef %4) #21
  %7 = tail call ptr @adjust_address_1(ptr noundef %6, i32 noundef %1, i64 noundef %3, i32 noundef %4, i32 noundef 0) #21
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @offset_address(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %7, i64 0, i32 5
  %11 = load i8, ptr %10, align 8, !tbaa !22
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi i8 [ %11, %9 ], [ 0, %3 ]
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !48
  %15 = tail call i32 %14(i8 noundef zeroext %13) #20
  %16 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %15, ptr noundef %5, ptr noundef %1) #20
  %17 = load i32, ptr %0, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = tail call i32 @memory_address_addr_space_p(i32 noundef %19, ptr noundef %16, i8 noundef zeroext %13) #20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %12
  %23 = load i32, ptr %5, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 49
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !11
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = lshr i32 %23, 16
  %33 = and i32 %32, 255
  %34 = tail call ptr @force_reg(i32 noundef %33, ptr noundef nonnull %5) #20
  %35 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %15, ptr noundef %34, ptr noundef %1) #20
  br label %36

36:                                               ; preds = %31, %26, %22, %12
  %37 = phi ptr [ %16, %12 ], [ %35, %31 ], [ %16, %26 ], [ %16, %22 ]
  %38 = load ptr, ptr %4, align 8, !tbaa !6
  tail call void @update_temp_slot_address(ptr noundef %38, ptr noundef %37) #20
  %39 = tail call fastcc ptr @change_address_1(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %37, i32 noundef 1) #21
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %66, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %6, align 8, !tbaa !6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = shl i64 %2, 3
  %46 = tail call i64 @llvm.umin.i64(i64 %45, i64 8)
  br label %56

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.mem_attrs, ptr %42, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !60
  %50 = load ptr, ptr %42, align 8, !tbaa !17
  %51 = getelementptr inbounds %struct.mem_attrs, ptr %42, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !21
  %53 = zext i32 %52 to i64
  %54 = shl i64 %2, 3
  %55 = tail call i64 @llvm.umin.i64(i64 %54, i64 %53)
  br label %56

56:                                               ; preds = %47, %44
  %57 = phi i32 [ 0, %44 ], [ %49, %47 ]
  %58 = phi ptr [ null, %44 ], [ %50, %47 ]
  %59 = phi i64 [ %46, %44 ], [ %55, %47 ]
  %60 = trunc i64 %59 to i32
  %61 = load i32, ptr %39, align 8
  %62 = lshr i32 %61, 16
  %63 = and i32 %62, 255
  %64 = tail call fastcc ptr @get_mem_attrs(i32 noundef %57, ptr noundef %58, ptr noundef null, ptr noundef null, i32 noundef %60, i8 noundef zeroext %13, i32 noundef %63) #21
  %65 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %64, ptr %65, align 8, !tbaa !6
  br label %66

66:                                               ; preds = %36, %56
  ret ptr %39
}

; Function Attrs: optsize
declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_temp_slot_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @replace_equiv_address_nv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @change_address_1(ptr noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef 0) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @widen_memory_access(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @adjust_address_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef 1, i32 noundef 1) #21
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %4, %0
  br i1 %7, label %10, label %9

9:                                                ; preds = %3
  br i1 %8, label %112, label %11

10:                                               ; preds = %3
  br i1 %8, label %112, label %16

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = load ptr, ptr %6, align 8, !tbaa !17
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10, %11
  %17 = zext i32 %1 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !6
  br label %25

20:                                               ; preds = %11
  %21 = zext i32 %1 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !6
  %24 = icmp eq ptr %14, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %16, %20
  %26 = phi i8 [ %19, %16 ], [ %23, %20 ]
  %27 = phi ptr [ null, %16 ], [ %13, %20 ]
  %28 = zext i8 %26 to i64
  br label %94

29:                                               ; preds = %20
  %30 = zext i8 %23 to i64
  br label %31

31:                                               ; preds = %29, %59
  %32 = phi ptr [ %14, %29 ], [ %60, %59 ]
  %33 = phi ptr [ %13, %29 ], [ %70, %59 ]
  %34 = load i64, ptr %32, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 41
  br i1 %36, label %37, label %72

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 0, i32 3
  %39 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %32) #20
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %94, label %45

45:                                               ; preds = %37
  %46 = load i64, ptr %43, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 23
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = tail call i32 @compare_tree_int(ptr noundef nonnull %43, i64 noundef %30) #20
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !6
  %55 = icmp sgt i64 %54, -1
  br i1 %55, label %94, label %56

56:                                               ; preds = %52, %49, %45
  %57 = tail call i32 @host_integerp(ptr noundef %41, i32 noundef 1) #20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %94, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %38, align 8, !tbaa !6
  %61 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !6
  %63 = tail call i64 @tree_low_cst(ptr noundef %41, i32 noundef 1) #20
  %64 = add nsw i64 %63, %62
  %65 = getelementptr inbounds %struct.tree_field_decl, ptr %40, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = tail call i64 @tree_low_cst(ptr noundef %66, i32 noundef 1) #20
  %68 = sdiv i64 %67, 8
  %69 = add nsw i64 %64, %68
  %70 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %69) #21
  %71 = icmp eq ptr %60, null
  br i1 %71, label %94, label %31

72:                                               ; preds = %31
  %73 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %35
  %74 = load i32, ptr %73, align 4, !tbaa !14
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.tree_decl_common, ptr %32, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = icmp eq ptr %78, null
  br i1 %79, label %93, label %80

80:                                               ; preds = %76
  %81 = load i64, ptr %78, align 8
  %82 = and i64 %81, 65535
  %83 = icmp eq i64 %82, 23
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = tail call i32 @compare_tree_int(ptr noundef nonnull %78, i64 noundef %30) #20
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = icmp eq ptr %33, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !6
  %92 = icmp sgt i64 %91, -1
  br i1 %92, label %94, label %93

93:                                               ; preds = %89, %84, %80, %76, %72
  br label %94

94:                                               ; preds = %59, %37, %52, %56, %25, %87, %89, %93
  %95 = phi i64 [ %28, %25 ], [ %30, %87 ], [ %30, %89 ], [ %30, %93 ], [ %30, %56 ], [ %30, %52 ], [ %30, %37 ], [ %30, %59 ]
  %96 = phi ptr [ %27, %25 ], [ null, %87 ], [ %33, %89 ], [ %33, %93 ], [ %70, %59 ], [ %33, %37 ], [ %33, %52 ], [ %33, %56 ]
  %97 = phi ptr [ null, %25 ], [ %32, %87 ], [ %32, %89 ], [ null, %93 ], [ null, %59 ], [ null, %37 ], [ %32, %52 ], [ null, %56 ]
  %98 = icmp eq ptr %97, null
  %99 = select i1 %98, ptr null, ptr %96
  %100 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %95) #21
  %101 = load ptr, ptr %5, align 8, !tbaa !6
  %102 = icmp eq ptr %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.mem_attrs, ptr %101, i64 0, i32 4
  %105 = load i32, ptr %104, align 4, !tbaa !21
  %106 = getelementptr inbounds %struct.mem_attrs, ptr %101, i64 0, i32 5
  %107 = load i8, ptr %106, align 8, !tbaa !22
  br label %108

108:                                              ; preds = %94, %103
  %109 = phi i32 [ %105, %103 ], [ 8, %94 ]
  %110 = phi i8 [ %107, %103 ], [ 0, %94 ]
  %111 = tail call fastcc ptr @get_mem_attrs(i32 noundef 0, ptr noundef %97, ptr noundef %99, ptr noundef %100, i32 noundef %109, i8 noundef zeroext %110, i32 noundef %1) #21
  store ptr %111, ptr %5, align 8, !tbaa !6
  br label %112

112:                                              ; preds = %10, %9, %108
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_spill_slot_decl(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @spill_slot_decl, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  %4 = icmp ne i8 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = tail call ptr @get_identifier(ptr noundef nonnull @.str.2) #20
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %12 = tail call ptr @build_decl_stat(i32 noundef %9, i32 noundef 32, ptr noundef %10, ptr noundef %11) #20
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = or i64 %14, 5120
  store i64 %15, ptr %13, align 8
  %16 = load i64, ptr %12, align 8
  %17 = or i64 %16, 50331648
  store i64 %17, ptr %12, align 8
  store ptr %12, ptr @spill_slot_decl, align 8, !tbaa !11
  %18 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !11
  %19 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %18) #21
  %20 = load i32, ptr %19, align 8
  %21 = or i32 %20, 33554432
  store i32 %21, ptr %19, align 8
  %22 = tail call i32 @new_alias_set() #20
  %23 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !11
  %24 = tail call fastcc ptr @get_mem_attrs(i32 noundef %22, ptr noundef nonnull %12, ptr noundef %23, ptr noundef null, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 1) #21
  %25 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %24, ptr %25, align 8, !tbaa !6
  tail call void @set_decl_rtl(ptr noundef nonnull %12, ptr noundef nonnull %19) #21
  br label %26

26:                                               ; preds = %1, %6
  %27 = phi ptr [ %12, %6 ], [ %2, %1 ]
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @new_alias_set() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_attrs_for_spill(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @get_spill_slot_decl(i8 noundef zeroext 1) #21
  %3 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  tail call void @make_decl_rtl(ptr noundef nonnull %2) #20
  %7 = load ptr, ptr %3, align 8, !tbaa !6
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !60
  br label %16

16:                                               ; preds = %8, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %8 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !11
  %21 = load i32, ptr %19, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 49
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 30
  %30 = select i1 %29, ptr %26, ptr %20
  br label %31

31:                                               ; preds = %24, %16
  %32 = phi ptr [ %20, %16 ], [ %30, %24 ]
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mem_attrs, ptr %34, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !20
  br label %52

39:                                               ; preds = %31
  %40 = load i32, ptr %0, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %57, label %44

44:                                               ; preds = %39
  %45 = zext nneg i32 %42 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !6
  %48 = zext i8 %47 to i64
  %49 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %48) #21
  %50 = load ptr, ptr %33, align 8, !tbaa !6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %36, %44
  %53 = phi ptr [ %38, %36 ], [ %49, %44 ]
  %54 = phi ptr [ %34, %36 ], [ %50, %44 ]
  %55 = getelementptr inbounds %struct.mem_attrs, ptr %54, i64 0, i32 4
  %56 = load i32, ptr %55, align 4, !tbaa !21
  br label %57

57:                                               ; preds = %39, %44, %52
  %58 = phi ptr [ %53, %52 ], [ %49, %44 ], [ null, %39 ]
  %59 = phi i32 [ %56, %52 ], [ 8, %44 ], [ 8, %39 ]
  %60 = load i32, ptr %0, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = tail call fastcc ptr @get_mem_attrs(i32 noundef %17, ptr noundef nonnull %2, ptr noundef %32, ptr noundef %58, i32 noundef %59, i8 noundef zeroext 0, i32 noundef %62) #21
  store ptr %63, ptr %33, align 8, !tbaa !6
  %64 = load i32, ptr %0, align 8
  %65 = or i32 %64, 33554432
  store i32 %65, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_label_rtx() local_unnamed_addr #0 {
  %1 = load i32, ptr @label_num, align 4, !tbaa !14
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @label_num, align 4, !tbaa !14
  %3 = tail call ptr @gen_rtx_fmt_iuuB00is_stat(i32 noundef 12, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %1, ptr noundef null) #20
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_iuuB00is_stat(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_new_first_and_last_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 {
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !64
  store ptr %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  store i32 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 117, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !67
  %6 = icmp ne i32 %5, 0
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %0, null
  br i1 %11, label %57, label %48

12:                                               ; preds = %2
  %13 = add nsw i32 %5, -1
  store i32 %13, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  store i32 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !69
  %14 = icmp eq ptr %0, null
  br i1 %14, label %45, label %15

15:                                               ; preds = %12, %32
  %16 = phi i32 [ %36, %32 ], [ 0, %12 ]
  %17 = phi ptr [ %38, %32 ], [ %0, %12 ]
  %18 = phi i32 [ %34, %32 ], [ %13, %12 ]
  %19 = phi i32 [ %33, %32 ], [ 0, %12 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !6
  %22 = icmp slt i32 %21, %5
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = tail call i32 @llvm.smax.i32(i32 %19, i32 %21)
  store i32 %24, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !69
  br label %32

25:                                               ; preds = %15
  %26 = tail call i32 @llvm.smax.i32(i32 %18, i32 %21)
  store i32 %26, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %27 = load i32, ptr %17, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 7
  %30 = zext i1 %29 to i32
  %31 = add nsw i32 %16, %30
  br label %32

32:                                               ; preds = %25, %23
  %33 = phi i32 [ %24, %23 ], [ %19, %25 ]
  %34 = phi i32 [ %18, %23 ], [ %26, %25 ]
  %35 = phi i32 [ %16, %23 ], [ %31, %25 ]
  %36 = freeze i32 %35
  %37 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %15, !llvm.loop !70

40:                                               ; preds = %32
  %41 = add nuw nsw i32 %33, 1
  %42 = icmp eq i32 %36, 0
  %43 = add nsw i32 %36, %5
  %44 = select i1 %42, i32 %41, i32 %43
  br label %45

45:                                               ; preds = %40, %12
  %46 = phi i32 [ %13, %12 ], [ %34, %40 ]
  %47 = phi i32 [ 1, %12 ], [ %44, %40 ]
  store i32 %47, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !69
  br label %57

48:                                               ; preds = %10, %48
  %49 = phi ptr [ %55, %48 ], [ %0, %10 ]
  %50 = phi i32 [ %53, %48 ], [ 0, %10 ]
  %51 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !6
  %53 = tail call i32 @llvm.smax.i32(i32 %50, i32 %52)
  store i32 %53, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %54 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %48, !llvm.loop !71

57:                                               ; preds = %48, %10, %45
  %58 = phi i32 [ 0, %10 ], [ %46, %45 ], [ %53, %48 ]
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @unshare_all_rtl_again(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1, %14
  %4 = phi ptr [ %16, %14 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  tail call void @reset_used_flags(ptr noundef %11) #21
  %12 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  tail call void @reset_used_flags(ptr noundef %13) #21
  br label %14

14:                                               ; preds = %3, %9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %3, !llvm.loop !72

18:                                               ; preds = %14, %1
  %19 = load ptr, ptr @cfun, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !73
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %21, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  tail call fastcc void @set_used_decls(ptr noundef %23) #21
  %24 = load ptr, ptr @cfun, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = getelementptr inbounds %struct.tree_decl_non_common, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %18, %37
  %31 = phi ptr [ %40, %37 ], [ %28, %18 ]
  %32 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  tail call void @make_decl_rtl(ptr noundef nonnull %31) #20
  %36 = load ptr, ptr %32, align 8, !tbaa !6
  br label %37

37:                                               ; preds = %30, %35
  %38 = phi ptr [ %36, %35 ], [ %33, %30 ]
  tail call void @set_used_flags(ptr noundef %38) #21
  %39 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %30, !llvm.loop !75

42:                                               ; preds = %37, %18
  %43 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !76
  tail call void @reset_used_flags(ptr noundef %43) #21
  tail call fastcc void @unshare_all_rtl_1(ptr noundef %0) #21
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @reset_used_flags(ptr noundef %0) local_unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %54, label %3

3:                                                ; preds = %1, %34
  %4 = phi ptr [ %36, %34 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %7 [
    i16 37, label %54
    i16 2, label %54
    i16 1, label %54
    i16 30, label %54
    i16 32, label %54
    i16 31, label %54
    i16 33, label %54
    i16 45, label %54
    i16 12, label %54
    i16 36, label %54
    i16 46, label %54
    i16 7, label %54
    i16 8, label %54
    i16 9, label %54
    i16 10, label %54
    i16 13, label %54
    i16 44, label %54
    i16 11, label %54
  ]

7:                                                ; preds = %3
  %8 = and i32 %5, 65535
  %9 = and i32 %5, -536870913
  store i32 %9, ptr %4, align 8
  %10 = zext nneg i32 %8 to i64
  %11 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !6
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %54, label %14

14:                                               ; preds = %7
  %15 = zext i8 %12 to i64
  %16 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %10
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %19 = add nuw nsw i64 %15, 4294967295
  %20 = and i64 %19, 4294967295
  %21 = zext i8 %12 to i64
  br label %22

22:                                               ; preds = %14, %51
  %23 = phi i64 [ 0, %14 ], [ %52, %51 ]
  %24 = phi ptr [ %17, %14 ], [ %25, %51 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %24, align 1, !tbaa !6
  switch i8 %26, label %51 [
    i8 101, label %32
    i8 69, label %27
  ]

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1 x %union.rtunion_def], ptr %18, i64 0, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = load i32, ptr %29, align 8, !tbaa !41
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %41, label %51

32:                                               ; preds = %22
  %33 = icmp eq i64 %23, %20
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = getelementptr inbounds [1 x %union.rtunion_def], ptr %18, i64 0, i64 %20
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %54, label %3

38:                                               ; preds = %32
  %39 = getelementptr inbounds [1 x %union.rtunion_def], ptr %18, i64 0, i64 %23
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  tail call void @reset_used_flags(ptr noundef %40) #21
  br label %51

41:                                               ; preds = %27, %41
  %42 = phi i64 [ %46, %41 ], [ 0, %27 ]
  %43 = phi ptr [ %47, %41 ], [ %29, %27 ]
  %44 = getelementptr inbounds %struct.rtvec_def, ptr %43, i64 0, i32 1, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !11
  tail call void @reset_used_flags(ptr noundef %45) #21
  %46 = add nuw nsw i64 %42, 1
  %47 = load ptr, ptr %28, align 8, !tbaa !6
  %48 = load i32, ptr %47, align 8, !tbaa !41
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %41, label %51, !llvm.loop !77

51:                                               ; preds = %41, %27, %38, %22
  %52 = add nuw nsw i64 %23, 1
  %53 = icmp eq i64 %52, %21
  br i1 %53, label %54, label %22, !llvm.loop !78

54:                                               ; preds = %34, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %7, %51, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_used_decls(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1, %17
  %6 = phi ptr [ %19, %17 ], [ %3, %1 ]
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %8, i64 11
  %10 = load i8, ptr %9, align 1, !tbaa !6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @set_used_flags(ptr noundef nonnull %14) #21
  br label %17

17:                                               ; preds = %5, %12, %16
  %18 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %5, !llvm.loop !79

21:                                               ; preds = %17, %1
  %22 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %28, %25 ], [ %23, %21 ]
  tail call fastcc void @set_used_decls(ptr noundef nonnull %26) #21
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %25, !llvm.loop !80

30:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_used_flags(ptr noundef %0) local_unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %6 [
    i16 37, label %44
    i16 2, label %44
    i16 1, label %44
    i16 30, label %44
    i16 32, label %44
    i16 31, label %44
    i16 33, label %44
    i16 45, label %44
    i16 12, label %44
    i16 36, label %44
    i16 46, label %44
    i16 7, label %44
    i16 8, label %44
    i16 9, label %44
    i16 10, label %44
    i16 13, label %44
    i16 44, label %44
    i16 11, label %44
  ]

6:                                                ; preds = %3
  %7 = and i32 %4, 65535
  %8 = or i32 %4, 536870912
  store i32 %8, ptr %0, align 8
  %9 = zext nneg i32 %7 to i64
  %10 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !6
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %9
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %17 = zext i8 %11 to i64
  br label %18

18:                                               ; preds = %13, %41
  %19 = phi i64 [ 0, %13 ], [ %42, %41 ]
  %20 = phi ptr [ %15, %13 ], [ %21, %41 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  %22 = load i8, ptr %20, align 1, !tbaa !6
  switch i8 %22, label %41 [
    i8 101, label %28
    i8 69, label %23
  ]

23:                                               ; preds = %18
  %24 = getelementptr inbounds [1 x %union.rtunion_def], ptr %16, i64 0, i64 %19
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = load i32, ptr %25, align 8, !tbaa !41
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %31, label %41

28:                                               ; preds = %18
  %29 = getelementptr inbounds [1 x %union.rtunion_def], ptr %16, i64 0, i64 %19
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  tail call void @set_used_flags(ptr noundef %30) #21
  br label %41

31:                                               ; preds = %23, %31
  %32 = phi i64 [ %36, %31 ], [ 0, %23 ]
  %33 = phi ptr [ %37, %31 ], [ %25, %23 ]
  %34 = getelementptr inbounds %struct.rtvec_def, ptr %33, i64 0, i32 1, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  tail call void @set_used_flags(ptr noundef %35) #21
  %36 = add nuw nsw i64 %32, 1
  %37 = load ptr, ptr %24, align 8, !tbaa !6
  %38 = load i32, ptr %37, align 8, !tbaa !41
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %31, label %41, !llvm.loop !81

41:                                               ; preds = %31, %23, %28, %18
  %42 = add nuw nsw i64 %19, 1
  %43 = icmp eq i64 %42, %17
  br i1 %43, label %44, label %18, !llvm.loop !82

44:                                               ; preds = %41, %6, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unshare_all_rtl_1(ptr noundef %0) unnamed_addr #0 {
  tail call void @unshare_all_rtl_in_chain(ptr noundef %0) #21
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !76
  %3 = tail call ptr @copy_rtx_if_shared(ptr noundef %2) #21
  store ptr %3, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !76
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @unshare_all_rtl_in_chain(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1, %16
  %4 = phi ptr [ %18, %16 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = tail call ptr @copy_rtx_if_shared(ptr noundef %11) #21
  store ptr %12, ptr %10, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = tail call ptr @copy_rtx_if_shared(ptr noundef %14) #21
  store ptr %15, ptr %13, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %3, %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %3, !llvm.loop !83

20:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @copy_rtx_if_shared(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !11
  call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %2) #21
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @unshare_all_rtl() #0 {
  %1 = tail call ptr @get_insns() #21
  tail call fastcc void @unshare_all_rtl_1(ptr noundef %1) #21
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @get_insns() local_unnamed_addr #10 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !64
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_rtl_sharing() local_unnamed_addr #0 {
  %1 = tail call ptr @get_insns() #21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %47, label %3

3:                                                ; preds = %0, %43
  %4 = phi ptr [ %45, %43 ], [ %1, %0 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %43

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  tail call void @reset_used_flags(ptr noundef %11) #21
  %12 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  tail call void @reset_used_flags(ptr noundef %13) #21
  %14 = load ptr, ptr %10, align 8, !tbaa !6
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %18, label %43

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = load i32, ptr %20, align 8, !tbaa !41
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %18, %33
  %24 = phi i64 [ %38, %33 ], [ 0, %18 ]
  %25 = phi ptr [ %39, %33 ], [ %20, %18 ]
  %26 = getelementptr inbounds %struct.rtvec_def, ptr %25, i64 0, i32 1, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = add nsw i32 %29, -7
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2528, ptr noundef nonnull @.str.1) #20
  br label %33

33:                                               ; preds = %23, %32
  %34 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  tail call void @reset_used_flags(ptr noundef %35) #21
  %36 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  tail call void @reset_used_flags(ptr noundef %37) #21
  %38 = add nuw nsw i64 %24, 1
  %39 = load ptr, ptr %19, align 8, !tbaa !6
  %40 = load i32, ptr %39, align 8, !tbaa !41
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %23, label %43, !llvm.loop !84

43:                                               ; preds = %33, %18, %3, %9
  %44 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %3, !llvm.loop !85

47:                                               ; preds = %43, %0
  %48 = tail call ptr @get_insns() #21
  %49 = icmp eq ptr %48, null
  br i1 %49, label %65, label %50

50:                                               ; preds = %47, %61
  %51 = phi ptr [ %63, %61 ], [ %48, %47 ]
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = add nsw i32 %53, -7
  %55 = icmp ult i32 %54, 4
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  tail call fastcc void @verify_rtx_sharing(ptr noundef %58) #21
  %59 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 1, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  tail call fastcc void @verify_rtx_sharing(ptr noundef %60) #21
  br label %61

61:                                               ; preds = %50, %56
  %62 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %50, !llvm.loop !86

65:                                               ; preds = %61, %47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @verify_rtx_sharing(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %95, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = trunc i32 %4 to i16
  switch i16 %6, label %30 [
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
    i16 35, label %16
    i16 43, label %19
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %30

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %9) #21
  %15 = icmp ult i32 %14, 53
  br i1 %15, label %95, label %30

16:                                               ; preds = %3
  %17 = tail call zeroext i8 @shared_const_p(ptr noundef nonnull %0) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %30, label %95

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = tail call zeroext i8 @constant_address_p(ptr noundef %21) #20
  %23 = icmp ne i8 %22, 0
  %24 = load i32, ptr @reload_completed, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 true, i1 %25
  %27 = load i32, ptr @reload_in_progress, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %95, label %30

30:                                               ; preds = %3, %19, %16, %7, %13
  %31 = load i32, ptr %0, align 8
  %32 = and i32 %31, 536870912
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2467, ptr noundef nonnull @.str.1) #20
  %35 = load i32, ptr %0, align 8
  br label %36

36:                                               ; preds = %30, %34
  %37 = phi i32 [ %31, %30 ], [ %35, %34 ]
  %38 = or i32 %37, 536870912
  store i32 %38, ptr %0, align 8
  %39 = zext nneg i32 %5 to i64
  %40 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !6
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %95, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %39
  %45 = load ptr, ptr %44, align 8, !tbaa !11
  %46 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %47 = zext i8 %41 to i64
  br label %48

48:                                               ; preds = %43, %92
  %49 = phi i64 [ 0, %43 ], [ %93, %92 ]
  %50 = phi ptr [ %45, %43 ], [ %51, %92 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  %52 = load i8, ptr %50, align 1, !tbaa !6
  switch i8 %52, label %92 [
    i8 101, label %53
    i8 69, label %56
  ]

53:                                               ; preds = %48
  %54 = getelementptr inbounds [1 x %union.rtunion_def], ptr %46, i64 0, i64 %49
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  tail call fastcc void @verify_rtx_sharing(ptr noundef %55) #21
  br label %92

56:                                               ; preds = %48
  %57 = getelementptr inbounds [1 x %union.rtunion_def], ptr %46, i64 0, i64 %49
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = icmp eq ptr %58, null
  br i1 %59, label %92, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %58, align 8, !tbaa !41
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %60
  %64 = zext nneg i32 %61 to i64
  br label %65

65:                                               ; preds = %63, %88
  %66 = phi i64 [ 0, %63 ], [ %90, %88 ]
  %67 = icmp eq i64 %66, 0
  %68 = load ptr, ptr %57, align 8, !tbaa !6
  br i1 %67, label %69, label %71

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1, i64 0
  br label %85

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1, i64 %66
  %73 = load ptr, ptr %72, align 8, !tbaa !11
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 23
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 17
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1
  br label %85

85:                                               ; preds = %83, %69
  %86 = phi ptr [ %70, %69 ], [ %84, %83 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  br label %88

88:                                               ; preds = %85, %71, %77
  %89 = phi ptr [ %73, %77 ], [ %73, %71 ], [ %87, %85 ]
  tail call fastcc void @verify_rtx_sharing(ptr noundef %89) #21
  %90 = add nuw nsw i64 %66, 1
  %91 = icmp eq i64 %90, %64
  br i1 %91, label %92, label %65, !llvm.loop !87

92:                                               ; preds = %88, %60, %53, %48, %56
  %93 = add nuw nsw i64 %49, 1
  %94 = icmp eq i64 %93, %47
  br i1 %94, label %95, label %48, !llvm.loop !88

95:                                               ; preds = %92, %36, %19, %16, %13, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @shared_const_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @constant_address_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_rtx_if_shared_1(ptr nocapture noundef %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %90, %1
  %3 = phi i32 [ 0, %1 ], [ %34, %90 ]
  %4 = phi ptr [ %0, %1 ], [ %87, %90 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %92, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 8
  %9 = and i32 %8, 65535
  %10 = trunc i32 %8 to i16
  switch i16 %10, label %25 [
    i16 37, label %92
    i16 2, label %92
    i16 1, label %92
    i16 30, label %92
    i16 32, label %92
    i16 31, label %92
    i16 33, label %92
    i16 45, label %92
    i16 44, label %92
    i16 12, label %92
    i16 36, label %92
    i16 46, label %92
    i16 38, label %92
    i16 25, label %11
    i16 35, label %20
    i16 7, label %92
    i16 8, label %92
    i16 9, label %92
    i16 10, label %92
    i16 13, label %92
    i16 11, label %92
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %13) #21
  %19 = icmp ult i32 %18, 53
  br i1 %19, label %92, label %25

20:                                               ; preds = %7
  %21 = tail call zeroext i8 @shared_const_p(ptr noundef nonnull %5) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %92

23:                                               ; preds = %20
  %24 = load i32, ptr %5, align 8
  br label %25

25:                                               ; preds = %23, %7, %11, %17
  %26 = phi i32 [ %24, %23 ], [ %8, %7 ], [ %8, %11 ], [ %8, %17 ]
  %27 = and i32 %26, 536870912
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %5) #20
  %31 = load i32, ptr %30, align 8
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i32 [ %31, %29 ], [ %26, %25 ]
  %34 = phi i32 [ 1, %29 ], [ %3, %25 ]
  %35 = phi ptr [ %30, %29 ], [ %5, %25 ]
  %36 = or i32 %33, 536870912
  store i32 %36, ptr %35, align 8
  %37 = zext nneg i32 %9 to i64
  %38 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !6
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store ptr %35, ptr %4, align 8, !tbaa !11
  br label %92

42:                                               ; preds = %32
  %43 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %37
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  %45 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %46 = icmp ne i32 %34, 0
  %47 = zext i8 %39 to i64
  br label %48

48:                                               ; preds = %42, %86
  %49 = phi i64 [ 0, %42 ], [ %88, %86 ]
  %50 = phi ptr [ %44, %42 ], [ %52, %86 ]
  %51 = phi ptr [ null, %42 ], [ %87, %86 ]
  %52 = getelementptr inbounds i8, ptr %50, i64 1
  %53 = load i8, ptr %50, align 1, !tbaa !6
  switch i8 %53, label %86 [
    i8 101, label %54
    i8 69, label %59
  ]

54:                                               ; preds = %48
  %55 = icmp eq ptr %51, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %51) #21
  br label %57

57:                                               ; preds = %56, %54
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %49
  br label %86

59:                                               ; preds = %48
  %60 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %49
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %86, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %61, align 8, !tbaa !41
  %65 = icmp sgt i32 %64, 0
  %66 = select i1 %46, i1 %65, i1 false
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.rtvec_def, ptr %61, i64 0, i32 1
  %69 = tail call ptr @gen_rtvec_v(i32 noundef %64, ptr noundef nonnull %68) #21
  store ptr %69, ptr %60, align 8, !tbaa !6
  br label %71

70:                                               ; preds = %63
  br i1 %65, label %71, label %86

71:                                               ; preds = %67, %70
  %72 = phi ptr [ %69, %67 ], [ %61, %70 ]
  %73 = zext nneg i32 %64 to i64
  br label %74

74:                                               ; preds = %71, %81
  %75 = phi ptr [ %72, %71 ], [ %82, %81 ]
  %76 = phi i64 [ 0, %71 ], [ %84, %81 ]
  %77 = phi ptr [ %51, %71 ], [ %83, %81 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  tail call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %77) #21
  %80 = load ptr, ptr %60, align 8, !tbaa !6
  br label %81

81:                                               ; preds = %79, %74
  %82 = phi ptr [ %80, %79 ], [ %75, %74 ]
  %83 = getelementptr inbounds %struct.rtvec_def, ptr %82, i64 0, i32 1, i64 %76
  %84 = add nuw nsw i64 %76, 1
  %85 = icmp eq i64 %84, %73
  br i1 %85, label %86, label %74, !llvm.loop !89

86:                                               ; preds = %81, %70, %57, %48, %59
  %87 = phi ptr [ %51, %48 ], [ %51, %59 ], [ %58, %57 ], [ %51, %70 ], [ %83, %81 ]
  %88 = add nuw nsw i64 %49, 1
  %89 = icmp eq i64 %88, %47
  br i1 %89, label %90, label %48, !llvm.loop !90

90:                                               ; preds = %86
  store ptr %35, ptr %4, align 8, !tbaa !11
  %91 = icmp eq ptr %87, null
  br i1 %91, label %92, label %2

92:                                               ; preds = %90, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %20, %17, %2, %41
  ret void
}

; Function Attrs: optsize
declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_safe_from(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %7
  %4 = phi ptr [ %1, %2 ], [ %9, %7 ]
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %32 [
    i16 39, label %7
    i16 40, label %7
    i16 98, label %7
    i16 99, label %7
    i16 43, label %10
    i16 37, label %20
  ]

7:                                                ; preds = %3, %3, %3, %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  br label %3

10:                                               ; preds = %3
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 65535
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !14
  %16 = icmp eq i32 %15, 9
  %17 = and i32 %11, 65533
  %18 = icmp eq i32 %17, 37
  %19 = or i1 %16, %18
  br i1 %19, label %32, label %26

20:                                               ; preds = %3
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %4) #21
  %22 = icmp ult i32 %21, 53
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @reg_mentioned_p(ptr noundef nonnull %4, ptr noundef %0) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %10, %23, %20
  %27 = load i32, ptr %0, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = tail call ptr @gen_reg_rtx(i32 noundef %29) #21
  %31 = tail call ptr @emit_move_insn(ptr noundef %30, ptr noundef nonnull %0) #20
  br label %32

32:                                               ; preds = %3, %10, %23, %26
  %33 = phi ptr [ %30, %26 ], [ %0, %23 ], [ %0, %10 ], [ %0, %3 ]
  ret ptr %33
}

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_first_insn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2912, ptr noundef nonnull @.str.1) #20
  br label %6

6:                                                ; preds = %1, %5
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @get_last_insn() local_unnamed_addr #10 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_last_insn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2929, ptr noundef nonnull @.str.1) #20
  br label %6

6:                                                ; preds = %1, %5
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_last_insn_anywhere() local_unnamed_addr #14 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %15

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %10

6:                                                ; preds = %10
  %7 = getelementptr inbounds %struct.sequence_stack, ptr %11, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !llvm.loop !91

10:                                               ; preds = %3, %6
  %11 = phi ptr [ %8, %6 ], [ %4, %3 ]
  %12 = getelementptr inbounds %struct.sequence_stack, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = icmp eq ptr %13, null
  br i1 %14, label %6, label %15

15:                                               ; preds = %10, %6, %3, %0
  %16 = phi ptr [ %1, %0 ], [ null, %3 ], [ %13, %10 ], [ null, %6 ]
  ret ptr %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_first_nonnote_insn() local_unnamed_addr #14 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !64
  %2 = icmp eq ptr %1, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr %1, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %28 [
    i16 13, label %6
    i16 8, label %17
  ]

6:                                                ; preds = %3
  %7 = tail call ptr @next_insn(ptr noundef nonnull %1) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %6, %14
  %10 = phi ptr [ %15, %14 ], [ %7, %6 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 13
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = tail call ptr @next_insn(ptr noundef nonnull %10) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %9, !llvm.loop !94

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.rtvec_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  br label %28

28:                                               ; preds = %9, %14, %6, %3, %23, %17, %0
  %29 = phi ptr [ %27, %23 ], [ %1, %17 ], [ null, %0 ], [ %1, %3 ], [ null, %6 ], [ %10, %9 ], [ null, %14 ]
  ret ptr %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_insn(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.rtvec_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  br label %22

22:                                               ; preds = %3, %7, %11, %17, %1
  %23 = phi ptr [ %21, %17 ], [ %5, %11 ], [ %5, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_last_nonnote_insn() local_unnamed_addr #14 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  %2 = icmp eq ptr %1, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr %1, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %31 [
    i16 13, label %6
    i16 8, label %17
  ]

6:                                                ; preds = %3
  %7 = tail call ptr @previous_insn(ptr noundef nonnull %1) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %6, %14
  %10 = phi ptr [ %15, %14 ], [ %7, %6 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 13
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = tail call ptr @previous_insn(ptr noundef nonnull %10) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %9, !llvm.loop !95

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = load i32, ptr %25, align 8, !tbaa !41
  %27 = add nsw i32 %26, -1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.rtvec_def, ptr %25, i64 0, i32 1, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  br label %31

31:                                               ; preds = %9, %14, %6, %3, %23, %17, %0
  %32 = phi ptr [ %30, %23 ], [ %1, %17 ], [ null, %0 ], [ %1, %3 ], [ null, %6 ], [ %10, %9 ], [ null, %14 ]
  ret ptr %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @previous_insn(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = load i32, ptr %19, align 8, !tbaa !41
  %21 = add nsw i32 %20, -1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.rtvec_def, ptr %19, i64 0, i32 1, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  br label %25

25:                                               ; preds = %3, %7, %11, %17, %1
  %26 = phi ptr [ %24, %17 ], [ %5, %11 ], [ %5, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_max_uid() local_unnamed_addr #10 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_max_insn_count() local_unnamed_addr #9 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %2 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !69
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 117, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !67
  %6 = tail call i32 @llvm.smax.i32(i32 %2, i32 %5)
  %7 = sub nsw i32 %1, %6
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_nonnote_insn(ptr noundef readonly %0) local_unnamed_addr #14 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 13
  br i1 %11, label %3, label %12, !llvm.loop !96

12:                                               ; preds = %3, %8, %1
  %13 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_nonnote_insn_bb(ptr noundef readonly %0) local_unnamed_addr #14 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi ptr [ %0, %1 ], [ %7, %13 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 13
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %15 = load i32, ptr %14, align 8, !tbaa !6
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %2, !llvm.loop !97

17:                                               ; preds = %2, %9, %5, %13
  %18 = phi ptr [ null, %13 ], [ null, %5 ], [ %7, %9 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_nonnote_insn(ptr noundef readonly %0) local_unnamed_addr #14 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 13
  br i1 %11, label %3, label %12, !llvm.loop !98

12:                                               ; preds = %3, %8, %1
  %13 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_nonnote_insn_bb(ptr noundef readonly %0) local_unnamed_addr #14 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi ptr [ %0, %1 ], [ %7, %13 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 13
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %15 = load i32, ptr %14, align 8, !tbaa !6
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %2, !llvm.loop !99

17:                                               ; preds = %2, %9, %5, %13
  %18 = phi ptr [ null, %13 ], [ null, %5 ], [ %7, %9 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_nondebug_insn(ptr noundef readonly %0) local_unnamed_addr #14 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %3, label %12, !llvm.loop !100

12:                                               ; preds = %3, %8, %1
  %13 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_nondebug_insn(ptr noundef readonly %0) local_unnamed_addr #14 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %3, label %12, !llvm.loop !101

12:                                               ; preds = %3, %8, %1
  %13 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_real_insn(ptr noundef readonly %0) local_unnamed_addr #14 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -7
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %3

13:                                               ; preds = %8, %3, %1
  %14 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_real_insn(ptr noundef readonly %0) local_unnamed_addr #14 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -7
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %3

13:                                               ; preds = %8, %3, %1
  %14 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @last_call_insn() local_unnamed_addr #14 {
  %1 = tail call ptr @get_last_insn() #21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %0, %8
  %4 = phi ptr [ %10, %8 ], [ %1, %0 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %3, !llvm.loop !102

12:                                               ; preds = %3, %8, %0
  %13 = phi ptr [ null, %0 ], [ null, %8 ], [ %4, %3 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @active_insn_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %16 [
    i16 10, label %17
    i16 9, label %17
    i16 8, label %4
  ]

4:                                                ; preds = %1
  %5 = load i32, ptr @reload_completed, align 4, !tbaa !14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 24
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = icmp ne i32 %11, 25
  %15 = zext i1 %14 to i32
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %1, %1, %16, %7, %13, %4
  %18 = phi i32 [ 1, %1 ], [ 1, %4 ], [ 0, %7 ], [ %15, %13 ], [ 1, %1 ], [ 0, %16 ]
  ret i32 %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_active_insn(ptr noundef readonly %0) local_unnamed_addr #14 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @active_insn_p(ptr noundef nonnull %6) #21, !range !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %3, label %11, !llvm.loop !103

11:                                               ; preds = %3, %8, %1
  %12 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_active_insn(ptr noundef readonly %0) local_unnamed_addr #14 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @active_insn_p(ptr noundef nonnull %6) #21, !range !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %3, label %11, !llvm.loop !104

11:                                               ; preds = %3, %8, %1
  %12 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_label(ptr noundef readonly %0) local_unnamed_addr #14 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 12
  br i1 %11, label %12, label %3, !llvm.loop !105

12:                                               ; preds = %3, %8, %1
  %13 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_label(ptr noundef readonly %0) local_unnamed_addr #14 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 12
  br i1 %11, label %12, label %3, !llvm.loop !106

12:                                               ; preds = %3, %8, %1
  %13 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @skip_consecutive_labels(ptr noundef readonly %0) local_unnamed_addr #14 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %3, !llvm.loop !107

16:                                               ; preds = %10, %3, %1
  %17 = phi ptr [ null, %1 ], [ %5, %3 ], [ %12, %10 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @try_split(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load i32, ptr %1, align 8
  %9 = and i32 %8, 1073741824
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %220

11:                                               ; preds = %3
  %12 = tail call i32 @any_condjump_p(ptr noundef nonnull %1) #20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @find_reg_note(ptr noundef nonnull %1, i32 noundef 13, ptr noundef null) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !6
  %22 = trunc i64 %21 to i32
  store i32 %22, ptr @split_branch_probability, align 4, !tbaa !14
  br label %25

23:                                               ; preds = %11, %14
  %24 = load i32, ptr @split_branch_probability, align 4, !tbaa !14
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi i32 [ %24, %23 ], [ %22, %17 ]
  %27 = tail call ptr @split_insns(ptr noundef %0, ptr noundef nonnull %1) #20
  store i32 -1, ptr @split_branch_probability, align 4, !tbaa !14
  %28 = icmp eq ptr %7, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %7, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 11
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  br label %36

36:                                               ; preds = %33, %29, %25
  %37 = phi i1 [ false, %33 ], [ true, %29 ], [ true, %25 ]
  %38 = phi ptr [ %35, %33 ], [ %7, %29 ], [ null, %25 ]
  %39 = icmp eq ptr %27, null
  br i1 %39, label %220, label %40

40:                                               ; preds = %36, %51
  %41 = phi ptr [ %53, %51 ], [ %27, %36 ]
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = add nsw i32 %43, -7
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = tail call i32 @rtx_equal_p(ptr noundef %48, ptr noundef %0) #20
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %220

51:                                               ; preds = %40, %46
  %52 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %40

55:                                               ; preds = %51
  tail call void @unshare_all_rtl_in_chain(ptr noundef nonnull %27) #21
  %56 = icmp eq i32 %26, -1
  %57 = sext i32 %26 to i64
  br label %58

58:                                               ; preds = %55, %79
  %59 = phi i32 [ 0, %55 ], [ %80, %79 ]
  %60 = phi ptr [ %41, %55 ], [ %82, %79 ]
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 9
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  tail call void @mark_jump_label(ptr noundef %66, ptr noundef nonnull %60, i32 noundef 0) #20
  %67 = add nsw i32 %59, 1
  br i1 %56, label %79, label %68

68:                                               ; preds = %64
  %69 = tail call i32 @any_condjump_p(ptr noundef nonnull %60) #20
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = tail call ptr @find_reg_note(ptr noundef nonnull %60, i32 noundef 13, ptr noundef null) #20
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = icmp eq i32 %59, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3497, ptr noundef nonnull @.str.1) #20
  br label %77

77:                                               ; preds = %74, %76
  %78 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %57) #21
  tail call void @add_reg_note(ptr noundef nonnull %60, i32 noundef 13, ptr noundef %78) #20
  br label %79

79:                                               ; preds = %58, %77, %71, %68, %64
  %80 = phi i32 [ %67, %71 ], [ %67, %77 ], [ %67, %68 ], [ %67, %64 ], [ %59, %58 ]
  %81 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %58, !llvm.loop !108

84:                                               ; preds = %79
  %85 = load i32, ptr %1, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 10
  br i1 %87, label %88, label %119

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 2
  br label %90

90:                                               ; preds = %88, %115
  %91 = phi ptr [ %41, %88 ], [ %117, %115 ]
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 10
  br i1 %94, label %95, label %115

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 1, i32 1, i32 0, i32 0, i64 2
  br label %97

97:                                               ; preds = %97, %95
  %98 = phi ptr [ %96, %95 ], [ %101, %97 ]
  %99 = load ptr, ptr %98, align 8, !tbaa !11
  %100 = icmp eq ptr %99, null
  %101 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %100, label %102, label %97, !llvm.loop !109

102:                                              ; preds = %97
  %103 = load ptr, ptr %89, align 8, !tbaa !6
  store ptr %103, ptr %98, align 8, !tbaa !11
  %104 = load i32, ptr %1, align 8
  %105 = and i32 %104, 16777216
  %106 = load i32, ptr %91, align 8
  %107 = and i32 %106, -16777217
  %108 = or disjoint i32 %107, %105
  store i32 %108, ptr %91, align 8
  %109 = load i32, ptr @flag_enable_icf_debug, align 4, !tbaa !14
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %102
  %112 = load ptr, ptr @debug_hooks, align 8, !tbaa !11
  %113 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %112, i64 0, i32 28
  %114 = load ptr, ptr %113, align 8, !tbaa !110
  tail call void %114(ptr noundef nonnull %1, ptr noundef nonnull %91) #20
  br label %115

115:                                              ; preds = %102, %111, %90
  %116 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1, i32 0, i32 0, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !6
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %90, !llvm.loop !112

119:                                              ; preds = %115, %84
  %120 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  %122 = icmp eq ptr %121, null
  br i1 %122, label %165, label %123

123:                                              ; preds = %119, %161
  %124 = phi ptr [ %163, %161 ], [ %121, %119 ]
  %125 = load i32, ptr %124, align 8
  %126 = lshr i32 %125, 16
  %127 = trunc i32 %126 to i8
  switch i8 %127, label %161 [
    i8 25, label %130
    i8 27, label %131
    i8 30, label %131
    i8 28, label %128
  ]

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  br label %147

130:                                              ; preds = %123
  tail call void @copy_reg_eh_region_note_backward(ptr noundef nonnull %124, ptr noundef nonnull %41, ptr noundef null) #20
  br label %161

131:                                              ; preds = %123, %123
  %132 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1
  br label %133

133:                                              ; preds = %131, %143
  %134 = phi ptr [ %41, %131 ], [ %145, %143 ]
  %135 = load i32, ptr %134, align 8
  %136 = and i32 %135, 65535
  %137 = icmp eq i32 %136, 10
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32, ptr %124, align 8
  %140 = lshr i32 %139, 16
  %141 = and i32 %140, 255
  %142 = load ptr, ptr %132, align 8, !tbaa !6
  tail call void @add_reg_note(ptr noundef nonnull %134, i32 noundef %141, ptr noundef %142) #20
  br label %143

143:                                              ; preds = %133, %138
  %144 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1, i32 0, i32 0, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !6
  %146 = icmp eq ptr %145, null
  br i1 %146, label %161, label %133, !llvm.loop !113

147:                                              ; preds = %128, %157
  %148 = phi ptr [ %41, %128 ], [ %159, %157 ]
  %149 = load i32, ptr %148, align 8
  %150 = and i32 %149, 65535
  %151 = icmp eq i32 %150, 9
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load i32, ptr %124, align 8
  %154 = lshr i32 %153, 16
  %155 = and i32 %154, 255
  %156 = load ptr, ptr %129, align 8, !tbaa !6
  tail call void @add_reg_note(ptr noundef nonnull %148, i32 noundef %155, ptr noundef %156) #20
  br label %157

157:                                              ; preds = %147, %152
  %158 = getelementptr inbounds %struct.rtx_def, ptr %148, i64 0, i32 1, i32 0, i32 0, i64 1
  %159 = load ptr, ptr %158, align 8, !tbaa !6
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %147, !llvm.loop !114

161:                                              ; preds = %157, %143, %130, %123
  %162 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1, i32 0, i32 0, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !6
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %123, !llvm.loop !115

165:                                              ; preds = %161, %119
  %166 = load i32, ptr %1, align 8
  %167 = and i32 %166, 65535
  %168 = add nsw i32 %167, -7
  %169 = icmp ult i32 %168, 4
  br i1 %169, label %170, label %182

170:                                              ; preds = %165, %178
  %171 = phi ptr [ %180, %178 ], [ %41, %165 ]
  %172 = load i32, ptr %171, align 8
  %173 = and i32 %172, 65535
  %174 = icmp eq i32 %173, 8
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 1
  %177 = load ptr, ptr %176, align 8, !tbaa !6
  tail call fastcc void @mark_label_nuses(ptr noundef %177) #21
  br label %178

178:                                              ; preds = %175, %170
  %179 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 0, i32 1, i32 0, i32 0, i64 1
  %180 = load ptr, ptr %179, align 8, !tbaa !6
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %170, !llvm.loop !116

182:                                              ; preds = %178, %165
  %183 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %184 = load i32, ptr %183, align 8, !tbaa !6
  %185 = tail call ptr @emit_insn_after_setloc(ptr noundef nonnull %27, ptr noundef nonnull %1, i32 noundef %184) #21
  %186 = tail call ptr @delete_insn(ptr noundef nonnull %1) #20
  br i1 %37, label %189, label %187

187:                                              ; preds = %182
  %188 = tail call ptr @emit_barrier_after(ptr noundef %185) #21
  br label %189

189:                                              ; preds = %187, %182
  %190 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %191 = load ptr, ptr %190, align 8, !tbaa !6
  %192 = icmp eq ptr %191, %38
  br i1 %192, label %211, label %193

193:                                              ; preds = %189, %206
  %194 = phi ptr [ %209, %206 ], [ %191, %189 ]
  %195 = load i32, ptr %194, align 8
  %196 = and i32 %195, 134217728
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %193
  %199 = and i32 %195, 65535
  %200 = add nsw i32 %199, -7
  %201 = icmp ult i32 %200, 4
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !6
  %205 = tail call ptr @try_split(ptr noundef %204, ptr noundef nonnull %194, i32 noundef 1) #21
  br label %206

206:                                              ; preds = %198, %193, %202
  %207 = phi ptr [ %194, %193 ], [ %205, %202 ], [ %194, %198 ]
  %208 = getelementptr inbounds %struct.rtx_def, ptr %207, i64 0, i32 1, i32 0, i32 0, i64 2
  %209 = load ptr, ptr %208, align 8, !tbaa !6
  %210 = icmp eq ptr %209, %38
  br i1 %210, label %211, label %193, !llvm.loop !117

211:                                              ; preds = %206, %189
  %212 = icmp eq i32 %2, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %211
  %214 = icmp eq ptr %38, null
  br i1 %214, label %217, label %215

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %217

217:                                              ; preds = %211, %213, %215
  %218 = phi ptr [ %216, %215 ], [ getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), %213 ], [ %190, %211 ]
  %219 = load ptr, ptr %218, align 8, !tbaa !6
  br label %220

220:                                              ; preds = %46, %36, %3, %217
  %221 = phi ptr [ %219, %217 ], [ %1, %3 ], [ %1, %36 ], [ %1, %46 ]
  ret ptr %221
}

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @split_insns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mark_jump_label(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_reg_eh_region_note_backward(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mark_label_nuses(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 44
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 12
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !6
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %11, %5, %1
  %16 = zext nneg i32 %3 to i64
  %17 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !6
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %49, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %24 = zext i8 %20 to i64
  br label %25

25:                                               ; preds = %22, %47
  %26 = phi i64 [ %24, %22 ], [ %27, %47 ]
  %27 = add nsw i64 %26, -1
  %28 = getelementptr inbounds i8, ptr %18, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !6
  switch i8 %29, label %47 [
    i8 101, label %30
    i8 69, label %33
  ]

30:                                               ; preds = %25
  %31 = getelementptr inbounds [1 x %union.rtunion_def], ptr %23, i64 0, i64 %27
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  tail call fastcc void @mark_label_nuses(ptr noundef %32) #21
  br label %47

33:                                               ; preds = %25
  %34 = getelementptr inbounds [1 x %union.rtunion_def], ptr %23, i64 0, i64 %27
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = load i32, ptr %35, align 8, !tbaa !41
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = zext nneg i32 %36 to i64
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i64 [ %39, %38 ], [ %42, %40 ]
  %42 = add nsw i64 %41, -1
  %43 = load ptr, ptr %34, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.rtvec_def, ptr %43, i64 0, i32 1, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !11
  tail call fastcc void @mark_label_nuses(ptr noundef %45) #21
  %46 = icmp ugt i64 %41, 1
  br i1 %46, label %40, label %47, !llvm.loop !118

47:                                               ; preds = %40, %33, %25, %30
  %48 = icmp sgt i64 %26, 1
  br i1 %48, label %25, label %49, !llvm.loop !119

49:                                               ; preds = %47, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @emit_insn_after_noloc(ptr noundef %0, ptr noundef %1, ptr noundef null) #21
  %5 = icmp ne ptr %0, null
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %3, %19
  %9 = phi ptr [ %11, %19 ], [ %1, %3 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = tail call i32 @active_insn_p(ptr noundef %11) #21, !range !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 %2, ptr %15, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %18, %14, %8
  %20 = icmp eq ptr %11, %4
  br i1 %20, label %21, label %8

21:                                               ; preds = %19, %3
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_barrier_after(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 11) #20
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !6
  tail call void @add_insn_after(ptr noundef %2, ptr noundef %0, ptr poison) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_insn_raw(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 8) #20
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store ptr %0, ptr %6, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1
  store i32 -1, ptr %7, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %8, align 8, !tbaa !6
  %9 = tail call i32 @curr_insn_locator() #20
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  store i32 %9, ptr %10, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !6
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @curr_insn_locator() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_debug_insn_raw(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 7) #20
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !69
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !69
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !6
  %6 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !69
  %7 = load ptr, ptr @compiler_params, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.param_info, ptr %7, i64 117, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !67
  %10 = icmp sgt i32 %6, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  store i32 %12, ptr %5, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %11, %1
  %15 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store ptr %0, ptr %15, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1
  store i32 -1, ptr %16, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %17, align 8, !tbaa !6
  %18 = tail call i32 @curr_insn_locator() #20
  %19 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  store i32 %18, ptr %19, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %20, align 8, !tbaa !6
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_jump_insn_raw(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 9) #20
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store ptr %0, ptr %6, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1
  store i32 -1, ptr %7, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %9 = tail call i32 @curr_insn_locator() #20
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  store i32 %9, ptr %10, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !6
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @add_insn(ptr noundef %0) local_unnamed_addr #15 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %2, ptr %3, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %4, align 8, !tbaa !6
  %5 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %8, align 8, !tbaa !6
  br label %9

9:                                                ; preds = %7, %1
  %10 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !64
  br label %13

13:                                               ; preds = %12, %9
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_insn_after(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = load i32, ptr @optimize, align 4, !tbaa !14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %1, align 8
  %10 = and i32 %9, 134217728
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3723, ptr noundef nonnull @.str.1) #20
  br label %13

13:                                               ; preds = %3, %8, %12
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %5, ptr %14, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %15, align 8, !tbaa !6
  %16 = icmp eq ptr %5, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %0, ptr %18, align 8, !tbaa !6
  %19 = load i32, ptr %5, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %22, label %53

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %53

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %0, ptr %33, align 8, !tbaa !6
  br label %53

34:                                               ; preds = %13
  %35 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %41

40:                                               ; preds = %34
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  br label %53

41:                                               ; preds = %37, %48
  %42 = phi ptr [ %50, %48 ], [ %38, %37 ]
  %43 = getelementptr inbounds %struct.sequence_stack, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !92
  %45 = icmp eq ptr %44, %1
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.sequence_stack, ptr %42, i64 0, i32 1
  store ptr %0, ptr %47, align 8, !tbaa !92
  br label %53

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.sequence_stack, ptr %42, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %41, !llvm.loop !120

52:                                               ; preds = %48, %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3747, ptr noundef nonnull @.str.1) #20
  br label %53

53:                                               ; preds = %46, %52, %40, %17, %22, %28
  %54 = load i32, ptr %1, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 11
  br i1 %56, label %85, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %0, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 11
  br i1 %60, label %85, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %85, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %63, ptr %66, align 8, !tbaa !6
  %67 = add nsw i32 %59, -7
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %0) #20
  br label %71

71:                                               ; preds = %65, %69
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = getelementptr inbounds %struct.rtl_bb_info, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !121
  %76 = icmp eq ptr %75, %1
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load i32, ptr %0, align 8
  %79 = trunc i32 %78 to i16
  switch i16 %79, label %84 [
    i16 11, label %85
    i16 13, label %80
  ]

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %82 = load i32, ptr %81, align 8, !tbaa !6
  %83 = icmp eq i32 %82, 10
  br i1 %83, label %85, label %84

84:                                               ; preds = %77, %80
  store ptr %0, ptr %74, align 8, !tbaa !121
  br label %85

85:                                               ; preds = %77, %71, %80, %84, %61, %57, %53
  store ptr %0, ptr %4, align 8, !tbaa !6
  %86 = load i32, ptr %1, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 5
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  %98 = load i32, ptr %97, align 8, !tbaa !41
  %99 = add nsw i32 %98, -1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.rtvec_def, ptr %97, i64 0, i32 1, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !11
  %103 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %103, align 8, !tbaa !6
  br label %104

104:                                              ; preds = %95, %89, %85
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_insn_before(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = load i32, ptr @optimize, align 4, !tbaa !14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %1, align 8
  %10 = and i32 %9, 134217728
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3785, ptr noundef nonnull @.str.1) #20
  br label %13

13:                                               ; preds = %3, %8, %12
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %5, ptr %14, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %1, ptr %15, align 8, !tbaa !6
  %16 = icmp eq ptr %5, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %18, align 8, !tbaa !6
  %19 = load i32, ptr %5, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %22, label %54

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = load i32, ptr %30, align 8, !tbaa !41
  %32 = add nsw i32 %31, -1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %36, align 8, !tbaa !6
  br label %54

37:                                               ; preds = %13
  %38 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !64
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %44

43:                                               ; preds = %37
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !64
  br label %54

44:                                               ; preds = %40, %49
  %45 = phi ptr [ %51, %49 ], [ %41, %40 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !123
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store ptr %0, ptr %45, align 8, !tbaa !123
  br label %54

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.sequence_stack, ptr %45, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !11
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44, !llvm.loop !124

53:                                               ; preds = %49, %40
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3812, ptr noundef nonnull @.str.1) #20
  br label %54

54:                                               ; preds = %48, %53, %43, %17, %22, %28
  %55 = icmp eq ptr %2, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %54
  %57 = load i32, ptr %0, align 8
  %58 = and i32 %57, 65535
  br label %71

59:                                               ; preds = %54
  %60 = load i32, ptr %1, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 11
  br i1 %62, label %92, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %0, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 11
  br i1 %66, label %92, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !6
  %70 = icmp eq ptr %69, null
  br i1 %70, label %92, label %71

71:                                               ; preds = %56, %67
  %72 = phi i32 [ %58, %56 ], [ %65, %67 ]
  %73 = phi ptr [ %2, %56 ], [ %69, %67 ]
  %74 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %73, ptr %74, align 8, !tbaa !6
  %75 = add nsw i32 %72, -7
  %76 = icmp ult i32 %75, 4
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %0) #20
  br label %79

79:                                               ; preds = %71, %77
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !6
  %82 = load ptr, ptr %81, align 8, !tbaa !125
  %83 = icmp eq ptr %82, %0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i32, ptr %0, align 8
  %86 = trunc i32 %85 to i16
  switch i16 %86, label %91 [
    i16 11, label %92
    i16 13, label %87
  ]

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %89 = load i32, ptr %88, align 8, !tbaa !6
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %92, label %91

91:                                               ; preds = %84, %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3830, ptr noundef nonnull @.str.1) #20
  br label %92

92:                                               ; preds = %63, %59, %84, %91, %87, %79, %67
  store ptr %0, ptr %4, align 8, !tbaa !6
  %93 = load i32, ptr %1, align 8
  %94 = and i32 %93, 65535
  %95 = icmp eq i32 %94, 8
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, 65535
  %101 = icmp eq i32 %100, 5
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = getelementptr inbounds %struct.rtvec_def, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !11
  %107 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %0, ptr %107, align 8, !tbaa !6
  br label %108

108:                                              ; preds = %102, %96, %92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_insn_deleted(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load i32, ptr %2, align 8, !tbaa !6
  tail call void @df_insn_delete(ptr noundef %4, i32 noundef %5) #20
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, -65536
  %8 = or disjoint i32 %7, 13
  store i32 %8, ptr %0, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  store i32 0, ptr %9, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @df_insn_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_insn(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = load i32, ptr %2, align 8, !tbaa !6
  tail call void @df_insn_delete(ptr noundef null, i32 noundef %7) #20
  %8 = icmp eq ptr %6, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %10, align 8, !tbaa !6
  %11 = load i32, ptr %6, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %14, label %46

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %46

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = load i32, ptr %22, align 8, !tbaa !41
  %24 = add nsw i32 %23, -1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.rtvec_def, ptr %22, i64 0, i32 1, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %28, align 8, !tbaa !6
  br label %46

29:                                               ; preds = %1
  %30 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !64
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %36

35:                                               ; preds = %29
  store ptr %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !64
  br label %46

36:                                               ; preds = %32, %41
  %37 = phi ptr [ %43, %41 ], [ %33, %32 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !123
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store ptr %4, ptr %37, align 8, !tbaa !123
  br label %46

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.sequence_stack, ptr %37, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !11
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %36, !llvm.loop !126

45:                                               ; preds = %41, %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3884, ptr noundef nonnull @.str.1) #20
  br label %46

46:                                               ; preds = %40, %45, %35, %9, %14, %20
  %47 = icmp eq ptr %4, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %6, ptr %49, align 8, !tbaa !6
  %50 = load i32, ptr %4, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 8
  br i1 %52, label %53, label %84

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 5
  br i1 %58, label %59, label %84

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = getelementptr inbounds %struct.rtvec_def, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !11
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %6, ptr %64, align 8, !tbaa !6
  br label %84

65:                                               ; preds = %46
  %66 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  %67 = icmp eq ptr %66, %0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !11
  %70 = icmp eq ptr %69, null
  br i1 %70, label %83, label %72

71:                                               ; preds = %65
  store ptr %6, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  br label %84

72:                                               ; preds = %68, %79
  %73 = phi ptr [ %81, %79 ], [ %69, %68 ]
  %74 = getelementptr inbounds %struct.sequence_stack, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !92
  %76 = icmp eq ptr %75, %0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.sequence_stack, ptr %73, i64 0, i32 1
  store ptr %6, ptr %78, align 8, !tbaa !92
  br label %84

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.sequence_stack, ptr %73, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !11
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %72, !llvm.loop !127

83:                                               ; preds = %79, %68
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3906, ptr noundef nonnull @.str.1) #20
  br label %84

84:                                               ; preds = %77, %83, %71, %48, %53, %59
  %85 = load i32, ptr %0, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 11
  br i1 %87, label %116, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = icmp eq ptr %90, null
  br i1 %91, label %116, label %92

92:                                               ; preds = %88
  %93 = add nsw i32 %86, -7
  %94 = icmp ult i32 %93, 4
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  tail call void @df_set_bb_dirty(ptr noundef nonnull %90) #20
  br label %96

96:                                               ; preds = %92, %95
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 7
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = load ptr, ptr %98, align 8, !tbaa !125
  %100 = icmp eq ptr %99, %0
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load i32, ptr %0, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 13
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3917, ptr noundef nonnull @.str.1) #20
  %106 = load ptr, ptr %97, align 8, !tbaa !6
  br label %107

107:                                              ; preds = %101, %105
  %108 = phi ptr [ %98, %101 ], [ %106, %105 ]
  store ptr %4, ptr %108, align 8, !tbaa !125
  %109 = load ptr, ptr %97, align 8, !tbaa !6
  br label %110

110:                                              ; preds = %107, %96
  %111 = phi ptr [ %109, %107 ], [ %98, %96 ]
  %112 = getelementptr inbounds %struct.rtl_bb_info, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !121
  %114 = icmp eq ptr %113, %0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store ptr %6, ptr %112, align 8, !tbaa !121
  br label %116

116:                                              ; preds = %110, %115, %88, %84
  ret void
}

; Function Attrs: optsize
declare void @df_set_bb_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_function_usage_to(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3930, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !128

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %20

20:                                               ; preds = %9, %18
  %21 = phi ptr [ %19, %18 ], [ %10, %9 ]
  store ptr %1, ptr %21, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @delete_insns_since(ptr noundef %0) local_unnamed_addr #16 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %4 = select i1 %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), ptr %3
  store ptr null, ptr %4, align 8, !tbaa !6
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @reorder_insns_nobb(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  br i1 %6, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %8, ptr %10, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %3, %9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = icmp eq ptr %8, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %15, ptr %16, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %14, %11
  %18 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 8, !tbaa !6
  store ptr %21, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  br label %22

22:                                               ; preds = %20, %17
  %23 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !64
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load ptr, ptr %12, align 8, !tbaa !6
  store ptr %26, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !64
  br label %27

27:                                               ; preds = %25, %22
  %28 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %32, align 8, !tbaa !6
  %33 = load ptr, ptr %28, align 8, !tbaa !6
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi ptr [ %33, %31 ], [ null, %27 ]
  store ptr %35, ptr %12, align 8, !tbaa !6
  store ptr %2, ptr %4, align 8, !tbaa !6
  store ptr %0, ptr %28, align 8, !tbaa !6
  %36 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store ptr %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  br label %39

39:                                               ; preds = %38, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reorder_insns(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  tail call void @reorder_insns_nobb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  %6 = load i32, ptr %2, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 11
  br i1 %8, label %53, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %53, label %13

13:                                               ; preds = %9
  tail call void @df_set_bb_dirty(ptr noundef nonnull %11) #20
  %14 = load i32, ptr %0, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 11
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !121
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store ptr %5, ptr %24, align 8, !tbaa !121
  br label %28

28:                                               ; preds = %27, %21
  tail call void @df_set_bb_dirty(ptr noundef nonnull %19) #20
  br label %29

29:                                               ; preds = %28, %17, %13
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.rtl_bb_info, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !121
  %34 = icmp eq ptr %33, %2
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store ptr %1, ptr %32, align 8, !tbaa !121
  br label %36

36:                                               ; preds = %35, %29
  %37 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %53, label %40

40:                                               ; preds = %36, %48
  %41 = phi ptr [ %49, %48 ], [ %38, %36 ]
  %42 = phi ptr [ %51, %48 ], [ %0, %36 ]
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 11
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  tail call void @df_insn_change_bb(ptr noundef nonnull %42, ptr noundef nonnull %11) #20
  %47 = load ptr, ptr %37, align 8, !tbaa !6
  br label %48

48:                                               ; preds = %40, %46
  %49 = phi ptr [ %41, %40 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = icmp eq ptr %51, %49
  br i1 %52, label %53, label %40, !llvm.loop !129

53:                                               ; preds = %48, %36, %9, %3
  ret void
}

; Function Attrs: optsize
declare void @df_insn_change_bb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_insn_before_noloc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4061, ptr noundef nonnull @.str.1) #20
  br label %6

6:                                                ; preds = %3, %5
  %7 = icmp eq ptr %0, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %6
  %9 = load i32, ptr %0, align 8
  %10 = trunc i32 %9 to i16
  %11 = add i16 %10, -7
  %12 = icmp ult i16 %11, 7
  br i1 %12, label %13, label %18

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %16, %13 ], [ %0, %8 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  tail call void @add_insn_before(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %2) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %13, !llvm.loop !130

18:                                               ; preds = %8
  %19 = tail call ptr @make_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn_before(ptr noundef %19, ptr noundef %1, ptr noundef %2) #21
  br label %20

20:                                               ; preds = %13, %18, %6
  %21 = phi ptr [ %1, %6 ], [ %19, %18 ], [ %14, %13 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_jump_insn_before_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4108, ptr noundef nonnull @.str.1) #20
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
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  tail call void @add_insn_before(ptr noundef nonnull %11, ptr noundef %1, ptr noundef null) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %10, !llvm.loop !131

15:                                               ; preds = %5
  %16 = tail call ptr @make_jump_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn_before(ptr noundef %16, ptr noundef %1, ptr noundef null) #21
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %16, %15 ], [ %11, %10 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_call_insn_before_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4152, ptr noundef nonnull @.str.1) #20
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
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  tail call void @add_insn_before(ptr noundef nonnull %11, ptr noundef %1, ptr noundef null) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %10, !llvm.loop !132

15:                                               ; preds = %5
  %16 = tail call fastcc ptr @make_call_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn_before(ptr noundef %16, ptr noundef %1, ptr noundef null) #21
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %16, %15 ], [ %11, %10 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_call_insn_raw(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 10) #20
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store ptr %0, ptr %6, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1
  store i32 -1, ptr %7, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %9 = tail call i32 @curr_insn_locator() #20
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  store i32 %9, ptr %10, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !6
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_debug_insn_before_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4196, ptr noundef nonnull @.str.1) #20
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
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  tail call void @add_insn_before(ptr noundef nonnull %11, ptr noundef %1, ptr noundef null) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %10, !llvm.loop !133

15:                                               ; preds = %5
  %16 = tail call ptr @make_debug_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn_before(ptr noundef %16, ptr noundef %1, ptr noundef null) #21
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %16, %15 ], [ %11, %10 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_barrier_before(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 11) #20
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !6
  tail call void @add_insn_before(ptr noundef %2, ptr noundef %0, ptr noundef null) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_label_before(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  store i32 %7, ptr %3, align 8, !tbaa !6
  tail call void @add_insn_before(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null) #21
  br label %9

9:                                                ; preds = %6, %2
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_note_before(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @rtx_alloc_stat(i32 noundef 13) #20
  %4 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  store i32 %4, ptr %6, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  store i32 %0, ptr %7, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @add_insn_before(ptr noundef %3, ptr noundef %1, ptr noundef null) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_insn_after_noloc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4331, ptr noundef nonnull @.str.1) #20
  br label %6

6:                                                ; preds = %3, %5
  %7 = icmp eq ptr %0, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %6
  %9 = load i32, ptr %0, align 8
  %10 = trunc i32 %9 to i16
  %11 = add i16 %10, -7
  %12 = icmp ult i16 %11, 7
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @emit_insn_after_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #21
  br label %17

15:                                               ; preds = %8
  %16 = tail call ptr @make_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn_after(ptr noundef %16, ptr noundef %1, ptr poison) #21
  br label %17

17:                                               ; preds = %13, %15, %6
  %18 = phi ptr [ %1, %6 ], [ %16, %15 ], [ %14, %13 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_insn_after_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 11
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5, %9
  br label %50

14:                                               ; preds = %3, %9
  %15 = phi ptr [ %11, %9 ], [ %2, %3 ]
  tail call void @df_set_bb_dirty(ptr noundef nonnull %15) #20
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %14, %30
  %20 = phi ptr [ %33, %30 ], [ %17, %14 ]
  %21 = phi ptr [ %32, %30 ], [ %16, %14 ]
  %22 = phi ptr [ %31, %30 ], [ %0, %14 ]
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 11
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 1
  store ptr %15, ptr %27, align 8, !tbaa !6
  %28 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %22) #20
  %29 = load ptr, ptr %21, align 8, !tbaa !6
  br label %30

30:                                               ; preds = %19, %26
  %31 = phi ptr [ %20, %19 ], [ %29, %26 ]
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %19, !llvm.loop !134

35:                                               ; preds = %30, %14
  %36 = phi ptr [ %0, %14 ], [ %31, %30 ]
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 11
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 1
  store ptr %15, ptr %41, align 8, !tbaa !6
  %42 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %36) #20
  br label %43

43:                                               ; preds = %40, %35
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.rtl_bb_info, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !121
  %48 = icmp eq ptr %47, %1
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  store ptr %36, ptr %46, align 8, !tbaa !121
  br label %55

50:                                               ; preds = %13, %50
  %51 = phi ptr [ %53, %50 ], [ %0, %13 ]
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %50, !llvm.loop !135

55:                                               ; preds = %50, %43, %49
  %56 = phi ptr [ %36, %49 ], [ %36, %43 ], [ %51, %50 ]
  %57 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  store ptr %0, ptr %57, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %59, align 8, !tbaa !6
  %60 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %58, ptr %60, align 8, !tbaa !6
  %61 = icmp eq ptr %58, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %56, ptr %63, align 8, !tbaa !6
  br label %64

64:                                               ; preds = %62, %55
  %65 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  %66 = icmp eq ptr %65, %1
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store ptr %56, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  br label %68

68:                                               ; preds = %67, %64
  ret ptr %56
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_jump_insn_after_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4372, ptr noundef nonnull @.str.1) #20
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, -7
  %9 = icmp ult i16 %8, 7
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call fastcc ptr @emit_insn_after_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null) #21
  br label %14

12:                                               ; preds = %5
  %13 = tail call ptr @make_jump_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn_after(ptr noundef %13, ptr noundef %1, ptr poison) #21
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %13, %12 ], [ %11, %10 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_call_insn_after_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4409, ptr noundef nonnull @.str.1) #20
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, -7
  %9 = icmp ult i16 %8, 7
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call fastcc ptr @emit_insn_after_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null) #21
  br label %14

12:                                               ; preds = %5
  %13 = tail call fastcc ptr @make_call_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn_after(ptr noundef %13, ptr noundef %1, ptr poison) #21
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %13, %12 ], [ %11, %10 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_debug_insn_after_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4446, ptr noundef nonnull @.str.1) #20
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, -7
  %9 = icmp ult i16 %8, 7
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call fastcc ptr @emit_insn_after_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null) #21
  br label %14

12:                                               ; preds = %5
  %13 = tail call ptr @make_debug_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn_after(ptr noundef %13, ptr noundef %1, ptr poison) #21
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %13, %12 ], [ %11, %10 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_label_after(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  store i32 %7, ptr %3, align 8, !tbaa !6
  tail call void @add_insn_after(ptr noundef nonnull %0, ptr noundef %1, ptr poison) #21
  br label %9

9:                                                ; preds = %6, %2
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_note_after(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @rtx_alloc_stat(i32 noundef 13) #20
  %4 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  store i32 %4, ptr %6, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  store i32 %0, ptr %7, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @add_insn_after(ptr noundef %3, ptr noundef %1, ptr poison) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_insn_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  br label %3, !llvm.loop !136

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !6
  %13 = tail call ptr @emit_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %12) #21
  br label %16

14:                                               ; preds = %3
  %15 = tail call ptr @emit_insn_after_noloc(ptr noundef %0, ptr noundef %1, ptr noundef null) #21
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_jump_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @emit_jump_insn_after_noloc(ptr noundef %0, ptr noundef %1) #21
  %5 = icmp ne ptr %0, null
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %3, %19
  %9 = phi ptr [ %11, %19 ], [ %1, %3 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = tail call i32 @active_insn_p(ptr noundef %11) #21, !range !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 %2, ptr %15, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %18, %14, %8
  %20 = icmp eq ptr %11, %4
  br i1 %20, label %21, label %8

21:                                               ; preds = %19, %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_jump_insn_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  br label %3, !llvm.loop !137

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !6
  %13 = tail call ptr @emit_jump_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %12) #21
  br label %16

14:                                               ; preds = %3
  %15 = tail call ptr @emit_jump_insn_after_noloc(ptr noundef %0, ptr noundef %1) #21
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_call_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @emit_call_insn_after_noloc(ptr noundef %0, ptr noundef %1) #21
  %5 = icmp ne ptr %0, null
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %3, %19
  %9 = phi ptr [ %11, %19 ], [ %1, %3 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = tail call i32 @active_insn_p(ptr noundef %11) #21, !range !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 %2, ptr %15, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %18, %14, %8
  %20 = icmp eq ptr %11, %4
  br i1 %20, label %21, label %8

21:                                               ; preds = %19, %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_call_insn_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  br label %3, !llvm.loop !138

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !6
  %13 = tail call ptr @emit_call_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %12) #21
  br label %16

14:                                               ; preds = %3
  %15 = tail call ptr @emit_call_insn_after_noloc(ptr noundef %0, ptr noundef %1) #21
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_debug_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @emit_debug_insn_after_noloc(ptr noundef %0, ptr noundef %1) #21
  %5 = icmp ne ptr %0, null
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %3, %19
  %9 = phi ptr [ %11, %19 ], [ %1, %3 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = tail call i32 @active_insn_p(ptr noundef %11) #21, !range !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 %2, ptr %15, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %18, %14, %8
  %20 = icmp eq ptr %11, %4
  br i1 %20, label %21, label %8

21:                                               ; preds = %19, %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_debug_insn_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = tail call ptr @emit_debug_insn_after_setloc(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %9) #21
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @emit_debug_insn_after_noloc(ptr noundef %0, ptr noundef nonnull %1) #21
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %10, %7 ], [ %12, %11 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = tail call ptr @emit_insn_before_noloc(ptr noundef %0, ptr noundef %1, ptr noundef null) #21
  %7 = icmp ne ptr %0, null
  %8 = icmp ne i32 %2, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %3
  %11 = icmp eq ptr %5, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call ptr @get_insns() #21
  br label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi ptr [ %13, %12 ], [ %16, %14 ]
  br label %19

19:                                               ; preds = %17, %30
  %20 = phi ptr [ %32, %30 ], [ %18, %17 ]
  %21 = tail call i32 @active_insn_p(ptr noundef %20) #21, !range !44
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 %2, ptr %24, align 8, !tbaa !6
  br label %28

28:                                               ; preds = %27, %23, %19
  %29 = icmp eq ptr %20, %6
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  br label %19

33:                                               ; preds = %28, %3
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_insn_before(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  br label %3, !llvm.loop !139

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !6
  %13 = tail call ptr @emit_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %12) #21
  br label %16

14:                                               ; preds = %3
  %15 = tail call ptr @emit_insn_before_noloc(ptr noundef %0, ptr noundef %1, ptr noundef null) #21
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_jump_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = tail call ptr @emit_jump_insn_before_noloc(ptr noundef %0, ptr noundef %1) #21
  %7 = icmp eq ptr %0, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3, %19
  %9 = phi ptr [ %11, %19 ], [ %5, %3 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = tail call i32 @active_insn_p(ptr noundef %11) #21, !range !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 %2, ptr %15, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %18, %14, %8
  %20 = icmp eq ptr %11, %6
  br i1 %20, label %21, label %8

21:                                               ; preds = %19, %3
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_jump_insn_before(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  br label %3, !llvm.loop !140

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !6
  %13 = tail call ptr @emit_jump_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %12) #21
  br label %16

14:                                               ; preds = %3
  %15 = tail call ptr @emit_jump_insn_before_noloc(ptr noundef %0, ptr noundef %1) #21
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_call_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = tail call ptr @emit_call_insn_before_noloc(ptr noundef %0, ptr noundef %1) #21
  %7 = icmp eq ptr %0, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3, %19
  %9 = phi ptr [ %11, %19 ], [ %5, %3 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = tail call i32 @active_insn_p(ptr noundef %11) #21, !range !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 %2, ptr %15, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %18, %14, %8
  %20 = icmp eq ptr %11, %6
  br i1 %20, label %21, label %8

21:                                               ; preds = %19, %3
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_call_insn_before(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  br label %3, !llvm.loop !141

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !6
  %13 = tail call ptr @emit_call_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %12) #21
  br label %16

14:                                               ; preds = %3
  %15 = tail call ptr @emit_call_insn_before_noloc(ptr noundef %0, ptr noundef %1) #21
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_debug_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = tail call ptr @emit_debug_insn_before_noloc(ptr noundef %0, ptr noundef %1) #21
  %7 = icmp eq ptr %0, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3, %19
  %9 = phi ptr [ %11, %19 ], [ %5, %3 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = tail call i32 @active_insn_p(ptr noundef %11) #21, !range !44
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 %2, ptr %15, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %18, %14, %8
  %20 = icmp eq ptr %11, %6
  br i1 %20, label %21, label %8

21:                                               ; preds = %19, %3
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_debug_insn_before(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = tail call ptr @emit_debug_insn_before_setloc(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %9) #21
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @emit_debug_insn_before_noloc(ptr noundef %0, ptr noundef nonnull %1) #21
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %10, %7 ], [ %12, %11 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_insn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  %7 = add i16 %6, -7
  %8 = icmp ult i16 %7, 7
  br i1 %8, label %9, label %14

9:                                                ; preds = %4, %9
  %10 = phi ptr [ %12, %9 ], [ %0, %4 ]
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  tail call void @add_insn(ptr noundef nonnull %10) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %9, !llvm.loop !142

14:                                               ; preds = %4
  %15 = tail call ptr @make_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn(ptr noundef %15) #21
  br label %16

16:                                               ; preds = %9, %14, %1
  %17 = phi ptr [ %2, %1 ], [ %15, %14 ], [ %10, %9 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_debug_insn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  %7 = add i16 %6, -7
  %8 = icmp ult i16 %7, 7
  br i1 %8, label %9, label %14

9:                                                ; preds = %4, %9
  %10 = phi ptr [ %12, %9 ], [ %0, %4 ]
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  tail call void @add_insn(ptr noundef nonnull %10) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %9, !llvm.loop !143

14:                                               ; preds = %4
  %15 = tail call ptr @make_debug_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn(ptr noundef %15) #21
  br label %16

16:                                               ; preds = %9, %14, %1
  %17 = phi ptr [ %2, %1 ], [ %15, %14 ], [ %10, %9 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_jump_insn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  %4 = add i16 %3, -7
  %5 = icmp ult i16 %4, 7
  br i1 %5, label %6, label %11

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %1 ]
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  tail call void @add_insn(ptr noundef nonnull %7) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %6, !llvm.loop !144

11:                                               ; preds = %1
  %12 = tail call ptr @make_jump_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn(ptr noundef %12) #21
  br label %13

13:                                               ; preds = %6, %11
  %14 = phi ptr [ %12, %11 ], [ %7, %6 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_call_insn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  %4 = add i16 %3, -7
  %5 = icmp ult i16 %4, 7
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @emit_insn(ptr noundef nonnull %0) #21
  br label %10

8:                                                ; preds = %1
  %9 = tail call fastcc ptr @make_call_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn(ptr noundef %9) #21
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @emit_label(ptr noundef returned %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  store i32 %6, ptr %2, align 8, !tbaa !6
  tail call void @add_insn(ptr noundef nonnull %0) #21
  br label %8

8:                                                ; preds = %5, %1
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_barrier() local_unnamed_addr #0 {
  %1 = tail call ptr @rtx_alloc_stat(i32 noundef 11) #20
  %2 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  store i32 %2, ptr %4, align 8, !tbaa !6
  tail call void @add_insn(ptr noundef %1) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_note_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 13) #20
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load i32, ptr %9, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store i32 %10, ptr %11, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %12, align 8, !tbaa !6
  tail call void @add_insn(ptr noundef %2) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_note(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 13) #20
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store i32 %0, ptr %6, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  tail call void @add_insn(ptr noundef %2) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_clobber(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 41
  br i1 %4, label %5, label %15

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %11, %5 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = tail call ptr @emit_clobber(ptr noundef %8) #21
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 41
  br i1 %14, label %5, label %15

15:                                               ; preds = %5, %1
  %16 = phi ptr [ %0, %1 ], [ %11, %5 ]
  %17 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %16) #20
  %18 = tail call ptr @emit_insn(ptr noundef %17) #21
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_clobber(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @start_sequence() #21
  %2 = tail call ptr @emit_clobber(ptr noundef %0) #21
  %3 = tail call ptr @get_insns() #21
  tail call void @end_sequence() #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @start_sequence() local_unnamed_addr #0 {
  %1 = load ptr, ptr @free_sequence_stack, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.sequence_stack, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !145
  store ptr %5, ptr @free_sequence_stack, align 8, !tbaa !11
  br label %8

6:                                                ; preds = %0
  %7 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #20
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi ptr [ %1, %3 ], [ %7, %6 ]
  %10 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !146
  %11 = getelementptr inbounds %struct.sequence_stack, ptr %9, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !145
  %12 = load <2 x ptr>, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !11
  store <2 x ptr> %12, ptr %9, align 8, !tbaa !11
  store ptr %9, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !146
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @end_sequence() local_unnamed_addr #8 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !146
  %2 = load <2 x ptr>, ptr %1, align 8, !tbaa !11
  store <2 x ptr> %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.sequence_stack, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  store ptr %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !146
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr @free_sequence_stack, align 8, !tbaa !11
  store ptr %5, ptr %3, align 8, !tbaa !145
  store ptr %1, ptr @free_sequence_stack, align 8, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_use(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 41
  br i1 %4, label %5, label %15

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %11, %5 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = tail call ptr @emit_use(ptr noundef %8) #21
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 41
  br i1 %14, label %5, label %15

15:                                               ; preds = %5, %1
  %16 = phi ptr [ %0, %1 ], [ %11, %5 ]
  %17 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %16) #20
  %18 = tail call ptr @emit_insn(ptr noundef %17) #21
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_use(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @start_sequence() #21
  %2 = tail call ptr @emit_use(ptr noundef %0) #21
  %3 = tail call ptr @get_insns() #21
  tail call void @end_sequence() #21
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @force_next_line_note() local_unnamed_addr #17 {
  store i32 -1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 7), align 8, !tbaa !147
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @set_unique_reg_note(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef %1, ptr noundef null) #20
  %5 = add i32 %1, -3
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 15
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = tail call i32 @multiple_sets(ptr noundef nonnull %0) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = icmp eq ptr %4, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5124, ptr noundef nonnull @.str.1) #20
  br label %36

19:                                               ; preds = %13, %7
  %20 = load i32, ptr %2, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 17
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = icmp eq ptr %4, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %26, align 8, !tbaa !6
  tail call void @df_notes_rescan(ptr noundef nonnull %0) #20
  br label %36

27:                                               ; preds = %3
  %28 = icmp eq ptr %4, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %30, align 8, !tbaa !6
  br label %36

31:                                               ; preds = %27
  tail call void @add_reg_note(ptr noundef %0, i32 noundef %1, ptr noundef %2) #20
  br label %33

32:                                               ; preds = %23
  tail call void @add_reg_note(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2) #20
  tail call void @df_notes_rescan(ptr noundef nonnull %0) #20
  br label %33

33:                                               ; preds = %31, %32
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  br label %36

36:                                               ; preds = %19, %18, %16, %33, %29, %25
  %37 = phi ptr [ %4, %29 ], [ %35, %33 ], [ %4, %25 ], [ null, %16 ], [ null, %18 ], [ null, %19 ]
  ret ptr %37
}

; Function Attrs: optsize
declare i32 @multiple_sets(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_notes_rescan(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @classify_insn(ptr noundef %0) #21
  switch i32 %2, label %21 [
    i32 12, label %3
    i32 8, label %5
    i32 9, label %7
    i32 10, label %17
    i32 7, label %19
  ]

3:                                                ; preds = %1
  %4 = tail call ptr @emit_label(ptr noundef %0) #21
  br label %22

5:                                                ; preds = %1
  %6 = tail call ptr @emit_insn(ptr noundef %0) #21
  br label %22

7:                                                ; preds = %1
  %8 = tail call ptr @emit_jump_insn(ptr noundef %0) #21
  %9 = tail call i32 @any_uncondjump_p(ptr noundef %8) #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 27
  br i1 %14, label %15, label %22

15:                                               ; preds = %11, %7
  %16 = tail call ptr @emit_barrier() #21
  br label %22

17:                                               ; preds = %1
  %18 = tail call ptr @emit_call_insn(ptr noundef %0) #21
  br label %22

19:                                               ; preds = %1
  %20 = tail call ptr @emit_debug_insn(ptr noundef %0) #21
  br label %22

21:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5228, ptr noundef nonnull @.str.1) #20
  br label %22

22:                                               ; preds = %15, %11, %21, %19, %17, %5, %3
  %23 = phi ptr [ null, %21 ], [ %20, %19 ], [ %18, %17 ], [ %6, %5 ], [ %0, %3 ], [ %16, %15 ], [ %8, %11 ]
  ret ptr %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @classify_insn(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %45 [
    i16 12, label %46
    i16 26, label %4
    i16 27, label %5
    i16 23, label %6
    i16 15, label %18
  ]

4:                                                ; preds = %1
  br label %46

5:                                                ; preds = %1
  br label %46

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = load ptr, ptr @global_rtl, align 16, !tbaa !11
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %46, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 26
  %17 = select i1 %16, i32 10, i32 8
  br label %46

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = load i32, ptr %20, align 8, !tbaa !41
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = load ptr, ptr @global_rtl, align 16
  %25 = zext nneg i32 %21 to i64
  br label %26

26:                                               ; preds = %23, %43
  %27 = phi i64 [ %25, %23 ], [ %28, %43 ]
  %28 = add nsw i64 %27, -1
  %29 = getelementptr inbounds %struct.rtvec_def, ptr %20, i64 0, i32 1, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = load i32, ptr %30, align 8
  %32 = trunc i32 %31 to i16
  switch i16 %32, label %43 [
    i16 26, label %46
    i16 23, label %33
  ]

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = icmp eq ptr %35, %24
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 26
  br i1 %42, label %46, label %43

43:                                               ; preds = %26, %37
  %44 = icmp ugt i64 %27, 1
  br i1 %44, label %26, label %45, !llvm.loop !148

45:                                               ; preds = %43, %18, %1
  br label %46

46:                                               ; preds = %26, %33, %37, %1, %11, %6, %45, %5, %4
  %47 = phi i32 [ 10, %4 ], [ 9, %5 ], [ 8, %45 ], [ 12, %1 ], [ 9, %6 ], [ %17, %11 ], [ 10, %26 ], [ 9, %33 ], [ 10, %37 ]
  ret i32 %47
}

; Function Attrs: optsize
declare i32 @any_uncondjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @push_to_sequence(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @start_sequence() #21
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi ptr [ %0, %1 ], [ %7, %5 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %2, !llvm.loop !149

9:                                                ; preds = %2, %5
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !64
  store ptr %3, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @push_to_sequence2(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @start_sequence() #21
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !64
  store ptr %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @push_topmost_sequence() local_unnamed_addr #0 {
  tail call void @start_sequence() #21
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi ptr [ getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), %0 ], [ %6, %1 ]
  %3 = phi ptr [ null, %0 ], [ %4, %1 ]
  %4 = load ptr, ptr %2, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.sequence_stack, ptr %4, i64 0, i32 2
  br i1 %5, label %7, label %1, !llvm.loop !150

7:                                                ; preds = %1
  %8 = load <2 x ptr>, ptr %3, align 8, !tbaa !11
  store <2 x ptr> %8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @pop_topmost_sequence() local_unnamed_addr #18 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi ptr [ getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), %0 ], [ %6, %1 ]
  %3 = phi ptr [ null, %0 ], [ %4, %1 ]
  %4 = load ptr, ptr %2, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.sequence_stack, ptr %4, i64 0, i32 2
  br i1 %5, label %7, label %1, !llvm.loop !151

7:                                                ; preds = %1
  %8 = load <2 x ptr>, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !11
  store <2 x ptr> %8, ptr %3, align 8, !tbaa !11
  tail call void @end_sequence() #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @in_sequence_p() local_unnamed_addr #10 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !146
  %2 = icmp ne ptr %1, null
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @copy_insn_1(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %132, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %34 [
    i16 37, label %132
    i16 30, label %132
    i16 32, label %132
    i16 31, label %132
    i16 33, label %132
    i16 45, label %132
    i16 12, label %132
    i16 36, label %132
    i16 46, label %132
    i16 25, label %11
    i16 38, label %6
    i16 35, label %31
  ]

6:                                                ; preds = %3
  %7 = load i32, ptr @copy_insn_n_scratches, align 4, !tbaa !14
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %6
  %10 = zext nneg i32 %7 to i64
  br label %23

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %13) #21
  %19 = icmp ult i32 %18, 53
  br i1 %19, label %132, label %34

20:                                               ; preds = %23
  %21 = add nuw nsw i64 %24, 1
  %22 = icmp eq i64 %21, %10
  br i1 %22, label %34, label %23, !llvm.loop !152

23:                                               ; preds = %9, %20
  %24 = phi i64 [ 0, %9 ], [ %21, %20 ]
  %25 = getelementptr inbounds [30 x ptr], ptr @copy_insn_scratch_in, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %20

28:                                               ; preds = %23
  %29 = getelementptr inbounds [30 x ptr], ptr @copy_insn_scratch_out, i64 0, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  br label %132

31:                                               ; preds = %3
  %32 = tail call zeroext i8 @shared_const_p(ptr noundef nonnull %0) #20
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %132

34:                                               ; preds = %20, %6, %3, %31, %11, %17
  %35 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #20
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, -536870913
  store i32 %37, ptr %35, align 8
  %38 = load i32, ptr %0, align 8
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, -7
  %41 = icmp ult i32 %40, 4
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = and i32 %36, -1660944385
  store i32 %43, ptr %35, align 8
  br label %44

44:                                               ; preds = %34, %42
  %45 = phi i32 [ %37, %34 ], [ %43, %42 ]
  %46 = and i32 %45, 65535
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !6
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %113, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %47
  %53 = load ptr, ptr %52, align 8, !tbaa !11
  %54 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %55 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  br label %56

56:                                               ; preds = %51, %104
  %57 = phi i64 [ 0, %51 ], [ %105, %104 ]
  %58 = phi ptr [ %53, %51 ], [ %59, %104 ]
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  %60 = load i8, ptr %58, align 1, !tbaa !6
  switch i8 %60, label %103 [
    i8 101, label %61
    i8 69, label %68
    i8 86, label %68
    i8 116, label %104
    i8 119, label %104
    i8 105, label %104
    i8 115, label %104
    i8 83, label %104
    i8 117, label %104
    i8 48, label %104
  ]

61:                                               ; preds = %56
  %62 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %57
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %104, label %65

65:                                               ; preds = %61
  %66 = tail call ptr @copy_insn_1(ptr noundef nonnull %63) #21
  %67 = getelementptr inbounds [1 x %union.rtunion_def], ptr %55, i64 0, i64 %57
  store ptr %66, ptr %67, align 8, !tbaa !6
  br label %104

68:                                               ; preds = %56, %56
  %69 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %57
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = load ptr, ptr @orig_asm_constraints_vector, align 8, !tbaa !11
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load ptr, ptr @copy_asm_constraints_vector, align 8, !tbaa !11
  %75 = getelementptr inbounds [1 x %union.rtunion_def], ptr %55, i64 0, i64 %57
  store ptr %74, ptr %75, align 8, !tbaa !6
  br label %104

76:                                               ; preds = %68
  %77 = load ptr, ptr @orig_asm_operands_vector, align 8, !tbaa !11
  %78 = icmp eq ptr %70, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load ptr, ptr @copy_asm_operands_vector, align 8, !tbaa !11
  %81 = getelementptr inbounds [1 x %union.rtunion_def], ptr %55, i64 0, i64 %57
  store ptr %80, ptr %81, align 8, !tbaa !6
  br label %104

82:                                               ; preds = %76
  %83 = icmp eq ptr %70, null
  br i1 %83, label %104, label %84

84:                                               ; preds = %82
  %85 = load i32, ptr %70, align 8, !tbaa !41
  %86 = tail call ptr @rtvec_alloc(i32 noundef %85) #20
  %87 = getelementptr inbounds [1 x %union.rtunion_def], ptr %55, i64 0, i64 %57
  store ptr %86, ptr %87, align 8, !tbaa !6
  %88 = load i32, ptr %86, align 8, !tbaa !41
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %84, %90
  %91 = phi i64 [ %98, %90 ], [ 0, %84 ]
  %92 = load ptr, ptr %69, align 8, !tbaa !6
  %93 = getelementptr inbounds %struct.rtvec_def, ptr %92, i64 0, i32 1, i64 %91
  %94 = load ptr, ptr %93, align 8, !tbaa !11
  %95 = tail call ptr @copy_insn_1(ptr noundef %94) #21
  %96 = load ptr, ptr %87, align 8, !tbaa !6
  %97 = getelementptr inbounds %struct.rtvec_def, ptr %96, i64 0, i32 1, i64 %91
  store ptr %95, ptr %97, align 8, !tbaa !11
  %98 = add nuw nsw i64 %91, 1
  %99 = load ptr, ptr %87, align 8, !tbaa !6
  %100 = load i32, ptr %99, align 8, !tbaa !41
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %90, label %104, !llvm.loop !153

103:                                              ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5509, ptr noundef nonnull @.str.1) #20
  br label %104

104:                                              ; preds = %90, %84, %103, %65, %61, %79, %82, %73, %56, %56, %56, %56, %56, %56, %56
  %105 = add nuw nsw i64 %57, 1
  %106 = load i32, ptr %35, align 8
  %107 = and i32 %106, 65535
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !6
  %111 = zext i8 %110 to i64
  %112 = icmp ult i64 %105, %111
  br i1 %112, label %56, label %113, !llvm.loop !154

113:                                              ; preds = %104, %44
  switch i16 %5, label %132 [
    i16 38, label %114
    i16 17, label %123
  ]

114:                                              ; preds = %113
  %115 = load i32, ptr @copy_insn_n_scratches, align 4, !tbaa !14
  %116 = add nsw i32 %115, 1
  store i32 %116, ptr @copy_insn_n_scratches, align 4, !tbaa !14
  %117 = icmp slt i32 %115, 30
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5515, ptr noundef nonnull @.str.1) #20
  br label %119

119:                                              ; preds = %114, %118
  %120 = sext i32 %115 to i64
  %121 = getelementptr inbounds [30 x ptr], ptr @copy_insn_scratch_in, i64 0, i64 %120
  store ptr %0, ptr %121, align 8, !tbaa !11
  %122 = getelementptr inbounds [30 x ptr], ptr @copy_insn_scratch_out, i64 0, i64 %120
  store ptr %35, ptr %122, align 8, !tbaa !11
  br label %132

123:                                              ; preds = %113
  %124 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !6
  store ptr %125, ptr @orig_asm_operands_vector, align 8, !tbaa !11
  %126 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !6
  store ptr %127, ptr @copy_asm_operands_vector, align 8, !tbaa !11
  %128 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !6
  store ptr %129, ptr @orig_asm_constraints_vector, align 8, !tbaa !11
  %130 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !6
  store ptr %131, ptr @copy_asm_constraints_vector, align 8, !tbaa !11
  br label %132

132:                                              ; preds = %119, %123, %113, %31, %17, %3, %3, %3, %3, %3, %3, %3, %3, %3, %1, %28
  %133 = phi ptr [ %30, %28 ], [ null, %1 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %17 ], [ %0, %31 ], [ %35, %113 ], [ %35, %123 ], [ %35, %119 ]
  ret ptr %133
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @copy_insn(ptr noundef %0) local_unnamed_addr #0 {
  store i32 0, ptr @copy_insn_n_scratches, align 4, !tbaa !14
  store ptr null, ptr @orig_asm_operands_vector, align 8, !tbaa !11
  store ptr null, ptr @orig_asm_constraints_vector, align 8, !tbaa !11
  store ptr null, ptr @copy_asm_operands_vector, align 8, !tbaa !11
  store ptr null, ptr @copy_asm_constraints_vector, align 8, !tbaa !11
  %2 = tail call ptr @copy_insn_1(ptr noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_emit() local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), i8 0, i64 16, i1 false)
  %1 = load ptr, ptr @compiler_params, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.param_info, ptr %1, i64 117, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !67
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !66
  store i32 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !69
  store i32 58, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !35
  store i32 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 7), align 8, !tbaa !147
  %5 = load i32, ptr @label_num, align 4, !tbaa !14
  store i32 %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 1), align 4, !tbaa !46
  store ptr null, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !146
  store i32 158, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 8), align 4, !tbaa !36
  %6 = tail call ptr @xcalloc(i64 noundef 158, i64 noundef 1) #20
  store ptr %6, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !37
  %7 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 8), align 4, !tbaa !36
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call ptr @ggc_alloc_stat(i64 noundef %9) #20
  store ptr %10, ptr @regno_reg_rtx, align 8, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %10, ptr noundef nonnull align 16 dereferenceable(424) @static_regno_reg_rtx, i64 424, i1 false)
  tail call fastcc void @init_virtual_regs() #21
  %11 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !11
  %12 = load i32, ptr %11, align 8
  %13 = or i32 %12, 1073741824
  store i32 %13, ptr %11, align 8
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !11
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 1073741824
  store i32 %16, ptr %14, align 8
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !11
  %18 = load i32, ptr %17, align 8
  %19 = or i32 %18, 1073741824
  store i32 %19, ptr %17, align 8
  %20 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !11
  %21 = load i32, ptr %20, align 8
  %22 = or i32 %21, 1073741824
  store i32 %22, ptr %20, align 8
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !11
  %24 = load i32, ptr %23, align 8
  %25 = or i32 %24, 1073741824
  store i32 %25, ptr %23, align 8
  %26 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !11
  %27 = load i32, ptr %26, align 8
  %28 = or i32 %27, 1073741824
  store i32 %28, ptr %26, align 8
  %29 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !11
  %30 = load i32, ptr %29, align 8
  %31 = or i32 %30, 1073741824
  store i32 %31, ptr %29, align 8
  %32 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !11
  %33 = load i32, ptr %32, align 8
  %34 = or i32 %33, 1073741824
  store i32 %34, ptr %32, align 8
  %35 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !11
  %36 = load i32, ptr %35, align 8
  %37 = or i32 %36, 1073741824
  store i32 %37, ptr %35, align 8
  %38 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !37
  %39 = getelementptr inbounds i8, ptr %38, i64 7
  store i8 32, ptr %39, align 1, !tbaa !6
  %40 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !37
  %41 = getelementptr inbounds i8, ptr %40, i64 20
  store i8 32, ptr %41, align 1, !tbaa !6
  %42 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !37
  %43 = getelementptr inbounds i8, ptr %42, i64 6
  store i8 32, ptr %43, align 1, !tbaa !6
  %44 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !37
  %45 = getelementptr inbounds i8, ptr %44, i64 16
  store i8 32, ptr %45, align 1, !tbaa !6
  %46 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !37
  %47 = getelementptr inbounds i8, ptr %46, i64 53
  store i8 32, ptr %47, align 1, !tbaa !6
  %48 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !37
  %49 = getelementptr inbounds i8, ptr %48, i64 54
  store i8 32, ptr %49, align 1, !tbaa !6
  %50 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !37
  %51 = getelementptr inbounds i8, ptr %50, i64 55
  store i8 32, ptr %51, align 1, !tbaa !6
  %52 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !37
  %53 = getelementptr inbounds i8, ptr %52, i64 56
  store i8 32, ptr %53, align 1, !tbaa !6
  %54 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !37
  %55 = getelementptr inbounds i8, ptr %54, i64 57
  store i8 32, ptr %55, align 1, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @init_virtual_regs() unnamed_addr #15 {
  %1 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !11
  %2 = getelementptr inbounds ptr, ptr %1, i64 53
  %3 = load <2 x ptr>, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !11
  store <2 x ptr> %3, ptr %2, align 8, !tbaa !11
  %4 = getelementptr inbounds ptr, ptr %1, i64 55
  %5 = load <2 x ptr>, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !11
  store <2 x ptr> %5, ptr %4, align 8, !tbaa !11
  %6 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !11
  %7 = getelementptr inbounds ptr, ptr %1, i64 57
  store ptr %6, ptr %7, align 8, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_rtx_CONST_VECTOR(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !6
  %6 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %3
  %7 = load i8, ptr %6, align 1, !tbaa !6
  %8 = zext i8 %7 to i32
  %9 = add nsw i32 %8, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.rtvec_def, ptr %1, i64 0, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = add nsw i32 %8, -2
  %14 = icmp ugt i8 %7, 1
  br i1 %14, label %15, label %24

15:                                               ; preds = %2, %21
  %16 = phi i32 [ %22, %21 ], [ %13, %2 ]
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds %struct.rtvec_def, ptr %1, i64 0, i32 1, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = icmp eq ptr %19, %12
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = add nsw i32 %16, -1
  %23 = icmp sgt i32 %16, 0
  br i1 %23, label %15, label %26, !llvm.loop !155

24:                                               ; preds = %2
  %25 = icmp eq i32 %13, -1
  br i1 %25, label %26, label %43

26:                                               ; preds = %21, %24
  %27 = zext i8 %5 to i64
  %28 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  %30 = icmp eq ptr %12, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = sext i32 %0 to i64
  %33 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !11
  br label %45

35:                                               ; preds = %26
  %36 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %27
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  %38 = icmp eq ptr %12, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = sext i32 %0 to i64
  %41 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !11
  br label %45

43:                                               ; preds = %15, %35, %24
  %44 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 33, i32 noundef %0, ptr noundef %1) #20
  br label %45

45:                                               ; preds = %43, %39, %31
  %46 = phi ptr [ %34, %31 ], [ %42, %39 ], [ %44, %43 ]
  ret ptr %46
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_emit_regs() local_unnamed_addr #0 {
  %1 = load ptr, ptr @reg_attrs_htab, align 8, !tbaa !11
  tail call void @htab_empty(ptr noundef %1) #20
  tail call void @init_reg_modes_target() #20
  %2 = tail call ptr @gen_rtx_fmt__stat(i32 noundef 36, i32 noundef 0) #20
  store ptr %2, ptr @global_rtl, align 16, !tbaa !11
  %3 = tail call ptr @gen_rtx_fmt__stat(i32 noundef 46, i32 noundef 0) #20
  store ptr %3, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 1), align 8, !tbaa !11
  %4 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 7) #21
  store ptr %4, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !11
  %5 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 20) #21
  store ptr %5, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !11
  %6 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 6) #21
  store ptr %6, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !11
  %7 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 16) #21
  store ptr %7, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !11
  %8 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 53) #21
  store ptr %8, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !11
  %9 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 54) #21
  store ptr %9, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !11
  %10 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 55) #21
  store ptr %10, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !11
  %11 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 56) #21
  store ptr %11, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !11
  %12 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 57) #21
  store ptr %12, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !11
  br label %13

13:                                               ; preds = %0, %13
  %14 = phi i64 [ 0, %0 ], [ %20, %13 ]
  %15 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !14
  %17 = trunc i64 %14 to i32
  %18 = tail call ptr @gen_raw_REG(i32 noundef %16, i32 noundef %17) #21
  %19 = getelementptr inbounds [53 x ptr], ptr @static_regno_reg_rtx, i64 0, i64 %14
  store ptr %18, ptr %19, align 8, !tbaa !11
  %20 = add nuw nsw i64 %14, 1
  %21 = icmp eq i64 %20, 53
  br i1 %21, label %22, label %13, !llvm.loop !156

22:                                               ; preds = %13
  %23 = load i32, ptr @flag_pic, align 4, !tbaa !14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr @reload_completed, align 4, !tbaa !14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !11
  %30 = tail call fastcc i32 @rhs_regno(ptr noundef %29) #21
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %35, label %32

32:                                               ; preds = %28, %25
  %33 = phi i32 [ 3, %25 ], [ %30, %28 ]
  %34 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef %33) #21
  br label %35

35:                                               ; preds = %28, %22, %32
  %36 = phi ptr [ %34, %32 ], [ null, %22 ], [ null, %28 ]
  store ptr %36, ptr @pic_offset_table_rtx, align 8, !tbaa !11
  ret void
}

; Function Attrs: optsize
declare void @htab_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_reg_modes_target() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt__stat(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_emit_once() local_unnamed_addr #0 {
  %1 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @const_int_htab_hash, ptr noundef nonnull @const_int_htab_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #20
  store ptr %1, ptr @const_int_htab, align 8, !tbaa !11
  %2 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @const_double_htab_hash, ptr noundef nonnull @const_double_htab_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #20
  store ptr %2, ptr @const_double_htab, align 8, !tbaa !11
  %3 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @const_fixed_htab_hash, ptr noundef nonnull @const_fixed_htab_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #20
  store ptr %3, ptr @const_fixed_htab, align 8, !tbaa !11
  %4 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @mem_attrs_htab_hash, ptr noundef nonnull @mem_attrs_htab_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #20
  store ptr %4, ptr @mem_attrs_htab, align 8, !tbaa !11
  %5 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @reg_attrs_htab_hash, ptr noundef nonnull @reg_attrs_htab_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #20
  store ptr %5, ptr @reg_attrs_htab, align 8, !tbaa !11
  store i32 0, ptr @byte_mode, align 4, !tbaa !14
  store i32 0, ptr @word_mode, align 4, !tbaa !14
  %6 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %30, %0
  %9 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 8), align 8, !tbaa !6
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %50, label %36

11:                                               ; preds = %0, %30
  %12 = phi i8 [ %34, %30 ], [ %6, %0 ]
  %13 = phi i32 [ %32, %30 ], [ 0, %0 ]
  %14 = phi i32 [ %31, %30 ], [ 0, %0 ]
  %15 = zext i8 %12 to i32
  %16 = zext i8 %12 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !6
  %19 = icmp eq i8 %18, 1
  %20 = icmp eq i32 %13, 0
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %26, label %22

22:                                               ; preds = %11
  %23 = icmp eq i8 %18, 4
  %24 = icmp eq i32 %14, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %11
  %27 = phi ptr [ @byte_mode, %11 ], [ @word_mode, %22 ]
  %28 = phi i32 [ %14, %11 ], [ %15, %22 ]
  %29 = phi i32 [ %15, %11 ], [ %13, %22 ]
  store i32 %15, ptr %27, align 4, !tbaa !14
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i32 [ %14, %22 ], [ %28, %26 ]
  %32 = phi i32 [ %13, %22 ], [ %29, %26 ]
  %33 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %16
  %34 = load i8, ptr %33, align 1, !tbaa !6
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %8, label %11, !llvm.loop !157

36:                                               ; preds = %8, %36
  %37 = phi i8 [ %48, %36 ], [ %9, %8 ]
  %38 = phi i32 [ %46, %36 ], [ 0, %8 ]
  %39 = zext i8 %37 to i32
  %40 = zext i8 %37 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !6
  %43 = icmp eq i8 %42, 8
  %44 = icmp eq i32 %38, 0
  %45 = select i1 %43, i1 %44, i1 false
  %46 = select i1 %45, i32 %39, i32 %38
  %47 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %40
  %48 = load i8, ptr %47, align 1, !tbaa !6
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %36, !llvm.loop !158

50:                                               ; preds = %36, %8
  %51 = phi i32 [ 0, %8 ], [ %46, %36 ]
  %52 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_class, i64 0, i64 16), align 16, !tbaa !6
  %53 = zext i8 %52 to i32
  %54 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef %53, i32 noundef 0) #20
  store i32 %54, ptr @ptr_mode, align 4, !tbaa !14
  br label %55

55:                                               ; preds = %50, %55
  %56 = phi i64 [ -64, %50 ], [ %60, %55 ]
  %57 = tail call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %56) #20
  %58 = add nsw i64 %56, 64
  %59 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %58
  store ptr %57, ptr %59, align 8, !tbaa !11
  %60 = add nsw i64 %56, 1
  %61 = icmp eq i64 %60, 65
  br i1 %61, label %62, label %55, !llvm.loop !159

62:                                               ; preds = %55
  %63 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !11
  store ptr %63, ptr @const_true_rtx, align 8, !tbaa !11
  tail call void @real_from_integer(ptr noundef nonnull @dconst0, i32 noundef %51, i64 noundef 0, i64 noundef 0, i32 noundef 0) #20
  tail call void @real_from_integer(ptr noundef nonnull @dconst1, i32 noundef %51, i64 noundef 1, i64 noundef 0, i32 noundef 0) #20
  tail call void @real_from_integer(ptr noundef nonnull @dconst2, i32 noundef %51, i64 noundef 2, i64 noundef 0, i32 noundef 0) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @dconstm1, ptr noundef nonnull align 8 dereferenceable(32) @dconst1, i64 32, i1 false), !tbaa.struct !13
  %64 = load i32, ptr @dconstm1, align 8
  %65 = or i32 %64, 8
  store i32 %65, ptr @dconstm1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @dconsthalf, ptr noundef nonnull align 8 dereferenceable(32) @dconst1, i64 32, i1 false), !tbaa.struct !13
  %66 = load i32, ptr @dconsthalf, align 8
  %67 = and i32 %66, -64
  %68 = add i32 %67, -64
  %69 = and i32 %66, 63
  %70 = or disjoint i32 %68, %69
  store i32 %70, ptr @dconsthalf, align 8
  %71 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 9), align 1
  %72 = icmp eq i8 %71, 0
  %73 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 3), align 1
  %74 = icmp eq i8 %73, 0
  br label %78

75:                                               ; preds = %123
  %76 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 10), align 2, !tbaa !6
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %126, label %129

78:                                               ; preds = %62, %123
  %79 = phi i64 [ 0, %62 ], [ %124, %123 ]
  %80 = icmp eq i64 %79, 0
  %81 = icmp eq i64 %79, 1
  %82 = select i1 %81, ptr @dconst1, ptr @dconst2
  %83 = select i1 %80, ptr @dconst0, ptr %82
  br i1 %10, label %84, label %85

84:                                               ; preds = %85, %78
  br i1 %72, label %103, label %94

85:                                               ; preds = %78, %85
  %86 = phi i8 [ %92, %85 ], [ %9, %78 ]
  %87 = zext i8 %86 to i32
  %88 = tail call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %83, i32 noundef %87) #21
  %89 = zext i8 %86 to i64
  %90 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %79, i64 %89
  store ptr %88, ptr %90, align 8, !tbaa !11
  %91 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %89
  %92 = load i8, ptr %91, align 1, !tbaa !6
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %84, label %85, !llvm.loop !160

94:                                               ; preds = %84, %94
  %95 = phi i8 [ %101, %94 ], [ %71, %84 ]
  %96 = zext i8 %95 to i32
  %97 = tail call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %83, i32 noundef %96) #21
  %98 = zext i8 %95 to i64
  %99 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %79, i64 %98
  store ptr %97, ptr %99, align 8, !tbaa !11
  %100 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %98
  %101 = load i8, ptr %100, align 1, !tbaa !6
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %94, !llvm.loop !161

103:                                              ; preds = %94, %84
  %104 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %79) #21
  %105 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %79
  store ptr %104, ptr %105, align 8, !tbaa !11
  br i1 %7, label %106, label %107

106:                                              ; preds = %107, %103
  br i1 %74, label %123, label %115

107:                                              ; preds = %103, %107
  %108 = phi i8 [ %113, %107 ], [ %6, %103 ]
  %109 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %79) #21
  %110 = zext i8 %108 to i64
  %111 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %79, i64 %110
  store ptr %109, ptr %111, align 8, !tbaa !11
  %112 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %110
  %113 = load i8, ptr %112, align 1, !tbaa !6
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %106, label %107, !llvm.loop !162

115:                                              ; preds = %106, %115
  %116 = phi i8 [ %121, %115 ], [ %73, %106 ]
  %117 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %79) #21
  %118 = zext i8 %116 to i64
  %119 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %79, i64 %118
  store ptr %117, ptr %119, align 8, !tbaa !11
  %120 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %118
  %121 = load i8, ptr %120, align 1, !tbaa !6
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %115, !llvm.loop !163

123:                                              ; preds = %115, %106
  %124 = add nuw nsw i64 %79, 1
  %125 = icmp eq i64 %124, 3
  br i1 %125, label %75, label %78, !llvm.loop !164

126:                                              ; preds = %129, %75
  %127 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 11), align 1, !tbaa !6
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %143, label %146

129:                                              ; preds = %75, %129
  %130 = phi i8 [ %141, %129 ], [ %76, %75 ]
  %131 = zext i8 %130 to i32
  %132 = zext i8 %130 to i64
  %133 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !6
  %135 = zext i8 %134 to i64
  %136 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !11
  %138 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %131, ptr noundef %137, ptr noundef %137) #20
  %139 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %132
  store ptr %138, ptr %139, align 8, !tbaa !11
  %140 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %132
  %141 = load i8, ptr %140, align 1, !tbaa !6
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %126, label %129, !llvm.loop !165

143:                                              ; preds = %146, %126
  %144 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 12), align 4, !tbaa !6
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %160, label %163

146:                                              ; preds = %126, %146
  %147 = phi i8 [ %158, %146 ], [ %127, %126 ]
  %148 = zext i8 %147 to i32
  %149 = zext i8 %147 to i64
  %150 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !6
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !11
  %155 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %148, ptr noundef %154, ptr noundef %154) #20
  %156 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %149
  store ptr %155, ptr %156, align 8, !tbaa !11
  %157 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %149
  %158 = load i8, ptr %157, align 1, !tbaa !6
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %143, label %146, !llvm.loop !166

160:                                              ; preds = %163, %143
  %161 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 17), align 1, !tbaa !6
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %174, label %177

163:                                              ; preds = %143, %163
  %164 = phi i8 [ %172, %163 ], [ %144, %143 ]
  %165 = zext i8 %164 to i32
  %166 = tail call fastcc ptr @gen_const_vector(i32 noundef %165, i32 noundef 0) #21
  %167 = zext i8 %164 to i64
  %168 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %167
  store ptr %166, ptr %168, align 8, !tbaa !11
  %169 = tail call fastcc ptr @gen_const_vector(i32 noundef %165, i32 noundef 1) #21
  %170 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %167
  store ptr %169, ptr %170, align 8, !tbaa !11
  %171 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %167
  %172 = load i8, ptr %171, align 1, !tbaa !6
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %160, label %163, !llvm.loop !167

174:                                              ; preds = %177, %160
  %175 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 4), align 4, !tbaa !6
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %188, label %191

177:                                              ; preds = %160, %177
  %178 = phi i8 [ %186, %177 ], [ %161, %160 ]
  %179 = zext i8 %178 to i32
  %180 = tail call fastcc ptr @gen_const_vector(i32 noundef %179, i32 noundef 0) #21
  %181 = zext i8 %178 to i64
  %182 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %181
  store ptr %180, ptr %182, align 8, !tbaa !11
  %183 = tail call fastcc ptr @gen_const_vector(i32 noundef %179, i32 noundef 1) #21
  %184 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %181
  store ptr %183, ptr %184, align 8, !tbaa !11
  %185 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %181
  %186 = load i8, ptr %185, align 1, !tbaa !6
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %174, label %177, !llvm.loop !168

188:                                              ; preds = %191, %174
  %189 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 5), align 1, !tbaa !6
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %204, label %207

191:                                              ; preds = %174, %191
  %192 = phi i8 [ %202, %191 ], [ %175, %174 ]
  %193 = zext i8 %192 to i32
  %194 = add nsw i32 %193, -20
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %195
  %197 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %195, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %196, i8 0, i64 16, i1 false)
  store i32 %193, ptr %197, align 8, !tbaa !169
  %198 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %196, i32 noundef %193) #21
  %199 = zext i8 %192 to i64
  %200 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %199
  store ptr %198, ptr %200, align 8, !tbaa !11
  %201 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %199
  %202 = load i8, ptr %201, align 1, !tbaa !6
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %188, label %191, !llvm.loop !172

204:                                              ; preds = %207, %188
  %205 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 6), align 2, !tbaa !6
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %220, label %223

207:                                              ; preds = %188, %207
  %208 = phi i8 [ %218, %207 ], [ %189, %188 ]
  %209 = zext i8 %208 to i32
  %210 = add nsw i32 %209, -20
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %211
  %213 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %211, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %212, i8 0, i64 16, i1 false)
  store i32 %209, ptr %213, align 8, !tbaa !169
  %214 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %212, i32 noundef %209) #21
  %215 = zext i8 %208 to i64
  %216 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %215
  store ptr %214, ptr %216, align 8, !tbaa !11
  %217 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %215
  %218 = load i8, ptr %217, align 1, !tbaa !6
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %204, label %207, !llvm.loop !173

220:                                              ; preds = %244, %204
  %221 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 7), align 1, !tbaa !6
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %251, label %254

223:                                              ; preds = %204, %244
  %224 = phi i8 [ %249, %244 ], [ %205, %204 ]
  %225 = zext i8 %224 to i32
  %226 = add nsw i32 %225, -20
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %227
  %229 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %227, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %228, i8 0, i64 16, i1 false)
  store i32 %225, ptr %229, align 8, !tbaa !169
  %230 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %228, i32 noundef %225) #21
  %231 = zext i8 %224 to i64
  %232 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %231
  store ptr %230, ptr %232, align 8, !tbaa !11
  %233 = add nsw i32 %225, -30
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [8 x %struct.fixed_value], ptr @fconst1, i64 0, i64 %234
  %236 = getelementptr inbounds %struct.double_int, ptr %235, i64 0, i32 1
  %237 = getelementptr inbounds [8 x %struct.fixed_value], ptr @fconst1, i64 0, i64 %234, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %235, i8 0, i64 16, i1 false)
  store i32 %225, ptr %237, align 8, !tbaa !169
  %238 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %231
  %239 = load i8, ptr %238, align 1, !tbaa !6
  %240 = zext i8 %239 to i64
  %241 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %231
  %242 = load i8, ptr %241, align 1, !tbaa !6
  switch i8 %242, label %243 [
    i8 4, label %244
    i8 13, label %244
    i8 6, label %244
    i8 15, label %244
  ]

243:                                              ; preds = %223
  br label %244

244:                                              ; preds = %223, %223, %223, %223, %243
  %245 = phi i32 [ 1, %223 ], [ 0, %243 ], [ 1, %223 ], [ 1, %223 ], [ 1, %223 ]
  tail call void @lshift_double(i64 noundef 1, i64 noundef 0, i64 noundef %240, i32 noundef 128, ptr noundef nonnull %235, ptr noundef nonnull %236, i32 noundef %245) #20
  %246 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %235, i32 noundef %225) #21
  %247 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %231
  store ptr %246, ptr %247, align 8, !tbaa !11
  %248 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %231
  %249 = load i8, ptr %248, align 1, !tbaa !6
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %220, label %223, !llvm.loop !174

251:                                              ; preds = %275, %220
  %252 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 13), align 1, !tbaa !6
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %282, label %285

254:                                              ; preds = %220, %275
  %255 = phi i8 [ %280, %275 ], [ %221, %220 ]
  %256 = zext i8 %255 to i32
  %257 = add nsw i32 %256, -20
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %258
  %260 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %258, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %259, i8 0, i64 16, i1 false)
  store i32 %256, ptr %260, align 8, !tbaa !169
  %261 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %259, i32 noundef %256) #21
  %262 = zext i8 %255 to i64
  %263 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %262
  store ptr %261, ptr %263, align 8, !tbaa !11
  %264 = add nsw i32 %256, -30
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds [8 x %struct.fixed_value], ptr @fconst1, i64 0, i64 %265
  %267 = getelementptr inbounds %struct.double_int, ptr %266, i64 0, i32 1
  %268 = getelementptr inbounds [8 x %struct.fixed_value], ptr @fconst1, i64 0, i64 %265, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %266, i8 0, i64 16, i1 false)
  store i32 %256, ptr %268, align 8, !tbaa !169
  %269 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %262
  %270 = load i8, ptr %269, align 1, !tbaa !6
  %271 = zext i8 %270 to i64
  %272 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %262
  %273 = load i8, ptr %272, align 1, !tbaa !6
  switch i8 %273, label %274 [
    i8 4, label %275
    i8 13, label %275
    i8 6, label %275
    i8 15, label %275
  ]

274:                                              ; preds = %254
  br label %275

275:                                              ; preds = %254, %254, %254, %254, %274
  %276 = phi i32 [ 1, %254 ], [ 0, %274 ], [ 1, %254 ], [ 1, %254 ], [ 1, %254 ]
  tail call void @lshift_double(i64 noundef 1, i64 noundef 0, i64 noundef %271, i32 noundef 128, ptr noundef nonnull %266, ptr noundef nonnull %267, i32 noundef %276) #20
  %277 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %266, i32 noundef %256) #21
  %278 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %262
  store ptr %277, ptr %278, align 8, !tbaa !11
  %279 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %262
  %280 = load i8, ptr %279, align 1, !tbaa !6
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %251, label %254, !llvm.loop !175

282:                                              ; preds = %285, %251
  %283 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 14), align 2, !tbaa !6
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %294, label %297

285:                                              ; preds = %251, %285
  %286 = phi i8 [ %292, %285 ], [ %252, %251 ]
  %287 = zext i8 %286 to i32
  %288 = tail call fastcc ptr @gen_const_vector(i32 noundef %287, i32 noundef 0) #21
  %289 = zext i8 %286 to i64
  %290 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %289
  store ptr %288, ptr %290, align 8, !tbaa !11
  %291 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %289
  %292 = load i8, ptr %291, align 1, !tbaa !6
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %282, label %285, !llvm.loop !176

294:                                              ; preds = %297, %282
  %295 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 15), align 1, !tbaa !6
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %306, label %309

297:                                              ; preds = %282, %297
  %298 = phi i8 [ %304, %297 ], [ %283, %282 ]
  %299 = zext i8 %298 to i32
  %300 = tail call fastcc ptr @gen_const_vector(i32 noundef %299, i32 noundef 0) #21
  %301 = zext i8 %298 to i64
  %302 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %301
  store ptr %300, ptr %302, align 8, !tbaa !11
  %303 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %301
  %304 = load i8, ptr %303, align 1, !tbaa !6
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %294, label %297, !llvm.loop !177

306:                                              ; preds = %309, %294
  %307 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 16), align 16, !tbaa !6
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %320, label %322

309:                                              ; preds = %294, %309
  %310 = phi i8 [ %318, %309 ], [ %295, %294 ]
  %311 = zext i8 %310 to i32
  %312 = tail call fastcc ptr @gen_const_vector(i32 noundef %311, i32 noundef 0) #21
  %313 = zext i8 %310 to i64
  %314 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %313
  store ptr %312, ptr %314, align 8, !tbaa !11
  %315 = tail call fastcc ptr @gen_const_vector(i32 noundef %311, i32 noundef 1) #21
  %316 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %313
  store ptr %315, ptr %316, align 8, !tbaa !11
  %317 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %313
  %318 = load i8, ptr %317, align 1, !tbaa !6
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %306, label %309, !llvm.loop !178

320:                                              ; preds = %322, %306
  %321 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  br label %333

322:                                              ; preds = %306, %322
  %323 = phi i8 [ %331, %322 ], [ %307, %306 ]
  %324 = zext i8 %323 to i32
  %325 = tail call fastcc ptr @gen_const_vector(i32 noundef %324, i32 noundef 0) #21
  %326 = zext i8 %323 to i64
  %327 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %326
  store ptr %325, ptr %327, align 8, !tbaa !11
  %328 = tail call fastcc ptr @gen_const_vector(i32 noundef %324, i32 noundef 1) #21
  %329 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %326
  store ptr %328, ptr %329, align 8, !tbaa !11
  %330 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %326
  %331 = load i8, ptr %330, align 1, !tbaa !6
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %320, label %322, !llvm.loop !179

333:                                              ; preds = %320, %340
  %334 = phi i64 [ 2, %320 ], [ %341, %340 ]
  %335 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %334
  %336 = load i8, ptr %335, align 1, !tbaa !6
  %337 = icmp eq i8 %336, 1
  br i1 %337, label %338, label %340

338:                                              ; preds = %333
  %339 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %334
  store ptr %321, ptr %339, align 8, !tbaa !11
  br label %340

340:                                              ; preds = %333, %338
  %341 = add nuw nsw i64 %334, 1
  %342 = icmp eq i64 %341, 87
  br i1 %342, label %343, label %333, !llvm.loop !180

343:                                              ; preds = %340
  store ptr %321, ptr getelementptr inbounds ([3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 0, i64 13), align 8, !tbaa !11
  %344 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !11
  store ptr %344, ptr getelementptr inbounds ([3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 13), align 16, !tbaa !11
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @const_int_htab_hash(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !6
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @const_int_htab_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !6
  %5 = load i64, ptr %1, align 8, !tbaa !9
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @const_double_htab_hash(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 16711680
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  br i1 %4, label %6, label %12

6:                                                ; preds = %1
  %7 = load i64, ptr %5, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load i64, ptr %8, align 8, !tbaa !6
  %10 = xor i64 %9, %7
  %11 = trunc i64 %10 to i32
  br label %18

12:                                               ; preds = %1
  %13 = tail call i32 @real_hash(ptr noundef nonnull %5) #20
  %14 = load i32, ptr %0, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = xor i32 %16, %13
  br label %18

18:                                               ; preds = %12, %6
  %19 = phi i32 [ %11, %6 ], [ %17, %12 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @const_double_htab_eq(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = load i32, ptr %1, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = icmp eq i32 %5, 0
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  br i1 %11, label %13, label %25

13:                                               ; preds = %10
  %14 = load i64, ptr %12, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !6
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load i64, ptr %19, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load i64, ptr %21, align 8, !tbaa !6
  %23 = icmp eq i64 %20, %22
  %24 = zext i1 %23 to i32
  br label %29

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %27 = tail call zeroext i8 @real_identical(ptr noundef nonnull %12, ptr noundef nonnull %26) #20
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %13, %18, %2, %25
  %30 = phi i32 [ %28, %25 ], [ 0, %2 ], [ 0, %13 ], [ %24, %18 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @const_fixed_htab_hash(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = tail call i32 @fixed_hash(ptr noundef nonnull %2) #20
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = xor i32 %6, %3
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @const_fixed_htab_eq(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %0, align 8
  %4 = load i32, ptr %1, align 8
  %5 = xor i32 %4, %3
  %6 = and i32 %5, 16711680
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %11 = tail call zeroext i8 @fixed_identical(ptr noundef nonnull %9, ptr noundef nonnull %10) #20
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi i32 [ %12, %8 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @mem_attrs_htab_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !21
  %6 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !6
  %14 = mul nsw i64 %13, 50000
  br label %15

15:                                               ; preds = %1, %11
  %16 = phi i64 [ %14, %11 ], [ 0, %1 ]
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !6
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
  %34 = load ptr, ptr %0, align 8, !tbaa !17
  %35 = tail call i32 @iterative_hash_expr(ptr noundef %34, i32 noundef 0) #20
  %36 = trunc i64 %33 to i32
  %37 = xor i32 %35, %36
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @mem_attrs_htab_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !60
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %44

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !21
  %23 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !21
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 5
  %28 = load i8, ptr %27, align 8, !tbaa !22
  %29 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 5
  %30 = load i8, ptr %29, align 8, !tbaa !22
  %31 = icmp eq i8 %28, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load ptr, ptr %0, align 8, !tbaa !17
  %34 = load ptr, ptr %1, align 8, !tbaa !17
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = icmp eq ptr %33, null
  %38 = icmp eq ptr %34, null
  %39 = or i1 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @operand_equal_p(ptr noundef nonnull %33, ptr noundef nonnull %34, i32 noundef 0) #20
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %32, %40, %36, %26, %20, %14, %8, %2
  %45 = phi i32 [ 0, %26 ], [ 0, %20 ], [ 0, %14 ], [ 0, %8 ], [ 0, %2 ], [ 1, %32 ], [ 0, %36 ], [ %43, %40 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @reg_attrs_htab_hash(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.reg_attrs, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !40
  %4 = mul nsw i64 %3, 1000
  %5 = load ptr, ptr %0, align 8, !tbaa !38
  %6 = ptrtoint ptr %5 to i64
  %7 = xor i64 %4, %6
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @reg_attrs_htab_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = load ptr, ptr %1, align 8, !tbaa !38
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.reg_attrs, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.reg_attrs, ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !40
  %11 = icmp eq i64 %8, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %6 ]
  ret i32 %14
}

; Function Attrs: optsize
declare void @real_from_integer(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gen_const_vector(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !6
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %3
  %8 = load i8, ptr %7, align 1, !tbaa !6
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !6
  %12 = icmp eq i8 %11, 9
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5626, ptr noundef nonnull @.str.1) #20
  br label %14

14:                                               ; preds = %2, %13
  %15 = tail call ptr @rtvec_alloc(i32 noundef %6) #20
  %16 = zext nneg i32 %1 to i64
  %17 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %16, i64 %9
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5632, ptr noundef nonnull @.str.1) #20
  br label %21

21:                                               ; preds = %14, %20
  %22 = icmp eq i8 %5, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %17, align 8, !tbaa !11
  %25 = zext i8 %5 to i64
  %26 = add nuw nsw i64 %25, 1
  %27 = and i64 %26, 510
  %28 = add nsw i64 %25, -1
  %29 = insertelement <2 x i64> poison, i64 %28, i64 0
  %30 = shufflevector <2 x i64> %29, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %31

31:                                               ; preds = %43, %23
  %32 = phi i64 [ 0, %23 ], [ %44, %43 ]
  %33 = phi <2 x i64> [ <i64 0, i64 1>, %23 ], [ %45, %43 ]
  %34 = icmp ule <2 x i64> %33, %30
  %35 = extractelement <2 x i1> %34, i64 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rtvec_def, ptr %15, i64 0, i32 1, i64 %32
  store ptr %24, ptr %37, align 8, !tbaa !11
  br label %38

38:                                               ; preds = %36, %31
  %39 = extractelement <2 x i1> %34, i64 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = or disjoint i64 %32, 1
  %42 = getelementptr inbounds %struct.rtvec_def, ptr %15, i64 0, i32 1, i64 %41
  store ptr %24, ptr %42, align 8, !tbaa !11
  br label %43

43:                                               ; preds = %40, %38
  %44 = add i64 %32, 2
  %45 = add <2 x i64> %33, <i64 2, i64 2>
  %46 = icmp eq i64 %44, %27
  br i1 %46, label %47, label %31, !llvm.loop !181

47:                                               ; preds = %43, %21
  %48 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 33, i32 noundef %0, ptr noundef %15) #20
  ret ptr %48
}

; Function Attrs: optsize
declare void @lshift_double(i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @real_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @real_identical(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @fixed_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @fixed_identical(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_copy_of_insn_after(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %49 [
    i16 8, label %5
    i16 9, label %10
    i16 7, label %15
    i16 10, label %20
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = tail call ptr @copy_insn(ptr noundef %7) #21
  %9 = tail call ptr @emit_insn_after(ptr noundef %8, ptr noundef %1) #21
  br label %50

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = tail call ptr @copy_insn(ptr noundef %12) #21
  %14 = tail call ptr @emit_jump_insn_after(ptr noundef %13, ptr noundef %1) #21
  br label %50

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = tail call ptr @copy_insn(ptr noundef %17) #21
  %19 = tail call ptr @emit_debug_insn_after(ptr noundef %18, ptr noundef %1) #21
  br label %50

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = tail call ptr @copy_insn(ptr noundef %22) #21
  %24 = tail call ptr @emit_call_insn_after(ptr noundef %23, ptr noundef %1) #21
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = tail call ptr @copy_insn(ptr noundef nonnull %26) #21
  %30 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %29, ptr %30, align 8, !tbaa !6
  br label %31

31:                                               ; preds = %28, %20
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 16777216
  %34 = load i32, ptr %24, align 8
  %35 = and i32 %34, -16777217
  %36 = or disjoint i32 %35, %33
  store i32 %36, ptr %24, align 8
  %37 = load i32, ptr %0, align 8
  %38 = and i32 %37, 67108864
  %39 = and i32 %36, -67108865
  %40 = or disjoint i32 %39, %38
  store i32 %40, ptr %24, align 8
  %41 = load i32, ptr %0, align 8
  %42 = and i32 %41, -2147483648
  %43 = and i32 %40, 2147483647
  %44 = or disjoint i32 %43, %42
  store i32 %44, ptr %24, align 8
  %45 = load i32, ptr %0, align 8
  %46 = and i32 %45, 33554432
  %47 = and i32 %44, -33554433
  %48 = or disjoint i32 %47, %46
  store i32 %48, ptr %24, align 8
  br label %50

49:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6007, ptr noundef nonnull @.str.1) #20
  br label %50

50:                                               ; preds = %49, %31, %15, %10, %5
  %51 = phi ptr [ undef, %49 ], [ %24, %31 ], [ %19, %15 ], [ %14, %10 ], [ %9, %5 ]
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  tail call void @mark_jump_label(ptr noundef %53, ptr noundef %51, i32 noundef 0) #20
  %54 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 2
  store i32 %55, ptr %56, align 8, !tbaa !6
  %57 = load i32, ptr %0, align 8
  %58 = and i32 %57, 1073741824
  %59 = load i32, ptr %51, align 8
  %60 = and i32 %59, -1073741825
  %61 = or disjoint i32 %60, %58
  store i32 %61, ptr %51, align 8
  %62 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %84, label %65

65:                                               ; preds = %50, %80
  %66 = phi ptr [ %82, %80 ], [ %63, %50 ]
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = icmp eq i32 %69, 10
  br i1 %70, label %80, label %71

71:                                               ; preds = %65
  %72 = and i32 %67, 65535
  %73 = icmp eq i32 %72, 3
  %74 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  br i1 %73, label %76, label %78

76:                                               ; preds = %71
  %77 = tail call ptr @copy_insn_1(ptr noundef %75) #21
  br label %78

78:                                               ; preds = %71, %76
  %79 = phi ptr [ %77, %76 ], [ %75, %71 ]
  tail call void @add_reg_note(ptr noundef nonnull %51, i32 noundef %69, ptr noundef %79) #20
  br label %80

80:                                               ; preds = %78, %65
  %81 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %65, !llvm.loop !184

84:                                               ; preds = %80, %50
  %85 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !6
  %87 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 1, i32 1
  store i32 %86, ptr %87, align 8, !tbaa !6
  ret ptr %51
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_hard_reg_clobber(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %0 to i64
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [87 x [53 x ptr]], ptr @hard_reg_clobbers, i64 0, i64 %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = tail call ptr @gen_rtx_REG(i32 noundef %0, i32 noundef %1) #21
  %10 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %9) #20
  store ptr %10, ptr %5, align 8, !tbaa !11
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %10, %8 ], [ %6, %2 ]
  ret ptr %12
}

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) #2

; Function Attrs: optsize
declare i32 @ggc_marked_p(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_mx_reg_attrs(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_reg_attrs(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_mx_mem_attrs(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_mem_attrs(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_m_P7rtx_def4htab(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_n_P7rtx_def4htab(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_m_P9reg_attrs4htab(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_n_P9reg_attrs4htab(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_ggc_m_P9mem_attrs4htab(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_n_P9mem_attrs4htab(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{i64 0, i64 4, !14, i64 0, i64 4, !14, i64 0, i64 4, !14, i64 0, i64 4, !14, i64 0, i64 4, !14, i64 0, i64 4, !14, i64 8, i64 24, !6}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{i64 0, i64 8, !9, i64 8, i64 8, !9, i64 16, i64 4, !14}
!17 = !{!18, !12, i64 0}
!18 = !{!"mem_attrs", !12, i64 0, !12, i64 8, !12, i64 16, !15, i64 24, !15, i64 28, !7, i64 32}
!19 = !{!18, !12, i64 8}
!20 = !{!18, !12, i64 16}
!21 = !{!18, !15, i64 28}
!22 = !{!18, !7, i64 32}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = !{!27, !15, i64 452}
!27 = !{!"rtl_data", !28, i64 0, !29, i64 40, !30, i64 96, !31, i64 112, !33, i64 208, !34, i64 248, !15, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368, !12, i64 376, !12, i64 384, !12, i64 392, !10, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !15, i64 432, !15, i64 436, !15, i64 440, !15, i64 444, !15, i64 448, !15, i64 452, !12, i64 456, !7, i64 464, !7, i64 465, !7, i64 466, !7, i64 467, !7, i64 468, !7, i64 469, !7, i64 470, !7, i64 471, !7, i64 472, !7, i64 473, !7, i64 474, !7, i64 475, !7, i64 476, !7, i64 477, !7, i64 478, !7, i64 479, !7, i64 480, !7, i64 481, !7, i64 482, !7, i64 483, !7, i64 484, !7, i64 485}
!28 = !{!"expr_status", !15, i64 0, !15, i64 4, !15, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!29 = !{!"emit_status", !15, i64 0, !15, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !12, i64 48}
!30 = !{!"varasm_status", !12, i64 0, !15, i64 8}
!31 = !{!"incoming_args", !15, i64 0, !15, i64 4, !15, i64 8, !12, i64 16, !32, i64 24, !12, i64 88}
!32 = !{!"ix86_args", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60}
!33 = !{!"function_subsections", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!34 = !{!"rtl_eh", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !7, i64 48}
!35 = !{!27, !15, i64 40}
!36 = !{!27, !15, i64 84}
!37 = !{!27, !12, i64 88}
!38 = !{!39, !12, i64 0}
!39 = !{!"reg_attrs", !12, i64 0, !10, i64 8}
!40 = !{!39, !10, i64 8}
!41 = !{!42, !15, i64 0}
!42 = !{!"rtvec_def", !15, i64 0, !7, i64 8}
!43 = distinct !{!43, !24}
!44 = !{i32 0, i32 2}
!45 = distinct !{!45, !24}
!46 = !{!27, !15, i64 44}
!47 = !{i32 0, i32 256}
!48 = !{!49, !12, i64 1184}
!49 = !{!"gcc_target", !50, i64 0, !52, i64 368, !53, i64 664, !15, i64 744, !12, i64 752, !12, i64 760, !12, i64 768, !12, i64 776, !12, i64 784, !12, i64 792, !12, i64 800, !12, i64 808, !12, i64 816, !12, i64 824, !12, i64 832, !12, i64 840, !12, i64 848, !12, i64 856, !12, i64 864, !12, i64 872, !12, i64 880, !12, i64 888, !12, i64 896, !12, i64 904, !12, i64 912, !12, i64 920, !12, i64 928, !12, i64 936, !12, i64 944, !12, i64 952, !12, i64 960, !12, i64 968, !12, i64 976, !12, i64 984, !12, i64 992, !12, i64 1000, !12, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048, !12, i64 1056, !10, i64 1064, !10, i64 1072, !12, i64 1080, !12, i64 1088, !12, i64 1096, !12, i64 1104, !12, i64 1112, !12, i64 1120, !12, i64 1128, !12, i64 1136, !12, i64 1144, !12, i64 1152, !12, i64 1160, !12, i64 1168, !54, i64 1176, !12, i64 1232, !12, i64 1240, !12, i64 1248, !12, i64 1256, !12, i64 1264, !12, i64 1272, !12, i64 1280, !12, i64 1288, !12, i64 1296, !12, i64 1304, !12, i64 1312, !12, i64 1320, !12, i64 1328, !12, i64 1336, !12, i64 1344, !12, i64 1352, !12, i64 1360, !12, i64 1368, !12, i64 1376, !12, i64 1384, !12, i64 1392, !12, i64 1400, !12, i64 1408, !12, i64 1416, !12, i64 1424, !12, i64 1432, !12, i64 1440, !12, i64 1448, !12, i64 1456, !10, i64 1464, !55, i64 1472, !12, i64 1664, !12, i64 1672, !12, i64 1680, !12, i64 1688, !12, i64 1696, !12, i64 1704, !12, i64 1712, !12, i64 1720, !12, i64 1728, !12, i64 1736, !12, i64 1744, !12, i64 1752, !12, i64 1760, !12, i64 1768, !12, i64 1776, !56, i64 1784, !57, i64 1792, !58, i64 1896, !59, i64 1968, !12, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!50 = !{!"asm_out", !12, i64 0, !12, i64 8, !12, i64 16, !51, i64 24, !51, i64 56, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360}
!51 = !{!"asm_int_op", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!52 = !{!"sched", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288}
!53 = !{!"vectorize", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72}
!54 = !{!"addr_space", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!55 = !{!"calls", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184}
!56 = !{!"c", !12, i64 0}
!57 = !{!"cxx", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96}
!58 = !{!"emutls", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !7, i64 64, !7, i64 65}
!59 = !{!"target_option_hooks", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!60 = !{!18, !15, i64 24}
!61 = distinct !{!61, !24}
!62 = distinct !{!62, !24}
!63 = distinct !{!63, !24}
!64 = !{!27, !12, i64 48}
!65 = !{!27, !12, i64 56}
!66 = !{!27, !15, i64 72}
!67 = !{!68, !15, i64 8}
!68 = !{!"param_info", !12, i64 0, !15, i64 8, !7, i64 12, !15, i64 16, !15, i64 20, !12, i64 24}
!69 = !{!27, !15, i64 76}
!70 = distinct !{!70, !24}
!71 = distinct !{!71, !24}
!72 = distinct !{!72, !24}
!73 = !{!74, !12, i64 48}
!74 = !{!"function", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !15, i64 104, !15, i64 108, !15, i64 112, !15, i64 116, !15, i64 120, !15, i64 124, !12, i64 128, !15, i64 136, !15, i64 137, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 139, !15, i64 139, !15, i64 139, !15, i64 139, !15, i64 139, !15, i64 139, !15, i64 139}
!75 = distinct !{!75, !24}
!76 = !{!27, !12, i64 368}
!77 = distinct !{!77, !24}
!78 = distinct !{!78, !24}
!79 = distinct !{!79, !24}
!80 = distinct !{!80, !24}
!81 = distinct !{!81, !24}
!82 = distinct !{!82, !24}
!83 = distinct !{!83, !24}
!84 = distinct !{!84, !24}
!85 = distinct !{!85, !24}
!86 = distinct !{!86, !24}
!87 = distinct !{!87, !24}
!88 = distinct !{!88, !24}
!89 = distinct !{!89, !24}
!90 = distinct !{!90, !24}
!91 = distinct !{!91, !24}
!92 = !{!93, !12, i64 8}
!93 = !{!"sequence_stack", !12, i64 0, !12, i64 8, !12, i64 16}
!94 = distinct !{!94, !24}
!95 = distinct !{!95, !24}
!96 = distinct !{!96, !24}
!97 = distinct !{!97, !24}
!98 = distinct !{!98, !24}
!99 = distinct !{!99, !24}
!100 = distinct !{!100, !24}
!101 = distinct !{!101, !24}
!102 = distinct !{!102, !24}
!103 = distinct !{!103, !24}
!104 = distinct !{!104, !24}
!105 = distinct !{!105, !24}
!106 = distinct !{!106, !24}
!107 = distinct !{!107, !24}
!108 = distinct !{!108, !24}
!109 = distinct !{!109, !24}
!110 = !{!111, !12, i64 224}
!111 = !{!"gcc_debug_hooks", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !15, i64 248}
!112 = distinct !{!112, !24}
!113 = distinct !{!113, !24}
!114 = distinct !{!114, !24}
!115 = distinct !{!115, !24}
!116 = distinct !{!116, !24}
!117 = distinct !{!117, !24}
!118 = distinct !{!118, !24}
!119 = distinct !{!119, !24}
!120 = distinct !{!120, !24}
!121 = !{!122, !12, i64 8}
!122 = !{!"rtl_bb_info", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !15, i64 32}
!123 = !{!93, !12, i64 0}
!124 = distinct !{!124, !24}
!125 = !{!122, !12, i64 0}
!126 = distinct !{!126, !24}
!127 = distinct !{!127, !24}
!128 = distinct !{!128, !24}
!129 = distinct !{!129, !24}
!130 = distinct !{!130, !24}
!131 = distinct !{!131, !24}
!132 = distinct !{!132, !24}
!133 = distinct !{!133, !24}
!134 = distinct !{!134, !24}
!135 = distinct !{!135, !24}
!136 = distinct !{!136, !24}
!137 = distinct !{!137, !24}
!138 = distinct !{!138, !24}
!139 = distinct !{!139, !24}
!140 = distinct !{!140, !24}
!141 = distinct !{!141, !24}
!142 = distinct !{!142, !24}
!143 = distinct !{!143, !24}
!144 = distinct !{!144, !24}
!145 = !{!93, !12, i64 16}
!146 = !{!27, !12, i64 64}
!147 = !{!27, !15, i64 80}
!148 = distinct !{!148, !24}
!149 = distinct !{!149, !24}
!150 = distinct !{!150, !24}
!151 = distinct !{!151, !24}
!152 = distinct !{!152, !24}
!153 = distinct !{!153, !24}
!154 = distinct !{!154, !24}
!155 = distinct !{!155, !24}
!156 = distinct !{!156, !24}
!157 = distinct !{!157, !24}
!158 = distinct !{!158, !24}
!159 = distinct !{!159, !24}
!160 = distinct !{!160, !24}
!161 = distinct !{!161, !24}
!162 = distinct !{!162, !24}
!163 = distinct !{!163, !24}
!164 = distinct !{!164, !24}
!165 = distinct !{!165, !24}
!166 = distinct !{!166, !24}
!167 = distinct !{!167, !24}
!168 = distinct !{!168, !24}
!169 = !{!170, !15, i64 16}
!170 = !{!"fixed_value", !171, i64 0, !15, i64 16}
!171 = !{!"", !10, i64 0, !10, i64 8}
!172 = distinct !{!172, !24}
!173 = distinct !{!173, !24}
!174 = distinct !{!174, !24}
!175 = distinct !{!175, !24}
!176 = distinct !{!176, !24}
!177 = distinct !{!177, !24}
!178 = distinct !{!178, !24}
!179 = distinct !{!179, !24}
!180 = distinct !{!180, !24}
!181 = distinct !{!181, !24, !182, !183}
!182 = !{!"llvm.loop.isvectorized", i32 1}
!183 = !{!"llvm.loop.unroll.runtime.disable"}
!184 = distinct !{!184, !24}
