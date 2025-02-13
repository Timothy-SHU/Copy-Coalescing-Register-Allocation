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
define dso_local ptr @gen_raw_REG(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !354 {
  %3 = tail call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef %0, i32 noundef %1) #20
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %1, ptr %4, align 8, !tbaa !355
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_i00_stat(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_rtx_CONST_INT(i32 %0, i64 noundef %1) local_unnamed_addr #0 !prof !358 {
  %3 = alloca i64, align 8
  store i64 %1, ptr %3, align 8, !tbaa !359
  %4 = add i64 %1, 64
  %5 = icmp ult i64 %4, 129
  br i1 %5, label %6, label %9, !prof !361

6:                                                ; preds = %2
  %7 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %4
  %8 = load ptr, ptr %7, align 8, !tbaa !362
  br label %18

9:                                                ; preds = %2
  %10 = load ptr, ptr @const_int_htab, align 8, !tbaa !362
  %11 = trunc i64 %1 to i32
  %12 = call ptr @htab_find_slot_with_hash(ptr noundef %10, ptr noundef nonnull %3, i32 noundef %11, i32 noundef 1) #20
  %13 = load ptr, ptr %12, align 8, !tbaa !362
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18, !prof !364

15:                                               ; preds = %9
  %16 = load i64, ptr %3, align 8, !tbaa !359
  %17 = call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %16) #20
  store ptr %17, ptr %12, align 8, !tbaa !362
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
define dso_local ptr @gen_int_mode(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !365 {
  %3 = tail call i64 @trunc_int_for_mode(i64 noundef %0, i32 noundef %1) #20
  %4 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %3) #21
  ret ptr %4
}

; Function Attrs: optsize
declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @const_double_from_real_value(ptr nocapture noundef readonly byval(%struct.real_value) align 8 %0, i32 noundef %1) local_unnamed_addr #0 !prof !366 {
  %3 = tail call ptr @rtx_alloc_stat(i32 noundef 32) #20
  %4 = load i32, ptr %3, align 8
  %5 = shl i32 %1, 16
  %6 = and i32 %5, 16711680
  %7 = and i32 %4, -16711681
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !367
  %10 = tail call fastcc ptr @lookup_const_double(ptr noundef nonnull %3) #21
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @rtx_alloc_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_const_double(ptr noundef %0) unnamed_addr #0 !prof !366 !PGOFuncName !370 {
  %2 = load ptr, ptr @const_double_htab, align 8, !tbaa !362
  %3 = tail call ptr @htab_find_slot(ptr noundef %2, ptr noundef %0, i32 noundef 1) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !362
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !371

6:                                                ; preds = %1
  store ptr %0, ptr %3, align 8, !tbaa !362
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi ptr [ %0, %6 ], [ %4, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @const_fixed_from_fixed_value(ptr nocapture noundef readonly byval(%struct.fixed_value) align 8 %0, i32 noundef %1) local_unnamed_addr #0 !prof !372 {
  %3 = tail call ptr @rtx_alloc_stat(i32 noundef 31) #20
  %4 = load i32, ptr %3, align 8
  %5 = shl i32 %1, 16
  %6 = and i32 %5, 16711680
  %7 = and i32 %4, -16711681
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !373
  %10 = tail call fastcc ptr @lookup_const_fixed(ptr noundef nonnull %3) #21
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_const_fixed(ptr noundef %0) unnamed_addr #0 !prof !372 !PGOFuncName !374 {
  %2 = load ptr, ptr @const_fixed_htab, align 8, !tbaa !362
  %3 = tail call ptr @htab_find_slot(ptr noundef %2, ptr noundef %0, i32 noundef 1) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !362
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !375

6:                                                ; preds = %1
  store ptr %0, ptr %3, align 8, !tbaa !362
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi ptr [ %0, %6 ], [ %4, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @immed_double_const(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !376 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %19, label %5, !prof !377

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !355
  switch i8 %8, label %9 [
    i8 2, label %10
    i8 3, label %10
    i8 12, label %10
    i8 17, label %10
  ], !prof !378

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 547, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %5, %5, %5, %5, %9
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %12 = load i8, ptr %11, align 1, !tbaa !355
  %13 = icmp ult i8 %12, 9
  br i1 %13, label %14, label %16, !prof !379

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
  store i64 %0, ptr %33, align 8, !tbaa !355
  %34 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  store i64 %1, ptr %34, align 8, !tbaa !355
  %35 = getelementptr i8, ptr %30, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false), !tbaa !355
  %36 = tail call fastcc ptr @lookup_const_double(ptr noundef nonnull %30) #21
  br label %37

37:                                               ; preds = %29, %27, %14
  %38 = phi ptr [ %15, %14 ], [ %28, %27 ], [ %36, %29 ]
  ret ptr %38
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_rtx_REG(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !380 {
  %3 = icmp ne i32 %0, 16
  %4 = load i32, ptr @reload_in_progress, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %53, label %7, !prof !381

7:                                                ; preds = %2
  switch i32 %1, label %26 [
    i32 20, label %8
    i32 6, label %16
    i32 16, label %24
  ], !prof !382

8:                                                ; preds = %7
  %9 = load i32, ptr @reload_completed, align 4, !tbaa !368
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11, !prof !383

11:                                               ; preds = %8
  %12 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !384
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !362
  br label %55

16:                                               ; preds = %7
  %17 = load i32, ptr @reload_completed, align 4, !tbaa !368
  %18 = icmp eq i32 %17, 0
  %19 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %20 = icmp ne i8 %19, 0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %26, !prof !393

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !362
  br label %55

24:                                               ; preds = %7
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !362
  br label %55

26:                                               ; preds = %16, %11, %7
  %27 = load i32, ptr @flag_pic, align 4, !tbaa !368
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29, !prof !394

29:                                               ; preds = %26
  %30 = load i32, ptr @reload_completed, align 4, !tbaa !368
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33, !prof !394

32:                                               ; preds = %29
  switch i32 %1, label %53 [
    i32 3, label %42
    i32 7, label %51
  ], !prof !395

33:                                               ; preds = %29
  %34 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !362
  %35 = tail call fastcc i32 @rhs_regno(ptr noundef %34) #21
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %38, label %49

37:                                               ; preds = %26
  switch i32 %1, label %53 [
    i32 -1, label %42
    i32 7, label %51
  ], !prof !395

38:                                               ; preds = %33
  %39 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !362
  %40 = tail call fastcc i32 @rhs_regno(ptr noundef %39) #21
  %41 = zext i32 %40 to i64
  br label %42

42:                                               ; preds = %32, %37, %38
  %43 = phi i64 [ %41, %38 ], [ 4294967295, %37 ], [ 3, %32 ]
  %44 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !355
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !362
  br label %55

49:                                               ; preds = %33, %42
  %50 = icmp eq i32 %1, 7
  br i1 %50, label %51, label %53, !prof !396

51:                                               ; preds = %32, %37, %49
  %52 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !362
  br label %55

53:                                               ; preds = %32, %37, %49, %2
  %54 = tail call ptr @gen_raw_REG(i32 noundef %0, i32 noundef %1) #21
  br label %55

55:                                               ; preds = %53, %51, %47, %24, %22, %14
  %56 = phi ptr [ %54, %53 ], [ %15, %14 ], [ %23, %22 ], [ %25, %24 ], [ %48, %47 ], [ %52, %51 ]
  ret ptr %56
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !397 !PGOFuncName !398 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !355
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !399 {
  %3 = tail call ptr @gen_rtx_fmt_e0_stat(i32 noundef 43, i32 noundef %0, ptr noundef %1) #20
  %4 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %4, align 8, !tbaa !355
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e0_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_const_mem(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !400 {
  %3 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %1) #21
  %4 = load i32, ptr %3, align 8
  %5 = or i32 %4, 100663296
  store i32 %5, ptr %3, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_frame_mem(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !401 {
  %3 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %1) #21
  %4 = load i32, ptr %3, align 8
  %5 = or i32 %4, 33554432
  store i32 %5, ptr %3, align 8
  %6 = tail call i32 @get_frame_alias_set() #20
  tail call void @set_mem_alias_set(ptr noundef nonnull %3, i32 noundef %6) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_alias_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !402 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !355
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !403

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !404
  %8 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !406
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !407
  br label %25

12:                                               ; preds = %2
  %13 = load i32, ptr %0, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %34, label %17, !prof !408

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !355
  %21 = zext i8 %20 to i64
  %22 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %21) #21
  %23 = load ptr, ptr %3, align 8, !tbaa !355
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25, !prof !409

25:                                               ; preds = %6, %17
  %26 = phi ptr [ %11, %6 ], [ %22, %17 ]
  %27 = phi ptr [ %7, %6 ], [ null, %17 ]
  %28 = phi ptr [ %9, %6 ], [ null, %17 ]
  %29 = phi ptr [ %4, %6 ], [ %23, %17 ]
  %30 = getelementptr inbounds %struct.mem_attrs, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !410
  %32 = getelementptr inbounds %struct.mem_attrs, ptr %29, i64 0, i32 5
  %33 = load i8, ptr %32, align 8, !tbaa !411
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
  store ptr %43, ptr %3, align 8, !tbaa !355
  ret void
}

; Function Attrs: optsize
declare i32 @get_frame_alias_set() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_tmp_stack_mem(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !401 {
  %3 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %1) #21
  %4 = load i32, ptr %3, align 8
  %5 = or i32 %4, 33554432
  store i32 %5, ptr %3, align 8
  %6 = load ptr, ptr @cfun, align 8, !tbaa !362
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
define dso_local zeroext i8 @validate_subreg(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 !prof !412 {
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !355
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !355
  %11 = zext i8 %10 to i32
  %12 = urem i32 %3, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i8 %7 to i32
  %15 = icmp ugt i32 %14, %3
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %86, !prof !413

17:                                               ; preds = %4
  %18 = load i32, ptr @word_mode, align 4, !tbaa !368
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %48, label %20, !prof !414

20:                                               ; preds = %17
  %21 = icmp ugt i8 %10, 3
  br i1 %21, label %22, label %24, !prof !415

22:                                               ; preds = %20
  %23 = icmp ult i8 %7, %10
  br i1 %23, label %24, label %48

24:                                               ; preds = %22, %20
  %25 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %26 = load i8, ptr %25, align 1, !tbaa !355
  %27 = add i8 %26, -10
  %28 = icmp ult i8 %27, 8
  br i1 %28, label %29, label %34, !prof !416

29:                                               ; preds = %24
  %30 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %5
  %31 = load i8, ptr %30, align 1, !tbaa !355
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %48, label %34

34:                                               ; preds = %24, %29
  %35 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %8
  %36 = load i8, ptr %35, align 1, !tbaa !355
  %37 = add i8 %36, -12
  %38 = icmp ult i8 %37, 6
  br i1 %38, label %39, label %44, !prof !417

39:                                               ; preds = %34
  %40 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %8
  %41 = load i8, ptr %40, align 1, !tbaa !355
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, %1
  br i1 %43, label %48, label %44

44:                                               ; preds = %34, %39
  switch i8 %26, label %45 [
    i8 8, label %46
    i8 9, label %46
    i8 11, label %46
    i8 17, label %46
  ], !prof !418

45:                                               ; preds = %44
  switch i8 %36, label %48 [
    i8 8, label %46
    i8 9, label %46
    i8 11, label %46
    i8 17, label %46
  ], !prof !418

46:                                               ; preds = %45, %45, %45, %45, %44, %44, %44, %44
  %47 = icmp eq i8 %7, %10
  br i1 %47, label %48, label %86

48:                                               ; preds = %45, %22, %39, %46, %29, %17
  %49 = icmp ugt i8 %10, %7
  br i1 %49, label %50, label %53, !prof !419

50:                                               ; preds = %48
  %51 = icmp eq i32 %3, 0
  %52 = zext i1 %51 to i8
  br label %86

53:                                               ; preds = %48
  %54 = icmp eq ptr %2, null
  br i1 %54, label %80, label %55, !prof !420

55:                                               ; preds = %53
  %56 = load i32, ptr %2, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 37
  br i1 %58, label %59, label %80, !prof !421

59:                                               ; preds = %55
  %60 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #21
  %61 = icmp ult i32 %60, 53
  br i1 %61, label %62, label %80, !prof !422

62:                                               ; preds = %59
  %63 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %64 = load i8, ptr %63, align 1, !tbaa !355
  %65 = add i8 %64, -10
  %66 = icmp ult i8 %65, 8
  br i1 %66, label %67, label %72, !prof !423

67:                                               ; preds = %62
  %68 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %5
  %69 = load i8, ptr %68, align 1, !tbaa !355
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, %0
  br i1 %71, label %78, label %72

72:                                               ; preds = %62, %67
  %73 = zext nneg i32 %60 to i64
  %74 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !368
  %76 = tail call zeroext i8 @ix86_cannot_change_mode_class(i32 noundef %1, i32 noundef %0, i32 noundef %75) #20
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %86, !prof !424

78:                                               ; preds = %72, %67
  %79 = tail call zeroext i8 @subreg_offset_representable_p(i32 noundef %60, i32 noundef %1, i32 noundef %3, i32 noundef %0) #20
  br label %86

80:                                               ; preds = %59, %55, %53
  %81 = icmp ugt i8 %10, 3
  %82 = and i32 %3, 3
  %83 = icmp eq i32 %82, 0
  %84 = or i1 %81, %83
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
define dso_local noundef i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 !prof !425 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_rtx_SUBREG(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !426 {
  %4 = load i32, ptr %1, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = tail call zeroext i8 @validate_subreg(i32 noundef %0, i32 noundef %6, ptr noundef nonnull %1, i32 noundef %2) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10, !prof !427

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
define dso_local ptr @gen_lowpart_SUBREG(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !428 {
  %3 = tail call ptr @gen_rtx_SUBREG(i32 noundef %0, ptr noundef nonnull %1, i32 noundef 0) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_rtvec(i32 noundef %0, ...) local_unnamed_addr #0 !prof !429 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call void @llvm.va_start(ptr nonnull %2)
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %30, label %4, !prof !430

4:                                                ; preds = %1
  %5 = call ptr @rtvec_alloc(i32 noundef %0) #20
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %29, !prof !431

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
  store ptr %25, ptr %26, align 8, !tbaa !362
  %27 = add nuw nsw i64 %12, 1
  %28 = icmp eq i64 %27, %10
  br i1 %28, label %29, label %11, !prof !432, !llvm.loop !433

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
define dso_local ptr @gen_rtvec_v(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !435 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %17, label %4, !prof !436

4:                                                ; preds = %2
  %5 = tail call ptr @rtvec_alloc(i32 noundef %0) #20
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %17, !prof !437

7:                                                ; preds = %4
  %8 = zext nneg i32 %0 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %15, %9 ]
  %11 = phi ptr [ %1, %7 ], [ %12, %9 ]
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %11, align 8, !tbaa !362
  %14 = getelementptr inbounds %struct.rtvec_def, ptr %5, i64 0, i32 1, i64 %10
  store ptr %13, ptr %14, align 8, !tbaa !362
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %8
  br i1 %16, label %17, label %9, !prof !438, !llvm.loop !439

17:                                               ; preds = %9, %4, %2
  %18 = phi ptr [ null, %2 ], [ %5, %4 ], [ %5, %9 ]
  ret ptr %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @byte_lowpart_offset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 !prof !440 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_reg_rtx(i32 noundef %0) local_unnamed_addr #0 !prof !441 {
  %2 = tail call i32 @get_mode_alignment(i32 noundef %0) #20
  %3 = load i32, ptr @reload_in_progress, align 4, !tbaa !368
  %4 = icmp ne i32 %3, 0
  %5 = load i32, ptr @reload_completed, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %8, label %9, !prof !442

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 863, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %1, %8
  %10 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !443
  %11 = icmp ult i32 %10, %2
  br i1 %11, label %12, label %20, !prof !444

12:                                               ; preds = %9
  %13 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !445
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %20, !prof !446

15:                                               ; preds = %12
  %16 = tail call i32 @ix86_minimum_alignment(ptr noundef null, i32 noundef %0, i32 noundef %2) #20
  %17 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !443
  %18 = icmp ult i32 %17, %16
  br i1 %18, label %19, label %20, !prof !446

19:                                               ; preds = %15
  store i32 %16, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !443
  br label %20

20:                                               ; preds = %15, %19, %12, %9
  %21 = load i32, ptr @generating_concat_p, align 4, !tbaa !368
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23, !prof !447

23:                                               ; preds = %20
  %24 = zext i32 %0 to i64
  %25 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !355
  %27 = and i8 %26, -2
  %28 = icmp eq i8 %27, 10
  br i1 %28, label %31, label %38, !prof !448

29:                                               ; preds = %31, %55
  %30 = phi ptr [ %57, %55 ], [ %37, %31 ]
  ret ptr %30

31:                                               ; preds = %23
  %32 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %24
  %33 = load i8, ptr %32, align 1, !tbaa !355
  %34 = zext i8 %33 to i32
  %35 = tail call ptr @gen_reg_rtx(i32 noundef %34) #21
  %36 = tail call ptr @gen_reg_rtx(i32 noundef %34) #21
  %37 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %0, ptr noundef %35, ptr noundef %36) #20
  br label %29

38:                                               ; preds = %23, %20
  %39 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !449
  %40 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 8), align 4, !tbaa !450
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %55, !prof !451

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !452
  %44 = shl nsw i32 %39, 1
  %45 = sext i32 %44 to i64
  %46 = tail call ptr @xrealloc(ptr noundef %43, i64 noundef %45) #20
  %47 = sext i32 %39 to i64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  tail call void @llvm.memset.p0.i64(ptr align 1 %48, i8 0, i64 %47, i1 false)
  store ptr %46, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !452
  %49 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !362
  %50 = shl nsw i64 %45, 3
  %51 = tail call ptr @ggc_realloc_stat(ptr noundef %49, i64 noundef %50) #20
  %52 = getelementptr inbounds ptr, ptr %51, i64 %47
  %53 = shl nsw i64 %47, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %52, i8 0, i64 %53, i1 false)
  store ptr %51, ptr @regno_reg_rtx, align 8, !tbaa !362
  store i32 %44, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 8), align 4, !tbaa !450
  %54 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !449
  br label %55

55:                                               ; preds = %42, %38
  %56 = phi i32 [ %54, %42 ], [ %39, %38 ]
  %57 = tail call ptr @gen_raw_REG(i32 noundef %0, i32 noundef %56) #21
  %58 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !362
  %59 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !449
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !449
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds ptr, ptr %58, i64 %61
  store ptr %57, ptr %62, align 8, !tbaa !362
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
define dso_local noundef ptr @gen_rtx_REG_offset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !453 {
  %5 = tail call ptr @gen_rtx_REG(i32 noundef %1, i32 noundef %2) #21
  tail call fastcc void @update_reg_offset(ptr noundef %5, ptr noundef %0, i32 noundef %3) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_reg_offset(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !454 !PGOFuncName !455 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !355
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !456

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !457
  %9 = getelementptr inbounds %struct.reg_attrs, ptr %5, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !459
  %11 = trunc i64 %10 to i32
  br label %12

12:                                               ; preds = %3, %7
  %13 = phi ptr [ %8, %7 ], [ null, %3 ]
  %14 = phi i32 [ %11, %7 ], [ 0, %3 ]
  %15 = add i32 %14, %2
  %16 = tail call fastcc ptr @get_reg_attrs(ptr noundef %13, i32 noundef %15) #21
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %16, ptr %17, align 8, !tbaa !355
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !460 !PGOFuncName !461 {
  %3 = alloca %struct.reg_attrs, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = icmp eq ptr %0, null
  %5 = icmp eq i32 %1, 0
  %6 = and i1 %4, %5
  br i1 %6, label %17, label %7, !prof !462

7:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !457
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.reg_attrs, ptr %3, i64 0, i32 1
  store i64 %8, ptr %9, align 8, !tbaa !459
  %10 = load ptr, ptr @reg_attrs_htab, align 8, !tbaa !362
  %11 = call ptr @htab_find_slot(ptr noundef %10, ptr noundef nonnull %3, i32 noundef 1) #20
  %12 = load ptr, ptr %11, align 8, !tbaa !362
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17, !prof !463

14:                                               ; preds = %7
  %15 = call ptr @ggc_alloc_stat(i64 noundef 16) #20
  store ptr %15, ptr %11, align 8, !tbaa !362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %16 = load ptr, ptr %11, align 8, !tbaa !362
  br label %17

17:                                               ; preds = %7, %14, %2
  %18 = phi ptr [ null, %2 ], [ %16, %14 ], [ %12, %7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret ptr %18
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_reg_rtx_offset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !464 {
  %4 = tail call ptr @gen_reg_rtx(i32 noundef %1) #21
  tail call fastcc void @update_reg_offset(ptr noundef %4, ptr noundef %0, i32 noundef %2) #21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @adjust_reg_mode(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !465 {
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
define dso_local void @set_reg_attrs_from_value(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !466 {
  %3 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #21
  %4 = icmp ult i32 %3, 53
  br i1 %4, label %51, label %5, !prof !467

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %51 [
    i16 43, label %8
    i16 37, label %32
  ], !prof !468

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !355
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12, !prof !469

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mem_attrs, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !406
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16, !prof !470

16:                                               ; preds = %12
  %17 = load i32, ptr %14, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 30
  br i1 %19, label %20, label %28, !prof !471

20:                                               ; preds = %16
  %21 = load ptr, ptr %10, align 8, !tbaa !404
  %22 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !355
  %24 = trunc i64 %23 to i32
  %25 = tail call fastcc ptr @get_reg_attrs(ptr noundef %21, i32 noundef %24) #21
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %25, ptr %26, align 8, !tbaa !355
  %27 = load i32, ptr %1, align 8
  br label %28

28:                                               ; preds = %8, %20, %16, %12
  %29 = phi i32 [ %6, %8 ], [ %27, %20 ], [ %6, %16 ], [ %6, %12 ]
  %30 = and i32 %29, 1073741824
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %51, label %49, !prof !472

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !355
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36, !prof !473

36:                                               ; preds = %32
  tail call fastcc void @update_reg_offset(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #21
  %37 = load i32, ptr %1, align 8
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %37, %36 ], [ %6, %32 ]
  %40 = and i32 %39, 1073741824
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42, !prof !474

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !452
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #21
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !355
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
define dso_local void @mark_reg_pointer(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 !prof !475 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 1073741824
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15, !prof !476

6:                                                ; preds = %2
  %7 = or disjoint i32 %3, 1073741824
  store i32 %7, ptr %0, align 8
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %27, label %9, !prof !477

9:                                                ; preds = %6
  %10 = trunc i32 %1 to i8
  %11 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !452
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #21
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  store i8 %10, ptr %14, align 1, !tbaa !355
  br label %27

15:                                               ; preds = %2
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %27, label %17, !prof !478

17:                                               ; preds = %15
  %18 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !452
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #21
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !355
  %23 = zext i8 %22 to i32
  %24 = icmp sgt i32 %23, %1
  br i1 %24, label %25, label %27, !prof !479

25:                                               ; preds = %17
  %26 = trunc i32 %1 to i8
  store i8 %26, ptr %21, align 1, !tbaa !355
  br label %27

27:                                               ; preds = %15, %17, %25, %6, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @gen_reg_rtx_and_attrs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !480 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 255
  %5 = tail call ptr @gen_reg_rtx(i32 noundef %4) #21
  tail call void @set_reg_attrs_from_value(ptr noundef %5, ptr noundef nonnull %0) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_reg_attrs_for_parm(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !401 {
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
  %8 = load ptr, ptr %7, align 8, !tbaa !355
  %9 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !362
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !355
  %13 = icmp eq ptr %12, null
  %14 = zext i1 %13 to i32
  %15 = load i32, ptr %8, align 8, !tbaa !481
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
  %25 = load ptr, ptr %24, align 8, !tbaa !362
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !355
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %31, label %48

31:                                               ; preds = %20
  %32 = load ptr, ptr %18, align 8, !tbaa !355
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %32, align 8, !tbaa !404
  br label %36

36:                                               ; preds = %31, %34
  %37 = phi ptr [ %35, %34 ], [ null, %31 ]
  %38 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !355
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !355
  %42 = trunc i64 %41 to i32
  %43 = tail call fastcc ptr @get_reg_attrs(ptr noundef %37, i32 noundef %42) #21
  %44 = load ptr, ptr %26, align 8, !tbaa !355
  %45 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %43, ptr %45, align 8, !tbaa !355
  %46 = load ptr, ptr %7, align 8, !tbaa !355
  %47 = load i32, ptr %46, align 8, !tbaa !481
  br label %48

48:                                               ; preds = %36, %20
  %49 = phi i32 [ %47, %36 ], [ %21, %20 ]
  %50 = phi ptr [ %46, %36 ], [ %22, %20 ]
  %51 = add nuw nsw i64 %23, 1
  %52 = trunc i64 %51 to i32
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %20, label %54, !llvm.loop !483

54:                                               ; preds = %48, %6, %2, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_reg_attrs_for_decl_rtl(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !484 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %14, !prof !485

6:                                                ; preds = %2
  %7 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %1) #21, !range !486
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1039, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !355
  %13 = load i32, ptr %12, align 8
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ %13, %10 ], [ %3, %2 ]
  %16 = phi ptr [ %12, %10 ], [ %1, %2 ]
  %17 = and i32 %15, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %23, !prof !487

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef 0) #21
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %20, ptr %21, align 8, !tbaa !355
  %22 = load i32, ptr %16, align 8
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i32 [ %22, %19 ], [ %15, %14 ]
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 41
  br i1 %26, label %27, label %60, !prof !485

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !355
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 37
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = tail call fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef 0) #21
  %35 = load ptr, ptr %28, align 8, !tbaa !355
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %34, ptr %36, align 8, !tbaa !355
  br label %37

37:                                               ; preds = %33, %27
  %38 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !355
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 37
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load ptr, ptr %28, align 8, !tbaa !355
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !355
  %51 = icmp eq i8 %50, 0
  %52 = zext i8 %50 to i64
  %53 = select i1 %51, i64 %48, i64 %52
  %54 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !355
  %56 = zext i8 %55 to i32
  %57 = tail call fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef %56) #21
  %58 = load ptr, ptr %38, align 8, !tbaa !355
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %57, ptr %59, align 8, !tbaa !355
  br label %60

60:                                               ; preds = %37, %43, %23
  %61 = load i32, ptr %16, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 15
  br i1 %63, label %64, label %105, !prof !485

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !355
  %67 = getelementptr inbounds %struct.rtvec_def, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !362
  %69 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !355
  %71 = icmp eq ptr %70, null
  %72 = zext i1 %71 to i32
  %73 = load i32, ptr %66, align 8, !tbaa !481
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
  %82 = load ptr, ptr %81, align 8, !tbaa !362
  %83 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !355
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 37
  br i1 %87, label %88, label %99

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1, i32 0, i32 0, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !355
  %91 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !355
  %93 = trunc i64 %92 to i32
  %94 = tail call fastcc ptr @get_reg_attrs(ptr noundef %0, i32 noundef %93) #21
  %95 = load ptr, ptr %83, align 8, !tbaa !355
  %96 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %94, ptr %96, align 8, !tbaa !355
  %97 = load ptr, ptr %65, align 8, !tbaa !355
  %98 = load i32, ptr %97, align 8, !tbaa !481
  br label %99

99:                                               ; preds = %88, %77
  %100 = phi i32 [ %98, %88 ], [ %78, %77 ]
  %101 = phi ptr [ %97, %88 ], [ %79, %77 ]
  %102 = add nuw nsw i64 %80, 1
  %103 = trunc i64 %102 to i32
  %104 = icmp sgt i32 %100, %103
  br i1 %104, label %77, label %105, !llvm.loop !488

105:                                              ; preds = %99, %64, %60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @subreg_lowpart_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !489 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %16, !prof !490

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !355
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 16711680
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !491

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load i32, ptr %12, align 8, !tbaa !355
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %5, %1, %11
  %17 = phi i32 [ %15, %11 ], [ 1, %1 ], [ 0, %5 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_decl_rtl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !492 {
  %3 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !355
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !493

5:                                                ; preds = %2
  tail call void @set_reg_attrs_for_decl_rtl(ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_decl_incoming_rtl(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !494 {
  %4 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !355
  %5 = icmp eq ptr %1, null
  %6 = icmp ne i8 %2, 0
  %7 = or i1 %5, %6
  br i1 %7, label %9, label %8, !prof !495

8:                                                ; preds = %3
  tail call void @set_reg_attrs_for_decl_rtl(ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  br label %9

9:                                                ; preds = %8, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_user_reg(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !496 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %11 [
    i16 41, label %4
    i16 37, label %15
  ], !prof !497

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !355
  %7 = load i32, ptr %6, align 8
  %8 = or i32 %7, 134217728
  store i32 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !355
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
define dso_local i32 @max_reg_num() local_unnamed_addr #10 !prof !498 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !449
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @max_label_num() local_unnamed_addr #10 !prof !499 {
  %1 = load i32, ptr @label_num, align 4, !tbaa !368
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_first_label_num() local_unnamed_addr #10 !prof !500 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 1), align 4, !tbaa !501
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @maybe_set_first_label_num(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !401 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !355
  %4 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 1), align 4, !tbaa !501
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 %3, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 1), align 4, !tbaa !501
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_lowpart_common(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !502 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %5 = load i32, ptr %1, align 8
  br label %6

6:                                                ; preds = %60, %2
  %7 = phi i32 [ %5, %2 ], [ %56, %60 ]
  %8 = phi ptr [ %1, %2 ], [ %55, %60 ]
  %9 = load i8, ptr %4, align 1, !tbaa !355
  %10 = zext i8 %9 to i32
  %11 = and i32 %7, 65535
  %12 = icmp eq i32 %11, 30
  %13 = icmp ult i8 %9, 9
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %19, label %15, !prof !503

15:                                               ; preds = %6
  %16 = lshr i32 %7, 16
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22, !prof !504

19:                                               ; preds = %15, %6
  %20 = phi i32 [ 64, %6 ], [ 128, %15 ]
  %21 = tail call i32 @mode_for_size(i32 noundef %20, i32 noundef 2, i32 noundef 0) #20
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i32 [ %17, %15 ], [ %21, %19 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !355
  %27 = zext i8 %26 to i32
  %28 = icmp ugt i32 %23, 1
  br i1 %28, label %30, label %29, !prof !505

29:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1195, ptr noundef nonnull @.str.1) #20
  br label %30

30:                                               ; preds = %22, %29
  %31 = icmp eq i32 %23, %0
  br i1 %31, label %75, label %32, !prof !506

32:                                               ; preds = %30
  %33 = add nuw nsw i32 %10, 3
  %34 = lshr i32 %33, 2
  %35 = add nuw nsw i32 %27, 3
  %36 = lshr i32 %35, 2
  %37 = icmp ugt i32 %34, %36
  br i1 %37, label %75, label %38, !prof !507

38:                                               ; preds = %32
  %39 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %3
  %40 = load i8, ptr %39, align 1, !tbaa !355
  %41 = and i8 %40, -2
  %42 = icmp eq i8 %41, 8
  br i1 %42, label %43, label %45, !prof !508

43:                                               ; preds = %38
  %44 = icmp ugt i8 %9, %26
  br i1 %44, label %75, label %49

45:                                               ; preds = %38
  %46 = load i32, ptr %8, align 8
  %47 = and i32 %46, 65534
  %48 = icmp eq i32 %47, 98
  br i1 %48, label %51, label %70, !prof !509

49:                                               ; preds = %43
  %50 = load i32, ptr %8, align 8
  br label %70

51:                                               ; preds = %45
  %52 = icmp eq i8 %41, 2
  br i1 %52, label %53, label %70, !prof !510

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !355
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = icmp eq i32 %58, %0
  br i1 %59, label %75, label %60, !prof !511

60:                                               ; preds = %53
  %61 = zext nneg i32 %58 to i64
  %62 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !355
  %64 = icmp ult i8 %9, %63
  br i1 %64, label %6, label %65, !prof !512

65:                                               ; preds = %60
  %66 = icmp ult i8 %9, %26
  br i1 %66, label %67, label %75

67:                                               ; preds = %65
  %68 = and i32 %46, 99
  %69 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %68, i32 noundef %0, ptr noundef nonnull %55) #20
  br label %75

70:                                               ; preds = %51, %45, %49
  %71 = phi i32 [ %50, %49 ], [ %46, %45 ], [ %46, %51 ]
  %72 = trunc i32 %71 to i16
  switch i16 %72, label %75 [
    i16 39, label %73
    i16 37, label %73
    i16 41, label %73
    i16 33, label %73
    i16 32, label %73
    i16 30, label %73
  ], !prof !513

73:                                               ; preds = %70, %70, %70, %70, %70, %70
  %74 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %8, i32 noundef %23, i32 noundef 0) #20
  br label %75

75:                                               ; preds = %53, %32, %30, %43, %65, %70, %73, %67
  %76 = phi ptr [ %69, %67 ], [ %74, %73 ], [ null, %70 ], [ null, %65 ], [ null, %43 ], [ %55, %53 ], [ null, %32 ], [ %8, %30 ]
  ret ptr %76
}

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_highpart(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !401 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !355
  %6 = icmp ult i8 %5, 5
  %7 = load i32, ptr %1, align 8
  br i1 %6, label %22, label %8

8:                                                ; preds = %2
  %9 = lshr i32 %7, 16
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !355
  %14 = icmp eq i8 %13, 0
  %15 = zext i8 %13 to i64
  %16 = select i1 %14, i64 %11, i64 %15
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !355
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
  %26 = tail call i32 @subreg_highpart_offset(i32 noundef %0, i32 noundef %25) #21, !range !514
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
define dso_local i32 @subreg_highpart_offset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !515 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !355
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !355
  %9 = icmp ult i8 %5, %8
  br i1 %9, label %10, label %11, !prof !516

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
define dso_local ptr @gen_highpart_mode(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !401 {
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
  %14 = tail call i32 @subreg_highpart_offset(i32 noundef %0, i32 noundef %1) #21, !range !514
  %15 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %2, i32 noundef %1, i32 noundef %14) #20
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi ptr [ %12, %11 ], [ %15, %13 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @operand_subword(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !517 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %12, !prof !518

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !519

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1367, ptr noundef nonnull @.str.1) #20
  br label %15

12:                                               ; preds = %4, %6
  %13 = phi i32 [ %9, %6 ], [ %3, %4 ]
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %28, label %15, !prof !520

15:                                               ; preds = %11, %12
  %16 = phi i32 [ 0, %11 ], [ %13, %12 ]
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !355
  %20 = icmp ult i8 %19, 4
  br i1 %20, label %66, label %21, !prof !521

21:                                               ; preds = %15
  %22 = shl i32 %1, 2
  %23 = add i32 %22, 4
  %24 = zext i8 %19 to i32
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %28, !prof !521

26:                                               ; preds = %21
  %27 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !362
  br label %66

28:                                               ; preds = %12, %21
  %29 = phi i32 [ 1, %12 ], [ %16, %21 ]
  %30 = load i32, ptr %0, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 43
  br i1 %32, label %35, label %33, !prof !522

33:                                               ; preds = %28
  %34 = shl i32 %1, 2
  br label %62

35:                                               ; preds = %28
  %36 = load i32, ptr @word_mode, align 4, !tbaa !368
  %37 = shl i32 %1, 2
  %38 = zext i32 %37 to i64
  %39 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef %36, i64 noundef %38, i32 noundef 0, i32 noundef 1) #21
  %40 = icmp eq i32 %2, 0
  br i1 %40, label %66, label %41, !prof !523

41:                                               ; preds = %35
  %42 = load i32, ptr @reload_completed, align 4, !tbaa !368
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44, !prof !524

44:                                               ; preds = %41
  %45 = load i32, ptr @word_mode, align 4, !tbaa !368
  %46 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !355
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !355
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.mem_attrs, ptr %49, i64 0, i32 5
  %53 = load i8, ptr %52, align 8, !tbaa !411
  br label %58

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !355
  %57 = tail call ptr @replace_equiv_address(ptr noundef %39, ptr noundef %56) #21
  br label %66

58:                                               ; preds = %51, %44
  %59 = phi i8 [ %53, %51 ], [ 0, %44 ]
  %60 = tail call i32 @strict_memory_address_addr_space_p(i32 noundef %45, ptr noundef %47, i8 noundef zeroext %59) #20
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %33, %58
  %63 = phi i32 [ %34, %33 ], [ %37, %58 ]
  %64 = load i32, ptr @word_mode, align 4, !tbaa !368
  %65 = tail call ptr @simplify_gen_subreg(i32 noundef %64, ptr noundef nonnull %0, i32 noundef %29, i32 noundef %63) #20
  br label %66

66:                                               ; preds = %35, %54, %58, %15, %62, %26
  %67 = phi ptr [ %27, %26 ], [ null, %58 ], [ %65, %62 ], [ null, %15 ], [ %39, %35 ], [ %57, %54 ]
  ret ptr %67
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @adjust_address_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !525 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !355
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !355
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11, !prof !526

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !406
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !410
  %16 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 5
  %17 = load i8, ptr %16, align 8, !tbaa !411
  br label %18

18:                                               ; preds = %5, %11
  %19 = phi i32 [ %15, %11 ], [ 8, %5 ]
  %20 = phi ptr [ %13, %11 ], [ null, %5 ]
  %21 = phi i8 [ %17, %11 ], [ 0, %5 ]
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !527
  %23 = tail call i32 %22(i8 noundef zeroext %21) #20
  %24 = load i32, ptr %0, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = icmp ne i32 %26, %1
  %28 = icmp ne i64 %2, 0
  %29 = or i1 %28, %27
  br i1 %29, label %35, label %30, !prof !539

30:                                               ; preds = %18
  %31 = icmp eq i32 %3, 0
  br i1 %31, label %171, label %32, !prof !540

32:                                               ; preds = %30
  %33 = tail call i32 @memory_address_addr_space_p(i32 noundef %1, ptr noundef %7, i8 noundef zeroext %21) #20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %171, !prof !541

35:                                               ; preds = %32, %18
  %36 = tail call ptr @copy_rtx(ptr noundef %7) #20
  %37 = zext i32 %23 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !355
  %40 = icmp ult i8 %39, 8
  br i1 %40, label %41, label %47, !prof !542

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
  br i1 %49, label %75, label %50, !prof !543

50:                                               ; preds = %47
  %51 = load i32, ptr %0, align 8
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %73, label %55, !prof !544

55:                                               ; preds = %50
  %56 = load i32, ptr %36, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 122
  br i1 %58, label %59, label %73, !prof !545

59:                                               ; preds = %55
  %60 = icmp sgt i64 %48, -1
  br i1 %60, label %61, label %73

61:                                               ; preds = %59
  %62 = tail call i32 @get_mode_alignment(i32 noundef %53) #20
  %63 = lshr i32 %62, 3
  %64 = zext nneg i32 %63 to i64
  %65 = icmp ult i64 %48, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !355
  %69 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !355
  %71 = tail call ptr @plus_constant(ptr noundef %70, i64 noundef %48) #20
  %72 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 122, i32 noundef %23, ptr noundef %68, ptr noundef %71) #20
  br label %75

73:                                               ; preds = %61, %59, %55, %50
  %74 = tail call ptr @plus_constant(ptr noundef %36, i64 noundef %48) #20
  br label %75

75:                                               ; preds = %66, %73, %47
  %76 = phi ptr [ %72, %66 ], [ %74, %73 ], [ %36, %47 ]
  %77 = tail call fastcc ptr @change_address_1(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %76, i32 noundef %3) #21
  %78 = icmp eq ptr %77, %0
  br i1 %78, label %79, label %83, !prof !543

79:                                               ; preds = %75
  %80 = icmp eq i64 %48, 0
  br i1 %80, label %83, label %81, !prof !546

81:                                               ; preds = %79
  %82 = tail call ptr @copy_rtx(ptr noundef nonnull %0) #20
  br label %83

83:                                               ; preds = %81, %79, %75
  %84 = phi ptr [ %82, %81 ], [ %0, %79 ], [ %77, %75 ]
  %85 = icmp eq ptr %20, null
  br i1 %85, label %91, label %86, !prof !547

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !355
  %89 = add nsw i64 %88, %48
  %90 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %89) #21
  br label %91

91:                                               ; preds = %86, %83
  %92 = phi ptr [ %90, %86 ], [ null, %83 ]
  %93 = icmp eq i64 %48, 0
  br i1 %93, label %102, label %94, !prof !548

94:                                               ; preds = %91
  %95 = zext i32 %19 to i64
  %96 = sub nsw i64 0, %48
  %97 = and i64 %48, %96
  %98 = shl i64 %97, 3
  %99 = icmp ugt i64 %98, %95
  %100 = trunc i64 %98 to i32
  %101 = select i1 %99, i32 %19, i32 %100, !prof !549
  br label %102

102:                                              ; preds = %94, %91
  %103 = phi i32 [ %101, %94 ], [ %19, %91 ]
  %104 = load i32, ptr %84, align 8
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 255
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %114, label %108, !prof !550

108:                                              ; preds = %102
  %109 = zext nneg i32 %106 to i64
  %110 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !355
  %112 = zext i8 %111 to i64
  %113 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %112) #21
  br label %155

114:                                              ; preds = %102
  %115 = load ptr, ptr %8, align 8, !tbaa !355
  %116 = icmp eq ptr %115, null
  br i1 %116, label %121, label %117, !prof !551

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.mem_attrs, ptr %115, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !407
  %120 = icmp eq ptr %119, null
  br i1 %120, label %155, label %136, !prof !551

121:                                              ; preds = %114
  %122 = load i32, ptr %0, align 8
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %155, label %126, !prof !551

126:                                              ; preds = %121
  %127 = zext nneg i32 %124 to i64
  %128 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !355
  %130 = zext i8 %129 to i64
  %131 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %130) #21
  %132 = icmp eq ptr %131, null
  br i1 %132, label %155, label %133

133:                                              ; preds = %126
  %134 = load ptr, ptr %8, align 8, !tbaa !355
  %135 = icmp eq ptr %134, null
  br i1 %135, label %140, label %136, !prof !552

136:                                              ; preds = %117, %133
  %137 = phi ptr [ %134, %133 ], [ %115, %117 ]
  %138 = getelementptr inbounds %struct.mem_attrs, ptr %137, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !407
  br label %151

140:                                              ; preds = %133
  %141 = load i32, ptr %0, align 8
  %142 = lshr i32 %141, 16
  %143 = and i32 %142, 255
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %151, label %145, !prof !553

145:                                              ; preds = %140
  %146 = zext nneg i32 %143 to i64
  %147 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !355
  %149 = zext i8 %148 to i64
  %150 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %149) #21
  br label %151

151:                                              ; preds = %145, %140, %136
  %152 = phi ptr [ %139, %136 ], [ %150, %145 ], [ null, %140 ]
  %153 = sub nsw i64 0, %48
  %154 = tail call ptr @plus_constant(ptr noundef %152, i64 noundef %153) #20
  br label %155

155:                                              ; preds = %117, %126, %151, %121, %108
  %156 = phi ptr [ %113, %108 ], [ %154, %151 ], [ null, %117 ], [ null, %126 ], [ null, %121 ]
  %157 = load ptr, ptr %8, align 8, !tbaa !355
  %158 = icmp eq ptr %157, null
  br i1 %158, label %163, label %159, !prof !554

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.mem_attrs, ptr %157, i64 0, i32 3
  %161 = load i32, ptr %160, align 8, !tbaa !555
  %162 = load ptr, ptr %157, align 8, !tbaa !404
  br label %163

163:                                              ; preds = %155, %159
  %164 = phi i32 [ %161, %159 ], [ 0, %155 ]
  %165 = phi ptr [ %162, %159 ], [ null, %155 ]
  %166 = load i32, ptr %84, align 8
  %167 = lshr i32 %166, 16
  %168 = and i32 %167, 255
  %169 = tail call fastcc ptr @get_mem_attrs(i32 noundef %164, ptr noundef %165, ptr noundef %92, ptr noundef %156, i32 noundef %103, i8 noundef zeroext %21, i32 noundef %168) #21
  %170 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %169, ptr %170, align 8, !tbaa !355
  br label %171

171:                                              ; preds = %30, %32, %163
  %172 = phi ptr [ %84, %163 ], [ %0, %32 ], [ %0, %30 ]
  ret ptr %172
}

; Function Attrs: optsize
declare i32 @strict_memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @replace_equiv_address(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !556 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !355
  tail call void @update_temp_slot_address(ptr noundef %4, ptr noundef %1) #20
  %5 = tail call fastcc ptr @change_address_1(ptr noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef 1) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @operand_subword_force(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !557 {
  %4 = tail call ptr @operand_subword(ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef %2) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %21, !prof !558

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
define dso_local i32 @mem_expr_equal_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !559 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %16, label %4, !prof !560

4:                                                ; preds = %2
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %16, !prof !561

8:                                                ; preds = %4
  %9 = load i64, ptr %0, align 8
  %10 = load i64, ptr %1, align 8
  %11 = xor i64 %10, %9
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16, !prof !562

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
define dso_local i32 @get_mem_align_offset(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !401 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 43
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1476, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !355
  %10 = icmp eq ptr %9, null
  br i1 %10, label %90, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !404
  %13 = icmp eq ptr %12, null
  br i1 %13, label %90, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.mem_attrs, ptr %9, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !406
  %17 = icmp eq ptr %16, null
  br i1 %17, label %90, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 30
  br i1 %21, label %22, label %90

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !355
  %25 = load i64, ptr %12, align 8
  %26 = and i64 %25, 65535
  %27 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !368
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !355
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
  %38 = load ptr, ptr %37, align 8, !tbaa !355
  %39 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !355
  %41 = icmp ult i32 %40, %1
  br i1 %41, label %90, label %84

42:                                               ; preds = %34, %82
  %43 = phi i64 [ %64, %82 ], [ %24, %34 ]
  %44 = phi ptr [ %46, %82 ], [ %12, %34 ]
  %45 = getelementptr inbounds %struct.tree_exp, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !355
  %47 = getelementptr inbounds %struct.tree_exp, ptr %44, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !355
  %49 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %44) #20
  %50 = getelementptr inbounds %struct.tree_field_decl, ptr %48, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !355
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
  %68 = load ptr, ptr %67, align 8, !tbaa !355
  %69 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !355
  %71 = icmp ult i32 %70, %1
  br i1 %71, label %90, label %84

72:                                               ; preds = %59
  %73 = load i64, ptr %46, align 8
  %74 = and i64 %73, 65535
  %75 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !368
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.tree_decl_common, ptr %46, i64 0, i32 3
  %80 = load i32, ptr %79, align 8, !tbaa !355
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
define dso_local void @set_mem_attributes_minus_bitpos(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !563 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !355
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8, !prof !564

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !404
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !406
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !407
  br label %27

14:                                               ; preds = %4
  %15 = load i32, ptr %0, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %34, label %19, !prof !565

19:                                               ; preds = %14
  %20 = zext nneg i32 %17 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !355
  %23 = zext i8 %22 to i64
  %24 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %23) #21
  %25 = load ptr, ptr %5, align 8, !tbaa !355
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27, !prof !566

27:                                               ; preds = %8, %19
  %28 = phi ptr [ %13, %8 ], [ %24, %19 ]
  %29 = phi ptr [ %9, %8 ], [ null, %19 ]
  %30 = phi ptr [ %11, %8 ], [ null, %19 ]
  %31 = phi ptr [ %6, %8 ], [ %25, %19 ]
  %32 = getelementptr inbounds %struct.mem_attrs, ptr %31, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !410
  br label %34

34:                                               ; preds = %14, %19, %27
  %35 = phi ptr [ %28, %27 ], [ %24, %19 ], [ null, %14 ]
  %36 = phi ptr [ %29, %27 ], [ null, %19 ], [ null, %14 ]
  %37 = phi ptr [ %30, %27 ], [ null, %19 ], [ null, %14 ]
  %38 = phi i32 [ %33, %27 ], [ 8, %19 ], [ 8, %14 ]
  %39 = icmp eq ptr %1, null
  br i1 %39, label %441, label %40, !prof !567

40:                                               ; preds = %34
  %41 = load i64, ptr %1, align 8
  %42 = and i64 %41, 65535
  %43 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !368
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %51, label %46, !prof !568

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !355
  %49 = load ptr, ptr @global_trees, align 16, !tbaa !362
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %441, label %54, !prof !567

51:                                               ; preds = %40
  %52 = load ptr, ptr @global_trees, align 16, !tbaa !362
  %53 = icmp eq ptr %52, %1
  br i1 %53, label %441, label %67, !prof !567

54:                                               ; preds = %46
  %55 = icmp eq i32 %44, 3
  br i1 %55, label %56, label %67, !prof !569

56:                                               ; preds = %54
  %57 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %42, i64 11
  %58 = load i8, ptr %57, align 1, !tbaa !355
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60, !prof !570

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !355
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi ptr [ null, %56 ], [ %62, %60 ]
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %66, label %67, !prof !570

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
  br i1 %97, label %98, label %104, !prof !571

98:                                               ; preds = %84
  %99 = load i64, ptr %1, align 8
  %100 = and i64 %99, 65535
  %101 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !368
  %103 = icmp eq i32 %102, 3
  br i1 %103, label %104, label %112, !prof !572

104:                                              ; preds = %98, %84
  %105 = load i64, ptr %68, align 8
  %106 = trunc i64 %105 to i16
  switch i16 %106, label %107 [
    i16 15, label %109
    i16 16, label %109
    i16 17, label %109
    i16 18, label %109
    i16 13, label %109
  ], !prof !573

107:                                              ; preds = %104
  %108 = or i32 %96, -2147483648
  store i32 %108, ptr %0, align 8
  br label %109

109:                                              ; preds = %104, %104, %104, %104, %104, %107
  br i1 %97, label %110, label %122, !prof !574

110:                                              ; preds = %109
  %111 = load i64, ptr %1, align 8
  br label %112

112:                                              ; preds = %110, %98
  %113 = phi i64 [ %111, %110 ], [ %99, %98 ]
  %114 = trunc i64 %113 to i32
  %115 = and i32 %114, 65535
  %116 = add nsw i32 %115, -47
  %117 = icmp ult i32 %116, 2
  br i1 %117, label %122, label %118, !prof !575

118:                                              ; preds = %112
  %119 = load i64, ptr %68, align 8
  %120 = and i64 %119, 33554432
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %126, label %122, !prof !576

122:                                              ; preds = %112, %118, %109
  %123 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 7
  %124 = load i32, ptr %123, align 8, !tbaa !355
  %125 = tail call i32 @llvm.umax.i32(i32 %38, i32 %124)
  br label %137

126:                                              ; preds = %118
  %127 = icmp eq i32 %115, 49
  br i1 %127, label %128, label %137, !prof !577

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !355
  %131 = tail call i32 @integer_zerop(ptr noundef %130) #20
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load ptr, ptr %129, align 8, !tbaa !355
  %135 = tail call i64 @tree_low_cst(ptr noundef %134, i32 noundef 1) #20
  %136 = trunc i64 %135 to i32
  br label %137

137:                                              ; preds = %128, %126, %133, %122
  %138 = phi i32 [ %125, %122 ], [ %136, %133 ], [ %38, %126 ], [ 8, %128 ]
  %139 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !355
  %141 = icmp eq ptr %140, null
  br i1 %141, label %149, label %142, !prof !567

142:                                              ; preds = %137
  %143 = tail call i32 @host_integerp(ptr noundef nonnull %140, i32 noundef 1) #20
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %149, label %145, !prof !567

145:                                              ; preds = %142
  %146 = load ptr, ptr %139, align 8, !tbaa !355
  %147 = tail call i64 @tree_low_cst(ptr noundef %146, i32 noundef 1) #20
  %148 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %147) #21
  br label %149

149:                                              ; preds = %145, %142, %137
  %150 = phi ptr [ %148, %145 ], [ %35, %142 ], [ %35, %137 ]
  %151 = load i64, ptr %1, align 8
  %152 = and i64 %151, 65535
  %153 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !368
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %413, label %156, !prof !568

156:                                              ; preds = %149
  %157 = and i64 %151, 524288
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %162, label %159, !prof !578

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
  ], !prof !579

167:                                              ; preds = %163
  %168 = trunc i64 %165 to i32
  %169 = and i32 %168, 65535
  %170 = add nsw i32 %169, -41
  %171 = icmp ult i32 %170, 4
  br i1 %171, label %175, label %184, !prof !580

172:                                              ; preds = %163, %163, %163, %163
  %173 = getelementptr inbounds %struct.tree_exp, ptr %164, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !355
  br label %163, !llvm.loop !581

175:                                              ; preds = %167, %175
  %176 = phi ptr [ %178, %175 ], [ %164, %167 ]
  %177 = getelementptr inbounds %struct.tree_exp, ptr %176, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !355
  %179 = load i64, ptr %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = and i32 %180, 65535
  %182 = add nsw i32 %181, -41
  %183 = icmp ult i32 %182, 4
  br i1 %183, label %175, label %184, !prof !582, !llvm.loop !583

184:                                              ; preds = %175, %167
  %185 = phi ptr [ %164, %167 ], [ %178, %175 ]
  %186 = phi i64 [ %165, %167 ], [ %179, %175 ]
  %187 = phi i32 [ %168, %167 ], [ %180, %175 ]
  %188 = and i64 %186, 65535
  %189 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !368
  %191 = icmp eq i32 %190, 3
  br i1 %191, label %192, label %208, !prof !584

192:                                              ; preds = %184
  %193 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %188, i64 13
  %194 = load i8, ptr %193, align 1, !tbaa !355
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %205, label %196, !prof !585

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
  br i1 %216, label %252, label %217, !prof !586

217:                                              ; preds = %213
  %218 = load i64, ptr %215, align 8
  %219 = and i64 %218, 65535
  %220 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !368
  %222 = icmp ne i32 %221, 3
  %223 = and i64 %218, 1048576
  %224 = icmp eq i64 %223, 0
  %225 = or i1 %222, %224
  br i1 %225, label %252, label %226, !prof !587

226:                                              ; preds = %217
  %227 = and i64 %218, 67108864
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %234, !prof !588

229:                                              ; preds = %226
  %230 = getelementptr inbounds %struct.tree_decl_common, ptr %215, i64 0, i32 2
  %231 = load i64, ptr %230, align 8
  %232 = and i64 %231, 33554432
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %252, label %234, !prof !589

234:                                              ; preds = %229, %226
  %235 = getelementptr inbounds %struct.tree_common, ptr %215, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !355
  %237 = icmp eq ptr %236, null
  br i1 %237, label %249, label %238, !prof !590

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.tree_type, ptr %236, i64 0, i32 6
  %240 = load i32, ptr %239, align 4
  %241 = and i32 %240, 2048
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %249, label %243, !prof !591

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
  br i1 %254, label %258, label %255, !prof !592

255:                                              ; preds = %252
  %256 = load i32, ptr %0, align 8
  %257 = or i32 %256, 16777216
  store i32 %257, ptr %0, align 8
  br label %258

258:                                              ; preds = %255, %252
  %259 = load i64, ptr %164, align 8
  %260 = and i64 %259, 65535
  %261 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !368
  switch i32 %262, label %283 [
    i32 3, label %263
    i32 1, label %279
  ], !prof !593

263:                                              ; preds = %258
  %264 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !362
  %265 = getelementptr inbounds %struct.tree_decl_common, ptr %164, i64 0, i32 4
  %266 = load ptr, ptr %265, align 8, !tbaa !355
  %267 = icmp eq ptr %266, null
  br i1 %267, label %275, label %268, !prof !570

268:                                              ; preds = %263
  %269 = tail call i32 @host_integerp(ptr noundef nonnull %266, i32 noundef 1) #20
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %275, label %271, !prof !570

271:                                              ; preds = %268
  %272 = load ptr, ptr %265, align 8, !tbaa !355
  %273 = tail call i64 @tree_low_cst(ptr noundef %272, i32 noundef 1) #20
  %274 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %273) #21
  br label %275

275:                                              ; preds = %263, %268, %271
  %276 = phi ptr [ %274, %271 ], [ null, %268 ], [ null, %263 ]
  %277 = getelementptr inbounds %struct.tree_decl_common, ptr %164, i64 0, i32 3
  %278 = load i32, ptr %277, align 8, !tbaa !355
  br label %399

279:                                              ; preds = %258
  %280 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 7
  %281 = load i32, ptr %280, align 8, !tbaa !355
  %282 = tail call i32 @ix86_constant_alignment(ptr noundef nonnull %164, i32 noundef %281) #20
  br label %413

283:                                              ; preds = %258
  %284 = icmp eq i64 %260, 41
  br i1 %284, label %285, label %294, !prof !594

285:                                              ; preds = %283
  %286 = getelementptr inbounds %struct.tree_exp, ptr %164, i64 1
  %287 = load ptr, ptr %286, align 8, !tbaa !355
  %288 = getelementptr inbounds %struct.tree_decl_common, ptr %287, i64 0, i32 2
  %289 = load i64, ptr %288, align 8
  %290 = and i64 %289, 33554432
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %294, !prof !595

292:                                              ; preds = %285
  %293 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !362
  br label %383

294:                                              ; preds = %285, %283
  %295 = trunc i64 %259 to i32
  %296 = and i32 %295, 65535
  %297 = icmp eq i32 %296, 45
  br i1 %297, label %298, label %369, !prof !596

298:                                              ; preds = %294
  %299 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !362
  br label %300

300:                                              ; preds = %314, %298
  %301 = phi ptr [ %299, %298 ], [ %319, %314 ]
  %302 = phi ptr [ %164, %298 ], [ %320, %314 ]
  %303 = getelementptr inbounds %struct.tree_exp, ptr %302, i64 0, i32 3
  %304 = getelementptr inbounds %struct.tree_exp, ptr %302, i64 1
  %305 = load ptr, ptr %304, align 8, !tbaa !355
  %306 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %302) #20
  %307 = tail call ptr @array_ref_element_size(ptr noundef nonnull %302) #20
  %308 = tail call i32 @integer_zerop(ptr noundef %306) #20
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %314, !prof !597

310:                                              ; preds = %300
  %311 = getelementptr inbounds %struct.tree_common, ptr %305, i64 0, i32 2
  %312 = load ptr, ptr %311, align 8, !tbaa !355
  %313 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %312, ptr noundef %305, ptr noundef %306) #20
  br label %314

314:                                              ; preds = %310, %300
  %315 = phi ptr [ %305, %300 ], [ %313, %310 ]
  %316 = load ptr, ptr @sizetype_tab, align 16, !tbaa !362
  %317 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %316, ptr noundef %315) #20
  %318 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %317, ptr noundef %307) #20
  %319 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %318, ptr noundef %301) #20
  %320 = load ptr, ptr %303, align 8, !tbaa !355
  %321 = load i64, ptr %320, align 8
  %322 = trunc i64 %321 to i32
  %323 = and i32 %322, 65535
  %324 = icmp eq i32 %323, 45
  br i1 %324, label %300, label %325, !prof !598, !llvm.loop !599

325:                                              ; preds = %314
  %326 = and i64 %321, 65535
  %327 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %326
  %328 = load i32, ptr %327, align 4, !tbaa !368
  %329 = icmp eq i32 %328, 3
  br i1 %329, label %330, label %347, !prof !600

330:                                              ; preds = %325
  %331 = tail call i32 @host_integerp(ptr noundef %319, i32 noundef 1) #20
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %383, label %333, !prof !601

333:                                              ; preds = %330
  %334 = tail call i64 @tree_low_cst(ptr noundef %319, i32 noundef 1) #20
  %335 = sub nsw i64 0, %334
  %336 = and i64 %334, %335
  %337 = shl nsw i64 %336, 3
  %338 = getelementptr inbounds %struct.tree_decl_common, ptr %320, i64 0, i32 3
  %339 = load i32, ptr %338, align 8, !tbaa !355
  %340 = icmp ne i64 %336, 0
  %341 = zext i32 %339 to i64
  %342 = icmp ult i64 %337, %341
  %343 = select i1 %340, i1 %342, i1 false
  %344 = trunc i64 %337 to i32
  %345 = select i1 %343, i32 %344, i32 %339, !prof !602
  %346 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %334) #21
  br label %399

347:                                              ; preds = %325
  %348 = icmp eq i32 %323, 41
  br i1 %348, label %349, label %355, !prof !603

349:                                              ; preds = %347
  %350 = tail call i32 @host_integerp(ptr noundef %319, i32 noundef 1) #20
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %383, label %352, !prof !604

352:                                              ; preds = %349
  %353 = tail call i64 @tree_low_cst(ptr noundef %319, i32 noundef 1) #20
  %354 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %353) #21
  br label %383

355:                                              ; preds = %347
  %356 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !368
  %357 = icmp sgt i32 %356, 1
  br i1 %357, label %358, label %383, !prof !605

358:                                              ; preds = %355
  %359 = add nsw i32 %323, -47
  %360 = icmp ult i32 %359, 3
  br i1 %360, label %361, label %383

361:                                              ; preds = %358
  %362 = getelementptr inbounds %struct.tree_exp, ptr %320, i64 0, i32 3
  %363 = load ptr, ptr %362, align 8, !tbaa !355
  %364 = load i64, ptr %363, align 8
  %365 = and i64 %364, 65535
  %366 = icmp eq i64 %365, 34
  %367 = select i1 %366, ptr null, ptr %37
  %368 = select i1 %366, ptr %320, ptr %36
  br label %383

369:                                              ; preds = %294
  %370 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !368
  %371 = icmp sgt i32 %370, 1
  br i1 %371, label %372, label %383, !prof !606

372:                                              ; preds = %369
  %373 = add nsw i32 %296, -47
  %374 = icmp ult i32 %373, 3
  br i1 %374, label %375, label %383

375:                                              ; preds = %372
  %376 = getelementptr inbounds %struct.tree_exp, ptr %164, i64 0, i32 3
  %377 = load ptr, ptr %376, align 8, !tbaa !355
  %378 = load i64, ptr %377, align 8
  %379 = and i64 %378, 65535
  %380 = icmp eq i64 %379, 34
  %381 = select i1 %380, ptr null, ptr %37
  %382 = select i1 %380, ptr %164, ptr %36
  br label %383

383:                                              ; preds = %369, %292, %330, %352, %349, %355, %358, %361, %372, %375
  %384 = phi i64 [ 0, %375 ], [ 0, %372 ], [ 0, %361 ], [ 0, %358 ], [ 0, %355 ], [ 0, %349 ], [ %3, %352 ], [ 0, %330 ], [ %3, %292 ], [ 0, %369 ]
  %385 = phi ptr [ %381, %375 ], [ %37, %372 ], [ %367, %361 ], [ %37, %358 ], [ %37, %355 ], [ null, %349 ], [ %354, %352 ], [ null, %330 ], [ %293, %292 ], [ %37, %369 ]
  %386 = phi ptr [ %382, %375 ], [ %36, %372 ], [ %368, %361 ], [ %36, %358 ], [ %36, %355 ], [ %320, %349 ], [ %320, %352 ], [ %320, %330 ], [ %164, %292 ], [ %36, %369 ]
  %387 = load i64, ptr %164, align 8
  %388 = trunc i64 %387 to i32
  %389 = and i32 %388, 65535
  %390 = add nsw i32 %389, -47
  %391 = icmp ult i32 %390, 3
  br i1 %391, label %399, label %392, !prof !607

392:                                              ; preds = %383
  %393 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !368
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
  br i1 %405, label %413, label %406, !prof !608

406:                                              ; preds = %399
  %407 = sdiv i64 %400, 8
  %408 = sub nsw i64 0, %407
  %409 = tail call ptr @plus_constant(ptr noundef %403, i64 noundef %408) #20
  %410 = icmp eq ptr %402, null
  br i1 %410, label %413, label %411, !prof !609

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
  br i1 %421, label %422, label %423, !prof !567

422:                                              ; preds = %413
  br label %423

423:                                              ; preds = %422, %413
  %424 = phi ptr [ null, %422 ], [ %418, %413 ]
  %425 = phi ptr [ null, %422 ], [ %415, %413 ]
  %426 = load i64, ptr %68, align 8
  %427 = lshr i64 %426, 56
  %428 = trunc i64 %427 to i8
  %429 = load i32, ptr %0, align 8
  %430 = lshr i32 %429, 16
  %431 = and i32 %430, 255
  %432 = tail call fastcc ptr @get_mem_attrs(i32 noundef %69, ptr noundef %425, ptr noundef %424, ptr noundef %417, i32 noundef %416, i8 noundef zeroext %428, i32 noundef %431) #21
  store ptr %432, ptr %5, align 8, !tbaa !355
  %433 = load i32, ptr %0, align 8
  %434 = and i32 %433, -1879048192
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %441, !prof !610

436:                                              ; preds = %423
  %437 = load i64, ptr %414, align 8
  %438 = trunc i64 %437 to i16
  switch i16 %438, label %441 [
    i16 41, label %439
    i16 45, label %439
    i16 46, label %439
    i16 42, label %439
  ], !prof !611

439:                                              ; preds = %436, %436, %436, %436
  %440 = or disjoint i32 %433, 268435456
  store i32 %440, ptr %0, align 8
  br label %441

441:                                              ; preds = %51, %439, %436, %423, %46, %34
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
define internal fastcc ptr @get_mem_attrs(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5, i32 noundef %6) unnamed_addr #0 !prof !612 !PGOFuncName !613 {
  %8 = alloca %struct.mem_attrs, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #22
  %9 = icmp eq i32 %0, 0
  %10 = icmp eq ptr %1, null
  %11 = and i1 %9, %10
  %12 = icmp eq ptr %2, null
  %13 = and i1 %11, %12
  %14 = icmp eq i8 %5, 0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %32, !prof !614

16:                                               ; preds = %7
  %17 = icmp eq ptr %3, null
  br i1 %17, label %30, label %18, !prof !615

18:                                               ; preds = %16
  %19 = icmp eq i32 %6, 1
  br i1 %19, label %32, label %20, !prof !616

20:                                               ; preds = %18
  %21 = zext i32 %6 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !355
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !355
  %27 = icmp eq i64 %26, %24
  %28 = icmp eq i32 %4, 8
  %29 = and i1 %28, %27
  br i1 %29, label %45, label %32, !prof !617

30:                                               ; preds = %16
  %31 = icmp eq i32 %4, 8
  br i1 %31, label %45, label %32, !prof !618

32:                                               ; preds = %30, %20, %18, %7
  %33 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 3
  store i32 %0, ptr %33, align 8, !tbaa !555
  store ptr %1, ptr %8, align 8, !tbaa !404
  %34 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 1
  store ptr %2, ptr %34, align 8, !tbaa !406
  %35 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 2
  store ptr %3, ptr %35, align 8, !tbaa !407
  %36 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 4
  store i32 %4, ptr %36, align 4, !tbaa !410
  %37 = getelementptr inbounds %struct.mem_attrs, ptr %8, i64 0, i32 5
  store i8 %5, ptr %37, align 8, !tbaa !411
  %38 = load ptr, ptr @mem_attrs_htab, align 8, !tbaa !362
  %39 = call ptr @htab_find_slot(ptr noundef %38, ptr noundef nonnull %8, i32 noundef 1) #20
  %40 = load ptr, ptr %39, align 8, !tbaa !362
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45, !prof !619

42:                                               ; preds = %32
  %43 = call ptr @ggc_alloc_stat(i64 noundef 40) #20
  store ptr %43, ptr %39, align 8, !tbaa !362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %43, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false)
  %44 = load ptr, ptr %39, align 8, !tbaa !362
  br label %45

45:                                               ; preds = %32, %42, %30, %20
  %46 = phi ptr [ null, %20 ], [ null, %30 ], [ %44, %42 ], [ %40, %32 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #22
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_attributes(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !620 {
  tail call void @set_mem_attributes_minus_bitpos(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef 0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_addr_space(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !621 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !355
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !622

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !555
  %9 = load ptr, ptr %4, align 8, !tbaa !404
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !406
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !407
  br label %27

14:                                               ; preds = %2
  %15 = load i32, ptr %0, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %35, label %19, !prof !623

19:                                               ; preds = %14
  %20 = zext nneg i32 %17 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !355
  %23 = zext i8 %22 to i64
  %24 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %23) #21
  %25 = load ptr, ptr %3, align 8, !tbaa !355
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27, !prof !409

27:                                               ; preds = %6, %19
  %28 = phi ptr [ %13, %6 ], [ %24, %19 ]
  %29 = phi ptr [ %9, %6 ], [ null, %19 ]
  %30 = phi i32 [ %8, %6 ], [ 0, %19 ]
  %31 = phi ptr [ %11, %6 ], [ null, %19 ]
  %32 = phi ptr [ %4, %6 ], [ %25, %19 ]
  %33 = getelementptr inbounds %struct.mem_attrs, ptr %32, i64 0, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !410
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
  store ptr %44, ptr %3, align 8, !tbaa !355
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_align(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !624 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !355
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !625

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !555
  %9 = load ptr, ptr %4, align 8, !tbaa !404
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !406
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !407
  br label %27

14:                                               ; preds = %2
  %15 = load i32, ptr %0, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %35, label %19, !prof !626

19:                                               ; preds = %14
  %20 = zext nneg i32 %17 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !355
  %23 = zext i8 %22 to i64
  %24 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %23) #21
  %25 = load ptr, ptr %3, align 8, !tbaa !355
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27, !prof !519

27:                                               ; preds = %6, %19
  %28 = phi ptr [ %13, %6 ], [ %24, %19 ]
  %29 = phi ptr [ %9, %6 ], [ null, %19 ]
  %30 = phi i32 [ %8, %6 ], [ 0, %19 ]
  %31 = phi ptr [ %11, %6 ], [ null, %19 ]
  %32 = phi ptr [ %4, %6 ], [ %25, %19 ]
  %33 = getelementptr inbounds %struct.mem_attrs, ptr %32, i64 0, i32 5
  %34 = load i8, ptr %33, align 8, !tbaa !411
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
  store ptr %44, ptr %3, align 8, !tbaa !355
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_expr(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !627 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !355
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6, !prof !628

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !555
  %9 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !406
  %11 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !407
  br label %26

13:                                               ; preds = %2
  %14 = load i32, ptr %0, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %35, label %18, !prof !629

18:                                               ; preds = %13
  %19 = zext nneg i32 %16 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !355
  %22 = zext i8 %21 to i64
  %23 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %22) #21
  %24 = load ptr, ptr %3, align 8, !tbaa !355
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26, !prof !630

26:                                               ; preds = %6, %18
  %27 = phi ptr [ %12, %6 ], [ %23, %18 ]
  %28 = phi i32 [ %8, %6 ], [ 0, %18 ]
  %29 = phi ptr [ %10, %6 ], [ null, %18 ]
  %30 = phi ptr [ %4, %6 ], [ %24, %18 ]
  %31 = getelementptr inbounds %struct.mem_attrs, ptr %30, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !410
  %33 = getelementptr inbounds %struct.mem_attrs, ptr %30, i64 0, i32 5
  %34 = load i8, ptr %33, align 8, !tbaa !411
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
  store ptr %44, ptr %3, align 8, !tbaa !355
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_offset(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !631 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !355
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !632

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !555
  %9 = load ptr, ptr %4, align 8, !tbaa !404
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !407
  br label %25

12:                                               ; preds = %2
  %13 = load i32, ptr %0, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %34, label %17, !prof !633

17:                                               ; preds = %12
  %18 = zext nneg i32 %15 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !355
  %21 = zext i8 %20 to i64
  %22 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %21) #21
  %23 = load ptr, ptr %3, align 8, !tbaa !355
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25, !prof !409

25:                                               ; preds = %6, %17
  %26 = phi ptr [ %11, %6 ], [ %22, %17 ]
  %27 = phi i32 [ %8, %6 ], [ 0, %17 ]
  %28 = phi ptr [ %9, %6 ], [ null, %17 ]
  %29 = phi ptr [ %4, %6 ], [ %23, %17 ]
  %30 = getelementptr inbounds %struct.mem_attrs, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !410
  %32 = getelementptr inbounds %struct.mem_attrs, ptr %29, i64 0, i32 5
  %33 = load i8, ptr %32, align 8, !tbaa !411
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
  store ptr %43, ptr %3, align 8, !tbaa !355
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_size(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !634 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !355
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6, !prof !635

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !555
  %9 = load ptr, ptr %4, align 8, !tbaa !404
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !406
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !410
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %4, i64 0, i32 5
  %15 = load i8, ptr %14, align 8, !tbaa !411
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
  store ptr %25, ptr %3, align 8, !tbaa !355
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @change_address(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !401 {
  %4 = tail call fastcc ptr @change_address_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 1) #21
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !355
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
  %22 = load ptr, ptr %21, align 8, !tbaa !355
  br label %77

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !355
  %27 = icmp eq ptr %26, null
  br i1 %27, label %91, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %26, align 8, !tbaa !404
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.mem_attrs, ptr %26, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !406
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.mem_attrs, ptr %26, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !407
  %38 = icmp eq ptr %37, %17
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.mem_attrs, ptr %26, i64 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !410
  %42 = icmp eq i32 %41, %18
  br i1 %42, label %91, label %43

43:                                               ; preds = %39, %35, %31, %28
  %44 = load ptr, ptr %24, align 8, !tbaa !355
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
  %75 = load ptr, ptr %25, align 8, !tbaa !355
  %76 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %75, ptr %76, align 8, !tbaa !355
  br label %77

77:                                               ; preds = %20, %43
  %78 = phi ptr [ %75, %43 ], [ %22, %20 ]
  %79 = phi ptr [ %45, %43 ], [ %4, %20 ]
  %80 = icmp eq ptr %78, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.mem_attrs, ptr %78, i64 0, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !555
  %84 = getelementptr inbounds %struct.mem_attrs, ptr %78, i64 0, i32 5
  %85 = load i8, ptr %84, align 8, !tbaa !411
  br label %86

86:                                               ; preds = %77, %81
  %87 = phi i32 [ %83, %81 ], [ 0, %77 ]
  %88 = phi i8 [ %85, %81 ], [ 0, %77 ]
  %89 = tail call fastcc ptr @get_mem_attrs(i32 noundef %87, ptr noundef null, ptr noundef null, ptr noundef %17, i32 noundef %18, i8 noundef zeroext %88, i32 noundef %7) #21
  %90 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %89, ptr %90, align 8, !tbaa !355
  br label %91

91:                                               ; preds = %23, %39, %86
  %92 = phi ptr [ %79, %86 ], [ %0, %39 ], [ %0, %23 ]
  ret ptr %92
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @change_address_1(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !636 !PGOFuncName !637 {
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 43
  br i1 %7, label %9, label %8, !prof !638

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1899, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !355
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !639

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.mem_attrs, ptr %12, i64 0, i32 5
  %16 = load i8, ptr %15, align 8, !tbaa !411
  br label %17

17:                                               ; preds = %9, %14
  %18 = phi i8 [ %16, %14 ], [ 0, %9 ]
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %20, label %24, !prof !640

20:                                               ; preds = %17
  %21 = load i32, ptr %0, align 8
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %23, %20 ], [ %1, %17 ]
  %26 = icmp eq ptr %2, null
  br i1 %26, label %27, label %29, !prof !641

27:                                               ; preds = %24
  %28 = load ptr, ptr %10, align 8, !tbaa !355
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi ptr [ %28, %27 ], [ %2, %24 ]
  %31 = load i32, ptr %0, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %25, %33
  br i1 %34, label %35, label %43, !prof !642

35:                                               ; preds = %29
  %36 = load ptr, ptr %10, align 8, !tbaa !355
  %37 = icmp eq ptr %30, %36
  br i1 %37, label %38, label %43, !prof !643

38:                                               ; preds = %35
  %39 = icmp eq i32 %3, 0
  br i1 %39, label %100, label %40, !prof !644

40:                                               ; preds = %38
  %41 = tail call i32 @memory_address_addr_space_p(i32 noundef %25, ptr noundef %30, i8 noundef zeroext %18) #20
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %100, !prof !645

43:                                               ; preds = %35, %29
  %44 = icmp eq i32 %3, 0
  br i1 %44, label %57, label %45, !prof !646

45:                                               ; preds = %40, %43
  %46 = load i32, ptr @reload_in_progress, align 4, !tbaa !368
  %47 = icmp ne i32 %46, 0
  %48 = load i32, ptr @reload_completed, align 4
  %49 = icmp ne i32 %48, 0
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %51, label %55, !prof !647

51:                                               ; preds = %45
  %52 = tail call i32 @memory_address_addr_space_p(i32 noundef %25, ptr noundef %30, i8 noundef zeroext %18) #20
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57, !prof !648

54:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1912, ptr noundef nonnull @.str.1) #20
  br label %57

55:                                               ; preds = %45
  %56 = tail call ptr @memory_address_addr_space(i32 noundef %25, ptr noundef %30, i8 noundef zeroext %18) #20
  br label %57

57:                                               ; preds = %55, %51, %54, %43
  %58 = phi ptr [ %30, %51 ], [ %30, %54 ], [ %56, %55 ], [ %30, %43 ]
  %59 = load ptr, ptr %10, align 8, !tbaa !355
  %60 = tail call i32 @rtx_equal_p(ptr noundef %58, ptr noundef %59) #20
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62, !prof !649

62:                                               ; preds = %57
  %63 = load i32, ptr %0, align 8
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = icmp eq i32 %25, %65
  br i1 %66, label %100, label %67, !prof !650

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
  %98 = load ptr, ptr %11, align 8, !tbaa !355
  %99 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %98, ptr %99, align 8, !tbaa !355
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
define dso_local ptr @adjust_automodify_address_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !651 {
  %6 = tail call fastcc ptr @change_address_1(ptr noundef %0, i32 noundef 0, ptr noundef %2, i32 noundef %4) #21
  %7 = tail call ptr @adjust_address_1(ptr noundef %6, i32 noundef %1, i64 noundef %3, i32 noundef %4, i32 noundef 0) #21
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @offset_address(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !652 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !355
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !355
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !653

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %7, i64 0, i32 5
  %11 = load i8, ptr %10, align 8, !tbaa !411
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi i8 [ %11, %9 ], [ 0, %3 ]
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !527
  %15 = tail call i32 %14(i8 noundef zeroext %13) #20
  %16 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %15, ptr noundef %5, ptr noundef %1) #20
  %17 = load i32, ptr %0, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = tail call i32 @memory_address_addr_space_p(i32 noundef %19, ptr noundef %16, i8 noundef zeroext %13) #20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %36, !prof !654

22:                                               ; preds = %12
  %23 = load i32, ptr %5, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 49
  br i1 %25, label %26, label %36, !prof !655

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !355
  %29 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !362
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %31, label %36, !prof !656

31:                                               ; preds = %26
  %32 = lshr i32 %23, 16
  %33 = and i32 %32, 255
  %34 = tail call ptr @force_reg(i32 noundef %33, ptr noundef nonnull %5) #20
  %35 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %15, ptr noundef %34, ptr noundef %1) #20
  br label %36

36:                                               ; preds = %31, %26, %22, %12
  %37 = phi ptr [ %16, %12 ], [ %35, %31 ], [ %16, %26 ], [ %16, %22 ]
  %38 = load ptr, ptr %4, align 8, !tbaa !355
  tail call void @update_temp_slot_address(ptr noundef %38, ptr noundef %37) #20
  %39 = tail call fastcc ptr @change_address_1(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %37, i32 noundef 1) #21
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %66, label %41, !prof !653

41:                                               ; preds = %36
  %42 = load ptr, ptr %6, align 8, !tbaa !355
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47, !prof !653

44:                                               ; preds = %41
  %45 = shl i64 %2, 3
  %46 = tail call i64 @llvm.umin.i64(i64 %45, i64 8)
  br label %56

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.mem_attrs, ptr %42, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !555
  %50 = load ptr, ptr %42, align 8, !tbaa !404
  %51 = getelementptr inbounds %struct.mem_attrs, ptr %42, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !410
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
  store ptr %64, ptr %65, align 8, !tbaa !355
  br label %66

66:                                               ; preds = %36, %56
  ret ptr %39
}

; Function Attrs: optsize
declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_temp_slot_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @replace_equiv_address_nv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !657 {
  %3 = tail call fastcc ptr @change_address_1(ptr noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef 0) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @widen_memory_access(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !401 {
  %4 = tail call ptr @adjust_address_1(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef 1, i32 noundef 1) #21
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !355
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %4, %0
  br i1 %7, label %10, label %9

9:                                                ; preds = %3
  br i1 %8, label %112, label %11

10:                                               ; preds = %3
  br i1 %8, label %112, label %16

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !406
  %14 = load ptr, ptr %6, align 8, !tbaa !404
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10, %11
  %17 = zext i32 %1 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !355
  br label %25

20:                                               ; preds = %11
  %21 = zext i32 %1 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !355
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
  %40 = load ptr, ptr %39, align 8, !tbaa !355
  %41 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %32) #20
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !355
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
  %54 = load i64, ptr %53, align 8, !tbaa !355
  %55 = icmp sgt i64 %54, -1
  br i1 %55, label %94, label %56

56:                                               ; preds = %52, %49, %45
  %57 = tail call i32 @host_integerp(ptr noundef %41, i32 noundef 1) #20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %94, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %38, align 8, !tbaa !355
  %61 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !355
  %63 = tail call i64 @tree_low_cst(ptr noundef %41, i32 noundef 1) #20
  %64 = add nsw i64 %63, %62
  %65 = getelementptr inbounds %struct.tree_field_decl, ptr %40, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !355
  %67 = tail call i64 @tree_low_cst(ptr noundef %66, i32 noundef 1) #20
  %68 = sdiv i64 %67, 8
  %69 = add nsw i64 %64, %68
  %70 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %69) #21
  %71 = icmp eq ptr %60, null
  br i1 %71, label %94, label %31

72:                                               ; preds = %31
  %73 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %35
  %74 = load i32, ptr %73, align 4, !tbaa !368
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.tree_decl_common, ptr %32, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !355
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
  %91 = load i64, ptr %90, align 8, !tbaa !355
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
  %101 = load ptr, ptr %5, align 8, !tbaa !355
  %102 = icmp eq ptr %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.mem_attrs, ptr %101, i64 0, i32 4
  %105 = load i32, ptr %104, align 4, !tbaa !410
  %106 = getelementptr inbounds %struct.mem_attrs, ptr %101, i64 0, i32 5
  %107 = load i8, ptr %106, align 8, !tbaa !411
  br label %108

108:                                              ; preds = %94, %103
  %109 = phi i32 [ %105, %103 ], [ 8, %94 ]
  %110 = phi i8 [ %107, %103 ], [ 0, %94 ]
  %111 = tail call fastcc ptr @get_mem_attrs(i32 noundef 0, ptr noundef %97, ptr noundef %99, ptr noundef %100, i32 noundef %109, i8 noundef zeroext %110, i32 noundef %1) #21
  store ptr %111, ptr %5, align 8, !tbaa !355
  br label %112

112:                                              ; preds = %10, %9, %108
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_spill_slot_decl(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !658 {
  %2 = load ptr, ptr @spill_slot_decl, align 8, !tbaa !362
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %26, !prof !659

4:                                                ; preds = %1
  %5 = icmp eq i8 %0, 0
  br i1 %5, label %26, label %6, !prof !660

6:                                                ; preds = %4
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !362
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !355
  %10 = tail call ptr @get_identifier(ptr noundef nonnull @.str.2) #20
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !362
  %12 = tail call ptr @build_decl_stat(i32 noundef %9, i32 noundef 32, ptr noundef %10, ptr noundef %11) #20
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = or i64 %14, 5120
  store i64 %15, ptr %13, align 8
  %16 = load i64, ptr %12, align 8
  %17 = or i64 %16, 50331648
  store i64 %17, ptr %12, align 8
  store ptr %12, ptr @spill_slot_decl, align 8, !tbaa !362
  %18 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !362
  %19 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %18) #21
  %20 = load i32, ptr %19, align 8
  %21 = or i32 %20, 33554432
  store i32 %21, ptr %19, align 8
  %22 = tail call i32 @new_alias_set() #20
  %23 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !362
  %24 = tail call fastcc ptr @get_mem_attrs(i32 noundef %22, ptr noundef nonnull %12, ptr noundef %23, ptr noundef null, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 1) #21
  %25 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %24, ptr %25, align 8, !tbaa !355
  tail call void @set_decl_rtl(ptr noundef nonnull %12, ptr noundef nonnull %19) #21
  br label %26

26:                                               ; preds = %1, %4, %6
  %27 = phi ptr [ %12, %6 ], [ null, %4 ], [ %2, %1 ]
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @new_alias_set() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_mem_attrs_for_spill(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !661 {
  %2 = tail call ptr @get_spill_slot_decl(i8 noundef zeroext 1) #21
  %3 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !355
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !662

6:                                                ; preds = %1
  tail call void @make_decl_rtl(ptr noundef nonnull %2) #20
  %7 = load ptr, ptr %3, align 8, !tbaa !355
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !662

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !555
  br label %16

16:                                               ; preds = %8, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %8 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !355
  %20 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !362
  %21 = load i32, ptr %19, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 49
  br i1 %23, label %24, label %31, !prof !663

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !355
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 30
  %30 = select i1 %29, ptr %26, ptr %20, !prof !663
  br label %31

31:                                               ; preds = %24, %16
  %32 = phi ptr [ %20, %16 ], [ %30, %24 ]
  %33 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !355
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36, !prof !664

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mem_attrs, ptr %34, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !407
  br label %52

39:                                               ; preds = %31
  %40 = load i32, ptr %0, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %57, label %44, !prof !665

44:                                               ; preds = %39
  %45 = zext nneg i32 %42 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !355
  %48 = zext i8 %47 to i64
  %49 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %48) #21
  %50 = load ptr, ptr %33, align 8, !tbaa !355
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52, !prof !409

52:                                               ; preds = %36, %44
  %53 = phi ptr [ %38, %36 ], [ %49, %44 ]
  %54 = phi ptr [ %34, %36 ], [ %50, %44 ]
  %55 = getelementptr inbounds %struct.mem_attrs, ptr %54, i64 0, i32 4
  %56 = load i32, ptr %55, align 4, !tbaa !410
  br label %57

57:                                               ; preds = %39, %44, %52
  %58 = phi ptr [ %53, %52 ], [ %49, %44 ], [ null, %39 ]
  %59 = phi i32 [ %56, %52 ], [ 8, %44 ], [ 8, %39 ]
  %60 = load i32, ptr %0, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = tail call fastcc ptr @get_mem_attrs(i32 noundef %17, ptr noundef nonnull %2, ptr noundef %32, ptr noundef %58, i32 noundef %59, i8 noundef zeroext 0, i32 noundef %62) #21
  store ptr %63, ptr %33, align 8, !tbaa !355
  %64 = load i32, ptr %0, align 8
  %65 = or i32 %64, 33554432
  store i32 %65, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_label_rtx() local_unnamed_addr #0 !prof !666 {
  %1 = load i32, ptr @label_num, align 4, !tbaa !368
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @label_num, align 4, !tbaa !368
  %3 = tail call ptr @gen_rtx_fmt_iuuB00is_stat(i32 noundef 12, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %1, ptr noundef null) #20
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_iuuB00is_stat(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_new_first_and_last_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 !prof !401 {
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !667
  store ptr %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  store i32 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !362
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 117, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !670
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
  store i32 %13, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  store i32 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !672
  %14 = icmp eq ptr %0, null
  br i1 %14, label %45, label %15

15:                                               ; preds = %12, %32
  %16 = phi i32 [ %36, %32 ], [ 0, %12 ]
  %17 = phi ptr [ %38, %32 ], [ %0, %12 ]
  %18 = phi i32 [ %34, %32 ], [ %13, %12 ]
  %19 = phi i32 [ %33, %32 ], [ 0, %12 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !355
  %22 = icmp slt i32 %21, %5
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = tail call i32 @llvm.smax.i32(i32 %19, i32 %21)
  store i32 %24, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !672
  br label %32

25:                                               ; preds = %15
  %26 = tail call i32 @llvm.smax.i32(i32 %18, i32 %21)
  store i32 %26, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
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
  %38 = load ptr, ptr %37, align 8, !tbaa !355
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %15, !llvm.loop !673

40:                                               ; preds = %32
  %41 = add nuw nsw i32 %33, 1
  %42 = icmp eq i32 %36, 0
  %43 = add nsw i32 %36, %5
  %44 = select i1 %42, i32 %41, i32 %43
  br label %45

45:                                               ; preds = %40, %12
  %46 = phi i32 [ %13, %12 ], [ %34, %40 ]
  %47 = phi i32 [ 1, %12 ], [ %44, %40 ]
  store i32 %47, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !672
  br label %57

48:                                               ; preds = %10, %48
  %49 = phi ptr [ %55, %48 ], [ %0, %10 ]
  %50 = phi i32 [ %53, %48 ], [ 0, %10 ]
  %51 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !355
  %53 = tail call i32 @llvm.smax.i32(i32 %50, i32 %52)
  store i32 %53, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %54 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1, i32 0, i32 0, i64 2
  %55 = load ptr, ptr %54, align 8, !tbaa !355
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %48, !llvm.loop !674

57:                                               ; preds = %48, %10, %45
  %58 = phi i32 [ 0, %10 ], [ %46, %45 ], [ %53, %48 ]
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @unshare_all_rtl_again(ptr noundef %0) local_unnamed_addr #0 !prof !675 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3, !prof !676

3:                                                ; preds = %1, %14
  %4 = phi ptr [ %16, %14 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %14, !prof !677

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  tail call void @reset_used_flags(ptr noundef %11) #21
  %12 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !355
  tail call void @reset_used_flags(ptr noundef %13) #21
  br label %14

14:                                               ; preds = %3, %9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !355
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %3, !prof !678, !llvm.loop !679

18:                                               ; preds = %14, %1
  %19 = load ptr, ptr @cfun, align 8, !tbaa !362
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !680
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %21, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !355
  tail call fastcc void @set_used_decls(ptr noundef %23) #21
  %24 = load ptr, ptr @cfun, align 8, !tbaa !362
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !680
  %27 = getelementptr inbounds %struct.tree_decl_non_common, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !355
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30, !prof !676

30:                                               ; preds = %18, %37
  %31 = phi ptr [ %40, %37 ], [ %28, %18 ]
  %32 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !355
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37, !prof !682

35:                                               ; preds = %30
  tail call void @make_decl_rtl(ptr noundef nonnull %31) #20
  %36 = load ptr, ptr %32, align 8, !tbaa !355
  br label %37

37:                                               ; preds = %30, %35
  %38 = phi ptr [ %36, %35 ], [ %33, %30 ]
  tail call void @set_used_flags(ptr noundef %38) #21
  %39 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !355
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %30, !prof !683, !llvm.loop !684

42:                                               ; preds = %37, %18
  %43 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !685
  tail call void @reset_used_flags(ptr noundef %43) #21
  tail call fastcc void @unshare_all_rtl_1(ptr noundef %0) #21
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @reset_used_flags(ptr noundef %0) local_unnamed_addr #13 !prof !686 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %54, label %3, !prof !687

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
  ], !prof !688

7:                                                ; preds = %3
  %8 = and i32 %5, 65535
  %9 = and i32 %5, -536870913
  store i32 %9, ptr %4, align 8
  %10 = zext nneg i32 %8 to i64
  %11 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !355
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %54, label %14, !prof !689

14:                                               ; preds = %7
  %15 = zext i8 %12 to i64
  %16 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %10
  %17 = load ptr, ptr %16, align 8, !tbaa !362
  %18 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %19 = add nuw nsw i64 %15, 4294967295
  %20 = and i64 %19, 4294967295
  %21 = zext i8 %12 to i64
  br label %22

22:                                               ; preds = %14, %51
  %23 = phi i64 [ 0, %14 ], [ %52, %51 ]
  %24 = phi ptr [ %17, %14 ], [ %25, %51 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %24, align 1, !tbaa !355
  switch i8 %26, label %51 [
    i8 101, label %32
    i8 69, label %27
  ], !prof !690

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1 x %union.rtunion_def], ptr %18, i64 0, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !355
  %30 = load i32, ptr %29, align 8, !tbaa !481
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %41, label %51, !prof !691

32:                                               ; preds = %22
  %33 = icmp eq i64 %23, %20
  br i1 %33, label %34, label %38, !prof !692

34:                                               ; preds = %32
  %35 = getelementptr inbounds [1 x %union.rtunion_def], ptr %18, i64 0, i64 %20
  %36 = load ptr, ptr %35, align 8, !tbaa !355
  %37 = icmp eq ptr %36, null
  br i1 %37, label %54, label %3, !prof !693

38:                                               ; preds = %32
  %39 = getelementptr inbounds [1 x %union.rtunion_def], ptr %18, i64 0, i64 %23
  %40 = load ptr, ptr %39, align 8, !tbaa !355
  tail call void @reset_used_flags(ptr noundef %40) #21
  br label %51

41:                                               ; preds = %27, %41
  %42 = phi i64 [ %46, %41 ], [ 0, %27 ]
  %43 = phi ptr [ %47, %41 ], [ %29, %27 ]
  %44 = getelementptr inbounds %struct.rtvec_def, ptr %43, i64 0, i32 1, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !362
  tail call void @reset_used_flags(ptr noundef %45) #21
  %46 = add nuw nsw i64 %42, 1
  %47 = load ptr, ptr %28, align 8, !tbaa !355
  %48 = load i32, ptr %47, align 8, !tbaa !481
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %41, label %51, !prof !694, !llvm.loop !695

51:                                               ; preds = %41, %27, %38, %22
  %52 = add nuw nsw i64 %23, 1
  %53 = icmp eq i64 %52, %21
  br i1 %53, label %54, label %22, !prof !696, !llvm.loop !697

54:                                               ; preds = %34, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %7, %51, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_used_decls(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !698 !PGOFuncName !699 {
  %2 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !355
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5, !prof !700

5:                                                ; preds = %1, %17
  %6 = phi ptr [ %19, %17 ], [ %3, %1 ]
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %8, i64 11
  %10 = load i8, ptr %9, align 1, !tbaa !355
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12, !prof !701

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !355
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !702

16:                                               ; preds = %12
  tail call void @set_used_flags(ptr noundef nonnull %14) #21
  br label %17

17:                                               ; preds = %5, %12, %16
  %18 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !355
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %5, !prof !703, !llvm.loop !704

21:                                               ; preds = %17, %1
  %22 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !355
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25, !prof !705

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %28, %25 ], [ %23, %21 ]
  tail call fastcc void @set_used_decls(ptr noundef nonnull %26) #21
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !355
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %25, !prof !706, !llvm.loop !707

30:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_used_flags(ptr noundef %0) local_unnamed_addr #13 !prof !708 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3, !prof !709

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
  ], !prof !710

6:                                                ; preds = %3
  %7 = and i32 %4, 65535
  %8 = or i32 %4, 536870912
  store i32 %8, ptr %0, align 8
  %9 = zext nneg i32 %7 to i64
  %10 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !355
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %44, label %13, !prof !711

13:                                               ; preds = %6
  %14 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %9
  %15 = load ptr, ptr %14, align 8, !tbaa !362
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %17 = zext i8 %11 to i64
  br label %18

18:                                               ; preds = %13, %41
  %19 = phi i64 [ 0, %13 ], [ %42, %41 ]
  %20 = phi ptr [ %15, %13 ], [ %21, %41 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  %22 = load i8, ptr %20, align 1, !tbaa !355
  switch i8 %22, label %41 [
    i8 101, label %28
    i8 69, label %23
  ], !prof !712

23:                                               ; preds = %18
  %24 = getelementptr inbounds [1 x %union.rtunion_def], ptr %16, i64 0, i64 %19
  %25 = load ptr, ptr %24, align 8, !tbaa !355
  %26 = load i32, ptr %25, align 8, !tbaa !481
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %31, label %41, !prof !713

28:                                               ; preds = %18
  %29 = getelementptr inbounds [1 x %union.rtunion_def], ptr %16, i64 0, i64 %19
  %30 = load ptr, ptr %29, align 8, !tbaa !355
  tail call void @set_used_flags(ptr noundef %30) #21
  br label %41

31:                                               ; preds = %23, %31
  %32 = phi i64 [ %36, %31 ], [ 0, %23 ]
  %33 = phi ptr [ %37, %31 ], [ %25, %23 ]
  %34 = getelementptr inbounds %struct.rtvec_def, ptr %33, i64 0, i32 1, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !362
  tail call void @set_used_flags(ptr noundef %35) #21
  %36 = add nuw nsw i64 %32, 1
  %37 = load ptr, ptr %24, align 8, !tbaa !355
  %38 = load i32, ptr %37, align 8, !tbaa !481
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %31, label %41, !prof !714, !llvm.loop !715

41:                                               ; preds = %31, %23, %28, %18
  %42 = add nuw nsw i64 %19, 1
  %43 = icmp eq i64 %42, %17
  br i1 %43, label %44, label %18, !prof !716, !llvm.loop !717

44:                                               ; preds = %41, %6, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unshare_all_rtl_1(ptr noundef %0) unnamed_addr #0 !prof !500 !PGOFuncName !718 {
  tail call void @unshare_all_rtl_in_chain(ptr noundef %0) #21
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !685
  %3 = tail call ptr @copy_rtx_if_shared(ptr noundef %2) #21
  store ptr %3, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 13), align 8, !tbaa !685
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @unshare_all_rtl_in_chain(ptr noundef %0) local_unnamed_addr #0 !prof !719 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3, !prof !720

3:                                                ; preds = %1, %16
  %4 = phi ptr [ %18, %16 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %16, !prof !721

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  %12 = tail call ptr @copy_rtx_if_shared(ptr noundef %11) #21
  store ptr %12, ptr %10, align 8, !tbaa !355
  %13 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !355
  %15 = tail call ptr @copy_rtx_if_shared(ptr noundef %14) #21
  store ptr %15, ptr %13, align 8, !tbaa !355
  br label %16

16:                                               ; preds = %3, %9
  %17 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !355
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %3, !prof !722, !llvm.loop !723

20:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @copy_rtx_if_shared(ptr noundef %0) local_unnamed_addr #0 !prof !724 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !362
  call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %2) #21
  %3 = load ptr, ptr %2, align 8, !tbaa !362
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @unshare_all_rtl() #0 !prof !675 {
  %1 = tail call ptr @get_insns() #21
  tail call fastcc void @unshare_all_rtl_1(ptr noundef %1) #21
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @get_insns() local_unnamed_addr #10 !prof !725 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !667
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_rtl_sharing() local_unnamed_addr #0 !prof !401 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  tail call void @reset_used_flags(ptr noundef %11) #21
  %12 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !355
  tail call void @reset_used_flags(ptr noundef %13) #21
  %14 = load ptr, ptr %10, align 8, !tbaa !355
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %18, label %43

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !355
  %21 = load i32, ptr %20, align 8, !tbaa !481
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %18, %33
  %24 = phi i64 [ %38, %33 ], [ 0, %18 ]
  %25 = phi ptr [ %39, %33 ], [ %20, %18 ]
  %26 = getelementptr inbounds %struct.rtvec_def, ptr %25, i64 0, i32 1, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !362
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
  %35 = load ptr, ptr %34, align 8, !tbaa !355
  tail call void @reset_used_flags(ptr noundef %35) #21
  %36 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !355
  tail call void @reset_used_flags(ptr noundef %37) #21
  %38 = add nuw nsw i64 %24, 1
  %39 = load ptr, ptr %19, align 8, !tbaa !355
  %40 = load i32, ptr %39, align 8, !tbaa !481
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %23, label %43, !llvm.loop !726

43:                                               ; preds = %33, %18, %3, %9
  %44 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !355
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %3, !llvm.loop !727

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
  %58 = load ptr, ptr %57, align 8, !tbaa !355
  tail call fastcc void @verify_rtx_sharing(ptr noundef %58) #21
  %59 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 1, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !355
  tail call fastcc void @verify_rtx_sharing(ptr noundef %60) #21
  br label %61

61:                                               ; preds = %50, %56
  %62 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !355
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %50, !llvm.loop !728

65:                                               ; preds = %61, %47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @verify_rtx_sharing(ptr noundef %0) unnamed_addr #0 !prof !401 !PGOFuncName !729 {
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
  %9 = load ptr, ptr %8, align 8, !tbaa !355
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
  %21 = load ptr, ptr %20, align 8, !tbaa !355
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
  %41 = load i8, ptr %40, align 1, !tbaa !355
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %95, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %39
  %45 = load ptr, ptr %44, align 8, !tbaa !362
  %46 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %47 = zext i8 %41 to i64
  br label %48

48:                                               ; preds = %43, %92
  %49 = phi i64 [ 0, %43 ], [ %93, %92 ]
  %50 = phi ptr [ %45, %43 ], [ %51, %92 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  %52 = load i8, ptr %50, align 1, !tbaa !355
  switch i8 %52, label %92 [
    i8 101, label %53
    i8 69, label %56
  ]

53:                                               ; preds = %48
  %54 = getelementptr inbounds [1 x %union.rtunion_def], ptr %46, i64 0, i64 %49
  %55 = load ptr, ptr %54, align 8, !tbaa !355
  tail call fastcc void @verify_rtx_sharing(ptr noundef %55) #21
  br label %92

56:                                               ; preds = %48
  %57 = getelementptr inbounds [1 x %union.rtunion_def], ptr %46, i64 0, i64 %49
  %58 = load ptr, ptr %57, align 8, !tbaa !355
  %59 = icmp eq ptr %58, null
  br i1 %59, label %92, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %58, align 8, !tbaa !481
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %60
  %64 = zext nneg i32 %61 to i64
  br label %65

65:                                               ; preds = %63, %88
  %66 = phi i64 [ 0, %63 ], [ %90, %88 ]
  %67 = icmp eq i64 %66, 0
  %68 = load ptr, ptr %57, align 8, !tbaa !355
  br i1 %67, label %69, label %71

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1, i64 0
  br label %85

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1, i64 %66
  %73 = load ptr, ptr %72, align 8, !tbaa !362
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 23
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !355
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 65535
  %82 = icmp eq i32 %81, 17
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1
  br label %85

85:                                               ; preds = %83, %69
  %86 = phi ptr [ %70, %69 ], [ %84, %83 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !355
  br label %88

88:                                               ; preds = %85, %71, %77
  %89 = phi ptr [ %73, %77 ], [ %73, %71 ], [ %87, %85 ]
  tail call fastcc void @verify_rtx_sharing(ptr noundef %89) #21
  %90 = add nuw nsw i64 %66, 1
  %91 = icmp eq i64 %90, %64
  br i1 %91, label %92, label %65, !llvm.loop !730

92:                                               ; preds = %88, %60, %53, %48, %56
  %93 = add nuw nsw i64 %49, 1
  %94 = icmp eq i64 %93, %47
  br i1 %94, label %95, label %48, !llvm.loop !731

95:                                               ; preds = %92, %36, %19, %16, %13, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @shared_const_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @constant_address_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_rtx_if_shared_1(ptr nocapture noundef %0) unnamed_addr #0 !prof !732 !PGOFuncName !733 {
  br label %2

2:                                                ; preds = %90, %1
  %3 = phi i32 [ 0, %1 ], [ %34, %90 ]
  %4 = phi ptr [ %0, %1 ], [ %87, %90 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !362
  %6 = icmp eq ptr %5, null
  br i1 %6, label %92, label %7, !prof !734

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
  ], !prof !735

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !355
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %25, !prof !736

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %13) #21
  %19 = icmp ult i32 %18, 53
  br i1 %19, label %92, label %25, !prof !737

20:                                               ; preds = %7
  %21 = tail call zeroext i8 @shared_const_p(ptr noundef nonnull %5) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %92, !prof !738

23:                                               ; preds = %20
  %24 = load i32, ptr %5, align 8
  br label %25

25:                                               ; preds = %23, %7, %11, %17
  %26 = phi i32 [ %24, %23 ], [ %8, %7 ], [ %8, %11 ], [ %8, %17 ]
  %27 = and i32 %26, 536870912
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29, !prof !739

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
  %39 = load i8, ptr %38, align 1, !tbaa !355
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42, !prof !740

41:                                               ; preds = %32
  store ptr %35, ptr %4, align 8, !tbaa !362
  br label %92

42:                                               ; preds = %32
  %43 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %37
  %44 = load ptr, ptr %43, align 8, !tbaa !362
  %45 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %46 = zext i8 %39 to i64
  br label %47

47:                                               ; preds = %42, %86
  %48 = phi i64 [ 0, %42 ], [ %88, %86 ]
  %49 = phi ptr [ %44, %42 ], [ %51, %86 ]
  %50 = phi ptr [ null, %42 ], [ %87, %86 ]
  %51 = getelementptr inbounds i8, ptr %49, i64 1
  %52 = load i8, ptr %49, align 1, !tbaa !355
  switch i8 %52, label %86 [
    i8 101, label %53
    i8 69, label %58
  ], !prof !741

53:                                               ; preds = %47
  %54 = icmp eq ptr %50, null
  br i1 %54, label %56, label %55, !prof !742

55:                                               ; preds = %53
  tail call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %50) #21
  br label %56

56:                                               ; preds = %55, %53
  %57 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %48
  br label %86

58:                                               ; preds = %47
  %59 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %48
  %60 = load ptr, ptr %59, align 8, !tbaa !355
  %61 = icmp eq ptr %60, null
  br i1 %61, label %86, label %62, !prof !743

62:                                               ; preds = %58
  %63 = icmp eq i32 %34, 0
  %64 = load i32, ptr %60, align 8, !tbaa !481
  %65 = icmp sgt i32 %64, 0
  br i1 %63, label %70, label %66, !prof !744

66:                                               ; preds = %62
  br i1 %65, label %67, label %86

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.rtvec_def, ptr %60, i64 0, i32 1
  %69 = tail call ptr @gen_rtvec_v(i32 noundef %64, ptr noundef nonnull %68) #21
  store ptr %69, ptr %59, align 8, !tbaa !355
  br label %71

70:                                               ; preds = %62
  br i1 %65, label %71, label %86, !prof !745

71:                                               ; preds = %67, %70
  %72 = phi ptr [ %69, %67 ], [ %60, %70 ]
  %73 = zext nneg i32 %64 to i64
  br label %74

74:                                               ; preds = %71, %81
  %75 = phi ptr [ %72, %71 ], [ %82, %81 ]
  %76 = phi i64 [ 0, %71 ], [ %84, %81 ]
  %77 = phi ptr [ %50, %71 ], [ %83, %81 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79, !prof !746

79:                                               ; preds = %74
  tail call fastcc void @copy_rtx_if_shared_1(ptr noundef nonnull %77) #21
  %80 = load ptr, ptr %59, align 8, !tbaa !355
  br label %81

81:                                               ; preds = %79, %74
  %82 = phi ptr [ %80, %79 ], [ %75, %74 ]
  %83 = getelementptr inbounds %struct.rtvec_def, ptr %82, i64 0, i32 1, i64 %76
  %84 = add nuw nsw i64 %76, 1
  %85 = icmp eq i64 %84, %73
  br i1 %85, label %86, label %74, !prof !747, !llvm.loop !748

86:                                               ; preds = %81, %66, %70, %56, %47, %58
  %87 = phi ptr [ %50, %47 ], [ %50, %58 ], [ %57, %56 ], [ %50, %70 ], [ %50, %66 ], [ %83, %81 ]
  %88 = add nuw nsw i64 %48, 1
  %89 = icmp eq i64 %88, %46
  br i1 %89, label %90, label %47, !prof !749, !llvm.loop !750

90:                                               ; preds = %86
  store ptr %35, ptr %4, align 8, !tbaa !362
  %91 = icmp eq ptr %87, null
  br i1 %91, label %92, label %2, !prof !409

92:                                               ; preds = %90, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %20, %17, %2, %41
  ret void
}

; Function Attrs: optsize
declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_safe_from(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !401 {
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
  %9 = load ptr, ptr %8, align 8, !tbaa !355
  br label %3

10:                                               ; preds = %3
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 65535
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !368
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
define dso_local void @set_first_insn(ptr noundef %0) local_unnamed_addr #0 !prof !751 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !355
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !752

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2912, ptr noundef nonnull @.str.1) #20
  br label %6

6:                                                ; preds = %1, %5
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !667
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @get_last_insn() local_unnamed_addr #10 !prof !753 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_last_insn(ptr noundef %0) local_unnamed_addr #0 !prof !754 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %3 = load ptr, ptr %2, align 8, !tbaa !355
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !755

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2929, ptr noundef nonnull @.str.1) #20
  br label %6

6:                                                ; preds = %1, %5
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_last_insn_anywhere() local_unnamed_addr #14 !prof !401 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %15

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !362
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %10

6:                                                ; preds = %10
  %7 = getelementptr inbounds %struct.sequence_stack, ptr %11, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !362
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !llvm.loop !756

10:                                               ; preds = %3, %6
  %11 = phi ptr [ %8, %6 ], [ %4, %3 ]
  %12 = getelementptr inbounds %struct.sequence_stack, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !757
  %14 = icmp eq ptr %13, null
  br i1 %14, label %6, label %15

15:                                               ; preds = %10, %6, %3, %0
  %16 = phi ptr [ %1, %0 ], [ null, %3 ], [ %13, %10 ], [ null, %6 ]
  ret ptr %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_first_nonnote_insn() local_unnamed_addr #14 !prof !401 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !667
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
  br i1 %16, label %28, label %9, !llvm.loop !759

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !355
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !355
  %26 = getelementptr inbounds %struct.rtvec_def, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !362
  br label %28

28:                                               ; preds = %9, %14, %6, %3, %23, %17, %0
  %29 = phi ptr [ %27, %23 ], [ %1, %17 ], [ null, %0 ], [ %1, %3 ], [ null, %6 ], [ %10, %9 ], [ null, %14 ]
  ret ptr %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_insn(ptr noundef readonly %0) local_unnamed_addr #9 !prof !401 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !355
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !355
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !355
  %20 = getelementptr inbounds %struct.rtvec_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !362
  br label %22

22:                                               ; preds = %3, %7, %11, %17, %1
  %23 = phi ptr [ %21, %17 ], [ %5, %11 ], [ %5, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_last_nonnote_insn() local_unnamed_addr #14 !prof !401 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
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
  br i1 %16, label %31, label %9, !llvm.loop !760

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !355
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !355
  %26 = load i32, ptr %25, align 8, !tbaa !481
  %27 = add nsw i32 %26, -1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.rtvec_def, ptr %25, i64 0, i32 1, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !362
  br label %31

31:                                               ; preds = %9, %14, %6, %3, %23, %17, %0
  %32 = phi ptr [ %30, %23 ], [ %1, %17 ], [ null, %0 ], [ %1, %3 ], [ null, %6 ], [ %10, %9 ], [ null, %14 ]
  ret ptr %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @previous_insn(ptr noundef readonly %0) local_unnamed_addr #9 !prof !401 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !355
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !355
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !355
  %20 = load i32, ptr %19, align 8, !tbaa !481
  %21 = add nsw i32 %20, -1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.rtvec_def, ptr %19, i64 0, i32 1, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !362
  br label %25

25:                                               ; preds = %3, %7, %11, %17, %1
  %26 = phi ptr [ %24, %17 ], [ %5, %11 ], [ %5, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @get_max_uid() local_unnamed_addr #10 !prof !761 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_max_insn_count() local_unnamed_addr #9 !prof !762 {
  %1 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %2 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !672
  %3 = load ptr, ptr @compiler_params, align 8, !tbaa !362
  %4 = getelementptr inbounds %struct.param_info, ptr %3, i64 117, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !670
  %6 = tail call i32 @llvm.smax.i32(i32 %2, i32 %5)
  %7 = sub nsw i32 %1, %6
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_nonnote_insn(ptr noundef readonly %0) local_unnamed_addr #14 !prof !763 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !764

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !355
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !765

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 13
  br i1 %11, label %3, label %12, !prof !766, !llvm.loop !767

12:                                               ; preds = %3, %8, %1
  %13 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_nonnote_insn_bb(ptr noundef readonly %0) local_unnamed_addr #14 !prof !768 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi ptr [ %0, %1 ], [ %7, %13 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5, !prof !769

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !355
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9, !prof !770

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 13
  br i1 %12, label %13, label %17, !prof !771

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %15 = load i32, ptr %14, align 8, !tbaa !355
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %2, !prof !772, !llvm.loop !773

17:                                               ; preds = %2, %9, %5, %13
  %18 = phi ptr [ null, %13 ], [ null, %5 ], [ %7, %9 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_nonnote_insn(ptr noundef readonly %0) local_unnamed_addr #14 !prof !774 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !775

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !355
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !776

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 13
  br i1 %11, label %3, label %12, !prof !777, !llvm.loop !778

12:                                               ; preds = %3, %8, %1
  %13 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_nonnote_insn_bb(ptr noundef readonly %0) local_unnamed_addr #14 !prof !401 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi ptr [ %0, %1 ], [ %7, %13 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !355
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 13
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  %15 = load i32, ptr %14, align 8, !tbaa !355
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %2, !llvm.loop !779

17:                                               ; preds = %2, %9, %5, %13
  %18 = phi ptr [ null, %13 ], [ null, %5 ], [ %7, %9 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_nondebug_insn(ptr noundef readonly %0) local_unnamed_addr #14 !prof !401 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !355
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %3, label %12, !llvm.loop !780

12:                                               ; preds = %3, %8, %1
  %13 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_nondebug_insn(ptr noundef readonly %0) local_unnamed_addr #14 !prof !781 {
  br label %2

2:                                                ; preds = %9, %1
  %3 = phi ptr [ %0, %1 ], [ %7, %9 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !782

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !355
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !782

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 7
  br i1 %12, label %2, label %13, !prof !782, !llvm.loop !783

13:                                               ; preds = %5, %9, %2
  %14 = phi ptr [ null, %5 ], [ %7, %9 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_real_insn(ptr noundef readonly %0) local_unnamed_addr #14 !prof !784 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3, !prof !785

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !355
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8, !prof !785

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -7
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %3, !prof !786

13:                                               ; preds = %8, %3, %1
  %14 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_real_insn(ptr noundef readonly %0) local_unnamed_addr #14 !prof !787 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3, !prof !788

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !355
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8, !prof !789

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -7
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %3, !prof !790

13:                                               ; preds = %8, %3, %1
  %14 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @last_call_insn() local_unnamed_addr #14 !prof !791 {
  %1 = tail call ptr @get_last_insn() #21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %12, label %3, !prof !792

3:                                                ; preds = %0, %8
  %4 = phi ptr [ %10, %8 ], [ %1, %0 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %12, label %8, !prof !793

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !355
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %3, !prof !794, !llvm.loop !795

12:                                               ; preds = %3, %8, %0
  %13 = phi ptr [ null, %0 ], [ null, %8 ], [ %4, %3 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @active_insn_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !796 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %16 [
    i16 10, label %17
    i16 9, label %17
    i16 8, label %4
  ], !prof !797

4:                                                ; preds = %1
  %5 = load i32, ptr @reload_completed, align 4, !tbaa !368
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7, !prof !798

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !355
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 24
  br i1 %12, label %17, label %13, !prof !799

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
define dso_local ptr @next_active_insn(ptr noundef readonly %0) local_unnamed_addr #14 !prof !800 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !801

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !355
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8, !prof !802

8:                                                ; preds = %3
  %9 = tail call i32 @active_insn_p(ptr noundef nonnull %6) #21, !range !486
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %3, label %11, !prof !803, !llvm.loop !804

11:                                               ; preds = %3, %8, %1
  %12 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_active_insn(ptr noundef readonly %0) local_unnamed_addr #14 !prof !805 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !806

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !355
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8, !prof !806

8:                                                ; preds = %3
  %9 = tail call i32 @active_insn_p(ptr noundef nonnull %6) #21, !range !486
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %3, label %11, !prof !807, !llvm.loop !808

11:                                               ; preds = %3, %8, %1
  %12 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @next_label(ptr noundef readonly %0) local_unnamed_addr #14 !prof !401 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !355
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 12
  br i1 %11, label %12, label %3, !llvm.loop !809

12:                                               ; preds = %3, %8, %1
  %13 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @prev_label(ptr noundef readonly %0) local_unnamed_addr #14 !prof !401 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %8
  %4 = phi ptr [ %6, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !355
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 12
  br i1 %11, label %12, label %3, !llvm.loop !810

12:                                               ; preds = %3, %8, %1
  %13 = phi ptr [ null, %1 ], [ %6, %8 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @skip_consecutive_labels(ptr noundef readonly %0) local_unnamed_addr #14 !prof !401 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !355
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %3, !llvm.loop !811

16:                                               ; preds = %10, %3, %1
  %17 = phi ptr [ null, %1 ], [ %5, %3 ], [ %12, %10 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @try_split(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !812 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !355
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !355
  %8 = load i32, ptr %1, align 8
  %9 = and i32 %8, 1073741824
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %220, !prof !813

11:                                               ; preds = %3
  %12 = tail call i32 @any_condjump_p(ptr noundef nonnull %1) #20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14, !prof !814

14:                                               ; preds = %11
  %15 = tail call ptr @find_reg_note(ptr noundef nonnull %1, i32 noundef 13, ptr noundef null) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17, !prof !815

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !355
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !355
  %22 = trunc i64 %21 to i32
  store i32 %22, ptr @split_branch_probability, align 4, !tbaa !368
  br label %25

23:                                               ; preds = %11, %14
  %24 = load i32, ptr @split_branch_probability, align 4, !tbaa !368
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi i32 [ %24, %23 ], [ %22, %17 ]
  %27 = tail call ptr @split_insns(ptr noundef %0, ptr noundef nonnull %1) #20
  store i32 -1, ptr @split_branch_probability, align 4, !tbaa !368
  %28 = icmp eq ptr %7, null
  br i1 %28, label %36, label %29, !prof !816

29:                                               ; preds = %25
  %30 = load i32, ptr %7, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 11
  br i1 %32, label %33, label %36, !prof !817

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !355
  br label %36

36:                                               ; preds = %33, %29, %25
  %37 = phi i1 [ false, %33 ], [ true, %29 ], [ true, %25 ]
  %38 = phi ptr [ %35, %33 ], [ %7, %29 ], [ null, %25 ]
  %39 = icmp eq ptr %27, null
  br i1 %39, label %220, label %40, !prof !818

40:                                               ; preds = %36, %51
  %41 = phi ptr [ %53, %51 ], [ %27, %36 ]
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = add nsw i32 %43, -7
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %46, label %51, !prof !819

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !355
  %49 = tail call i32 @rtx_equal_p(ptr noundef %48, ptr noundef %0) #20
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %220, !prof !820

51:                                               ; preds = %40, %46
  %52 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !355
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %40, !prof !821

55:                                               ; preds = %51
  tail call void @unshare_all_rtl_in_chain(ptr noundef nonnull %27) #21
  br label %56

56:                                               ; preds = %55, %79
  %57 = phi i32 [ 0, %55 ], [ %80, %79 ]
  %58 = phi ptr [ %41, %55 ], [ %82, %79 ]
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 9
  br i1 %61, label %62, label %79, !prof !822

62:                                               ; preds = %56
  %63 = icmp eq i32 %26, -1
  %64 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !355
  tail call void @mark_jump_label(ptr noundef %65, ptr noundef nonnull %58, i32 noundef 0) #20
  %66 = add nsw i32 %57, 1
  br i1 %63, label %79, label %67, !prof !823

67:                                               ; preds = %62
  %68 = tail call i32 @any_condjump_p(ptr noundef nonnull %58) #20
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %79, label %70, !prof !823

70:                                               ; preds = %67
  %71 = tail call ptr @find_reg_note(ptr noundef nonnull %58, i32 noundef 13, ptr noundef null) #20
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %79, !prof !824

73:                                               ; preds = %70
  %74 = icmp eq i32 %57, 0
  br i1 %74, label %76, label %75, !prof !825

75:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3497, ptr noundef nonnull @.str.1) #20
  br label %76

76:                                               ; preds = %73, %75
  %77 = sext i32 %26 to i64
  %78 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %77) #21
  tail call void @add_reg_note(ptr noundef nonnull %58, i32 noundef 13, ptr noundef %78) #20
  br label %79

79:                                               ; preds = %56, %76, %70, %67, %62
  %80 = phi i32 [ %66, %70 ], [ %66, %76 ], [ %66, %67 ], [ %66, %62 ], [ %57, %56 ]
  %81 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !355
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %56, !prof !826, !llvm.loop !827

84:                                               ; preds = %79
  %85 = load i32, ptr %1, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 10
  br i1 %87, label %88, label %119, !prof !828

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
  %99 = load ptr, ptr %98, align 8, !tbaa !362
  %100 = icmp eq ptr %99, null
  %101 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1, i32 0, i32 0, i64 1
  br i1 %100, label %102, label %97, !llvm.loop !829

102:                                              ; preds = %97
  %103 = load ptr, ptr %89, align 8, !tbaa !355
  store ptr %103, ptr %98, align 8, !tbaa !362
  %104 = load i32, ptr %1, align 8
  %105 = and i32 %104, 16777216
  %106 = load i32, ptr %91, align 8
  %107 = and i32 %106, -16777217
  %108 = or disjoint i32 %107, %105
  store i32 %108, ptr %91, align 8
  %109 = load i32, ptr @flag_enable_icf_debug, align 4, !tbaa !368
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %102
  %112 = load ptr, ptr @debug_hooks, align 8, !tbaa !362
  %113 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %112, i64 0, i32 28
  %114 = load ptr, ptr %113, align 8, !tbaa !830
  tail call void %114(ptr noundef nonnull %1, ptr noundef nonnull %91) #20
  br label %115

115:                                              ; preds = %102, %111, %90
  %116 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1, i32 0, i32 0, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !355
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %90, !llvm.loop !832

119:                                              ; preds = %115, %84
  %120 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !355
  %122 = icmp eq ptr %121, null
  br i1 %122, label %165, label %123, !prof !833

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
  ], !prof !834

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
  %142 = load ptr, ptr %132, align 8, !tbaa !355
  tail call void @add_reg_note(ptr noundef nonnull %134, i32 noundef %141, ptr noundef %142) #20
  br label %143

143:                                              ; preds = %133, %138
  %144 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1, i32 0, i32 0, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !355
  %146 = icmp eq ptr %145, null
  br i1 %146, label %161, label %133, !llvm.loop !835

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
  %156 = load ptr, ptr %129, align 8, !tbaa !355
  tail call void @add_reg_note(ptr noundef nonnull %148, i32 noundef %155, ptr noundef %156) #20
  br label %157

157:                                              ; preds = %147, %152
  %158 = getelementptr inbounds %struct.rtx_def, ptr %148, i64 0, i32 1, i32 0, i32 0, i64 1
  %159 = load ptr, ptr %158, align 8, !tbaa !355
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %147, !llvm.loop !836

161:                                              ; preds = %157, %143, %130, %123
  %162 = getelementptr inbounds %struct.rtx_def, ptr %124, i64 0, i32 1, i32 0, i32 0, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !355
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %123, !prof !837, !llvm.loop !838

165:                                              ; preds = %161, %119
  %166 = load i32, ptr %1, align 8
  %167 = and i32 %166, 65535
  %168 = add nsw i32 %167, -7
  %169 = icmp ult i32 %168, 4
  br i1 %169, label %170, label %182, !prof !839

170:                                              ; preds = %165, %178
  %171 = phi ptr [ %180, %178 ], [ %41, %165 ]
  %172 = load i32, ptr %171, align 8
  %173 = and i32 %172, 65535
  %174 = icmp eq i32 %173, 8
  br i1 %174, label %175, label %178, !prof !840

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 1
  %177 = load ptr, ptr %176, align 8, !tbaa !355
  tail call fastcc void @mark_label_nuses(ptr noundef %177) #21
  br label %178

178:                                              ; preds = %175, %170
  %179 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 0, i32 1, i32 0, i32 0, i64 1
  %180 = load ptr, ptr %179, align 8, !tbaa !355
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %170, !prof !826, !llvm.loop !841

182:                                              ; preds = %178, %165
  %183 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %184 = load i32, ptr %183, align 8, !tbaa !355
  %185 = tail call ptr @emit_insn_after_setloc(ptr noundef nonnull %27, ptr noundef nonnull %1, i32 noundef %184) #21
  %186 = tail call ptr @delete_insn(ptr noundef nonnull %1) #20
  br i1 %37, label %189, label %187, !prof !842

187:                                              ; preds = %182
  %188 = tail call ptr @emit_barrier_after(ptr noundef %185) #21
  br label %189

189:                                              ; preds = %187, %182
  %190 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %191 = load ptr, ptr %190, align 8, !tbaa !355
  %192 = icmp eq ptr %191, %38
  br i1 %192, label %211, label %193, !prof !843

193:                                              ; preds = %189, %206
  %194 = phi ptr [ %209, %206 ], [ %191, %189 ]
  %195 = load i32, ptr %194, align 8
  %196 = and i32 %195, 134217728
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %206, !prof !820

198:                                              ; preds = %193
  %199 = and i32 %195, 65535
  %200 = add nsw i32 %199, -7
  %201 = icmp ult i32 %200, 4
  br i1 %201, label %202, label %206, !prof !819

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.rtx_def, ptr %194, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !355
  %205 = tail call ptr @try_split(ptr noundef %204, ptr noundef nonnull %194, i32 noundef 1) #21
  br label %206

206:                                              ; preds = %198, %193, %202
  %207 = phi ptr [ %194, %193 ], [ %205, %202 ], [ %194, %198 ]
  %208 = getelementptr inbounds %struct.rtx_def, ptr %207, i64 0, i32 1, i32 0, i32 0, i64 2
  %209 = load ptr, ptr %208, align 8, !tbaa !355
  %210 = icmp eq ptr %209, %38
  br i1 %210, label %211, label %193, !prof !844, !llvm.loop !845

211:                                              ; preds = %206, %189
  %212 = icmp eq i32 %2, 0
  br i1 %212, label %217, label %213, !prof !828

213:                                              ; preds = %211
  %214 = icmp eq ptr %38, null
  br i1 %214, label %217, label %215, !prof !828

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %217

217:                                              ; preds = %211, %213, %215
  %218 = phi ptr [ %216, %215 ], [ getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), %213 ], [ %190, %211 ]
  %219 = load ptr, ptr %218, align 8, !tbaa !355
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
define internal fastcc void @mark_label_nuses(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !846 !PGOFuncName !847 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 44
  br i1 %4, label %5, label %15, !prof !848

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !355
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 12
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !355
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !355
  br label %15

15:                                               ; preds = %11, %5, %1
  %16 = zext nneg i32 %3 to i64
  %17 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !362
  %19 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %16
  %20 = load i8, ptr %19, align 1, !tbaa !355
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %50, label %22, !prof !849

22:                                               ; preds = %15
  %23 = zext i8 %20 to i64
  br label %24

24:                                               ; preds = %22, %48
  %25 = phi i64 [ %23, %22 ], [ %26, %48 ]
  %26 = add nsw i64 %25, -1
  %27 = getelementptr inbounds i8, ptr %18, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !355
  switch i8 %28, label %48 [
    i8 101, label %29
    i8 69, label %33
  ], !prof !850

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %31 = getelementptr inbounds [1 x %union.rtunion_def], ptr %30, i64 0, i64 %26
  %32 = load ptr, ptr %31, align 8, !tbaa !355
  tail call fastcc void @mark_label_nuses(ptr noundef %32) #21
  br label %48

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = getelementptr inbounds [1 x %union.rtunion_def], ptr %34, i64 0, i64 %26
  %36 = load ptr, ptr %35, align 8, !tbaa !355
  %37 = load i32, ptr %36, align 8, !tbaa !481
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %48, !prof !851

39:                                               ; preds = %33
  %40 = zext nneg i32 %37 to i64
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ %40, %39 ], [ %43, %41 ]
  %43 = add nsw i64 %42, -1
  %44 = load ptr, ptr %35, align 8, !tbaa !355
  %45 = getelementptr inbounds %struct.rtvec_def, ptr %44, i64 0, i32 1, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !362
  tail call fastcc void @mark_label_nuses(ptr noundef %46) #21
  %47 = icmp ugt i64 %42, 1
  br i1 %47, label %41, label %48, !prof !852, !llvm.loop !853

48:                                               ; preds = %41, %33, %24, %29
  %49 = icmp sgt i64 %25, 1
  br i1 %49, label %24, label %50, !prof !854, !llvm.loop !855

50:                                               ; preds = %48, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !856 {
  %4 = tail call ptr @emit_insn_after_noloc(ptr noundef %0, ptr noundef %1, ptr noundef null) #21
  %5 = icmp ne ptr %0, null
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %21, !prof !857

8:                                                ; preds = %3, %19
  %9 = phi ptr [ %11, %19 ], [ %1, %3 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  %12 = tail call i32 @active_insn_p(ptr noundef %11) #21, !range !486
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14, !prof !858

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !355
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !859

18:                                               ; preds = %14
  store i32 %2, ptr %15, align 8, !tbaa !355
  br label %19

19:                                               ; preds = %18, %14, %8
  %20 = icmp eq ptr %11, %4
  br i1 %20, label %21, label %8, !prof !860

21:                                               ; preds = %19, %3
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_barrier_after(ptr noundef %0) local_unnamed_addr #0 !prof !861 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 11) #20
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !355
  tail call void @add_insn_after(ptr noundef %2, ptr noundef %0, ptr poison) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_insn_raw(ptr noundef %0) local_unnamed_addr #0 !prof !862 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 8) #20
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !355
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store ptr %0, ptr %6, align 8, !tbaa !355
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1
  store i32 -1, ptr %7, align 8, !tbaa !355
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %8, align 8, !tbaa !355
  %9 = tail call i32 @curr_insn_locator() #20
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  store i32 %9, ptr %10, align 8, !tbaa !355
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !355
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @curr_insn_locator() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_debug_insn_raw(ptr noundef %0) local_unnamed_addr #0 !prof !401 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 7) #20
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !672
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !672
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !355
  %6 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !672
  %7 = load ptr, ptr @compiler_params, align 8, !tbaa !362
  %8 = getelementptr inbounds %struct.param_info, ptr %7, i64 117, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !670
  %10 = icmp sgt i32 %6, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  store i32 %12, ptr %5, align 8, !tbaa !355
  br label %14

14:                                               ; preds = %11, %1
  %15 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store ptr %0, ptr %15, align 8, !tbaa !355
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1
  store i32 -1, ptr %16, align 8, !tbaa !355
  %17 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr null, ptr %17, align 8, !tbaa !355
  %18 = tail call i32 @curr_insn_locator() #20
  %19 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  store i32 %18, ptr %19, align 8, !tbaa !355
  %20 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %20, align 8, !tbaa !355
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @make_jump_insn_raw(ptr noundef %0) local_unnamed_addr #0 !prof !863 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 9) #20
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !355
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store ptr %0, ptr %6, align 8, !tbaa !355
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1
  store i32 -1, ptr %7, align 8, !tbaa !355
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %9 = tail call i32 @curr_insn_locator() #20
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  store i32 %9, ptr %10, align 8, !tbaa !355
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !355
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @add_insn(ptr noundef %0) local_unnamed_addr #15 !prof !864 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %2, ptr %3, align 8, !tbaa !355
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %4, align 8, !tbaa !355
  %5 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !865

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %8, align 8, !tbaa !355
  br label %9

9:                                                ; preds = %7, %1
  %10 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !667
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !865

12:                                               ; preds = %9
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !667
  br label %13

13:                                               ; preds = %12, %9
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_insn_after(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) local_unnamed_addr #0 !prof !866 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %5 = load ptr, ptr %4, align 8, !tbaa !355
  %6 = load i32, ptr @optimize, align 4, !tbaa !368
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !867

8:                                                ; preds = %3
  %9 = load i32, ptr %1, align 8
  %10 = and i32 %9, 134217728
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !868

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3723, ptr noundef nonnull @.str.1) #20
  br label %13

13:                                               ; preds = %3, %8, %12
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %5, ptr %14, align 8, !tbaa !355
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %15, align 8, !tbaa !355
  %16 = icmp eq ptr %5, null
  br i1 %16, label %34, label %17, !prof !869

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %0, ptr %18, align 8, !tbaa !355
  %19 = load i32, ptr %5, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %22, label %53, !prof !870

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !355
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %53, !prof !871

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !355
  %31 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !362
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %0, ptr %33, align 8, !tbaa !355
  br label %53

34:                                               ; preds = %13
  %35 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %40, label %37, !prof !872

37:                                               ; preds = %34
  %38 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !362
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %41

40:                                               ; preds = %34
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  br label %53

41:                                               ; preds = %37, %48
  %42 = phi ptr [ %50, %48 ], [ %38, %37 ]
  %43 = getelementptr inbounds %struct.sequence_stack, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !757
  %45 = icmp eq ptr %44, %1
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.sequence_stack, ptr %42, i64 0, i32 1
  store ptr %0, ptr %47, align 8, !tbaa !757
  br label %53

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.sequence_stack, ptr %42, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !362
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %41, !llvm.loop !873

52:                                               ; preds = %48, %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3747, ptr noundef nonnull @.str.1) #20
  br label %53

53:                                               ; preds = %46, %52, %40, %17, %22, %28
  %54 = load i32, ptr %1, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 11
  br i1 %56, label %85, label %57, !prof !867

57:                                               ; preds = %53
  %58 = load i32, ptr %0, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 11
  br i1 %60, label %85, label %61, !prof !874

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !355
  %64 = icmp eq ptr %63, null
  br i1 %64, label %85, label %65, !prof !875

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %63, ptr %66, align 8, !tbaa !355
  %67 = add nsw i32 %59, -7
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %69, label %71, !prof !876

69:                                               ; preds = %65
  %70 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %0) #20
  br label %71

71:                                               ; preds = %65, %69
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !355
  %74 = getelementptr inbounds %struct.rtl_bb_info, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !877
  %76 = icmp eq ptr %75, %1
  br i1 %76, label %77, label %85, !prof !879

77:                                               ; preds = %71
  %78 = load i32, ptr %0, align 8
  %79 = trunc i32 %78 to i16
  switch i16 %79, label %84 [
    i16 11, label %85
    i16 13, label %80
  ], !prof !880

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %82 = load i32, ptr %81, align 8, !tbaa !355
  %83 = icmp eq i32 %82, 10
  br i1 %83, label %85, label %84, !prof !881

84:                                               ; preds = %77, %80
  store ptr %0, ptr %74, align 8, !tbaa !877
  br label %85

85:                                               ; preds = %77, %71, %80, %84, %61, %57, %53
  store ptr %0, ptr %4, align 8, !tbaa !355
  %86 = load i32, ptr %1, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %104, !prof !882

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !355
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 5
  br i1 %94, label %95, label %104, !prof !883

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !355
  %98 = load i32, ptr %97, align 8, !tbaa !481
  %99 = add nsw i32 %98, -1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.rtvec_def, ptr %97, i64 0, i32 1, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !362
  %103 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %103, align 8, !tbaa !355
  br label %104

104:                                              ; preds = %95, %89, %85
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_insn_before(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !884 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !355
  %6 = load i32, ptr @optimize, align 4, !tbaa !368
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !885

8:                                                ; preds = %3
  %9 = load i32, ptr %1, align 8
  %10 = and i32 %9, 134217728
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !886

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3785, ptr noundef nonnull @.str.1) #20
  br label %13

13:                                               ; preds = %3, %8, %12
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %5, ptr %14, align 8, !tbaa !355
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %1, ptr %15, align 8, !tbaa !355
  %16 = icmp eq ptr %5, null
  br i1 %16, label %37, label %17, !prof !887

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %18, align 8, !tbaa !355
  %19 = load i32, ptr %5, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %22, label %54, !prof !888

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !355
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %54, !prof !889

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !355
  %31 = load i32, ptr %30, align 8, !tbaa !481
  %32 = add nsw i32 %31, -1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !362
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %0, ptr %36, align 8, !tbaa !355
  br label %54

37:                                               ; preds = %13
  %38 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !667
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %43, label %40, !prof !890

40:                                               ; preds = %37
  %41 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !362
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %44

43:                                               ; preds = %37
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !667
  br label %54

44:                                               ; preds = %40, %49
  %45 = phi ptr [ %51, %49 ], [ %41, %40 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !891
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store ptr %0, ptr %45, align 8, !tbaa !891
  br label %54

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.sequence_stack, ptr %45, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !362
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44, !llvm.loop !892

53:                                               ; preds = %49, %40
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3812, ptr noundef nonnull @.str.1) #20
  br label %54

54:                                               ; preds = %48, %53, %43, %17, %22, %28
  %55 = icmp eq ptr %2, null
  br i1 %55, label %59, label %56, !prof !893

56:                                               ; preds = %54
  %57 = load i32, ptr %0, align 8
  %58 = and i32 %57, 65535
  br label %71

59:                                               ; preds = %54
  %60 = load i32, ptr %1, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 11
  br i1 %62, label %92, label %63, !prof !894

63:                                               ; preds = %59
  %64 = load i32, ptr %0, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 11
  br i1 %66, label %92, label %67, !prof !894

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !355
  %70 = icmp eq ptr %69, null
  br i1 %70, label %92, label %71, !prof !895

71:                                               ; preds = %56, %67
  %72 = phi i32 [ %58, %56 ], [ %65, %67 ]
  %73 = phi ptr [ %2, %56 ], [ %69, %67 ]
  %74 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %73, ptr %74, align 8, !tbaa !355
  %75 = add nsw i32 %72, -7
  %76 = icmp ult i32 %75, 4
  br i1 %76, label %77, label %79, !prof !896

77:                                               ; preds = %71
  %78 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %0) #20
  br label %79

79:                                               ; preds = %71, %77
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !355
  %82 = load ptr, ptr %81, align 8, !tbaa !897
  %83 = icmp eq ptr %82, %0
  br i1 %83, label %84, label %92, !prof !898

84:                                               ; preds = %79
  %85 = load i32, ptr %0, align 8
  %86 = trunc i32 %85 to i16
  switch i16 %86, label %91 [
    i16 11, label %92
    i16 13, label %87
  ]

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %89 = load i32, ptr %88, align 8, !tbaa !355
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %92, label %91

91:                                               ; preds = %84, %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3830, ptr noundef nonnull @.str.1) #20
  br label %92

92:                                               ; preds = %63, %59, %84, %91, %87, %79, %67
  store ptr %0, ptr %4, align 8, !tbaa !355
  %93 = load i32, ptr %1, align 8
  %94 = and i32 %93, 65535
  %95 = icmp eq i32 %94, 8
  br i1 %95, label %96, label %108, !prof !899

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !355
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, 65535
  %101 = icmp eq i32 %100, 5
  br i1 %101, label %102, label %108, !prof !900

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !355
  %105 = getelementptr inbounds %struct.rtvec_def, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !362
  %107 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %0, ptr %107, align 8, !tbaa !355
  br label %108

108:                                              ; preds = %102, %96, %92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_insn_deleted(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !901 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !355
  %5 = load i32, ptr %2, align 8, !tbaa !355
  tail call void @df_insn_delete(ptr noundef %4, i32 noundef %5) #20
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, -65536
  %8 = or disjoint i32 %7, 13
  store i32 %8, ptr %0, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  store i32 0, ptr %9, align 8, !tbaa !355
  ret void
}

; Function Attrs: optsize
declare void @df_insn_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_insn(ptr noundef readonly %0) local_unnamed_addr #0 !prof !902 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %4 = load ptr, ptr %3, align 8, !tbaa !355
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !355
  %7 = load i32, ptr %2, align 8, !tbaa !355
  tail call void @df_insn_delete(ptr noundef null, i32 noundef %7) #20
  %8 = icmp eq ptr %6, null
  br i1 %8, label %29, label %9, !prof !903

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %10, align 8, !tbaa !355
  %11 = load i32, ptr %6, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %14, label %46, !prof !904

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !355
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %46, !prof !905

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !355
  %23 = load i32, ptr %22, align 8, !tbaa !481
  %24 = add nsw i32 %23, -1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.rtvec_def, ptr %22, i64 0, i32 1, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !362
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %4, ptr %28, align 8, !tbaa !355
  br label %46

29:                                               ; preds = %1
  %30 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !667
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %35, label %32, !prof !906

32:                                               ; preds = %29
  %33 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !362
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %36

35:                                               ; preds = %29
  store ptr %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !667
  br label %46

36:                                               ; preds = %32, %41
  %37 = phi ptr [ %43, %41 ], [ %33, %32 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !891
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store ptr %4, ptr %37, align 8, !tbaa !891
  br label %46

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.sequence_stack, ptr %37, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !362
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %36, !llvm.loop !907

45:                                               ; preds = %41, %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3884, ptr noundef nonnull @.str.1) #20
  br label %46

46:                                               ; preds = %40, %45, %35, %9, %14, %20
  %47 = icmp eq ptr %4, null
  br i1 %47, label %65, label %48, !prof !908

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %6, ptr %49, align 8, !tbaa !355
  %50 = load i32, ptr %4, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 8
  br i1 %52, label %53, label %84, !prof !909

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !355
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 5
  br i1 %58, label %59, label %84, !prof !910

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !355
  %62 = getelementptr inbounds %struct.rtvec_def, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !362
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %6, ptr %64, align 8, !tbaa !355
  br label %84

65:                                               ; preds = %46
  %66 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  %67 = icmp eq ptr %66, %0
  br i1 %67, label %71, label %68, !prof !911

68:                                               ; preds = %65
  %69 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !362
  %70 = icmp eq ptr %69, null
  br i1 %70, label %83, label %72

71:                                               ; preds = %65
  store ptr %6, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  br label %84

72:                                               ; preds = %68, %79
  %73 = phi ptr [ %81, %79 ], [ %69, %68 ]
  %74 = getelementptr inbounds %struct.sequence_stack, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !757
  %76 = icmp eq ptr %75, %0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.sequence_stack, ptr %73, i64 0, i32 1
  store ptr %6, ptr %78, align 8, !tbaa !757
  br label %84

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.sequence_stack, ptr %73, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !362
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %72, !llvm.loop !912

83:                                               ; preds = %79, %68
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3906, ptr noundef nonnull @.str.1) #20
  br label %84

84:                                               ; preds = %77, %83, %71, %48, %53, %59
  %85 = load i32, ptr %0, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 11
  br i1 %87, label %116, label %88, !prof !913

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !355
  %91 = icmp eq ptr %90, null
  br i1 %91, label %116, label %92, !prof !914

92:                                               ; preds = %88
  %93 = add nsw i32 %86, -7
  %94 = icmp ult i32 %93, 4
  br i1 %94, label %95, label %96, !prof !915

95:                                               ; preds = %92
  tail call void @df_set_bb_dirty(ptr noundef nonnull %90) #20
  br label %96

96:                                               ; preds = %92, %95
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 7
  %98 = load ptr, ptr %97, align 8, !tbaa !355
  %99 = load ptr, ptr %98, align 8, !tbaa !897
  %100 = icmp eq ptr %99, %0
  br i1 %100, label %101, label %110, !prof !916

101:                                              ; preds = %96
  %102 = load i32, ptr %0, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 13
  br i1 %104, label %105, label %107, !prof !917

105:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3917, ptr noundef nonnull @.str.1) #20
  %106 = load ptr, ptr %97, align 8, !tbaa !355
  br label %107

107:                                              ; preds = %101, %105
  %108 = phi ptr [ %98, %101 ], [ %106, %105 ]
  store ptr %4, ptr %108, align 8, !tbaa !897
  %109 = load ptr, ptr %97, align 8, !tbaa !355
  br label %110

110:                                              ; preds = %107, %96
  %111 = phi ptr [ %109, %107 ], [ %98, %96 ]
  %112 = getelementptr inbounds %struct.rtl_bb_info, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !877
  %114 = icmp eq ptr %113, %0
  br i1 %114, label %115, label %116, !prof !918

115:                                              ; preds = %110
  store ptr %6, ptr %112, align 8, !tbaa !877
  br label %116

116:                                              ; preds = %110, %115, %88, %84
  ret void
}

; Function Attrs: optsize
declare void @df_set_bb_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_function_usage_to(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !791 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4, !prof !919

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %9, label %8, !prof !793

8:                                                ; preds = %4, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3930, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13, !prof !793

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !355
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !920

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %20

20:                                               ; preds = %9, %18
  %21 = phi ptr [ %19, %18 ], [ %10, %9 ]
  store ptr %1, ptr %21, align 8, !tbaa !355
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @delete_insns_since(ptr noundef %0) local_unnamed_addr #16 !prof !921 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %4 = select i1 %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), ptr %3, !prof !922
  store ptr null, ptr %4, align 8, !tbaa !355
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @reorder_insns_nobb(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 !prof !923 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !355
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !355
  br i1 %6, label %11, label %9, !prof !924

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %8, ptr %10, align 8, !tbaa !355
  br label %11

11:                                               ; preds = %3, %9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = icmp eq ptr %8, null
  br i1 %13, label %17, label %14, !prof !925

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8, !tbaa !355
  %16 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %15, ptr %16, align 8, !tbaa !355
  br label %17

17:                                               ; preds = %14, %11
  %18 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %22, !prof !925

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 8, !tbaa !355
  store ptr %21, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  br label %22

22:                                               ; preds = %20, %17
  %23 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !667
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %27, !prof !924

25:                                               ; preds = %22
  %26 = load ptr, ptr %12, align 8, !tbaa !355
  store ptr %26, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !667
  br label %27

27:                                               ; preds = %25, %22
  %28 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !355
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31, !prof !926

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %32, align 8, !tbaa !355
  %33 = load ptr, ptr %28, align 8, !tbaa !355
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi ptr [ %33, %31 ], [ null, %27 ]
  store ptr %35, ptr %12, align 8, !tbaa !355
  store ptr %2, ptr %4, align 8, !tbaa !355
  store ptr %0, ptr %28, align 8, !tbaa !355
  %36 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %38, label %39, !prof !926

38:                                               ; preds = %34
  store ptr %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  br label %39

39:                                               ; preds = %38, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reorder_insns(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !927 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !355
  tail call void @reorder_insns_nobb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  %6 = load i32, ptr %2, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 11
  br i1 %8, label %53, label %9, !prof !928

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  %12 = icmp eq ptr %11, null
  br i1 %12, label %53, label %13, !prof !929

13:                                               ; preds = %9
  tail call void @df_set_bb_dirty(ptr noundef nonnull %11) #20
  %14 = load i32, ptr %0, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 11
  br i1 %16, label %29, label %17, !prof !930

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !355
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21, !prof !930

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !355
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !877
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %28, !prof !931

27:                                               ; preds = %21
  store ptr %5, ptr %24, align 8, !tbaa !877
  br label %28

28:                                               ; preds = %27, %21
  tail call void @df_set_bb_dirty(ptr noundef nonnull %19) #20
  br label %29

29:                                               ; preds = %28, %17, %13
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !355
  %32 = getelementptr inbounds %struct.rtl_bb_info, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !877
  %34 = icmp eq ptr %33, %2
  br i1 %34, label %35, label %36, !prof !932

35:                                               ; preds = %29
  store ptr %1, ptr %32, align 8, !tbaa !877
  br label %36

36:                                               ; preds = %35, %29
  %37 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !355
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %53, label %40, !prof !933

40:                                               ; preds = %36, %48
  %41 = phi ptr [ %49, %48 ], [ %38, %36 ]
  %42 = phi ptr [ %51, %48 ], [ %0, %36 ]
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 11
  br i1 %45, label %48, label %46, !prof !934

46:                                               ; preds = %40
  tail call void @df_insn_change_bb(ptr noundef nonnull %42, ptr noundef nonnull %11) #20
  %47 = load ptr, ptr %37, align 8, !tbaa !355
  br label %48

48:                                               ; preds = %40, %46
  %49 = phi ptr [ %41, %40 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !355
  %52 = icmp eq ptr %51, %49
  br i1 %52, label %53, label %40, !prof !935, !llvm.loop !936

53:                                               ; preds = %48, %36, %9, %3
  ret void
}

; Function Attrs: optsize
declare void @df_insn_change_bb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_insn_before_noloc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !937 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6, !prof !938

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4061, ptr noundef nonnull @.str.1) #20
  br label %6

6:                                                ; preds = %3, %5
  %7 = icmp eq ptr %0, null
  br i1 %7, label %20, label %8, !prof !939

8:                                                ; preds = %6
  %9 = load i32, ptr %0, align 8
  %10 = trunc i32 %9 to i16
  %11 = add i16 %10, -7
  %12 = icmp ult i16 %11, 7
  br i1 %12, label %13, label %18, !prof !940

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %16, %13 ], [ %0, %8 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !355
  tail call void @add_insn_before(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %2) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %13, !prof !941, !llvm.loop !942

18:                                               ; preds = %8
  %19 = tail call ptr @make_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn_before(ptr noundef %19, ptr noundef %1, ptr noundef %2) #21
  br label %20

20:                                               ; preds = %13, %18, %6
  %21 = phi ptr [ %1, %6 ], [ %19, %18 ], [ %14, %13 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_jump_insn_before_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !372 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5, !prof !943

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4108, ptr noundef nonnull @.str.1) #20
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, -7
  %9 = icmp ult i16 %8, 7
  br i1 %9, label %10, label %15, !prof !944

10:                                               ; preds = %5, %10
  %11 = phi ptr [ %13, %10 ], [ %0, %5 ]
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !355
  tail call void @add_insn_before(ptr noundef nonnull %11, ptr noundef %1, ptr noundef null) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %10, !llvm.loop !945

15:                                               ; preds = %5
  %16 = tail call ptr @make_jump_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn_before(ptr noundef %16, ptr noundef %1, ptr noundef null) #21
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %16, %15 ], [ %11, %10 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_call_insn_before_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !401 {
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
  %13 = load ptr, ptr %12, align 8, !tbaa !355
  tail call void @add_insn_before(ptr noundef nonnull %11, ptr noundef %1, ptr noundef null) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %10, !llvm.loop !946

15:                                               ; preds = %5
  %16 = tail call fastcc ptr @make_call_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn_before(ptr noundef %16, ptr noundef %1, ptr noundef null) #21
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %16, %15 ], [ %11, %10 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_call_insn_raw(ptr noundef %0) unnamed_addr #0 !prof !947 !PGOFuncName !948 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 10) #20
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !355
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store ptr %0, ptr %6, align 8, !tbaa !355
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1
  store i32 -1, ptr %7, align 8, !tbaa !355
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %9 = tail call i32 @curr_insn_locator() #20
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  store i32 %9, ptr %10, align 8, !tbaa !355
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %11, align 8, !tbaa !355
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_debug_insn_before_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !401 {
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
  %13 = load ptr, ptr %12, align 8, !tbaa !355
  tail call void @add_insn_before(ptr noundef nonnull %11, ptr noundef %1, ptr noundef null) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %10, !llvm.loop !949

15:                                               ; preds = %5
  %16 = tail call ptr @make_debug_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn_before(ptr noundef %16, ptr noundef %1, ptr noundef null) #21
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %16, %15 ], [ %11, %10 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_barrier_before(ptr noundef %0) local_unnamed_addr #0 !prof !401 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 11) #20
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !355
  tail call void @add_insn_before(ptr noundef %2, ptr noundef %0, ptr noundef null) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_label_before(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #0 !prof !950 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !355
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9, !prof !951

6:                                                ; preds = %2
  %7 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  store i32 %7, ptr %3, align 8, !tbaa !355
  tail call void @add_insn_before(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null) #21
  br label %9

9:                                                ; preds = %6, %2
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_note_before(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !952 {
  %3 = tail call ptr @rtx_alloc_stat(i32 noundef 13) #20
  %4 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  store i32 %4, ptr %6, align 8, !tbaa !355
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  store i32 %0, ptr %7, align 8, !tbaa !355
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @add_insn_before(ptr noundef %3, ptr noundef %1, ptr noundef null) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_insn_after_noloc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !953 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6, !prof !954

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4331, ptr noundef nonnull @.str.1) #20
  br label %6

6:                                                ; preds = %3, %5
  %7 = icmp eq ptr %0, null
  br i1 %7, label %17, label %8, !prof !955

8:                                                ; preds = %6
  %9 = load i32, ptr %0, align 8
  %10 = trunc i32 %9 to i16
  %11 = add i16 %10, -7
  %12 = icmp ult i16 %11, 7
  br i1 %12, label %13, label %15, !prof !956

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
define internal fastcc ptr @emit_insn_after_1(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !957 !PGOFuncName !958 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %14, !prof !959

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 11
  br i1 %8, label %13, label %9, !prof !960

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !961

13:                                               ; preds = %5, %9
  br label %50

14:                                               ; preds = %3, %9
  %15 = phi ptr [ %11, %9 ], [ %2, %3 ]
  tail call void @df_set_bb_dirty(ptr noundef nonnull %15) #20
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !355
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19, !prof !962

19:                                               ; preds = %14, %30
  %20 = phi ptr [ %33, %30 ], [ %17, %14 ]
  %21 = phi ptr [ %32, %30 ], [ %16, %14 ]
  %22 = phi ptr [ %31, %30 ], [ %0, %14 ]
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 11
  br i1 %25, label %30, label %26, !prof !963

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 1
  store ptr %15, ptr %27, align 8, !tbaa !355
  %28 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %22) #20
  %29 = load ptr, ptr %21, align 8, !tbaa !355
  br label %30

30:                                               ; preds = %19, %26
  %31 = phi ptr [ %20, %19 ], [ %29, %26 ]
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !355
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %19, !prof !964, !llvm.loop !965

35:                                               ; preds = %30, %14
  %36 = phi ptr [ %0, %14 ], [ %31, %30 ]
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 11
  br i1 %39, label %43, label %40, !prof !966

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 1
  store ptr %15, ptr %41, align 8, !tbaa !355
  %42 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %36) #20
  br label %43

43:                                               ; preds = %40, %35
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !355
  %46 = getelementptr inbounds %struct.rtl_bb_info, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !877
  %48 = icmp eq ptr %47, %1
  br i1 %48, label %49, label %55, !prof !967

49:                                               ; preds = %43
  store ptr %36, ptr %46, align 8, !tbaa !877
  br label %55

50:                                               ; preds = %13, %50
  %51 = phi ptr [ %53, %50 ], [ %0, %13 ]
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !355
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %50, !prof !968, !llvm.loop !969

55:                                               ; preds = %50, %43, %49
  %56 = phi ptr [ %36, %49 ], [ %36, %43 ], [ %51, %50 ]
  %57 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !355
  store ptr %0, ptr %57, align 8, !tbaa !355
  %59 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %1, ptr %59, align 8, !tbaa !355
  %60 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %58, ptr %60, align 8, !tbaa !355
  %61 = icmp eq ptr %58, null
  br i1 %61, label %64, label %62, !prof !970

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %56, ptr %63, align 8, !tbaa !355
  br label %64

64:                                               ; preds = %62, %55
  %65 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  %66 = icmp eq ptr %65, %1
  br i1 %66, label %67, label %68, !prof !970

67:                                               ; preds = %64
  store ptr %56, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  br label %68

68:                                               ; preds = %67, %64
  ret ptr %56
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_jump_insn_after_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !971 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5, !prof !972

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4372, ptr noundef nonnull @.str.1) #20
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, -7
  %9 = icmp ult i16 %8, 7
  br i1 %9, label %10, label %12, !prof !973

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
define dso_local ptr @emit_call_insn_after_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !974 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5, !prof !975

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4409, ptr noundef nonnull @.str.1) #20
  br label %5

5:                                                ; preds = %2, %4
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  %8 = add i16 %7, -7
  %9 = icmp ult i16 %8, 7
  br i1 %9, label %10, label %12, !prof !976

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
define dso_local ptr @emit_debug_insn_after_noloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !401 {
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
define dso_local noundef ptr @emit_label_after(ptr noundef returned %0, ptr noundef %1) local_unnamed_addr #0 !prof !401 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !355
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  store i32 %7, ptr %3, align 8, !tbaa !355
  tail call void @add_insn_after(ptr noundef nonnull %0, ptr noundef %1, ptr poison) #21
  br label %9

9:                                                ; preds = %6, %2
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_note_after(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !977 {
  %3 = tail call ptr @rtx_alloc_stat(i32 noundef 13) #20
  %4 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  store i32 %4, ptr %6, align 8, !tbaa !355
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 1
  store i32 %0, ptr %7, align 8, !tbaa !355
  %8 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @add_insn_after(ptr noundef %3, ptr noundef %1, ptr poison) #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_insn_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !978 {
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
  ], !prof !979

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !355
  br label %3, !llvm.loop !980

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !355
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
define dso_local ptr @emit_jump_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !981 {
  %4 = tail call ptr @emit_jump_insn_after_noloc(ptr noundef %0, ptr noundef %1) #21
  %5 = icmp ne ptr %0, null
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %21, !prof !982

8:                                                ; preds = %3, %19
  %9 = phi ptr [ %11, %19 ], [ %1, %3 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  %12 = tail call i32 @active_insn_p(ptr noundef %11) #21, !range !486
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14, !prof !983

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !355
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !984

18:                                               ; preds = %14
  store i32 %2, ptr %15, align 8, !tbaa !355
  br label %19

19:                                               ; preds = %18, %14, %8
  %20 = icmp eq ptr %11, %4
  br i1 %20, label %21, label %8, !prof !984

21:                                               ; preds = %19, %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_jump_insn_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !985 {
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
  ], !prof !986

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !355
  br label %3, !llvm.loop !987

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !355
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
define dso_local ptr @emit_call_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !988 {
  %4 = tail call ptr @emit_call_insn_after_noloc(ptr noundef %0, ptr noundef %1) #21
  %5 = icmp ne ptr %0, null
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %21, !prof !989

8:                                                ; preds = %3, %19
  %9 = phi ptr [ %11, %19 ], [ %1, %3 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  %12 = tail call i32 @active_insn_p(ptr noundef %11) #21, !range !486
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14, !prof !990

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !355
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !991

18:                                               ; preds = %14
  store i32 %2, ptr %15, align 8, !tbaa !355
  br label %19

19:                                               ; preds = %18, %14, %8
  %20 = icmp eq ptr %11, %4
  br i1 %20, label %21, label %8, !prof !991

21:                                               ; preds = %19, %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_call_insn_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !974 {
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
  ], !prof !992

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !355
  br label %3, !llvm.loop !993

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !355
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
define dso_local ptr @emit_debug_insn_after_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !401 {
  %4 = tail call ptr @emit_debug_insn_after_noloc(ptr noundef %0, ptr noundef %1) #21
  %5 = icmp ne ptr %0, null
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %3, %19
  %9 = phi ptr [ %11, %19 ], [ %1, %3 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  %12 = tail call i32 @active_insn_p(ptr noundef %11) #21, !range !486
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !355
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 %2, ptr %15, align 8, !tbaa !355
  br label %19

19:                                               ; preds = %18, %14, %8
  %20 = icmp eq ptr %11, %4
  br i1 %20, label %21, label %8

21:                                               ; preds = %19, %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_debug_insn_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !401 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !355
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
define dso_local noundef ptr @emit_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !994 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !355
  %6 = tail call ptr @emit_insn_before_noloc(ptr noundef %0, ptr noundef %1, ptr noundef null) #21
  %7 = icmp ne ptr %0, null
  %8 = icmp ne i32 %2, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %33, !prof !995

10:                                               ; preds = %3
  %11 = icmp eq ptr %5, null
  br i1 %11, label %12, label %14, !prof !996

12:                                               ; preds = %10
  %13 = tail call ptr @get_insns() #21
  br label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !355
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi ptr [ %13, %12 ], [ %16, %14 ]
  br label %19

19:                                               ; preds = %17, %30
  %20 = phi ptr [ %32, %30 ], [ %18, %17 ]
  %21 = tail call i32 @active_insn_p(ptr noundef %20) #21, !range !486
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23, !prof !997

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !355
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28, !prof !998

27:                                               ; preds = %23
  store i32 %2, ptr %24, align 8, !tbaa !355
  br label %28

28:                                               ; preds = %27, %23, %19
  %29 = icmp eq ptr %20, %6
  br i1 %29, label %33, label %30, !prof !999

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !355
  br label %19

33:                                               ; preds = %28, %3
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_insn_before(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !1000 {
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
  ], !prof !1001

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !355
  br label %3, !llvm.loop !1002

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !355
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
define dso_local noundef ptr @emit_jump_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !372 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !355
  %6 = tail call ptr @emit_jump_insn_before_noloc(ptr noundef %0, ptr noundef %1) #21
  %7 = icmp eq ptr %0, null
  br i1 %7, label %21, label %8, !prof !943

8:                                                ; preds = %3, %19
  %9 = phi ptr [ %11, %19 ], [ %5, %3 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  %12 = tail call i32 @active_insn_p(ptr noundef %11) #21, !range !486
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14, !prof !943

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !355
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !375

18:                                               ; preds = %14
  store i32 %2, ptr %15, align 8, !tbaa !355
  br label %19

19:                                               ; preds = %18, %14, %8
  %20 = icmp eq ptr %11, %6
  br i1 %20, label %21, label %8, !prof !375

21:                                               ; preds = %19, %3
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_jump_insn_before(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !372 {
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
  ], !prof !1003

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !355
  br label %3, !llvm.loop !1004

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !355
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
define dso_local noundef ptr @emit_call_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !401 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !355
  %6 = tail call ptr @emit_call_insn_before_noloc(ptr noundef %0, ptr noundef %1) #21
  %7 = icmp eq ptr %0, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3, %19
  %9 = phi ptr [ %11, %19 ], [ %5, %3 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  %12 = tail call i32 @active_insn_p(ptr noundef %11) #21, !range !486
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !355
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 %2, ptr %15, align 8, !tbaa !355
  br label %19

19:                                               ; preds = %18, %14, %8
  %20 = icmp eq ptr %11, %6
  br i1 %20, label %21, label %8

21:                                               ; preds = %19, %3
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_call_insn_before(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !401 {
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
  %9 = load ptr, ptr %8, align 8, !tbaa !355
  br label %3, !llvm.loop !1005

10:                                               ; preds = %3, %3, %3
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !355
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
define dso_local noundef ptr @emit_debug_insn_before_setloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !401 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !355
  %6 = tail call ptr @emit_debug_insn_before_noloc(ptr noundef %0, ptr noundef %1) #21
  %7 = icmp eq ptr %0, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3, %19
  %9 = phi ptr [ %11, %19 ], [ %5, %3 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  %12 = tail call i32 @active_insn_p(ptr noundef %11) #21, !range !486
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !355
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 %2, ptr %15, align 8, !tbaa !355
  br label %19

19:                                               ; preds = %18, %14, %8
  %20 = icmp eq ptr %11, %6
  br i1 %20, label %21, label %8

21:                                               ; preds = %19, %3
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_debug_insn_before(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !401 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !355
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
define dso_local ptr @emit_insn(ptr noundef %0) local_unnamed_addr #0 !prof !1006 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4, !prof !1007

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i16
  %7 = add i16 %6, -7
  %8 = icmp ult i16 %7, 7
  br i1 %8, label %9, label %14, !prof !1008

9:                                                ; preds = %4, %9
  %10 = phi ptr [ %12, %9 ], [ %0, %4 ]
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !355
  tail call void @add_insn(ptr noundef nonnull %10) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %9, !prof !1009, !llvm.loop !1010

14:                                               ; preds = %4
  %15 = tail call ptr @make_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn(ptr noundef %15) #21
  br label %16

16:                                               ; preds = %9, %14, %1
  %17 = phi ptr [ %2, %1 ], [ %15, %14 ], [ %10, %9 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_debug_insn(ptr noundef %0) local_unnamed_addr #0 !prof !401 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
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
  %12 = load ptr, ptr %11, align 8, !tbaa !355
  tail call void @add_insn(ptr noundef nonnull %10) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %9, !llvm.loop !1011

14:                                               ; preds = %4
  %15 = tail call ptr @make_debug_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn(ptr noundef %15) #21
  br label %16

16:                                               ; preds = %9, %14, %1
  %17 = phi ptr [ %2, %1 ], [ %15, %14 ], [ %10, %9 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_jump_insn(ptr noundef %0) local_unnamed_addr #0 !prof !1012 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  %4 = add i16 %3, -7
  %5 = icmp ult i16 %4, 7
  br i1 %5, label %6, label %11, !prof !1013

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %1 ]
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !355
  tail call void @add_insn(ptr noundef nonnull %7) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %6, !prof !1014, !llvm.loop !1015

11:                                               ; preds = %1
  %12 = tail call ptr @make_jump_insn_raw(ptr noundef nonnull %0) #21
  tail call void @add_insn(ptr noundef %12) #21
  br label %13

13:                                               ; preds = %6, %11
  %14 = phi ptr [ %12, %11 ], [ %7, %6 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_call_insn(ptr noundef %0) local_unnamed_addr #0 !prof !1016 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  %4 = add i16 %3, -7
  %5 = icmp ult i16 %4, 7
  br i1 %5, label %6, label %8, !prof !1017

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
define dso_local noundef ptr @emit_label(ptr noundef returned %0) local_unnamed_addr #8 !prof !1018 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !355
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8, !prof !1019

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  store i32 %6, ptr %2, align 8, !tbaa !355
  tail call void @add_insn(ptr noundef nonnull %0) #21
  br label %8

8:                                                ; preds = %5, %1
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_barrier() local_unnamed_addr #0 !prof !1020 {
  %1 = tail call ptr @rtx_alloc_stat(i32 noundef 11) #20
  %2 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  store i32 %2, ptr %4, align 8, !tbaa !355
  tail call void @add_insn(ptr noundef %1) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_note_copy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !1021 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 13) #20
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !355
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load i32, ptr %9, align 8, !tbaa !355
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store i32 %10, ptr %11, align 8, !tbaa !355
  %12 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %12, align 8, !tbaa !355
  tail call void @add_insn(ptr noundef %2) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_note(i32 noundef %0) local_unnamed_addr #0 !prof !1022 {
  %2 = tail call ptr @rtx_alloc_stat(i32 noundef 13) #20
  %3 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  store i32 %3, ptr %5, align 8, !tbaa !355
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  store i32 %0, ptr %6, align 8, !tbaa !355
  %7 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  tail call void @add_insn(ptr noundef %2) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_clobber(ptr noundef %0) local_unnamed_addr #0 !prof !1023 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 41
  br i1 %4, label %5, label %15, !prof !1024

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %11, %5 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !355
  %9 = tail call ptr @emit_clobber(ptr noundef %8) #21
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 41
  br i1 %14, label %5, label %15, !prof !1025

15:                                               ; preds = %5, %1
  %16 = phi ptr [ %0, %1 ], [ %11, %5 ]
  %17 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %16) #20
  %18 = tail call ptr @emit_insn(ptr noundef %17) #21
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_clobber(ptr noundef %0) local_unnamed_addr #0 !prof !401 {
  tail call void @start_sequence() #21
  %2 = tail call ptr @emit_clobber(ptr noundef %0) #21
  %3 = tail call ptr @get_insns() #21
  tail call void @end_sequence() #21
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @start_sequence() local_unnamed_addr #0 !prof !1026 {
  %1 = load ptr, ptr @free_sequence_stack, align 8, !tbaa !362
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3, !prof !1027

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.sequence_stack, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !1028
  store ptr %5, ptr @free_sequence_stack, align 8, !tbaa !362
  br label %8

6:                                                ; preds = %0
  %7 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #20
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi ptr [ %1, %3 ], [ %7, %6 ]
  %10 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !1029
  %11 = getelementptr inbounds %struct.sequence_stack, ptr %9, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !1028
  %12 = load <2 x ptr>, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !362
  store <2 x ptr> %12, ptr %9, align 8, !tbaa !362
  store ptr %9, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !1029
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @end_sequence() local_unnamed_addr #8 !prof !1026 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !1029
  %2 = load <2 x ptr>, ptr %1, align 8, !tbaa !362
  store <2 x ptr> %2, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !362
  %3 = getelementptr inbounds %struct.sequence_stack, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1028
  store ptr %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !1029
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr @free_sequence_stack, align 8, !tbaa !362
  store ptr %5, ptr %3, align 8, !tbaa !1028
  store ptr %1, ptr @free_sequence_stack, align 8, !tbaa !362
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_use(ptr noundef %0) local_unnamed_addr #0 !prof !1030 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 41
  br i1 %4, label %5, label %15, !prof !1031

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %11, %5 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !355
  %9 = tail call ptr @emit_use(ptr noundef %8) #21
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 41
  br i1 %14, label %5, label %15, !prof !1025

15:                                               ; preds = %5, %1
  %16 = phi ptr [ %0, %1 ], [ %11, %5 ]
  %17 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %16) #20
  %18 = tail call ptr @emit_insn(ptr noundef %17) #21
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_use(ptr noundef %0) local_unnamed_addr #0 !prof !401 {
  tail call void @start_sequence() #21
  %2 = tail call ptr @emit_use(ptr noundef %0) #21
  %3 = tail call ptr @get_insns() #21
  tail call void @end_sequence() #21
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @force_next_line_note() local_unnamed_addr #17 !prof !500 {
  store i32 -1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 7), align 8, !tbaa !1032
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @set_unique_reg_note(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !1033 {
  %4 = tail call ptr @find_reg_note(ptr noundef %0, i32 noundef %1, ptr noundef null) #20
  %5 = add i32 %1, -3
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %27, !prof !1034

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !355
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 15
  br i1 %12, label %13, label %19, !prof !1035

13:                                               ; preds = %7
  %14 = tail call i32 @multiple_sets(ptr noundef nonnull %0) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16, !prof !1036

16:                                               ; preds = %13
  %17 = icmp eq ptr %4, null
  br i1 %17, label %36, label %18, !prof !1037

18:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5124, ptr noundef nonnull @.str.1) #20
  br label %36

19:                                               ; preds = %13, %7
  %20 = load i32, ptr %2, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 17
  br i1 %22, label %36, label %23, !prof !1038

23:                                               ; preds = %19
  %24 = icmp eq ptr %4, null
  br i1 %24, label %32, label %25, !prof !1039

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %26, align 8, !tbaa !355
  tail call void @df_notes_rescan(ptr noundef nonnull %0) #20
  br label %36

27:                                               ; preds = %3
  %28 = icmp eq ptr %4, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  store ptr %2, ptr %30, align 8, !tbaa !355
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
  %35 = load ptr, ptr %34, align 8, !tbaa !355
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
define dso_local ptr @emit(ptr noundef %0) local_unnamed_addr #0 !prof !1040 {
  %2 = tail call fastcc i32 @classify_insn(ptr noundef %0) #21
  switch i32 %2, label %21 [
    i32 12, label %3
    i32 8, label %5
    i32 9, label %7
    i32 10, label %17
    i32 7, label %19
  ], !prof !1041

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
define internal fastcc i32 @classify_insn(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !1040 !PGOFuncName !1042 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %45 [
    i16 12, label %46
    i16 26, label %4
    i16 27, label %5
    i16 23, label %6
    i16 15, label %18
  ], !prof !1043

4:                                                ; preds = %1
  br label %46

5:                                                ; preds = %1
  br label %46

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !355
  %9 = load ptr, ptr @global_rtl, align 16, !tbaa !362
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %46, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !355
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 26
  %17 = select i1 %16, i32 10, i32 8
  br label %46

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !355
  %21 = load i32, ptr %20, align 8, !tbaa !481
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %45, !prof !1044

23:                                               ; preds = %18
  %24 = load ptr, ptr @global_rtl, align 16
  %25 = zext nneg i32 %21 to i64
  br label %26

26:                                               ; preds = %23, %43
  %27 = phi i64 [ %25, %23 ], [ %28, %43 ]
  %28 = add nsw i64 %27, -1
  %29 = getelementptr inbounds %struct.rtvec_def, ptr %20, i64 0, i32 1, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !362
  %31 = load i32, ptr %30, align 8
  %32 = trunc i32 %31 to i16
  switch i16 %32, label %43 [
    i16 26, label %46
    i16 23, label %33
  ], !prof !1045

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !355
  %36 = icmp eq ptr %35, %24
  br i1 %36, label %46, label %37, !prof !1046

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !355
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 26
  br i1 %42, label %46, label %43, !prof !1046

43:                                               ; preds = %26, %37
  %44 = icmp ugt i64 %27, 1
  br i1 %44, label %26, label %45, !prof !1047, !llvm.loop !1048

45:                                               ; preds = %43, %18, %1
  br label %46

46:                                               ; preds = %26, %33, %37, %1, %11, %6, %45, %5, %4
  %47 = phi i32 [ 10, %4 ], [ 9, %5 ], [ 8, %45 ], [ 12, %1 ], [ 9, %6 ], [ %17, %11 ], [ 10, %26 ], [ 9, %33 ], [ 10, %37 ]
  ret i32 %47
}

; Function Attrs: optsize
declare i32 @any_uncondjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @push_to_sequence(ptr noundef %0) local_unnamed_addr #0 !prof !1049 {
  tail call void @start_sequence() #21
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi ptr [ %0, %1 ], [ %7, %5 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1050

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !355
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %2, !prof !1051, !llvm.loop !1052

9:                                                ; preds = %2, %5
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !667
  store ptr %3, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @push_to_sequence2(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !1053 {
  tail call void @start_sequence() #21
  store ptr %0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !667
  store ptr %1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 3), align 8, !tbaa !668
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @push_topmost_sequence() local_unnamed_addr #0 !prof !401 {
  tail call void @start_sequence() #21
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi ptr [ getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), %0 ], [ %6, %1 ]
  %3 = phi ptr [ null, %0 ], [ %4, %1 ]
  %4 = load ptr, ptr %2, align 8, !tbaa !362
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.sequence_stack, ptr %4, i64 0, i32 2
  br i1 %5, label %7, label %1, !llvm.loop !1054

7:                                                ; preds = %1
  %8 = load <2 x ptr>, ptr %3, align 8, !tbaa !362
  store <2 x ptr> %8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !362
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @pop_topmost_sequence() local_unnamed_addr #18 !prof !401 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi ptr [ getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), %0 ], [ %6, %1 ]
  %3 = phi ptr [ null, %0 ], [ %4, %1 ]
  %4 = load ptr, ptr %2, align 8, !tbaa !362
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.sequence_stack, ptr %4, i64 0, i32 2
  br i1 %5, label %7, label %1, !llvm.loop !1055

7:                                                ; preds = %1
  %8 = load <2 x ptr>, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), align 8, !tbaa !362
  store <2 x ptr> %8, ptr %3, align 8, !tbaa !362
  tail call void @end_sequence() #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @in_sequence_p() local_unnamed_addr #10 !prof !1056 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !1029
  %2 = icmp ne ptr %1, null
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @copy_insn_1(ptr noundef %0) local_unnamed_addr #0 !prof !1057 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %131, label %3, !prof !1058

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %33 [
    i16 37, label %131
    i16 30, label %131
    i16 32, label %131
    i16 31, label %131
    i16 33, label %131
    i16 45, label %131
    i16 12, label %131
    i16 36, label %131
    i16 46, label %131
    i16 25, label %9
    i16 38, label %6
    i16 35, label %30
  ], !prof !1059

6:                                                ; preds = %3
  %7 = load i32, ptr @copy_insn_n_scratches, align 4, !tbaa !368
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %22, label %33, !prof !1060

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !355
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %33, !prof !1061

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #21
  %17 = icmp ult i32 %16, 53
  br i1 %17, label %131, label %33, !prof !1062

18:                                               ; preds = %22
  %19 = zext nneg i32 %7 to i64
  %20 = add nuw nsw i64 %23, 1
  %21 = icmp eq i64 %20, %19
  br i1 %21, label %33, label %22, !prof !1063, !llvm.loop !1064

22:                                               ; preds = %6, %18
  %23 = phi i64 [ %20, %18 ], [ 0, %6 ]
  %24 = getelementptr inbounds [30 x ptr], ptr @copy_insn_scratch_in, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !362
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %18

27:                                               ; preds = %22
  %28 = getelementptr inbounds [30 x ptr], ptr @copy_insn_scratch_out, i64 0, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !362
  br label %131

30:                                               ; preds = %3
  %31 = tail call zeroext i8 @shared_const_p(ptr noundef nonnull %0) #20
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %131, !prof !1065

33:                                               ; preds = %18, %6, %3, %30, %9, %15
  %34 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #20
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, -536870913
  store i32 %36, ptr %34, align 8
  %37 = load i32, ptr %0, align 8
  %38 = and i32 %37, 65535
  %39 = add nsw i32 %38, -7
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %41, label %43, !prof !1066

41:                                               ; preds = %33
  %42 = and i32 %35, -1660944385
  store i32 %42, ptr %34, align 8
  br label %43

43:                                               ; preds = %33, %41
  %44 = phi i32 [ %36, %33 ], [ %42, %41 ]
  %45 = and i32 %44, 65535
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !355
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %112, label %50, !prof !1067

50:                                               ; preds = %43
  %51 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %46
  %52 = load ptr, ptr %51, align 8, !tbaa !362
  %53 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %54 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  br label %55

55:                                               ; preds = %50, %103
  %56 = phi i64 [ 0, %50 ], [ %104, %103 ]
  %57 = phi ptr [ %52, %50 ], [ %58, %103 ]
  %58 = getelementptr inbounds i8, ptr %57, i64 1
  %59 = load i8, ptr %57, align 1, !tbaa !355
  switch i8 %59, label %102 [
    i8 101, label %60
    i8 69, label %67
    i8 86, label %67
    i8 116, label %103
    i8 119, label %103
    i8 105, label %103
    i8 115, label %103
    i8 83, label %103
    i8 117, label %103
    i8 48, label %103
  ], !prof !1068

60:                                               ; preds = %55
  %61 = getelementptr inbounds [1 x %union.rtunion_def], ptr %53, i64 0, i64 %56
  %62 = load ptr, ptr %61, align 8, !tbaa !355
  %63 = icmp eq ptr %62, null
  br i1 %63, label %103, label %64, !prof !1069

64:                                               ; preds = %60
  %65 = tail call ptr @copy_insn_1(ptr noundef nonnull %62) #21
  %66 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %56
  store ptr %65, ptr %66, align 8, !tbaa !355
  br label %103

67:                                               ; preds = %55, %55
  %68 = getelementptr inbounds [1 x %union.rtunion_def], ptr %53, i64 0, i64 %56
  %69 = load ptr, ptr %68, align 8, !tbaa !355
  %70 = load ptr, ptr @orig_asm_constraints_vector, align 8, !tbaa !362
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %72, label %75, !prof !1070

72:                                               ; preds = %67
  %73 = load ptr, ptr @copy_asm_constraints_vector, align 8, !tbaa !362
  %74 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %56
  store ptr %73, ptr %74, align 8, !tbaa !355
  br label %103

75:                                               ; preds = %67
  %76 = load ptr, ptr @orig_asm_operands_vector, align 8, !tbaa !362
  %77 = icmp eq ptr %69, %76
  br i1 %77, label %78, label %81, !prof !1070

78:                                               ; preds = %75
  %79 = load ptr, ptr @copy_asm_operands_vector, align 8, !tbaa !362
  %80 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %56
  store ptr %79, ptr %80, align 8, !tbaa !355
  br label %103

81:                                               ; preds = %75
  %82 = icmp eq ptr %69, null
  br i1 %82, label %103, label %83, !prof !1070

83:                                               ; preds = %81
  %84 = load i32, ptr %69, align 8, !tbaa !481
  %85 = tail call ptr @rtvec_alloc(i32 noundef %84) #20
  %86 = getelementptr inbounds [1 x %union.rtunion_def], ptr %54, i64 0, i64 %56
  store ptr %85, ptr %86, align 8, !tbaa !355
  %87 = load i32, ptr %85, align 8, !tbaa !481
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %103, !prof !1071

89:                                               ; preds = %83, %89
  %90 = phi i64 [ %97, %89 ], [ 0, %83 ]
  %91 = load ptr, ptr %68, align 8, !tbaa !355
  %92 = getelementptr inbounds %struct.rtvec_def, ptr %91, i64 0, i32 1, i64 %90
  %93 = load ptr, ptr %92, align 8, !tbaa !362
  %94 = tail call ptr @copy_insn_1(ptr noundef %93) #21
  %95 = load ptr, ptr %86, align 8, !tbaa !355
  %96 = getelementptr inbounds %struct.rtvec_def, ptr %95, i64 0, i32 1, i64 %90
  store ptr %94, ptr %96, align 8, !tbaa !362
  %97 = add nuw nsw i64 %90, 1
  %98 = load ptr, ptr %86, align 8, !tbaa !355
  %99 = load i32, ptr %98, align 8, !tbaa !481
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %97, %100
  br i1 %101, label %89, label %103, !prof !1072, !llvm.loop !1073

102:                                              ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5509, ptr noundef nonnull @.str.1) #20
  br label %103

103:                                              ; preds = %89, %83, %102, %64, %60, %78, %81, %72, %55, %55, %55, %55, %55, %55, %55
  %104 = add nuw nsw i64 %56, 1
  %105 = load i32, ptr %34, align 8
  %106 = and i32 %105, 65535
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !355
  %110 = zext i8 %109 to i64
  %111 = icmp ult i64 %104, %110
  br i1 %111, label %55, label %112, !prof !1074, !llvm.loop !1075

112:                                              ; preds = %103, %43
  switch i16 %5, label %131 [
    i16 38, label %113
    i16 17, label %122
  ], !prof !1076

113:                                              ; preds = %112
  %114 = load i32, ptr @copy_insn_n_scratches, align 4, !tbaa !368
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr @copy_insn_n_scratches, align 4, !tbaa !368
  %116 = icmp slt i32 %114, 30
  br i1 %116, label %118, label %117, !prof !1077

117:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5515, ptr noundef nonnull @.str.1) #20
  br label %118

118:                                              ; preds = %113, %117
  %119 = sext i32 %114 to i64
  %120 = getelementptr inbounds [30 x ptr], ptr @copy_insn_scratch_in, i64 0, i64 %119
  store ptr %0, ptr %120, align 8, !tbaa !362
  %121 = getelementptr inbounds [30 x ptr], ptr @copy_insn_scratch_out, i64 0, i64 %119
  store ptr %34, ptr %121, align 8, !tbaa !362
  br label %131

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !355
  store ptr %124, ptr @orig_asm_operands_vector, align 8, !tbaa !362
  %125 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !355
  store ptr %126, ptr @copy_asm_operands_vector, align 8, !tbaa !362
  %127 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !355
  store ptr %128, ptr @orig_asm_constraints_vector, align 8, !tbaa !362
  %129 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !355
  store ptr %130, ptr @copy_asm_constraints_vector, align 8, !tbaa !362
  br label %131

131:                                              ; preds = %118, %122, %112, %30, %15, %3, %3, %3, %3, %3, %3, %3, %3, %3, %1, %27
  %132 = phi ptr [ %29, %27 ], [ null, %1 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %3 ], [ %0, %15 ], [ %0, %30 ], [ %34, %112 ], [ %34, %122 ], [ %34, %118 ]
  ret ptr %132
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @copy_insn(ptr noundef %0) local_unnamed_addr #0 !prof !1078 {
  store i32 0, ptr @copy_insn_n_scratches, align 4, !tbaa !368
  store ptr null, ptr @orig_asm_operands_vector, align 8, !tbaa !362
  store ptr null, ptr @orig_asm_constraints_vector, align 8, !tbaa !362
  store ptr null, ptr @copy_asm_operands_vector, align 8, !tbaa !362
  store ptr null, ptr @copy_asm_constraints_vector, align 8, !tbaa !362
  %2 = tail call ptr @copy_insn_1(ptr noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_emit() local_unnamed_addr #0 !prof !1056 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 2), i8 0, i64 16, i1 false)
  %1 = load ptr, ptr @compiler_params, align 8, !tbaa !362
  %2 = getelementptr inbounds %struct.param_info, ptr %1, i64 117, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !670
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  store i32 %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 5), align 8, !tbaa !669
  store i32 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 6), align 4, !tbaa !672
  store i32 58, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1), align 8, !tbaa !449
  store i32 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 7), align 8, !tbaa !1032
  %5 = load i32, ptr @label_num, align 4, !tbaa !368
  store i32 %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 1), align 4, !tbaa !501
  store ptr null, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 4), align 8, !tbaa !1029
  store i32 158, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 8), align 4, !tbaa !450
  %6 = tail call ptr @xcalloc(i64 noundef 158, i64 noundef 1) #20
  store ptr %6, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !452
  %7 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 8), align 4, !tbaa !450
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call ptr @ggc_alloc_stat(i64 noundef %9) #20
  store ptr %10, ptr @regno_reg_rtx, align 8, !tbaa !362
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %10, ptr noundef nonnull align 16 dereferenceable(424) @static_regno_reg_rtx, i64 424, i1 false)
  tail call fastcc void @init_virtual_regs() #21
  %11 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !362
  %12 = load i32, ptr %11, align 8
  %13 = or i32 %12, 1073741824
  store i32 %13, ptr %11, align 8
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !362
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 1073741824
  store i32 %16, ptr %14, align 8
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !362
  %18 = load i32, ptr %17, align 8
  %19 = or i32 %18, 1073741824
  store i32 %19, ptr %17, align 8
  %20 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !362
  %21 = load i32, ptr %20, align 8
  %22 = or i32 %21, 1073741824
  store i32 %22, ptr %20, align 8
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !362
  %24 = load i32, ptr %23, align 8
  %25 = or i32 %24, 1073741824
  store i32 %25, ptr %23, align 8
  %26 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !362
  %27 = load i32, ptr %26, align 8
  %28 = or i32 %27, 1073741824
  store i32 %28, ptr %26, align 8
  %29 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !362
  %30 = load i32, ptr %29, align 8
  %31 = or i32 %30, 1073741824
  store i32 %31, ptr %29, align 8
  %32 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !362
  %33 = load i32, ptr %32, align 8
  %34 = or i32 %33, 1073741824
  store i32 %34, ptr %32, align 8
  %35 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !362
  %36 = load i32, ptr %35, align 8
  %37 = or i32 %36, 1073741824
  store i32 %37, ptr %35, align 8
  %38 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !452
  %39 = getelementptr inbounds i8, ptr %38, i64 7
  store i8 32, ptr %39, align 1, !tbaa !355
  %40 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !452
  %41 = getelementptr inbounds i8, ptr %40, i64 20
  store i8 32, ptr %41, align 1, !tbaa !355
  %42 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !452
  %43 = getelementptr inbounds i8, ptr %42, i64 6
  store i8 32, ptr %43, align 1, !tbaa !355
  %44 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !452
  %45 = getelementptr inbounds i8, ptr %44, i64 16
  store i8 32, ptr %45, align 1, !tbaa !355
  %46 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !452
  %47 = getelementptr inbounds i8, ptr %46, i64 53
  store i8 32, ptr %47, align 1, !tbaa !355
  %48 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !452
  %49 = getelementptr inbounds i8, ptr %48, i64 54
  store i8 32, ptr %49, align 1, !tbaa !355
  %50 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !452
  %51 = getelementptr inbounds i8, ptr %50, i64 55
  store i8 32, ptr %51, align 1, !tbaa !355
  %52 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !452
  %53 = getelementptr inbounds i8, ptr %52, i64 56
  store i8 32, ptr %53, align 1, !tbaa !355
  %54 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 1, i32 9), align 8, !tbaa !452
  %55 = getelementptr inbounds i8, ptr %54, i64 57
  store i8 32, ptr %55, align 1, !tbaa !355
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @init_virtual_regs() unnamed_addr #15 !prof !1056 !PGOFuncName !1079 {
  %1 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !362
  %2 = getelementptr inbounds ptr, ptr %1, i64 53
  %3 = load <2 x ptr>, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !362
  store <2 x ptr> %3, ptr %2, align 8, !tbaa !362
  %4 = getelementptr inbounds ptr, ptr %1, i64 55
  %5 = load <2 x ptr>, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !362
  store <2 x ptr> %5, ptr %4, align 8, !tbaa !362
  %6 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !362
  %7 = getelementptr inbounds ptr, ptr %1, i64 57
  store ptr %6, ptr %7, align 8, !tbaa !362
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_rtx_CONST_VECTOR(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !401 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !355
  %6 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %3
  %7 = load i8, ptr %6, align 1, !tbaa !355
  %8 = zext i8 %7 to i32
  %9 = add nsw i32 %8, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.rtvec_def, ptr %1, i64 0, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !362
  %13 = add nsw i32 %8, -2
  %14 = icmp ugt i8 %7, 1
  br i1 %14, label %15, label %24

15:                                               ; preds = %2, %21
  %16 = phi i32 [ %22, %21 ], [ %13, %2 ]
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds %struct.rtvec_def, ptr %1, i64 0, i32 1, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !362
  %20 = icmp eq ptr %19, %12
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = add nsw i32 %16, -1
  %23 = icmp sgt i32 %16, 0
  br i1 %23, label %15, label %26, !llvm.loop !1080

24:                                               ; preds = %2
  %25 = icmp eq i32 %13, -1
  br i1 %25, label %26, label %43

26:                                               ; preds = %21, %24
  %27 = zext i8 %5 to i64
  %28 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !362
  %30 = icmp eq ptr %12, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = sext i32 %0 to i64
  %33 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !362
  br label %45

35:                                               ; preds = %26
  %36 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %27
  %37 = load ptr, ptr %36, align 8, !tbaa !362
  %38 = icmp eq ptr %12, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = sext i32 %0 to i64
  %41 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !362
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
define dso_local void @init_emit_regs() local_unnamed_addr #0 !prof !1081 {
  %1 = load ptr, ptr @reg_attrs_htab, align 8, !tbaa !362
  tail call void @htab_empty(ptr noundef %1) #20
  tail call void @init_reg_modes_target() #20
  %2 = tail call ptr @gen_rtx_fmt__stat(i32 noundef 36, i32 noundef 0) #20
  store ptr %2, ptr @global_rtl, align 16, !tbaa !362
  %3 = tail call ptr @gen_rtx_fmt__stat(i32 noundef 46, i32 noundef 0) #20
  store ptr %3, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 1), align 8, !tbaa !362
  %4 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 7) #21
  store ptr %4, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !362
  %5 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 20) #21
  store ptr %5, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !362
  %6 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 6) #21
  store ptr %6, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !362
  %7 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 16) #21
  store ptr %7, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !362
  %8 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 53) #21
  store ptr %8, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 6), align 16, !tbaa !362
  %9 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 54) #21
  store ptr %9, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !362
  %10 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 55) #21
  store ptr %10, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !362
  %11 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 56) #21
  store ptr %11, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !362
  %12 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef 57) #21
  store ptr %12, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 10), align 16, !tbaa !362
  br label %13

13:                                               ; preds = %0, %13
  %14 = phi i64 [ 0, %0 ], [ %20, %13 ]
  %15 = getelementptr inbounds [53 x i32], ptr @reg_raw_mode, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !368
  %17 = trunc i64 %14 to i32
  %18 = tail call ptr @gen_raw_REG(i32 noundef %16, i32 noundef %17) #21
  %19 = getelementptr inbounds [53 x ptr], ptr @static_regno_reg_rtx, i64 0, i64 %14
  store ptr %18, ptr %19, align 8, !tbaa !362
  %20 = add nuw nsw i64 %14, 1
  %21 = icmp eq i64 %20, 53
  br i1 %21, label %22, label %13, !prof !1082, !llvm.loop !1083

22:                                               ; preds = %13
  %23 = load i32, ptr @flag_pic, align 4, !tbaa !368
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25, !prof !906

25:                                               ; preds = %22
  %26 = load i32, ptr @reload_completed, align 4, !tbaa !368
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !906

28:                                               ; preds = %25
  %29 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !362
  %30 = tail call fastcc i32 @rhs_regno(ptr noundef %29) #21
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %35, label %32

32:                                               ; preds = %28, %25
  %33 = phi i32 [ 3, %25 ], [ %30, %28 ]
  %34 = tail call ptr @gen_raw_REG(i32 noundef 16, i32 noundef %33) #21
  br label %35

35:                                               ; preds = %28, %22, %32
  %36 = phi ptr [ %34, %32 ], [ null, %22 ], [ null, %28 ]
  store ptr %36, ptr @pic_offset_table_rtx, align 8, !tbaa !362
  ret void
}

; Function Attrs: optsize
declare void @htab_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_reg_modes_target() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt__stat(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_emit_once() local_unnamed_addr #0 !prof !1081 {
  %1 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @const_int_htab_hash, ptr noundef nonnull @const_int_htab_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #20
  store ptr %1, ptr @const_int_htab, align 8, !tbaa !362
  %2 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @const_double_htab_hash, ptr noundef nonnull @const_double_htab_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #20
  store ptr %2, ptr @const_double_htab, align 8, !tbaa !362
  %3 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @const_fixed_htab_hash, ptr noundef nonnull @const_fixed_htab_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #20
  store ptr %3, ptr @const_fixed_htab, align 8, !tbaa !362
  %4 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @mem_attrs_htab_hash, ptr noundef nonnull @mem_attrs_htab_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #20
  store ptr %4, ptr @mem_attrs_htab, align 8, !tbaa !362
  %5 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @reg_attrs_htab_hash, ptr noundef nonnull @reg_attrs_htab_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #20
  store ptr %5, ptr @reg_attrs_htab, align 8, !tbaa !362
  store i32 0, ptr @byte_mode, align 4, !tbaa !368
  store i32 0, ptr @word_mode, align 4, !tbaa !368
  %6 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11, !prof !792

8:                                                ; preds = %30, %0
  %9 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 8), align 8, !tbaa !355
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %50, label %36, !prof !792

11:                                               ; preds = %0, %30
  %12 = phi i8 [ %34, %30 ], [ %6, %0 ]
  %13 = phi i32 [ %32, %30 ], [ 0, %0 ]
  %14 = phi i32 [ %31, %30 ], [ 0, %0 ]
  %15 = zext i8 %12 to i32
  %16 = zext i8 %12 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !355
  %19 = icmp eq i8 %18, 1
  %20 = icmp eq i32 %13, 0
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %26, label %22, !prof !1084

22:                                               ; preds = %11
  %23 = icmp eq i8 %18, 4
  %24 = icmp eq i32 %14, 0
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %30, !prof !1085

26:                                               ; preds = %22, %11
  %27 = phi ptr [ @byte_mode, %11 ], [ @word_mode, %22 ]
  %28 = phi i32 [ %14, %11 ], [ %15, %22 ]
  %29 = phi i32 [ %15, %11 ], [ %13, %22 ]
  store i32 %15, ptr %27, align 4, !tbaa !368
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i32 [ %14, %22 ], [ %28, %26 ]
  %32 = phi i32 [ %13, %22 ], [ %29, %26 ]
  %33 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %16
  %34 = load i8, ptr %33, align 1, !tbaa !355
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %8, label %11, !prof !1086, !llvm.loop !1087

36:                                               ; preds = %8, %36
  %37 = phi i8 [ %48, %36 ], [ %9, %8 ]
  %38 = phi i32 [ %46, %36 ], [ 0, %8 ]
  %39 = zext i8 %37 to i32
  %40 = zext i8 %37 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !355
  %43 = icmp eq i8 %42, 8
  %44 = icmp eq i32 %38, 0
  %45 = select i1 %43, i1 %44, i1 false
  %46 = select i1 %45, i32 %39, i32 %38, !prof !1088
  %47 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %40
  %48 = load i8, ptr %47, align 1, !tbaa !355
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %36, !prof !1089, !llvm.loop !1090

50:                                               ; preds = %36, %8
  %51 = phi i32 [ 0, %8 ], [ %46, %36 ]
  %52 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_class, i64 0, i64 16), align 16, !tbaa !355
  %53 = zext i8 %52 to i32
  %54 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef %53, i32 noundef 0) #20
  store i32 %54, ptr @ptr_mode, align 4, !tbaa !368
  br label %55

55:                                               ; preds = %50, %55
  %56 = phi i64 [ -64, %50 ], [ %60, %55 ]
  %57 = tail call ptr @gen_rtx_fmt_w_stat(i32 noundef 30, i32 noundef 0, i64 noundef %56) #20
  %58 = add nsw i64 %56, 64
  %59 = getelementptr inbounds [129 x ptr], ptr @const_int_rtx, i64 0, i64 %58
  store ptr %57, ptr %59, align 8, !tbaa !362
  %60 = add nsw i64 %56, 1
  %61 = icmp eq i64 %60, 65
  br i1 %61, label %62, label %55, !prof !1091, !llvm.loop !1092

62:                                               ; preds = %55
  %63 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !362
  store ptr %63, ptr @const_true_rtx, align 8, !tbaa !362
  tail call void @real_from_integer(ptr noundef nonnull @dconst0, i32 noundef %51, i64 noundef 0, i64 noundef 0, i32 noundef 0) #20
  tail call void @real_from_integer(ptr noundef nonnull @dconst1, i32 noundef %51, i64 noundef 1, i64 noundef 0, i32 noundef 0) #20
  tail call void @real_from_integer(ptr noundef nonnull @dconst2, i32 noundef %51, i64 noundef 2, i64 noundef 0, i32 noundef 0) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @dconstm1, ptr noundef nonnull align 8 dereferenceable(32) @dconst1, i64 32, i1 false), !tbaa.struct !367
  %64 = load i32, ptr @dconstm1, align 8
  %65 = or i32 %64, 8
  store i32 %65, ptr @dconstm1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @dconsthalf, ptr noundef nonnull align 8 dereferenceable(32) @dconst1, i64 32, i1 false), !tbaa.struct !367
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
  %76 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 10), align 2, !tbaa !355
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %126, label %129, !prof !792

78:                                               ; preds = %62, %123
  %79 = phi i64 [ 0, %62 ], [ %124, %123 ]
  %80 = icmp eq i64 %79, 0
  %81 = icmp eq i64 %79, 1
  %82 = select i1 %81, ptr @dconst1, ptr @dconst2
  %83 = select i1 %80, ptr @dconst0, ptr %82, !prof !1093
  br i1 %10, label %84, label %85, !prof !792

84:                                               ; preds = %85, %78
  br i1 %72, label %103, label %94, !prof !792

85:                                               ; preds = %78, %85
  %86 = phi i8 [ %92, %85 ], [ %9, %78 ]
  %87 = zext i8 %86 to i32
  %88 = tail call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %83, i32 noundef %87) #21
  %89 = zext i8 %86 to i64
  %90 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %79, i64 %89
  store ptr %88, ptr %90, align 8, !tbaa !362
  %91 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %89
  %92 = load i8, ptr %91, align 1, !tbaa !355
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %84, label %85, !prof !1094, !llvm.loop !1095

94:                                               ; preds = %84, %94
  %95 = phi i8 [ %101, %94 ], [ %71, %84 ]
  %96 = zext i8 %95 to i32
  %97 = tail call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %83, i32 noundef %96) #21
  %98 = zext i8 %95 to i64
  %99 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %79, i64 %98
  store ptr %97, ptr %99, align 8, !tbaa !362
  %100 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %98
  %101 = load i8, ptr %100, align 1, !tbaa !355
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %94, !prof !1089, !llvm.loop !1096

103:                                              ; preds = %94, %84
  %104 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %79) #21
  %105 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %79
  store ptr %104, ptr %105, align 8, !tbaa !362
  br i1 %7, label %106, label %107, !prof !792

106:                                              ; preds = %107, %103
  br i1 %74, label %123, label %115, !prof !1097

107:                                              ; preds = %103, %107
  %108 = phi i8 [ %113, %107 ], [ %6, %103 ]
  %109 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %79) #21
  %110 = zext i8 %108 to i64
  %111 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %79, i64 %110
  store ptr %109, ptr %111, align 8, !tbaa !362
  %112 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %110
  %113 = load i8, ptr %112, align 1, !tbaa !355
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %106, label %107, !prof !1098, !llvm.loop !1099

115:                                              ; preds = %106, %115
  %116 = phi i8 [ %121, %115 ], [ %73, %106 ]
  %117 = tail call ptr @gen_rtx_CONST_INT(i32 poison, i64 noundef %79) #21
  %118 = zext i8 %116 to i64
  %119 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %79, i64 %118
  store ptr %117, ptr %119, align 8, !tbaa !362
  %120 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %118
  %121 = load i8, ptr %120, align 1, !tbaa !355
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %115, !prof !1063, !llvm.loop !1100

123:                                              ; preds = %115, %106
  %124 = add nuw nsw i64 %79, 1
  %125 = icmp eq i64 %124, 3
  br i1 %125, label %75, label %78, !prof !1101, !llvm.loop !1102

126:                                              ; preds = %129, %75
  %127 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 11), align 1, !tbaa !355
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %143, label %146, !prof !792

129:                                              ; preds = %75, %129
  %130 = phi i8 [ %141, %129 ], [ %76, %75 ]
  %131 = zext i8 %130 to i32
  %132 = zext i8 %130 to i64
  %133 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !355
  %135 = zext i8 %134 to i64
  %136 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !362
  %138 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %131, ptr noundef %137, ptr noundef %137) #20
  %139 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %132
  store ptr %138, ptr %139, align 8, !tbaa !362
  %140 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %132
  %141 = load i8, ptr %140, align 1, !tbaa !355
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %126, label %129, !prof !1086, !llvm.loop !1103

143:                                              ; preds = %146, %126
  %144 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 12), align 4, !tbaa !355
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %160, label %163, !prof !792

146:                                              ; preds = %126, %146
  %147 = phi i8 [ %158, %146 ], [ %127, %126 ]
  %148 = zext i8 %147 to i32
  %149 = zext i8 %147 to i64
  %150 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !355
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !362
  %155 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %148, ptr noundef %154, ptr noundef %154) #20
  %156 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %149
  store ptr %155, ptr %156, align 8, !tbaa !362
  %157 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %149
  %158 = load i8, ptr %157, align 1, !tbaa !355
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %143, label %146, !prof !1089, !llvm.loop !1104

160:                                              ; preds = %163, %143
  %161 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 17), align 1, !tbaa !355
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %174, label %177, !prof !792

163:                                              ; preds = %143, %163
  %164 = phi i8 [ %172, %163 ], [ %144, %143 ]
  %165 = zext i8 %164 to i32
  %166 = tail call fastcc ptr @gen_const_vector(i32 noundef %165, i32 noundef 0) #21
  %167 = zext i8 %164 to i64
  %168 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %167
  store ptr %166, ptr %168, align 8, !tbaa !362
  %169 = tail call fastcc ptr @gen_const_vector(i32 noundef %165, i32 noundef 1) #21
  %170 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %167
  store ptr %169, ptr %170, align 8, !tbaa !362
  %171 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %167
  %172 = load i8, ptr %171, align 1, !tbaa !355
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %160, label %163, !prof !1105, !llvm.loop !1106

174:                                              ; preds = %177, %160
  %175 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 4), align 4, !tbaa !355
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %188, label %191, !prof !792

177:                                              ; preds = %160, %177
  %178 = phi i8 [ %186, %177 ], [ %161, %160 ]
  %179 = zext i8 %178 to i32
  %180 = tail call fastcc ptr @gen_const_vector(i32 noundef %179, i32 noundef 0) #21
  %181 = zext i8 %178 to i64
  %182 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %181
  store ptr %180, ptr %182, align 8, !tbaa !362
  %183 = tail call fastcc ptr @gen_const_vector(i32 noundef %179, i32 noundef 1) #21
  %184 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %181
  store ptr %183, ptr %184, align 8, !tbaa !362
  %185 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %181
  %186 = load i8, ptr %185, align 1, !tbaa !355
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %174, label %177, !prof !1107, !llvm.loop !1108

188:                                              ; preds = %191, %174
  %189 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 5), align 1, !tbaa !355
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %204, label %207, !prof !792

191:                                              ; preds = %174, %191
  %192 = phi i8 [ %202, %191 ], [ %175, %174 ]
  %193 = zext i8 %192 to i32
  %194 = add nsw i32 %193, -20
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %195
  %197 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %195, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %196, i8 0, i64 16, i1 false)
  store i32 %193, ptr %197, align 8, !tbaa !1109
  %198 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %196, i32 noundef %193) #21
  %199 = zext i8 %192 to i64
  %200 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %199
  store ptr %198, ptr %200, align 8, !tbaa !362
  %201 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %199
  %202 = load i8, ptr %201, align 1, !tbaa !355
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %188, label %191, !prof !1112, !llvm.loop !1113

204:                                              ; preds = %207, %188
  %205 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 6), align 2, !tbaa !355
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %220, label %223, !prof !792

207:                                              ; preds = %188, %207
  %208 = phi i8 [ %218, %207 ], [ %189, %188 ]
  %209 = zext i8 %208 to i32
  %210 = add nsw i32 %209, -20
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %211
  %213 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %211, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %212, i8 0, i64 16, i1 false)
  store i32 %209, ptr %213, align 8, !tbaa !1109
  %214 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %212, i32 noundef %209) #21
  %215 = zext i8 %208 to i64
  %216 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %215
  store ptr %214, ptr %216, align 8, !tbaa !362
  %217 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %215
  %218 = load i8, ptr %217, align 1, !tbaa !355
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %204, label %207, !prof !1112, !llvm.loop !1114

220:                                              ; preds = %244, %204
  %221 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 7), align 1, !tbaa !355
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %251, label %254, !prof !792

223:                                              ; preds = %204, %244
  %224 = phi i8 [ %249, %244 ], [ %205, %204 ]
  %225 = zext i8 %224 to i32
  %226 = add nsw i32 %225, -20
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %227
  %229 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %227, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %228, i8 0, i64 16, i1 false)
  store i32 %225, ptr %229, align 8, !tbaa !1109
  %230 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %228, i32 noundef %225) #21
  %231 = zext i8 %224 to i64
  %232 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %231
  store ptr %230, ptr %232, align 8, !tbaa !362
  %233 = add nsw i32 %225, -30
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [8 x %struct.fixed_value], ptr @fconst1, i64 0, i64 %234
  %236 = getelementptr inbounds %struct.double_int, ptr %235, i64 0, i32 1
  %237 = getelementptr inbounds [8 x %struct.fixed_value], ptr @fconst1, i64 0, i64 %234, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %235, i8 0, i64 16, i1 false)
  store i32 %225, ptr %237, align 8, !tbaa !1109
  %238 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %231
  %239 = load i8, ptr %238, align 1, !tbaa !355
  %240 = zext i8 %239 to i64
  %241 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %231
  %242 = load i8, ptr %241, align 1, !tbaa !355
  switch i8 %242, label %243 [
    i8 4, label %244
    i8 13, label %244
    i8 6, label %244
    i8 15, label %244
  ], !prof !1115

243:                                              ; preds = %223
  br label %244

244:                                              ; preds = %223, %223, %223, %223, %243
  %245 = phi i32 [ 1, %223 ], [ 0, %243 ], [ 1, %223 ], [ 1, %223 ], [ 1, %223 ]
  tail call void @lshift_double(i64 noundef 1, i64 noundef 0, i64 noundef %240, i32 noundef 128, ptr noundef nonnull %235, ptr noundef nonnull %236, i32 noundef %245) #20
  %246 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %235, i32 noundef %225) #21
  %247 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %231
  store ptr %246, ptr %247, align 8, !tbaa !362
  %248 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %231
  %249 = load i8, ptr %248, align 1, !tbaa !355
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %220, label %223, !prof !1089, !llvm.loop !1116

251:                                              ; preds = %275, %220
  %252 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 13), align 1, !tbaa !355
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %282, label %285, !prof !1117

254:                                              ; preds = %220, %275
  %255 = phi i8 [ %280, %275 ], [ %221, %220 ]
  %256 = zext i8 %255 to i32
  %257 = add nsw i32 %256, -20
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %258
  %260 = getelementptr inbounds [18 x %struct.fixed_value], ptr @fconst0, i64 0, i64 %258, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %259, i8 0, i64 16, i1 false)
  store i32 %256, ptr %260, align 8, !tbaa !1109
  %261 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %259, i32 noundef %256) #21
  %262 = zext i8 %255 to i64
  %263 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %262
  store ptr %261, ptr %263, align 8, !tbaa !362
  %264 = add nsw i32 %256, -30
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds [8 x %struct.fixed_value], ptr @fconst1, i64 0, i64 %265
  %267 = getelementptr inbounds %struct.double_int, ptr %266, i64 0, i32 1
  %268 = getelementptr inbounds [8 x %struct.fixed_value], ptr @fconst1, i64 0, i64 %265, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %266, i8 0, i64 16, i1 false)
  store i32 %256, ptr %268, align 8, !tbaa !1109
  %269 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %262
  %270 = load i8, ptr %269, align 1, !tbaa !355
  %271 = zext i8 %270 to i64
  %272 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %262
  %273 = load i8, ptr %272, align 1, !tbaa !355
  switch i8 %273, label %274 [
    i8 4, label %275
    i8 13, label %275
    i8 6, label %275
    i8 15, label %275
  ], !prof !1118

274:                                              ; preds = %254
  br label %275

275:                                              ; preds = %254, %254, %254, %254, %274
  %276 = phi i32 [ 1, %254 ], [ 0, %274 ], [ 1, %254 ], [ 1, %254 ], [ 1, %254 ]
  tail call void @lshift_double(i64 noundef 1, i64 noundef 0, i64 noundef %271, i32 noundef 128, ptr noundef nonnull %266, ptr noundef nonnull %267, i32 noundef %276) #20
  %277 = tail call ptr @const_fixed_from_fixed_value(ptr noundef nonnull byval(%struct.fixed_value) align 8 %266, i32 noundef %256) #21
  %278 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %262
  store ptr %277, ptr %278, align 8, !tbaa !362
  %279 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %262
  %280 = load i8, ptr %279, align 1, !tbaa !355
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %251, label %254, !prof !1089, !llvm.loop !1119

282:                                              ; preds = %285, %251
  %283 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 14), align 2, !tbaa !355
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %294, label %297, !prof !1117

285:                                              ; preds = %251, %285
  %286 = phi i8 [ %292, %285 ], [ %252, %251 ]
  %287 = zext i8 %286 to i32
  %288 = tail call fastcc ptr @gen_const_vector(i32 noundef %287, i32 noundef 0) #21
  %289 = zext i8 %286 to i64
  %290 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %289
  store ptr %288, ptr %290, align 8, !tbaa !362
  %291 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %289
  %292 = load i8, ptr %291, align 1, !tbaa !355
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %282, label %285, !prof !1063, !llvm.loop !1120

294:                                              ; preds = %297, %282
  %295 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 15), align 1, !tbaa !355
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %306, label %309, !prof !1117

297:                                              ; preds = %282, %297
  %298 = phi i8 [ %304, %297 ], [ %283, %282 ]
  %299 = zext i8 %298 to i32
  %300 = tail call fastcc ptr @gen_const_vector(i32 noundef %299, i32 noundef 0) #21
  %301 = zext i8 %298 to i64
  %302 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %301
  store ptr %300, ptr %302, align 8, !tbaa !362
  %303 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %301
  %304 = load i8, ptr %303, align 1, !tbaa !355
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %294, label %297, !prof !1063, !llvm.loop !1121

306:                                              ; preds = %309, %294
  %307 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 16), align 16, !tbaa !355
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %320, label %322, !prof !1117

309:                                              ; preds = %294, %309
  %310 = phi i8 [ %318, %309 ], [ %295, %294 ]
  %311 = zext i8 %310 to i32
  %312 = tail call fastcc ptr @gen_const_vector(i32 noundef %311, i32 noundef 0) #21
  %313 = zext i8 %310 to i64
  %314 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %313
  store ptr %312, ptr %314, align 8, !tbaa !362
  %315 = tail call fastcc ptr @gen_const_vector(i32 noundef %311, i32 noundef 1) #21
  %316 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %313
  store ptr %315, ptr %316, align 8, !tbaa !362
  %317 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %313
  %318 = load i8, ptr %317, align 1, !tbaa !355
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %306, label %309, !prof !1063, !llvm.loop !1122

320:                                              ; preds = %322, %306
  %321 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  br label %333

322:                                              ; preds = %306, %322
  %323 = phi i8 [ %331, %322 ], [ %307, %306 ]
  %324 = zext i8 %323 to i32
  %325 = tail call fastcc ptr @gen_const_vector(i32 noundef %324, i32 noundef 0) #21
  %326 = zext i8 %323 to i64
  %327 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %326
  store ptr %325, ptr %327, align 8, !tbaa !362
  %328 = tail call fastcc ptr @gen_const_vector(i32 noundef %324, i32 noundef 1) #21
  %329 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 %326
  store ptr %328, ptr %329, align 8, !tbaa !362
  %330 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %326
  %331 = load i8, ptr %330, align 1, !tbaa !355
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %320, label %322, !prof !1063, !llvm.loop !1123

333:                                              ; preds = %320, %340
  %334 = phi i64 [ 2, %320 ], [ %341, %340 ]
  %335 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %334
  %336 = load i8, ptr %335, align 1, !tbaa !355
  %337 = icmp eq i8 %336, 1
  br i1 %337, label %338, label %340, !prof !1124

338:                                              ; preds = %333
  %339 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %334
  store ptr %321, ptr %339, align 8, !tbaa !362
  br label %340

340:                                              ; preds = %333, %338
  %341 = add nuw nsw i64 %334, 1
  %342 = icmp eq i64 %341, 87
  br i1 %342, label %343, label %333, !prof !1125, !llvm.loop !1126

343:                                              ; preds = %340
  store ptr %321, ptr getelementptr inbounds ([3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 0, i64 13), align 8, !tbaa !362
  %344 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !362
  store ptr %344, ptr getelementptr inbounds ([3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 1, i64 13), align 16, !tbaa !362
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @const_int_htab_hash(ptr nocapture noundef readonly %0) #4 !prof !1127 !PGOFuncName !1128 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !355
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @const_int_htab_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !prof !1129 !PGOFuncName !1130 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !355
  %5 = load i64, ptr %1, align 8, !tbaa !359
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @const_double_htab_hash(ptr noundef %0) #0 !prof !1131 !PGOFuncName !1132 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 16711680
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  br i1 %4, label %6, label %12, !prof !1133

6:                                                ; preds = %1
  %7 = load i64, ptr %5, align 8, !tbaa !355
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load i64, ptr %8, align 8, !tbaa !355
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
define internal i32 @const_double_htab_eq(ptr noundef %0, ptr noundef %1) #0 !prof !1134 !PGOFuncName !1135 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = load i32, ptr %1, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %29, !prof !1136

10:                                               ; preds = %2
  %11 = icmp eq i32 %5, 0
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  br i1 %11, label %13, label %25, !prof !1137

13:                                               ; preds = %10
  %14 = load i64, ptr %12, align 8, !tbaa !355
  %15 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !355
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load i64, ptr %19, align 8, !tbaa !355
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load i64, ptr %21, align 8, !tbaa !355
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
define internal i32 @const_fixed_htab_hash(ptr noundef %0) #0 !prof !372 !PGOFuncName !1138 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = tail call i32 @fixed_hash(ptr noundef nonnull %2) #20
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = xor i32 %6, %3
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @const_fixed_htab_eq(ptr noundef %0, ptr noundef %1) #0 !prof !1139 !PGOFuncName !1140 {
  %3 = load i32, ptr %0, align 8
  %4 = load i32, ptr %1, align 8
  %5 = xor i32 %4, %3
  %6 = and i32 %5, 16711680
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13, !prof !1141

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
define internal i32 @mem_attrs_htab_hash(ptr nocapture noundef readonly %0) #0 !prof !1142 !PGOFuncName !1143 {
  %2 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !555
  %4 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !410
  %6 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 8, !tbaa !411
  %8 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !406
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !1144

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !355
  %14 = mul nsw i64 %13, 50000
  br label %15

15:                                               ; preds = %1, %11
  %16 = phi i64 [ %14, %11 ], [ 0, %1 ]
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !407
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !1145

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !355
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
  %34 = load ptr, ptr %0, align 8, !tbaa !404
  %35 = tail call i32 @iterative_hash_expr(ptr noundef %34, i32 noundef 0) #20
  %36 = trunc i64 %33 to i32
  %37 = xor i32 %35, %36
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @mem_attrs_htab_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !1146 !PGOFuncName !1147 {
  %3 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !555
  %5 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !555
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %44, !prof !1148

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !406
  %11 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !406
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %44, !prof !1149

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !407
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !407
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %20, label %44, !prof !1150

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !410
  %23 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !410
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %44, !prof !1151

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.mem_attrs, ptr %0, i64 0, i32 5
  %28 = load i8, ptr %27, align 8, !tbaa !411
  %29 = getelementptr inbounds %struct.mem_attrs, ptr %1, i64 0, i32 5
  %30 = load i8, ptr %29, align 8, !tbaa !411
  %31 = icmp eq i8 %28, %30
  br i1 %31, label %32, label %44, !prof !1152

32:                                               ; preds = %26
  %33 = load ptr, ptr %0, align 8, !tbaa !404
  %34 = load ptr, ptr %1, align 8, !tbaa !404
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %44, label %36, !prof !1153

36:                                               ; preds = %32
  %37 = icmp eq ptr %33, null
  %38 = icmp eq ptr %34, null
  %39 = or i1 %37, %38
  br i1 %39, label %44, label %40, !prof !1154

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
define internal i32 @reg_attrs_htab_hash(ptr nocapture noundef readonly %0) #4 !prof !1155 !PGOFuncName !1156 {
  %2 = getelementptr inbounds %struct.reg_attrs, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !459
  %4 = mul nsw i64 %3, 1000
  %5 = load ptr, ptr %0, align 8, !tbaa !457
  %6 = ptrtoint ptr %5 to i64
  %7 = xor i64 %4, %6
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @reg_attrs_htab_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !prof !1157 !PGOFuncName !1158 {
  %3 = load ptr, ptr %0, align 8, !tbaa !457
  %4 = load ptr, ptr %1, align 8, !tbaa !457
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %13, !prof !1159

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.reg_attrs, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !459
  %9 = getelementptr inbounds %struct.reg_attrs, ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !459
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
define internal fastcc ptr @gen_const_vector(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1160 !PGOFuncName !1161 {
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !355
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %3
  %8 = load i8, ptr %7, align 1, !tbaa !355
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !355
  %12 = icmp eq i8 %11, 9
  br i1 %12, label %13, label %14, !prof !1162

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5626, ptr noundef nonnull @.str.1) #20
  br label %14

14:                                               ; preds = %2, %13
  %15 = tail call ptr @rtvec_alloc(i32 noundef %6) #20
  %16 = zext nneg i32 %1 to i64
  %17 = getelementptr inbounds [3 x [87 x ptr]], ptr @const_tiny_rtx, i64 0, i64 %16, i64 %9
  %18 = load ptr, ptr %17, align 8, !tbaa !362
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !1162

20:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5632, ptr noundef nonnull @.str.1) #20
  br label %21

21:                                               ; preds = %14, %20
  %22 = icmp eq i8 %5, 0
  br i1 %22, label %47, label %23, !prof !1163

23:                                               ; preds = %21
  %24 = load ptr, ptr %17, align 8, !tbaa !362
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
  store ptr %24, ptr %37, align 8, !tbaa !362
  br label %38

38:                                               ; preds = %36, %31
  %39 = extractelement <2 x i1> %34, i64 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = or disjoint i64 %32, 1
  %42 = getelementptr inbounds %struct.rtvec_def, ptr %15, i64 0, i32 1, i64 %41
  store ptr %24, ptr %42, align 8, !tbaa !362
  br label %43

43:                                               ; preds = %40, %38
  %44 = add i64 %32, 2
  %45 = add <2 x i64> %33, <i64 2, i64 2>
  %46 = icmp eq i64 %44, %27
  br i1 %46, label %47, label %31, !prof !1164, !llvm.loop !1165

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
define dso_local noundef ptr @emit_copy_of_insn_after(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !1168 {
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %49 [
    i16 8, label %5
    i16 9, label %10
    i16 7, label %15
    i16 10, label %20
  ], !prof !1169

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !355
  %8 = tail call ptr @copy_insn(ptr noundef %7) #21
  %9 = tail call ptr @emit_insn_after(ptr noundef %8, ptr noundef %1) #21
  br label %50

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !355
  %13 = tail call ptr @copy_insn(ptr noundef %12) #21
  %14 = tail call ptr @emit_jump_insn_after(ptr noundef %13, ptr noundef %1) #21
  br label %50

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !355
  %18 = tail call ptr @copy_insn(ptr noundef %17) #21
  %19 = tail call ptr @emit_debug_insn_after(ptr noundef %18, ptr noundef %1) #21
  br label %50

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !355
  %23 = tail call ptr @copy_insn(ptr noundef %22) #21
  %24 = tail call ptr @emit_call_insn_after(ptr noundef %23, ptr noundef %1) #21
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !355
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28, !prof !1170

28:                                               ; preds = %20
  %29 = tail call ptr @copy_insn(ptr noundef nonnull %26) #21
  %30 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 1, i32 1, i32 0, i32 0, i64 2
  store ptr %29, ptr %30, align 8, !tbaa !355
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
  %53 = load ptr, ptr %52, align 8, !tbaa !355
  tail call void @mark_jump_label(ptr noundef %53, ptr noundef %51, i32 noundef 0) #20
  %54 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !355
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 2
  store i32 %55, ptr %56, align 8, !tbaa !355
  %57 = load i32, ptr %0, align 8
  %58 = and i32 %57, 1073741824
  %59 = load i32, ptr %51, align 8
  %60 = and i32 %59, -1073741825
  %61 = or disjoint i32 %60, %58
  store i32 %61, ptr %51, align 8
  %62 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !355
  %64 = icmp eq ptr %63, null
  br i1 %64, label %84, label %65, !prof !1171

65:                                               ; preds = %50, %80
  %66 = phi ptr [ %82, %80 ], [ %63, %50 ]
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  %70 = icmp eq i32 %69, 10
  br i1 %70, label %80, label %71, !prof !1172

71:                                               ; preds = %65
  %72 = and i32 %67, 65535
  %73 = icmp eq i32 %72, 3
  %74 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !355
  br i1 %73, label %76, label %78, !prof !1173

76:                                               ; preds = %71
  %77 = tail call ptr @copy_insn_1(ptr noundef %75) #21
  br label %78

78:                                               ; preds = %71, %76
  %79 = phi ptr [ %77, %76 ], [ %75, %71 ]
  tail call void @add_reg_note(ptr noundef nonnull %51, i32 noundef %69, ptr noundef %79) #20
  br label %80

80:                                               ; preds = %78, %65
  %81 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !355
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %65, !prof !1174, !llvm.loop !1175

84:                                               ; preds = %80, %50
  %85 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !355
  %87 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 1, i32 1
  store i32 %86, ptr %87, align 8, !tbaa !355
  ret ptr %51
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_hard_reg_clobber(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !1176 {
  %3 = zext i32 %0 to i64
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [87 x [53 x ptr]], ptr @hard_reg_clobbers, i64 0, i64 %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !362
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11, !prof !1177

8:                                                ; preds = %2
  %9 = tail call ptr @gen_rtx_REG(i32 noundef %0, i32 noundef %1) #21
  %10 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %9) #20
  store ptr %10, ptr %5, align 8, !tbaa !362
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!353}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352}
!36 = !{ptr @gen_raw_REG, ptr @gen_rtx_fmt_i00_stat, i64 2082189}
!37 = !{ptr @gen_rtx_CONST_INT, ptr @htab_find_slot_with_hash, i64 5383575}
!38 = !{ptr @gen_rtx_CONST_INT, ptr @gen_rtx_fmt_w_stat, i64 9095}
!39 = !{ptr @gen_int_mode, ptr @trunc_int_for_mode, i64 5872737}
!40 = !{ptr @gen_int_mode, ptr @gen_rtx_CONST_INT, i64 5872737}
!41 = !{ptr @const_double_from_real_value, ptr @rtx_alloc_stat, i64 3994}
!42 = !{ptr @const_double_from_real_value, ptr @lookup_const_double, i64 3994}
!43 = !{ptr @lookup_const_double, ptr @htab_find_slot, i64 3994}
!44 = !{ptr @const_fixed_from_fixed_value, ptr @rtx_alloc_stat, i64 26}
!45 = !{ptr @const_fixed_from_fixed_value, ptr @lookup_const_fixed, i64 26}
!46 = !{ptr @lookup_const_fixed, ptr @htab_find_slot, i64 26}
!47 = !{ptr @immed_double_const, ptr @gen_int_mode, i64 536129}
!48 = !{ptr @immed_double_const, ptr @fancy_abort, i64 1}
!49 = !{ptr @immed_double_const, ptr @gen_rtx_CONST_INT, i64 2}
!50 = !{ptr @immed_double_const, ptr @rtx_alloc_stat, i64 1}
!51 = !{ptr @immed_double_const, ptr @lookup_const_double, i64 1}
!52 = !{ptr @gen_rtx_REG, ptr @gen_raw_REG, i64 904827}
!53 = !{ptr @gen_rtx_MEM, ptr @gen_rtx_fmt_e0_stat, i64 3249145}
!54 = !{ptr @gen_const_mem, ptr @gen_rtx_MEM, i64 876}
!55 = !{ptr @set_mem_alias_set, ptr @gen_rtx_CONST_INT, i64 10}
!56 = !{ptr @set_mem_alias_set, ptr @get_mem_attrs, i64 420845}
!57 = !{ptr @validate_subreg, ptr @rhs_regno, i64 40538}
!58 = !{ptr @validate_subreg, ptr @ix86_cannot_change_mode_class, i64 71}
!59 = !{ptr @validate_subreg, ptr @subreg_offset_representable_p, i64 74}
!60 = !{ptr @gen_rtx_SUBREG, ptr @validate_subreg, i64 331419}
!61 = !{ptr @gen_rtx_SUBREG, ptr @fancy_abort, i64 1}
!62 = !{ptr @gen_rtx_SUBREG, ptr @gen_rtx_fmt_ei_stat, i64 331419}
!63 = !{ptr @gen_lowpart_SUBREG, ptr @gen_rtx_SUBREG, i64 365}
!64 = !{ptr @gen_rtvec, ptr @rtvec_alloc, i64 309952}
!65 = !{ptr @gen_rtvec_v, ptr @rtvec_alloc, i64 852}
!66 = !{ptr @gen_reg_rtx, ptr @get_mode_alignment, i64 968964}
!67 = !{ptr @gen_reg_rtx, ptr @fancy_abort, i64 2}
!68 = !{ptr @gen_reg_rtx, ptr @ix86_minimum_alignment, i64 1687}
!69 = !{ptr @gen_reg_rtx, ptr @gen_reg_rtx, i64 4}
!70 = !{ptr @gen_reg_rtx, ptr @gen_rtx_fmt_ee_stat, i64 2}
!71 = !{ptr @gen_reg_rtx, ptr @xrealloc, i64 2763}
!72 = !{ptr @gen_reg_rtx, ptr @ggc_realloc_stat, i64 2763}
!73 = !{ptr @gen_reg_rtx, ptr @gen_raw_REG, i64 968962}
!74 = !{ptr @gen_rtx_REG_offset, ptr @gen_rtx_REG, i64 27025}
!75 = !{ptr @gen_rtx_REG_offset, ptr @update_reg_offset, i64 27025}
!76 = !{ptr @update_reg_offset, ptr @get_reg_attrs, i64 61429}
!77 = !{ptr @get_reg_attrs, ptr @htab_find_slot, i64 1169623}
!78 = !{ptr @get_reg_attrs, ptr @ggc_alloc_stat, i64 511014}
!79 = !{ptr @gen_reg_rtx_offset, ptr @gen_reg_rtx, i64 302}
!80 = !{ptr @gen_reg_rtx_offset, ptr @update_reg_offset, i64 302}
!81 = !{ptr @adjust_reg_mode, ptr @update_reg_offset, i64 27523}
!82 = !{ptr @set_reg_attrs_from_value, ptr @rhs_regno, i64 1098191}
!83 = !{ptr @set_reg_attrs_from_value, ptr @get_reg_attrs, i64 74047}
!84 = !{ptr @set_reg_attrs_from_value, ptr @update_reg_offset, i64 6580}
!85 = !{ptr @set_reg_attrs_from_value, ptr @mark_reg_pointer, i64 55983}
!86 = !{ptr @mark_reg_pointer, ptr @rhs_regno, i64 379896}
!87 = !{ptr @gen_reg_rtx_and_attrs, ptr @gen_reg_rtx, i64 6175}
!88 = !{ptr @gen_reg_rtx_and_attrs, ptr @set_reg_attrs_from_value, i64 6175}
!89 = !{ptr @set_reg_attrs_for_decl_rtl, ptr @subreg_lowpart_p, i64 1}
!90 = !{ptr @set_reg_attrs_for_decl_rtl, ptr @get_reg_attrs, i64 1087326}
!91 = !{ptr @set_decl_rtl, ptr @set_reg_attrs_for_decl_rtl, i64 596096}
!92 = !{ptr @set_decl_incoming_rtl, ptr @set_reg_attrs_for_decl_rtl, i64 13779}
!93 = !{ptr @mark_user_reg, ptr @fancy_abort, i64 1}
!94 = !{ptr @gen_lowpart_common, ptr @mode_for_size, i64 330776}
!95 = !{ptr @gen_lowpart_common, ptr @fancy_abort, i64 2}
!96 = !{ptr @gen_lowpart_common, ptr @simplify_gen_subreg, i64 495419}
!97 = !{ptr @subreg_highpart_offset, ptr @fancy_abort, i64 1}
!98 = !{ptr @operand_subword, ptr @fancy_abort, i64 1}
!99 = !{ptr @operand_subword, ptr @adjust_address_1, i64 34}
!100 = !{ptr @operand_subword, ptr @replace_equiv_address, i64 33}
!101 = !{ptr @operand_subword, ptr @strict_memory_address_addr_space_p, i64 1}
!102 = !{ptr @operand_subword, ptr @simplify_gen_subreg, i64 221}
!103 = !{ptr @adjust_address_1, ptr @memory_address_addr_space_p, i64 8350}
!104 = !{ptr @adjust_address_1, ptr @copy_rtx, i64 449749}
!105 = !{ptr @adjust_address_1, ptr @get_mode_alignment, i64 1}
!106 = !{ptr @adjust_address_1, ptr @plus_constant, i64 449249}
!107 = !{ptr @adjust_address_1, ptr @change_address_1, i64 449499}
!108 = !{ptr @adjust_address_1, ptr @gen_rtx_CONST_INT, i64 725500}
!109 = !{ptr @adjust_address_1, ptr @get_mem_attrs, i64 449499}
!110 = !{ptr @replace_equiv_address, ptr @update_temp_slot_address, i64 197757}
!111 = !{ptr @replace_equiv_address, ptr @change_address_1, i64 197757}
!112 = !{ptr @operand_subword_force, ptr @operand_subword, i64 194}
!113 = !{ptr @mem_expr_equal_p, ptr @operand_equal_p, i64 2703}
!114 = !{ptr @set_mem_attributes_minus_bitpos, ptr @gen_rtx_CONST_INT, i64 1148326}
!115 = !{ptr @set_mem_attributes_minus_bitpos, ptr @fancy_abort, i64 1}
!116 = !{ptr @set_mem_attributes_minus_bitpos, ptr @get_alias_set, i64 775856}
!117 = !{ptr @set_mem_attributes_minus_bitpos, ptr @integer_zerop, i64 44899}
!118 = !{ptr @set_mem_attributes_minus_bitpos, ptr @host_integerp, i64 836181}
!119 = !{ptr @set_mem_attributes_minus_bitpos, ptr @tree_low_cst, i64 822546}
!120 = !{ptr @set_mem_attributes_minus_bitpos, ptr @get_base_address, i64 431213}
!121 = !{ptr @set_mem_attributes_minus_bitpos, ptr @component_uses_parent_alias_set, i64 431213}
!122 = !{ptr @set_mem_attributes_minus_bitpos, ptr @ix86_constant_alignment, i64 11668}
!123 = !{ptr @set_mem_attributes_minus_bitpos, ptr @array_ref_low_bound, i64 44898}
!124 = !{ptr @set_mem_attributes_minus_bitpos, ptr @array_ref_element_size, i64 44898}
!125 = !{ptr @set_mem_attributes_minus_bitpos, ptr @fold_build2_stat_loc, i64 1}
!126 = !{ptr @set_mem_attributes_minus_bitpos, ptr @fold_convert_loc, i64 44898}
!127 = !{ptr @set_mem_attributes_minus_bitpos, ptr @size_binop_loc, i64 89796}
!128 = !{ptr @set_mem_attributes_minus_bitpos, ptr @get_object_alignment, i64 200506}
!129 = !{ptr @set_mem_attributes_minus_bitpos, ptr @plus_constant, i64 69867}
!130 = !{ptr @set_mem_attributes_minus_bitpos, ptr @get_mem_attrs, i64 775856}
!131 = !{ptr @get_mem_attrs, ptr @htab_find_slot, i64 1890048}
!132 = !{ptr @get_mem_attrs, ptr @ggc_alloc_stat, i64 136880}
!133 = !{ptr @set_mem_attributes, ptr @set_mem_attributes_minus_bitpos, i64 729752}
!134 = !{ptr @set_mem_addr_space, ptr @gen_rtx_CONST_INT, i64 86}
!135 = !{ptr @set_mem_addr_space, ptr @get_mem_attrs, i64 196920}
!136 = !{ptr @set_mem_align, ptr @gen_rtx_CONST_INT, i64 60907}
!137 = !{ptr @set_mem_align, ptr @get_mem_attrs, i64 558008}
!138 = !{ptr @set_mem_expr, ptr @get_mem_attrs, i64 22362}
!139 = !{ptr @set_mem_offset, ptr @get_mem_attrs, i64 11212}
!140 = !{ptr @set_mem_size, ptr @get_mem_attrs, i64 12544}
!141 = !{ptr @change_address_1, ptr @fancy_abort, i64 2}
!142 = !{ptr @change_address_1, ptr @memory_address_addr_space_p, i64 13757}
!143 = !{ptr @change_address_1, ptr @memory_address_addr_space, i64 419937}
!144 = !{ptr @change_address_1, ptr @rtx_equal_p, i64 2186758}
!145 = !{ptr @change_address_1, ptr @gen_rtx_MEM, i64 2186757}
!146 = !{ptr @adjust_automodify_address_1, ptr @change_address_1, i64 500}
!147 = !{ptr @adjust_automodify_address_1, ptr @adjust_address_1, i64 500}
!148 = !{ptr @offset_address, ptr @simplify_gen_binary, i64 13167}
!149 = !{ptr @offset_address, ptr @memory_address_addr_space_p, i64 13166}
!150 = !{ptr @offset_address, ptr @force_reg, i64 1}
!151 = !{ptr @offset_address, ptr @update_temp_slot_address, i64 13166}
!152 = !{ptr @offset_address, ptr @change_address_1, i64 13166}
!153 = !{ptr @offset_address, ptr @get_mem_attrs, i64 13165}
!154 = !{ptr @replace_equiv_address_nv, ptr @change_address_1, i64 8326166}
!155 = !{ptr @get_spill_slot_decl, ptr @get_identifier, i64 1}
!156 = !{ptr @get_spill_slot_decl, ptr @build_decl_stat, i64 1}
!157 = !{ptr @get_spill_slot_decl, ptr @gen_rtx_MEM, i64 1}
!158 = !{ptr @get_spill_slot_decl, ptr @new_alias_set, i64 1}
!159 = !{ptr @get_spill_slot_decl, ptr @get_mem_attrs, i64 1}
!160 = !{ptr @get_spill_slot_decl, ptr @set_decl_rtl, i64 1}
!161 = !{ptr @set_mem_attrs_for_spill, ptr @get_spill_slot_decl, i64 24934}
!162 = !{ptr @set_mem_attrs_for_spill, ptr @make_decl_rtl, i64 1}
!163 = !{ptr @set_mem_attrs_for_spill, ptr @gen_rtx_CONST_INT, i64 9}
!164 = !{ptr @set_mem_attrs_for_spill, ptr @get_mem_attrs, i64 24934}
!165 = !{ptr @gen_label_rtx, ptr @gen_rtx_fmt_iuuB00is_stat, i64 228697}
!166 = !{ptr @unshare_all_rtl_again, ptr @reset_used_flags, i64 2298464}
!167 = !{ptr @unshare_all_rtl_again, ptr @set_used_decls, i64 6652}
!168 = !{ptr @unshare_all_rtl_again, ptr @make_decl_rtl, i64 1}
!169 = !{ptr @unshare_all_rtl_again, ptr @set_used_flags, i64 13768}
!170 = !{ptr @unshare_all_rtl_again, ptr @unshare_all_rtl_1, i64 6652}
!171 = !{ptr @reset_used_flags, ptr @reset_used_flags, i64 5934531}
!172 = !{ptr @set_used_decls, ptr @set_used_flags, i64 36497}
!173 = !{ptr @set_used_decls, ptr @set_used_decls, i64 44756}
!174 = !{ptr @set_used_flags, ptr @set_used_flags, i64 55011}
!175 = !{ptr @unshare_all_rtl_1, ptr @unshare_all_rtl_in_chain, i64 13304}
!176 = !{ptr @unshare_all_rtl_1, ptr @copy_rtx_if_shared, i64 13304}
!177 = !{ptr @unshare_all_rtl_in_chain, ptr @copy_rtx_if_shared, i64 4892934}
!178 = !{ptr @copy_rtx_if_shared, ptr @copy_rtx_if_shared_1, i64 5198449}
!179 = !{ptr @unshare_all_rtl, ptr @get_insns, i64 6652}
!180 = !{ptr @unshare_all_rtl, ptr @unshare_all_rtl_1, i64 6652}
!181 = !{ptr @copy_rtx_if_shared_1, ptr @rhs_regno, i64 208763}
!182 = !{ptr @copy_rtx_if_shared_1, ptr @shared_const_p, i64 51316}
!183 = !{ptr @copy_rtx_if_shared_1, ptr @shallow_copy_rtx_stat, i64 261153}
!184 = !{ptr @copy_rtx_if_shared_1, ptr @copy_rtx_if_shared_1, i64 6979883}
!185 = !{ptr @copy_rtx_if_shared_1, ptr @gen_rtvec_v, i64 1}
!186 = !{ptr @set_first_insn, ptr @fancy_abort, i64 1}
!187 = !{ptr @set_last_insn, ptr @fancy_abort, i64 1}
!188 = !{ptr @last_call_insn, ptr @get_last_insn, i64 92863}
!189 = !{ptr @next_active_insn, ptr @active_insn_p, i64 6066862}
!190 = !{ptr @prev_active_insn, ptr @active_insn_p, i64 8715}
!191 = !{ptr @try_split, ptr @any_condjump_p, i64 3410054}
!192 = !{ptr @try_split, ptr @find_reg_note, i64 464845}
!193 = !{ptr @try_split, ptr @split_insns, i64 3407910}
!194 = !{ptr @try_split, ptr @rtx_equal_p, i64 45557}
!195 = !{ptr @try_split, ptr @unshare_all_rtl_in_chain, i64 38751}
!196 = !{ptr @try_split, ptr @mark_jump_label, i64 2145}
!197 = !{ptr @try_split, ptr @fancy_abort, i64 1}
!198 = !{ptr @try_split, ptr @gen_rtx_CONST_INT, i64 2085}
!199 = !{ptr @try_split, ptr @add_reg_note, i64 2133}
!200 = !{ptr @try_split, ptr @copy_reg_eh_region_note_backward, i64 1}
!201 = !{ptr @try_split, ptr @mark_label_nuses, i64 43410}
!202 = !{ptr @try_split, ptr @emit_insn_after_setloc, i64 38751}
!203 = !{ptr @try_split, ptr @delete_insn, i64 38751}
!204 = !{ptr @try_split, ptr @emit_barrier_after, i64 1}
!205 = !{ptr @try_split, ptr @try_split, i64 45554}
!206 = !{ptr @mark_label_nuses, ptr @mark_label_nuses, i64 248919}
!207 = !{ptr @emit_insn_after_setloc, ptr @emit_insn_after_noloc, i64 4576204}
!208 = !{ptr @emit_insn_after_setloc, ptr @active_insn_p, i64 142190}
!209 = !{ptr @emit_barrier_after, ptr @rtx_alloc_stat, i64 212740}
!210 = !{ptr @emit_barrier_after, ptr @add_insn_after, i64 212740}
!211 = !{ptr @make_insn_raw, ptr @rtx_alloc_stat, i64 1435035}
!212 = !{ptr @make_insn_raw, ptr @curr_insn_locator, i64 1435035}
!213 = !{ptr @make_jump_insn_raw, ptr @rtx_alloc_stat, i64 423303}
!214 = !{ptr @make_jump_insn_raw, ptr @curr_insn_locator, i64 423303}
!215 = !{ptr @add_insn_after, ptr @fancy_abort, i64 2}
!216 = !{ptr @add_insn_after, ptr @df_insn_rescan, i64 204590}
!217 = !{ptr @add_insn_before, ptr @fancy_abort, i64 3}
!218 = !{ptr @add_insn_before, ptr @df_insn_rescan, i64 158700}
!219 = !{ptr @set_insn_deleted, ptr @df_insn_delete, i64 105338}
!220 = !{ptr @remove_insn, ptr @df_insn_delete, i64 897521}
!221 = !{ptr @remove_insn, ptr @fancy_abort, i64 2}
!222 = !{ptr @remove_insn, ptr @df_set_bb_dirty, i64 555626}
!223 = !{ptr @add_function_usage_to, ptr @fancy_abort, i64 2}
!224 = !{ptr @reorder_insns, ptr @reorder_insns_nobb, i64 35024}
!225 = !{ptr @reorder_insns, ptr @df_set_bb_dirty, i64 64386}
!226 = !{ptr @reorder_insns, ptr @df_insn_change_bb, i64 32875}
!227 = !{ptr @emit_insn_before_noloc, ptr @fancy_abort, i64 1}
!228 = !{ptr @emit_insn_before_noloc, ptr @add_insn_before, i64 171444}
!229 = !{ptr @emit_insn_before_noloc, ptr @make_insn_raw, i64 60435}
!230 = !{ptr @emit_jump_insn_before_noloc, ptr @fancy_abort, i64 1}
!231 = !{ptr @emit_jump_insn_before_noloc, ptr @add_insn_before, i64 192}
!232 = !{ptr @emit_jump_insn_before_noloc, ptr @make_jump_insn_raw, i64 21}
!233 = !{ptr @make_call_insn_raw, ptr @rtx_alloc_stat, i64 92955}
!234 = !{ptr @make_call_insn_raw, ptr @curr_insn_locator, i64 92955}
!235 = !{ptr @emit_label_before, ptr @add_insn_before, i64 112882}
!236 = !{ptr @emit_note_before, ptr @rtx_alloc_stat, i64 157395}
!237 = !{ptr @emit_note_before, ptr @add_insn_before, i64 157395}
!238 = !{ptr @emit_insn_after_noloc, ptr @fancy_abort, i64 1}
!239 = !{ptr @emit_insn_after_noloc, ptr @emit_insn_after_1, i64 192823}
!240 = !{ptr @emit_insn_after_noloc, ptr @make_insn_raw, i64 21825}
!241 = !{ptr @emit_insn_after_noloc, ptr @add_insn_after, i64 21825}
!242 = !{ptr @emit_insn_after_1, ptr @df_set_bb_dirty, i64 188799}
!243 = !{ptr @emit_insn_after_1, ptr @df_insn_rescan, i64 337011}
!244 = !{ptr @emit_jump_insn_after_noloc, ptr @fancy_abort, i64 1}
!245 = !{ptr @emit_jump_insn_after_noloc, ptr @emit_insn_after_1, i64 7}
!246 = !{ptr @emit_jump_insn_after_noloc, ptr @make_jump_insn_raw, i64 206188}
!247 = !{ptr @emit_jump_insn_after_noloc, ptr @add_insn_after, i64 206188}
!248 = !{ptr @emit_call_insn_after_noloc, ptr @fancy_abort, i64 1}
!249 = !{ptr @emit_call_insn_after_noloc, ptr @emit_insn_after_1, i64 6}
!250 = !{ptr @emit_call_insn_after_noloc, ptr @make_call_insn_raw, i64 86}
!251 = !{ptr @emit_call_insn_after_noloc, ptr @add_insn_after, i64 86}
!252 = !{ptr @emit_note_after, ptr @rtx_alloc_stat, i64 115235}
!253 = !{ptr @emit_note_after, ptr @add_insn_after, i64 115235}
!254 = !{ptr @emit_insn_after, ptr @emit_insn_after_setloc, i64 4513345}
!255 = !{ptr @emit_insn_after, ptr @emit_insn_after_noloc, i64 19963}
!256 = !{ptr @emit_jump_insn_after_setloc, ptr @emit_jump_insn_after_noloc, i64 206132}
!257 = !{ptr @emit_jump_insn_after_setloc, ptr @active_insn_p, i64 19446}
!258 = !{ptr @emit_jump_insn_after, ptr @emit_jump_insn_after_setloc, i64 5170}
!259 = !{ptr @emit_jump_insn_after, ptr @emit_jump_insn_after_noloc, i64 2}
!260 = !{ptr @emit_call_insn_after_setloc, ptr @emit_call_insn_after_noloc, i64 88}
!261 = !{ptr @emit_call_insn_after_setloc, ptr @active_insn_p, i64 87}
!262 = !{ptr @emit_call_insn_after, ptr @emit_call_insn_after_setloc, i64 89}
!263 = !{ptr @emit_call_insn_after, ptr @emit_call_insn_after_noloc, i64 3}
!264 = !{ptr @emit_insn_before_setloc, ptr @emit_insn_before_noloc, i64 5621641}
!265 = !{ptr @emit_insn_before_setloc, ptr @get_insns, i64 1}
!266 = !{ptr @emit_insn_before_setloc, ptr @active_insn_p, i64 140227}
!267 = !{ptr @emit_insn_before, ptr @emit_insn_before_setloc, i64 5619669}
!268 = !{ptr @emit_insn_before, ptr @emit_insn_before_noloc, i64 124}
!269 = !{ptr @emit_jump_insn_before_setloc, ptr @emit_jump_insn_before_noloc, i64 26}
!270 = !{ptr @emit_jump_insn_before_setloc, ptr @active_insn_p, i64 26}
!271 = !{ptr @emit_jump_insn_before, ptr @emit_jump_insn_before_setloc, i64 26}
!272 = !{ptr @emit_insn, ptr @add_insn, i64 3284296}
!273 = !{ptr @emit_insn, ptr @make_insn_raw, i64 1352769}
!274 = !{ptr @emit_jump_insn, ptr @add_insn, i64 559528}
!275 = !{ptr @emit_jump_insn, ptr @make_jump_insn_raw, i64 217078}
!276 = !{ptr @emit_call_insn, ptr @emit_insn, i64 92866}
!277 = !{ptr @emit_call_insn, ptr @make_call_insn_raw, i64 92860}
!278 = !{ptr @emit_call_insn, ptr @add_insn, i64 92860}
!279 = !{ptr @emit_label, ptr @add_insn, i64 115813}
!280 = !{ptr @emit_barrier, ptr @rtx_alloc_stat, i64 55878}
!281 = !{ptr @emit_barrier, ptr @add_insn, i64 55878}
!282 = !{ptr @emit_note_copy, ptr @rtx_alloc_stat, i64 2491}
!283 = !{ptr @emit_note_copy, ptr @add_insn, i64 2491}
!284 = !{ptr @emit_note, ptr @rtx_alloc_stat, i64 178272}
!285 = !{ptr @emit_note, ptr @add_insn, i64 178272}
!286 = !{ptr @emit_clobber, ptr @emit_clobber, i64 1}
!287 = !{ptr @emit_clobber, ptr @gen_rtx_fmt_e_stat, i64 8041}
!288 = !{ptr @emit_clobber, ptr @emit_insn, i64 8041}
!289 = !{ptr @start_sequence, ptr @ggc_alloc_stat, i64 6}
!290 = !{ptr @emit_use, ptr @emit_use, i64 1}
!291 = !{ptr @emit_use, ptr @gen_rtx_fmt_e_stat, i64 4022}
!292 = !{ptr @emit_use, ptr @emit_insn, i64 4022}
!293 = !{ptr @set_unique_reg_note, ptr @find_reg_note, i64 176727}
!294 = !{ptr @set_unique_reg_note, ptr @multiple_sets, i64 48553}
!295 = !{ptr @set_unique_reg_note, ptr @fancy_abort, i64 1}
!296 = !{ptr @set_unique_reg_note, ptr @df_notes_rescan, i64 175431}
!297 = !{ptr @set_unique_reg_note, ptr @add_reg_note, i64 154582}
!298 = !{ptr @emit, ptr @classify_insn, i64 22064}
!299 = !{ptr @emit, ptr @emit_label, i64 1}
!300 = !{ptr @emit, ptr @emit_insn, i64 22059}
!301 = !{ptr @emit, ptr @emit_jump_insn, i64 1}
!302 = !{ptr @emit, ptr @any_uncondjump_p, i64 1}
!303 = !{ptr @emit, ptr @emit_barrier, i64 1}
!304 = !{ptr @emit, ptr @emit_call_insn, i64 1}
!305 = !{ptr @emit, ptr @emit_debug_insn, i64 1}
!306 = !{ptr @emit, ptr @fancy_abort, i64 1}
!307 = !{ptr @push_to_sequence, ptr @start_sequence, i64 87825}
!308 = !{ptr @push_to_sequence2, ptr @start_sequence, i64 72}
!309 = !{ptr @copy_insn_1, ptr @rhs_regno, i64 7049}
!310 = !{ptr @copy_insn_1, ptr @shared_const_p, i64 534}
!311 = !{ptr @copy_insn_1, ptr @shallow_copy_rtx_stat, i64 467124}
!312 = !{ptr @copy_insn_1, ptr @copy_insn_1, i64 762196}
!313 = !{ptr @copy_insn_1, ptr @rtvec_alloc, i64 13368}
!314 = !{ptr @copy_insn_1, ptr @fancy_abort, i64 2}
!315 = !{ptr @copy_insn, ptr @copy_insn_1, i64 122868}
!316 = !{ptr @init_emit, ptr @xcalloc, i64 6654}
!317 = !{ptr @init_emit, ptr @ggc_alloc_stat, i64 6654}
!318 = !{ptr @init_emit, ptr @init_virtual_regs, i64 6654}
!319 = !{ptr @init_emit_regs, ptr @htab_empty, i64 1}
!320 = !{ptr @init_emit_regs, ptr @init_reg_modes_target, i64 1}
!321 = !{ptr @init_emit_regs, ptr @gen_rtx_fmt__stat, i64 2}
!322 = !{ptr @init_emit_regs, ptr @gen_raw_REG, i64 36}
!323 = !{ptr @init_emit_once, ptr @htab_create_alloc, i64 5}
!324 = !{ptr @init_emit_once, ptr @mode_for_size, i64 1}
!325 = !{ptr @init_emit_once, ptr @gen_rtx_fmt_w_stat, i64 65}
!326 = !{ptr @init_emit_once, ptr @real_from_integer, i64 3}
!327 = !{ptr @init_emit_once, ptr @const_double_from_real_value, i64 12}
!328 = !{ptr @init_emit_once, ptr @gen_rtx_CONST_INT, i64 13}
!329 = !{ptr @init_emit_once, ptr @gen_rtx_fmt_ee_stat, i64 6}
!330 = !{ptr @init_emit_once, ptr @gen_const_vector, i64 40}
!331 = !{ptr @init_emit_once, ptr @const_fixed_from_fixed_value, i64 14}
!332 = !{ptr @init_emit_once, ptr @lshift_double, i64 4}
!333 = !{ptr @const_double_htab_hash, ptr @real_hash, i64 4039}
!334 = !{ptr @const_double_htab_eq, ptr @real_identical, i64 4388}
!335 = !{ptr @const_fixed_htab_hash, ptr @fixed_hash, i64 26}
!336 = !{ptr @const_fixed_htab_eq, ptr @fixed_identical, i64 2}
!337 = !{ptr @mem_attrs_htab_hash, ptr @iterative_hash_expr, i64 2654965}
!338 = !{ptr @mem_attrs_htab_eq, ptr @operand_equal_p, i64 814982}
!339 = !{ptr @gen_const_vector, ptr @fancy_abort, i64 2}
!340 = !{ptr @gen_const_vector, ptr @rtvec_alloc, i64 64}
!341 = !{ptr @gen_const_vector, ptr @gen_rtx_fmt_E_stat, i64 64}
!342 = !{ptr @emit_copy_of_insn_after, ptr @copy_insn, i64 23545}
!343 = !{ptr @emit_copy_of_insn_after, ptr @emit_insn_after, i64 18254}
!344 = !{ptr @emit_copy_of_insn_after, ptr @emit_jump_insn_after, i64 5172}
!345 = !{ptr @emit_copy_of_insn_after, ptr @emit_debug_insn_after, i64 1}
!346 = !{ptr @emit_copy_of_insn_after, ptr @emit_call_insn_after, i64 93}
!347 = !{ptr @emit_copy_of_insn_after, ptr @fancy_abort, i64 1}
!348 = !{ptr @emit_copy_of_insn_after, ptr @mark_jump_label, i64 23521}
!349 = !{ptr @emit_copy_of_insn_after, ptr @copy_insn_1, i64 20884}
!350 = !{ptr @emit_copy_of_insn_after, ptr @add_reg_note, i64 20885}
!351 = !{ptr @gen_hard_reg_clobber, ptr @gen_rtx_REG, i64 4}
!352 = !{ptr @gen_hard_reg_clobber, ptr @gen_rtx_fmt_e_stat, i64 4}
!353 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!354 = !{!"function_entry_count", i64 2082189}
!355 = !{!356, !356, i64 0}
!356 = !{!"omnipotent char", !357, i64 0}
!357 = !{!"Simple C/C++ TBAA"}
!358 = !{!"function_entry_count", i64 12957981}
!359 = !{!360, !360, i64 0}
!360 = !{!"long", !356, i64 0}
!361 = !{!"branch_weights", i32 -1815513223, i32 1762293496}
!362 = !{!363, !363, i64 0}
!363 = !{!"any pointer", !356, i64 0}
!364 = !{!"branch_weights", i32 9095, i32 5374481}
!365 = !{!"function_entry_count", i64 5872737}
!366 = !{!"function_entry_count", i64 3994}
!367 = !{i64 0, i64 4, !368, i64 0, i64 4, !368, i64 0, i64 4, !368, i64 0, i64 4, !368, i64 0, i64 4, !368, i64 0, i64 4, !368, i64 8, i64 24, !355}
!368 = !{!369, !369, i64 0}
!369 = !{!"int", !356, i64 0}
!370 = !{!"emit-rtl.c:lookup_const_double"}
!371 = !{!"branch_weights", i32 60, i32 3936}
!372 = !{!"function_entry_count", i64 26}
!373 = !{i64 0, i64 8, !359, i64 8, i64 8, !359, i64 16, i64 4, !368}
!374 = !{!"emit-rtl.c:lookup_const_fixed"}
!375 = !{!"branch_weights", i32 27, i32 1}
!376 = !{!"function_entry_count", i64 536131}
!377 = !{!"branch_weights", i32 1, i32 536132}
!378 = !{!"branch_weights", i32 1, i32 4289056, i32 4, i32 2, i32 1}
!379 = !{!"branch_weights", i32 536132, i32 1}
!380 = !{!"function_entry_count", i64 1186578}
!381 = !{!"branch_weights", i32 -1290450264, i32 -616971684}
!382 = !{!"branch_weights", i32 -666508306, i32 79142804, i32 96033031, i32 79100937}
!383 = !{!"branch_weights", i32 13312, i32 1}
!384 = !{!385, !356, i64 477}
!385 = !{!"rtl_data", !386, i64 0, !387, i64 40, !388, i64 96, !389, i64 112, !391, i64 208, !392, i64 248, !369, i64 312, !363, i64 320, !363, i64 328, !363, i64 336, !363, i64 344, !363, i64 352, !363, i64 360, !363, i64 368, !363, i64 376, !363, i64 384, !363, i64 392, !360, i64 400, !363, i64 408, !363, i64 416, !363, i64 424, !369, i64 432, !369, i64 436, !369, i64 440, !369, i64 444, !369, i64 448, !369, i64 452, !363, i64 456, !356, i64 464, !356, i64 465, !356, i64 466, !356, i64 467, !356, i64 468, !356, i64 469, !356, i64 470, !356, i64 471, !356, i64 472, !356, i64 473, !356, i64 474, !356, i64 475, !356, i64 476, !356, i64 477, !356, i64 478, !356, i64 479, !356, i64 480, !356, i64 481, !356, i64 482, !356, i64 483, !356, i64 484, !356, i64 485}
!386 = !{!"expr_status", !369, i64 0, !369, i64 4, !369, i64 8, !363, i64 16, !363, i64 24, !363, i64 32}
!387 = !{!"emit_status", !369, i64 0, !369, i64 4, !363, i64 8, !363, i64 16, !363, i64 24, !369, i64 32, !369, i64 36, !369, i64 40, !369, i64 44, !363, i64 48}
!388 = !{!"varasm_status", !363, i64 0, !369, i64 8}
!389 = !{!"incoming_args", !369, i64 0, !369, i64 4, !369, i64 8, !363, i64 16, !390, i64 24, !363, i64 88}
!390 = !{!"ix86_args", !369, i64 0, !369, i64 4, !369, i64 8, !369, i64 12, !369, i64 16, !369, i64 20, !369, i64 24, !369, i64 28, !369, i64 32, !369, i64 36, !369, i64 40, !369, i64 44, !369, i64 48, !369, i64 52, !369, i64 56, !369, i64 60}
!391 = !{!"function_subsections", !363, i64 0, !363, i64 8, !363, i64 16, !363, i64 24, !363, i64 32}
!392 = !{!"rtl_eh", !363, i64 0, !363, i64 8, !363, i64 16, !363, i64 24, !363, i64 32, !363, i64 40, !356, i64 48}
!393 = !{!"branch_weights", i32 46019898, i32 2848}
!394 = !{!"branch_weights", i32 610317, i32 1}
!395 = !{!"branch_weights", i32 540122, i32 610318, i32 70196}
!396 = !{!"branch_weights", i32 70196, i32 540122}
!397 = !{!"function_entry_count", i64 1752719}
!398 = !{!"emit-rtl.c:rhs_regno"}
!399 = !{!"function_entry_count", i64 3249145}
!400 = !{!"function_entry_count", i64 876}
!401 = !{!"function_entry_count", i64 0}
!402 = !{!"function_entry_count", i64 420845}
!403 = !{!"branch_weights", i32 2006, i32 418841}
!404 = !{!405, !363, i64 0}
!405 = !{!"mem_attrs", !363, i64 0, !363, i64 8, !363, i64 16, !369, i64 24, !369, i64 28, !356, i64 32}
!406 = !{!405, !363, i64 8}
!407 = !{!405, !363, i64 16}
!408 = !{!"branch_weights", i32 418847, i32 2000}
!409 = !{!"branch_weights", i32 0, i32 -2147483648}
!410 = !{!405, !369, i64 28}
!411 = !{!405, !356, i64 32}
!412 = !{!"function_entry_count", i64 496092}
!413 = !{!"branch_weights", i32 -449525661, i32 15502}
!414 = !{!"branch_weights", i32 352779, i32 143315}
!415 = !{!"branch_weights", i32 1, i32 143315}
!416 = !{!"branch_weights", i32 122438, i32 -2101386460}
!417 = !{!"branch_weights", i32 153622, i32 -625354888}
!418 = !{!"branch_weights", i32 -1225544231, i32 21416, i32 21416, i32 21416, i32 21417}
!419 = !{!"branch_weights", i32 407818, i32 88276}
!420 = !{!"branch_weights", i32 1, i32 88276}
!421 = !{!"branch_weights", i32 40540, i32 47737}
!422 = !{!"branch_weights", i32 75, i32 40466}
!423 = !{!"branch_weights", i32 426886118, i32 -475962665}
!424 = !{!"branch_weights", i32 75, i32 1}
!425 = !{!"function_entry_count", i64 3045575}
!426 = !{!"function_entry_count", i64 331419}
!427 = !{!"branch_weights", i32 1, i32 331420}
!428 = !{!"function_entry_count", i64 365}
!429 = !{!"function_entry_count", i64 309953}
!430 = !{!"branch_weights", i32 1, i32 309954}
!431 = !{!"branch_weights", i32 309953, i32 1}
!432 = !{!"branch_weights", i32 309953, i32 314443}
!433 = distinct !{!433, !434}
!434 = !{!"llvm.loop.mustprogress"}
!435 = !{!"function_entry_count", i64 853}
!436 = !{!"branch_weights", i32 1, i32 854}
!437 = !{!"branch_weights", i32 853, i32 1}
!438 = !{!"branch_weights", i32 853, i32 54486}
!439 = distinct !{!439, !434}
!440 = !{!"function_entry_count", i64 1506464}
!441 = !{!"function_entry_count", i64 968964}
!442 = !{!"branch_weights", i32 7570, i32 -627415846}
!443 = !{!385, !369, i64 452}
!444 = !{!"branch_weights", i32 1688, i32 967278}
!445 = !{!385, !356, i64 482}
!446 = !{!"branch_weights", i32 1688, i32 1}
!447 = !{!"branch_weights", i32 51832, i32 917134}
!448 = !{!"branch_weights", i32 7164, i32 -1009284586}
!449 = !{!385, !369, i64 40}
!450 = !{!385, !369, i64 84}
!451 = !{!"branch_weights", i32 2763, i32 966203}
!452 = !{!385, !363, i64 88}
!453 = !{!"function_entry_count", i64 27025}
!454 = !{!"function_entry_count", i64 61429}
!455 = !{!"emit-rtl.c:update_reg_offset"}
!456 = !{!"branch_weights", i32 43646, i32 17785}
!457 = !{!458, !363, i64 0}
!458 = !{!"reg_attrs", !363, i64 0, !360, i64 8}
!459 = !{!458, !360, i64 8}
!460 = !{!"function_entry_count", i64 1212963}
!461 = !{!"emit-rtl.c:get_reg_attrs"}
!462 = !{!"branch_weights", i32 119726803, i32 -1063878288}
!463 = !{!"branch_weights", i32 511015, i32 658610}
!464 = !{!"function_entry_count", i64 302}
!465 = !{!"function_entry_count", i64 27523}
!466 = !{!"function_entry_count", i64 1095079}
!467 = !{!"branch_weights", i32 703456, i32 391625}
!468 = !{!"branch_weights", i32 -2120172179, i32 998573802, i32 201247845}
!469 = !{!"branch_weights", i32 1, i32 115885}
!470 = !{!"branch_weights", i32 36281, i32 64218}
!471 = !{!"branch_weights", i32 64218, i32 1}
!472 = !{!"branch_weights", i32 63014, i32 52872}
!473 = !{!"branch_weights", i32 16776, i32 6580}
!474 = !{!"branch_weights", i32 20244, i32 3112}
!475 = !{!"function_entry_count", i64 478625}
!476 = !{!"branch_weights", i32 342534, i32 136093}
!477 = !{!"branch_weights", i32 49069, i32 293466}
!478 = !{!"branch_weights", i32 49661, i32 86433}
!479 = !{!"branch_weights", i32 18208, i32 68226}
!480 = !{!"function_entry_count", i64 6175}
!481 = !{!482, !369, i64 0}
!482 = !{!"rtvec_def", !369, i64 0, !356, i64 8}
!483 = distinct !{!483, !434}
!484 = !{!"function_entry_count", i64 1214799}
!485 = !{!"branch_weights", i32 1, i32 1214800}
!486 = !{i32 0, i32 2}
!487 = !{!"branch_weights", i32 1087318, i32 127483}
!488 = distinct !{!488, !434}
!489 = !{!"function_entry_count", i64 535528}
!490 = !{!"branch_weights", i32 535529, i32 1}
!491 = !{!"branch_weights", i32 1, i32 535529}
!492 = !{!"function_entry_count", i64 1040872}
!493 = !{!"branch_weights", i32 444777, i32 596097}
!494 = !{!"function_entry_count", i64 13781}
!495 = !{!"branch_weights", i32 27565, i32 189943524}
!496 = !{!"function_entry_count", i64 72863}
!497 = !{!"branch_weights", i32 36432, i32 36432, i32 -1640386048}
!498 = !{!"function_entry_count", i64 11585352}
!499 = !{!"function_entry_count", i64 20156}
!500 = !{!"function_entry_count", i64 13304}
!501 = !{!385, !369, i64 44}
!502 = !{!"function_entry_count", i64 793144}
!503 = !{!"branch_weights", i32 1709243649, i32 -1905319168}
!504 = !{!"branch_weights", i32 1, i32 462402}
!505 = !{!"branch_weights", i32 -1837627488, i32 6196}
!506 = !{!"branch_weights", i32 90791, i32 702355}
!507 = !{!"branch_weights", i32 1, i32 702355}
!508 = !{!"branch_weights", i32 10974, i32 -441041156}
!509 = !{!"branch_weights", i32 3016360, i32 -446054842}
!510 = !{!"branch_weights", i32 2145537309, i32 1946339}
!511 = !{!"branch_weights", i32 471, i32 79}
!512 = !{!"branch_weights", i32 79, i32 1}
!513 = !{!"branch_weights", i32 -1839768411, i32 96586558, i32 1868324715, i32 11890, i32 11890, i32 11892, i32 -368207105}
!514 = !{i32 0, i32 256}
!515 = !{!"function_entry_count", i64 4}
!516 = !{!"branch_weights", i32 1, i32 5}
!517 = !{!"function_entry_count", i64 257}
!518 = !{!"branch_weights", i32 1, i32 258}
!519 = !{!"branch_weights", i32 -2147483648, i32 0}
!520 = !{!"branch_weights", i32 108206540, i32 2039277108}
!521 = !{!"branch_weights", i32 1, i32 246}
!522 = !{!"branch_weights", i32 35, i32 224}
!523 = !{!"branch_weights", i32 1, i32 35}
!524 = !{!"branch_weights", i32 35, i32 1}
!525 = !{!"function_entry_count", i64 530462}
!526 = !{!"branch_weights", i32 12357, i32 518107}
!527 = !{!528, !363, i64 1184}
!528 = !{!"gcc_target", !529, i64 0, !531, i64 368, !532, i64 664, !369, i64 744, !363, i64 752, !363, i64 760, !363, i64 768, !363, i64 776, !363, i64 784, !363, i64 792, !363, i64 800, !363, i64 808, !363, i64 816, !363, i64 824, !363, i64 832, !363, i64 840, !363, i64 848, !363, i64 856, !363, i64 864, !363, i64 872, !363, i64 880, !363, i64 888, !363, i64 896, !363, i64 904, !363, i64 912, !363, i64 920, !363, i64 928, !363, i64 936, !363, i64 944, !363, i64 952, !363, i64 960, !363, i64 968, !363, i64 976, !363, i64 984, !363, i64 992, !363, i64 1000, !363, i64 1008, !363, i64 1016, !363, i64 1024, !363, i64 1032, !363, i64 1040, !363, i64 1048, !363, i64 1056, !360, i64 1064, !360, i64 1072, !363, i64 1080, !363, i64 1088, !363, i64 1096, !363, i64 1104, !363, i64 1112, !363, i64 1120, !363, i64 1128, !363, i64 1136, !363, i64 1144, !363, i64 1152, !363, i64 1160, !363, i64 1168, !533, i64 1176, !363, i64 1232, !363, i64 1240, !363, i64 1248, !363, i64 1256, !363, i64 1264, !363, i64 1272, !363, i64 1280, !363, i64 1288, !363, i64 1296, !363, i64 1304, !363, i64 1312, !363, i64 1320, !363, i64 1328, !363, i64 1336, !363, i64 1344, !363, i64 1352, !363, i64 1360, !363, i64 1368, !363, i64 1376, !363, i64 1384, !363, i64 1392, !363, i64 1400, !363, i64 1408, !363, i64 1416, !363, i64 1424, !363, i64 1432, !363, i64 1440, !363, i64 1448, !363, i64 1456, !360, i64 1464, !534, i64 1472, !363, i64 1664, !363, i64 1672, !363, i64 1680, !363, i64 1688, !363, i64 1696, !363, i64 1704, !363, i64 1712, !363, i64 1720, !363, i64 1728, !363, i64 1736, !363, i64 1744, !363, i64 1752, !363, i64 1760, !363, i64 1768, !363, i64 1776, !535, i64 1784, !536, i64 1792, !537, i64 1896, !538, i64 1968, !363, i64 2016, !356, i64 2024, !356, i64 2025, !356, i64 2026, !356, i64 2027, !356, i64 2028, !356, i64 2029, !356, i64 2030, !356, i64 2031, !356, i64 2032, !356, i64 2033, !356, i64 2034, !356, i64 2035}
!529 = !{!"asm_out", !363, i64 0, !363, i64 8, !363, i64 16, !530, i64 24, !530, i64 56, !363, i64 88, !363, i64 96, !363, i64 104, !363, i64 112, !363, i64 120, !363, i64 128, !363, i64 136, !363, i64 144, !363, i64 152, !363, i64 160, !363, i64 168, !363, i64 176, !363, i64 184, !363, i64 192, !363, i64 200, !363, i64 208, !363, i64 216, !363, i64 224, !363, i64 232, !363, i64 240, !363, i64 248, !363, i64 256, !363, i64 264, !363, i64 272, !363, i64 280, !363, i64 288, !363, i64 296, !363, i64 304, !363, i64 312, !363, i64 320, !363, i64 328, !363, i64 336, !363, i64 344, !363, i64 352, !363, i64 360}
!530 = !{!"asm_int_op", !363, i64 0, !363, i64 8, !363, i64 16, !363, i64 24}
!531 = !{!"sched", !363, i64 0, !363, i64 8, !363, i64 16, !363, i64 24, !363, i64 32, !363, i64 40, !363, i64 48, !363, i64 56, !363, i64 64, !363, i64 72, !363, i64 80, !363, i64 88, !363, i64 96, !363, i64 104, !363, i64 112, !363, i64 120, !363, i64 128, !363, i64 136, !363, i64 144, !363, i64 152, !363, i64 160, !363, i64 168, !363, i64 176, !363, i64 184, !363, i64 192, !363, i64 200, !363, i64 208, !363, i64 216, !363, i64 224, !363, i64 232, !363, i64 240, !363, i64 248, !363, i64 256, !363, i64 264, !363, i64 272, !363, i64 280, !363, i64 288}
!532 = !{!"vectorize", !363, i64 0, !363, i64 8, !363, i64 16, !363, i64 24, !363, i64 32, !363, i64 40, !363, i64 48, !363, i64 56, !363, i64 64, !363, i64 72}
!533 = !{!"addr_space", !363, i64 0, !363, i64 8, !363, i64 16, !363, i64 24, !363, i64 32, !363, i64 40, !363, i64 48}
!534 = !{!"calls", !363, i64 0, !363, i64 8, !363, i64 16, !363, i64 24, !363, i64 32, !363, i64 40, !363, i64 48, !363, i64 56, !363, i64 64, !363, i64 72, !363, i64 80, !363, i64 88, !363, i64 96, !363, i64 104, !363, i64 112, !363, i64 120, !363, i64 128, !363, i64 136, !363, i64 144, !363, i64 152, !363, i64 160, !363, i64 168, !363, i64 176, !363, i64 184}
!535 = !{!"c", !363, i64 0}
!536 = !{!"cxx", !363, i64 0, !363, i64 8, !363, i64 16, !363, i64 24, !363, i64 32, !363, i64 40, !363, i64 48, !363, i64 56, !363, i64 64, !363, i64 72, !363, i64 80, !363, i64 88, !363, i64 96}
!537 = !{!"emutls", !363, i64 0, !363, i64 8, !363, i64 16, !363, i64 24, !363, i64 32, !363, i64 40, !363, i64 48, !363, i64 56, !356, i64 64, !356, i64 65}
!538 = !{!"target_option_hooks", !363, i64 0, !363, i64 8, !363, i64 16, !363, i64 24, !363, i64 32, !363, i64 40}
!539 = !{!"branch_weights", i32 -1765518988, i32 455605235}
!540 = !{!"branch_weights", i32 72616, i32 8350}
!541 = !{!"branch_weights", i32 1, i32 8350}
!542 = !{!"branch_weights", i32 449499, i32 1}
!543 = !{!"branch_weights", i32 251, i32 449249}
!544 = !{!"branch_weights", i32 337129, i32 112121}
!545 = !{!"branch_weights", i32 1, i32 112121}
!546 = !{!"branch_weights", i32 1, i32 251}
!547 = !{!"branch_weights", i32 173193, i32 276307}
!548 = !{!"branch_weights", i32 170127, i32 279373}
!549 = !{!"branch_weights", i32 73374, i32 206000}
!550 = !{!"branch_weights", i32 307, i32 449193}
!551 = !{!"branch_weights", i32 307, i32 1}
!552 = !{!"branch_weights", i32 7031517, i32 2140452131}
!553 = !{!"branch_weights", i32 306, i32 1}
!554 = !{!"branch_weights", i32 8765, i32 440735}
!555 = !{!405, !369, i64 24}
!556 = !{!"function_entry_count", i64 197757}
!557 = !{!"function_entry_count", i64 193}
!558 = !{!"branch_weights", i32 1, i32 194}
!559 = !{!"function_entry_count", i64 5609}
!560 = !{!"branch_weights", i32 5, i32 5606}
!561 = !{!"branch_weights", i32 14485157, i32 15523507}
!562 = !{!"branch_weights", i32 2706, i32 2}
!563 = !{!"function_entry_count", i64 775858}
!564 = !{!"branch_weights", i32 569785, i32 206075}
!565 = !{!"branch_weights", i32 332253, i32 443607}
!566 = !{!"branch_weights", i32 2147483647, i32 1}
!567 = !{!"branch_weights", i32 1, i32 775859}
!568 = !{!"branch_weights", i32 344645, i32 431215}
!569 = !{!"branch_weights", i32 83177235, i32 2064306413}
!570 = !{!"branch_weights", i32 1, i32 16702}
!571 = !{!"branch_weights", i32 402850, i32 373010}
!572 = !{!"branch_weights", i32 4, i32 402847}
!573 = !{!"branch_weights", i32 -1733953861, i32 96228835, i32 11274716, i32 21460, i32 7153, i32 7153}
!574 = !{!"branch_weights", i32 23029, i32 2147460619}
!575 = !{!"branch_weights", i32 -1766624374, i32 -1476923529}
!576 = !{!"branch_weights", i32 212341, i32 1}
!577 = !{!"branch_weights", i32 1, i32 212341}
!578 = !{!"branch_weights", i32 431213, i32 3}
!579 = !{!"branch_weights", i32 -364124964, i32 9114, i32 9114, i32 9114, i32 9115}
!580 = !{!"branch_weights", i32 1965421165, i32 1}
!581 = distinct !{!581, !434}
!582 = !{!"branch_weights", i32 342519953, i32 1965421165}
!583 = distinct !{!583, !434}
!584 = !{!"branch_weights", i32 26979, i32 404237}
!585 = !{!"branch_weights", i32 11473, i32 15507}
!586 = !{!"branch_weights", i32 1, i32 431215}
!587 = !{!"branch_weights", i32 -1217480402, i32 48128380}
!588 = !{!"branch_weights", i32 7, i32 6634}
!589 = !{!"branch_weights", i32 7, i32 1}
!590 = !{!"branch_weights", i32 1, i32 6634}
!591 = !{!"branch_weights", i32 6634, i32 1}
!592 = !{!"branch_weights", i32 398448, i32 32768}
!593 = !{!"branch_weights", i32 -1685815400, i32 108175461, i32 75571083}
!594 = !{!"branch_weights", i32 168547, i32 234301}
!595 = !{!"branch_weights", i32 165327, i32 3221}
!596 = !{!"branch_weights", i32 43792, i32 193730}
!597 = !{!"branch_weights", i32 1, i32 44898}
!598 = !{!"branch_weights", i32 1107, i32 43792}
!599 = distinct !{!599, !434}
!600 = !{!"branch_weights", i32 21244, i32 22549}
!601 = !{!"branch_weights", i32 9417, i32 11828}
!602 = !{!"branch_weights", i32 64465200, i32 48217854}
!603 = !{!"branch_weights", i32 22384, i32 166}
!604 = !{!"branch_weights", i32 4218, i32 18167}
!605 = !{!"branch_weights", i32 1, i32 166}
!606 = !{!"branch_weights", i32 1, i32 193730}
!607 = !{!"branch_weights", i32 -642610770, i32 -450955605}
!608 = !{!"branch_weights", i32 1968671301, i32 178812347}
!609 = !{!"branch_weights", i32 1, i32 34934}
!610 = !{!"branch_weights", i32 1042552379, i32 -1786796386}
!611 = !{!"branch_weights", i32 213193115, i32 -2004625966, i32 594658642, i32 13598, i32 13598}
!612 = !{!"function_entry_count", i64 2485348}
!613 = !{!"emit-rtl.c:get_mem_attrs"}
!614 = !{!"branch_weights", i32 1469967459, i32 -28667945}
!615 = !{!"branch_weights", i32 7225, i32 629671}
!616 = !{!"branch_weights", i32 40717, i32 588955}
!617 = !{!"branch_weights", i32 -1886187521, i32 3584000}
!618 = !{!"branch_weights", i32 -1, i32 1}
!619 = !{!"branch_weights", i32 178045, i32 2280406}
!620 = !{!"function_entry_count", i64 729752}
!621 = !{!"function_entry_count", i64 196920}
!622 = !{!"branch_weights", i32 4171, i32 192751}
!623 = !{!"branch_weights", i32 192877, i32 4045}
!624 = !{!"function_entry_count", i64 558008}
!625 = !{!"branch_weights", i32 187901, i32 370109}
!626 = !{!"branch_weights", i32 377133, i32 180877}
!627 = !{!"function_entry_count", i64 22362}
!628 = !{!"branch_weights", i32 1, i32 22363}
!629 = !{!"branch_weights", i32 22363, i32 1}
!630 = !{!"branch_weights", i32 2000509930, i32 146973718}
!631 = !{!"function_entry_count", i64 11212}
!632 = !{!"branch_weights", i32 7, i32 11207}
!633 = !{!"branch_weights", i32 11207, i32 7}
!634 = !{!"function_entry_count", i64 12544}
!635 = !{!"branch_weights", i32 21, i32 12525}
!636 = !{!"function_entry_count", i64 8987087}
!637 = !{!"emit-rtl.c:change_address_1"}
!638 = !{!"branch_weights", i32 8987088, i32 1}
!639 = !{!"branch_weights", i32 1090364, i32 7896725}
!640 = !{!"branch_weights", i32 8537590, i32 449499}
!641 = !{!"branch_weights", i32 1, i32 8987088}
!642 = !{!"branch_weights", i32 8546660, i32 440429}
!643 = !{!"branch_weights", i32 6800332, i32 1746329}
!644 = !{!"branch_weights", i32 6799841, i32 492}
!645 = !{!"branch_weights", i32 1, i32 492}
!646 = !{!"branch_weights", i32 1722062777, i32 425420871}
!647 = !{!"branch_weights", i32 89479909, i32 -1462242526}
!648 = !{!"branch_weights", i32 1, i32 13264}
!649 = !{!"branch_weights", i32 2020617, i32 166141}
!650 = !{!"branch_weights", i32 1, i32 166141}
!651 = !{!"function_entry_count", i64 500}
!652 = !{!"function_entry_count", i64 13166}
!653 = !{!"branch_weights", i32 1, i32 13167}
!654 = !{!"branch_weights", i32 1855, i32 11313}
!655 = !{!"branch_weights", i32 379, i32 1477}
!656 = !{!"branch_weights", i32 1, i32 379}
!657 = !{!"function_entry_count", i64 8326166}
!658 = !{!"function_entry_count", i64 61348585}
!659 = !{!"branch_weights", i32 2, i32 61348585}
!660 = !{!"branch_weights", i32 1, i32 2}
!661 = !{!"function_entry_count", i64 24934}
!662 = !{!"branch_weights", i32 1, i32 24935}
!663 = !{!"branch_weights", i32 24935, i32 1}
!664 = !{!"branch_weights", i32 464, i32 24472}
!665 = !{!"branch_weights", i32 24472, i32 464}
!666 = !{!"function_entry_count", i64 228697}
!667 = !{!385, !363, i64 48}
!668 = !{!385, !363, i64 56}
!669 = !{!385, !369, i64 72}
!670 = !{!671, !369, i64 8}
!671 = !{!"param_info", !363, i64 0, !369, i64 8, !356, i64 12, !369, i64 16, !369, i64 20, !363, i64 24}
!672 = !{!385, !369, i64 76}
!673 = distinct !{!673, !434}
!674 = distinct !{!674, !434}
!675 = !{!"function_entry_count", i64 6652}
!676 = !{!"branch_weights", i32 1, i32 6652}
!677 = !{!"branch_weights", i32 -488761370, i32 1826951826}
!678 = !{!"branch_weights", i32 6652, i32 1689536}
!679 = distinct !{!679, !434}
!680 = !{!681, !363, i64 48}
!681 = !{!"function", !363, i64 0, !363, i64 8, !363, i64 16, !363, i64 24, !363, i64 32, !363, i64 40, !363, i64 48, !363, i64 56, !363, i64 64, !363, i64 72, !363, i64 80, !363, i64 88, !363, i64 96, !369, i64 104, !369, i64 108, !369, i64 112, !369, i64 116, !369, i64 120, !369, i64 124, !363, i64 128, !369, i64 136, !369, i64 137, !369, i64 138, !369, i64 138, !369, i64 138, !369, i64 138, !369, i64 138, !369, i64 138, !369, i64 138, !369, i64 139, !369, i64 139, !369, i64 139, !369, i64 139, !369, i64 139, !369, i64 139, !369, i64 139}
!682 = !{!"branch_weights", i32 1, i32 13770}
!683 = !{!"branch_weights", i32 6652, i32 7118}
!684 = distinct !{!684, !434}
!685 = !{!385, !363, i64 368}
!686 = !{!"function_entry_count", i64 6968033}
!687 = !{!"branch_weights", i32 1, i32 1385860}
!688 = !{!"branch_weights", i32 4165261, i32 2252844, i32 1, i32 1, i32 1500276, i32 357, i32 1, i32 1, i32 206407, i32 1, i32 402361, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 286418, i32 1}
!689 = !{!"branch_weights", i32 1, i32 933516}
!690 = !{!"branch_weights", i32 1, i32 7359639, i32 88499}
!691 = !{!"branch_weights", i32 88498, i32 1}
!692 = !{!"branch_weights", i32 3231745, i32 4127895}
!693 = !{!"branch_weights", i32 1385860, i32 7428058}
!694 = !{!"branch_weights", i32 143431, i32 88498}
!695 = distinct !{!695, !434}
!696 = !{!"branch_weights", i32 933516, i32 7361294}
!697 = distinct !{!697, !434}
!698 = !{!"function_entry_count", i64 51408}
!699 = !{!"emit-rtl.c:set_used_decls"}
!700 = !{!"branch_weights", i32 8555, i32 42854}
!701 = !{!"branch_weights", i32 1, i32 42854}
!702 = !{!"branch_weights", i32 6356, i32 36499}
!703 = !{!"branch_weights", i32 42854, i32 0}
!704 = distinct !{!704, !434}
!705 = !{!"branch_weights", i32 6652, i32 44757}
!706 = !{!"branch_weights", i32 44757, i32 0}
!707 = distinct !{!707, !434}
!708 = !{!"function_entry_count", i64 95949}
!709 = !{!"branch_weights", i32 139, i32 95812}
!710 = !{!"branch_weights", i32 27523, i32 53331, i32 1, i32 1, i32 13994, i32 1, i32 1, i32 1, i32 967, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!711 = !{!"branch_weights", i32 1, i32 27522}
!712 = !{!"branch_weights", i32 1, i32 41718, i32 25}
!713 = !{!"branch_weights", i32 199, i32 1}
!714 = !{!"branch_weights", i32 193, i32 199}
!715 = distinct !{!715, !434}
!716 = !{!"branch_weights", i32 27522, i32 27470}
!717 = distinct !{!717, !434}
!718 = !{!"emit-rtl.c:unshare_all_rtl_1"}
!719 = !{!"function_entry_count", i64 54028}
!720 = !{!"branch_weights", i32 1, i32 54028}
!721 = !{!"branch_weights", i32 -2060701060, i32 1032634466}
!722 = !{!"branch_weights", i32 54028, i32 3523215}
!723 = distinct !{!723, !434}
!724 = !{!"function_entry_count", i64 5198449}
!725 = !{!"function_entry_count", i64 2688420}
!726 = distinct !{!726, !434}
!727 = distinct !{!727, !434}
!728 = distinct !{!728, !434}
!729 = !{!"emit-rtl.c:verify_rtx_sharing"}
!730 = distinct !{!730, !434}
!731 = distinct !{!731, !434}
!732 = !{!"function_entry_count", i64 11491381}
!733 = !{!"emit-rtl.c:copy_rtx_if_shared_1"}
!734 = !{!"branch_weights", i32 2692947, i32 16168026}
!735 = !{!"branch_weights", i32 7364688, i32 4206704, i32 1, i32 1, i32 2664037, i32 701, i32 1, i32 1, i32 338493, i32 566032, i32 1, i32 766003, i32 1, i32 473, i32 209588, i32 51316, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!736 = !{!"branch_weights", i32 208764, i32 825}
!737 = !{!"branch_weights", i32 204685, i32 4080}
!738 = !{!"branch_weights", i32 1, i32 51316}
!739 = !{!"branch_weights", i32 7108439, i32 261153}
!740 = !{!"branch_weights", i32 1, i32 7369590}
!741 = !{!"branch_weights", i32 1, i32 13132413, i32 209864}
!742 = !{!"branch_weights", i32 7159728, i32 5972686}
!743 = !{!"branch_weights", i32 1, i32 209864}
!744 = !{!"branch_weights", i32 209864, i32 1}
!745 = !{!"branch_weights", i32 2147477252, i32 6396}
!746 = !{!"branch_weights", i32 209864, i32 320248}
!747 = !{!"branch_weights", i32 209863, i32 320248}
!748 = distinct !{!748, !434}
!749 = !{!"branch_weights", i32 7369590, i32 7429186}
!750 = distinct !{!750, !434}
!751 = !{!"function_entry_count", i64 36504}
!752 = !{!"branch_weights", i32 36505, i32 1}
!753 = !{!"function_entry_count", i64 2404899}
!754 = !{!"function_entry_count", i64 35093}
!755 = !{!"branch_weights", i32 35094, i32 1}
!756 = distinct !{!756, !434}
!757 = !{!758, !363, i64 8}
!758 = !{!"sequence_stack", !363, i64 0, !363, i64 8, !363, i64 16}
!759 = distinct !{!759, !434}
!760 = distinct !{!760, !434}
!761 = !{!"function_entry_count", i64 4707552}
!762 = !{!"function_entry_count", i64 19872}
!763 = !{!"function_entry_count", i64 688563}
!764 = !{!"branch_weights", i32 1, i32 1183968}
!765 = !{!"branch_weights", i32 159, i32 1183810}
!766 = !{!"branch_weights", i32 -2003781097, i32 -1111170973}
!767 = distinct !{!767, !434}
!768 = !{!"function_entry_count", i64 147130}
!769 = !{!"branch_weights", i32 1, i32 147384}
!770 = !{!"branch_weights", i32 1435, i32 145950}
!771 = !{!"branch_weights", i32 4655, i32 141296}
!772 = !{!"branch_weights", i32 4402, i32 254}
!773 = distinct !{!773, !434}
!774 = !{!"function_entry_count", i64 2344196}
!775 = !{!"branch_weights", i32 1, i32 2466721}
!776 = !{!"branch_weights", i32 93, i32 2466629}
!777 = !{!"branch_weights", i32 147575678, i32 -1471600355}
!778 = distinct !{!778, !434}
!779 = distinct !{!779, !434}
!780 = distinct !{!780, !434}
!781 = !{!"function_entry_count", i64 21212}
!782 = !{!"branch_weights", i32 1, i32 21213}
!783 = distinct !{!783, !434}
!784 = !{!"function_entry_count", i64 44924}
!785 = !{!"branch_weights", i32 1, i32 55826}
!786 = !{!"branch_weights", i32 -1800227016, i32 605212736}
!787 = !{!"function_entry_count", i64 2876}
!788 = !{!"branch_weights", i32 1, i32 5807}
!789 = !{!"branch_weights", i32 551, i32 5257}
!790 = !{!"branch_weights", i32 -1057215166, i32 -227094469}
!791 = !{!"function_entry_count", i64 92863}
!792 = !{!"branch_weights", i32 1, i32 127}
!793 = !{!"branch_weights", i32 92864, i32 1}
!794 = !{!"branch_weights", i32 127, i32 11886465}
!795 = distinct !{!795, !434}
!796 = !{!"function_entry_count", i64 12039173}
!797 = !{!"branch_weights", i32 1640403622, i32 118634427, i32 435176257, i32 -890091738}
!798 = !{!"branch_weights", i32 3041286, i32 4279887}
!799 = !{!"branch_weights", i32 49912, i32 4229976}
!800 = !{!"function_entry_count", i64 3277350}
!801 = !{!"branch_weights", i32 1, i32 6091534}
!802 = !{!"branch_weights", i32 24668, i32 6066867}
!803 = !{!"branch_weights", i32 2092614443, i32 -1876285504}
!804 = distinct !{!804, !434}
!805 = !{!"function_entry_count", i64 8431}
!806 = !{!"branch_weights", i32 1, i32 8717}
!807 = !{!"branch_weights", i32 2493062, i32 73510462}
!808 = distinct !{!808, !434}
!809 = distinct !{!809, !434}
!810 = distinct !{!810, !434}
!811 = distinct !{!811, !434}
!812 = !{!"function_entry_count", i64 3465944}
!813 = !{!"branch_weights", i32 3407912, i32 58034}
!814 = !{!"branch_weights", i32 2945211, i32 462702}
!815 = !{!"branch_weights", i32 1, i32 462702}
!816 = !{!"branch_weights", i32 3954, i32 3403959}
!817 = !{!"branch_weights", i32 180087, i32 3223873}
!818 = !{!"branch_weights", i32 3369161, i32 38752}
!819 = !{!"branch_weights", i32 -1016737832, i32 35945}
!820 = !{!"branch_weights", i32 45557, i32 1}
!821 = !{!"branch_weights", i32 38752, i32 6806}
!822 = !{!"branch_weights", i32 2145, i32 43413}
!823 = !{!"branch_weights", i32 1, i32 2145}
!824 = !{!"branch_weights", i32 2088, i32 58}
!825 = !{!"branch_weights", i32 2088, i32 1}
!826 = !{!"branch_weights", i32 38752, i32 6805}
!827 = distinct !{!827, !434}
!828 = !{!"branch_weights", i32 1, i32 38752}
!829 = distinct !{!829, !434}
!830 = !{!831, !363, i64 224}
!831 = !{!"gcc_debug_hooks", !363, i64 0, !363, i64 8, !363, i64 16, !363, i64 24, !363, i64 32, !363, i64 40, !363, i64 48, !363, i64 56, !363, i64 64, !363, i64 72, !363, i64 80, !363, i64 88, !363, i64 96, !363, i64 104, !363, i64 112, !363, i64 120, !363, i64 128, !363, i64 136, !363, i64 144, !363, i64 152, !363, i64 160, !363, i64 168, !363, i64 176, !363, i64 184, !363, i64 192, !363, i64 200, !363, i64 208, !363, i64 216, !363, i64 224, !363, i64 232, !363, i64 240, !369, i64 248}
!832 = distinct !{!832, !434}
!833 = !{!"branch_weights", i32 21979, i32 16773}
!834 = !{!"branch_weights", i32 16773, i32 1, i32 1, i32 1, i32 1}
!835 = distinct !{!835, !434}
!836 = distinct !{!836, !434}
!837 = !{!"branch_weights", i32 16773, i32 0}
!838 = distinct !{!838, !434}
!839 = !{!"branch_weights", i32 -1506412447, i32 35945}
!840 = !{!"branch_weights", i32 43413, i32 2145}
!841 = distinct !{!841, !434}
!842 = !{!"branch_weights", i32 38752, i32 1}
!843 = !{!"branch_weights", i32 1, i32 38751}
!844 = !{!"branch_weights", i32 38751, i32 6806}
!845 = distinct !{!845, !434}
!846 = !{!"function_entry_count", i64 292330}
!847 = !{!"emit-rtl.c:mark_label_nuses"}
!848 = !{!"branch_weights", i32 1, i32 292331}
!849 = !{!"branch_weights", i32 1, i32 292330}
!850 = !{!"branch_weights", i32 -2041242120, i32 1394571061, i32 46358489}
!851 = !{!"branch_weights", i32 7732, i32 1}
!852 = !{!"branch_weights", i32 8562, i32 7732}
!853 = distinct !{!853, !434}
!854 = !{!"branch_weights", i32 323968, i32 292330}
!855 = distinct !{!855, !434}
!856 = !{!"function_entry_count", i64 4576204}
!857 = !{!"branch_weights", i32 105827248, i32 -220823631}
!858 = !{!"branch_weights", i32 699, i32 141492}
!859 = !{!"branch_weights", i32 141492, i32 1}
!860 = !{!"branch_weights", i32 115860, i32 26331}
!861 = !{!"function_entry_count", i64 212740}
!862 = !{!"function_entry_count", i64 1435035}
!863 = !{!"function_entry_count", i64 423303}
!864 = !{!"function_entry_count", i64 4289415}
!865 = !{!"branch_weights", i32 1942593, i32 2346824}
!866 = !{!"function_entry_count", i64 556087}
!867 = !{!"branch_weights", i32 1, i32 556088}
!868 = !{!"branch_weights", i32 556088, i32 1}
!869 = !{!"branch_weights", i32 137671, i32 418418}
!870 = !{!"branch_weights", i32 5734, i32 412685}
!871 = !{!"branch_weights", i32 1, i32 5734}
!872 = !{!"branch_weights", i32 137671, i32 1}
!873 = distinct !{!873, !434}
!874 = !{!"branch_weights", i32 212741, i32 343348}
!875 = !{!"branch_weights", i32 130853, i32 212496}
!876 = !{!"branch_weights", i32 -185123278, i32 158773196}
!877 = !{!878, !363, i64 8}
!878 = !{!"rtl_bb_info", !363, i64 0, !363, i64 8, !363, i64 16, !363, i64 24, !369, i64 32}
!879 = !{!"branch_weights", i32 206635, i32 5862}
!880 = !{!"branch_weights", i32 -1659880288, i32 12914, i32 33552358}
!881 = !{!"branch_weights", i32 2593, i32 6}
!882 = !{!"branch_weights", i32 152685, i32 403404}
!883 = !{!"branch_weights", i32 1, i32 152685}
!884 = !{!"function_entry_count", i64 441747}
!885 = !{!"branch_weights", i32 1, i32 441748}
!886 = !{!"branch_weights", i32 441748, i32 1}
!887 = !{!"branch_weights", i32 92, i32 441657}
!888 = !{!"branch_weights", i32 151974, i32 289684}
!889 = !{!"branch_weights", i32 1, i32 151974}
!890 = !{!"branch_weights", i32 92, i32 1}
!891 = !{!758, !363, i64 0}
!892 = distinct !{!892, !434}
!893 = !{!"branch_weights", i32 417851, i32 23898}
!894 = !{!"branch_weights", i32 1, i32 417851}
!895 = !{!"branch_weights", i32 194936580, i32 1952547068}
!896 = !{!"branch_weights", i32 2126246055, i32 -1010935965}
!897 = !{!878, !363, i64 0}
!898 = !{!"branch_weights", i32 1, i32 403817}
!899 = !{!"branch_weights", i32 136384, i32 305365}
!900 = !{!"branch_weights", i32 1, i32 136384}
!901 = !{!"function_entry_count", i64 105338}
!902 = !{!"function_entry_count", i64 897521}
!903 = !{!"branch_weights", i32 2, i32 897521}
!904 = !{!"branch_weights", i32 415616, i32 481906}
!905 = !{!"branch_weights", i32 1, i32 415616}
!906 = !{!"branch_weights", i32 2, i32 1}
!907 = distinct !{!907, !434}
!908 = !{!"branch_weights", i32 6036, i32 891487}
!909 = !{!"branch_weights", i32 357967, i32 533521}
!910 = !{!"branch_weights", i32 1, i32 357967}
!911 = !{!"branch_weights", i32 6036, i32 1}
!912 = distinct !{!912, !434}
!913 = !{!"branch_weights", i32 24537, i32 872986}
!914 = !{!"branch_weights", i32 9242, i32 863745}
!915 = !{!"branch_weights", i32 -1609834409, i32 1489012573}
!916 = !{!"branch_weights", i32 38772, i32 824974}
!917 = !{!"branch_weights", i32 1, i32 38772}
!918 = !{!"branch_weights", i32 293915, i32 569831}
!919 = !{!"branch_weights", i32 1, i32 92864}
!920 = distinct !{!920, !434}
!921 = !{!"function_entry_count", i64 13265}
!922 = !{!"branch_weights", i32 3856, i32 9411}
!923 = !{!"function_entry_count", i64 38115}
!924 = !{!"branch_weights", i32 1, i32 38116}
!925 = !{!"branch_weights", i32 2842, i32 35275}
!926 = !{!"branch_weights", i32 2850, i32 35267}
!927 = !{!"function_entry_count", i64 35024}
!928 = !{!"branch_weights", i32 1, i32 35025}
!929 = !{!"branch_weights", i32 2829, i32 32197}
!930 = !{!"branch_weights", i32 1, i32 32197}
!931 = !{!"branch_weights", i32 6, i32 32192}
!932 = !{!"branch_weights", i32 2808, i32 29390}
!933 = !{!"branch_weights", i32 1, i32 32196}
!934 = !{!"branch_weights", i32 1, i32 32879}
!935 = !{!"branch_weights", i32 32196, i32 683}
!936 = distinct !{!936, !434}
!937 = !{!"function_entry_count", i64 5635704}
!938 = !{!"branch_weights", i32 1, i32 5635705}
!939 = !{!"branch_weights", i32 5491004, i32 144702}
!940 = !{!"branch_weights", i32 84271, i32 60438}
!941 = !{!"branch_weights", i32 84265, i32 26742}
!942 = distinct !{!942, !434}
!943 = !{!"branch_weights", i32 1, i32 27}
!944 = !{!"branch_weights", i32 7, i32 27}
!945 = distinct !{!945, !434}
!946 = distinct !{!946, !434}
!947 = !{!"function_entry_count", i64 92955}
!948 = !{!"emit-rtl.c:make_call_insn_raw"}
!949 = distinct !{!949, !434}
!950 = !{!"function_entry_count", i64 112883}
!951 = !{!"branch_weights", i32 112884, i32 1}
!952 = !{!"function_entry_count", i64 157395}
!953 = !{!"function_entry_count", i64 4676005}
!954 = !{!"branch_weights", i32 1, i32 4676006}
!955 = !{!"branch_weights", i32 4461359, i32 214648}
!956 = !{!"branch_weights", i32 192829, i32 21826}
!957 = !{!"function_entry_count", i64 192822}
!958 = !{!"emit-rtl.c:emit_insn_after_1"}
!959 = !{!"branch_weights", i32 112985, i32 79839}
!960 = !{!"branch_weights", i32 4023, i32 108963}
!961 = !{!"branch_weights", i32 702, i32 2147482946}
!962 = !{!"branch_weights", i32 40585, i32 148216}
!963 = !{!"branch_weights", i32 1, i32 148216}
!964 = !{!"branch_weights", i32 148216, i32 0}
!965 = distinct !{!965, !434}
!966 = !{!"branch_weights", i32 1, i32 188801}
!967 = !{!"branch_weights", i32 82870, i32 105932}
!968 = !{!"branch_weights", i32 4023, i32 4011}
!969 = distinct !{!969, !434}
!970 = !{!"branch_weights", i32 149, i32 192675}
!971 = !{!"function_entry_count", i64 206195}
!972 = !{!"branch_weights", i32 1, i32 206196}
!973 = !{!"branch_weights", i32 7, i32 206196}
!974 = !{!"function_entry_count", i64 92}
!975 = !{!"branch_weights", i32 1, i32 93}
!976 = !{!"branch_weights", i32 7, i32 93}
!977 = !{!"function_entry_count", i64 115235}
!978 = !{!"function_entry_count", i64 4533308}
!979 = !{!"branch_weights", i32 9887233, i32 494, i32 -2073502752, i32 3944789, i32 9942206}
!980 = distinct !{!980, !434}
!981 = !{!"function_entry_count", i64 206132}
!982 = !{!"branch_weights", i32 250516011, i32 -1889781686}
!983 = !{!"branch_weights", i32 1, i32 19445}
!984 = !{!"branch_weights", i32 19445, i32 1}
!985 = !{!"function_entry_count", i64 5172}
!986 = !{!"branch_weights", i32 139671, i32 82784, i32 427993328, i32 62076, i32 46557}
!987 = distinct !{!987, !434}
!988 = !{!"function_entry_count", i64 88}
!989 = !{!"branch_weights", i32 7921, i32 179}
!990 = !{!"branch_weights", i32 1, i32 89}
!991 = !{!"branch_weights", i32 89, i32 1}
!992 = !{!"branch_weights", i32 11625, i32 3384, i32 297972, i32 2790, i32 2325}
!993 = distinct !{!993, !434}
!994 = !{!"function_entry_count", i64 5621641}
!995 = !{!"branch_weights", i32 63026683, i32 -1489199287}
!996 = !{!"branch_weights", i32 1, i32 123507}
!997 = !{!"branch_weights", i32 2024, i32 138204}
!998 = !{!"branch_weights", i32 129433, i32 8772}
!999 = !{!"branch_weights", i32 123507, i32 16721}
!1000 = !{!"function_entry_count", i64 5619793}
!1001 = !{!"branch_weights", i32 75411, i32 608, i32 -925847711, i32 19770876, i32 28846542}
!1002 = distinct !{!1002, !434}
!1003 = !{!"branch_weights", i32 729, i32 1568, i32 1512, i32 39366, i32 729}
!1004 = distinct !{!1004, !434}
!1005 = distinct !{!1005, !434}
!1006 = !{!"function_entry_count", i64 2790267}
!1007 = !{!"branch_weights", i32 10981, i32 2779288}
!1008 = !{!"branch_weights", i32 1426522, i32 1352773}
!1009 = !{!"branch_weights", i32 1426516, i32 505009}
!1010 = distinct !{!1010, !434}
!1011 = distinct !{!1011, !434}
!1012 = !{!"function_entry_count", i64 379360}
!1013 = !{!"branch_weights", i32 162285, i32 217083}
!1014 = !{!"branch_weights", i32 162279, i32 180166}
!1015 = distinct !{!1015, !434}
!1016 = !{!"function_entry_count", i64 185726}
!1017 = !{!"branch_weights", i32 92870, i32 92864}
!1018 = !{!"function_entry_count", i64 115814}
!1019 = !{!"branch_weights", i32 115815, i32 1}
!1020 = !{!"function_entry_count", i64 55878}
!1021 = !{!"function_entry_count", i64 2491}
!1022 = !{!"function_entry_count", i64 178272}
!1023 = !{!"function_entry_count", i64 8041}
!1024 = !{!"branch_weights", i32 1, i32 8041}
!1025 = !{!"branch_weights", i32 0, i32 1}
!1026 = !{!"function_entry_count", i64 2220914}
!1027 = !{!"branch_weights", i32 6, i32 2220910}
!1028 = !{!758, !363, i64 16}
!1029 = !{!385, !363, i64 64}
!1030 = !{!"function_entry_count", i64 4022}
!1031 = !{!"branch_weights", i32 1, i32 4022}
!1032 = !{!385, !369, i64 80}
!1033 = !{!"function_entry_count", i64 176727}
!1034 = !{!"branch_weights", i32 176729, i32 1}
!1035 = !{!"branch_weights", i32 48554, i32 128175}
!1036 = !{!"branch_weights", i32 47261, i32 1294}
!1037 = !{!"branch_weights", i32 1294, i32 1}
!1038 = !{!"branch_weights", i32 1, i32 175435}
!1039 = !{!"branch_weights", i32 154586, i32 20850}
!1040 = !{!"function_entry_count", i64 22064}
!1041 = !{!"branch_weights", i32 1, i32 1, i32 22065, i32 1, i32 1, i32 1}
!1042 = !{!"emit-rtl.c:classify_insn"}
!1043 = !{!"branch_weights", i32 107791, i32 107810, i32 107805, i32 107800, i32 107796, i32 -1916540241}
!1044 = !{!"branch_weights", i32 22064, i32 1}
!1045 = !{!"branch_weights", i32 987959977, i32 45548, i32 1086614779}
!1046 = !{!"branch_weights", i32 1, i32 23857}
!1047 = !{!"branch_weights", i32 23483, i32 22064}
!1048 = distinct !{!1048, !434}
!1049 = !{!"function_entry_count", i64 87825}
!1050 = !{!"branch_weights", i32 78163, i32 52374}
!1051 = !{!"branch_weights", i32 87826, i32 42711}
!1052 = distinct !{!1052, !434}
!1053 = !{!"function_entry_count", i64 72}
!1054 = distinct !{!1054, !434}
!1055 = distinct !{!1055, !434}
!1056 = !{!"function_entry_count", i64 6654}
!1057 = !{!"function_entry_count", i64 942543}
!1058 = !{!"branch_weights", i32 1, i32 942544}
!1059 = !{!"branch_weights", i32 462583, i32 308092, i32 152309, i32 27, i32 1, i32 1, i32 1983, i32 1, i32 5429, i32 1, i32 9463, i32 2132, i32 534}
!1060 = !{!"branch_weights", i32 1, i32 2131}
!1061 = !{!"branch_weights", i32 7050, i32 2414}
!1062 = !{!"branch_weights", i32 7050, i32 1}
!1063 = !{!"branch_weights", i32 1, i32 0}
!1064 = distinct !{!1064, !434}
!1065 = !{!"branch_weights", i32 1, i32 534}
!1066 = !{!"branch_weights", i32 23174, i32 -1588392260}
!1067 = !{!"branch_weights", i32 1, i32 467126}
!1068 = !{!"branch_weights", i32 1, i32 764687, i32 13370, i32 1, i32 1, i32 1, i32 148, i32 1, i32 1, i32 2715, i32 127885}
!1069 = !{!"branch_weights", i32 31401, i32 733287}
!1070 = !{!"branch_weights", i32 1, i32 13370}
!1071 = !{!"branch_weights", i32 13369, i32 1}
!1072 = !{!"branch_weights", i32 15559, i32 13369}
!1073 = distinct !{!1073, !434}
!1074 = !{!"branch_weights", i32 441675, i32 467126}
!1075 = distinct !{!1075, !434}
!1076 = !{!"branch_weights", i32 -916509796, i32 15490212, i32 7265}
!1077 = !{!"branch_weights", i32 2132, i32 1}
!1078 = !{!"function_entry_count", i64 122868}
!1079 = !{!"emit-rtl.c:init_virtual_regs"}
!1080 = distinct !{!1080, !434}
!1081 = !{!"function_entry_count", i64 1}
!1082 = !{!"branch_weights", i32 2, i32 52}
!1083 = distinct !{!1083, !434}
!1084 = !{!"branch_weights", i32 4, i32 20}
!1085 = !{!"branch_weights", i32 429496729, i32 1717986919}
!1086 = !{!"branch_weights", i32 127, i32 321}
!1087 = distinct !{!1087, !434}
!1088 = !{!"branch_weights", i32 4, i32 14}
!1089 = !{!"branch_weights", i32 127, i32 193}
!1090 = distinct !{!1090, !434}
!1091 = !{!"branch_weights", i32 2, i32 128}
!1092 = distinct !{!1092, !434}
!1093 = !{!"branch_weights", i32 2, i32 3}
!1094 = !{!"branch_weights", i32 127, i32 289}
!1095 = distinct !{!1095, !434}
!1096 = distinct !{!1096, !434}
!1097 = !{!"branch_weights", i32 3, i32 1}
!1098 = !{!"branch_weights", i32 127, i32 481}
!1099 = distinct !{!1099, !434}
!1100 = distinct !{!1100, !434}
!1101 = !{!"branch_weights", i32 2, i32 2}
!1102 = distinct !{!1102, !434}
!1103 = distinct !{!1103, !434}
!1104 = distinct !{!1104, !434}
!1105 = !{!"branch_weights", i32 127, i32 1409}
!1106 = distinct !{!1106, !434}
!1107 = !{!"branch_weights", i32 127, i32 513}
!1108 = distinct !{!1108, !434}
!1109 = !{!1110, !369, i64 16}
!1110 = !{!"fixed_value", !1111, i64 0, !369, i64 16}
!1111 = !{!"", !360, i64 0, !360, i64 8}
!1112 = !{!"branch_weights", i32 127, i32 257}
!1113 = distinct !{!1113, !434}
!1114 = distinct !{!1114, !434}
!1115 = !{!"branch_weights", i32 13, i32 36, i32 30, i32 125, i32 13}
!1116 = distinct !{!1116, !434}
!1117 = !{!"branch_weights", i32 1, i32 1}
!1118 = !{!"branch_weights", i32 63, i32 36, i32 30, i32 25, i32 63}
!1119 = distinct !{!1119, !434}
!1120 = distinct !{!1120, !434}
!1121 = distinct !{!1121, !434}
!1122 = distinct !{!1122, !434}
!1123 = distinct !{!1123, !434}
!1124 = !{!"branch_weights", i32 12, i32 75}
!1125 = !{!"branch_weights", i32 2, i32 84}
!1126 = distinct !{!1126, !434}
!1127 = !{!"function_entry_count", i64 12223}
!1128 = !{!"emit-rtl.c:const_int_htab_hash"}
!1129 = !{!"function_entry_count", i64 14670870}
!1130 = !{!"emit-rtl.c:const_int_htab_eq"}
!1131 = !{!"function_entry_count", i64 4040}
!1132 = !{!"emit-rtl.c:const_double_htab_hash"}
!1133 = !{!"branch_weights", i32 1, i32 4041}
!1134 = !{!"function_entry_count", i64 5261}
!1135 = !{!"emit-rtl.c:const_double_htab_eq"}
!1136 = !{!"branch_weights", i32 4391, i32 872}
!1137 = !{!"branch_weights", i32 1, i32 4391}
!1138 = !{!"emit-rtl.c:const_fixed_htab_hash"}
!1139 = !{!"function_entry_count", i64 9}
!1140 = !{!"emit-rtl.c:const_fixed_htab_eq"}
!1141 = !{!"branch_weights", i32 3, i32 8}
!1142 = !{!"function_entry_count", i64 2654965}
!1143 = !{!"emit-rtl.c:mem_attrs_htab_hash"}
!1144 = !{!"branch_weights", i32 1898954, i32 756013}
!1145 = !{!"branch_weights", i32 21830, i32 2633137}
!1146 = !{!"function_entry_count", i64 5449589}
!1147 = !{!"emit-rtl.c:mem_attrs_htab_eq"}
!1148 = !{!"branch_weights", i32 4018302, i32 1431289}
!1149 = !{!"branch_weights", i32 3065474, i32 952829}
!1150 = !{!"branch_weights", i32 3032012, i32 33463}
!1151 = !{!"branch_weights", i32 3028749, i32 3264}
!1152 = !{!"branch_weights", i32 3028749, i32 1}
!1153 = !{!"branch_weights", i32 2213761, i32 814989}
!1154 = !{!"branch_weights", i32 15917, i32 -1700427530}
!1155 = !{!"function_entry_count", i64 1955960}
!1156 = !{!"emit-rtl.c:reg_attrs_htab_hash"}
!1157 = !{!"function_entry_count", i64 2365415}
!1158 = !{!"emit-rtl.c:reg_attrs_htab_eq"}
!1159 = !{!"branch_weights", i32 658610, i32 1706807}
!1160 = !{!"function_entry_count", i64 64}
!1161 = !{!"emit-rtl.c:gen_const_vector"}
!1162 = !{!"branch_weights", i32 1, i32 65}
!1163 = !{!"branch_weights", i32 1, i32 129}
!1164 = !{!"branch_weights", i32 129, i32 387}
!1165 = distinct !{!1165, !434, !1166, !1167}
!1166 = !{!"llvm.loop.isvectorized", i32 1}
!1167 = !{!"llvm.loop.unroll.runtime.disable"}
!1168 = !{!"function_entry_count", i64 23521}
!1169 = !{!"branch_weights", i32 1, i32 18258, i32 5173, i32 1, i32 93}
!1170 = !{!"branch_weights", i32 69, i32 25}
!1171 = !{!"branch_weights", i32 2635, i32 20887}
!1172 = !{!"branch_weights", i32 1, i32 20887}
!1173 = !{!"branch_weights", i32 20887, i32 1}
!1174 = !{!"branch_weights", i32 20887, i32 0}
!1175 = distinct !{!1175, !434}
!1176 = !{!"function_entry_count", i64 81875}
!1177 = !{!"branch_weights", i32 4, i32 81873}
