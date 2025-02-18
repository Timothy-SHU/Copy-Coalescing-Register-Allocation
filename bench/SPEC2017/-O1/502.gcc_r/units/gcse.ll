; ModuleID = 'gcse.c'
source_filename = "gcse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.hash_table_d = type { ptr, i32, i32, i32 }
%struct.reg_use = type { ptr }
%struct.real_value = type { i32, [3 x i64] }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.cselib_val_struct = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.elt_loc_list = type { ptr, ptr, ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.expr = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.ls_expr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.occr = type { ptr, ptr, i8, i8 }
%struct.edge_list = type { i32, i32, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.reg_avail_info = type { ptr, i32, i32 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_artificial_ref = type { %struct.df_base_ref, ptr }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@can_copy_p.can_copy_init_p = internal unnamed_addr global i1 false, align 1
@can_copy = internal unnamed_addr global [87 x i8] zeroinitializer, align 16
@test_insn = internal global ptr null, align 8
@word_mode = external local_unnamed_addr global i32, align 4
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str = private unnamed_addr constant [6 x i8] c"cprop\00", align 1
@pass_rtl_cprop = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_rtl_cprop, ptr @execute_rtl_cprop, ptr null, ptr null, i32 0, i32 130, i32 512, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"rtl pre\00", align 1
@pass_rtl_pre = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.1, ptr @gate_rtl_pre, ptr @execute_rtl_pre, ptr null, ptr null, i32 0, i32 131, i32 512, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"hoist\00", align 1
@pass_rtl_hoist = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.2, ptr @gate_rtl_hoist, ptr @execute_rtl_hoist, ptr null, ptr null, i32 0, i32 132, i32 512, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@gt_ggc_r_gt_gcse_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @test_insn, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16
@flag_rerun_cse_after_global_opts = dso_local local_unnamed_addr global i32 0, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@optimize = external local_unnamed_addr global i32, align 4
@flag_gcse = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"const/copy propagation disabled\00", align 1
@local_const_prop_count = internal unnamed_addr global i32 0, align 4
@global_const_prop_count = internal unnamed_addr global i32 0, align 4
@local_copy_prop_count = internal unnamed_addr global i32 0, align 4
@global_copy_prop_count = internal unnamed_addr global i32 0, align 4
@bytes_used = internal unnamed_addr global i32 0, align 4
@gcse_obstack = internal global %struct.obstack zeroinitializer, align 8
@implicit_sets = internal unnamed_addr global ptr null, align 8
@set_hash_table = internal global %struct.hash_table_d zeroinitializer, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"CPROP of %s, %d basic blocks, %d bytes needed, \00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%d local const props, %d local copy props, \00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"%d global const props, %d global copy props\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"%s: %d basic blocks and %d edges/basic block\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [37 x i8] c"%s: %d basic blocks and %d registers\00", align 1
@reg_set_bitmap = internal unnamed_addr global ptr null, align 8
@modify_mem_list = internal unnamed_addr global ptr null, align 8
@canon_modify_mem_list = internal unnamed_addr global ptr null, align 8
@modify_mem_list_set = internal unnamed_addr global ptr null, align 8
@blocks_with_calls = internal unnamed_addr global ptr null, align 8
@reg_use_count = internal unnamed_addr global i32 0, align 4
@reg_use_table = internal unnamed_addr global [8 x %struct.reg_use] zeroinitializer, align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@.str.10 = private unnamed_addr constant [39 x i8] c"LOCAL CONST-PROP: Replacing reg %d in \00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"insn %d with constant \00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"LOCAL COPY-PROP: Replacing reg %d in insn %d\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c" with reg %d\0A\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@.str.15 = private unnamed_addr constant [67 x i8] c"GLOBAL CONST-PROP: Replacing reg %d in jump_insn %d with constant \00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Implicit set of reg %d in \00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"basic block %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Found %d implicit sets\0A\00", align 1
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@dconst0 = external global %struct.real_value, align 8
@reg_avail_info = internal unnamed_addr global ptr null, align 8
@current_bb = internal unnamed_addr global ptr null, align 8
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@df = external local_unnamed_addr global ptr, align 8
@flag_gcse_las = external local_unnamed_addr global i32, align 4
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@ix86_fpmath = external local_unnamed_addr global i32, align 4
@gcse_mem_operand = internal unnamed_addr global ptr null, align 8
@gcse_mems_conflict_p = internal unnamed_addr global i1 false, align 4
@pre_ldst_mems = internal unnamed_addr global ptr null, align 8
@pre_ldst_table = internal unnamed_addr global ptr null, align 8
@.str.21 = private unnamed_addr constant [7 x i8] c"gcse.c\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"%s hash table (%d buckets, %d entries)\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Index %d (hash value %d)\0A  \00", align 1
@cprop_pavloc = internal unnamed_addr global ptr null, align 8
@cprop_absaltered = internal unnamed_addr global ptr null, align 8
@cprop_avin = internal unnamed_addr global ptr null, align 8
@cprop_avout = internal unnamed_addr global ptr null, align 8
@.str.24 = private unnamed_addr constant [40 x i8] c"GLOBAL CONST-PROP: Replacing reg %d in \00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"GLOBAL COPY-PROP: Replacing reg %d in insn %d\00", align 1
@bypass_last_basic_block = internal unnamed_addr global i32 0, align 4
@.str.26 = private unnamed_addr constant [60 x i8] c"JUMP-BYPASS: Proved reg %d in jump_insn %d equals constant \00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"\0ABypass edge from %d->%d to %d\0A\00", align 1
@gcse_subst_count = internal unnamed_addr global i32 0, align 4
@gcse_create_count = internal unnamed_addr global i32 0, align 4
@.str.28 = private unnamed_addr constant [13 x i8] c"PRE disabled\00", align 1
@expr_hash_table = internal global %struct.hash_table_d zeroinitializer, align 8
@flag_gcse_lm = external local_unnamed_addr global i32, align 4
@.str.29 = private unnamed_addr constant [11 x i8] c"Expression\00", align 1
@edge_list = internal unnamed_addr global ptr null, align 8
@.str.30 = private unnamed_addr constant [51 x i8] c"PRE GCSE of %s, %d basic blocks, %d bytes needed, \00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"%d substs, %d insns created\0A\00", align 1
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@flag_float_store = external local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [13 x i8] c"LDST list: \0A\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"  Pattern (%3d): \00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"\0A\09 Loads : \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"\0A\09Stores : \00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@transp = internal unnamed_addr global ptr null, align 8
@comp = internal unnamed_addr global ptr null, align 8
@antloc = internal unnamed_addr global ptr null, align 8
@pre_insert_map = internal global ptr null, align 8
@pre_delete_map = internal global ptr null, align 8
@ae_kill = internal unnamed_addr global ptr null, align 8
@.str.38 = private unnamed_addr constant [43 x i8] c"PRE: redundant insn %d (expression %d) in \00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"bb %d, reaching reg is %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"PRE: edge (%d,%d), \00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"copy expression %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"PRE/HOIST: end of bb %d, insn %d, \00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"copying expression %d to reg %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"PRE:  store updated with reaching reg \00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c":\0A\09\00", align 1
@.str.46 = private unnamed_addr constant [62 x i8] c"PRE: bb %d, insn %d, copy expression %d in insn %d to reg %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"GCSE disabled\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"Code Hosting Expressions\00", align 1
@.str.49 = private unnamed_addr constant [48 x i8] c"HOIST of %s, %d basic blocks, %d bytes needed, \00", align 1
@hoist_vbein = internal unnamed_addr global ptr null, align 8
@hoist_vbeout = internal unnamed_addr global ptr null, align 8
@hoist_exprs = internal unnamed_addr global ptr null, align 8
@transpout = internal unnamed_addr global ptr null, align 8
@.str.50 = private unnamed_addr constant [42 x i8] c"hoisting vbeinout computation: %d passes\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !231 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !232
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !231 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !232
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !231 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !236
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !241
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !242

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !236
  %11 = load i8, ptr %3, align 1, !tbaa !243
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !231 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !236
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !241
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !242

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #19
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !236
  %11 = load i8, ptr %3, align 1, !tbaa !243
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !231 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !232
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !236
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !241
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !242

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #19
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !236
  %11 = load i8, ptr %3, align 1, !tbaa !243
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !231 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !232
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !231 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !244
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !245
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !242

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !244
  store i8 %12, ptr %4, align 1, !tbaa !243
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !231 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !244
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !245
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !242

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !244
  store i8 %12, ptr %4, align 1, !tbaa !243
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !231 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !232
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !244
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !245
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !242

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #19
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !244
  store i8 %12, ptr %4, align 1, !tbaa !243
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !231 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #19
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !231 {
  %2 = load i32, ptr %0, align 8, !tbaa !246
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !231 {
  %2 = load i32, ptr %0, align 8, !tbaa !246
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !231 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !232
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !247
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !231 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #19
  %6 = load ptr, ptr %5, align 8, !tbaa !232
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !247
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !231 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !231 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !231 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !231 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #19
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
  br i1 %23, label %7, label %24, !llvm.loop !248

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !231 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @can_copy_p(i32 noundef %0) local_unnamed_addr #9 !prof !251 {
  %2 = load i1, ptr @can_copy_p.can_copy_init_p, align 1
  br i1 %2, label %14, label %3, !prof !252

3:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(87) @can_copy, i8 0, i64 87, i1 false)
  tail call void @start_sequence() #19
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i64 [ 0, %3 ], [ %11, %4 ]
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !243
  %8 = icmp ne i8 %7, 1
  %9 = getelementptr inbounds [87 x i8], ptr @can_copy, i64 0, i64 %5
  %10 = zext i1 %8 to i8
  store i8 %10, ptr %9, align 1, !tbaa !243
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 87
  br i1 %12, label %13, label %4, !prof !253, !llvm.loop !254

13:                                               ; preds = %4
  tail call void @end_sequence() #19
  store i1 true, ptr @can_copy_p.can_copy_init_p, align 1
  br label %14

14:                                               ; preds = %13, %1
  %15 = zext i32 %0 to i64
  %16 = getelementptr inbounds [87 x i8], ptr @can_copy, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !243
  %18 = icmp ne i8 %17, 0
  %19 = zext i1 %18 to i8
  ret i8 %19
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @can_assign_to_reg_without_clobbers_p(ptr noundef %0) local_unnamed_addr #10 !prof !255 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  store i32 0, ptr %2, align 4, !tbaa !247
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef %5) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %54, !prof !256

8:                                                ; preds = %1
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 16711680
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %54, label %12, !prof !257

12:                                               ; preds = %8
  %13 = load ptr, ptr @test_insn, align 8, !tbaa !232
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22, !prof !258

15:                                               ; preds = %12
  %16 = load i32, ptr @word_mode, align 4, !tbaa !247
  %17 = tail call ptr @gen_rtx_REG(i32 noundef %16, i32 noundef 106) #19
  %18 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !232
  %19 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %17, ptr noundef %18) #19
  %20 = tail call ptr @make_insn_raw(ptr noundef %19) #19
  store ptr %20, ptr @test_insn, align 8, !tbaa !232
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  br label %22

22:                                               ; preds = %15, %12
  %23 = load i32, ptr %0, align 8
  %24 = and i32 %23, 16711680
  %25 = load ptr, ptr @test_insn, align 8, !tbaa !232
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !243
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !243
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, -16711681
  %32 = or disjoint i32 %31, %24
  store i32 %32, ptr %29, align 8
  %33 = load ptr, ptr @test_insn, align 8, !tbaa !232
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !243
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %0, ptr %36, align 8, !tbaa !243
  %37 = load ptr, ptr %34, align 8, !tbaa !243
  %38 = call i32 @recog(ptr noundef %37, ptr noundef %33, ptr noundef nonnull %2) #19
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %54, label %40, !prof !259

40:                                               ; preds = %22
  %41 = load i32, ptr %2, align 4, !tbaa !247
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %46, !prof !260

43:                                               ; preds = %40
  %44 = call i32 @added_clobbers_hard_reg_p(i32 noundef %38) #19
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54, !prof !261

46:                                               ; preds = %43, %40
  %47 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 37), align 8, !tbaa !262
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49, !prof !274

49:                                               ; preds = %46
  %50 = load ptr, ptr @test_insn, align 8, !tbaa !232
  %51 = call zeroext i8 %47(ptr noundef %50) #19
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %46
  br label %54

54:                                               ; preds = %49, %43, %22, %8, %1, %53
  %55 = phi i8 [ 1, %53 ], [ 1, %1 ], [ 0, %8 ], [ 0, %22 ], [ 0, %43 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret i8 %55
}

declare i32 @general_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @make_insn_raw(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @added_clobbers_hard_reg_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @fis_get_condition(ptr noundef %0) local_unnamed_addr #9 !prof !275 {
  %2 = tail call ptr @get_condition(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 1) #19
  ret ptr %2
}

declare ptr @get_condition(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_rtl_cprop() #10 !prof !276 !PGOFuncName !277 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !247
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_gcse, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !278
  br i1 %5, label %6, label %16, !prof !278

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !232
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16, !prof !278

12:                                               ; preds = %6
  %13 = tail call zeroext i8 @dbg_cnt(i32 noundef 4) #19
  %14 = icmp ne i8 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %12, %6, %0
  %17 = phi i8 [ 0, %6 ], [ 0, %0 ], [ %15, %12 ]
  ret i8 %17
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @execute_rtl_cprop() #10 !prof !276 !PGOFuncName !279 {
  %1 = alloca %struct.real_value, align 8
  %2 = tail call zeroext i8 @delete_unreachable_blocks() #19
  %3 = tail call i32 @df_set_flags(i32 noundef 1) #19
  tail call void @df_analyze() #19
  %4 = load ptr, ptr @cfun, align 8, !tbaa !232
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !280
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !282
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %1276, label %10, !prof !284

10:                                               ; preds = %0
  %11 = tail call fastcc zeroext i8 @is_too_expensive(ptr noundef nonnull @.str.3), !range !285
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %1276, !prof !286

13:                                               ; preds = %10
  store i32 0, ptr @local_const_prop_count, align 4, !tbaa !247
  store i32 0, ptr @global_const_prop_count, align 4, !tbaa !247
  store i32 0, ptr @local_copy_prop_count, align 4, !tbaa !247
  store i32 0, ptr @global_copy_prop_count, align 4, !tbaa !247
  store i32 0, ptr @bytes_used, align 4, !tbaa !247
  %14 = tail call i32 @_obstack_begin(ptr noundef nonnull @gcse_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #19
  %15 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %15, ptr @reg_set_bitmap, align 8, !tbaa !232
  %16 = load ptr, ptr @cfun, align 8, !tbaa !232
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !280
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !287
  %21 = sext i32 %20 to i64
  %22 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %23 = shl i32 %20, 3
  %24 = add i32 %23, %22
  store i32 %24, ptr @bytes_used, align 4, !tbaa !247
  %25 = tail call ptr @xcalloc(i64 noundef %21, i64 noundef 8) #19
  store ptr %25, ptr @modify_mem_list, align 8, !tbaa !232
  %26 = load ptr, ptr @cfun, align 8, !tbaa !232
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !280
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !287
  %31 = sext i32 %30 to i64
  %32 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %33 = shl i32 %30, 3
  %34 = add i32 %33, %32
  store i32 %34, ptr @bytes_used, align 4, !tbaa !247
  %35 = tail call ptr @xcalloc(i64 noundef %31, i64 noundef 8) #19
  store ptr %35, ptr @canon_modify_mem_list, align 8, !tbaa !232
  %36 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %36, ptr @modify_mem_list_set, align 8, !tbaa !232
  %37 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %37, ptr @blocks_with_calls, align 8, !tbaa !232
  tail call void @cselib_init(i32 noundef 0) #19
  %38 = load ptr, ptr @cfun, align 8, !tbaa !232
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !280
  %41 = load ptr, ptr %40, align 8, !tbaa !288
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !289
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !291
  %46 = icmp eq ptr %43, %45
  br i1 %46, label %237, label %47, !prof !292

47:                                               ; preds = %13, %223
  %48 = phi ptr [ %226, %223 ], [ %43, %13 ]
  %49 = phi i8 [ %224, %223 ], [ 0, %13 ]
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !243
  %52 = load ptr, ptr %51, align 8, !tbaa !243
  %53 = icmp eq ptr %52, null
  br i1 %53, label %223, label %54, !prof !292

54:                                               ; preds = %47, %218
  %55 = phi ptr [ %221, %218 ], [ %52, %47 ]
  %56 = phi i8 [ %219, %218 ], [ %49, %47 ]
  %57 = load ptr, ptr %50, align 8, !tbaa !243
  %58 = getelementptr inbounds %struct.rtl_bb_info, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !293
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 2
  %61 = load ptr, ptr %60, align 8, !tbaa !243
  %62 = icmp eq ptr %55, %61
  br i1 %62, label %223, label %63, !prof !295

63:                                               ; preds = %54
  %64 = load i32, ptr %55, align 8
  %65 = and i32 %64, 65535
  %66 = add nsw i32 %65, -7
  %67 = icmp ult i32 %66, 4
  br i1 %67, label %68, label %218, !prof !296

68:                                               ; preds = %63
  %69 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %55) #19
  %70 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 1
  %71 = icmp eq ptr %69, null
  br label %72

72:                                               ; preds = %210, %68
  %73 = phi i8 [ %56, %68 ], [ %211, %210 ]
  store i32 0, ptr @reg_use_count, align 4, !tbaa !247
  tail call void @note_uses(ptr noundef nonnull %70, ptr noundef nonnull @local_cprop_find_used_regs, ptr noundef null) #19
  br i1 %71, label %92, label %74, !prof !297

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !232
  %77 = icmp eq ptr %76, null
  br i1 %77, label %92, label %78, !prof !298

78:                                               ; preds = %74
  %79 = load i32, ptr %76, align 8
  %80 = trunc i32 %79 to i16
  switch i16 %80, label %91 [
    i16 120, label %92
    i16 119, label %92
    i16 40, label %92
    i16 74, label %92
    i16 75, label %92
    i16 76, label %92
    i16 77, label %92
    i16 78, label %92
    i16 79, label %92
    i16 39, label %81
  ], !prof !299

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !243
  %84 = load i32, ptr %83, align 8
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 255
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !243
  %90 = icmp ugt i8 %89, 4
  br i1 %90, label %92, label %91

91:                                               ; preds = %81, %78
  tail call void @find_used_regs(ptr noundef nonnull %75, ptr noundef null)
  br label %92

92:                                               ; preds = %91, %81, %78, %78, %78, %78, %78, %78, %78, %78, %78, %74, %72
  %93 = load i32, ptr @reg_use_count, align 4, !tbaa !247
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %210, !prof !300

95:                                               ; preds = %92, %205
  %96 = phi ptr [ %206, %205 ], [ @reg_use_table, %92 ]
  %97 = load ptr, ptr %96, align 8, !tbaa !301
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 37
  br i1 %100, label %101, label %201, !prof !303

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !243
  %104 = icmp ugt i32 %103, 52
  br i1 %104, label %113, label %105, !prof !304

105:                                              ; preds = %101
  %106 = load ptr, ptr %70, align 8, !tbaa !243
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 24
  br i1 %109, label %201, label %110, !prof !305

110:                                              ; preds = %105
  %111 = tail call i32 @asm_noperands(ptr noundef nonnull %106) #19
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %201, !prof !306

113:                                              ; preds = %110, %101
  %114 = load i32, ptr %97, align 8
  %115 = lshr i32 %114, 16
  %116 = and i32 %115, 255
  %117 = tail call ptr @cselib_lookup(ptr noundef nonnull %97, i32 noundef %116, i32 noundef 0) #19
  %118 = icmp eq ptr %117, null
  br i1 %118, label %198, label %119, !prof !307

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.cselib_val_struct, ptr %117, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !232
  %122 = icmp eq ptr %121, null
  br i1 %122, label %155, label %123, !prof !308

123:                                              ; preds = %119, %151
  %124 = phi ptr [ %153, %151 ], [ %121, %119 ]
  %125 = phi ptr [ %152, %151 ], [ null, %119 ]
  %126 = phi ptr [ %131, %151 ], [ null, %119 ]
  %127 = getelementptr inbounds %struct.elt_loc_list, ptr %124, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !309
  %129 = tail call fastcc zeroext i8 @gcse_constant_p(ptr noundef %128), !range !285
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %130, ptr %126, ptr %128, !prof !311
  %132 = load i32, ptr %128, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 37
  br i1 %134, label %135, label %151, !prof !312

135:                                              ; preds = %123
  %136 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1
  %137 = load i32, ptr %136, align 8, !tbaa !243
  %138 = icmp ugt i32 %137, 52
  br i1 %138, label %139, label %151, !prof !313

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.elt_loc_list, ptr %124, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !314
  %142 = tail call ptr @find_reg_note(ptr noundef %141, i32 noundef 3, ptr noundef null) #19
  %143 = icmp eq ptr %142, null
  br i1 %143, label %150, label %144, !prof !315

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !243
  %147 = load i32, ptr %146, align 8
  %148 = and i32 %147, 65535
  %149 = icmp eq i32 %148, 43
  br i1 %149, label %151, label %150

150:                                              ; preds = %144, %139
  br label %151

151:                                              ; preds = %150, %144, %135, %123
  %152 = phi ptr [ %125, %144 ], [ %128, %150 ], [ %125, %135 ], [ %125, %123 ]
  %153 = load ptr, ptr %124, align 8, !tbaa !232
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %123, !prof !316, !llvm.loop !317

155:                                              ; preds = %151, %119
  %156 = phi ptr [ null, %119 ], [ %131, %151 ]
  %157 = phi ptr [ null, %119 ], [ %152, %151 ]
  %158 = icmp eq ptr %156, null
  br i1 %158, label %175, label %159, !prof !318

159:                                              ; preds = %155
  %160 = tail call fastcc zeroext i8 @constprop_register(ptr noundef nonnull %55, ptr noundef nonnull %97, ptr noundef nonnull %156), !range !285
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %175, label %162, !prof !319

162:                                              ; preds = %159
  %163 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %164 = icmp eq ptr %163, null
  br i1 %164, label %194, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %167 = load i32, ptr %102, align 8, !tbaa !243
  %168 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %163, ptr noundef nonnull @.str.10, i32 noundef %167)
  %169 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %170 = load i32, ptr %166, align 8, !tbaa !243
  %171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef nonnull @.str.11, i32 noundef %170)
  %172 = load ptr, ptr @dump_file, align 8, !tbaa !232
  tail call void @print_rtl(ptr noundef %172, ptr noundef nonnull %156) #19
  %173 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %174 = tail call i32 @fputc(i32 10, ptr %173)
  br label %194

175:                                              ; preds = %159, %155
  %176 = icmp eq ptr %157, null
  %177 = icmp eq ptr %157, %97
  %178 = or i1 %176, %177
  br i1 %178, label %198, label %179, !prof !320

179:                                              ; preds = %175
  %180 = tail call fastcc i32 @try_replace_reg(ptr noundef nonnull %97, ptr noundef nonnull %157, ptr noundef nonnull %55), !range !321
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %198, label %182, !prof !322

182:                                              ; preds = %179
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %184 = icmp eq ptr %183, null
  br i1 %184, label %194, label %185, !prof !323

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %187 = load i32, ptr %102, align 8, !tbaa !243
  %188 = load i32, ptr %186, align 8, !tbaa !243
  %189 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %183, ptr noundef nonnull @.str.13, i32 noundef %187, i32 noundef %188)
  %190 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %191 = getelementptr inbounds %struct.rtx_def, ptr %157, i64 0, i32 1
  %192 = load i32, ptr %191, align 8, !tbaa !243
  %193 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %190, ptr noundef nonnull @.str.14, i32 noundef %192)
  br label %194

194:                                              ; preds = %182, %185, %162, %165
  %195 = phi ptr [ @local_const_prop_count, %165 ], [ @local_const_prop_count, %162 ], [ @local_copy_prop_count, %185 ], [ @local_copy_prop_count, %182 ]
  %196 = load i32, ptr %195, align 4, !tbaa !247
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr %195, align 4, !tbaa !247
  br label %198

198:                                              ; preds = %194, %179, %175, %113
  %199 = phi i1 [ false, %113 ], [ true, %175 ], [ true, %179 ], [ false, %194 ]
  %200 = phi i8 [ 0, %113 ], [ undef, %175 ], [ undef, %179 ], [ 1, %194 ]
  br i1 %199, label %201, label %202, !prof !324

201:                                              ; preds = %198, %110, %105, %95
  br label %202

202:                                              ; preds = %201, %198
  %203 = phi i8 [ 0, %201 ], [ %200, %198 ]
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %210, !prof !325

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.reg_use, ptr %96, i64 1
  %207 = load i32, ptr @reg_use_count, align 4, !tbaa !247
  %208 = add nsw i32 %207, -1
  store i32 %208, ptr @reg_use_count, align 4, !tbaa !247
  %209 = icmp sgt i32 %207, 1
  br i1 %209, label %95, label %210, !prof !326, !llvm.loop !327

210:                                              ; preds = %205, %202, %92
  %211 = phi i8 [ %73, %92 ], [ %73, %205 ], [ 1, %202 ]
  %212 = load i32, ptr %55, align 8
  %213 = and i32 %212, 134217728
  %214 = icmp eq i32 %213, 0
  %215 = load i32, ptr @reg_use_count, align 4
  %216 = icmp ne i32 %215, 0
  %217 = select i1 %214, i1 %216, i1 false, !prof !328
  br i1 %217, label %72, label %218, !prof !329, !llvm.loop !330

218:                                              ; preds = %210, %63
  %219 = phi i8 [ %56, %63 ], [ %211, %210 ]
  tail call void @cselib_process_insn(ptr noundef nonnull %55) #19
  %220 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 2
  %221 = load ptr, ptr %220, align 8, !tbaa !243
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %54, !prof !331, !llvm.loop !332

223:                                              ; preds = %218, %54, %47
  %224 = phi i8 [ %49, %47 ], [ %219, %218 ], [ %56, %54 ]
  tail call void @cselib_clear_table() #19
  %225 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 6
  %226 = load ptr, ptr %225, align 8, !tbaa !289
  %227 = load ptr, ptr @cfun, align 8, !tbaa !232
  %228 = getelementptr inbounds %struct.function, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !280
  %230 = getelementptr inbounds %struct.control_flow_graph, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !291
  %232 = icmp eq ptr %226, %231
  br i1 %232, label %233, label %47, !prof !333, !llvm.loop !334

233:                                              ; preds = %223
  %234 = icmp eq i8 %224, 0
  tail call void @cselib_finish() #19
  br i1 %234, label %238, label %235, !prof !335

235:                                              ; preds = %233
  %236 = tail call zeroext i8 @delete_unreachable_blocks() #19
  tail call void @df_analyze() #19
  br label %238

237:                                              ; preds = %13
  tail call void @cselib_finish() #19
  br label %238

238:                                              ; preds = %237, %235, %233
  %239 = load ptr, ptr @cfun, align 8, !tbaa !232
  %240 = getelementptr inbounds %struct.function, ptr %239, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !280
  %242 = getelementptr inbounds %struct.control_flow_graph, ptr %241, i64 0, i32 5
  %243 = load i32, ptr %242, align 8, !tbaa !287
  %244 = sext i32 %243 to i64
  %245 = tail call ptr @xcalloc(i64 noundef %244, i64 noundef 8) #19
  store ptr %245, ptr @implicit_sets, align 8, !tbaa !232
  %246 = load ptr, ptr @cfun, align 8, !tbaa !232
  %247 = getelementptr inbounds %struct.function, ptr %246, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !280
  %249 = load ptr, ptr %248, align 8, !tbaa !288
  %250 = getelementptr inbounds %struct.basic_block_def, ptr %249, i64 0, i32 6
  %251 = load ptr, ptr %250, align 8, !tbaa !289
  %252 = getelementptr inbounds %struct.control_flow_graph, ptr %248, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !291
  %254 = icmp eq ptr %251, %253
  br i1 %254, label %396, label %255, !prof !292

255:                                              ; preds = %238, %386
  %256 = phi ptr [ %389, %386 ], [ %251, %238 ]
  %257 = phi i32 [ %387, %386 ], [ 0, %238 ]
  %258 = getelementptr inbounds %struct.basic_block_def, ptr %256, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !336
  %260 = icmp eq ptr %259, null
  br i1 %260, label %263, label %261, !prof !337

261:                                              ; preds = %255
  %262 = load i32, ptr %259, align 8, !tbaa !338
  br label %263

263:                                              ; preds = %261, %255
  %264 = phi i32 [ %262, %261 ], [ 0, %255 ]
  %265 = icmp ugt i32 %264, 1
  br i1 %265, label %266, label %386, !prof !340

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.basic_block_def, ptr %256, i64 0, i32 7
  %268 = load ptr, ptr %267, align 8, !tbaa !243
  %269 = getelementptr inbounds %struct.rtl_bb_info, ptr %268, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !293
  %271 = call ptr @get_condition(ptr noundef %270, ptr noundef null, i32 noundef 0, i32 noundef 1) #19
  %272 = icmp eq ptr %271, null
  br i1 %272, label %386, label %273, !prof !341

273:                                              ; preds = %266
  %274 = load i32, ptr %271, align 8
  %275 = and i32 %274, 65534
  %276 = icmp eq i32 %275, 80
  br i1 %276, label %277, label %386, !prof !342

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !243
  %280 = load i32, ptr %279, align 8
  %281 = and i32 %280, 65535
  %282 = icmp eq i32 %281, 37
  br i1 %282, label %283, label %386, !prof !343

283:                                              ; preds = %277
  %284 = getelementptr inbounds %struct.rtx_def, ptr %279, i64 0, i32 1
  %285 = load i32, ptr %284, align 8, !tbaa !243
  %286 = icmp ugt i32 %285, 52
  br i1 %286, label %287, label %386, !prof !344

287:                                              ; preds = %283
  %288 = lshr i32 %280, 16
  %289 = and i32 %288, 255
  %290 = getelementptr inbounds %struct.rtx_def, ptr %271, i64 0, i32 1, i32 0, i32 0, i64 1
  %291 = load ptr, ptr %290, align 8, !tbaa !243
  %292 = zext nneg i32 %289 to i64
  %293 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %292
  %294 = load i8, ptr %293, align 1, !tbaa !243
  switch i8 %294, label %322 [
    i8 8, label %295
    i8 9, label %295
    i8 11, label %295
    i8 17, label %295
  ], !prof !345

295:                                              ; preds = %287, %287, %287, %287
  %296 = and i8 %294, -2
  %297 = icmp eq i8 %296, 8
  br i1 %297, label %302, label %298

298:                                              ; preds = %295
  %299 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %292
  %300 = load i8, ptr %299, align 1, !tbaa !243
  %301 = zext i8 %300 to i32
  br label %302

302:                                              ; preds = %295, %298
  %303 = phi i32 [ %301, %298 ], [ %289, %295 ]
  %304 = add nsw i32 %303, -38
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %305
  %307 = load ptr, ptr %306, align 8, !tbaa !232
  %308 = getelementptr inbounds %struct.real_format, ptr %307, i64 0, i32 14
  %309 = load i8, ptr %308, align 1, !tbaa !346
  %310 = icmp ne i8 %309, 0
  %311 = load i32, ptr @flag_signed_zeros, align 4
  %312 = icmp ne i32 %311, 0
  %313 = select i1 %310, i1 %312, i1 false
  br i1 %313, label %314, label %322

314:                                              ; preds = %302
  %315 = load i32, ptr %291, align 8
  %316 = and i32 %315, 65535
  %317 = icmp eq i32 %316, 32
  br i1 %317, label %318, label %324

318:                                              ; preds = %314
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #19
  %319 = getelementptr inbounds %struct.rtx_def, ptr %291, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %319, i64 32, i1 false), !tbaa.struct !348
  %320 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %1, ptr noundef nonnull @dconst0) #19
  %321 = icmp eq i8 %320, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #19
  br i1 %321, label %322, label %324

322:                                              ; preds = %318, %302, %287
  %323 = call fastcc zeroext i8 @gcse_constant_p(ptr noundef %291), !range !285
  br label %324

324:                                              ; preds = %322, %318, %314
  %325 = phi i8 [ %323, %322 ], [ 0, %318 ], [ 0, %314 ]
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %386, label %327, !prof !349

327:                                              ; preds = %324
  %328 = load i32, ptr %271, align 8
  %329 = and i32 %328, 65535
  %330 = icmp eq i32 %329, 81
  %331 = load ptr, ptr %258, align 8, !tbaa !336
  %332 = getelementptr inbounds %struct.VEC_edge_base, ptr %331, i64 0, i32 2, i64 0
  %333 = load ptr, ptr %332, align 8, !tbaa !232
  %334 = getelementptr inbounds %struct.edge_def, ptr %333, i64 0, i32 7
  %335 = load i32, ptr %334, align 8, !tbaa !350
  %336 = and i32 %335, 1
  %337 = icmp eq i32 %336, 0
  br i1 %330, label %338, label %339, !prof !352

338:                                              ; preds = %327
  br i1 %337, label %343, label %340, !prof !353

339:                                              ; preds = %327
  br i1 %337, label %340, label %343, !prof !354

340:                                              ; preds = %339, %338
  %341 = getelementptr inbounds %struct.VEC_edge_base, ptr %331, i64 0, i32 2, i64 1
  %342 = load ptr, ptr %341, align 8, !tbaa !232
  br label %343

343:                                              ; preds = %340, %339, %338
  %344 = phi ptr [ %333, %338 ], [ %333, %339 ], [ %342, %340 ]
  %345 = getelementptr inbounds %struct.edge_def, ptr %344, i64 0, i32 1
  %346 = load ptr, ptr %345, align 8, !tbaa !355
  %347 = icmp eq ptr %346, null
  br i1 %347, label %386, label %348, !prof !349

348:                                              ; preds = %343
  %349 = load ptr, ptr %346, align 8, !tbaa !356
  %350 = icmp eq ptr %349, null
  br i1 %350, label %355, label %351, !prof !349

351:                                              ; preds = %348
  %352 = load i32, ptr %349, align 8, !tbaa !338
  %353 = icmp eq i32 %352, 1
  %354 = zext i1 %353 to i8
  br label %355

355:                                              ; preds = %351, %348
  %356 = phi i8 [ %354, %351 ], [ 0, %348 ]
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %386, label %358, !prof !357

358:                                              ; preds = %355
  %359 = load ptr, ptr @cfun, align 8, !tbaa !232
  %360 = getelementptr inbounds %struct.function, ptr %359, i64 0, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !280
  %362 = getelementptr inbounds %struct.control_flow_graph, ptr %361, i64 0, i32 1
  %363 = load ptr, ptr %362, align 8, !tbaa !291
  %364 = icmp eq ptr %346, %363
  br i1 %364, label %386, label %365, !prof !358

365:                                              ; preds = %358
  %366 = load ptr, ptr %278, align 8, !tbaa !243
  %367 = load ptr, ptr %290, align 8, !tbaa !243
  %368 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %366, ptr noundef %367) #19
  %369 = load ptr, ptr @implicit_sets, align 8, !tbaa !232
  %370 = getelementptr inbounds %struct.basic_block_def, ptr %346, i64 0, i32 9
  %371 = load i32, ptr %370, align 8, !tbaa !359
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds ptr, ptr %369, i64 %372
  store ptr %368, ptr %373, align 8, !tbaa !232
  %374 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %375 = icmp eq ptr %374, null
  br i1 %375, label %384, label %376, !prof !360

376:                                              ; preds = %365
  %377 = load ptr, ptr %278, align 8, !tbaa !243
  %378 = getelementptr inbounds %struct.rtx_def, ptr %377, i64 0, i32 1
  %379 = load i32, ptr %378, align 8, !tbaa !243
  %380 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %374, ptr noundef nonnull @.str.18, i32 noundef %379)
  %381 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %382 = load i32, ptr %370, align 8, !tbaa !359
  %383 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %381, ptr noundef nonnull @.str.19, i32 noundef %382)
  br label %384

384:                                              ; preds = %376, %365
  %385 = add i32 %257, 1
  br label %386

386:                                              ; preds = %384, %358, %355, %343, %324, %283, %277, %273, %266, %263
  %387 = phi i32 [ %385, %384 ], [ %257, %358 ], [ %257, %355 ], [ %257, %343 ], [ %257, %324 ], [ %257, %283 ], [ %257, %277 ], [ %257, %266 ], [ %257, %263 ], [ %257, %273 ]
  %388 = getelementptr inbounds %struct.basic_block_def, ptr %256, i64 0, i32 6
  %389 = load ptr, ptr %388, align 8, !tbaa !289
  %390 = load ptr, ptr @cfun, align 8, !tbaa !232
  %391 = getelementptr inbounds %struct.function, ptr %390, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !280
  %393 = getelementptr inbounds %struct.control_flow_graph, ptr %392, i64 0, i32 1
  %394 = load ptr, ptr %393, align 8, !tbaa !291
  %395 = icmp eq ptr %389, %394
  br i1 %395, label %396, label %255, !prof !333, !llvm.loop !361

396:                                              ; preds = %386, %238
  %397 = phi i32 [ 0, %238 ], [ %387, %386 ]
  %398 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %399 = icmp eq ptr %398, null
  br i1 %399, label %402, label %400, !prof !362

400:                                              ; preds = %396
  %401 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %398, ptr noundef nonnull @.str.20, i32 noundef %397)
  br label %402

402:                                              ; preds = %400, %396
  %403 = call i32 @get_max_insn_count() #19
  %404 = sdiv i32 %403, 4
  %405 = call i32 @llvm.umax.i32(i32 %404, i32 11)
  %406 = or i32 %405, 1
  store i32 %406, ptr getelementptr inbounds (%struct.hash_table_d, ptr @set_hash_table, i64 0, i32 1), align 8, !tbaa !363
  %407 = shl i32 %406, 3
  %408 = sext i32 %407 to i64
  %409 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %410 = add i32 %407, %409
  store i32 %410, ptr @bytes_used, align 4, !tbaa !247
  %411 = call ptr @xmalloc(i64 noundef %408) #19
  store ptr %411, ptr @set_hash_table, align 8, !tbaa !365
  store i32 1, ptr getelementptr inbounds (%struct.hash_table_d, ptr @set_hash_table, i64 0, i32 3), align 8, !tbaa !366
  call fastcc void @compute_hash_table(ptr noundef nonnull @set_hash_table)
  %412 = load ptr, ptr @implicit_sets, align 8, !tbaa !232
  call void @free(ptr noundef %412)
  store ptr null, ptr @implicit_sets, align 8, !tbaa !232
  %413 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %414 = icmp eq ptr %413, null
  br i1 %414, label %416, label %415, !prof !362

415:                                              ; preds = %402
  call fastcc void @dump_hash_table(ptr noundef nonnull %413, ptr noundef nonnull @.str.4, ptr noundef nonnull @set_hash_table)
  br label %416

416:                                              ; preds = %415, %402
  %417 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @set_hash_table, i64 0, i32 2), align 4, !tbaa !367
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %1236, label %419, !prof !368

419:                                              ; preds = %416
  %420 = load ptr, ptr @cfun, align 8, !tbaa !232
  %421 = getelementptr inbounds %struct.function, ptr %420, i64 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !280
  %423 = getelementptr inbounds %struct.control_flow_graph, ptr %422, i64 0, i32 5
  %424 = load i32, ptr %423, align 8, !tbaa !287
  %425 = call ptr @sbitmap_vector_alloc(i32 noundef %424, i32 noundef %417) #19
  store ptr %425, ptr @cprop_pavloc, align 8, !tbaa !232
  %426 = call ptr @sbitmap_vector_alloc(i32 noundef %424, i32 noundef %417) #19
  store ptr %426, ptr @cprop_absaltered, align 8, !tbaa !232
  %427 = call ptr @sbitmap_vector_alloc(i32 noundef %424, i32 noundef %417) #19
  store ptr %427, ptr @cprop_avin, align 8, !tbaa !232
  %428 = call ptr @sbitmap_vector_alloc(i32 noundef %424, i32 noundef %417) #19
  store ptr %428, ptr @cprop_avout, align 8, !tbaa !232
  %429 = load ptr, ptr @cprop_absaltered, align 8, !tbaa !232
  %430 = load ptr, ptr @cprop_pavloc, align 8, !tbaa !232
  call fastcc void @compute_local_properties(ptr noundef %429, ptr noundef %430, ptr noundef null, ptr noundef nonnull @set_hash_table)
  %431 = load ptr, ptr @cprop_pavloc, align 8, !tbaa !232
  %432 = load ptr, ptr @cprop_absaltered, align 8, !tbaa !232
  %433 = load ptr, ptr @cprop_avout, align 8, !tbaa !232
  %434 = load ptr, ptr @cprop_avin, align 8, !tbaa !232
  call void @compute_available(ptr noundef %431, ptr noundef %432, ptr noundef %433, ptr noundef %434) #19
  %435 = load ptr, ptr @cfun, align 8, !tbaa !232
  %436 = getelementptr inbounds %struct.function, ptr %435, i64 0, i32 1
  %437 = load ptr, ptr %436, align 8, !tbaa !280
  %438 = load ptr, ptr %437, align 8, !tbaa !288
  %439 = getelementptr inbounds %struct.basic_block_def, ptr %438, i64 0, i32 6
  %440 = load ptr, ptr %439, align 8, !tbaa !289
  %441 = getelementptr inbounds %struct.basic_block_def, ptr %440, i64 0, i32 6
  %442 = load ptr, ptr %441, align 8, !tbaa !289
  %443 = load ptr, ptr @cfun, align 8, !tbaa !232
  %444 = getelementptr inbounds %struct.function, ptr %443, i64 0, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !280
  %446 = getelementptr inbounds %struct.control_flow_graph, ptr %445, i64 0, i32 1
  %447 = load ptr, ptr %446, align 8, !tbaa !291
  %448 = icmp eq ptr %442, %447
  br i1 %448, label %777, label %449, !prof !292

449:                                              ; preds = %419, %767
  %450 = phi ptr [ %770, %767 ], [ %442, %419 ]
  %451 = phi i32 [ %768, %767 ], [ 0, %419 ]
  %452 = load ptr, ptr @reg_set_bitmap, align 8, !tbaa !232
  call void @bitmap_clear(ptr noundef %452) #19
  call fastcc void @clear_modify_mem_tables()
  %453 = getelementptr inbounds %struct.basic_block_def, ptr %450, i64 0, i32 7
  %454 = load ptr, ptr %453, align 8, !tbaa !243
  %455 = load ptr, ptr %454, align 8, !tbaa !243
  %456 = icmp eq ptr %455, null
  br i1 %456, label %767, label %457, !prof !292

457:                                              ; preds = %449, %762
  %458 = phi ptr [ %765, %762 ], [ %455, %449 ]
  %459 = phi i32 [ %763, %762 ], [ %451, %449 ]
  %460 = load ptr, ptr %453, align 8, !tbaa !243
  %461 = getelementptr inbounds %struct.rtl_bb_info, ptr %460, i64 0, i32 1
  %462 = load ptr, ptr %461, align 8, !tbaa !293
  %463 = getelementptr inbounds %struct.rtx_def, ptr %462, i64 0, i32 1, i32 0, i32 0, i64 2
  %464 = load ptr, ptr %463, align 8, !tbaa !243
  %465 = icmp eq ptr %458, %464
  br i1 %465, label %767, label %466, !prof !369

466:                                              ; preds = %457
  %467 = load i32, ptr %458, align 8
  %468 = and i32 %467, 65535
  %469 = add nsw i32 %468, -7
  %470 = icmp ult i32 %469, 4
  br i1 %470, label %471, label %762, !prof !370

471:                                              ; preds = %466
  store i32 0, ptr @reg_use_count, align 4, !tbaa !247
  %472 = getelementptr inbounds %struct.rtx_def, ptr %458, i64 0, i32 1
  %473 = getelementptr inbounds %struct.rtx_def, ptr %458, i64 1
  call void @note_uses(ptr noundef nonnull %473, ptr noundef nonnull @find_used_regs, ptr noundef null) #19
  %474 = call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %458) #19
  %475 = icmp eq ptr %474, null
  br i1 %475, label %478, label %476, !prof !371

476:                                              ; preds = %471
  %477 = getelementptr inbounds %struct.rtx_def, ptr %474, i64 0, i32 1
  call void @find_used_regs(ptr noundef nonnull %477, ptr noundef null)
  br label %478

478:                                              ; preds = %476, %471
  %479 = load i32, ptr @reg_use_count, align 4, !tbaa !247
  %480 = icmp sgt i32 %479, 0
  br i1 %480, label %481, label %655, !prof !372

481:                                              ; preds = %478, %650
  %482 = phi ptr [ %651, %650 ], [ @reg_use_table, %478 ]
  %483 = phi i32 [ %649, %650 ], [ 0, %478 ]
  %484 = load ptr, ptr %482, align 8, !tbaa !301
  %485 = getelementptr inbounds %struct.rtx_def, ptr %484, i64 0, i32 1
  %486 = load i32, ptr %485, align 8, !tbaa !243
  %487 = call fastcc i32 @oprs_not_set_p(ptr noundef %484, ptr noundef nonnull %458), !range !321
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %647, label %489, !prof !373

489:                                              ; preds = %481, %584
  %490 = phi ptr [ %585, %584 ], [ null, %481 ]
  %491 = phi i32 [ %586, %584 ], [ %486, %481 ]
  %492 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @set_hash_table, i64 0, i32 1), align 8, !tbaa !363
  %493 = urem i32 %491, %492
  %494 = load ptr, ptr @set_hash_table, align 8, !tbaa !365
  %495 = zext i32 %493 to i64
  %496 = getelementptr inbounds ptr, ptr %494, i64 %495
  %497 = load ptr, ptr %496, align 8, !tbaa !232
  %498 = icmp eq ptr %497, null
  br i1 %498, label %511, label %499, !prof !374

499:                                              ; preds = %489, %507
  %500 = phi ptr [ %509, %507 ], [ %497, %489 ]
  %501 = load ptr, ptr %500, align 8, !tbaa !375
  %502 = getelementptr inbounds %struct.rtx_def, ptr %501, i64 0, i32 1
  %503 = load ptr, ptr %502, align 8, !tbaa !243
  %504 = getelementptr inbounds %struct.rtx_def, ptr %503, i64 0, i32 1
  %505 = load i32, ptr %504, align 8, !tbaa !243
  %506 = icmp eq i32 %505, %491
  br i1 %506, label %511, label %507, !prof !377

507:                                              ; preds = %499
  %508 = getelementptr inbounds %struct.expr, ptr %500, i64 0, i32 2
  %509 = load ptr, ptr %508, align 8, !tbaa !232
  %510 = icmp eq ptr %509, null
  br i1 %510, label %511, label %499, !prof !378, !llvm.loop !379

511:                                              ; preds = %507, %499, %489
  %512 = phi ptr [ %497, %489 ], [ %509, %507 ], [ %500, %499 ]
  %513 = icmp eq ptr %512, null
  br i1 %513, label %584, label %514, !prof !380

514:                                              ; preds = %511
  %515 = getelementptr inbounds %struct.rtx_def, ptr %458, i64 0, i32 1, i32 0, i32 1
  %516 = load ptr, ptr @cprop_avin, align 8, !tbaa !232
  %517 = load ptr, ptr %515, align 8, !tbaa !243
  %518 = getelementptr inbounds %struct.basic_block_def, ptr %517, i64 0, i32 9
  %519 = load i32, ptr %518, align 8, !tbaa !359
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds ptr, ptr %516, i64 %520
  %522 = load ptr, ptr %521, align 8, !tbaa !232
  %523 = getelementptr inbounds %struct.expr, ptr %512, i64 0, i32 1
  %524 = load i32, ptr %523, align 8, !tbaa !381
  %525 = lshr i32 %524, 6
  %526 = zext nneg i32 %525 to i64
  %527 = getelementptr inbounds %struct.simple_bitmap_def, ptr %522, i64 0, i32 3, i64 %526
  %528 = load i64, ptr %527, align 8, !tbaa !382
  %529 = and i32 %524, 63
  %530 = zext nneg i32 %529 to i64
  %531 = shl nuw i64 1, %530
  %532 = and i64 %531, %528
  %533 = icmp eq i64 %532, 0
  br i1 %533, label %534, label %559, !prof !383

534:                                              ; preds = %514, %546
  %535 = phi ptr [ %537, %546 ], [ %512, %514 ]
  %536 = getelementptr inbounds %struct.expr, ptr %535, i64 0, i32 2
  %537 = load ptr, ptr %536, align 8, !tbaa !384
  %538 = icmp eq ptr %537, null
  br i1 %538, label %584, label %539, !prof !385

539:                                              ; preds = %534
  %540 = load ptr, ptr %537, align 8, !tbaa !375
  %541 = getelementptr inbounds %struct.rtx_def, ptr %540, i64 0, i32 1
  %542 = load ptr, ptr %541, align 8, !tbaa !243
  %543 = getelementptr inbounds %struct.rtx_def, ptr %542, i64 0, i32 1
  %544 = load i32, ptr %543, align 8, !tbaa !243
  %545 = icmp eq i32 %544, %491
  br i1 %545, label %547, label %546, !prof !386

546:                                              ; preds = %539, %547
  br label %534, !llvm.loop !387

547:                                              ; preds = %539
  %548 = getelementptr inbounds %struct.expr, ptr %537, i64 0, i32 1
  %549 = load i32, ptr %548, align 8, !tbaa !381
  %550 = lshr i32 %549, 6
  %551 = zext nneg i32 %550 to i64
  %552 = getelementptr inbounds %struct.simple_bitmap_def, ptr %522, i64 0, i32 3, i64 %551
  %553 = load i64, ptr %552, align 8, !tbaa !382
  %554 = and i32 %549, 63
  %555 = zext nneg i32 %554 to i64
  %556 = shl nuw i64 1, %555
  %557 = and i64 %556, %553
  %558 = icmp eq i64 %557, 0
  br i1 %558, label %546, label %559, !prof !388

559:                                              ; preds = %547, %514
  %560 = phi ptr [ %512, %514 ], [ %537, %547 ]
  %561 = load ptr, ptr %560, align 8, !tbaa !375
  %562 = load i32, ptr %561, align 8
  %563 = and i32 %562, 65535
  %564 = icmp eq i32 %563, 23
  br i1 %564, label %566, label %565, !prof !389

565:                                              ; preds = %559
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 2334, ptr noundef nonnull @.str.17) #19
  br label %566

566:                                              ; preds = %565, %559
  %567 = load ptr, ptr %560, align 8, !tbaa !375
  %568 = getelementptr inbounds %struct.rtx_def, ptr %567, i64 0, i32 1, i32 0, i32 0, i64 1
  %569 = load ptr, ptr %568, align 8, !tbaa !243
  %570 = call fastcc zeroext i8 @gcse_constant_p(ptr noundef %569), !range !285
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %572, label %575, !prof !390

572:                                              ; preds = %566
  %573 = call fastcc i32 @oprs_not_set_p(ptr noundef %569, ptr noundef nonnull %458), !range !321
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %576, label %575, !prof !391

575:                                              ; preds = %572, %566
  br label %576

576:                                              ; preds = %575, %572
  %577 = phi ptr [ %560, %575 ], [ %490, %572 ]
  %578 = load i32, ptr %569, align 8
  %579 = and i32 %578, 65535
  %580 = icmp eq i32 %579, 37
  br i1 %580, label %581, label %584, !prof !390

581:                                              ; preds = %576
  %582 = getelementptr inbounds %struct.rtx_def, ptr %569, i64 0, i32 1
  %583 = load i32, ptr %582, align 8, !tbaa !243
  br label %584

584:                                              ; preds = %534, %511, %581, %576
  %585 = phi ptr [ %577, %581 ], [ %577, %576 ], [ %490, %511 ], [ %490, %534 ]
  %586 = phi i32 [ %583, %581 ], [ %491, %576 ], [ %491, %511 ], [ %491, %534 ]
  %587 = phi i1 [ true, %581 ], [ false, %576 ], [ false, %511 ], [ false, %534 ]
  br i1 %587, label %489, label %588, !prof !392

588:                                              ; preds = %584
  %589 = icmp eq ptr %585, null
  br i1 %589, label %647, label %590, !prof !393

590:                                              ; preds = %588
  %591 = load ptr, ptr %585, align 8, !tbaa !375
  %592 = load i32, ptr %591, align 8
  %593 = and i32 %592, 65535
  %594 = icmp eq i32 %593, 23
  br i1 %594, label %596, label %595, !prof !389

595:                                              ; preds = %590
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 2554, ptr noundef nonnull @.str.17) #19
  br label %596

596:                                              ; preds = %595, %590
  %597 = getelementptr inbounds %struct.rtx_def, ptr %591, i64 0, i32 1, i32 0, i32 0, i64 1
  %598 = load ptr, ptr %597, align 8, !tbaa !243
  %599 = call fastcc zeroext i8 @gcse_constant_p(ptr noundef %598), !range !285
  %600 = icmp eq i8 %599, 0
  br i1 %600, label %622, label %601, !prof !390

601:                                              ; preds = %596
  %602 = load ptr, ptr %482, align 8, !tbaa !301
  %603 = call fastcc zeroext i8 @constprop_register(ptr noundef nonnull %458, ptr noundef %602, ptr noundef %598), !range !285
  %604 = icmp eq i8 %603, 0
  br i1 %604, label %647, label %605, !prof !394

605:                                              ; preds = %601
  %606 = load i32, ptr @global_const_prop_count, align 4, !tbaa !247
  %607 = add nsw i32 %606, 1
  store i32 %607, ptr @global_const_prop_count, align 4, !tbaa !247
  %608 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %609 = icmp eq ptr %608, null
  br i1 %609, label %618, label %610

610:                                              ; preds = %605
  %611 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %608, ptr noundef nonnull @.str.24, i32 noundef %486)
  %612 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %613 = load i32, ptr %472, align 8, !tbaa !243
  %614 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %612, ptr noundef nonnull @.str.11, i32 noundef %613)
  %615 = load ptr, ptr @dump_file, align 8, !tbaa !232
  call void @print_rtl(ptr noundef %615, ptr noundef %598) #19
  %616 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %617 = call i32 @fputc(i32 10, ptr %616)
  br label %618

618:                                              ; preds = %610, %605
  %619 = load i32, ptr %458, align 8
  %620 = lshr i32 %619, 27
  %621 = and i32 %620, 1
  br label %647

622:                                              ; preds = %596
  %623 = load i32, ptr %598, align 8
  %624 = and i32 %623, 65535
  %625 = icmp eq i32 %624, 37
  br i1 %625, label %626, label %647, !prof !395

626:                                              ; preds = %622
  %627 = getelementptr inbounds %struct.rtx_def, ptr %598, i64 0, i32 1
  %628 = load i32, ptr %627, align 8, !tbaa !243
  %629 = icmp ult i32 %628, 53
  %630 = icmp eq i32 %628, %486
  %631 = select i1 %629, i1 true, i1 %630, !prof !391
  br i1 %631, label %647, label %632, !prof !391

632:                                              ; preds = %626
  %633 = load ptr, ptr %482, align 8, !tbaa !301
  %634 = call fastcc i32 @try_replace_reg(ptr noundef %633, ptr noundef nonnull %598, ptr noundef nonnull %458), !range !321
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %647, label %636, !prof !396

636:                                              ; preds = %632
  %637 = load i32, ptr @global_copy_prop_count, align 4, !tbaa !247
  %638 = add nsw i32 %637, 1
  store i32 %638, ptr @global_copy_prop_count, align 4, !tbaa !247
  %639 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %640 = icmp eq ptr %639, null
  br i1 %640, label %647, label %641, !prof !397

641:                                              ; preds = %636
  %642 = load i32, ptr %472, align 8, !tbaa !243
  %643 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %639, ptr noundef nonnull @.str.25, i32 noundef %486, i32 noundef %642)
  %644 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %645 = load i32, ptr %627, align 8, !tbaa !243
  %646 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %644, ptr noundef nonnull @.str.14, i32 noundef %645)
  br label %647

647:                                              ; preds = %641, %636, %632, %626, %622, %618, %601, %588, %481
  %648 = phi i32 [ 4, %481 ], [ 4, %588 ], [ 0, %622 ], [ 0, %626 ], [ 0, %636 ], [ 0, %641 ], [ 0, %632 ], [ 0, %601 ], [ %621, %618 ]
  %649 = phi i32 [ %483, %481 ], [ %483, %588 ], [ %483, %622 ], [ %483, %626 ], [ 1, %636 ], [ 1, %641 ], [ %483, %632 ], [ %483, %601 ], [ 1, %618 ]
  switch i32 %648, label %663 [
    i32 0, label %650
    i32 4, label %650
  ], !prof !398

650:                                              ; preds = %647, %647
  %651 = getelementptr inbounds %struct.reg_use, ptr %482, i64 1
  %652 = load i32, ptr @reg_use_count, align 4, !tbaa !247
  %653 = add nsw i32 %652, -1
  store i32 %653, ptr @reg_use_count, align 4, !tbaa !247
  %654 = icmp sgt i32 %652, 1
  br i1 %654, label %481, label %655, !prof !399, !llvm.loop !400

655:                                              ; preds = %650, %478
  %656 = phi i32 [ 0, %478 ], [ %649, %650 ]
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %662, label %658, !prof !401

658:                                              ; preds = %655
  %659 = load i32, ptr %458, align 8
  %660 = and i32 %659, 65535
  %661 = icmp eq i32 %660, 7
  br i1 %661, label %663, label %662, !prof !402

662:                                              ; preds = %658, %655
  br label %663

663:                                              ; preds = %647, %662, %658
  %664 = phi i32 [ %656, %662 ], [ 0, %658 ], [ 1, %647 ]
  %665 = or i32 %664, %459
  %666 = load i32, ptr %458, align 8
  %667 = and i32 %666, 65535
  %668 = icmp eq i32 %667, 13
  br i1 %668, label %762, label %669, !prof !403

669:                                              ; preds = %663
  %670 = load ptr, ptr %473, align 8, !tbaa !243
  %671 = load i32, ptr %670, align 8
  %672 = trunc i32 %671 to i16
  switch i16 %672, label %762 [
    i16 23, label %678
    i16 15, label %673
    i16 25, label %757
    i16 26, label %758
  ], !prof !404

673:                                              ; preds = %669
  %674 = getelementptr inbounds %struct.rtx_def, ptr %670, i64 0, i32 1
  %675 = load ptr, ptr %674, align 8, !tbaa !243
  %676 = load i32, ptr %675, align 8, !tbaa !405
  %677 = icmp sgt i32 %676, 0
  br i1 %677, label %702, label %762, !prof !407

678:                                              ; preds = %669, %684
  %679 = phi ptr [ %681, %684 ], [ %670, %669 ]
  %680 = getelementptr inbounds %struct.rtx_def, ptr %679, i64 0, i32 1
  %681 = load ptr, ptr %680, align 8, !tbaa !243
  %682 = load i32, ptr %681, align 8
  %683 = trunc i32 %682 to i16
  switch i16 %683, label %691 [
    i16 39, label %684
    i16 120, label %684
    i16 40, label %684
    i16 37, label %685
    i16 43, label %690
  ], !prof !408

684:                                              ; preds = %678, %678, %678
  br label %678, !llvm.loop !409

685:                                              ; preds = %678
  %686 = load ptr, ptr @reg_set_bitmap, align 8, !tbaa !232
  %687 = getelementptr inbounds %struct.rtx_def, ptr %681, i64 0, i32 1
  %688 = load i32, ptr %687, align 8, !tbaa !243
  %689 = call zeroext i8 @bitmap_set_bit(ptr noundef %686, i32 noundef %688) #19
  br label %691

690:                                              ; preds = %678
  call fastcc void @record_last_mem_set_info(ptr noundef nonnull %458)
  br label %691

691:                                              ; preds = %678, %690, %685
  %692 = getelementptr inbounds %struct.rtx_def, ptr %670, i64 0, i32 1, i32 0, i32 0, i64 1
  %693 = load ptr, ptr %692, align 8, !tbaa !243
  %694 = load i32, ptr %693, align 8
  %695 = and i32 %694, 65535
  %696 = icmp eq i32 %695, 26
  br i1 %696, label %697, label %762, !prof !410

697:                                              ; preds = %691
  %698 = load i32, ptr %458, align 8
  %699 = and i32 %698, -2080374784
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %701, label %762, !prof !411

701:                                              ; preds = %697
  call fastcc void @record_last_mem_set_info(ptr noundef nonnull %458)
  br label %762

702:                                              ; preds = %673, %751
  %703 = phi i64 [ %752, %751 ], [ 0, %673 ]
  %704 = phi ptr [ %753, %751 ], [ %675, %673 ]
  %705 = getelementptr inbounds %struct.rtvec_def, ptr %704, i64 0, i32 1, i64 %703
  %706 = load ptr, ptr %705, align 8, !tbaa !232
  %707 = load i32, ptr %706, align 8
  %708 = trunc i32 %707 to i16
  switch i16 %708, label %751 [
    i16 23, label %709
    i16 25, label %733
    i16 26, label %746
  ], !prof !412

709:                                              ; preds = %702, %715
  %710 = phi ptr [ %712, %715 ], [ %706, %702 ]
  %711 = getelementptr inbounds %struct.rtx_def, ptr %710, i64 0, i32 1
  %712 = load ptr, ptr %711, align 8, !tbaa !243
  %713 = load i32, ptr %712, align 8
  %714 = trunc i32 %713 to i16
  switch i16 %714, label %722 [
    i16 39, label %715
    i16 120, label %715
    i16 40, label %715
    i16 37, label %716
    i16 43, label %721
  ], !prof !408

715:                                              ; preds = %709, %709, %709
  br label %709, !llvm.loop !409

716:                                              ; preds = %709
  %717 = load ptr, ptr @reg_set_bitmap, align 8, !tbaa !232
  %718 = getelementptr inbounds %struct.rtx_def, ptr %712, i64 0, i32 1
  %719 = load i32, ptr %718, align 8, !tbaa !243
  %720 = call zeroext i8 @bitmap_set_bit(ptr noundef %717, i32 noundef %719) #19
  br label %722

721:                                              ; preds = %709
  call fastcc void @record_last_mem_set_info(ptr noundef nonnull %458)
  br label %722

722:                                              ; preds = %709, %721, %716
  %723 = getelementptr inbounds %struct.rtx_def, ptr %706, i64 0, i32 1, i32 0, i32 0, i64 1
  %724 = load ptr, ptr %723, align 8, !tbaa !243
  %725 = load i32, ptr %724, align 8
  %726 = and i32 %725, 65535
  %727 = icmp eq i32 %726, 26
  br i1 %727, label %728, label %751, !prof !410

728:                                              ; preds = %722
  %729 = load i32, ptr %458, align 8
  %730 = and i32 %729, -2080374784
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %732, label %751, !prof !411

732:                                              ; preds = %728
  call fastcc void @record_last_mem_set_info(ptr noundef nonnull %458)
  br label %751

733:                                              ; preds = %702, %739
  %734 = phi ptr [ %736, %739 ], [ %706, %702 ]
  %735 = getelementptr inbounds %struct.rtx_def, ptr %734, i64 0, i32 1
  %736 = load ptr, ptr %735, align 8, !tbaa !243
  %737 = load i32, ptr %736, align 8
  %738 = trunc i32 %737 to i16
  switch i16 %738, label %745 [
    i16 39, label %739
    i16 40, label %739
    i16 37, label %740
  ], !prof !413

739:                                              ; preds = %733, %733
  br label %733, !llvm.loop !414

740:                                              ; preds = %733
  %741 = load ptr, ptr @reg_set_bitmap, align 8, !tbaa !232
  %742 = getelementptr inbounds %struct.rtx_def, ptr %736, i64 0, i32 1
  %743 = load i32, ptr %742, align 8, !tbaa !243
  %744 = call zeroext i8 @bitmap_set_bit(ptr noundef %741, i32 noundef %743) #19
  br label %751

745:                                              ; preds = %733
  call fastcc void @record_last_mem_set_info(ptr noundef nonnull %458)
  br label %751

746:                                              ; preds = %702
  %747 = load i32, ptr %458, align 8
  %748 = and i32 %747, -2080374784
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %750, label %751

750:                                              ; preds = %746
  call fastcc void @record_last_mem_set_info(ptr noundef nonnull %458)
  br label %751

751:                                              ; preds = %745, %740, %732, %728, %722, %750, %746, %702
  %752 = add nuw nsw i64 %703, 1
  %753 = load ptr, ptr %674, align 8, !tbaa !243
  %754 = load i32, ptr %753, align 8, !tbaa !405
  %755 = sext i32 %754 to i64
  %756 = icmp slt i64 %752, %755
  br i1 %756, label %702, label %762, !prof !415, !llvm.loop !416

757:                                              ; preds = %669
  call fastcc void @mark_clobber(ptr noundef nonnull %670, ptr noundef nonnull %458)
  br label %762

758:                                              ; preds = %669
  %759 = and i32 %666, -2080374784
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %761, label %762, !prof !417

761:                                              ; preds = %758
  call fastcc void @record_last_mem_set_info(ptr noundef nonnull %458)
  br label %762

762:                                              ; preds = %751, %673, %701, %697, %691, %761, %758, %757, %669, %663, %466
  %763 = phi i32 [ %665, %663 ], [ %459, %466 ], [ %665, %669 ], [ %665, %757 ], [ %665, %758 ], [ %665, %761 ], [ %665, %691 ], [ %665, %697 ], [ %665, %701 ], [ %665, %673 ], [ %665, %751 ]
  %764 = getelementptr inbounds %struct.rtx_def, ptr %458, i64 0, i32 1, i32 0, i32 0, i64 2
  %765 = load ptr, ptr %764, align 8, !tbaa !243
  %766 = icmp eq ptr %765, null
  br i1 %766, label %767, label %457, !prof !418, !llvm.loop !419

767:                                              ; preds = %762, %457, %449
  %768 = phi i32 [ %451, %449 ], [ %763, %762 ], [ %459, %457 ]
  %769 = getelementptr inbounds %struct.basic_block_def, ptr %450, i64 0, i32 6
  %770 = load ptr, ptr %769, align 8, !tbaa !289
  %771 = load ptr, ptr @cfun, align 8, !tbaa !232
  %772 = getelementptr inbounds %struct.function, ptr %771, i64 0, i32 1
  %773 = load ptr, ptr %772, align 8, !tbaa !280
  %774 = getelementptr inbounds %struct.control_flow_graph, ptr %773, i64 0, i32 1
  %775 = load ptr, ptr %774, align 8, !tbaa !291
  %776 = icmp eq ptr %770, %775
  br i1 %776, label %777, label %449, !prof !420, !llvm.loop !421

777:                                              ; preds = %767, %419
  %778 = phi i32 [ 0, %419 ], [ %768, %767 ]
  %779 = phi ptr [ %445, %419 ], [ %773, %767 ]
  %780 = phi ptr [ %447, %419 ], [ %775, %767 ]
  %781 = load ptr, ptr %779, align 8, !tbaa !288
  %782 = getelementptr inbounds %struct.basic_block_def, ptr %781, i64 0, i32 6
  %783 = load ptr, ptr %782, align 8, !tbaa !289
  %784 = icmp eq ptr %783, %780
  br i1 %784, label %1229, label %785, !prof !368

785:                                              ; preds = %777
  %786 = getelementptr inbounds %struct.control_flow_graph, ptr %779, i64 0, i32 5
  %787 = load i32, ptr %786, align 8, !tbaa !287
  store i32 %787, ptr @bypass_last_basic_block, align 4, !tbaa !247
  %788 = call zeroext i8 @mark_dfs_back_edges() #19
  %789 = load ptr, ptr @cfun, align 8, !tbaa !232
  %790 = getelementptr inbounds %struct.function, ptr %789, i64 0, i32 1
  %791 = load ptr, ptr %790, align 8, !tbaa !280
  %792 = load ptr, ptr %791, align 8, !tbaa !288
  %793 = getelementptr inbounds %struct.basic_block_def, ptr %792, i64 0, i32 6
  %794 = load ptr, ptr %793, align 8, !tbaa !289
  %795 = getelementptr inbounds %struct.basic_block_def, ptr %794, i64 0, i32 6
  %796 = load ptr, ptr %795, align 8, !tbaa !289
  %797 = load ptr, ptr @cfun, align 8, !tbaa !232
  %798 = getelementptr inbounds %struct.function, ptr %797, i64 0, i32 1
  %799 = load ptr, ptr %798, align 8, !tbaa !280
  %800 = getelementptr inbounds %struct.control_flow_graph, ptr %799, i64 0, i32 1
  %801 = load ptr, ptr %800, align 8, !tbaa !291
  %802 = icmp eq ptr %796, %801
  br i1 %802, label %1225, label %803, !prof !292

803:                                              ; preds = %785, %1215
  %804 = phi ptr [ %1218, %1215 ], [ %796, %785 ]
  %805 = phi i32 [ %1216, %1215 ], [ 0, %785 ]
  %806 = load ptr, ptr %804, align 8, !tbaa !356
  %807 = icmp eq ptr %806, null
  br i1 %807, label %812, label %808, !prof !422

808:                                              ; preds = %803
  %809 = load i32, ptr %806, align 8, !tbaa !338
  %810 = icmp eq i32 %809, 1
  %811 = zext i1 %810 to i8
  br label %812

812:                                              ; preds = %808, %803
  %813 = phi i8 [ %811, %808 ], [ 0, %803 ]
  %814 = icmp eq i8 %813, 0
  br i1 %814, label %815, label %1215, !prof !423

815:                                              ; preds = %812
  %816 = getelementptr inbounds %struct.basic_block_def, ptr %804, i64 0, i32 7
  %817 = load ptr, ptr %816, align 8, !tbaa !243
  %818 = load ptr, ptr %817, align 8, !tbaa !243
  %819 = icmp eq ptr %818, null
  br i1 %819, label %1215, label %820, !prof !424

820:                                              ; preds = %815
  %821 = getelementptr inbounds %struct.rtl_bb_info, ptr %817, i64 0, i32 1
  %822 = load ptr, ptr %821, align 8, !tbaa !293
  %823 = getelementptr inbounds %struct.rtx_def, ptr %822, i64 0, i32 1, i32 0, i32 0, i64 2
  %824 = load ptr, ptr %823, align 8, !tbaa !243
  br label %825

825:                                              ; preds = %820, %1210
  %826 = phi ptr [ %818, %820 ], [ %1213, %1210 ]
  %827 = phi ptr [ null, %820 ], [ %1211, %1210 ]
  %828 = icmp eq ptr %826, %824
  br i1 %828, label %1215, label %829, !prof !425

829:                                              ; preds = %825
  %830 = load i32, ptr %826, align 8
  %831 = trunc i32 %830 to i16
  switch i16 %831, label %1210 [
    i16 10, label %1215
    i16 8, label %832
    i16 9, label %846
  ], !prof !426

832:                                              ; preds = %829
  %833 = icmp eq ptr %827, null
  br i1 %833, label %834, label %1215, !prof !427

834:                                              ; preds = %832
  %835 = getelementptr inbounds %struct.rtx_def, ptr %826, i64 1
  %836 = load ptr, ptr %835, align 8, !tbaa !243
  %837 = load i32, ptr %836, align 8
  %838 = and i32 %837, 65535
  %839 = icmp eq i32 %838, 23
  br i1 %839, label %840, label %1215, !prof !428

840:                                              ; preds = %834
  %841 = getelementptr inbounds %struct.rtx_def, ptr %836, i64 0, i32 1
  %842 = load ptr, ptr %841, align 8, !tbaa !243
  %843 = load i32, ptr %842, align 8
  %844 = and i32 %843, 65535
  %845 = icmp eq i32 %844, 37
  br i1 %845, label %1210, label %1215, !prof !429

846:                                              ; preds = %829
  %847 = call i32 @any_condjump_p(ptr noundef nonnull %826) #19
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %849, label %852, !prof !430

849:                                              ; preds = %846
  %850 = call i32 @computed_jump_p(ptr noundef nonnull %826) #19
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %1215, label %852

852:                                              ; preds = %849, %846
  %853 = call i32 @onlyjump_p(ptr noundef nonnull %826) #19
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %1215, label %855, !prof !430

855:                                              ; preds = %852
  %856 = icmp ne ptr %827, null
  %857 = select i1 %856, ptr %827, ptr %826, !prof !431
  store i32 0, ptr @reg_use_count, align 4, !tbaa !247
  %858 = getelementptr inbounds %struct.rtx_def, ptr %857, i64 1
  call void @note_uses(ptr noundef nonnull %858, ptr noundef nonnull @find_used_regs, ptr noundef null) #19
  %859 = call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %857) #19
  %860 = icmp eq ptr %859, null
  br i1 %860, label %863, label %861, !prof !431

861:                                              ; preds = %855
  %862 = getelementptr inbounds %struct.rtx_def, ptr %859, i64 0, i32 1
  call void @find_used_regs(ptr noundef nonnull %862, ptr noundef null)
  br label %863

863:                                              ; preds = %861, %855
  br label %864

864:                                              ; preds = %863, %891
  %865 = phi i32 [ %892, %891 ], [ 0, %863 ]
  %866 = load ptr, ptr %804, align 8, !tbaa !232
  %867 = icmp eq ptr %866, null
  br i1 %867, label %870, label %868, !prof !432

868:                                              ; preds = %864
  %869 = load i32, ptr %866, align 8, !tbaa !338
  br label %870

870:                                              ; preds = %868, %864
  %871 = phi i32 [ %869, %868 ], [ 0, %864 ]
  %872 = icmp ne i32 %871, %865
  br i1 %872, label %873, label %877, !prof !433

873:                                              ; preds = %870
  %874 = zext i32 %865 to i64
  %875 = getelementptr inbounds %struct.VEC_edge_base, ptr %866, i64 0, i32 2, i64 %874
  %876 = load ptr, ptr %875, align 8, !tbaa !232
  br label %877

877:                                              ; preds = %873, %870
  %878 = phi ptr [ %876, %873 ], [ null, %870 ]
  br i1 %872, label %879, label %893, !prof !433

879:                                              ; preds = %877
  %880 = getelementptr inbounds %struct.edge_def, ptr %878, i64 0, i32 7
  %881 = load i32, ptr %880, align 8, !tbaa !350
  %882 = and i32 %881, 32
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %884, label %893, !prof !434

884:                                              ; preds = %879
  br i1 %867, label %887, label %885, !prof !435

885:                                              ; preds = %884
  %886 = load i32, ptr %866, align 8, !tbaa !338
  br label %887

887:                                              ; preds = %885, %884
  %888 = phi i32 [ %886, %885 ], [ 0, %884 ]
  %889 = icmp ult i32 %865, %888
  br i1 %889, label %891, label %890, !prof !434

890:                                              ; preds = %887
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 738, ptr noundef nonnull @.str.17) #19
  br label %891

891:                                              ; preds = %890, %887
  %892 = add i32 %865, 1
  br label %864, !llvm.loop !436

893:                                              ; preds = %879, %877
  br label %894

894:                                              ; preds = %1206, %893
  %895 = phi i32 [ 0, %893 ], [ %1207, %1206 ]
  %896 = phi i32 [ 0, %893 ], [ %1193, %1206 ]
  br label %897

897:                                              ; preds = %925, %894
  %898 = phi i32 [ %895, %894 ], [ %926, %925 ]
  %899 = load ptr, ptr %804, align 8, !tbaa !232
  %900 = icmp eq ptr %899, null
  br i1 %900, label %903, label %901, !prof !432

901:                                              ; preds = %897
  %902 = load i32, ptr %899, align 8, !tbaa !338
  br label %903

903:                                              ; preds = %901, %897
  %904 = phi i32 [ %902, %901 ], [ 0, %897 ]
  %905 = icmp eq i32 %904, %898
  br i1 %905, label %910, label %906, !prof !437

906:                                              ; preds = %903
  %907 = zext i32 %898 to i64
  %908 = getelementptr inbounds %struct.VEC_edge_base, ptr %899, i64 0, i32 2, i64 %907
  %909 = load ptr, ptr %908, align 8, !tbaa !232
  br label %910

910:                                              ; preds = %906, %903
  %911 = phi ptr [ %909, %906 ], [ null, %903 ]
  %912 = icmp eq ptr %911, null
  br i1 %912, label %1208, label %913, !prof !437

913:                                              ; preds = %910
  %914 = getelementptr inbounds %struct.edge_def, ptr %911, i64 0, i32 7
  %915 = load i32, ptr %914, align 8, !tbaa !350
  %916 = and i32 %915, 14
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %927, label %918, !prof !434

918:                                              ; preds = %913
  br i1 %900, label %921, label %919

919:                                              ; preds = %918
  %920 = load i32, ptr %899, align 8, !tbaa !338
  br label %921

921:                                              ; preds = %919, %918
  %922 = phi i32 [ %920, %919 ], [ 0, %918 ]
  %923 = icmp ult i32 %898, %922
  br i1 %923, label %925, label %924

924:                                              ; preds = %921, %949, %936
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 738, ptr noundef nonnull @.str.17) #19
  br label %925

925:                                              ; preds = %924, %949, %936, %921
  %926 = add i32 %898, 1
  br label %897, !llvm.loop !438

927:                                              ; preds = %913
  %928 = load ptr, ptr %911, align 8, !tbaa !439
  %929 = getelementptr inbounds %struct.basic_block_def, ptr %928, i64 0, i32 9
  %930 = load i32, ptr %929, align 8, !tbaa !359
  %931 = load i32, ptr @bypass_last_basic_block, align 4, !tbaa !247
  %932 = icmp slt i32 %930, %931
  br i1 %932, label %939, label %933, !prof !434

933:                                              ; preds = %927
  br i1 %900, label %936, label %934

934:                                              ; preds = %933
  %935 = load i32, ptr %899, align 8, !tbaa !338
  br label %936

936:                                              ; preds = %934, %933
  %937 = phi i32 [ %935, %934 ], [ 0, %933 ]
  %938 = icmp ult i32 %898, %937
  br i1 %938, label %925, label %924

939:                                              ; preds = %927
  %940 = and i32 %915, 32
  %941 = icmp eq i32 %940, 0
  %942 = and i1 %872, %941
  br i1 %942, label %946, label %943, !prof !435

943:                                              ; preds = %939
  %944 = load i32, ptr @reg_use_count, align 4, !tbaa !247
  %945 = icmp sgt i32 %944, 0
  br i1 %945, label %952, label %1191, !prof !440

946:                                              ; preds = %939
  br i1 %900, label %949, label %947

947:                                              ; preds = %946
  %948 = load i32, ptr %899, align 8, !tbaa !338
  br label %949

949:                                              ; preds = %947, %946
  %950 = phi i32 [ %948, %947 ], [ 0, %946 ]
  %951 = icmp ult i32 %898, %950
  br i1 %951, label %925, label %924

952:                                              ; preds = %943, %1182
  %953 = phi i64 [ %1186, %1182 ], [ 0, %943 ]
  %954 = phi i32 [ %1184, %1182 ], [ %896, %943 ]
  %955 = phi i32 [ %1183, %1182 ], [ 0, %943 ]
  %956 = getelementptr inbounds [8 x %struct.reg_use], ptr @reg_use_table, i64 0, i64 %953
  %957 = load ptr, ptr %956, align 8, !tbaa !301
  %958 = getelementptr inbounds %struct.rtx_def, ptr %957, i64 0, i32 1
  %959 = load i32, ptr %958, align 8, !tbaa !243
  %960 = load ptr, ptr %911, align 8, !tbaa !439
  %961 = getelementptr inbounds %struct.basic_block_def, ptr %960, i64 0, i32 9
  %962 = load i32, ptr %961, align 8, !tbaa !359
  %963 = sext i32 %962 to i64
  br label %964

964:                                              ; preds = %1049, %952
  %965 = phi ptr [ null, %952 ], [ %1050, %1049 ]
  %966 = phi i32 [ %959, %952 ], [ %1051, %1049 ]
  %967 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @set_hash_table, i64 0, i32 1), align 8, !tbaa !363
  %968 = urem i32 %966, %967
  %969 = load ptr, ptr @set_hash_table, align 8, !tbaa !365
  %970 = zext i32 %968 to i64
  %971 = getelementptr inbounds ptr, ptr %969, i64 %970
  %972 = load ptr, ptr %971, align 8, !tbaa !232
  %973 = icmp eq ptr %972, null
  br i1 %973, label %986, label %974, !prof !441

974:                                              ; preds = %964, %982
  %975 = phi ptr [ %984, %982 ], [ %972, %964 ]
  %976 = load ptr, ptr %975, align 8, !tbaa !375
  %977 = getelementptr inbounds %struct.rtx_def, ptr %976, i64 0, i32 1
  %978 = load ptr, ptr %977, align 8, !tbaa !243
  %979 = getelementptr inbounds %struct.rtx_def, ptr %978, i64 0, i32 1
  %980 = load i32, ptr %979, align 8, !tbaa !243
  %981 = icmp eq i32 %980, %966
  br i1 %981, label %986, label %982, !prof !442

982:                                              ; preds = %974
  %983 = getelementptr inbounds %struct.expr, ptr %975, i64 0, i32 2
  %984 = load ptr, ptr %983, align 8, !tbaa !232
  %985 = icmp eq ptr %984, null
  br i1 %985, label %986, label %974, !prof !443, !llvm.loop !379

986:                                              ; preds = %982, %974, %964
  %987 = phi ptr [ %972, %964 ], [ %984, %982 ], [ %975, %974 ]
  %988 = icmp eq ptr %987, null
  br i1 %988, label %1049, label %989, !prof !444

989:                                              ; preds = %986
  %990 = load ptr, ptr @cprop_avout, align 8, !tbaa !232
  %991 = getelementptr inbounds ptr, ptr %990, i64 %963
  %992 = load ptr, ptr %991, align 8, !tbaa !232
  %993 = getelementptr inbounds %struct.expr, ptr %987, i64 0, i32 1
  %994 = load i32, ptr %993, align 8, !tbaa !381
  %995 = lshr i32 %994, 6
  %996 = zext nneg i32 %995 to i64
  %997 = getelementptr inbounds %struct.simple_bitmap_def, ptr %992, i64 0, i32 3, i64 %996
  %998 = load i64, ptr %997, align 8, !tbaa !382
  %999 = and i32 %994, 63
  %1000 = zext nneg i32 %999 to i64
  %1001 = shl nuw i64 1, %1000
  %1002 = and i64 %1001, %998
  %1003 = icmp eq i64 %1002, 0
  br i1 %1003, label %1004, label %1029, !prof !445

1004:                                             ; preds = %989, %1016
  %1005 = phi ptr [ %1007, %1016 ], [ %987, %989 ]
  %1006 = getelementptr inbounds %struct.expr, ptr %1005, i64 0, i32 2
  %1007 = load ptr, ptr %1006, align 8, !tbaa !384
  %1008 = icmp eq ptr %1007, null
  br i1 %1008, label %1049, label %1009, !prof !446

1009:                                             ; preds = %1004
  %1010 = load ptr, ptr %1007, align 8, !tbaa !375
  %1011 = getelementptr inbounds %struct.rtx_def, ptr %1010, i64 0, i32 1
  %1012 = load ptr, ptr %1011, align 8, !tbaa !243
  %1013 = getelementptr inbounds %struct.rtx_def, ptr %1012, i64 0, i32 1
  %1014 = load i32, ptr %1013, align 8, !tbaa !243
  %1015 = icmp eq i32 %1014, %966
  br i1 %1015, label %1017, label %1016, !prof !447

1016:                                             ; preds = %1009, %1017
  br label %1004, !llvm.loop !448

1017:                                             ; preds = %1009
  %1018 = getelementptr inbounds %struct.expr, ptr %1007, i64 0, i32 1
  %1019 = load i32, ptr %1018, align 8, !tbaa !381
  %1020 = lshr i32 %1019, 6
  %1021 = zext nneg i32 %1020 to i64
  %1022 = getelementptr inbounds %struct.simple_bitmap_def, ptr %992, i64 0, i32 3, i64 %1021
  %1023 = load i64, ptr %1022, align 8, !tbaa !382
  %1024 = and i32 %1019, 63
  %1025 = zext nneg i32 %1024 to i64
  %1026 = shl nuw i64 1, %1025
  %1027 = and i64 %1026, %1023
  %1028 = icmp eq i64 %1027, 0
  br i1 %1028, label %1016, label %1029, !prof !449

1029:                                             ; preds = %1017, %989
  %1030 = phi ptr [ %987, %989 ], [ %1007, %1017 ]
  %1031 = load ptr, ptr %1030, align 8, !tbaa !375
  %1032 = load i32, ptr %1031, align 8
  %1033 = and i32 %1032, 65535
  %1034 = icmp eq i32 %1033, 23
  br i1 %1034, label %1036, label %1035, !prof !450

1035:                                             ; preds = %1029
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 2908, ptr noundef nonnull @.str.17) #19
  br label %1036

1036:                                             ; preds = %1035, %1029
  %1037 = load ptr, ptr %1030, align 8, !tbaa !375
  %1038 = getelementptr inbounds %struct.rtx_def, ptr %1037, i64 0, i32 1, i32 0, i32 0, i64 1
  %1039 = load ptr, ptr %1038, align 8, !tbaa !243
  %1040 = call fastcc zeroext i8 @gcse_constant_p(ptr noundef %1039), !range !285
  %1041 = icmp eq i8 %1040, 0
  %1042 = select i1 %1041, ptr %965, ptr %1030, !prof !451
  %1043 = load i32, ptr %1039, align 8
  %1044 = and i32 %1043, 65535
  %1045 = icmp eq i32 %1044, 37
  br i1 %1045, label %1046, label %1049, !prof !451

1046:                                             ; preds = %1036
  %1047 = getelementptr inbounds %struct.rtx_def, ptr %1039, i64 0, i32 1
  %1048 = load i32, ptr %1047, align 8, !tbaa !243
  br label %1049

1049:                                             ; preds = %1004, %986, %1046, %1036
  %1050 = phi ptr [ %1042, %1046 ], [ %1042, %1036 ], [ %965, %986 ], [ %965, %1004 ]
  %1051 = phi i32 [ %1048, %1046 ], [ %966, %1036 ], [ %966, %986 ], [ %966, %1004 ]
  %1052 = phi i1 [ true, %1046 ], [ false, %1036 ], [ false, %986 ], [ false, %1004 ]
  br i1 %1052, label %964, label %1053, !prof !452

1053:                                             ; preds = %1049
  %1054 = icmp eq ptr %1050, null
  br i1 %1054, label %1182, label %1055, !prof !453

1055:                                             ; preds = %1053
  %1056 = getelementptr inbounds %struct.edge_def, ptr %911, i64 0, i32 2
  %1057 = load ptr, ptr %1056, align 8, !tbaa !243
  %1058 = icmp eq ptr %1057, null
  br i1 %1058, label %1076, label %1059, !prof !454

1059:                                             ; preds = %1055
  %1060 = load ptr, ptr %956, align 8, !tbaa !301
  %1061 = load ptr, ptr %1056, align 8, !tbaa !243
  %1062 = icmp eq ptr %1061, null
  br i1 %1062, label %1076, label %1063, !prof !455

1063:                                             ; preds = %1059, %1072
  %1064 = phi ptr [ %1074, %1072 ], [ %1061, %1059 ]
  %1065 = load i32, ptr %1064, align 8
  %1066 = and i32 %1065, 65535
  %1067 = add nsw i32 %1066, -7
  %1068 = icmp ult i32 %1067, 4
  br i1 %1068, label %1069, label %1072, !prof !456

1069:                                             ; preds = %1063
  %1070 = call i32 @reg_set_p(ptr noundef %1060, ptr noundef nonnull %1064) #19
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1072, label %1182, !prof !456

1072:                                             ; preds = %1069, %1063
  %1073 = getelementptr inbounds %struct.rtx_def, ptr %1064, i64 0, i32 1, i32 0, i32 0, i64 2
  %1074 = load ptr, ptr %1073, align 8, !tbaa !243
  %1075 = icmp eq ptr %1074, null
  br i1 %1075, label %1076, label %1063, !prof !457, !llvm.loop !458

1076:                                             ; preds = %1072, %1059, %1055
  %1077 = call ptr @pc_set(ptr noundef nonnull %826) #19
  %1078 = getelementptr inbounds %struct.rtx_def, ptr %1077, i64 0, i32 1, i32 0, i32 0, i64 1
  %1079 = load ptr, ptr %1078, align 8, !tbaa !243
  br i1 %856, label %1080, label %1088, !prof !459

1080:                                             ; preds = %1076
  %1081 = getelementptr inbounds %struct.rtx_def, ptr %827, i64 1
  %1082 = load ptr, ptr %1081, align 8, !tbaa !243
  %1083 = getelementptr inbounds %struct.rtx_def, ptr %1082, i64 0, i32 1
  %1084 = load ptr, ptr %1083, align 8, !tbaa !243
  %1085 = getelementptr inbounds %struct.rtx_def, ptr %1082, i64 0, i32 1, i32 0, i32 0, i64 1
  %1086 = load ptr, ptr %1085, align 8, !tbaa !243
  %1087 = call ptr @simplify_replace_rtx(ptr noundef %1079, ptr noundef %1084, ptr noundef %1086) #19
  br label %1088

1088:                                             ; preds = %1080, %1076
  %1089 = phi ptr [ %1087, %1080 ], [ %1079, %1076 ]
  %1090 = load ptr, ptr %956, align 8, !tbaa !301
  %1091 = load ptr, ptr %1050, align 8, !tbaa !375
  %1092 = getelementptr inbounds %struct.rtx_def, ptr %1091, i64 0, i32 1, i32 0, i32 0, i64 1
  %1093 = load ptr, ptr %1092, align 8, !tbaa !243
  %1094 = call ptr @simplify_replace_rtx(ptr noundef %1089, ptr noundef %1090, ptr noundef %1093) #19
  %1095 = load ptr, ptr @global_rtl, align 16, !tbaa !232
  %1096 = icmp eq ptr %1094, %1095
  br i1 %1096, label %1097, label %1117, !prof !454

1097:                                             ; preds = %1088
  %1098 = getelementptr inbounds %struct.basic_block_def, ptr %804, i64 0, i32 1
  %1099 = load ptr, ptr %1098, align 8, !tbaa !336
  %1100 = getelementptr inbounds %struct.VEC_edge_base, ptr %1099, i64 0, i32 2, i64 0
  %1101 = load ptr, ptr %1100, align 8, !tbaa !232
  %1102 = getelementptr inbounds %struct.edge_def, ptr %1101, i64 0, i32 7
  %1103 = load i32, ptr %1102, align 8, !tbaa !350
  %1104 = and i32 %1103, 1
  %1105 = icmp eq i32 %1104, 0
  br i1 %1105, label %1106, label %1109, !prof !456

1106:                                             ; preds = %1097
  %1107 = getelementptr inbounds %struct.VEC_edge_base, ptr %1099, i64 0, i32 2, i64 1
  %1108 = load ptr, ptr %1107, align 8, !tbaa !232
  br label %1109

1109:                                             ; preds = %1106, %1097
  %1110 = phi ptr [ %1108, %1106 ], [ %1101, %1097 ]
  %1111 = getelementptr inbounds %struct.edge_def, ptr %1110, i64 0, i32 2
  %1112 = load ptr, ptr %1111, align 8, !tbaa !243
  %1113 = icmp eq ptr %1112, null
  br i1 %1113, label %1114, label %1133, !prof !456

1114:                                             ; preds = %1109
  %1115 = getelementptr inbounds %struct.edge_def, ptr %1110, i64 0, i32 1
  %1116 = load ptr, ptr %1115, align 8, !tbaa !355
  br label %1133

1117:                                             ; preds = %1088
  %1118 = load i32, ptr %1094, align 8
  %1119 = and i32 %1118, 65535
  %1120 = icmp eq i32 %1119, 44
  br i1 %1120, label %1121, label %1133, !prof !456

1121:                                             ; preds = %1117
  %1122 = getelementptr inbounds %struct.rtx_def, ptr %1094, i64 0, i32 1
  %1123 = load ptr, ptr %1122, align 8, !tbaa !243
  %1124 = getelementptr inbounds %struct.rtx_def, ptr %1123, i64 0, i32 1, i32 0, i32 1
  %1125 = load ptr, ptr %1124, align 8, !tbaa !243
  %1126 = call ptr @find_edge(ptr noundef nonnull %804, ptr noundef %1125) #19
  %1127 = icmp eq ptr %1126, null
  br i1 %1127, label %1133, label %1128, !prof !460

1128:                                             ; preds = %1121
  %1129 = getelementptr inbounds %struct.edge_def, ptr %1126, i64 0, i32 2
  %1130 = load ptr, ptr %1129, align 8, !tbaa !243
  %1131 = icmp eq ptr %1130, null
  %1132 = select i1 %1131, ptr %1125, ptr null, !prof !456
  br label %1133

1133:                                             ; preds = %1128, %1121, %1117, %1114, %1109
  %1134 = phi ptr [ %1125, %1121 ], [ %1116, %1114 ], [ null, %1109 ], [ %1132, %1128 ], [ null, %1117 ]
  %1135 = icmp ne ptr %1134, null
  %1136 = and i1 %856, %1135
  br i1 %1136, label %1137, label %1142, !prof !459

1137:                                             ; preds = %1133
  %1138 = load ptr, ptr %911, align 8, !tbaa !439
  %1139 = call ptr @find_edge(ptr noundef %1138, ptr noundef nonnull %1134) #19
  %1140 = icmp eq ptr %1139, null
  %1141 = select i1 %1140, ptr %1134, ptr null, !prof !459
  br label %1142

1142:                                             ; preds = %1137, %1133
  %1143 = phi ptr [ %1134, %1133 ], [ %1141, %1137 ]
  %1144 = getelementptr inbounds %struct.edge_def, ptr %911, i64 0, i32 1
  %1145 = load ptr, ptr %1144, align 8, !tbaa !355
  %1146 = icmp eq ptr %1143, null
  %1147 = icmp eq ptr %1143, %1145
  %1148 = select i1 %1146, i1 true, i1 %1147, !prof !461
  br i1 %1148, label %1182, label %1149, !prof !461

1149:                                             ; preds = %1142
  %1150 = load ptr, ptr @cfun, align 8, !tbaa !232
  %1151 = getelementptr inbounds %struct.function, ptr %1150, i64 0, i32 1
  %1152 = load ptr, ptr %1151, align 8, !tbaa !280
  %1153 = getelementptr inbounds %struct.control_flow_graph, ptr %1152, i64 0, i32 1
  %1154 = load ptr, ptr %1153, align 8, !tbaa !291
  %1155 = icmp eq ptr %1143, %1154
  br i1 %1155, label %1182, label %1156, !prof !461

1156:                                             ; preds = %1149
  %1157 = call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %911, ptr noundef nonnull %1143) #19
  br i1 %856, label %1158, label %1162, !prof !459

1158:                                             ; preds = %1156
  %1159 = getelementptr inbounds %struct.rtx_def, ptr %827, i64 1
  %1160 = load ptr, ptr %1159, align 8, !tbaa !243
  %1161 = call ptr @copy_insn(ptr noundef %1160) #19
  call void @insert_insn_on_edge(ptr noundef %1161, ptr noundef nonnull %911) #19
  br label %1162

1162:                                             ; preds = %1158, %1156
  %1163 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %1164 = icmp eq ptr %1163, null
  br i1 %1164, label %1182, label %1165, !prof !459

1165:                                             ; preds = %1162
  %1166 = getelementptr inbounds %struct.rtx_def, ptr %826, i64 0, i32 1
  %1167 = load i32, ptr %1166, align 8, !tbaa !243
  %1168 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1163, ptr noundef nonnull @.str.26, i32 noundef %959, i32 noundef %1167)
  %1169 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %1170 = load ptr, ptr %1050, align 8, !tbaa !375
  %1171 = getelementptr inbounds %struct.rtx_def, ptr %1170, i64 0, i32 1, i32 0, i32 0, i64 1
  %1172 = load ptr, ptr %1171, align 8, !tbaa !243
  call void @print_rtl(ptr noundef %1169, ptr noundef %1172) #19
  %1173 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %1174 = load ptr, ptr %911, align 8, !tbaa !439
  %1175 = getelementptr inbounds %struct.basic_block_def, ptr %1174, i64 0, i32 9
  %1176 = load i32, ptr %1175, align 8, !tbaa !359
  %1177 = getelementptr inbounds %struct.basic_block_def, ptr %1145, i64 0, i32 9
  %1178 = load i32, ptr %1177, align 8, !tbaa !359
  %1179 = getelementptr inbounds %struct.basic_block_def, ptr %1143, i64 0, i32 9
  %1180 = load i32, ptr %1179, align 8, !tbaa !359
  %1181 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1173, ptr noundef nonnull @.str.27, i32 noundef %1176, i32 noundef %1178, i32 noundef %1180)
  br label %1182

1182:                                             ; preds = %1069, %1165, %1162, %1149, %1142, %1053
  %1183 = phi i32 [ %955, %1053 ], [ 1, %1165 ], [ 1, %1162 ], [ %955, %1149 ], [ %955, %1142 ], [ %955, %1069 ]
  %1184 = phi i32 [ %954, %1053 ], [ 1, %1165 ], [ 1, %1162 ], [ %954, %1149 ], [ %954, %1142 ], [ %954, %1069 ]
  %1185 = phi i1 [ true, %1053 ], [ false, %1165 ], [ false, %1162 ], [ true, %1149 ], [ true, %1142 ], [ true, %1069 ]
  %1186 = add nuw nsw i64 %953, 1
  %1187 = load i32, ptr @reg_use_count, align 4
  %1188 = sext i32 %1187 to i64
  %1189 = icmp slt i64 %1186, %1188
  %1190 = select i1 %1185, i1 %1189, i1 false
  br i1 %1190, label %952, label %1191, !prof !462, !llvm.loop !463

1191:                                             ; preds = %1182, %943
  %1192 = phi i32 [ 0, %943 ], [ %1183, %1182 ]
  %1193 = phi i32 [ %896, %943 ], [ %1184, %1182 ]
  %1194 = icmp eq i32 %1192, 0
  br i1 %1194, label %1195, label %1206, !prof !464

1195:                                             ; preds = %1191
  %1196 = load ptr, ptr %804, align 8, !tbaa !232
  %1197 = icmp eq ptr %1196, null
  br i1 %1197, label %1200, label %1198, !prof !465

1198:                                             ; preds = %1195
  %1199 = load i32, ptr %1196, align 8, !tbaa !338
  br label %1200

1200:                                             ; preds = %1198, %1195
  %1201 = phi i32 [ %1199, %1198 ], [ 0, %1195 ]
  %1202 = icmp ult i32 %898, %1201
  br i1 %1202, label %1204, label %1203, !prof !466

1203:                                             ; preds = %1200
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 738, ptr noundef nonnull @.str.17) #19
  br label %1204

1204:                                             ; preds = %1203, %1200
  %1205 = add i32 %898, 1
  br label %1206

1206:                                             ; preds = %1204, %1191
  %1207 = phi i32 [ %1205, %1204 ], [ %898, %1191 ]
  br label %894, !llvm.loop !438

1208:                                             ; preds = %910
  %1209 = or i32 %896, %805
  br label %1215

1210:                                             ; preds = %840, %829
  %1211 = phi ptr [ %826, %840 ], [ %827, %829 ]
  %1212 = getelementptr inbounds %struct.rtx_def, ptr %826, i64 0, i32 1, i32 0, i32 0, i64 2
  %1213 = load ptr, ptr %1212, align 8, !tbaa !243
  %1214 = icmp eq ptr %1213, null
  br i1 %1214, label %1215, label %825, !prof !467, !llvm.loop !468

1215:                                             ; preds = %1210, %825, %829, %832, %834, %840, %815, %849, %1208, %852, %812
  %1216 = phi i32 [ %805, %812 ], [ %1209, %1208 ], [ %805, %852 ], [ %805, %849 ], [ %805, %815 ], [ %805, %840 ], [ %805, %834 ], [ %805, %832 ], [ %805, %829 ], [ %805, %825 ], [ %805, %1210 ]
  %1217 = getelementptr inbounds %struct.basic_block_def, ptr %804, i64 0, i32 6
  %1218 = load ptr, ptr %1217, align 8, !tbaa !289
  %1219 = load ptr, ptr @cfun, align 8, !tbaa !232
  %1220 = getelementptr inbounds %struct.function, ptr %1219, i64 0, i32 1
  %1221 = load ptr, ptr %1220, align 8, !tbaa !280
  %1222 = getelementptr inbounds %struct.control_flow_graph, ptr %1221, i64 0, i32 1
  %1223 = load ptr, ptr %1222, align 8, !tbaa !291
  %1224 = icmp eq ptr %1218, %1223
  br i1 %1224, label %1225, label %803, !prof !420, !llvm.loop !469

1225:                                             ; preds = %1215, %785
  %1226 = phi i32 [ 0, %785 ], [ %1216, %1215 ]
  %1227 = icmp eq i32 %1226, 0
  br i1 %1227, label %1229, label %1228, !prof !470

1228:                                             ; preds = %1225
  call void @commit_edge_insertions() #19
  br label %1229

1229:                                             ; preds = %1228, %1225, %777
  %1230 = phi i32 [ 0, %777 ], [ %1226, %1228 ], [ %1226, %1225 ]
  %1231 = or i32 %1230, %778
  %1232 = load ptr, ptr @cprop_pavloc, align 8, !tbaa !232
  call void @free(ptr noundef %1232)
  %1233 = load ptr, ptr @cprop_absaltered, align 8, !tbaa !232
  call void @free(ptr noundef %1233)
  %1234 = load ptr, ptr @cprop_avin, align 8, !tbaa !232
  call void @free(ptr noundef %1234)
  %1235 = load ptr, ptr @cprop_avout, align 8, !tbaa !232
  call void @free(ptr noundef %1235)
  br label %1236

1236:                                             ; preds = %1229, %416
  %1237 = phi i32 [ %1231, %1229 ], [ 0, %416 ]
  %1238 = load ptr, ptr @set_hash_table, align 8, !tbaa !365
  call void @free(ptr noundef %1238)
  call fastcc void @clear_modify_mem_tables()
  %1239 = load ptr, ptr @modify_mem_list, align 8, !tbaa !232
  call void @free(ptr noundef %1239)
  %1240 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !232
  call void @free(ptr noundef %1240)
  store ptr null, ptr @modify_mem_list, align 8, !tbaa !232
  store ptr null, ptr @canon_modify_mem_list, align 8, !tbaa !232
  %1241 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !232
  call void @bitmap_obstack_free(ptr noundef %1241) #19
  store ptr null, ptr @modify_mem_list_set, align 8, !tbaa !232
  %1242 = load ptr, ptr @blocks_with_calls, align 8, !tbaa !232
  call void @bitmap_obstack_free(ptr noundef %1242) #19
  store ptr null, ptr @blocks_with_calls, align 8, !tbaa !232
  %1243 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 1), align 8, !tbaa !471
  %1244 = ptrtoint ptr %1243 to i64
  %1245 = sub i64 0, %1244
  store i64 %1245, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %1246 = icmp sgt i64 %1245, 0
  br i1 %1246, label %1247, label %1254, !prof !368

1247:                                             ; preds = %1236
  %1248 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !474
  %1249 = ptrtoint ptr %1248 to i64
  %1250 = sub i64 %1249, %1244
  %1251 = icmp sgt i64 %1250, %1245
  br i1 %1251, label %1252, label %1254

1252:                                             ; preds = %1247
  %1253 = getelementptr inbounds i8, ptr %1243, i64 %1245
  store ptr %1253, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !475
  store ptr %1253, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  br label %1256

1254:                                             ; preds = %1247, %1236
  %1255 = getelementptr inbounds i8, ptr %1243, i64 %1245
  call void @obstack_free(ptr noundef nonnull @gcse_obstack, ptr noundef %1255) #19
  br label %1256

1256:                                             ; preds = %1254, %1252
  %1257 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %1258 = icmp eq ptr %1257, null
  br i1 %1258, label %1276, label %1259, !prof !362

1259:                                             ; preds = %1256
  %1260 = call ptr @current_function_name() #19
  %1261 = load ptr, ptr @cfun, align 8, !tbaa !232
  %1262 = getelementptr inbounds %struct.function, ptr %1261, i64 0, i32 1
  %1263 = load ptr, ptr %1262, align 8, !tbaa !280
  %1264 = getelementptr inbounds %struct.control_flow_graph, ptr %1263, i64 0, i32 3
  %1265 = load i32, ptr %1264, align 8, !tbaa !282
  %1266 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %1267 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1257, ptr noundef nonnull @.str.5, ptr noundef %1260, i32 noundef %1265, i32 noundef %1266)
  %1268 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %1269 = load i32, ptr @local_const_prop_count, align 4, !tbaa !247
  %1270 = load i32, ptr @local_copy_prop_count, align 4, !tbaa !247
  %1271 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1268, ptr noundef nonnull @.str.6, i32 noundef %1269, i32 noundef %1270)
  %1272 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %1273 = load i32, ptr @global_const_prop_count, align 4, !tbaa !247
  %1274 = load i32, ptr @global_copy_prop_count, align 4, !tbaa !247
  %1275 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1272, ptr noundef nonnull @.str.7, i32 noundef %1273, i32 noundef %1274)
  br label %1276

1276:                                             ; preds = %0, %10, %1256, %1259
  %1277 = phi i32 [ 0, %10 ], [ 0, %0 ], [ %1237, %1259 ], [ %1237, %1256 ]
  %1278 = load i32, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !247
  %1279 = or i32 %1278, %1277
  store i32 %1279, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !247
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_rtl_pre() #10 !prof !477 !PGOFuncName !478 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !247
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_gcse, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !479
  br i1 %5, label %6, label %19, !prof !479

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !232
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19, !prof !479

12:                                               ; preds = %6
  %13 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %7) #19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15, !prof !480

15:                                               ; preds = %12
  %16 = tail call zeroext i8 @dbg_cnt(i32 noundef 23) #19
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %15, %12, %6, %0
  %20 = phi i8 [ 0, %12 ], [ 0, %6 ], [ 0, %0 ], [ %18, %15 ]
  ret i8 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @execute_rtl_pre() #10 !prof !477 !PGOFuncName !481 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ls_expr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ls_expr, align 8
  %5 = tail call zeroext i8 @delete_unreachable_blocks() #19
  tail call void @df_analyze() #19
  store i32 0, ptr @gcse_subst_count, align 4, !tbaa !247
  store i32 0, ptr @gcse_create_count, align 4, !tbaa !247
  %6 = load ptr, ptr @cfun, align 8, !tbaa !232
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !280
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !282
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %1009, label %12, !prof !480

12:                                               ; preds = %0
  %13 = tail call fastcc zeroext i8 @is_too_expensive(ptr noundef nonnull @.str.28), !range !285
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %1009, !prof !482

15:                                               ; preds = %12
  tail call void @init_alias_analysis() #19
  store i32 0, ptr @bytes_used, align 4, !tbaa !247
  %16 = tail call i32 @_obstack_begin(ptr noundef nonnull @gcse_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #19
  %17 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %17, ptr @reg_set_bitmap, align 8, !tbaa !232
  %18 = load ptr, ptr @cfun, align 8, !tbaa !232
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !280
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !287
  %23 = sext i32 %22 to i64
  %24 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %25 = shl i32 %22, 3
  %26 = add i32 %25, %24
  store i32 %26, ptr @bytes_used, align 4, !tbaa !247
  %27 = tail call ptr @xcalloc(i64 noundef %23, i64 noundef 8) #19
  store ptr %27, ptr @modify_mem_list, align 8, !tbaa !232
  %28 = load ptr, ptr @cfun, align 8, !tbaa !232
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !280
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !287
  %33 = sext i32 %32 to i64
  %34 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %35 = shl i32 %32, 3
  %36 = add i32 %35, %34
  store i32 %36, ptr @bytes_used, align 4, !tbaa !247
  %37 = tail call ptr @xcalloc(i64 noundef %33, i64 noundef 8) #19
  store ptr %37, ptr @canon_modify_mem_list, align 8, !tbaa !232
  %38 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %38, ptr @modify_mem_list_set, align 8, !tbaa !232
  %39 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %39, ptr @blocks_with_calls, align 8, !tbaa !232
  %40 = tail call i32 @get_max_insn_count() #19
  %41 = sdiv i32 %40, 4
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 11)
  %43 = or i32 %42, 1
  store i32 %43, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !363
  %44 = shl i32 %43, 3
  %45 = sext i32 %44 to i64
  %46 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %47 = add i32 %44, %46
  store i32 %47, ptr @bytes_used, align 4, !tbaa !247
  %48 = tail call ptr @xmalloc(i64 noundef %45) #19
  store ptr %48, ptr @expr_hash_table, align 8, !tbaa !365
  store i32 0, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 3), align 8, !tbaa !366
  tail call void @add_noreturn_fake_exit_edges() #19
  %49 = load i32, ptr @flag_gcse_lm, align 4, !tbaa !247
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %237, label %51, !prof !483

51:                                               ; preds = %15
  store ptr null, ptr @pre_ldst_mems, align 8, !tbaa !232
  %52 = tail call ptr @htab_create(i64 noundef 13, ptr noundef nonnull @pre_ldst_expr_hash, ptr noundef nonnull @pre_ldst_expr_eq, ptr noundef null) #19
  store ptr %52, ptr @pre_ldst_table, align 8, !tbaa !232
  %53 = load ptr, ptr @cfun, align 8, !tbaa !232
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !280
  %56 = load ptr, ptr %55, align 8, !tbaa !288
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !289
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !291
  %61 = icmp eq ptr %58, %60
  br i1 %61, label %237, label %62, !prof !484

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.ls_expr, ptr %4, i64 0, i32 1
  %64 = getelementptr inbounds %struct.ls_expr, ptr %2, i64 0, i32 1
  br label %65

65:                                               ; preds = %62, %228
  %66 = phi ptr [ %58, %62 ], [ %230, %228 ]
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !243
  %69 = load ptr, ptr %68, align 8, !tbaa !243
  %70 = icmp eq ptr %69, null
  br i1 %70, label %228, label %71, !prof !484

71:                                               ; preds = %65, %224
  %72 = phi ptr [ %226, %224 ], [ %69, %65 ]
  %73 = load ptr, ptr %67, align 8, !tbaa !243
  %74 = getelementptr inbounds %struct.rtl_bb_info, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !293
  %76 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1, i32 0, i32 0, i64 2
  %77 = load ptr, ptr %76, align 8, !tbaa !243
  %78 = icmp eq ptr %72, %77
  br i1 %78, label %228, label %79, !prof !485

79:                                               ; preds = %71
  %80 = load i32, ptr %72, align 8
  %81 = and i32 %80, 65535
  %82 = add nsw i32 %81, -11
  %83 = icmp ult i32 %82, -3
  br i1 %83, label %224, label %84, !prof !486

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !243
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 65535
  %89 = icmp eq i32 %88, 23
  br i1 %89, label %90, label %223, !prof !487

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %92 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !243
  %94 = load ptr, ptr %91, align 8, !tbaa !243
  %95 = load i32, ptr %93, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 43
  br i1 %97, label %98, label %157, !prof !488

98:                                               ; preds = %90
  %99 = and i32 %95, 134217771
  %100 = icmp ne i32 %99, 43
  %101 = and i32 %95, 16711680
  %102 = icmp eq i32 %101, 65536
  %103 = or i1 %100, %102
  br i1 %103, label %157, label %104, !prof !489

104:                                              ; preds = %98
  %105 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !247
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107, !prof !490

107:                                              ; preds = %104
  %108 = call i32 @may_trap_p(ptr noundef nonnull %93) #19
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %157

110:                                              ; preds = %107, %104
  %111 = call i32 @side_effects_p(ptr noundef nonnull %93) #19
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %157, !prof !490

113:                                              ; preds = %110
  %114 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !232
  %115 = call i32 @reg_mentioned_p(ptr noundef %114, ptr noundef nonnull %93) #19
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %157, !prof !491

117:                                              ; preds = %113
  %118 = load i32, ptr @flag_float_store, align 4, !tbaa !247
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %127, label %120, !prof !492

120:                                              ; preds = %117
  %121 = load i32, ptr %93, align 8
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !243
  switch i8 %126, label %127 [
    i8 8, label %157
    i8 9, label %157
    i8 11, label %157
    i8 17, label %157
  ]

127:                                              ; preds = %120, %117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  store i32 0, ptr %3, align 4, !tbaa !247
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #19
  %128 = load i32, ptr %93, align 8
  %129 = lshr i32 %128, 16
  %130 = and i32 %129, 255
  %131 = call i32 @hash_rtx(ptr noundef nonnull %93, i32 noundef %130, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 0) #19
  store ptr %93, ptr %63, align 8, !tbaa !493
  %132 = load ptr, ptr @pre_ldst_table, align 8, !tbaa !232
  %133 = call ptr @htab_find_slot_with_hash(ptr noundef %132, ptr noundef nonnull %4, i32 noundef %131, i32 noundef 1) #19
  %134 = load ptr, ptr %133, align 8, !tbaa !232
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %146, !prof !495

136:                                              ; preds = %127
  %137 = call ptr @xmalloc(i64 noundef 72) #19
  %138 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !232
  %139 = getelementptr inbounds %struct.ls_expr, ptr %137, i64 0, i32 5
  store ptr %138, ptr %139, align 8, !tbaa !496
  store ptr null, ptr %137, align 8, !tbaa !497
  %140 = getelementptr inbounds %struct.ls_expr, ptr %137, i64 0, i32 1
  store ptr %93, ptr %140, align 8, !tbaa !493
  %141 = getelementptr inbounds %struct.ls_expr, ptr %137, i64 0, i32 2
  %142 = getelementptr inbounds %struct.ls_expr, ptr %137, i64 0, i32 9
  store ptr null, ptr %142, align 8, !tbaa !498
  %143 = getelementptr inbounds %struct.ls_expr, ptr %137, i64 0, i32 6
  store i32 0, ptr %143, align 8, !tbaa !499
  %144 = getelementptr inbounds %struct.ls_expr, ptr %137, i64 0, i32 7
  store i32 0, ptr %144, align 4, !tbaa !500
  %145 = getelementptr inbounds %struct.ls_expr, ptr %137, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %141, i8 0, i64 24, i1 false)
  store i32 %131, ptr %145, align 8, !tbaa !501
  store ptr %137, ptr @pre_ldst_mems, align 8, !tbaa !232
  store ptr %137, ptr %133, align 8, !tbaa !232
  br label %146

146:                                              ; preds = %127, %136
  %147 = phi ptr [ %137, %136 ], [ %134, %127 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  %148 = load i32, ptr %94, align 8
  %149 = and i32 %148, 65535
  %150 = icmp eq i32 %149, 37
  br i1 %150, label %151, label %155, !prof !502

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.ls_expr, ptr %147, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !503
  %154 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %72, ptr noundef %153) #19
  store ptr %154, ptr %152, align 8, !tbaa !503
  br label %158

155:                                              ; preds = %146
  %156 = getelementptr inbounds %struct.ls_expr, ptr %147, i64 0, i32 6
  store i32 1, ptr %156, align 8, !tbaa !499
  br label %158

157:                                              ; preds = %120, %120, %120, %120, %113, %110, %107, %98, %90
  call fastcc void @invalidate_any_buried_refs(ptr noundef nonnull %93)
  br label %158

158:                                              ; preds = %157, %155, %151
  %159 = load i32, ptr %94, align 8
  %160 = and i32 %159, 65535
  %161 = icmp eq i32 %160, 43
  br i1 %161, label %162, label %224, !prof !504

162:                                              ; preds = %158
  %163 = and i32 %159, 134217771
  %164 = icmp ne i32 %163, 43
  %165 = and i32 %159, 16711680
  %166 = icmp eq i32 %165, 65536
  %167 = or i1 %164, %166
  br i1 %167, label %224, label %168, !prof !489

168:                                              ; preds = %162
  %169 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !247
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171, !prof !490

171:                                              ; preds = %168
  %172 = call i32 @may_trap_p(ptr noundef nonnull %94) #19
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %224

174:                                              ; preds = %171, %168
  %175 = call i32 @side_effects_p(ptr noundef nonnull %94) #19
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %224, !prof !490

177:                                              ; preds = %174
  %178 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !232
  %179 = call i32 @reg_mentioned_p(ptr noundef %178, ptr noundef nonnull %94) #19
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %224, !prof !491

181:                                              ; preds = %177
  %182 = load i32, ptr @flag_float_store, align 4, !tbaa !247
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %191, label %184, !prof !492

184:                                              ; preds = %181
  %185 = load i32, ptr %94, align 8
  %186 = lshr i32 %185, 16
  %187 = and i32 %186, 255
  %188 = zext nneg i32 %187 to i64
  %189 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !243
  switch i8 %190, label %191 [
    i8 8, label %224
    i8 9, label %224
    i8 11, label %224
    i8 17, label %224
  ]

191:                                              ; preds = %184, %181
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #19
  store i32 0, ptr %1, align 4, !tbaa !247
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #19
  %192 = load i32, ptr %94, align 8
  %193 = lshr i32 %192, 16
  %194 = and i32 %193, 255
  %195 = call i32 @hash_rtx(ptr noundef nonnull %94, i32 noundef %194, ptr noundef nonnull %1, ptr noundef null, i8 noundef zeroext 0) #19
  store ptr %94, ptr %64, align 8, !tbaa !493
  %196 = load ptr, ptr @pre_ldst_table, align 8, !tbaa !232
  %197 = call ptr @htab_find_slot_with_hash(ptr noundef %196, ptr noundef nonnull %2, i32 noundef %195, i32 noundef 1) #19
  %198 = load ptr, ptr %197, align 8, !tbaa !232
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %210, !prof !495

200:                                              ; preds = %191
  %201 = call ptr @xmalloc(i64 noundef 72) #19
  %202 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !232
  %203 = getelementptr inbounds %struct.ls_expr, ptr %201, i64 0, i32 5
  store ptr %202, ptr %203, align 8, !tbaa !496
  store ptr null, ptr %201, align 8, !tbaa !497
  %204 = getelementptr inbounds %struct.ls_expr, ptr %201, i64 0, i32 1
  store ptr %94, ptr %204, align 8, !tbaa !493
  %205 = getelementptr inbounds %struct.ls_expr, ptr %201, i64 0, i32 2
  %206 = getelementptr inbounds %struct.ls_expr, ptr %201, i64 0, i32 9
  store ptr null, ptr %206, align 8, !tbaa !498
  %207 = getelementptr inbounds %struct.ls_expr, ptr %201, i64 0, i32 6
  store i32 0, ptr %207, align 8, !tbaa !499
  %208 = getelementptr inbounds %struct.ls_expr, ptr %201, i64 0, i32 7
  store i32 0, ptr %208, align 4, !tbaa !500
  %209 = getelementptr inbounds %struct.ls_expr, ptr %201, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %205, i8 0, i64 24, i1 false)
  store i32 %195, ptr %209, align 8, !tbaa !501
  store ptr %201, ptr @pre_ldst_mems, align 8, !tbaa !232
  store ptr %201, ptr %197, align 8, !tbaa !232
  br label %210

210:                                              ; preds = %191, %200
  %211 = phi ptr [ %201, %200 ], [ %198, %191 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #19
  %212 = load i32, ptr %93, align 8
  %213 = trunc i32 %212 to i16
  switch i16 %213, label %214 [
    i16 43, label %221
    i16 17, label %221
  ], !prof !505

214:                                              ; preds = %210
  %215 = call zeroext i8 @can_assign_to_reg_without_clobbers_p(ptr noundef nonnull %93), !range !285
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %221, label %217, !prof !506

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.ls_expr, ptr %211, i64 0, i32 4
  %219 = load ptr, ptr %218, align 8, !tbaa !507
  %220 = call ptr @alloc_INSN_LIST(ptr noundef nonnull %72, ptr noundef %219) #19
  store ptr %220, ptr %218, align 8, !tbaa !507
  br label %224

221:                                              ; preds = %210, %214, %210
  %222 = getelementptr inbounds %struct.ls_expr, ptr %211, i64 0, i32 6
  store i32 1, ptr %222, align 8, !tbaa !499
  br label %224

223:                                              ; preds = %84
  call fastcc void @invalidate_any_buried_refs(ptr noundef nonnull %86)
  br label %224

224:                                              ; preds = %184, %184, %184, %184, %177, %174, %171, %162, %223, %221, %217, %158, %79
  %225 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1, i32 0, i32 0, i64 2
  %226 = load ptr, ptr %225, align 8, !tbaa !243
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %71, !prof !508, !llvm.loop !509

228:                                              ; preds = %224, %71, %65
  %229 = getelementptr inbounds %struct.basic_block_def, ptr %66, i64 0, i32 6
  %230 = load ptr, ptr %229, align 8, !tbaa !289
  %231 = load ptr, ptr @cfun, align 8, !tbaa !232
  %232 = getelementptr inbounds %struct.function, ptr %231, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !280
  %234 = getelementptr inbounds %struct.control_flow_graph, ptr %233, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !291
  %236 = icmp eq ptr %230, %235
  br i1 %236, label %237, label %65, !prof !510, !llvm.loop !511

237:                                              ; preds = %228, %51, %15
  call fastcc void @compute_hash_table(ptr noundef nonnull @expr_hash_table)
  %238 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !232
  %239 = icmp eq ptr %238, null
  br i1 %239, label %285, label %240, !prof !484

240:                                              ; preds = %237, %281
  %241 = phi ptr [ %283, %281 ], [ %238, %237 ]
  %242 = phi ptr [ %282, %281 ], [ @pre_ldst_mems, %237 ]
  %243 = getelementptr inbounds %struct.ls_expr, ptr %241, i64 0, i32 6
  %244 = load i32, ptr %243, align 8, !tbaa !499
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %268, !prof !512

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.ls_expr, ptr %241, i64 0, i32 8
  %248 = load i32, ptr %247, align 8, !tbaa !501
  %249 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !363
  %250 = urem i32 %248, %249
  %251 = load ptr, ptr @expr_hash_table, align 8, !tbaa !365
  %252 = zext i32 %250 to i64
  %253 = getelementptr inbounds ptr, ptr %251, i64 %252
  %254 = load ptr, ptr %253, align 8, !tbaa !232
  %255 = icmp eq ptr %254, null
  br i1 %255, label %268, label %256, !prof !484

256:                                              ; preds = %246
  %257 = getelementptr inbounds %struct.ls_expr, ptr %241, i64 0, i32 1
  br label %258

258:                                              ; preds = %256, %264
  %259 = phi ptr [ %254, %256 ], [ %266, %264 ]
  %260 = load ptr, ptr %259, align 8, !tbaa !375
  %261 = load ptr, ptr %257, align 8, !tbaa !493
  %262 = call i32 @exp_equiv_p(ptr noundef %260, ptr noundef %261, i32 noundef 0, i8 noundef zeroext 1) #19
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %268, !prof !513

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.expr, ptr %259, i64 0, i32 2
  %266 = load ptr, ptr %265, align 8, !tbaa !232
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %258, !prof !514, !llvm.loop !515

268:                                              ; preds = %264, %258, %246, %240
  %269 = phi ptr [ null, %240 ], [ %254, %246 ], [ %259, %258 ], [ %266, %264 ]
  %270 = icmp eq ptr %269, null
  br i1 %270, label %273, label %271, !prof !516

271:                                              ; preds = %268
  store ptr %269, ptr %241, align 8, !tbaa !497
  %272 = getelementptr inbounds %struct.ls_expr, ptr %241, i64 0, i32 5
  br label %281

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.ls_expr, ptr %241, i64 0, i32 5
  %275 = load ptr, ptr %274, align 8, !tbaa !496
  store ptr %275, ptr %242, align 8, !tbaa !232
  %276 = load ptr, ptr @pre_ldst_table, align 8, !tbaa !232
  %277 = getelementptr inbounds %struct.ls_expr, ptr %241, i64 0, i32 8
  %278 = load i32, ptr %277, align 8, !tbaa !501
  call void @htab_remove_elt_with_hash(ptr noundef %276, ptr noundef nonnull %241, i32 noundef %278) #19
  %279 = getelementptr inbounds %struct.ls_expr, ptr %241, i64 0, i32 3
  call void @free_INSN_LIST_list(ptr noundef nonnull %279) #19
  %280 = getelementptr inbounds %struct.ls_expr, ptr %241, i64 0, i32 4
  call void @free_INSN_LIST_list(ptr noundef nonnull %280) #19
  call void @free(ptr noundef %241)
  br label %281

281:                                              ; preds = %273, %271
  %282 = phi ptr [ %272, %271 ], [ %242, %273 ]
  %283 = load ptr, ptr %282, align 8, !tbaa !232
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %240, !prof !517, !llvm.loop !518

285:                                              ; preds = %281, %237
  %286 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %287 = icmp ne ptr %286, null
  %288 = load ptr, ptr @pre_ldst_mems, align 8
  %289 = icmp ne ptr %288, null
  %290 = select i1 %287, i1 %289, i1 false, !prof !483
  br i1 %290, label %291, label %324, !prof !483

291:                                              ; preds = %285
  %292 = call i64 @fwrite(ptr nonnull @.str.32, i64 12, i64 1, ptr nonnull %286)
  %293 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !232
  %294 = icmp eq ptr %293, null
  br i1 %294, label %322, label %295

295:                                              ; preds = %291, %317
  %296 = phi ptr [ %320, %317 ], [ %293, %291 ]
  %297 = getelementptr inbounds %struct.ls_expr, ptr %296, i64 0, i32 7
  %298 = load i32, ptr %297, align 4, !tbaa !500
  %299 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %286, ptr noundef nonnull @.str.33, i32 noundef %298)
  %300 = getelementptr inbounds %struct.ls_expr, ptr %296, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !493
  call void @print_rtl(ptr noundef nonnull %286, ptr noundef %301) #19
  %302 = call i64 @fwrite(ptr nonnull @.str.34, i64 11, i64 1, ptr nonnull %286)
  %303 = getelementptr inbounds %struct.ls_expr, ptr %296, i64 0, i32 3
  %304 = load ptr, ptr %303, align 8, !tbaa !503
  %305 = icmp eq ptr %304, null
  br i1 %305, label %307, label %306

306:                                              ; preds = %295
  call void @print_rtl(ptr noundef nonnull %286, ptr noundef nonnull %304) #19
  br label %309

307:                                              ; preds = %295
  %308 = call i64 @fwrite(ptr nonnull @.str.35, i64 5, i64 1, ptr nonnull %286)
  br label %309

309:                                              ; preds = %307, %306
  %310 = call i64 @fwrite(ptr nonnull @.str.36, i64 11, i64 1, ptr nonnull %286)
  %311 = getelementptr inbounds %struct.ls_expr, ptr %296, i64 0, i32 4
  %312 = load ptr, ptr %311, align 8, !tbaa !507
  %313 = icmp eq ptr %312, null
  br i1 %313, label %315, label %314

314:                                              ; preds = %309
  call void @print_rtl(ptr noundef nonnull %286, ptr noundef nonnull %312) #19
  br label %317

315:                                              ; preds = %309
  %316 = call i64 @fwrite(ptr nonnull @.str.35, i64 5, i64 1, ptr nonnull %286)
  br label %317

317:                                              ; preds = %315, %314
  %318 = call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr nonnull %286)
  %319 = getelementptr inbounds %struct.ls_expr, ptr %296, i64 0, i32 5
  %320 = load ptr, ptr %319, align 8, !tbaa !232
  %321 = icmp eq ptr %320, null
  br i1 %321, label %322, label %295, !llvm.loop !519

322:                                              ; preds = %317, %291
  %323 = call i32 @fputc(i32 10, ptr nonnull %286)
  br label %324

324:                                              ; preds = %322, %285
  %325 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %326 = icmp eq ptr %325, null
  br i1 %326, label %328, label %327, !prof !520

327:                                              ; preds = %324
  call fastcc void @dump_hash_table(ptr noundef nonnull %325, ptr noundef nonnull @.str.29, ptr noundef nonnull @expr_hash_table)
  br label %328

328:                                              ; preds = %327, %324
  %329 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !367
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %958, label %331, !prof !483

331:                                              ; preds = %328
  %332 = load ptr, ptr @cfun, align 8, !tbaa !232
  %333 = getelementptr inbounds %struct.function, ptr %332, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !280
  %335 = getelementptr inbounds %struct.control_flow_graph, ptr %334, i64 0, i32 5
  %336 = load i32, ptr %335, align 8, !tbaa !287
  %337 = call ptr @sbitmap_vector_alloc(i32 noundef %336, i32 noundef %329) #19
  store ptr %337, ptr @transp, align 8, !tbaa !232
  %338 = call ptr @sbitmap_vector_alloc(i32 noundef %336, i32 noundef %329) #19
  store ptr %338, ptr @comp, align 8, !tbaa !232
  %339 = call ptr @sbitmap_vector_alloc(i32 noundef %336, i32 noundef %329) #19
  store ptr %339, ptr @antloc, align 8, !tbaa !232
  store ptr null, ptr @pre_insert_map, align 8, !tbaa !232
  store ptr null, ptr @pre_delete_map, align 8, !tbaa !232
  %340 = call ptr @sbitmap_vector_alloc(i32 noundef %336, i32 noundef %329) #19
  store ptr %340, ptr @ae_kill, align 8, !tbaa !232
  %341 = load ptr, ptr @transp, align 8, !tbaa !232
  %342 = load ptr, ptr @comp, align 8, !tbaa !232
  %343 = load ptr, ptr @antloc, align 8, !tbaa !232
  call fastcc void @compute_local_properties(ptr noundef %341, ptr noundef %342, ptr noundef %343, ptr noundef nonnull @expr_hash_table)
  %344 = load ptr, ptr @ae_kill, align 8, !tbaa !232
  %345 = load ptr, ptr @cfun, align 8, !tbaa !232
  %346 = getelementptr inbounds %struct.function, ptr %345, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !280
  %348 = getelementptr inbounds %struct.control_flow_graph, ptr %347, i64 0, i32 5
  %349 = load i32, ptr %348, align 8, !tbaa !287
  call void @sbitmap_vector_zero(ptr noundef %344, i32 noundef %349) #19
  %350 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !367
  %351 = call ptr @sbitmap_alloc(i32 noundef %350) #19
  call void @sbitmap_zero(ptr noundef %351) #19
  %352 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !363
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %402, label %354, !prof !484

354:                                              ; preds = %331, %397
  %355 = phi i64 [ %398, %397 ], [ 0, %331 ]
  %356 = load ptr, ptr @expr_hash_table, align 8, !tbaa !365
  %357 = getelementptr inbounds ptr, ptr %356, i64 %355
  %358 = load ptr, ptr %357, align 8, !tbaa !232
  %359 = icmp eq ptr %358, null
  br i1 %359, label %397, label %360, !prof !521

360:                                              ; preds = %354, %393
  %361 = phi ptr [ %395, %393 ], [ %358, %354 ]
  %362 = load ptr, ptr %361, align 8, !tbaa !375
  %363 = call i32 @may_trap_p(ptr noundef %362) #19
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %393, label %365, !prof !522

365:                                              ; preds = %360
  %366 = getelementptr inbounds %struct.expr, ptr %361, i64 0, i32 1
  %367 = load i32, ptr %366, align 8, !tbaa !381
  %368 = load ptr, ptr %351, align 8, !tbaa !523
  %369 = icmp eq ptr %368, null
  br i1 %369, label %384, label %370, !prof !525

370:                                              ; preds = %365
  %371 = lshr i32 %367, 6
  %372 = zext nneg i32 %371 to i64
  %373 = getelementptr inbounds %struct.simple_bitmap_def, ptr %351, i64 0, i32 3, i64 %372
  %374 = load i64, ptr %373, align 8, !tbaa !382
  %375 = and i32 %367, 63
  %376 = zext nneg i32 %375 to i64
  %377 = shl nuw i64 1, %376
  %378 = and i64 %374, %377
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %380, label %384

380:                                              ; preds = %370
  %381 = getelementptr inbounds i8, ptr %368, i64 %372
  %382 = load i8, ptr %381, align 1, !tbaa !243
  %383 = add i8 %382, 1
  store i8 %383, ptr %381, align 1, !tbaa !243
  br label %384

384:                                              ; preds = %380, %370, %365
  %385 = and i32 %367, 63
  %386 = zext nneg i32 %385 to i64
  %387 = shl nuw i64 1, %386
  %388 = lshr i32 %367, 6
  %389 = zext nneg i32 %388 to i64
  %390 = getelementptr inbounds %struct.simple_bitmap_def, ptr %351, i64 0, i32 3, i64 %389
  %391 = load i64, ptr %390, align 8, !tbaa !382
  %392 = or i64 %391, %387
  store i64 %392, ptr %390, align 8, !tbaa !382
  br label %393

393:                                              ; preds = %384, %360
  %394 = getelementptr inbounds %struct.expr, ptr %361, i64 0, i32 2
  %395 = load ptr, ptr %394, align 8, !tbaa !232
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %360, !prof !526, !llvm.loop !527

397:                                              ; preds = %393, %354
  %398 = add nuw nsw i64 %355, 1
  %399 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !363
  %400 = zext i32 %399 to i64
  %401 = icmp ult i64 %398, %400
  br i1 %401, label %354, label %402, !prof !528, !llvm.loop !529

402:                                              ; preds = %397, %331
  %403 = load ptr, ptr @cfun, align 8, !tbaa !232
  %404 = getelementptr inbounds %struct.function, ptr %403, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !280
  %406 = load ptr, ptr %405, align 8, !tbaa !288
  %407 = getelementptr inbounds %struct.basic_block_def, ptr %406, i64 0, i32 6
  %408 = load ptr, ptr %407, align 8, !tbaa !289
  %409 = getelementptr inbounds %struct.control_flow_graph, ptr %405, i64 0, i32 1
  %410 = load ptr, ptr %409, align 8, !tbaa !291
  %411 = icmp eq ptr %408, %410
  br i1 %411, label %484, label %412, !prof !484

412:                                              ; preds = %402, %458
  %413 = phi ptr [ %477, %458 ], [ %408, %402 ]
  %414 = icmp eq ptr %413, null
  br label %415

415:                                              ; preds = %412, %456
  %416 = phi i32 [ %457, %456 ], [ 0, %412 ]
  br i1 %414, label %417, label %418, !prof !530

417:                                              ; preds = %415
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 687, ptr noundef nonnull @.str.17) #19
  br label %418

418:                                              ; preds = %417, %415
  %419 = load ptr, ptr %413, align 8, !tbaa !232
  %420 = icmp eq ptr %419, null
  br i1 %420, label %423, label %421, !prof !530

421:                                              ; preds = %418
  %422 = load i32, ptr %419, align 8, !tbaa !338
  br label %423

423:                                              ; preds = %421, %418
  %424 = phi i32 [ %422, %421 ], [ 0, %418 ]
  %425 = icmp eq i32 %424, %416
  br i1 %425, label %430, label %426, !prof !531

426:                                              ; preds = %423
  %427 = zext i32 %416 to i64
  %428 = getelementptr inbounds %struct.VEC_edge_base, ptr %419, i64 0, i32 2, i64 %427
  %429 = load ptr, ptr %428, align 8, !tbaa !232
  br label %430

430:                                              ; preds = %426, %423
  %431 = phi ptr [ %429, %426 ], [ null, %423 ]
  br i1 %425, label %458, label %432, !prof !531

432:                                              ; preds = %430
  %433 = getelementptr inbounds %struct.edge_def, ptr %431, i64 0, i32 7
  %434 = load i32, ptr %433, align 8, !tbaa !350
  %435 = and i32 %434, 2
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %449, label %437, !prof !532

437:                                              ; preds = %432
  %438 = load ptr, ptr @antloc, align 8, !tbaa !232
  %439 = getelementptr inbounds %struct.basic_block_def, ptr %413, i64 0, i32 9
  %440 = load i32, ptr %439, align 8, !tbaa !359
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds ptr, ptr %438, i64 %441
  %443 = load ptr, ptr %442, align 8, !tbaa !232
  call void @sbitmap_difference(ptr noundef %443, ptr noundef %443, ptr noundef %351) #19
  %444 = load ptr, ptr @transp, align 8, !tbaa !232
  %445 = load i32, ptr %439, align 8, !tbaa !359
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds ptr, ptr %444, i64 %446
  %448 = load ptr, ptr %447, align 8, !tbaa !232
  call void @sbitmap_difference(ptr noundef %448, ptr noundef %448, ptr noundef %351) #19
  br label %458

449:                                              ; preds = %432
  br i1 %420, label %452, label %450, !prof !533

450:                                              ; preds = %449
  %451 = load i32, ptr %419, align 8, !tbaa !338
  br label %452

452:                                              ; preds = %450, %449
  %453 = phi i32 [ %451, %450 ], [ 0, %449 ]
  %454 = icmp ult i32 %416, %453
  br i1 %454, label %456, label %455, !prof !532

455:                                              ; preds = %452
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 738, ptr noundef nonnull @.str.17) #19
  br label %456

456:                                              ; preds = %455, %452
  %457 = add i32 %416, 1
  br label %415, !llvm.loop !534

458:                                              ; preds = %430, %437
  %459 = load ptr, ptr @ae_kill, align 8, !tbaa !232
  %460 = getelementptr inbounds %struct.basic_block_def, ptr %413, i64 0, i32 9
  %461 = load i32, ptr %460, align 8, !tbaa !359
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds ptr, ptr %459, i64 %462
  %464 = load ptr, ptr %463, align 8, !tbaa !232
  %465 = load ptr, ptr @transp, align 8, !tbaa !232
  %466 = getelementptr inbounds ptr, ptr %465, i64 %462
  %467 = load ptr, ptr %466, align 8, !tbaa !232
  %468 = load ptr, ptr @comp, align 8, !tbaa !232
  %469 = getelementptr inbounds ptr, ptr %468, i64 %462
  %470 = load ptr, ptr %469, align 8, !tbaa !232
  call void @sbitmap_a_or_b(ptr noundef %464, ptr noundef %467, ptr noundef %470) #19
  %471 = load ptr, ptr @ae_kill, align 8, !tbaa !232
  %472 = load i32, ptr %460, align 8, !tbaa !359
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds ptr, ptr %471, i64 %473
  %475 = load ptr, ptr %474, align 8, !tbaa !232
  call void @sbitmap_not(ptr noundef %475, ptr noundef %475) #19
  %476 = getelementptr inbounds %struct.basic_block_def, ptr %413, i64 0, i32 6
  %477 = load ptr, ptr %476, align 8, !tbaa !289
  %478 = load ptr, ptr @cfun, align 8, !tbaa !232
  %479 = getelementptr inbounds %struct.function, ptr %478, i64 0, i32 1
  %480 = load ptr, ptr %479, align 8, !tbaa !280
  %481 = getelementptr inbounds %struct.control_flow_graph, ptr %480, i64 0, i32 1
  %482 = load ptr, ptr %481, align 8, !tbaa !291
  %483 = icmp eq ptr %477, %482
  br i1 %483, label %484, label %412, !prof !510, !llvm.loop !535

484:                                              ; preds = %458, %402
  %485 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !367
  %486 = load ptr, ptr @transp, align 8, !tbaa !232
  %487 = load ptr, ptr @comp, align 8, !tbaa !232
  %488 = load ptr, ptr @antloc, align 8, !tbaa !232
  %489 = load ptr, ptr @ae_kill, align 8, !tbaa !232
  %490 = call ptr @pre_edge_lcm(i32 noundef %485, ptr noundef %486, ptr noundef %487, ptr noundef %488, ptr noundef %489, ptr noundef nonnull @pre_insert_map, ptr noundef nonnull @pre_delete_map) #19
  store ptr %490, ptr @edge_list, align 8, !tbaa !232
  %491 = load ptr, ptr @antloc, align 8, !tbaa !232
  call void @free(ptr noundef %491)
  store ptr null, ptr @antloc, align 8, !tbaa !232
  %492 = load ptr, ptr @ae_kill, align 8, !tbaa !232
  call void @free(ptr noundef %492)
  store ptr null, ptr @ae_kill, align 8, !tbaa !232
  %493 = load ptr, ptr %351, align 8, !tbaa !523
  call void @free(ptr noundef %493)
  call void @free(ptr noundef %351)
  %494 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !367
  %495 = zext i32 %494 to i64
  %496 = call ptr @xcalloc(i64 noundef %495, i64 noundef 8) #19
  %497 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !363
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %501, label %499, !prof !484

499:                                              ; preds = %484
  %500 = zext i32 %497 to i64
  br label %504

501:                                              ; preds = %519, %484
  %502 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !363
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %622, label %522, !prof !484

504:                                              ; preds = %499, %519
  %505 = phi i64 [ 0, %499 ], [ %520, %519 ]
  %506 = load ptr, ptr @expr_hash_table, align 8, !tbaa !365
  %507 = getelementptr inbounds ptr, ptr %506, i64 %505
  %508 = load ptr, ptr %507, align 8, !tbaa !232
  %509 = icmp eq ptr %508, null
  br i1 %509, label %519, label %510, !prof !521

510:                                              ; preds = %504, %510
  %511 = phi ptr [ %517, %510 ], [ %508, %504 ]
  %512 = getelementptr inbounds %struct.expr, ptr %511, i64 0, i32 1
  %513 = load i32, ptr %512, align 8, !tbaa !381
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds ptr, ptr %496, i64 %514
  store ptr %511, ptr %515, align 8, !tbaa !232
  %516 = getelementptr inbounds %struct.expr, ptr %511, i64 0, i32 2
  %517 = load ptr, ptr %516, align 8, !tbaa !232
  %518 = icmp eq ptr %517, null
  br i1 %518, label %519, label %510, !prof !526, !llvm.loop !536

519:                                              ; preds = %510, %504
  %520 = add nuw nsw i64 %505, 1
  %521 = icmp eq i64 %520, %500
  br i1 %521, label %501, label %504, !prof !537, !llvm.loop !538

522:                                              ; preds = %501, %616
  %523 = phi i64 [ %618, %616 ], [ 0, %501 ]
  %524 = phi i32 [ %617, %616 ], [ 0, %501 ]
  %525 = load ptr, ptr @expr_hash_table, align 8, !tbaa !365
  %526 = getelementptr inbounds ptr, ptr %525, i64 %523
  %527 = load ptr, ptr %526, align 8, !tbaa !232
  %528 = icmp eq ptr %527, null
  br i1 %528, label %616, label %529, !prof !521

529:                                              ; preds = %522, %611
  %530 = phi ptr [ %614, %611 ], [ %527, %522 ]
  %531 = phi i32 [ %612, %611 ], [ %524, %522 ]
  %532 = getelementptr inbounds %struct.expr, ptr %530, i64 0, i32 1
  %533 = load i32, ptr %532, align 8, !tbaa !381
  %534 = getelementptr inbounds %struct.expr, ptr %530, i64 0, i32 3
  %535 = load ptr, ptr %534, align 8, !tbaa !232
  %536 = icmp eq ptr %535, null
  br i1 %536, label %611, label %537, !prof !539

537:                                              ; preds = %529
  %538 = lshr i32 %533, 6
  %539 = zext nneg i32 %538 to i64
  %540 = and i32 %533, 63
  %541 = zext nneg i32 %540 to i64
  %542 = shl nuw i64 1, %541
  br label %543

543:                                              ; preds = %537, %607
  %544 = phi ptr [ %535, %537 ], [ %609, %607 ]
  %545 = phi i32 [ %531, %537 ], [ %608, %607 ]
  %546 = getelementptr inbounds %struct.occr, ptr %544, i64 0, i32 1
  %547 = load ptr, ptr %546, align 8, !tbaa !540
  %548 = getelementptr inbounds %struct.rtx_def, ptr %547, i64 0, i32 1
  %549 = getelementptr inbounds %struct.rtx_def, ptr %547, i64 0, i32 1, i32 0, i32 1
  %550 = load ptr, ptr %549, align 8, !tbaa !243
  %551 = load ptr, ptr @pre_delete_map, align 8, !tbaa !232
  %552 = getelementptr inbounds %struct.basic_block_def, ptr %550, i64 0, i32 9
  %553 = load i32, ptr %552, align 8, !tbaa !359
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds ptr, ptr %551, i64 %554
  %556 = load ptr, ptr %555, align 8, !tbaa !232
  %557 = getelementptr inbounds %struct.simple_bitmap_def, ptr %556, i64 0, i32 3, i64 %539
  %558 = load i64, ptr %557, align 8, !tbaa !382
  %559 = and i64 %558, %542
  %560 = icmp eq i64 %559, 0
  br i1 %560, label %607, label %561, !prof !542

561:                                              ; preds = %543
  %562 = load i32, ptr %547, align 8
  %563 = and i32 %562, 65535
  %564 = add nsw i32 %563, -7
  %565 = icmp ult i32 %564, 4
  br i1 %565, label %566, label %574, !prof !543

566:                                              ; preds = %561
  %567 = getelementptr inbounds %struct.rtx_def, ptr %547, i64 1
  %568 = load ptr, ptr %567, align 8, !tbaa !243
  %569 = load i32, ptr %568, align 8
  %570 = and i32 %569, 65535
  %571 = icmp eq i32 %570, 23
  br i1 %571, label %574, label %572, !prof !543

572:                                              ; preds = %566
  %573 = call ptr @single_set_2(ptr noundef nonnull %547, ptr noundef nonnull %568) #19
  br label %574

574:                                              ; preds = %572, %566, %561
  %575 = phi ptr [ %573, %572 ], [ null, %561 ], [ %568, %566 ]
  %576 = icmp eq ptr %575, null
  br i1 %576, label %607, label %577, !prof !544

577:                                              ; preds = %574
  %578 = call zeroext i8 @dbg_cnt(i32 noundef 24) #19
  %579 = icmp eq i8 %578, 0
  br i1 %579, label %607, label %580, !prof !544

580:                                              ; preds = %577
  %581 = getelementptr inbounds %struct.expr, ptr %530, i64 0, i32 5
  %582 = load ptr, ptr %581, align 8, !tbaa !545
  %583 = icmp eq ptr %582, null
  br i1 %583, label %584, label %588, !prof !546

584:                                              ; preds = %580
  %585 = getelementptr inbounds %struct.rtx_def, ptr %575, i64 0, i32 1
  %586 = load ptr, ptr %585, align 8, !tbaa !243
  %587 = call ptr @gen_reg_rtx_and_attrs(ptr noundef %586) #19
  store ptr %587, ptr %581, align 8, !tbaa !545
  br label %588

588:                                              ; preds = %584, %580
  %589 = load ptr, ptr %581, align 8, !tbaa !545
  %590 = getelementptr inbounds %struct.rtx_def, ptr %575, i64 0, i32 1
  %591 = load ptr, ptr %590, align 8, !tbaa !243
  call fastcc void @gcse_emit_move_after(ptr noundef %589, ptr noundef %591, ptr noundef nonnull %547)
  %592 = call ptr @delete_insn(ptr noundef nonnull %547) #19
  %593 = getelementptr inbounds %struct.occr, ptr %544, i64 0, i32 2
  store i8 1, ptr %593, align 8, !tbaa !547
  %594 = load i32, ptr @gcse_subst_count, align 4, !tbaa !247
  %595 = add nsw i32 %594, 1
  store i32 %595, ptr @gcse_subst_count, align 4, !tbaa !247
  %596 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %597 = icmp eq ptr %596, null
  br i1 %597, label %607, label %598, !prof !543

598:                                              ; preds = %588
  %599 = load i32, ptr %548, align 8, !tbaa !243
  %600 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %596, ptr noundef nonnull @.str.38, i32 noundef %599, i32 noundef %533)
  %601 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %602 = load i32, ptr %552, align 8, !tbaa !359
  %603 = load ptr, ptr %581, align 8, !tbaa !545
  %604 = getelementptr inbounds %struct.rtx_def, ptr %603, i64 0, i32 1
  %605 = load i32, ptr %604, align 8, !tbaa !243
  %606 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %601, ptr noundef nonnull @.str.39, i32 noundef %602, i32 noundef %605)
  br label %607

607:                                              ; preds = %598, %588, %577, %574, %543
  %608 = phi i32 [ 1, %598 ], [ 1, %588 ], [ %545, %577 ], [ %545, %574 ], [ %545, %543 ]
  %609 = load ptr, ptr %544, align 8, !tbaa !232
  %610 = icmp eq ptr %609, null
  br i1 %610, label %611, label %543, !prof !548, !llvm.loop !549

611:                                              ; preds = %607, %529
  %612 = phi i32 [ %531, %529 ], [ %608, %607 ]
  %613 = getelementptr inbounds %struct.expr, ptr %530, i64 0, i32 2
  %614 = load ptr, ptr %613, align 8, !tbaa !232
  %615 = icmp eq ptr %614, null
  br i1 %615, label %616, label %529, !prof !526, !llvm.loop !550

616:                                              ; preds = %611, %522
  %617 = phi i32 [ %524, %522 ], [ %612, %611 ]
  %618 = add nuw nsw i64 %523, 1
  %619 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !363
  %620 = zext i32 %619 to i64
  %621 = icmp ult i64 %618, %620
  br i1 %621, label %522, label %622, !prof !528, !llvm.loop !551

622:                                              ; preds = %616, %501
  %623 = phi i32 [ 0, %501 ], [ %617, %616 ]
  %624 = load ptr, ptr @edge_list, align 8, !tbaa !232
  %625 = load ptr, ptr @pre_insert_map, align 8, !tbaa !232
  %626 = load ptr, ptr %625, align 8, !tbaa !232
  %627 = getelementptr inbounds %struct.simple_bitmap_def, ptr %626, i64 0, i32 2
  %628 = load i32, ptr %627, align 4, !tbaa !552
  %629 = getelementptr inbounds %struct.edge_list, ptr %624, i64 0, i32 1
  %630 = load i32, ptr %629, align 4, !tbaa !553
  %631 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !367
  %632 = call ptr @sbitmap_vector_alloc(i32 noundef %630, i32 noundef %631) #19
  call void @sbitmap_vector_zero(ptr noundef %632, i32 noundef %630) #19
  %633 = icmp sgt i32 %630, 0
  br i1 %633, label %634, label %768, !prof !555

634:                                              ; preds = %622
  %635 = getelementptr inbounds %struct.edge_list, ptr %624, i64 0, i32 2
  %636 = icmp sgt i32 %628, 0
  %637 = zext nneg i32 %630 to i64
  %638 = zext nneg i32 %628 to i64
  br label %639

639:                                              ; preds = %634, %762
  %640 = phi i64 [ 0, %634 ], [ %764, %762 ]
  %641 = phi i32 [ 0, %634 ], [ %763, %762 ]
  %642 = load ptr, ptr %635, align 8, !tbaa !556
  %643 = getelementptr inbounds ptr, ptr %642, i64 %640
  %644 = load ptr, ptr %643, align 8, !tbaa !232
  %645 = load ptr, ptr %644, align 8, !tbaa !439
  br i1 %636, label %646, label %762, !prof !557

646:                                              ; preds = %639, %757
  %647 = phi i64 [ %759, %757 ], [ 0, %639 ]
  %648 = phi i32 [ %758, %757 ], [ %641, %639 ]
  %649 = phi i32 [ %760, %757 ], [ 0, %639 ]
  %650 = load ptr, ptr @pre_insert_map, align 8, !tbaa !232
  %651 = getelementptr inbounds ptr, ptr %650, i64 %640
  %652 = load ptr, ptr %651, align 8, !tbaa !232
  %653 = getelementptr inbounds %struct.simple_bitmap_def, ptr %652, i64 0, i32 3, i64 %647
  %654 = load i64, ptr %653, align 8, !tbaa !382
  %655 = icmp ne i64 %654, 0
  %656 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4
  %657 = icmp slt i32 %649, %656
  %658 = select i1 %655, i1 %657, i1 false, !prof !558
  br i1 %658, label %659, label %757, !prof !559

659:                                              ; preds = %646
  %660 = sext i32 %649 to i64
  br label %661

661:                                              ; preds = %659, %748
  %662 = phi i64 [ %660, %659 ], [ %750, %748 ]
  %663 = phi i64 [ %654, %659 ], [ %751, %748 ]
  %664 = phi i32 [ %648, %659 ], [ %749, %748 ]
  %665 = and i64 %663, 1
  %666 = icmp eq i64 %665, 0
  br i1 %666, label %748, label %667, !prof !560

667:                                              ; preds = %661
  %668 = getelementptr inbounds ptr, ptr %496, i64 %662
  %669 = load ptr, ptr %668, align 8, !tbaa !232
  %670 = getelementptr inbounds %struct.expr, ptr %669, i64 0, i32 5
  %671 = load ptr, ptr %670, align 8, !tbaa !545
  %672 = icmp eq ptr %671, null
  br i1 %672, label %748, label %673, !prof !460

673:                                              ; preds = %667
  %674 = getelementptr inbounds %struct.expr, ptr %669, i64 0, i32 3
  %675 = load ptr, ptr %674, align 8, !tbaa !232
  %676 = icmp eq ptr %675, null
  br i1 %676, label %748, label %677, !prof !455

677:                                              ; preds = %673
  %678 = getelementptr inbounds ptr, ptr %632, i64 %640
  %679 = lshr i64 %662, 6
  %680 = and i64 %679, 67108863
  %681 = and i64 %662, 63
  %682 = shl nuw i64 1, %681
  br label %683

683:                                              ; preds = %677, %744
  %684 = phi ptr [ %675, %677 ], [ %746, %744 ]
  %685 = phi i32 [ %664, %677 ], [ %745, %744 ]
  %686 = getelementptr inbounds %struct.occr, ptr %684, i64 0, i32 2
  %687 = load i8, ptr %686, align 8, !tbaa !547
  %688 = icmp eq i8 %687, 0
  br i1 %688, label %744, label %689, !prof !561

689:                                              ; preds = %683
  %690 = load ptr, ptr %678, align 8, !tbaa !232
  %691 = getelementptr inbounds %struct.simple_bitmap_def, ptr %690, i64 0, i32 3, i64 %680
  %692 = load i64, ptr %691, align 8, !tbaa !382
  %693 = and i64 %692, %682
  %694 = icmp eq i64 %693, 0
  br i1 %694, label %695, label %744, !prof !454

695:                                              ; preds = %689
  %696 = load ptr, ptr %635, align 8, !tbaa !556
  %697 = getelementptr inbounds ptr, ptr %696, i64 %640
  %698 = load ptr, ptr %697, align 8, !tbaa !232
  %699 = getelementptr inbounds %struct.edge_def, ptr %698, i64 0, i32 7
  %700 = load i32, ptr %699, align 8, !tbaa !350
  %701 = and i32 %700, 2
  %702 = icmp eq i32 %701, 0
  %703 = load ptr, ptr %668, align 8, !tbaa !232
  br i1 %702, label %705, label %704, !prof !456

704:                                              ; preds = %695
  call fastcc void @insert_insn_end_basic_block(ptr noundef %703, ptr noundef %645)
  br label %707

705:                                              ; preds = %695
  %706 = call fastcc ptr @process_insert_insn(ptr noundef %703)
  call void @insert_insn_on_edge(ptr noundef %706, ptr noundef %698) #19
  br label %707

707:                                              ; preds = %705, %704
  %708 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %709 = icmp eq ptr %708, null
  br i1 %709, label %725, label %710, !prof !456

710:                                              ; preds = %707
  %711 = getelementptr inbounds %struct.basic_block_def, ptr %645, i64 0, i32 9
  %712 = getelementptr inbounds %struct.expr, ptr %669, i64 0, i32 1
  %713 = load i32, ptr %711, align 8, !tbaa !359
  %714 = load ptr, ptr %635, align 8, !tbaa !556
  %715 = getelementptr inbounds ptr, ptr %714, i64 %640
  %716 = load ptr, ptr %715, align 8, !tbaa !232
  %717 = getelementptr inbounds %struct.edge_def, ptr %716, i64 0, i32 1
  %718 = load ptr, ptr %717, align 8, !tbaa !355
  %719 = getelementptr inbounds %struct.basic_block_def, ptr %718, i64 0, i32 9
  %720 = load i32, ptr %719, align 8, !tbaa !359
  %721 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %708, ptr noundef nonnull @.str.40, i32 noundef %713, i32 noundef %720)
  %722 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %723 = load i32, ptr %712, align 8, !tbaa !381
  %724 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %722, ptr noundef nonnull @.str.41, i32 noundef %723)
  br label %725

725:                                              ; preds = %710, %707
  call fastcc void @update_ld_motion_stores(ptr noundef %669)
  %726 = load ptr, ptr %678, align 8, !tbaa !232
  %727 = load ptr, ptr %726, align 8, !tbaa !523
  %728 = icmp eq ptr %727, null
  br i1 %728, label %738, label %729, !prof !456

729:                                              ; preds = %725
  %730 = getelementptr inbounds %struct.simple_bitmap_def, ptr %726, i64 0, i32 3, i64 %680
  %731 = load i64, ptr %730, align 8, !tbaa !382
  %732 = and i64 %731, %682
  %733 = icmp eq i64 %732, 0
  br i1 %733, label %734, label %738

734:                                              ; preds = %729
  %735 = getelementptr inbounds i8, ptr %727, i64 %680
  %736 = load i8, ptr %735, align 1, !tbaa !243
  %737 = add i8 %736, 1
  store i8 %737, ptr %735, align 1, !tbaa !243
  br label %738

738:                                              ; preds = %734, %729, %725
  %739 = getelementptr inbounds %struct.simple_bitmap_def, ptr %726, i64 0, i32 3, i64 %680
  %740 = load i64, ptr %739, align 8, !tbaa !382
  %741 = or i64 %740, %682
  store i64 %741, ptr %739, align 8, !tbaa !382
  %742 = load i32, ptr @gcse_create_count, align 4, !tbaa !247
  %743 = add nsw i32 %742, 1
  store i32 %743, ptr @gcse_create_count, align 4, !tbaa !247
  br label %744

744:                                              ; preds = %738, %689, %683
  %745 = phi i32 [ %685, %689 ], [ 1, %738 ], [ %685, %683 ]
  %746 = load ptr, ptr %684, align 8, !tbaa !232
  %747 = icmp eq ptr %746, null
  br i1 %747, label %748, label %683, !prof !562, !llvm.loop !563

748:                                              ; preds = %744, %673, %667, %661
  %749 = phi i32 [ %664, %667 ], [ %664, %661 ], [ %664, %673 ], [ %745, %744 ]
  %750 = add nsw i64 %662, 1
  %751 = lshr i64 %663, 1
  %752 = icmp ugt i64 %663, 1
  %753 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4
  %754 = sext i32 %753 to i64
  %755 = icmp slt i64 %750, %754
  %756 = select i1 %752, i1 %755, i1 false, !prof !558
  br i1 %756, label %661, label %757, !prof !564, !llvm.loop !565

757:                                              ; preds = %748, %646
  %758 = phi i32 [ %648, %646 ], [ %749, %748 ]
  %759 = add nuw nsw i64 %647, 1
  %760 = add i32 %649, 64
  %761 = icmp eq i64 %759, %638
  br i1 %761, label %762, label %646, !prof !566, !llvm.loop !567

762:                                              ; preds = %757, %639
  %763 = phi i32 [ %641, %639 ], [ %758, %757 ]
  %764 = add nuw nsw i64 %640, 1
  %765 = icmp eq i64 %764, %637
  br i1 %765, label %766, label %639, !prof !568, !llvm.loop !569

766:                                              ; preds = %762
  %767 = icmp eq i32 %763, 0
  br label %768

768:                                              ; preds = %766, %622
  %769 = phi i1 [ true, %622 ], [ %767, %766 ]
  call void @free(ptr noundef %632)
  %770 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !363
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %943, label %772, !prof !484

772:                                              ; preds = %768, %938
  %773 = phi i64 [ %939, %938 ], [ 0, %768 ]
  %774 = load ptr, ptr @expr_hash_table, align 8, !tbaa !365
  %775 = getelementptr inbounds ptr, ptr %774, i64 %773
  %776 = load ptr, ptr %775, align 8, !tbaa !232
  %777 = icmp eq ptr %776, null
  br i1 %777, label %938, label %778, !prof !521

778:                                              ; preds = %772, %934
  %779 = phi ptr [ %936, %934 ], [ %776, %772 ]
  %780 = getelementptr inbounds %struct.expr, ptr %779, i64 0, i32 5
  %781 = load ptr, ptr %780, align 8, !tbaa !545
  %782 = icmp eq ptr %781, null
  br i1 %782, label %934, label %783, !prof !570

783:                                              ; preds = %778
  %784 = getelementptr inbounds %struct.expr, ptr %779, i64 0, i32 3
  %785 = load ptr, ptr %784, align 8, !tbaa !232
  %786 = icmp eq ptr %785, null
  br i1 %786, label %930, label %787, !prof !571

787:                                              ; preds = %783
  %788 = getelementptr inbounds %struct.expr, ptr %779, i64 0, i32 4
  %789 = getelementptr inbounds %struct.expr, ptr %779, i64 0, i32 1
  br label %790

790:                                              ; preds = %787, %926
  %791 = phi ptr [ %785, %787 ], [ %928, %926 ]
  %792 = phi i32 [ 0, %787 ], [ %927, %926 ]
  %793 = getelementptr inbounds %struct.occr, ptr %791, i64 0, i32 2
  %794 = load i8, ptr %793, align 8, !tbaa !547
  %795 = icmp eq i8 %794, 0
  br i1 %795, label %926, label %796, !prof !572

796:                                              ; preds = %790
  %797 = load ptr, ptr %788, align 8, !tbaa !232
  %798 = icmp eq ptr %797, null
  br i1 %798, label %926, label %799, !prof !573

799:                                              ; preds = %796
  %800 = getelementptr inbounds %struct.occr, ptr %791, i64 0, i32 1
  br label %801

801:                                              ; preds = %799, %922
  %802 = phi ptr [ %797, %799 ], [ %924, %922 ]
  %803 = phi i32 [ %792, %799 ], [ %923, %922 ]
  %804 = getelementptr inbounds %struct.occr, ptr %802, i64 0, i32 1
  %805 = load ptr, ptr %804, align 8, !tbaa !540
  %806 = getelementptr inbounds %struct.occr, ptr %802, i64 0, i32 3
  %807 = load i8, ptr %806, align 1, !tbaa !574
  %808 = icmp eq i8 %807, 0
  br i1 %808, label %809, label %922, !prof !575

809:                                              ; preds = %801
  %810 = load i32, ptr %805, align 8
  %811 = and i32 %810, 134217728
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %813, label %922, !prof !576

813:                                              ; preds = %809
  %814 = getelementptr inbounds %struct.rtx_def, ptr %805, i64 0, i32 1, i32 0, i32 1
  %815 = load ptr, ptr %814, align 8, !tbaa !243
  %816 = load ptr, ptr %800, align 8, !tbaa !540
  %817 = getelementptr inbounds %struct.rtx_def, ptr %816, i64 0, i32 1, i32 0, i32 1
  %818 = load ptr, ptr %817, align 8, !tbaa !243
  %819 = load ptr, ptr @cfun, align 8, !tbaa !232
  %820 = getelementptr inbounds %struct.function, ptr %819, i64 0, i32 1
  %821 = load ptr, ptr %820, align 8, !tbaa !280
  %822 = getelementptr inbounds %struct.control_flow_graph, ptr %821, i64 0, i32 5
  %823 = load i32, ptr %822, align 8, !tbaa !287
  %824 = sext i32 %823 to i64
  %825 = call ptr @xcalloc(i64 noundef %824, i64 noundef 1) #19
  %826 = call fastcc i32 @pre_expr_reaches_here_p_work(ptr noundef %815, ptr noundef nonnull %779, ptr noundef %818, ptr noundef %825)
  call void @free(ptr noundef %825)
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %922, label %828, !prof !577

828:                                              ; preds = %813
  %829 = load ptr, ptr %780, align 8, !tbaa !545
  %830 = getelementptr inbounds %struct.rtx_def, ptr %829, i64 0, i32 1
  %831 = load i32, ptr %830, align 8, !tbaa !243
  %832 = load i32, ptr %789, align 8, !tbaa !381
  %833 = getelementptr inbounds %struct.rtx_def, ptr %805, i64 0, i32 1
  %834 = getelementptr inbounds %struct.rtx_def, ptr %805, i64 1
  %835 = load ptr, ptr %834, align 8, !tbaa !243
  %836 = load i32, ptr %835, align 8
  %837 = trunc i32 %836 to i16
  switch i16 %837, label %880 [
    i16 23, label %881
    i16 15, label %838
  ], !prof !578

838:                                              ; preds = %828
  %839 = getelementptr inbounds %struct.rtx_def, ptr %835, i64 0, i32 1
  %840 = load ptr, ptr %839, align 8, !tbaa !243
  %841 = load i32, ptr %840, align 8, !tbaa !405
  %842 = icmp sgt i32 %841, 0
  br i1 %842, label %849, label %872

843:                                              ; preds = %868
  %844 = add nuw nsw i64 %850, 1
  %845 = load ptr, ptr %839, align 8, !tbaa !243
  %846 = load i32, ptr %845, align 8, !tbaa !405
  %847 = sext i32 %846 to i64
  %848 = icmp slt i64 %844, %847
  br i1 %848, label %849, label %872, !llvm.loop !579

849:                                              ; preds = %838, %843
  %850 = phi i64 [ %844, %843 ], [ 0, %838 ]
  %851 = phi ptr [ %845, %843 ], [ %840, %838 ]
  %852 = phi ptr [ %870, %843 ], [ null, %838 ]
  %853 = phi ptr [ %869, %843 ], [ null, %838 ]
  %854 = getelementptr inbounds %struct.rtvec_def, ptr %851, i64 0, i32 1, i64 %850
  %855 = load ptr, ptr %854, align 8, !tbaa !232
  %856 = load i32, ptr %855, align 8
  %857 = and i32 %856, 65535
  %858 = icmp eq i32 %857, 23
  br i1 %858, label %859, label %868

859:                                              ; preds = %849
  %860 = icmp eq ptr %853, null
  %861 = select i1 %860, ptr %855, ptr %853
  %862 = getelementptr inbounds %struct.rtx_def, ptr %855, i64 0, i32 1, i32 0, i32 0, i64 1
  %863 = load ptr, ptr %862, align 8, !tbaa !243
  %864 = load ptr, ptr %779, align 8, !tbaa !375
  %865 = call i32 @exp_equiv_p(ptr noundef %863, ptr noundef %864, i32 noundef 0, i8 noundef zeroext 1) #19
  %866 = icmp eq i32 %865, 0
  %867 = select i1 %866, ptr %852, ptr %855
  br label %868

868:                                              ; preds = %859, %849
  %869 = phi ptr [ %853, %849 ], [ %861, %859 ]
  %870 = phi ptr [ %852, %849 ], [ %867, %859 ]
  %871 = phi i1 [ true, %849 ], [ %866, %859 ]
  br i1 %871, label %843, label %872

872:                                              ; preds = %843, %868, %838
  %873 = phi ptr [ null, %838 ], [ %869, %868 ], [ %869, %843 ]
  %874 = phi ptr [ null, %838 ], [ %870, %868 ], [ %870, %843 ]
  %875 = icmp eq ptr %873, null
  br i1 %875, label %876, label %877

876:                                              ; preds = %872
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3676, ptr noundef nonnull @.str.17) #19
  br label %877

877:                                              ; preds = %876, %872
  %878 = icmp eq ptr %874, null
  %879 = select i1 %878, ptr %873, ptr %874
  br label %881

880:                                              ; preds = %828
  call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3682, ptr noundef nonnull @.str.17) #19
  br label %881

881:                                              ; preds = %880, %877, %828
  %882 = phi ptr [ undef, %880 ], [ %835, %828 ], [ %879, %877 ]
  %883 = getelementptr inbounds %struct.rtx_def, ptr %882, i64 0, i32 1
  %884 = load ptr, ptr %883, align 8, !tbaa !243
  %885 = load i32, ptr %884, align 8
  %886 = and i32 %885, 65535
  %887 = icmp eq i32 %886, 37
  br i1 %887, label %888, label %897, !prof !580

888:                                              ; preds = %881
  %889 = call zeroext i8 @validate_change(ptr noundef nonnull %805, ptr noundef nonnull %883, ptr noundef %829, i8 noundef zeroext 0) #19
  %890 = icmp eq i8 %889, 0
  br i1 %890, label %894, label %891, !prof !564

891:                                              ; preds = %888
  %892 = call ptr @gen_move_insn(ptr noundef nonnull %884, ptr noundef %829) #19
  %893 = call ptr @emit_insn_after(ptr noundef %892, ptr noundef nonnull %805) #19
  br label %907

894:                                              ; preds = %888
  %895 = call ptr @gen_move_insn(ptr noundef %829, ptr noundef nonnull %884) #19
  %896 = call ptr @emit_insn_after(ptr noundef %895, ptr noundef nonnull %805) #19
  br label %907

897:                                              ; preds = %881
  %898 = getelementptr inbounds %struct.rtx_def, ptr %882, i64 0, i32 1, i32 0, i32 0, i64 1
  %899 = load ptr, ptr %898, align 8, !tbaa !243
  %900 = call ptr @gen_move_insn(ptr noundef %829, ptr noundef %899) #19
  %901 = call zeroext i8 @validate_change(ptr noundef nonnull %805, ptr noundef nonnull %898, ptr noundef %829, i8 noundef zeroext 0) #19
  %902 = icmp eq i8 %901, 0
  br i1 %902, label %905, label %903

903:                                              ; preds = %897
  %904 = call ptr @emit_insn_before(ptr noundef %900, ptr noundef nonnull %805) #19
  br label %907

905:                                              ; preds = %897
  %906 = call ptr @emit_insn_after(ptr noundef %900, ptr noundef nonnull %805) #19
  br label %907

907:                                              ; preds = %905, %903, %894, %891
  %908 = phi ptr [ %893, %891 ], [ %896, %894 ], [ %904, %903 ], [ %906, %905 ]
  %909 = load i32, ptr @gcse_create_count, align 4, !tbaa !247
  %910 = add nsw i32 %909, 1
  store i32 %910, ptr @gcse_create_count, align 4, !tbaa !247
  %911 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %912 = icmp eq ptr %911, null
  br i1 %912, label %921, label %913, !prof !580

913:                                              ; preds = %907
  %914 = load ptr, ptr %814, align 8, !tbaa !243
  %915 = getelementptr inbounds %struct.basic_block_def, ptr %914, i64 0, i32 9
  %916 = load i32, ptr %915, align 8, !tbaa !359
  %917 = getelementptr inbounds %struct.rtx_def, ptr %908, i64 0, i32 1
  %918 = load i32, ptr %917, align 8, !tbaa !243
  %919 = load i32, ptr %833, align 8, !tbaa !243
  %920 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %911, ptr noundef nonnull @.str.46, i32 noundef %916, i32 noundef %918, i32 noundef %832, i32 noundef %919, i32 noundef %831)
  br label %921

921:                                              ; preds = %913, %907
  store i8 1, ptr %806, align 1, !tbaa !574
  br label %922

922:                                              ; preds = %921, %813, %809, %801
  %923 = phi i32 [ 1, %921 ], [ %803, %801 ], [ %803, %809 ], [ %803, %813 ]
  %924 = load ptr, ptr %802, align 8, !tbaa !232
  %925 = icmp eq ptr %924, null
  br i1 %925, label %926, label %801, !prof !581, !llvm.loop !582

926:                                              ; preds = %922, %796, %790
  %927 = phi i32 [ %792, %790 ], [ %792, %796 ], [ %923, %922 ]
  %928 = load ptr, ptr %791, align 8, !tbaa !232
  %929 = icmp eq ptr %928, null
  br i1 %929, label %930, label %790, !prof !583, !llvm.loop !584

930:                                              ; preds = %926, %783
  %931 = phi i32 [ 0, %783 ], [ %927, %926 ]
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %934, label %933, !prof !585

933:                                              ; preds = %930
  call fastcc void @update_ld_motion_stores(ptr noundef nonnull %779)
  br label %934

934:                                              ; preds = %933, %930, %778
  %935 = getelementptr inbounds %struct.expr, ptr %779, i64 0, i32 2
  %936 = load ptr, ptr %935, align 8, !tbaa !232
  %937 = icmp eq ptr %936, null
  br i1 %937, label %938, label %778, !prof !526, !llvm.loop !586

938:                                              ; preds = %934, %772
  %939 = add nuw nsw i64 %773, 1
  %940 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !363
  %941 = zext i32 %940 to i64
  %942 = icmp ult i64 %939, %941
  br i1 %942, label %772, label %943, !prof !528, !llvm.loop !587

943:                                              ; preds = %938, %768
  br i1 %769, label %945, label %944, !prof !588

944:                                              ; preds = %943
  call void @commit_edge_insertions() #19
  br label %945

945:                                              ; preds = %944, %943
  %946 = phi i32 [ 1, %944 ], [ %623, %943 ]
  call void @free(ptr noundef %496)
  %947 = load ptr, ptr @edge_list, align 8, !tbaa !232
  call void @free_edge_list(ptr noundef %947) #19
  %948 = load ptr, ptr @transp, align 8, !tbaa !232
  call void @free(ptr noundef %948)
  %949 = load ptr, ptr @comp, align 8, !tbaa !232
  call void @free(ptr noundef %949)
  %950 = load ptr, ptr @pre_insert_map, align 8, !tbaa !232
  %951 = icmp eq ptr %950, null
  br i1 %951, label %953, label %952, !prof !483

952:                                              ; preds = %945
  call void @free(ptr noundef %950)
  br label %953

953:                                              ; preds = %952, %945
  %954 = load ptr, ptr @pre_delete_map, align 8, !tbaa !232
  %955 = icmp eq ptr %954, null
  br i1 %955, label %957, label %956, !prof !483

956:                                              ; preds = %953
  call void @free(ptr noundef %954)
  br label %957

957:                                              ; preds = %956, %953
  store ptr null, ptr @comp, align 8, !tbaa !232
  store ptr null, ptr @transp, align 8, !tbaa !232
  store ptr null, ptr @pre_delete_map, align 8, !tbaa !232
  store ptr null, ptr @pre_insert_map, align 8, !tbaa !232
  br label %958

958:                                              ; preds = %957, %328
  %959 = phi i32 [ %946, %957 ], [ 0, %328 ]
  %960 = load ptr, ptr @pre_ldst_table, align 8, !tbaa !232
  %961 = icmp eq ptr %960, null
  br i1 %961, label %963, label %962, !prof !483

962:                                              ; preds = %958
  call void @htab_delete(ptr noundef nonnull %960) #19
  br label %963

963:                                              ; preds = %962, %958
  store ptr null, ptr @pre_ldst_table, align 8, !tbaa !232
  %964 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !232
  %965 = icmp eq ptr %964, null
  br i1 %965, label %974, label %966, !prof !484

966:                                              ; preds = %963, %966
  %967 = phi ptr [ %972, %966 ], [ %964, %963 ]
  %968 = getelementptr inbounds %struct.ls_expr, ptr %967, i64 0, i32 5
  %969 = load ptr, ptr %968, align 8, !tbaa !496
  store ptr %969, ptr @pre_ldst_mems, align 8, !tbaa !232
  %970 = getelementptr inbounds %struct.ls_expr, ptr %967, i64 0, i32 3
  call void @free_INSN_LIST_list(ptr noundef nonnull %970) #19
  %971 = getelementptr inbounds %struct.ls_expr, ptr %967, i64 0, i32 4
  call void @free_INSN_LIST_list(ptr noundef nonnull %971) #19
  call void @free(ptr noundef %967)
  %972 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !232
  %973 = icmp eq ptr %972, null
  br i1 %973, label %974, label %966, !prof !589, !llvm.loop !590

974:                                              ; preds = %966, %963
  store ptr null, ptr @pre_ldst_mems, align 8, !tbaa !232
  call void @remove_fake_exit_edges() #19
  %975 = load ptr, ptr @expr_hash_table, align 8, !tbaa !365
  call void @free(ptr noundef %975)
  call fastcc void @clear_modify_mem_tables()
  %976 = load ptr, ptr @modify_mem_list, align 8, !tbaa !232
  call void @free(ptr noundef %976)
  %977 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !232
  call void @free(ptr noundef %977)
  store ptr null, ptr @modify_mem_list, align 8, !tbaa !232
  store ptr null, ptr @canon_modify_mem_list, align 8, !tbaa !232
  %978 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !232
  call void @bitmap_obstack_free(ptr noundef %978) #19
  store ptr null, ptr @modify_mem_list_set, align 8, !tbaa !232
  %979 = load ptr, ptr @blocks_with_calls, align 8, !tbaa !232
  call void @bitmap_obstack_free(ptr noundef %979) #19
  store ptr null, ptr @blocks_with_calls, align 8, !tbaa !232
  %980 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 1), align 8, !tbaa !471
  %981 = ptrtoint ptr %980 to i64
  %982 = sub i64 0, %981
  store i64 %982, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %983 = icmp sgt i64 %982, 0
  br i1 %983, label %984, label %991, !prof !483

984:                                              ; preds = %974
  %985 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !474
  %986 = ptrtoint ptr %985 to i64
  %987 = sub i64 %986, %981
  %988 = icmp sgt i64 %987, %982
  br i1 %988, label %989, label %991

989:                                              ; preds = %984
  %990 = getelementptr inbounds i8, ptr %980, i64 %982
  store ptr %990, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !475
  store ptr %990, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  br label %993

991:                                              ; preds = %984, %974
  %992 = getelementptr inbounds i8, ptr %980, i64 %982
  call void @obstack_free(ptr noundef nonnull @gcse_obstack, ptr noundef %992) #19
  br label %993

993:                                              ; preds = %991, %989
  call void @end_alias_analysis() #19
  %994 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %995 = icmp eq ptr %994, null
  br i1 %995, label %1009, label %996, !prof !520

996:                                              ; preds = %993
  %997 = call ptr @current_function_name() #19
  %998 = load ptr, ptr @cfun, align 8, !tbaa !232
  %999 = getelementptr inbounds %struct.function, ptr %998, i64 0, i32 1
  %1000 = load ptr, ptr %999, align 8, !tbaa !280
  %1001 = getelementptr inbounds %struct.control_flow_graph, ptr %1000, i64 0, i32 3
  %1002 = load i32, ptr %1001, align 8, !tbaa !282
  %1003 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %1004 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %994, ptr noundef nonnull @.str.30, ptr noundef %997, i32 noundef %1002, i32 noundef %1003)
  %1005 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %1006 = load i32, ptr @gcse_subst_count, align 4, !tbaa !247
  %1007 = load i32, ptr @gcse_create_count, align 4, !tbaa !247
  %1008 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1005, ptr noundef nonnull @.str.31, i32 noundef %1006, i32 noundef %1007)
  br label %1009

1009:                                             ; preds = %0, %12, %993, %996
  %1010 = phi i32 [ 0, %12 ], [ 0, %0 ], [ %959, %996 ], [ %959, %993 ]
  %1011 = load i32, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !247
  %1012 = or i32 %1011, %1010
  store i32 %1012, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !247
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_rtl_hoist() #10 !prof !477 !PGOFuncName !591 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !247
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_gcse, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !479
  br i1 %5, label %6, label %19, !prof !479

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !232
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19, !prof !479

12:                                               ; preds = %6
  %13 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %7) #19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15, !prof !479

15:                                               ; preds = %12
  %16 = tail call zeroext i8 @dbg_cnt(i32 noundef 16) #19
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %15, %12, %6, %0
  %20 = phi i8 [ 0, %12 ], [ 0, %6 ], [ 0, %0 ], [ %18, %15 ]
  ret i8 %20
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @execute_rtl_hoist() #11 !prof !231 {
  %1 = tail call zeroext i8 @delete_unreachable_blocks() #19
  tail call void @df_analyze() #19
  store i32 0, ptr @gcse_subst_count, align 4, !tbaa !247
  store i32 0, ptr @gcse_create_count, align 4, !tbaa !247
  %2 = load ptr, ptr @cfun, align 8, !tbaa !232
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !280
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !282
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %557, label %8

8:                                                ; preds = %0
  %9 = tail call fastcc zeroext i8 @is_too_expensive(ptr noundef nonnull @.str.47), !range !285
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %557

11:                                               ; preds = %8
  tail call void @init_alias_analysis() #19
  store i32 0, ptr @bytes_used, align 4, !tbaa !247
  %12 = tail call i32 @_obstack_begin(ptr noundef nonnull @gcse_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #19
  tail call fastcc void @alloc_gcse_mem()
  %13 = tail call i32 @get_max_insn_count() #19
  %14 = sdiv i32 %13, 4
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 11)
  %16 = or i32 %15, 1
  store i32 %16, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !363
  %17 = shl i32 %16, 3
  %18 = sext i32 %17 to i64
  %19 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %20 = add i32 %17, %19
  store i32 %20, ptr @bytes_used, align 4, !tbaa !247
  %21 = tail call ptr @xmalloc(i64 noundef %18) #19
  store ptr %21, ptr @expr_hash_table, align 8, !tbaa !365
  store i32 0, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 3), align 8, !tbaa !366
  tail call fastcc void @compute_hash_table(ptr noundef nonnull @expr_hash_table)
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %11
  tail call fastcc void @dump_hash_table(ptr noundef nonnull %22, ptr noundef nonnull @.str.48, ptr noundef nonnull @expr_hash_table)
  br label %25

25:                                               ; preds = %24, %11
  %26 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !367
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %525, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr @cfun, align 8, !tbaa !232
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !280
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !287
  %34 = tail call ptr @sbitmap_vector_alloc(i32 noundef %33, i32 noundef %26) #19
  store ptr %34, ptr @antloc, align 8, !tbaa !232
  %35 = tail call ptr @sbitmap_vector_alloc(i32 noundef %33, i32 noundef %26) #19
  store ptr %35, ptr @transp, align 8, !tbaa !232
  %36 = tail call ptr @sbitmap_vector_alloc(i32 noundef %33, i32 noundef %26) #19
  store ptr %36, ptr @comp, align 8, !tbaa !232
  %37 = tail call ptr @sbitmap_vector_alloc(i32 noundef %33, i32 noundef %26) #19
  store ptr %37, ptr @hoist_vbein, align 8, !tbaa !232
  %38 = tail call ptr @sbitmap_vector_alloc(i32 noundef %33, i32 noundef %26) #19
  store ptr %38, ptr @hoist_vbeout, align 8, !tbaa !232
  %39 = tail call ptr @sbitmap_vector_alloc(i32 noundef %33, i32 noundef %26) #19
  store ptr %39, ptr @hoist_exprs, align 8, !tbaa !232
  %40 = tail call ptr @sbitmap_vector_alloc(i32 noundef %33, i32 noundef %26) #19
  store ptr %40, ptr @transpout, align 8, !tbaa !232
  %41 = load ptr, ptr @transp, align 8, !tbaa !232
  %42 = load ptr, ptr @comp, align 8, !tbaa !232
  %43 = load ptr, ptr @antloc, align 8, !tbaa !232
  tail call fastcc void @compute_local_properties(ptr noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef nonnull @expr_hash_table)
  %44 = load ptr, ptr @transpout, align 8, !tbaa !232
  %45 = load ptr, ptr @cfun, align 8, !tbaa !232
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !280
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !287
  tail call void @sbitmap_vector_ones(ptr noundef %44, i32 noundef %49) #19
  %50 = load ptr, ptr @cfun, align 8, !tbaa !232
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !280
  %53 = load ptr, ptr %52, align 8, !tbaa !288
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !289
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !291
  %58 = icmp eq ptr %55, %57
  br i1 %58, label %144, label %59

59:                                               ; preds = %28
  %60 = load ptr, ptr @transpout, align 8
  br label %61

61:                                               ; preds = %59, %135
  %62 = phi ptr [ %55, %59 ], [ %137, %135 ]
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !243
  %65 = getelementptr inbounds %struct.rtl_bb_info, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !293
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 10
  %70 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8
  %71 = icmp ne i32 %70, 0
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %135

73:                                               ; preds = %61
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 9
  br label %75

75:                                               ; preds = %73, %130
  %76 = phi i64 [ 0, %73 ], [ %131, %130 ]
  %77 = load ptr, ptr @expr_hash_table, align 8, !tbaa !365
  %78 = getelementptr inbounds ptr, ptr %77, i64 %76
  %79 = load ptr, ptr %78, align 8, !tbaa !232
  %80 = icmp eq ptr %79, null
  br i1 %80, label %130, label %81

81:                                               ; preds = %75, %126
  %82 = phi ptr [ %128, %126 ], [ %79, %75 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !375
  %84 = load i32, ptr %83, align 8
  %85 = and i32 %84, 65535
  %86 = icmp eq i32 %85, 43
  br i1 %86, label %87, label %126

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !243
  %90 = load i32, ptr %89, align 8
  %91 = and i32 %90, 67174399
  %92 = icmp eq i32 %91, 67108909
  br i1 %92, label %126, label %93

93:                                               ; preds = %87
  %94 = load i32, ptr %74, align 8, !tbaa !359
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %60, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !232
  %98 = getelementptr inbounds %struct.expr, ptr %82, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !381
  %100 = load ptr, ptr %97, align 8, !tbaa !523
  %101 = icmp eq ptr %100, null
  br i1 %101, label %116, label %102

102:                                              ; preds = %93
  %103 = lshr i32 %99, 6
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds %struct.simple_bitmap_def, ptr %97, i64 0, i32 3, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !382
  %107 = and i32 %99, 63
  %108 = zext nneg i32 %107 to i64
  %109 = shl nuw i64 1, %108
  %110 = and i64 %106, %109
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %102
  %113 = getelementptr inbounds i8, ptr %100, i64 %104
  %114 = load i8, ptr %113, align 1, !tbaa !243
  %115 = add i8 %114, -1
  store i8 %115, ptr %113, align 1, !tbaa !243
  br label %116

116:                                              ; preds = %112, %102, %93
  %117 = and i32 %99, 63
  %118 = zext nneg i32 %117 to i64
  %119 = shl nuw i64 1, %118
  %120 = xor i64 %119, -1
  %121 = lshr i32 %99, 6
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds %struct.simple_bitmap_def, ptr %97, i64 0, i32 3, i64 %122
  %124 = load i64, ptr %123, align 8, !tbaa !382
  %125 = and i64 %124, %120
  store i64 %125, ptr %123, align 8, !tbaa !382
  br label %126

126:                                              ; preds = %116, %87, %81
  %127 = getelementptr inbounds %struct.expr, ptr %82, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !232
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %81, !llvm.loop !592

130:                                              ; preds = %126, %75
  %131 = add nuw nsw i64 %76, 1
  %132 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !363
  %133 = zext i32 %132 to i64
  %134 = icmp ult i64 %131, %133
  br i1 %134, label %75, label %135, !llvm.loop !593

135:                                              ; preds = %130, %61
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !289
  %138 = load ptr, ptr @cfun, align 8, !tbaa !232
  %139 = getelementptr inbounds %struct.function, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !280
  %141 = getelementptr inbounds %struct.control_flow_graph, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !291
  %143 = icmp eq ptr %137, %142
  br i1 %143, label %144, label %61, !llvm.loop !594

144:                                              ; preds = %135, %28
  %145 = phi ptr [ %52, %28 ], [ %140, %135 ]
  %146 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !232
  %147 = getelementptr inbounds %struct.control_flow_graph, ptr %145, i64 0, i32 5
  %148 = load i32, ptr %147, align 8, !tbaa !287
  tail call void @sbitmap_vector_zero(ptr noundef %146, i32 noundef %148) #19
  %149 = load ptr, ptr @hoist_vbein, align 8, !tbaa !232
  %150 = load ptr, ptr @cfun, align 8, !tbaa !232
  %151 = getelementptr inbounds %struct.function, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !280
  %153 = getelementptr inbounds %struct.control_flow_graph, ptr %152, i64 0, i32 5
  %154 = load i32, ptr %153, align 8, !tbaa !287
  tail call void @sbitmap_vector_zero(ptr noundef %149, i32 noundef %154) #19
  br label %155

155:                                              ; preds = %144, %212
  %156 = phi i32 [ 0, %144 ], [ %214, %212 ]
  %157 = load ptr, ptr @cfun, align 8, !tbaa !232
  %158 = getelementptr inbounds %struct.function, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !280
  %160 = getelementptr inbounds %struct.control_flow_graph, ptr %159, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !291
  %162 = getelementptr inbounds %struct.basic_block_def, ptr %161, i64 0, i32 5
  %163 = load ptr, ptr %162, align 8, !tbaa !595
  %164 = load ptr, ptr @cfun, align 8, !tbaa !232
  %165 = getelementptr inbounds %struct.function, ptr %164, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !280
  %167 = load ptr, ptr %166, align 8, !tbaa !288
  %168 = icmp eq ptr %163, %167
  br i1 %168, label %212, label %169

169:                                              ; preds = %155, %186
  %170 = phi ptr [ %209, %186 ], [ %166, %155 ]
  %171 = phi ptr [ %206, %186 ], [ %163, %155 ]
  %172 = phi i32 [ %204, %186 ], [ 0, %155 ]
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 6
  %174 = load ptr, ptr %173, align 8, !tbaa !289
  %175 = getelementptr inbounds %struct.control_flow_graph, ptr %170, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !291
  %177 = icmp eq ptr %174, %176
  br i1 %177, label %186, label %178

178:                                              ; preds = %169
  %179 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !232
  %180 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 9
  %181 = load i32, ptr %180, align 8, !tbaa !359
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds ptr, ptr %179, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !232
  %185 = load ptr, ptr @hoist_vbein, align 8, !tbaa !232
  tail call void @sbitmap_intersection_of_succs(ptr noundef %184, ptr noundef %185, i32 noundef %181) #19
  br label %186

186:                                              ; preds = %178, %169
  %187 = load ptr, ptr @hoist_vbein, align 8, !tbaa !232
  %188 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 9
  %189 = load i32, ptr %188, align 8, !tbaa !359
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds ptr, ptr %187, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !232
  %193 = load ptr, ptr @antloc, align 8, !tbaa !232
  %194 = getelementptr inbounds ptr, ptr %193, i64 %190
  %195 = load ptr, ptr %194, align 8, !tbaa !232
  %196 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !232
  %197 = getelementptr inbounds ptr, ptr %196, i64 %190
  %198 = load ptr, ptr %197, align 8, !tbaa !232
  %199 = load ptr, ptr @transp, align 8, !tbaa !232
  %200 = getelementptr inbounds ptr, ptr %199, i64 %190
  %201 = load ptr, ptr %200, align 8, !tbaa !232
  %202 = tail call zeroext i8 @sbitmap_a_or_b_and_c_cg(ptr noundef %192, ptr noundef %195, ptr noundef %198, ptr noundef %201) #19
  %203 = zext i8 %202 to i32
  %204 = or i32 %172, %203
  %205 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 5
  %206 = load ptr, ptr %205, align 8, !tbaa !595
  %207 = load ptr, ptr @cfun, align 8, !tbaa !232
  %208 = getelementptr inbounds %struct.function, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !280
  %210 = load ptr, ptr %209, align 8, !tbaa !288
  %211 = icmp eq ptr %206, %210
  br i1 %211, label %212, label %169, !llvm.loop !596

212:                                              ; preds = %186, %155
  %213 = phi i32 [ 0, %155 ], [ %204, %186 ]
  %214 = add nuw nsw i32 %156, 1
  %215 = icmp eq i32 %213, 0
  br i1 %215, label %216, label %155, !llvm.loop !597

216:                                              ; preds = %212
  %217 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %218 = icmp eq ptr %217, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %217, ptr noundef nonnull @.str.50, i32 noundef %214)
  br label %221

221:                                              ; preds = %219, %216
  tail call void @calculate_dominance_info(i32 noundef 1) #19
  %222 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %223 = icmp eq ptr %222, null
  br i1 %223, label %226, label %224

224:                                              ; preds = %221
  %225 = tail call i32 @fputc(i32 10, ptr nonnull %222)
  br label %226

226:                                              ; preds = %224, %221
  %227 = load ptr, ptr @hoist_exprs, align 8, !tbaa !232
  %228 = load ptr, ptr @cfun, align 8, !tbaa !232
  %229 = getelementptr inbounds %struct.function, ptr %228, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !280
  %231 = getelementptr inbounds %struct.control_flow_graph, ptr %230, i64 0, i32 5
  %232 = load i32, ptr %231, align 8, !tbaa !287
  tail call void @sbitmap_vector_zero(ptr noundef %227, i32 noundef %232) #19
  %233 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !367
  %234 = zext i32 %233 to i64
  %235 = tail call ptr @xcalloc(i64 noundef %234, i64 noundef 8) #19
  %236 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !363
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %258, label %238

238:                                              ; preds = %226
  %239 = zext i32 %236 to i64
  br label %240

240:                                              ; preds = %238, %255
  %241 = phi i64 [ 0, %238 ], [ %256, %255 ]
  %242 = load ptr, ptr @expr_hash_table, align 8, !tbaa !365
  %243 = getelementptr inbounds ptr, ptr %242, i64 %241
  %244 = load ptr, ptr %243, align 8, !tbaa !232
  %245 = icmp eq ptr %244, null
  br i1 %245, label %255, label %246

246:                                              ; preds = %240, %246
  %247 = phi ptr [ %253, %246 ], [ %244, %240 ]
  %248 = getelementptr inbounds %struct.expr, ptr %247, i64 0, i32 1
  %249 = load i32, ptr %248, align 8, !tbaa !381
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds ptr, ptr %235, i64 %250
  store ptr %247, ptr %251, align 8, !tbaa !232
  %252 = getelementptr inbounds %struct.expr, ptr %247, i64 0, i32 2
  %253 = load ptr, ptr %252, align 8, !tbaa !232
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %246, !llvm.loop !598

255:                                              ; preds = %246, %240
  %256 = add nuw nsw i64 %241, 1
  %257 = icmp eq i64 %256, %239
  br i1 %257, label %258, label %240, !llvm.loop !599

258:                                              ; preds = %255, %226
  %259 = load ptr, ptr @cfun, align 8, !tbaa !232
  %260 = getelementptr inbounds %struct.function, ptr %259, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !280
  %262 = load ptr, ptr %261, align 8, !tbaa !288
  %263 = getelementptr inbounds %struct.basic_block_def, ptr %262, i64 0, i32 6
  %264 = load ptr, ptr %263, align 8, !tbaa !289
  %265 = getelementptr inbounds %struct.control_flow_graph, ptr %261, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !291
  %267 = icmp eq ptr %264, %266
  br i1 %267, label %516, label %268

268:                                              ; preds = %258, %506
  %269 = phi ptr [ %509, %506 ], [ %264, %258 ]
  %270 = phi i32 [ %507, %506 ], [ 0, %258 ]
  %271 = tail call ptr @get_dominated_by(i32 noundef 1, ptr noundef %269) #19
  %272 = getelementptr inbounds %struct.basic_block_def, ptr %269, i64 0, i32 9
  %273 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !232
  %274 = load i32, ptr %272, align 8, !tbaa !359
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds ptr, ptr %273, i64 %275
  %277 = load ptr, ptr %276, align 8, !tbaa !232
  %278 = getelementptr inbounds %struct.simple_bitmap_def, ptr %277, i64 0, i32 1
  %279 = load i32, ptr %278, align 8, !tbaa !600
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %371, label %281

281:                                              ; preds = %268
  %282 = icmp eq ptr %271, null
  br label %283

283:                                              ; preds = %281, %360
  %284 = phi ptr [ %277, %281 ], [ %367, %360 ]
  %285 = phi i64 [ %275, %281 ], [ %365, %360 ]
  %286 = phi i32 [ 0, %281 ], [ %362, %360 ]
  %287 = phi i32 [ 0, %281 ], [ %361, %360 ]
  %288 = lshr i32 %286, 6
  %289 = zext nneg i32 %288 to i64
  %290 = getelementptr inbounds %struct.simple_bitmap_def, ptr %284, i64 0, i32 3, i64 %289
  %291 = load i64, ptr %290, align 8, !tbaa !382
  %292 = and i32 %286, 63
  %293 = zext nneg i32 %292 to i64
  %294 = shl nuw i64 1, %293
  %295 = and i64 %291, %294
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %360, label %297

297:                                              ; preds = %283
  %298 = load ptr, ptr @transpout, align 8, !tbaa !232
  %299 = getelementptr inbounds ptr, ptr %298, i64 %285
  %300 = load ptr, ptr %299, align 8, !tbaa !232
  %301 = getelementptr inbounds %struct.simple_bitmap_def, ptr %300, i64 0, i32 3, i64 %289
  %302 = load i64, ptr %301, align 8, !tbaa !382
  %303 = and i64 %302, %294
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %360, label %305

305:                                              ; preds = %297, %334
  %306 = phi i32 [ %335, %334 ], [ 0, %297 ]
  %307 = phi i32 [ %336, %334 ], [ 0, %297 ]
  br i1 %282, label %315, label %308

308:                                              ; preds = %305
  %309 = load i32, ptr %271, align 8, !tbaa !601
  %310 = icmp ugt i32 %309, %307
  br i1 %310, label %311, label %315

311:                                              ; preds = %308
  %312 = zext i32 %307 to i64
  %313 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %271, i64 0, i32 2, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !232
  br label %315

315:                                              ; preds = %311, %308, %305
  %316 = phi ptr [ %314, %311 ], [ null, %308 ], [ null, %305 ]
  %317 = phi i1 [ false, %311 ], [ true, %308 ], [ true, %305 ]
  br i1 %317, label %337, label %318

318:                                              ; preds = %315
  %319 = icmp eq ptr %269, %316
  br i1 %319, label %334, label %320

320:                                              ; preds = %318
  %321 = load ptr, ptr @antloc, align 8, !tbaa !232
  %322 = getelementptr inbounds %struct.basic_block_def, ptr %316, i64 0, i32 9
  %323 = load i32, ptr %322, align 8, !tbaa !359
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds ptr, ptr %321, i64 %324
  %326 = load ptr, ptr %325, align 8, !tbaa !232
  %327 = getelementptr inbounds %struct.simple_bitmap_def, ptr %326, i64 0, i32 3, i64 %289
  %328 = load i64, ptr %327, align 8, !tbaa !382
  %329 = and i64 %328, %294
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %334, label %331

331:                                              ; preds = %320
  %332 = tail call fastcc i32 @hoist_expr_reaches_here_p(ptr noundef %269, i32 noundef %286, ptr noundef %316, ptr noundef null), !range !321
  %333 = add nsw i32 %332, %306
  br label %334

334:                                              ; preds = %331, %320, %318
  %335 = phi i32 [ %306, %318 ], [ %306, %320 ], [ %333, %331 ]
  %336 = add i32 %307, 1
  br label %305, !llvm.loop !603

337:                                              ; preds = %315
  %338 = icmp sgt i32 %306, 1
  br i1 %338, label %339, label %360

339:                                              ; preds = %337
  %340 = load ptr, ptr @hoist_exprs, align 8, !tbaa !232
  %341 = load i32, ptr %272, align 8, !tbaa !359
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds ptr, ptr %340, i64 %342
  %344 = load ptr, ptr %343, align 8, !tbaa !232
  %345 = load ptr, ptr %344, align 8, !tbaa !523
  %346 = icmp eq ptr %345, null
  br i1 %346, label %356, label %347

347:                                              ; preds = %339
  %348 = getelementptr inbounds %struct.simple_bitmap_def, ptr %344, i64 0, i32 3, i64 %289
  %349 = load i64, ptr %348, align 8, !tbaa !382
  %350 = and i64 %349, %294
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %347
  %353 = getelementptr inbounds i8, ptr %345, i64 %289
  %354 = load i8, ptr %353, align 1, !tbaa !243
  %355 = add i8 %354, 1
  store i8 %355, ptr %353, align 1, !tbaa !243
  br label %356

356:                                              ; preds = %352, %347, %339
  %357 = getelementptr inbounds %struct.simple_bitmap_def, ptr %344, i64 0, i32 3, i64 %289
  %358 = load i64, ptr %357, align 8, !tbaa !382
  %359 = or i64 %358, %294
  store i64 %359, ptr %357, align 8, !tbaa !382
  br label %360

360:                                              ; preds = %356, %337, %297, %283
  %361 = phi i32 [ 1, %356 ], [ %287, %337 ], [ %287, %297 ], [ %287, %283 ]
  %362 = add nuw i32 %286, 1
  %363 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !232
  %364 = load i32, ptr %272, align 8, !tbaa !359
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds ptr, ptr %363, i64 %365
  %367 = load ptr, ptr %366, align 8, !tbaa !232
  %368 = getelementptr inbounds %struct.simple_bitmap_def, ptr %367, i64 0, i32 1
  %369 = load i32, ptr %368, align 8, !tbaa !600
  %370 = icmp ult i32 %362, %369
  br i1 %370, label %283, label %371, !llvm.loop !604

371:                                              ; preds = %360, %268
  %372 = phi i32 [ 0, %268 ], [ %361, %360 ]
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %385, label %374

374:                                              ; preds = %371
  %375 = load ptr, ptr @hoist_exprs, align 8, !tbaa !232
  %376 = load i32, ptr %272, align 8, !tbaa !359
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds ptr, ptr %375, i64 %377
  %379 = load ptr, ptr %378, align 8, !tbaa !232
  %380 = getelementptr inbounds %struct.simple_bitmap_def, ptr %379, i64 0, i32 1
  %381 = load i32, ptr %380, align 8, !tbaa !600
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %501, label %383

383:                                              ; preds = %374
  %384 = icmp eq ptr %271, null
  br label %387

385:                                              ; preds = %371
  %386 = icmp eq ptr %271, null
  br i1 %386, label %506, label %504

387:                                              ; preds = %383, %489
  %388 = phi i64 [ 0, %383 ], [ %491, %489 ]
  %389 = phi ptr [ %379, %383 ], [ %496, %489 ]
  %390 = phi i32 [ %270, %383 ], [ %490, %489 ]
  %391 = lshr i64 %388, 6
  %392 = and i64 %391, 67108863
  %393 = getelementptr inbounds %struct.simple_bitmap_def, ptr %389, i64 0, i32 3, i64 %392
  %394 = load i64, ptr %393, align 8, !tbaa !382
  %395 = and i64 %388, 63
  %396 = shl nuw i64 1, %395
  %397 = and i64 %394, %396
  %398 = icmp eq i64 %397, 0
  br i1 %398, label %489, label %399

399:                                              ; preds = %387
  %400 = trunc i64 %388 to i32
  br label %401

401:                                              ; preds = %399, %485
  %402 = phi i32 [ %486, %485 ], [ %390, %399 ]
  %403 = phi i32 [ %487, %485 ], [ 0, %399 ]
  %404 = phi i32 [ %488, %485 ], [ 0, %399 ]
  br i1 %384, label %412, label %405

405:                                              ; preds = %401
  %406 = load i32, ptr %271, align 8, !tbaa !601
  %407 = icmp ugt i32 %406, %404
  br i1 %407, label %408, label %412

408:                                              ; preds = %405
  %409 = zext i32 %404 to i64
  %410 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %271, i64 0, i32 2, i64 %409
  %411 = load ptr, ptr %410, align 8, !tbaa !232
  br label %412

412:                                              ; preds = %408, %405, %401
  %413 = phi ptr [ %411, %408 ], [ null, %405 ], [ null, %401 ]
  %414 = phi i1 [ false, %408 ], [ true, %405 ], [ true, %401 ]
  br i1 %414, label %489, label %415

415:                                              ; preds = %412
  %416 = icmp eq ptr %269, %413
  br i1 %416, label %485, label %417

417:                                              ; preds = %415
  %418 = load ptr, ptr @antloc, align 8, !tbaa !232
  %419 = getelementptr inbounds %struct.basic_block_def, ptr %413, i64 0, i32 9
  %420 = load i32, ptr %419, align 8, !tbaa !359
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds ptr, ptr %418, i64 %421
  %423 = load ptr, ptr %422, align 8, !tbaa !232
  %424 = getelementptr inbounds %struct.simple_bitmap_def, ptr %423, i64 0, i32 3, i64 %392
  %425 = load i64, ptr %424, align 8, !tbaa !382
  %426 = and i64 %425, %396
  %427 = icmp eq i64 %426, 0
  br i1 %427, label %485, label %428

428:                                              ; preds = %417
  %429 = tail call fastcc i32 @hoist_expr_reaches_here_p(ptr noundef %269, i32 noundef %400, ptr noundef %413, ptr noundef null), !range !321
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %485, label %431

431:                                              ; preds = %428
  %432 = getelementptr inbounds ptr, ptr %235, i64 %388
  %433 = load ptr, ptr %432, align 8, !tbaa !232
  %434 = getelementptr inbounds %struct.expr, ptr %433, i64 0, i32 3
  br label %435

435:                                              ; preds = %435, %431
  %436 = phi ptr [ %434, %431 ], [ %437, %435 ]
  %437 = load ptr, ptr %436, align 8, !tbaa !232
  %438 = getelementptr inbounds %struct.occr, ptr %437, i64 0, i32 1
  %439 = load ptr, ptr %438, align 8, !tbaa !540
  %440 = getelementptr inbounds %struct.rtx_def, ptr %439, i64 0, i32 1, i32 0, i32 1
  %441 = load ptr, ptr %440, align 8, !tbaa !243
  %442 = icmp ne ptr %441, %413
  %443 = icmp ne ptr %437, null
  %444 = and i1 %443, %442
  br i1 %444, label %435, label %445, !llvm.loop !605

445:                                              ; preds = %435
  %446 = getelementptr inbounds %struct.occr, ptr %437, i64 0, i32 1
  br i1 %443, label %448, label %447

447:                                              ; preds = %445
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 4384, ptr noundef nonnull @.str.17) #19
  br label %448

448:                                              ; preds = %447, %445
  %449 = load ptr, ptr %446, align 8, !tbaa !540
  %450 = load i32, ptr %449, align 8
  %451 = and i32 %450, 65535
  %452 = add nsw i32 %451, -7
  %453 = icmp ult i32 %452, 4
  br i1 %453, label %454, label %462

454:                                              ; preds = %448
  %455 = getelementptr inbounds %struct.rtx_def, ptr %449, i64 1
  %456 = load ptr, ptr %455, align 8, !tbaa !243
  %457 = load i32, ptr %456, align 8
  %458 = and i32 %457, 65535
  %459 = icmp eq i32 %458, 23
  br i1 %459, label %462, label %460

460:                                              ; preds = %454
  %461 = tail call ptr @single_set_2(ptr noundef nonnull %449, ptr noundef nonnull %456) #19
  br label %462

462:                                              ; preds = %460, %454, %448
  %463 = phi ptr [ %461, %460 ], [ null, %448 ], [ %456, %454 ]
  %464 = icmp eq ptr %463, null
  br i1 %464, label %465, label %466

465:                                              ; preds = %462
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 4387, ptr noundef nonnull @.str.17) #19
  br label %466

466:                                              ; preds = %465, %462
  %467 = getelementptr inbounds %struct.expr, ptr %433, i64 0, i32 5
  %468 = load ptr, ptr %467, align 8, !tbaa !545
  %469 = icmp eq ptr %468, null
  br i1 %469, label %470, label %474

470:                                              ; preds = %466
  %471 = getelementptr inbounds %struct.rtx_def, ptr %463, i64 0, i32 1
  %472 = load ptr, ptr %471, align 8, !tbaa !243
  %473 = tail call ptr @gen_reg_rtx_and_attrs(ptr noundef %472) #19
  store ptr %473, ptr %467, align 8, !tbaa !545
  br label %474

474:                                              ; preds = %470, %466
  %475 = load ptr, ptr %467, align 8, !tbaa !545
  %476 = getelementptr inbounds %struct.rtx_def, ptr %463, i64 0, i32 1
  %477 = load ptr, ptr %476, align 8, !tbaa !243
  tail call fastcc void @gcse_emit_move_after(ptr noundef %475, ptr noundef %477, ptr noundef nonnull %449)
  %478 = tail call ptr @delete_insn(ptr noundef nonnull %449) #19
  %479 = getelementptr inbounds %struct.occr, ptr %437, i64 0, i32 2
  store i8 1, ptr %479, align 8, !tbaa !547
  %480 = load i32, ptr @gcse_subst_count, align 4, !tbaa !247
  %481 = add nsw i32 %480, 1
  store i32 %481, ptr @gcse_subst_count, align 4, !tbaa !247
  %482 = icmp eq i32 %403, 0
  br i1 %482, label %483, label %485

483:                                              ; preds = %474
  %484 = load ptr, ptr %432, align 8, !tbaa !232
  tail call fastcc void @insert_insn_end_basic_block(ptr noundef %484, ptr noundef %269)
  br label %485

485:                                              ; preds = %483, %474, %428, %417, %415
  %486 = phi i32 [ %402, %415 ], [ %402, %428 ], [ %402, %417 ], [ 1, %483 ], [ 1, %474 ]
  %487 = phi i32 [ %403, %415 ], [ %403, %428 ], [ %403, %417 ], [ 1, %483 ], [ 1, %474 ]
  %488 = add i32 %404, 1
  br label %401, !llvm.loop !606

489:                                              ; preds = %412, %387
  %490 = phi i32 [ %390, %387 ], [ %402, %412 ]
  %491 = add nuw nsw i64 %388, 1
  %492 = load ptr, ptr @hoist_exprs, align 8, !tbaa !232
  %493 = load i32, ptr %272, align 8, !tbaa !359
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds ptr, ptr %492, i64 %494
  %496 = load ptr, ptr %495, align 8, !tbaa !232
  %497 = getelementptr inbounds %struct.simple_bitmap_def, ptr %496, i64 0, i32 1
  %498 = load i32, ptr %497, align 8, !tbaa !600
  %499 = zext i32 %498 to i64
  %500 = icmp ult i64 %491, %499
  br i1 %500, label %387, label %501, !llvm.loop !607

501:                                              ; preds = %489, %374
  %502 = phi i32 [ %270, %374 ], [ %490, %489 ]
  %503 = icmp eq ptr %271, null
  br i1 %503, label %506, label %504

504:                                              ; preds = %501, %385
  %505 = phi i32 [ %270, %385 ], [ %502, %501 ]
  tail call void @free(ptr noundef %271)
  br label %506

506:                                              ; preds = %504, %501, %385
  %507 = phi i32 [ %270, %385 ], [ %502, %501 ], [ %505, %504 ]
  %508 = getelementptr inbounds %struct.basic_block_def, ptr %269, i64 0, i32 6
  %509 = load ptr, ptr %508, align 8, !tbaa !289
  %510 = load ptr, ptr @cfun, align 8, !tbaa !232
  %511 = getelementptr inbounds %struct.function, ptr %510, i64 0, i32 1
  %512 = load ptr, ptr %511, align 8, !tbaa !280
  %513 = getelementptr inbounds %struct.control_flow_graph, ptr %512, i64 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !291
  %515 = icmp eq ptr %509, %514
  br i1 %515, label %516, label %268, !llvm.loop !608

516:                                              ; preds = %506, %258
  %517 = phi i32 [ 0, %258 ], [ %507, %506 ]
  tail call void @free(ptr noundef %235)
  %518 = load ptr, ptr @antloc, align 8, !tbaa !232
  tail call void @free(ptr noundef %518)
  %519 = load ptr, ptr @transp, align 8, !tbaa !232
  tail call void @free(ptr noundef %519)
  %520 = load ptr, ptr @comp, align 8, !tbaa !232
  tail call void @free(ptr noundef %520)
  %521 = load ptr, ptr @hoist_vbein, align 8, !tbaa !232
  tail call void @free(ptr noundef %521)
  %522 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !232
  tail call void @free(ptr noundef %522)
  %523 = load ptr, ptr @hoist_exprs, align 8, !tbaa !232
  tail call void @free(ptr noundef %523)
  %524 = load ptr, ptr @transpout, align 8, !tbaa !232
  tail call void @free(ptr noundef %524)
  tail call void @free_dominance_info(i32 noundef 1) #19
  br label %525

525:                                              ; preds = %516, %25
  %526 = phi i32 [ %517, %516 ], [ 0, %25 ]
  %527 = load ptr, ptr @expr_hash_table, align 8, !tbaa !365
  tail call void @free(ptr noundef %527)
  tail call fastcc void @free_gcse_mem()
  %528 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 1), align 8, !tbaa !471
  %529 = ptrtoint ptr %528 to i64
  %530 = sub i64 0, %529
  store i64 %530, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %531 = icmp sgt i64 %530, 0
  br i1 %531, label %532, label %539

532:                                              ; preds = %525
  %533 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !474
  %534 = ptrtoint ptr %533 to i64
  %535 = sub i64 %534, %529
  %536 = icmp sgt i64 %535, %530
  br i1 %536, label %537, label %539

537:                                              ; preds = %532
  %538 = getelementptr inbounds i8, ptr %528, i64 %530
  store ptr %538, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !475
  store ptr %538, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  br label %541

539:                                              ; preds = %532, %525
  %540 = getelementptr inbounds i8, ptr %528, i64 %530
  tail call void @obstack_free(ptr noundef nonnull @gcse_obstack, ptr noundef %540) #19
  br label %541

541:                                              ; preds = %539, %537
  tail call void @end_alias_analysis() #19
  %542 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %543 = icmp eq ptr %542, null
  br i1 %543, label %557, label %544

544:                                              ; preds = %541
  %545 = tail call ptr @current_function_name() #19
  %546 = load ptr, ptr @cfun, align 8, !tbaa !232
  %547 = getelementptr inbounds %struct.function, ptr %546, i64 0, i32 1
  %548 = load ptr, ptr %547, align 8, !tbaa !280
  %549 = getelementptr inbounds %struct.control_flow_graph, ptr %548, i64 0, i32 3
  %550 = load i32, ptr %549, align 8, !tbaa !282
  %551 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %552 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %542, ptr noundef nonnull @.str.49, ptr noundef %545, i32 noundef %550, i32 noundef %551)
  %553 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %554 = load i32, ptr @gcse_subst_count, align 4, !tbaa !247
  %555 = load i32, ptr @gcse_create_count, align 4, !tbaa !247
  %556 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %553, ptr noundef nonnull @.str.31, i32 noundef %554, i32 noundef %555)
  br label %557

557:                                              ; preds = %0, %8, %541, %544
  %558 = phi i32 [ 0, %8 ], [ 0, %0 ], [ %526, %544 ], [ %526, %541 ]
  %559 = load i32, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !247
  %560 = or i32 %559, %558
  store i32 %560, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !247
  ret i32 0
}

declare void @gt_ggc_mx_rtx_def(ptr noundef) #3

declare void @gt_pch_nx_rtx_def(ptr noundef) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

declare void @start_sequence() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

declare zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #3

declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

declare void @df_analyze() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @is_too_expensive(ptr noundef %0) unnamed_addr #10 !prof !609 !PGOFuncName !610 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !232
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !280
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !611
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !282
  %9 = shl nsw i32 %8, 2
  %10 = add nsw i32 %9, 20000
  %11 = icmp sgt i32 %6, %10
  br i1 %11, label %12, label %15, !prof !612

12:                                               ; preds = %1
  %13 = sdiv i32 %6, %8
  %14 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 69, ptr noundef nonnull @.str.8, ptr noundef %0, i32 noundef %8, i32 noundef %13) #19
  br label %35

15:                                               ; preds = %1
  %16 = tail call i32 @max_reg_num() #19
  %17 = add i32 %16, 63
  %18 = lshr i32 %17, 6
  %19 = mul i32 %18, %8
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 3
  %22 = load ptr, ptr @compiler_params, align 8, !tbaa !232
  %23 = getelementptr inbounds %struct.param_info, ptr %22, i64 23, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !613
  %25 = sext i32 %24 to i64
  %26 = icmp ugt i64 %21, %25
  br i1 %26, label %27, label %35, !prof !615

27:                                               ; preds = %15
  %28 = load ptr, ptr @cfun, align 8, !tbaa !232
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !280
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !282
  %33 = tail call i32 @max_reg_num() #19
  %34 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 69, ptr noundef nonnull @.str.9, ptr noundef %0, i32 noundef %32, i32 noundef %33) #19
  br label %35

35:                                               ; preds = %15, %27, %12
  %36 = phi i8 [ 1, %12 ], [ 1, %27 ], [ 0, %15 ]
  ret i8 %36
}

declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #13

; Function Attrs: nounwind uwtable
define internal fastcc void @alloc_gcse_mem() unnamed_addr #10 !prof !231 !PGOFuncName !616 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %1, ptr @reg_set_bitmap, align 8, !tbaa !232
  %2 = load ptr, ptr @cfun, align 8, !tbaa !232
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !280
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !287
  %7 = sext i32 %6 to i64
  %8 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %9 = shl i32 %6, 3
  %10 = add i32 %9, %8
  store i32 %10, ptr @bytes_used, align 4, !tbaa !247
  %11 = tail call ptr @xcalloc(i64 noundef %7, i64 noundef 8) #19
  store ptr %11, ptr @modify_mem_list, align 8, !tbaa !232
  %12 = load ptr, ptr @cfun, align 8, !tbaa !232
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !280
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !287
  %17 = sext i32 %16 to i64
  %18 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %19 = shl i32 %16, 3
  %20 = add i32 %19, %18
  store i32 %20, ptr @bytes_used, align 4, !tbaa !247
  %21 = tail call ptr @xcalloc(i64 noundef %17, i64 noundef 8) #19
  store ptr %21, ptr @canon_modify_mem_list, align 8, !tbaa !232
  %22 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %22, ptr @modify_mem_list_set, align 8, !tbaa !232
  %23 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #19
  store ptr %23, ptr @blocks_with_calls, align 8, !tbaa !232
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_hash_table(ptr nocapture noundef %0) unnamed_addr #10 !prof !617 !PGOFuncName !618 {
  %2 = getelementptr inbounds %struct.hash_table_d, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 4, !tbaa !367
  %3 = load ptr, ptr %0, align 8, !tbaa !365
  %4 = getelementptr inbounds %struct.hash_table_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !363
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %7, i1 false), !prof !619
  tail call fastcc void @clear_modify_mem_tables()
  %8 = tail call i32 @max_reg_num() #19
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 4
  %11 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %12 = trunc i64 %10 to i32
  %13 = add i32 %11, %12
  store i32 %13, ptr @bytes_used, align 4, !tbaa !247
  %14 = tail call ptr @xmalloc(i64 noundef %10) #19
  store ptr %14, ptr @reg_avail_info, align 8, !tbaa !232
  %15 = tail call i32 @max_reg_num() #19
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %25, !prof !555

17:                                               ; preds = %1, %17
  %18 = phi i64 [ %21, %17 ], [ 0, %1 ]
  %19 = load ptr, ptr @reg_avail_info, align 8, !tbaa !232
  %20 = getelementptr inbounds %struct.reg_avail_info, ptr %19, i64 %18
  store ptr null, ptr %20, align 8, !tbaa !620
  %21 = add nuw nsw i64 %18, 1
  %22 = tail call i32 @max_reg_num() #19
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %17, label %25, !prof !622, !llvm.loop !623

25:                                               ; preds = %17, %1
  %26 = load ptr, ptr @cfun, align 8, !tbaa !232
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !280
  %29 = load ptr, ptr %28, align 8, !tbaa !232
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !289
  store ptr %31, ptr @current_bb, align 8, !tbaa !232
  %32 = load ptr, ptr @cfun, align 8, !tbaa !232
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !280
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !291
  %37 = icmp eq ptr %31, %36
  br i1 %37, label %181, label %38, !prof !484

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.hash_table_d, ptr %0, i64 0, i32 3
  br label %40

40:                                               ; preds = %38, %171
  %41 = phi ptr [ %31, %38 ], [ %174, %171 ]
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !243
  %44 = load ptr, ptr %43, align 8, !tbaa !243
  %45 = icmp eq ptr %44, null
  br i1 %45, label %104, label %46, !prof !484

46:                                               ; preds = %40, %100
  %47 = phi ptr [ %102, %100 ], [ %44, %40 ]
  %48 = load ptr, ptr @current_bb, align 8, !tbaa !232
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !243
  %51 = getelementptr inbounds %struct.rtl_bb_info, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !293
  %53 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !243
  %55 = icmp eq ptr %47, %54
  br i1 %55, label %104, label %56, !prof !624

56:                                               ; preds = %46
  %57 = load i32, ptr %47, align 8
  %58 = and i32 %57, 65535
  %59 = add nsw i32 %58, -7
  %60 = icmp ult i32 %59, 4
  br i1 %60, label %61, label %100, !prof !625

61:                                               ; preds = %56
  %62 = icmp eq i32 %58, 10
  br i1 %62, label %63, label %97, !prof !626

63:                                               ; preds = %61
  %64 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !382
  %65 = load ptr, ptr @reg_avail_info, align 8
  %66 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %67 = load ptr, ptr @current_bb, align 8
  br label %68

68:                                               ; preds = %63, %89
  %69 = phi i64 [ 0, %63 ], [ %90, %89 ]
  %70 = shl nuw nsw i64 1, %69
  %71 = and i64 %64, %70
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %89, label %73, !prof !627

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.reg_avail_info, ptr %65, i64 %69
  %75 = load ptr, ptr @df, align 8, !tbaa !232
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 10
  %77 = load ptr, ptr %76, align 8, !tbaa !628
  %78 = load i32, ptr %66, align 8, !tbaa !243
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %77, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !232
  %82 = getelementptr inbounds %struct.df_insn_info, ptr %81, i64 0, i32 5
  %83 = load i32, ptr %82, align 8, !tbaa !631
  %84 = getelementptr inbounds %struct.reg_avail_info, ptr %65, i64 %69, i32 2
  store i32 %83, ptr %84, align 4, !tbaa !633
  %85 = load ptr, ptr %74, align 8, !tbaa !620
  %86 = icmp eq ptr %85, %67
  br i1 %86, label %89, label %87, !prof !634

87:                                               ; preds = %73
  store ptr %67, ptr %74, align 8, !tbaa !620
  %88 = getelementptr inbounds %struct.reg_avail_info, ptr %65, i64 %69, i32 1
  store i32 %83, ptr %88, align 8, !tbaa !635
  br label %89

89:                                               ; preds = %87, %73, %68
  %90 = add nuw nsw i64 %69, 1
  %91 = icmp eq i64 %90, 53
  br i1 %91, label %92, label %68, !prof !636, !llvm.loop !637

92:                                               ; preds = %89
  %93 = load i32, ptr %47, align 8
  %94 = and i32 %93, -2080374784
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97, !prof !638

96:                                               ; preds = %92
  tail call fastcc void @record_last_mem_set_info(ptr noundef nonnull %47)
  br label %97

97:                                               ; preds = %96, %92, %61
  %98 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !243
  tail call void @note_stores(ptr noundef %99, ptr noundef nonnull @record_last_set_info, ptr noundef nonnull %47) #19
  br label %100

100:                                              ; preds = %97, %56
  %101 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 2
  %102 = load ptr, ptr %101, align 8, !tbaa !243
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %46, !prof !639, !llvm.loop !640

104:                                              ; preds = %100, %46, %40
  %105 = load i32, ptr %39, align 8, !tbaa !366
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %120, label %107, !prof !641

107:                                              ; preds = %104
  %108 = load ptr, ptr @implicit_sets, align 8, !tbaa !232
  %109 = load ptr, ptr @current_bb, align 8, !tbaa !232
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %109, i64 0, i32 9
  %111 = load i32, ptr %110, align 8, !tbaa !359
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds ptr, ptr %108, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !232
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116, !prof !642

116:                                              ; preds = %107
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %109, i64 0, i32 7
  %118 = load ptr, ptr %117, align 8, !tbaa !243
  %119 = load ptr, ptr %118, align 8, !tbaa !643
  tail call fastcc void @hash_scan_set(ptr noundef nonnull %114, ptr noundef %119, ptr noundef nonnull %0)
  br label %120

120:                                              ; preds = %116, %107, %104
  %121 = load ptr, ptr @current_bb, align 8, !tbaa !232
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !243
  %124 = load ptr, ptr %123, align 8, !tbaa !243
  %125 = icmp eq ptr %124, null
  br i1 %125, label %171, label %126, !prof !484

126:                                              ; preds = %120, %167
  %127 = phi ptr [ %169, %167 ], [ %124, %120 ]
  %128 = load ptr, ptr @current_bb, align 8, !tbaa !232
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %128, i64 0, i32 7
  %130 = load ptr, ptr %129, align 8, !tbaa !243
  %131 = getelementptr inbounds %struct.rtl_bb_info, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !293
  %133 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1, i32 0, i32 0, i64 2
  %134 = load ptr, ptr %133, align 8, !tbaa !243
  %135 = icmp eq ptr %127, %134
  br i1 %135, label %171, label %136, !prof !624

136:                                              ; preds = %126
  %137 = load i32, ptr %127, align 8
  %138 = and i32 %137, 65535
  %139 = add nsw i32 %138, -7
  %140 = icmp ult i32 %139, 4
  br i1 %140, label %141, label %167, !prof !625

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !243
  %144 = load i32, ptr %143, align 8
  %145 = trunc i32 %144 to i16
  switch i16 %145, label %167 [
    i16 23, label %151
    i16 15, label %146
  ], !prof !644

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !243
  %149 = load i32, ptr %148, align 8, !tbaa !405
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %152, label %167, !prof !645

151:                                              ; preds = %141
  tail call fastcc void @hash_scan_set(ptr noundef nonnull %143, ptr noundef nonnull %127, ptr noundef nonnull %0)
  br label %167

152:                                              ; preds = %146, %161
  %153 = phi i64 [ %162, %161 ], [ 0, %146 ]
  %154 = phi ptr [ %163, %161 ], [ %148, %146 ]
  %155 = getelementptr inbounds %struct.rtvec_def, ptr %154, i64 0, i32 1, i64 %153
  %156 = load ptr, ptr %155, align 8, !tbaa !232
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, 65535
  %159 = icmp eq i32 %158, 23
  br i1 %159, label %160, label %161, !prof !646

160:                                              ; preds = %152
  tail call fastcc void @hash_scan_set(ptr noundef nonnull %156, ptr noundef nonnull %127, ptr noundef nonnull %0)
  br label %161

161:                                              ; preds = %160, %152
  %162 = add nuw nsw i64 %153, 1
  %163 = load ptr, ptr %147, align 8, !tbaa !243
  %164 = load i32, ptr %163, align 8, !tbaa !405
  %165 = sext i32 %164 to i64
  %166 = icmp slt i64 %162, %165
  br i1 %166, label %152, label %167, !prof !647, !llvm.loop !648

167:                                              ; preds = %161, %146, %151, %141, %136
  %168 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1, i32 0, i32 0, i64 2
  %169 = load ptr, ptr %168, align 8, !tbaa !243
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %126, !prof !639, !llvm.loop !649

171:                                              ; preds = %167, %126, %120
  %172 = load ptr, ptr @current_bb, align 8, !tbaa !232
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %172, i64 0, i32 6
  %174 = load ptr, ptr %173, align 8, !tbaa !289
  store ptr %174, ptr @current_bb, align 8, !tbaa !232
  %175 = load ptr, ptr @cfun, align 8, !tbaa !232
  %176 = getelementptr inbounds %struct.function, ptr %175, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !280
  %178 = getelementptr inbounds %struct.control_flow_graph, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !291
  %180 = icmp eq ptr %174, %179
  br i1 %180, label %181, label %40, !prof !650, !llvm.loop !651

181:                                              ; preds = %171, %25
  %182 = load ptr, ptr @reg_avail_info, align 8, !tbaa !232
  tail call void @free(ptr noundef %182)
  store ptr null, ptr @reg_avail_info, align 8, !tbaa !232
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_hash_table(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #11 !prof !231 {
  %4 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !367
  %6 = zext i32 %5 to i64
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 8) #19
  %8 = load i32, ptr %4, align 4, !tbaa !367
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 2
  %11 = tail call ptr @xmalloc(i64 noundef %10) #19
  %12 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !363
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %3, %33
  %16 = phi i64 [ %34, %33 ], [ 0, %3 ]
  %17 = load ptr, ptr %2, align 8, !tbaa !365
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !232
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = trunc i64 %16 to i32
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi ptr [ %31, %23 ], [ %19, %21 ]
  %25 = getelementptr inbounds %struct.expr, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !381
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %7, i64 %27
  store ptr %24, ptr %28, align 8, !tbaa !232
  %29 = getelementptr inbounds i32, ptr %11, i64 %27
  store i32 %22, ptr %29, align 4, !tbaa !247
  %30 = getelementptr inbounds %struct.expr, ptr %24, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !232
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %23, !llvm.loop !652

33:                                               ; preds = %23, %15
  %34 = add nuw nsw i64 %16, 1
  %35 = load i32, ptr %12, align 8, !tbaa !363
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %15, label %38, !llvm.loop !653

38:                                               ; preds = %33, %3
  %39 = phi i32 [ %13, %3 ], [ %35, %33 ]
  %40 = load i32, ptr %4, align 4, !tbaa !367
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %1, i32 noundef %39, i32 noundef %40)
  %42 = load i32, ptr %4, align 4, !tbaa !367
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %38, %57
  %45 = phi i64 [ %58, %57 ], [ 0, %38 ]
  %46 = getelementptr inbounds ptr, ptr %7, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !232
  %48 = icmp eq ptr %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.expr, ptr %47, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !381
  %52 = getelementptr inbounds i32, ptr %11, i64 %45
  %53 = load i32, ptr %52, align 4, !tbaa !247
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %51, i32 noundef %53)
  %55 = load ptr, ptr %47, align 8, !tbaa !375
  tail call void @print_rtl(ptr noundef %0, ptr noundef %55) #19
  %56 = tail call i32 @fputc(i32 10, ptr %0)
  br label %57

57:                                               ; preds = %44, %49
  %58 = add nuw nsw i64 %45, 1
  %59 = load i32, ptr %4, align 4, !tbaa !367
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %58, %60
  br i1 %61, label %44, label %62, !llvm.loop !654

62:                                               ; preds = %57, %38
  %63 = tail call i32 @fputc(i32 10, ptr %0)
  tail call void @free(ptr noundef %7)
  tail call void @free(ptr noundef %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_gcse_mem() unnamed_addr #10 !prof !231 !PGOFuncName !655 {
  tail call fastcc void @clear_modify_mem_tables()
  %1 = load ptr, ptr @modify_mem_list, align 8, !tbaa !232
  tail call void @free(ptr noundef %1)
  %2 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !232
  tail call void @free(ptr noundef %2)
  store ptr null, ptr @modify_mem_list, align 8, !tbaa !232
  store ptr null, ptr @canon_modify_mem_list, align 8, !tbaa !232
  %3 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !232
  tail call void @bitmap_obstack_free(ptr noundef %3) #19
  store ptr null, ptr @modify_mem_list_set, align 8, !tbaa !232
  %4 = load ptr, ptr @blocks_with_calls, align 8, !tbaa !232
  tail call void @bitmap_obstack_free(ptr noundef %4) #19
  store ptr null, ptr @blocks_with_calls, align 8, !tbaa !232
  ret void
}

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @current_function_name() local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @max_reg_num() local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare void @cselib_init(i32 noundef) local_unnamed_addr #3

declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @local_cprop_find_used_regs(ptr nocapture noundef readonly %0, ptr noundef %1) #14 !prof !656 !PGOFuncName !657 {
  %3 = load ptr, ptr %0, align 8, !tbaa !232
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5, !prof !298

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %18 [
    i16 120, label %19
    i16 119, label %19
    i16 40, label %19
    i16 74, label %19
    i16 75, label %19
    i16 76, label %19
    i16 77, label %19
    i16 78, label %19
    i16 79, label %19
    i16 39, label %8
  ], !prof !299

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !243
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !243
  %17 = icmp ugt i8 %16, 4
  br i1 %17, label %19, label %18

18:                                               ; preds = %8, %5
  tail call void @find_used_regs(ptr noundef nonnull %0, ptr noundef %1)
  br label %19

19:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %8, %5, %2, %18
  ret void
}

declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #3

declare void @cselib_clear_table() local_unnamed_addr #3

declare void @cselib_finish() local_unnamed_addr #3

; Function Attrs: inlinehint nofree nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal void @find_used_regs(ptr nocapture noundef readonly %0, ptr noundef %1) #15 !prof !658 !PGOFuncName !659 {
  %3 = load ptr, ptr %0, align 8, !tbaa !243
  %4 = icmp eq ptr %3, null
  br i1 %4, label %57, label %5, !prof !424

5:                                                ; preds = %2, %39
  %6 = phi ptr [ %41, %39 ], [ %3, %2 ]
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 37
  br i1 %9, label %10, label %17, !prof !660

10:                                               ; preds = %5
  %11 = load i32, ptr @reg_use_count, align 4, !tbaa !247
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %57, label %13, !prof !661

13:                                               ; preds = %10
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds [8 x %struct.reg_use], ptr @reg_use_table, i64 0, i64 %14
  store ptr %6, ptr %15, align 8, !tbaa !301
  %16 = add nsw i32 %11, 1
  store i32 %16, ptr @reg_use_count, align 4, !tbaa !247
  br label %17

17:                                               ; preds = %13, %5
  %18 = zext nneg i32 %8 to i64
  %19 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !243
  %21 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %18
  %22 = load ptr, ptr %21, align 8, !tbaa !232
  %23 = icmp eq i8 %20, 0
  br i1 %23, label %57, label %24, !prof !662

24:                                               ; preds = %17
  %25 = zext i8 %20 to i64
  br label %26

26:                                               ; preds = %24, %55
  %27 = phi i64 [ %25, %24 ], [ %28, %55 ]
  %28 = add nsw i64 %27, -1
  %29 = getelementptr inbounds i8, ptr %22, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !243
  switch i8 %30, label %55 [
    i8 101, label %37
    i8 69, label %31
  ], !prof !663

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %32, i64 0, i64 %28
  %34 = load ptr, ptr %33, align 8, !tbaa !243
  %35 = load i32, ptr %34, align 8, !tbaa !405
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %46, label %55

37:                                               ; preds = %26
  %38 = icmp eq i64 %28, 0
  br i1 %38, label %39, label %43, !prof !664

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !243
  %42 = icmp eq ptr %41, null
  br i1 %42, label %57, label %5, !prof !665

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %45 = getelementptr inbounds [1 x %union.rtunion_def], ptr %44, i64 0, i64 %28
  tail call void @find_used_regs(ptr noundef nonnull %45, ptr noundef %1)
  br label %55

46:                                               ; preds = %31, %46
  %47 = phi i64 [ %50, %46 ], [ 0, %31 ]
  %48 = phi ptr [ %51, %46 ], [ %34, %31 ]
  %49 = getelementptr inbounds %struct.rtvec_def, ptr %48, i64 0, i32 1, i64 %47
  tail call void @find_used_regs(ptr noundef nonnull %49, ptr noundef %1)
  %50 = add nuw nsw i64 %47, 1
  %51 = load ptr, ptr %33, align 8, !tbaa !243
  %52 = load i32, ptr %51, align 8, !tbaa !405
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %46, label %55, !llvm.loop !666

55:                                               ; preds = %46, %31, %26, %43
  %56 = icmp sgt i64 %27, 1
  br i1 %56, label %26, label %57, !prof !667, !llvm.loop !668

57:                                               ; preds = %39, %10, %17, %55, %2
  ret void
}

declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

declare ptr @cselib_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @gcse_constant_p(ptr noundef %0) unnamed_addr #10 !prof !669 !PGOFuncName !670 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 48
  br i1 %4, label %5, label %48, !prof !671

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !243
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 30
  br i1 %10, label %11, label %17, !prof !672

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !243
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 30
  br i1 %16, label %59, label %17

17:                                               ; preds = %11, %5
  br i1 %4, label %18, label %48, !prof !671

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !243
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %48, !prof !672

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !243
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 37
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !243
  %33 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !243
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = lshr i32 %21, 16
  %38 = and i32 %37, 255
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !243
  switch i8 %41, label %42 [
    i8 8, label %48
    i8 9, label %48
    i8 11, label %48
    i8 17, label %48
  ]

42:                                               ; preds = %36
  %43 = lshr i32 %27, 16
  %44 = and i32 %43, 255
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !243
  switch i8 %47, label %59 [
    i8 8, label %48
    i8 9, label %48
    i8 11, label %48
    i8 17, label %48
  ]

48:                                               ; preds = %1, %42, %42, %42, %36, %36, %36, %42, %36, %30, %24, %18, %17
  %49 = zext nneg i32 %3 to i64
  %50 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !247
  %52 = icmp eq i32 %51, 9
  br i1 %52, label %53, label %59, !prof !673

53:                                               ; preds = %48
  %54 = icmp eq i32 %3, 35
  br i1 %54, label %55, label %59, !prof !674

55:                                               ; preds = %53
  %56 = tail call zeroext i8 @shared_const_p(ptr noundef nonnull %0) #19
  %57 = icmp ne i8 %56, 0
  %58 = zext i1 %57 to i8
  br label %59

59:                                               ; preds = %42, %48, %55, %53, %11
  %60 = phi i8 [ 1, %11 ], [ 0, %48 ], [ 1, %53 ], [ %58, %55 ], [ 1, %42 ]
  ret i8 %60
}

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @constprop_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !675 !PGOFuncName !676 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %16, !prof !677

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !243
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 23
  br i1 %13, label %16, label %14, !prof !678

14:                                               ; preds = %8
  %15 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %10) #19
  br label %16

16:                                               ; preds = %3, %8, %14
  %17 = phi ptr [ %15, %14 ], [ null, %3 ], [ %10, %8 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19, !prof !678

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !243
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23, !prof !678

23:                                               ; preds = %19
  %24 = tail call i32 @any_condjump_p(ptr noundef nonnull %21) #19
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26, !prof !677

26:                                               ; preds = %23
  %27 = load ptr, ptr %20, align 8, !tbaa !243
  %28 = tail call i32 @onlyjump_p(ptr noundef %27) #19
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !243
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 37
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !243
  %39 = load ptr, ptr %20, align 8, !tbaa !243
  %40 = tail call fastcc i32 @cprop_jump(ptr noundef %38, ptr noundef nonnull %0, ptr noundef %39, ptr noundef %1, ptr noundef %2), !range !321
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %36, %30, %26, %23, %19, %16
  %43 = load i32, ptr %0, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %46, label %49, !prof !677

46:                                               ; preds = %42
  %47 = tail call fastcc i32 @try_replace_reg(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0), !range !321
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %60, !prof !677

49:                                               ; preds = %46, %42
  %50 = tail call i32 @any_condjump_p(ptr noundef nonnull %0) #19
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %60, label %52, !prof !677

52:                                               ; preds = %49
  %53 = tail call i32 @onlyjump_p(ptr noundef nonnull %0) #19
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !243
  %58 = tail call fastcc i32 @cprop_jump(ptr noundef %57, ptr noundef null, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2), !range !321
  %59 = trunc i32 %58 to i8
  br label %60

60:                                               ; preds = %52, %49, %46, %36, %55
  %61 = phi i8 [ %59, %55 ], [ 1, %36 ], [ 1, %46 ], [ 0, %49 ], [ 0, %52 ]
  ret i8 %61
}

declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @try_replace_reg(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !679 !PGOFuncName !680 {
  %4 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %2) #19
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %17, !prof !681

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !243
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 23
  br i1 %14, label %17, label %15, !prof !682

15:                                               ; preds = %9
  %16 = tail call ptr @single_set_2(ptr noundef nonnull %2, ptr noundef nonnull %11) #19
  br label %17

17:                                               ; preds = %3, %9, %15
  %18 = phi ptr [ %16, %15 ], [ null, %3 ], [ %11, %9 ]
  %19 = tail call ptr @copy_rtx(ptr noundef %1) #19
  tail call void @validate_replace_src_group(ptr noundef %0, ptr noundef %19, ptr noundef nonnull %2) #19
  %20 = tail call i32 @num_changes_pending() #19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !683

22:                                               ; preds = %17
  %23 = tail call i32 @apply_change_group() #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25, !prof !684

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %22, %17
  %27 = phi i1 [ true, %25 ], [ false, %22 ], [ false, %17 ]
  %28 = phi i1 [ false, %25 ], [ true, %22 ], [ true, %17 ]
  %29 = phi i32 [ 1, %25 ], [ 0, %22 ], [ 0, %17 ]
  %30 = icmp ne ptr %18, null
  %31 = select i1 %27, i1 %30, i1 false, !prof !685
  br i1 %31, label %32, label %46, !prof !685

32:                                               ; preds = %26
  %33 = load i32, ptr %19, align 8
  %34 = and i32 %33, 65535
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !247
  %38 = icmp eq i32 %37, 9
  br i1 %38, label %39, label %46, !prof !686

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !243
  %42 = tail call ptr @simplify_rtx(ptr noundef %41) #19
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = tail call zeroext i8 @validate_change(ptr noundef nonnull %2, ptr noundef nonnull %40, ptr noundef nonnull %42, i8 noundef zeroext 0) #19
  br label %46

46:                                               ; preds = %39, %44, %32, %26
  %47 = icmp eq ptr %4, null
  br i1 %47, label %57, label %48, !prof !682

48:                                               ; preds = %46
  %49 = load i32, ptr %4, align 8
  %50 = and i32 %49, 16711680
  %51 = icmp eq i32 %50, 262144
  br i1 %51, label %52, label %57, !prof !687

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !243
  %55 = tail call ptr @simplify_replace_rtx(ptr noundef %54, ptr noundef %0, ptr noundef %19) #19
  %56 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %2, i32 noundef 4, ptr noundef %55) #19
  br label %57

57:                                               ; preds = %52, %48, %46
  %58 = select i1 %28, i1 %30, i1 false, !prof !688
  br i1 %58, label %59, label %87, !prof !688

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %61 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !243
  %63 = tail call i32 @reg_mentioned_p(ptr noundef %0, ptr noundef %62) #19
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %87, label %65, !prof !689

65:                                               ; preds = %59
  %66 = load ptr, ptr %61, align 8, !tbaa !243
  %67 = tail call ptr @simplify_replace_rtx(ptr noundef %66, ptr noundef %0, ptr noundef %19) #19
  %68 = load ptr, ptr %61, align 8, !tbaa !243
  %69 = tail call i32 @rtx_equal_p(ptr noundef %67, ptr noundef %68) #19
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76, !prof !677

71:                                               ; preds = %65
  %72 = tail call zeroext i8 @validate_change(ptr noundef nonnull %2, ptr noundef nonnull %61, ptr noundef %67, i8 noundef zeroext 0) #19
  %73 = icmp eq i8 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  br label %76

76:                                               ; preds = %71, %65
  %77 = phi i1 [ true, %65 ], [ %73, %71 ]
  %78 = phi i32 [ 0, %65 ], [ %75, %71 ]
  %79 = and i1 %47, %77
  br i1 %79, label %80, label %87, !prof !678

80:                                               ; preds = %76
  %81 = load ptr, ptr %60, align 8, !tbaa !243
  %82 = load i32, ptr %81, align 8
  %83 = trunc i32 %82 to i16
  switch i16 %83, label %84 [
    i16 120, label %87
    i16 40, label %87
  ]

84:                                               ; preds = %80
  %85 = tail call ptr @copy_rtx(ptr noundef %67) #19
  %86 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %2, i32 noundef 4, ptr noundef %85) #19
  br label %87

87:                                               ; preds = %80, %80, %76, %84, %59, %57
  %88 = phi ptr [ %86, %84 ], [ %4, %76 ], [ %4, %59 ], [ %4, %57 ], [ null, %80 ], [ null, %80 ]
  %89 = phi i32 [ 0, %84 ], [ %78, %76 ], [ 0, %59 ], [ %29, %57 ], [ 0, %80 ], [ 0, %80 ]
  %90 = icmp eq ptr %88, null
  br i1 %90, label %102, label %91, !prof !682

91:                                               ; preds = %87
  %92 = load i32, ptr %88, align 8
  %93 = and i32 %92, 16711680
  %94 = icmp eq i32 %93, 262144
  br i1 %94, label %95, label %102, !prof !687

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !243
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 37
  br i1 %100, label %101, label %102, !prof !690

101:                                              ; preds = %95
  tail call void @remove_note(ptr noundef nonnull %2, ptr noundef nonnull %88) #19
  br label %102

102:                                              ; preds = %101, %95, %91, %87
  ret i32 %89
}

declare zeroext i8 @shared_const_p(ptr noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @cprop_jump(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #11 !prof !231 {
  %6 = tail call ptr @pc_set(ptr noundef %2) #19
  %7 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %2) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !243
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 3
  %15 = select i1 %14, ptr null, ptr %11
  br label %16

16:                                               ; preds = %5, %9
  %17 = phi ptr [ %15, %9 ], [ null, %5 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !243
  br label %22

22:                                               ; preds = %16, %19
  %23 = phi ptr [ %21, %19 ], [ %17, %16 ]
  %24 = icmp eq ptr %1, null
  br i1 %24, label %62, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @modified_between_p(ptr noundef %3, ptr noundef nonnull %1, ptr noundef %2) #19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %25
  %29 = tail call i32 @modified_between_p(ptr noundef %4, ptr noundef nonnull %1, ptr noundef %2) #19
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %28
  %32 = load i32, ptr %1, align 8
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -7
  %35 = icmp ult i32 %34, 4
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !243
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 23
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %38) #19
  br label %44

44:                                               ; preds = %31, %36, %42
  %45 = phi ptr [ %43, %42 ], [ null, %31 ], [ %38, %36 ]
  %46 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %1) #19
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !243
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %44
  %55 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !243
  br label %57

57:                                               ; preds = %48, %54
  %58 = phi ptr [ %56, %54 ], [ %50, %48 ]
  %59 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !243
  %61 = tail call ptr @simplify_replace_rtx(ptr noundef %23, ptr noundef %60, ptr noundef %58) #19
  br label %62

62:                                               ; preds = %22, %25, %28, %57
  %63 = phi ptr [ %61, %57 ], [ %23, %28 ], [ %23, %25 ], [ %23, %22 ]
  %64 = phi ptr [ %1, %57 ], [ null, %28 ], [ null, %25 ], [ null, %22 ]
  %65 = tail call ptr @simplify_replace_rtx(ptr noundef %63, ptr noundef %3, ptr noundef %4) #19
  %66 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !243
  %68 = tail call i32 @rtx_equal_p(ptr noundef %65, ptr noundef %67) #19
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %162

70:                                               ; preds = %62
  %71 = load ptr, ptr @global_rtl, align 16, !tbaa !232
  %72 = icmp eq ptr %65, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = tail call ptr @delete_insn(ptr noundef %2) #19
  br label %91

75:                                               ; preds = %70
  %76 = icmp eq ptr %64, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %75
  %78 = tail call i32 @modified_in_p(ptr noundef %65, ptr noundef nonnull %64) #19
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %162

80:                                               ; preds = %77, %75
  %81 = tail call zeroext i8 @validate_unshare_change(ptr noundef %2, ptr noundef nonnull %66, ptr noundef %65, i8 noundef zeroext 0) #19
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = tail call i32 @rtx_equal_p(ptr noundef %65, ptr noundef %17) #19
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %162

86:                                               ; preds = %83
  %87 = tail call ptr @copy_rtx(ptr noundef %65) #19
  %88 = tail call ptr @set_unique_reg_note(ptr noundef %2, i32 noundef 4, ptr noundef %87) #19
  br label %162

89:                                               ; preds = %80
  br i1 %18, label %91, label %90

90:                                               ; preds = %89
  tail call void @remove_note(ptr noundef %2, ptr noundef %7) #19
  br label %91

91:                                               ; preds = %89, %90, %73
  %92 = load i32, ptr @global_const_prop_count, align 4, !tbaa !247
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr @global_const_prop_count, align 4, !tbaa !247
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %95 = icmp eq ptr %94, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !243
  %99 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !243
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %94, ptr noundef nonnull @.str.15, i32 noundef %98, i32 noundef %100)
  %102 = load ptr, ptr @dump_file, align 8, !tbaa !232
  tail call void @print_rtl(ptr noundef %102, ptr noundef %4) #19
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %104 = tail call i32 @fputc(i32 10, ptr %103)
  br label %105

105:                                              ; preds = %96, %91
  %106 = tail call zeroext i8 @purge_dead_edges(ptr noundef %0) #19
  %107 = load ptr, ptr @global_rtl, align 16, !tbaa !232
  %108 = icmp eq ptr %65, %107
  br i1 %108, label %162, label %109

109:                                              ; preds = %105
  %110 = tail call i32 @simplejump_p(ptr noundef %2) #19
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %162, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %114 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 2
  br label %115

115:                                              ; preds = %158, %112
  %116 = phi i32 [ 0, %112 ], [ %159, %158 ]
  %117 = load ptr, ptr %113, align 8, !tbaa !232
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = load i32, ptr %117, align 8, !tbaa !338
  br label %121

121:                                              ; preds = %119, %115
  %122 = phi i32 [ %120, %119 ], [ 0, %115 ]
  %123 = icmp eq i32 %122, %116
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = zext i32 %116 to i64
  %126 = getelementptr inbounds %struct.VEC_edge_base, ptr %117, i64 0, i32 2, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !232
  br label %128

128:                                              ; preds = %121, %124
  %129 = phi ptr [ %127, %124 ], [ null, %121 ]
  %130 = icmp eq ptr %129, null
  br i1 %130, label %160, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.edge_def, ptr %129, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !355
  %134 = load ptr, ptr @cfun, align 8, !tbaa !232
  %135 = getelementptr inbounds %struct.function, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !280
  %137 = getelementptr inbounds %struct.control_flow_graph, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !291
  %139 = icmp eq ptr %133, %138
  br i1 %139, label %150, label %140

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.basic_block_def, ptr %133, i64 0, i32 7
  %142 = load ptr, ptr %141, align 8, !tbaa !243
  %143 = load ptr, ptr %142, align 8, !tbaa !643
  %144 = load ptr, ptr %114, align 8, !tbaa !243
  %145 = icmp eq ptr %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.edge_def, ptr %129, i64 0, i32 7
  %148 = load i32, ptr %147, align 8, !tbaa !350
  %149 = or i32 %148, 1
  store i32 %149, ptr %147, align 8, !tbaa !350
  br label %160

150:                                              ; preds = %140, %131
  %151 = icmp eq ptr %117, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %150
  %153 = load i32, ptr %117, align 8, !tbaa !338
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %153, %152 ], [ 0, %150 ]
  %156 = icmp ult i32 %116, %155
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 738, ptr noundef nonnull @.str.17) #19
  br label %158

158:                                              ; preds = %154, %157
  %159 = add i32 %116, 1
  br label %115, !llvm.loop !691

160:                                              ; preds = %128, %146
  %161 = tail call ptr @delete_insn(ptr noundef %2) #19
  br label %162

162:                                              ; preds = %105, %109, %160, %83, %86, %77, %62
  %163 = phi i32 [ 0, %62 ], [ 0, %77 ], [ 0, %86 ], [ 0, %83 ], [ 1, %160 ], [ 1, %109 ], [ 1, %105 ]
  ret i32 %163
}

declare ptr @pc_set(ptr noundef) local_unnamed_addr #3

declare i32 @modified_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare i32 @modified_in_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @validate_unshare_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @purge_dead_edges(ptr noundef) local_unnamed_addr #3

declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @validate_replace_src_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @num_changes_pending() local_unnamed_addr #3

declare i32 @apply_change_group() local_unnamed_addr #3

declare ptr @simplify_rtx(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @get_max_insn_count() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @clear_modify_mem_tables() unnamed_addr #10 !prof !692 !PGOFuncName !693 {
  %1 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !232
  %2 = load ptr, ptr %1, align 8, !tbaa !694
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @bitmap_zero_bits, ptr %2, !prof !696
  %5 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !697
  %7 = shl i32 %6, 7
  %8 = getelementptr inbounds %struct.bitmap_element_def, ptr %4, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !382
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = or disjoint i32 %7, %11
  br label %13

13:                                               ; preds = %93, %0
  %14 = phi i64 [ %9, %0 ], [ %94, %93 ]
  %15 = phi i32 [ 0, %0 ], [ %70, %93 ]
  %16 = phi i32 [ %12, %0 ], [ %95, %93 ]
  %17 = phi ptr [ %4, %0 ], [ %72, %93 ]
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %33, label %19, !prof !699

19:                                               ; preds = %47, %13
  %20 = phi i64 [ %14, %13 ], [ %52, %47 ]
  %21 = phi i32 [ %15, %13 ], [ %48, %47 ]
  %22 = phi i32 [ %16, %13 ], [ %49, %47 ]
  %23 = phi ptr [ %17, %13 ], [ %40, %47 ]
  %24 = and i64 %20, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %68, !prof !700

26:                                               ; preds = %19, %26
  %27 = phi i32 [ %30, %26 ], [ %22, %19 ]
  %28 = phi i64 [ %29, %26 ], [ %20, %19 ]
  %29 = lshr exact i64 %28, 1
  %30 = add i32 %27, 1
  %31 = and i64 %28, 2
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %26, label %68, !prof !701, !llvm.loop !702

33:                                               ; preds = %13
  %34 = add i32 %16, 63
  %35 = and i32 %34, -64
  %36 = add i32 %15, 1
  br label %37

37:                                               ; preds = %64, %33
  %38 = phi i64 [ %14, %33 ], [ %59, %64 ]
  %39 = phi i32 [ %35, %33 ], [ %67, %64 ]
  %40 = phi ptr [ %17, %33 ], [ %62, %64 ]
  %41 = phi i32 [ %36, %33 ], [ 0, %64 ]
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %58, label %43, !prof !703

43:                                               ; preds = %37
  %44 = add i32 %39, 128
  %45 = shl i32 %41, 6
  %46 = sub i32 %44, %45
  br label %47

47:                                               ; preds = %43, %54
  %48 = phi i32 [ %56, %54 ], [ %41, %43 ]
  %49 = phi i32 [ %55, %54 ], [ %39, %43 ]
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %40, i64 0, i32 3, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !382
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %19, !prof !704

54:                                               ; preds = %47
  %55 = add i32 %49, 64
  %56 = add i32 %48, 1
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %47, !prof !705, !llvm.loop !706

58:                                               ; preds = %54, %37
  %59 = phi i64 [ %38, %37 ], [ %52, %54 ]
  %60 = phi i32 [ %39, %37 ], [ %46, %54 ]
  %61 = phi i32 [ %41, %37 ], [ 2, %54 ]
  %62 = load ptr, ptr %40, align 8, !tbaa !707
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64, !prof !708

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !697
  %67 = shl i32 %66, 7
  br label %37, !llvm.loop !709

68:                                               ; preds = %58, %26, %19
  %69 = phi i64 [ %20, %19 ], [ %29, %26 ], [ %59, %58 ]
  %70 = phi i32 [ %21, %19 ], [ %21, %26 ], [ %61, %58 ]
  %71 = phi i32 [ %22, %19 ], [ %30, %26 ], [ %60, %58 ]
  %72 = phi ptr [ %23, %19 ], [ %23, %26 ], [ %62, %58 ]
  %73 = phi i1 [ false, %19 ], [ false, %26 ], [ true, %58 ]
  br i1 %73, label %96, label %74, !prof !710

74:                                               ; preds = %68
  %75 = load ptr, ptr @modify_mem_list, align 8, !tbaa !232
  %76 = zext i32 %71 to i64
  %77 = getelementptr inbounds ptr, ptr %75, i64 %76
  tail call void @free_INSN_LIST_list(ptr noundef %77) #19
  %78 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !232
  %79 = getelementptr inbounds ptr, ptr %78, i64 %76
  %80 = load ptr, ptr %79, align 8, !tbaa !232
  %81 = icmp eq ptr %80, null
  br i1 %81, label %93, label %82, !prof !711

82:                                               ; preds = %74, %91
  %83 = phi ptr [ %85, %91 ], [ %80, %74 ]
  %84 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1, i32 0, i32 0, i64 1
  %85 = load ptr, ptr %84, align 8, !tbaa !243
  %86 = load i32, ptr %83, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %90, !prof !712

89:                                               ; preds = %82
  tail call void @free_EXPR_LIST_node(ptr noundef nonnull %83) #19
  br label %91

90:                                               ; preds = %82
  tail call void @free_INSN_LIST_node(ptr noundef nonnull %83) #19
  br label %91

91:                                               ; preds = %90, %89
  %92 = icmp eq ptr %85, null
  br i1 %92, label %93, label %82, !prof !713, !llvm.loop !714

93:                                               ; preds = %91, %74
  store ptr null, ptr %79, align 8, !tbaa !232
  %94 = lshr i64 %69, 1
  %95 = add i32 %71, 1
  br label %13, !llvm.loop !715

96:                                               ; preds = %68
  %97 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !232
  tail call void @bitmap_clear(ptr noundef %97) #19
  %98 = load ptr, ptr @blocks_with_calls, align 8, !tbaa !232
  tail call void @bitmap_clear(ptr noundef %98) #19
  ret void
}

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @record_last_set_info(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #9 !prof !716 !PGOFuncName !717 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %10, !prof !718

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !243
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %12 = load i32, ptr %11, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %42 [
    i16 37, label %14
    i16 43, label %36
  ], !prof !719

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !243
  %17 = load ptr, ptr @reg_avail_info, align 8, !tbaa !232
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds %struct.reg_avail_info, ptr %17, i64 %18
  %20 = load ptr, ptr @df, align 8, !tbaa !232
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !628
  %23 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !243
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !232
  %28 = getelementptr inbounds %struct.df_insn_info, ptr %27, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !631
  %30 = getelementptr inbounds %struct.reg_avail_info, ptr %17, i64 %18, i32 2
  store i32 %29, ptr %30, align 4, !tbaa !633
  %31 = load ptr, ptr %19, align 8, !tbaa !620
  %32 = load ptr, ptr @current_bb, align 8, !tbaa !232
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %42, label %34, !prof !720

34:                                               ; preds = %14
  store ptr %32, ptr %19, align 8, !tbaa !620
  %35 = getelementptr inbounds %struct.reg_avail_info, ptr %17, i64 %18, i32 1
  store i32 %29, ptr %35, align 8, !tbaa !635
  br label %42

36:                                               ; preds = %10
  %37 = lshr i32 %12, 16
  %38 = and i32 %37, 255
  %39 = tail call i32 @push_operand(ptr noundef nonnull %11, i32 noundef %38) #19
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42, !prof !721

41:                                               ; preds = %36
  tail call fastcc void @record_last_mem_set_info(ptr noundef %2)
  br label %42

42:                                               ; preds = %34, %14, %10, %36, %41
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @hash_scan_set(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #9 !prof !722 !PGOFuncName !723 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !243
  %7 = load ptr, ptr %4, align 8, !tbaa !243
  %8 = load i32, ptr %6, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 26
  br i1 %10, label %433, label %11, !prof !724

11:                                               ; preds = %3
  %12 = load i32, ptr %7, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %382, !prof !725

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !243
  %18 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %1) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %81, label %20, !prof !726

20:                                               ; preds = %15
  %21 = load i32, ptr %18, align 8
  %22 = and i32 %21, 16711680
  %23 = icmp eq i32 %22, 262144
  br i1 %23, label %24, label %81, !prof !727

24:                                               ; preds = %20
  %25 = load i32, ptr %6, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 37
  br i1 %27, label %81, label %28, !prof !728

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !366
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !243
  br i1 %31, label %37, label %34, !prof !729

34:                                               ; preds = %28
  %35 = tail call fastcc zeroext i8 @gcse_constant_p(ptr noundef %33), !range !285
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %81, label %77, !prof !730

37:                                               ; preds = %28
  %38 = load i32, ptr %33, align 8
  %39 = and i32 %38, 16711680
  switch i32 %39, label %61 [
    i32 2490368, label %40
    i32 2555904, label %49
    i32 2621440, label %59
  ], !prof !731

40:                                               ; preds = %37
  %41 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !247
  %42 = and i32 %41, 65536
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr @ix86_fpmath, align 4, !tbaa !247
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %44
  switch i32 %39, label %61 [
    i32 2555904, label %49
    i32 2621440, label %59
  ], !prof !732

49:                                               ; preds = %48, %37
  %50 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !247
  %51 = and i32 %50, 131072
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr @ix86_fpmath, align 4, !tbaa !247
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  %57 = icmp eq i32 %39, 2621440
  %58 = or i1 %57, %56
  br i1 %58, label %59, label %61, !prof !733

59:                                               ; preds = %53, %49, %48, %44, %40, %37
  %60 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %33) #19
  br label %61

61:                                               ; preds = %59, %53, %48, %37
  %62 = phi ptr [ %60, %59 ], [ %33, %48 ], [ %33, %37 ], [ %33, %53 ]
  %63 = load i32, ptr %62, align 8
  %64 = trunc i32 %63 to i16
  %65 = add i16 %64, -26
  %66 = icmp ult i16 %65, 14
  br i1 %66, label %70, label %67

67:                                               ; preds = %70, %61
  %68 = tail call zeroext i8 @can_assign_to_reg_without_clobbers_p(ptr noundef nonnull %62), !range !285
  %69 = zext nneg i8 %68 to i32
  br label %74

70:                                               ; preds = %61
  %71 = lshr i16 10481, %65
  %72 = and i16 %71, 1
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %67, label %74

74:                                               ; preds = %70, %67
  %75 = phi i32 [ %69, %67 ], [ 0, %70 ]
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77, !prof !734

77:                                               ; preds = %74, %34
  %78 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !243
  %80 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %7, ptr noundef %79) #19
  br label %81

81:                                               ; preds = %74, %77, %34, %24, %20, %15
  %82 = phi ptr [ %6, %24 ], [ %79, %77 ], [ %6, %34 ], [ %6, %20 ], [ %6, %15 ], [ %6, %74 ]
  %83 = phi ptr [ %0, %24 ], [ %80, %77 ], [ %0, %34 ], [ %0, %20 ], [ %0, %15 ], [ %0, %74 ]
  %84 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 3
  %85 = load i32, ptr %84, align 8, !tbaa !366
  %86 = icmp eq i32 %85, 0
  %87 = icmp ugt i32 %17, 52
  %88 = select i1 %86, i1 %87, i1 false, !prof !735
  br i1 %88, label %89, label %184, !prof !736

89:                                               ; preds = %81
  %90 = load i32, ptr %7, align 8
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 255
  %93 = load i1, ptr @can_copy_p.can_copy_init_p, align 1
  br i1 %93, label %105, label %94, !prof !252

94:                                               ; preds = %89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(87) @can_copy, i8 0, i64 87, i1 false)
  tail call void @start_sequence() #19
  br label %95

95:                                               ; preds = %95, %94
  %96 = phi i64 [ 0, %94 ], [ %102, %95 ]
  %97 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !243
  %99 = icmp ne i8 %98, 1
  %100 = getelementptr inbounds [87 x i8], ptr @can_copy, i64 0, i64 %96
  %101 = zext i1 %99 to i8
  store i8 %101, ptr %100, align 1, !tbaa !243
  %102 = add nuw nsw i64 %96, 1
  %103 = icmp eq i64 %102, 87
  br i1 %103, label %104, label %95, !prof !253, !llvm.loop !254

104:                                              ; preds = %95
  tail call void @end_sequence() #19
  store i1 true, ptr @can_copy_p.can_copy_init_p, align 1
  br label %105

105:                                              ; preds = %89, %104
  %106 = zext nneg i32 %92 to i64
  %107 = getelementptr inbounds [87 x i8], ptr @can_copy, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !243
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %184, label %110, !prof !737

110:                                              ; preds = %105
  %111 = tail call zeroext i8 @can_throw_internal(ptr noundef %1) #19
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %184, !prof !738

113:                                              ; preds = %110
  %114 = load i32, ptr %82, align 8
  %115 = and i32 %114, 16711680
  switch i32 %115, label %137 [
    i32 2490368, label %116
    i32 2555904, label %125
    i32 2621440, label %135
  ], !prof !731

116:                                              ; preds = %113
  %117 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !247
  %118 = and i32 %117, 65536
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %135, label %120

120:                                              ; preds = %116
  %121 = load i32, ptr @ix86_fpmath, align 4, !tbaa !247
  %122 = and i32 %121, 2
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %120
  switch i32 %115, label %137 [
    i32 2555904, label %125
    i32 2621440, label %135
  ], !prof !732

125:                                              ; preds = %124, %113
  %126 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !247
  %127 = and i32 %126, 131072
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  %130 = load i32, ptr @ix86_fpmath, align 4, !tbaa !247
  %131 = and i32 %130, 2
  %132 = icmp eq i32 %131, 0
  %133 = icmp eq i32 %115, 2621440
  %134 = or i1 %133, %132
  br i1 %134, label %135, label %137, !prof !733

135:                                              ; preds = %129, %125, %124, %120, %116, %113
  %136 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %82) #19
  br label %137

137:                                              ; preds = %135, %129, %124, %113
  %138 = phi ptr [ %136, %135 ], [ %82, %124 ], [ %82, %113 ], [ %82, %129 ]
  %139 = load i32, ptr %138, align 8
  %140 = trunc i32 %139 to i16
  %141 = add i16 %140, -26
  %142 = icmp ult i16 %141, 14
  br i1 %142, label %146, label %143

143:                                              ; preds = %146, %137
  %144 = tail call zeroext i8 @can_assign_to_reg_without_clobbers_p(ptr noundef nonnull %138), !range !285
  %145 = zext nneg i8 %144 to i32
  br label %150

146:                                              ; preds = %137
  %147 = lshr i16 10481, %141
  %148 = and i16 %147, 1
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %143, label %150

150:                                              ; preds = %146, %143
  %151 = phi i32 [ %145, %143 ], [ 0, %146 ]
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %184, label %153, !prof !739

153:                                              ; preds = %150
  %154 = tail call i32 @set_noop_p(ptr noundef %83) #19
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %184, !prof !740

156:                                              ; preds = %153
  br i1 %19, label %163, label %157, !prof !741

157:                                              ; preds = %156
  %158 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !243
  %160 = load i32, ptr %159, align 8
  %161 = and i32 %160, 65535
  %162 = icmp eq i32 %161, 43
  br i1 %162, label %184, label %163, !prof !742

163:                                              ; preds = %157, %156
  %164 = tail call fastcc i32 @oprs_unchanged_p(ptr noundef nonnull %82, ptr noundef %1, i32 noundef 0), !range !321
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %170, label %166, !prof !743

166:                                              ; preds = %163
  %167 = tail call i32 @multiple_sets(ptr noundef %1) #19
  %168 = icmp eq i32 %167, 0
  %169 = zext i1 %168 to i32
  br label %170

170:                                              ; preds = %166, %163
  %171 = phi i32 [ 0, %163 ], [ %169, %166 ]
  %172 = tail call fastcc i32 @oprs_unchanged_p(ptr noundef nonnull %82, ptr noundef %1, i32 noundef 1), !range !321
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %179, label %174, !prof !744

174:                                              ; preds = %170
  %175 = load i32, ptr %1, align 8
  %176 = and i32 %175, 65535
  %177 = icmp ne i32 %176, 9
  %178 = zext i1 %177 to i32
  br label %179

179:                                              ; preds = %174, %170
  %180 = phi i32 [ 0, %170 ], [ %178, %174 ]
  %181 = load i32, ptr %7, align 8
  %182 = lshr i32 %181, 16
  %183 = and i32 %182, 255
  tail call fastcc void @insert_expr_in_table(ptr noundef nonnull %82, i32 noundef %183, ptr noundef %1, i32 noundef %171, i32 noundef %180, ptr noundef %2)
  br label %433

184:                                              ; preds = %157, %153, %150, %110, %105, %81
  %185 = load i32, ptr %84, align 8, !tbaa !366
  %186 = icmp ne i32 %185, 0
  %187 = select i1 %186, i1 %87, i1 false, !prof !745
  br i1 %187, label %188, label %433, !prof !746

188:                                              ; preds = %184
  %189 = load i32, ptr %82, align 8
  %190 = and i32 %189, 65535
  %191 = icmp eq i32 %190, 37
  br i1 %191, label %192, label %220, !prof !747

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %194 = load i32, ptr %193, align 8, !tbaa !243
  %195 = icmp ugt i32 %194, 52
  br i1 %195, label %196, label %220, !prof !748

196:                                              ; preds = %192
  %197 = load i32, ptr %7, align 8
  %198 = lshr i32 %197, 16
  %199 = and i32 %198, 255
  %200 = load i1, ptr @can_copy_p.can_copy_init_p, align 1
  br i1 %200, label %212, label %201, !prof !252

201:                                              ; preds = %196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(87) @can_copy, i8 0, i64 87, i1 false)
  tail call void @start_sequence() #19
  br label %202

202:                                              ; preds = %202, %201
  %203 = phi i64 [ 0, %201 ], [ %209, %202 ]
  %204 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !243
  %206 = icmp ne i8 %205, 1
  %207 = getelementptr inbounds [87 x i8], ptr @can_copy, i64 0, i64 %203
  %208 = zext i1 %206 to i8
  store i8 %208, ptr %207, align 1, !tbaa !243
  %209 = add nuw nsw i64 %203, 1
  %210 = icmp eq i64 %209, 87
  br i1 %210, label %211, label %202, !prof !253, !llvm.loop !254

211:                                              ; preds = %202
  tail call void @end_sequence() #19
  store i1 true, ptr @can_copy_p.can_copy_init_p, align 1
  br label %212

212:                                              ; preds = %196, %211
  %213 = zext nneg i32 %199 to i64
  %214 = getelementptr inbounds [87 x i8], ptr @can_copy, i64 0, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !243
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %220, label %217, !prof !749

217:                                              ; preds = %212
  %218 = load i32, ptr %193, align 8, !tbaa !243
  %219 = icmp eq i32 %218, %17
  br i1 %219, label %220, label %223, !prof !749

220:                                              ; preds = %217, %212, %192, %188
  %221 = tail call fastcc zeroext i8 @gcse_constant_p(ptr noundef nonnull %82), !range !285
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %433, label %223, !prof !750

223:                                              ; preds = %217, %220
  %224 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !243
  %226 = getelementptr inbounds %struct.basic_block_def, ptr %225, i64 0, i32 7
  %227 = load ptr, ptr %226, align 8, !tbaa !243
  %228 = getelementptr inbounds %struct.rtl_bb_info, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !293
  %230 = icmp eq ptr %229, %1
  br i1 %230, label %242, label %231, !prof !751

231:                                              ; preds = %223
  %232 = tail call ptr @next_nonnote_insn(ptr noundef %1) #19
  %233 = icmp eq ptr %232, null
  br i1 %233, label %242, label %234, !prof !752

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.rtx_def, ptr %232, i64 0, i32 1, i32 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !243
  %237 = load ptr, ptr %224, align 8, !tbaa !243
  %238 = icmp eq ptr %236, %237
  br i1 %238, label %239, label %242, !prof !753

239:                                              ; preds = %234
  %240 = tail call fastcc i32 @oprs_unchanged_p(ptr noundef %83, ptr noundef nonnull %232, i32 noundef 1), !range !321
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %433, label %242, !prof !752

242:                                              ; preds = %239, %234, %231, %223
  %243 = load i32, ptr %83, align 8
  %244 = and i32 %243, 65535
  %245 = icmp eq i32 %244, 23
  br i1 %245, label %246, label %252, !prof !754

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !243
  %249 = load i32, ptr %248, align 8
  %250 = and i32 %249, 65535
  %251 = icmp eq i32 %250, 37
  br i1 %251, label %253, label %252, !prof !754

252:                                              ; preds = %246, %242
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1207, ptr noundef nonnull @.str.17) #19
  br label %253

253:                                              ; preds = %252, %246
  %254 = getelementptr inbounds %struct.rtx_def, ptr %83, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !243
  %256 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1
  %257 = load i32, ptr %256, align 8, !tbaa !243
  %258 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 1
  %259 = load i32, ptr %258, align 8, !tbaa !363
  %260 = urem i32 %257, %259
  %261 = load ptr, ptr %2, align 8, !tbaa !365
  %262 = zext i32 %260 to i64
  %263 = getelementptr inbounds ptr, ptr %261, i64 %262
  %264 = load ptr, ptr %263, align 8, !tbaa !232
  %265 = icmp eq ptr %264, null
  br i1 %265, label %275, label %266, !prof !755

266:                                              ; preds = %253, %271
  %267 = phi ptr [ %273, %271 ], [ %264, %253 ]
  %268 = load ptr, ptr %267, align 8, !tbaa !375
  %269 = tail call i32 @exp_equiv_p(ptr noundef %268, ptr noundef nonnull %83, i32 noundef 0, i8 noundef zeroext 1) #19
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %327, !prof !756

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.expr, ptr %267, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !232
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %266, !prof !757, !llvm.loop !758

275:                                              ; preds = %271, %253
  %276 = phi ptr [ null, %253 ], [ %267, %271 ]
  %277 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %278 = add i32 %277, 48
  store i32 %278, ptr @bytes_used, align 4, !tbaa !247
  store i64 48, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %279 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !474
  %280 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %281 = ptrtoint ptr %279 to i64
  %282 = ptrtoint ptr %280 to i64
  %283 = sub i64 %281, %282
  %284 = icmp slt i64 %283, 48
  br i1 %284, label %285, label %286, !prof !759

285:                                              ; preds = %275
  tail call void @_obstack_newchunk(ptr noundef nonnull @gcse_obstack, i32 noundef 48) #19
  br label %286

286:                                              ; preds = %285, %275
  %287 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %288 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %289 = getelementptr inbounds i8, ptr %288, i64 %287
  store ptr %289, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %290 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !475
  %291 = icmp eq ptr %289, %290
  br i1 %291, label %292, label %295, !prof !760

292:                                              ; preds = %286
  %293 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 10), align 8
  %294 = or i8 %293, 2
  store i8 %294, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 10), align 8
  br label %295

295:                                              ; preds = %286, %292
  %296 = ptrtoint ptr %290 to i64
  store i64 %296, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %297 = ptrtoint ptr %289 to i64
  %298 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 6), align 8, !tbaa !761
  %299 = sext i32 %298 to i64
  %300 = add nsw i64 %299, %297
  %301 = xor i32 %298, -1
  %302 = sext i32 %301 to i64
  %303 = and i64 %300, %302
  %304 = inttoptr i64 %303 to ptr
  store ptr %304, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %305 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 1), align 8, !tbaa !471
  %306 = ptrtoint ptr %305 to i64
  %307 = sub i64 %303, %306
  %308 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !474
  %309 = ptrtoint ptr %308 to i64
  %310 = sub i64 %309, %306
  %311 = icmp sgt i64 %307, %310
  %312 = select i1 %311, ptr %308, ptr %304, !prof !760
  store ptr %312, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8
  store ptr %312, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !475
  %313 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %314 = add i32 %313, 48
  store i32 %314, ptr @bytes_used, align 4, !tbaa !247
  %315 = load ptr, ptr %2, align 8, !tbaa !365
  %316 = getelementptr inbounds ptr, ptr %315, i64 %262
  %317 = load ptr, ptr %316, align 8, !tbaa !232
  %318 = icmp eq ptr %317, null
  %319 = getelementptr inbounds %struct.expr, ptr %276, i64 0, i32 2
  %320 = select i1 %318, ptr %316, ptr %319, !prof !762
  store ptr %290, ptr %320, align 8, !tbaa !232
  %321 = tail call ptr @copy_rtx(ptr noundef nonnull %83) #19
  store ptr %321, ptr %290, align 8, !tbaa !375
  %322 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 2
  %323 = load i32, ptr %322, align 4, !tbaa !367
  %324 = add i32 %323, 1
  store i32 %324, ptr %322, align 4, !tbaa !367
  %325 = getelementptr inbounds %struct.expr, ptr %290, i64 0, i32 1
  store i32 %323, ptr %325, align 8, !tbaa !381
  %326 = getelementptr inbounds %struct.expr, ptr %290, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %326, i8 0, i64 24, i1 false)
  br label %327

327:                                              ; preds = %266, %295
  %328 = phi ptr [ %290, %295 ], [ %267, %266 ]
  %329 = getelementptr inbounds %struct.expr, ptr %328, i64 0, i32 4
  %330 = load ptr, ptr %329, align 8, !tbaa !763
  %331 = icmp eq ptr %330, null
  br i1 %331, label %340, label %332, !prof !764

332:                                              ; preds = %327
  %333 = getelementptr inbounds %struct.occr, ptr %330, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !540
  %335 = getelementptr inbounds %struct.rtx_def, ptr %334, i64 0, i32 1, i32 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !243
  %337 = load ptr, ptr %224, align 8, !tbaa !243
  %338 = icmp eq ptr %336, %337
  br i1 %338, label %339, label %340, !prof !765

339:                                              ; preds = %332
  store ptr %1, ptr %333, align 8, !tbaa !540
  br label %433

340:                                              ; preds = %332, %327
  %341 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %342 = add i32 %341, 24
  store i32 %342, ptr @bytes_used, align 4, !tbaa !247
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %343 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !474
  %344 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %345 = ptrtoint ptr %343 to i64
  %346 = ptrtoint ptr %344 to i64
  %347 = sub i64 %345, %346
  %348 = icmp slt i64 %347, 24
  br i1 %348, label %349, label %350, !prof !759

349:                                              ; preds = %340
  tail call void @_obstack_newchunk(ptr noundef nonnull @gcse_obstack, i32 noundef 24) #19
  br label %350

350:                                              ; preds = %349, %340
  %351 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %352 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %353 = getelementptr inbounds i8, ptr %352, i64 %351
  store ptr %353, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %354 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !475
  %355 = icmp eq ptr %353, %354
  br i1 %355, label %356, label %359, !prof !760

356:                                              ; preds = %350
  %357 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 10), align 8
  %358 = or i8 %357, 2
  store i8 %358, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 10), align 8
  br label %359

359:                                              ; preds = %350, %356
  %360 = ptrtoint ptr %354 to i64
  store i64 %360, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %361 = ptrtoint ptr %353 to i64
  %362 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 6), align 8, !tbaa !761
  %363 = sext i32 %362 to i64
  %364 = add nsw i64 %363, %361
  %365 = xor i32 %362, -1
  %366 = sext i32 %365 to i64
  %367 = and i64 %364, %366
  %368 = inttoptr i64 %367 to ptr
  store ptr %368, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %369 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 1), align 8, !tbaa !471
  %370 = ptrtoint ptr %369 to i64
  %371 = sub i64 %367, %370
  %372 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !474
  %373 = ptrtoint ptr %372 to i64
  %374 = sub i64 %373, %370
  %375 = icmp sgt i64 %371, %374
  %376 = select i1 %375, ptr %372, ptr %368, !prof !760
  store ptr %376, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8
  store ptr %376, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !475
  %377 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %378 = add i32 %377, 24
  store i32 %378, ptr @bytes_used, align 4, !tbaa !247
  %379 = getelementptr inbounds %struct.occr, ptr %354, i64 0, i32 1
  store ptr %1, ptr %379, align 8, !tbaa !540
  %380 = load ptr, ptr %329, align 8, !tbaa !763
  store ptr %380, ptr %354, align 8, !tbaa !766
  %381 = getelementptr inbounds %struct.occr, ptr %354, i64 0, i32 2
  store i8 0, ptr %381, align 8, !tbaa !547
  store ptr %354, ptr %329, align 8, !tbaa !763
  br label %433

382:                                              ; preds = %11
  %383 = load i32, ptr @flag_gcse_las, align 4, !tbaa !247
  %384 = icmp ne i32 %383, 0
  %385 = icmp eq i32 %9, 37
  %386 = and i1 %385, %384
  %387 = icmp eq i32 %13, 43
  %388 = and i1 %387, %386
  br i1 %388, label %389, label %433, !prof !767

389:                                              ; preds = %382
  %390 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %391 = load i32, ptr %390, align 8, !tbaa !243
  %392 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 3
  %393 = load i32, ptr %392, align 8, !tbaa !366
  %394 = icmp eq i32 %393, 0
  %395 = icmp ugt i32 %391, 52
  %396 = select i1 %394, i1 %395, i1 false
  br i1 %396, label %397, label %433

397:                                              ; preds = %389
  %398 = lshr i32 %8, 16
  %399 = and i32 %398, 255
  %400 = tail call zeroext i8 @can_copy_p(i32 noundef %399), !range !285
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %433, label %402

402:                                              ; preds = %397
  %403 = tail call zeroext i8 @can_throw_internal(ptr noundef %1) #19
  %404 = icmp eq i8 %403, 0
  br i1 %404, label %405, label %433

405:                                              ; preds = %402
  %406 = tail call fastcc i32 @want_to_gcse_p(ptr noundef nonnull %7), !range !321
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %433, label %408

408:                                              ; preds = %405
  %409 = tail call i32 @set_noop_p(ptr noundef %0) #19
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %433

411:                                              ; preds = %408
  %412 = tail call ptr @find_reg_note(ptr noundef %1, i32 noundef 3, ptr noundef null) #19
  %413 = icmp eq ptr %412, null
  br i1 %413, label %420, label %414

414:                                              ; preds = %411
  %415 = getelementptr inbounds %struct.rtx_def, ptr %412, i64 0, i32 1
  %416 = load ptr, ptr %415, align 8, !tbaa !243
  %417 = load i32, ptr %416, align 8
  %418 = and i32 %417, 65535
  %419 = icmp eq i32 %418, 43
  br i1 %419, label %433, label %420

420:                                              ; preds = %414, %411
  %421 = tail call fastcc i32 @oprs_unchanged_p(ptr noundef nonnull %7, ptr noundef %1, i32 noundef 1), !range !321
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %428, label %423

423:                                              ; preds = %420
  %424 = load i32, ptr %1, align 8
  %425 = and i32 %424, 65535
  %426 = icmp ne i32 %425, 9
  %427 = zext i1 %426 to i32
  br label %428

428:                                              ; preds = %423, %420
  %429 = phi i32 [ 0, %420 ], [ %427, %423 ]
  %430 = load i32, ptr %7, align 8
  %431 = lshr i32 %430, 16
  %432 = and i32 %431, 255
  tail call fastcc void @insert_expr_in_table(ptr noundef nonnull %7, i32 noundef %432, ptr noundef %1, i32 noundef 0, i32 noundef %429, ptr noundef %2)
  br label %433

433:                                              ; preds = %239, %359, %339, %3, %389, %397, %402, %405, %408, %414, %428, %179, %220, %184, %382
  ret void
}

declare void @free_INSN_LIST_list(ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare void @free_EXPR_LIST_node(ptr noundef) local_unnamed_addr #3

declare void @free_INSN_LIST_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @record_last_mem_set_info(ptr noundef %0) unnamed_addr #10 !prof !768 !PGOFuncName !769 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !243
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !359
  %6 = load ptr, ptr @modify_mem_list, align 8, !tbaa !232
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !232
  %10 = tail call ptr @alloc_INSN_LIST(ptr noundef %0, ptr noundef %9) #19
  %11 = load ptr, ptr @modify_mem_list, align 8, !tbaa !232
  %12 = getelementptr inbounds ptr, ptr %11, i64 %7
  store ptr %10, ptr %12, align 8, !tbaa !232
  %13 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !232
  %14 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %13, i32 noundef %5) #19
  %15 = load i32, ptr %0, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %27, !prof !770

18:                                               ; preds = %1
  %19 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !232
  %20 = getelementptr inbounds ptr, ptr %19, i64 %7
  %21 = load ptr, ptr %20, align 8, !tbaa !232
  %22 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %0, ptr noundef %21) #19
  %23 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !232
  %24 = getelementptr inbounds ptr, ptr %23, i64 %7
  store ptr %22, ptr %24, align 8, !tbaa !232
  %25 = load ptr, ptr @blocks_with_calls, align 8, !tbaa !232
  %26 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %25, i32 noundef %5) #19
  br label %30

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !243
  tail call void @note_stores(ptr noundef %29, ptr noundef nonnull @canon_list_insert, ptr noundef nonnull %0) #19
  br label %30

30:                                               ; preds = %27, %18
  ret void
}

declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @canon_list_insert(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #10 !prof !771 !PGOFuncName !772 {
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ %0, %3 ], [ %10, %8 ]
  %6 = load i32, ptr %5, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %30 [
    i16 39, label %8
    i16 120, label %8
    i16 40, label %8
    i16 43, label %11
  ], !prof !773

8:                                                ; preds = %4, %4, %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !243
  br label %4, !llvm.loop !774

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !243
  %14 = tail call ptr @get_addr(ptr noundef %13) #19
  %15 = tail call ptr @canon_rtx(ptr noundef %14) #19
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !243
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !359
  %20 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !232
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !232
  %24 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %15, ptr noundef %23) #19
  %25 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !232
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %24, ptr %26, align 8, !tbaa !232
  %27 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef nonnull %5, ptr noundef %24) #19
  %28 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !232
  %29 = getelementptr inbounds ptr, ptr %28, i64 %21
  store ptr %27, ptr %29, align 8, !tbaa !232
  br label %30

30:                                               ; preds = %4, %11
  ret void
}

declare ptr @get_addr(ptr noundef) local_unnamed_addr #3

declare ptr @canon_rtx(ptr noundef) local_unnamed_addr #3

declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @push_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @want_to_gcse_p(ptr noundef %0) unnamed_addr #10 !prof !231 !PGOFuncName !775 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 16711680
  switch i32 %3, label %25 [
    i32 2490368, label %4
    i32 2555904, label %13
    i32 2621440, label %23
  ], !prof !731

4:                                                ; preds = %1
  %5 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !247
  %6 = and i32 %5, 65536
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr @ix86_fpmath, align 4, !tbaa !247
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  switch i32 %3, label %25 [
    i32 2555904, label %13
    i32 2621440, label %23
  ], !prof !732

13:                                               ; preds = %1, %12
  %14 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !247
  %15 = and i32 %14, 131072
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr @ix86_fpmath, align 4, !tbaa !247
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  %21 = icmp eq i32 %3, 2621440
  %22 = or i1 %21, %20
  br i1 %22, label %23, label %25, !prof !733

23:                                               ; preds = %1, %12, %17, %13, %8, %4
  %24 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %0) #19
  br label %25

25:                                               ; preds = %17, %1, %12, %23
  %26 = phi ptr [ %24, %23 ], [ %0, %12 ], [ %0, %1 ], [ %0, %17 ]
  %27 = load i32, ptr %26, align 8
  %28 = trunc i32 %27 to i16
  %29 = add i16 %28, -26
  %30 = icmp ult i16 %29, 14
  br i1 %30, label %34, label %31

31:                                               ; preds = %34, %25
  %32 = tail call zeroext i8 @can_assign_to_reg_without_clobbers_p(ptr noundef nonnull %26), !range !285
  %33 = zext nneg i8 %32 to i32
  br label %38

34:                                               ; preds = %25
  %35 = lshr i16 10481, %29
  %36 = and i16 %35, 1
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %31, label %38

38:                                               ; preds = %34, %31
  %39 = phi i32 [ %33, %31 ], [ 0, %34 ]
  ret i32 %39
}

declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

declare i32 @set_noop_p(ptr noundef) local_unnamed_addr #3

declare i32 @multiple_sets(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_expr_in_table(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) unnamed_addr #10 !prof !776 !PGOFuncName !777 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  %8 = getelementptr inbounds %struct.hash_table_d, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !363
  store i32 0, ptr %7, align 4, !tbaa !247
  %10 = call i32 @hash_rtx(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 0) #19
  %11 = load i32, ptr %7, align 4, !tbaa !247
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %194, !prof !778

13:                                               ; preds = %6
  %14 = urem i32 %10, %9
  %15 = load ptr, ptr %5, align 8, !tbaa !365
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !232
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20, !prof !539

20:                                               ; preds = %13, %25
  %21 = phi ptr [ %27, %25 ], [ %18, %13 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !375
  %23 = call i32 @exp_equiv_p(ptr noundef %22, ptr noundef %0, i32 noundef 0, i8 noundef zeroext 1) #19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %80, !prof !779

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.expr, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !232
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %20, !prof !780, !llvm.loop !781

29:                                               ; preds = %25, %13
  %30 = phi ptr [ null, %13 ], [ %21, %25 ]
  %31 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %32 = add i32 %31, 48
  store i32 %32, ptr @bytes_used, align 4, !tbaa !247
  store i64 48, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !474
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = icmp slt i64 %37, 48
  br i1 %38, label %39, label %40, !prof !759

39:                                               ; preds = %29
  call void @_obstack_newchunk(ptr noundef nonnull @gcse_obstack, i32 noundef 48) #19
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %42 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %43 = getelementptr inbounds i8, ptr %42, i64 %41
  store ptr %43, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %44 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !475
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %49, !prof !760

46:                                               ; preds = %40
  %47 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 10), align 8
  %48 = or i8 %47, 2
  store i8 %48, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 10), align 8
  br label %49

49:                                               ; preds = %40, %46
  %50 = ptrtoint ptr %44 to i64
  store i64 %50, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %51 = ptrtoint ptr %43 to i64
  %52 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 6), align 8, !tbaa !761
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = xor i32 %52, -1
  %56 = sext i32 %55 to i64
  %57 = and i64 %54, %56
  %58 = inttoptr i64 %57 to ptr
  store ptr %58, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %59 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 1), align 8, !tbaa !471
  %60 = ptrtoint ptr %59 to i64
  %61 = sub i64 %57, %60
  %62 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !474
  %63 = ptrtoint ptr %62 to i64
  %64 = sub i64 %63, %60
  %65 = icmp sgt i64 %61, %64
  %66 = select i1 %65, ptr %62, ptr %58, !prof !760
  store ptr %66, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8
  store ptr %66, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !475
  %67 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %68 = add i32 %67, 48
  store i32 %68, ptr @bytes_used, align 4, !tbaa !247
  %69 = load ptr, ptr %5, align 8, !tbaa !365
  %70 = getelementptr inbounds ptr, ptr %69, i64 %16
  %71 = load ptr, ptr %70, align 8, !tbaa !232
  %72 = icmp eq ptr %71, null
  %73 = getelementptr inbounds %struct.expr, ptr %30, i64 0, i32 2
  %74 = select i1 %72, ptr %70, ptr %73, !prof !782
  store ptr %44, ptr %74, align 8, !tbaa !232
  store ptr %0, ptr %44, align 8, !tbaa !375
  %75 = getelementptr inbounds %struct.hash_table_d, ptr %5, i64 0, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !367
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 4, !tbaa !367
  %78 = getelementptr inbounds %struct.expr, ptr %44, i64 0, i32 1
  store i32 %76, ptr %78, align 8, !tbaa !381
  %79 = getelementptr inbounds %struct.expr, ptr %44, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %79, i8 0, i64 24, i1 false)
  br label %80

80:                                               ; preds = %20, %49
  %81 = phi ptr [ %44, %49 ], [ %21, %20 ]
  %82 = icmp eq i32 %3, 0
  br i1 %82, label %137, label %83, !prof !743

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.expr, ptr %81, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !783
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87, !prof !784

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.occr, ptr %85, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !540
  %90 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1, i32 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !243
  %92 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !243
  %94 = icmp eq ptr %91, %93
  br i1 %94, label %137, label %95, !prof !785

95:                                               ; preds = %83, %87
  %96 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %97 = add i32 %96, 24
  store i32 %97, ptr @bytes_used, align 4, !tbaa !247
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %98 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !474
  %99 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %100 = ptrtoint ptr %98 to i64
  %101 = ptrtoint ptr %99 to i64
  %102 = sub i64 %100, %101
  %103 = icmp slt i64 %102, 24
  br i1 %103, label %104, label %105, !prof !759

104:                                              ; preds = %95
  call void @_obstack_newchunk(ptr noundef nonnull @gcse_obstack, i32 noundef 24) #19
  br label %105

105:                                              ; preds = %104, %95
  %106 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %107 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %108 = getelementptr inbounds i8, ptr %107, i64 %106
  store ptr %108, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %109 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !475
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %111, label %114, !prof !760

111:                                              ; preds = %105
  %112 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 10), align 8
  %113 = or i8 %112, 2
  store i8 %113, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 10), align 8
  br label %114

114:                                              ; preds = %105, %111
  %115 = ptrtoint ptr %109 to i64
  store i64 %115, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %116 = ptrtoint ptr %108 to i64
  %117 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 6), align 8, !tbaa !761
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = xor i32 %117, -1
  %121 = sext i32 %120 to i64
  %122 = and i64 %119, %121
  %123 = inttoptr i64 %122 to ptr
  store ptr %123, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %124 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 1), align 8, !tbaa !471
  %125 = ptrtoint ptr %124 to i64
  %126 = sub i64 %122, %125
  %127 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !474
  %128 = ptrtoint ptr %127 to i64
  %129 = sub i64 %128, %125
  %130 = icmp sgt i64 %126, %129
  %131 = select i1 %130, ptr %127, ptr %123, !prof !760
  store ptr %131, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8
  store ptr %131, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !475
  %132 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %133 = add i32 %132, 24
  store i32 %133, ptr @bytes_used, align 4, !tbaa !247
  %134 = getelementptr inbounds %struct.occr, ptr %109, i64 0, i32 1
  store ptr %2, ptr %134, align 8, !tbaa !540
  %135 = load ptr, ptr %84, align 8, !tbaa !783
  store ptr %135, ptr %109, align 8, !tbaa !766
  %136 = getelementptr inbounds %struct.occr, ptr %109, i64 0, i32 2
  store i8 0, ptr %136, align 8, !tbaa !547
  store ptr %109, ptr %84, align 8, !tbaa !783
  br label %137

137:                                              ; preds = %114, %87, %80
  %138 = icmp eq i32 %4, 0
  br i1 %138, label %194, label %139, !prof !744

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.expr, ptr %81, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !763
  %142 = icmp eq ptr %141, null
  br i1 %142, label %152, label %143, !prof !786

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.occr, ptr %141, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !540
  %146 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1, i32 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !243
  %148 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !243
  %150 = icmp eq ptr %147, %149
  br i1 %150, label %151, label %152, !prof !787

151:                                              ; preds = %143
  store ptr %2, ptr %144, align 8, !tbaa !540
  br label %194

152:                                              ; preds = %143, %139
  %153 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %154 = add i32 %153, 24
  store i32 %154, ptr @bytes_used, align 4, !tbaa !247
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %155 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !474
  %156 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %157 = ptrtoint ptr %155 to i64
  %158 = ptrtoint ptr %156 to i64
  %159 = sub i64 %157, %158
  %160 = icmp slt i64 %159, 24
  br i1 %160, label %161, label %162, !prof !759

161:                                              ; preds = %152
  call void @_obstack_newchunk(ptr noundef nonnull @gcse_obstack, i32 noundef 24) #19
  br label %162

162:                                              ; preds = %161, %152
  %163 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %164 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %165 = getelementptr inbounds i8, ptr %164, i64 %163
  store ptr %165, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %166 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !475
  %167 = icmp eq ptr %165, %166
  br i1 %167, label %168, label %171, !prof !760

168:                                              ; preds = %162
  %169 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 10), align 8
  %170 = or i8 %169, 2
  store i8 %170, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 10), align 8
  br label %171

171:                                              ; preds = %162, %168
  %172 = ptrtoint ptr %166 to i64
  store i64 %172, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !473
  %173 = ptrtoint ptr %165 to i64
  %174 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 6), align 8, !tbaa !761
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = xor i32 %174, -1
  %178 = sext i32 %177 to i64
  %179 = and i64 %176, %178
  %180 = inttoptr i64 %179 to ptr
  store ptr %180, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !476
  %181 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 1), align 8, !tbaa !471
  %182 = ptrtoint ptr %181 to i64
  %183 = sub i64 %179, %182
  %184 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !474
  %185 = ptrtoint ptr %184 to i64
  %186 = sub i64 %185, %182
  %187 = icmp sgt i64 %183, %186
  %188 = select i1 %187, ptr %184, ptr %180, !prof !760
  store ptr %188, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8
  store ptr %188, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !475
  %189 = load i32, ptr @bytes_used, align 4, !tbaa !247
  %190 = add i32 %189, 24
  store i32 %190, ptr @bytes_used, align 4, !tbaa !247
  %191 = getelementptr inbounds %struct.occr, ptr %166, i64 0, i32 1
  store ptr %2, ptr %191, align 8, !tbaa !540
  %192 = load ptr, ptr %140, align 8, !tbaa !763
  store ptr %192, ptr %166, align 8, !tbaa !766
  %193 = getelementptr inbounds %struct.occr, ptr %166, i64 0, i32 2
  store i8 0, ptr %193, align 8, !tbaa !547
  store ptr %166, ptr %140, align 8, !tbaa !763
  br label %194

194:                                              ; preds = %137, %171, %151, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  ret void
}

declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #3

declare ptr @avoid_constant_pool_reference(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @oprs_unchanged_p(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #10 !prof !788 !PGOFuncName !789 {
  br label %4

4:                                                ; preds = %84, %56, %3
  %5 = phi ptr [ %0, %3 ], [ %58, %56 ], [ %87, %84 ]
  %6 = icmp eq ptr %5, null
  br i1 %6, label %108, label %7, !prof !790

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %60 [
    i16 37, label %10
    i16 43, label %42
    i16 74, label %108
    i16 75, label %108
    i16 76, label %108
    i16 77, label %108
    i16 78, label %108
    i16 79, label %108
    i16 36, label %59
    i16 46, label %59
    i16 35, label %59
    i16 30, label %59
    i16 32, label %59
    i16 31, label %59
    i16 33, label %59
    i16 45, label %59
    i16 44, label %59
    i16 20, label %59
    i16 21, label %59
  ], !prof !791

10:                                               ; preds = %7
  %11 = load ptr, ptr @reg_avail_info, align 8, !tbaa !232
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !243
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.reg_avail_info, ptr %11, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !620
  %17 = load ptr, ptr @current_bb, align 8, !tbaa !232
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %39, !prof !792

19:                                               ; preds = %10
  %20 = icmp eq i32 %2, 0
  %21 = load ptr, ptr @df, align 8, !tbaa !232
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !628
  %24 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !243
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %23, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !232
  %29 = getelementptr inbounds %struct.df_insn_info, ptr %28, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !631
  br i1 %20, label %35, label %31, !prof !793

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.reg_avail_info, ptr %11, i64 %14, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !633
  %34 = icmp slt i32 %33, %30
  br label %39

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.reg_avail_info, ptr %11, i64 %14, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !635
  %38 = icmp sge i32 %37, %30
  br label %39

39:                                               ; preds = %10, %35, %31
  %40 = phi i1 [ %34, %31 ], [ %38, %35 ], [ true, %10 ]
  %41 = zext i1 %40 to i32
  br label %108

42:                                               ; preds = %7
  %43 = load ptr, ptr @current_bb, align 8, !tbaa !232
  %44 = load ptr, ptr @df, align 8, !tbaa !232
  %45 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !628
  %47 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !243
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %46, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !232
  %52 = getelementptr inbounds %struct.df_insn_info, ptr %51, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !631
  %54 = tail call fastcc i32 @load_killed_in_block_p(ptr noundef %43, i32 noundef %53, ptr noundef nonnull %5, i32 noundef %2)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %108, !prof !794

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !243
  br label %4

59:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  br label %108

60:                                               ; preds = %7
  %61 = and i32 %8, 65535
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !243
  %65 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %62
  %66 = load ptr, ptr %65, align 8, !tbaa !232
  %67 = icmp eq i8 %64, 0
  br i1 %67, label %108, label %68, !prof !424

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %70 = zext i8 %64 to i64
  br label %71

71:                                               ; preds = %68, %106
  %72 = phi i64 [ %70, %68 ], [ %73, %106 ]
  %73 = add nsw i64 %72, -1
  %74 = getelementptr inbounds i8, ptr %66, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !243
  switch i8 %75, label %106 [
    i8 101, label %82
    i8 69, label %76
  ], !prof !795

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %78 = getelementptr inbounds [1 x %union.rtunion_def], ptr %77, i64 0, i64 %73
  %79 = load ptr, ptr %78, align 8, !tbaa !243
  %80 = load i32, ptr %79, align 8, !tbaa !405
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %99, label %106

82:                                               ; preds = %71
  %83 = icmp eq i64 %73, 0
  br i1 %83, label %84, label %88, !prof !796

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %86 = getelementptr inbounds [1 x %union.rtunion_def], ptr %85, i64 0, i64 %73
  %87 = load ptr, ptr %86, align 8, !tbaa !243
  br label %4

88:                                               ; preds = %82
  %89 = getelementptr inbounds [1 x %union.rtunion_def], ptr %69, i64 0, i64 %73
  %90 = load ptr, ptr %89, align 8, !tbaa !243
  %91 = tail call fastcc i32 @oprs_unchanged_p(ptr noundef %90, ptr noundef %1, i32 noundef %2), !range !321
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %108, label %106, !prof !797

93:                                               ; preds = %99
  %94 = add nuw nsw i64 %100, 1
  %95 = load ptr, ptr %78, align 8, !tbaa !243
  %96 = load i32, ptr %95, align 8, !tbaa !405
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %99, label %106, !llvm.loop !798

99:                                               ; preds = %76, %93
  %100 = phi i64 [ %94, %93 ], [ 0, %76 ]
  %101 = phi ptr [ %95, %93 ], [ %79, %76 ]
  %102 = getelementptr inbounds %struct.rtvec_def, ptr %101, i64 0, i32 1, i64 %100
  %103 = load ptr, ptr %102, align 8, !tbaa !232
  %104 = tail call fastcc i32 @oprs_unchanged_p(ptr noundef %103, ptr noundef %1, i32 noundef %2), !range !321
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %93

106:                                              ; preds = %93, %76, %71, %88
  %107 = icmp sgt i64 %72, 1
  br i1 %107, label %71, label %108, !prof !799, !llvm.loop !800

108:                                              ; preds = %88, %106, %99, %60, %7, %7, %7, %7, %7, %7, %42, %4, %59, %39
  %109 = phi i32 [ 1, %59 ], [ %41, %39 ], [ 1, %4 ], [ 0, %42 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 0, %7 ], [ 1, %60 ], [ 0, %99 ], [ 1, %106 ], [ 0, %88 ]
  ret i32 %109
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @load_killed_in_block_p(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #10 !prof !801 !PGOFuncName !802 {
  %5 = load ptr, ptr @modify_mem_list, align 8, !tbaa !232
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !359
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !232
  %11 = load i32, ptr %2, align 8
  %12 = and i32 %11, 67108864
  %13 = icmp ne i32 %12, 0
  %14 = icmp eq ptr %10, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %55, label %16, !prof !803

16:                                               ; preds = %4
  %17 = icmp eq i32 %3, 0
  br label %18

18:                                               ; preds = %16, %53
  %19 = phi ptr [ %10, %16 ], [ %51, %53 ]
  %20 = load ptr, ptr @df, align 8, !tbaa !232
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !628
  %23 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !243
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !243
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %22, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !232
  %30 = getelementptr inbounds %struct.df_insn_info, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !631
  br i1 %17, label %34, label %32, !prof !804

32:                                               ; preds = %18
  %33 = icmp slt i32 %31, %1
  br i1 %33, label %46, label %36, !prof !805, !llvm.loop !806

34:                                               ; preds = %18
  %35 = icmp sgt i32 %31, %1
  br i1 %35, label %46, label %36, !prof !807, !llvm.loop !806

36:                                               ; preds = %34, %32
  %37 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !243
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %50, label %42, !prof !808

42:                                               ; preds = %36
  store ptr %2, ptr @gcse_mem_operand, align 8, !tbaa !232
  store i1 false, ptr @gcse_mems_conflict_p, align 4
  %43 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !243
  tail call void @note_stores(ptr noundef %44, ptr noundef nonnull @mems_conflict_for_gcse_p, ptr noundef null) #19
  %45 = load i1, ptr @gcse_mems_conflict_p, align 4
  br i1 %45, label %50, label %46, !prof !809

46:                                               ; preds = %42, %32, %34
  %47 = phi i32 [ 2, %34 ], [ 2, %32 ], [ 0, %42 ]
  %48 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !243
  br label %50

50:                                               ; preds = %46, %42, %36
  %51 = phi ptr [ %19, %36 ], [ %19, %42 ], [ %49, %46 ]
  %52 = phi i32 [ 1, %36 ], [ 1, %42 ], [ %47, %46 ]
  switch i32 %52, label %55 [
    i32 0, label %53
    i32 2, label %53
  ], !prof !810

53:                                               ; preds = %50, %50
  %54 = icmp eq ptr %51, null
  br i1 %54, label %55, label %18, !prof !811, !llvm.loop !806

55:                                               ; preds = %53, %50, %4
  %56 = phi i32 [ 0, %4 ], [ 1, %50 ], [ 0, %53 ]
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal void @mems_conflict_for_gcse_p(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #10 !prof !812 !PGOFuncName !813 {
  %4 = alloca %struct.ls_expr, align 8
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %0, %3 ], [ %11, %9 ]
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %42 [
    i16 39, label %9
    i16 120, label %9
    i16 40, label %9
    i16 43, label %12
  ], !prof !814

9:                                                ; preds = %5, %5, %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !243
  br label %5, !llvm.loop !815

12:                                               ; preds = %5
  %13 = load ptr, ptr @gcse_mem_operand, align 8, !tbaa !232
  %14 = tail call i32 @exp_equiv_p(ptr noundef nonnull %6, ptr noundef %13, i32 noundef 0, i8 noundef zeroext 1) #19
  %15 = icmp ne i32 %14, 0
  %16 = load ptr, ptr @pre_ldst_mems, align 8
  %17 = icmp ne ptr %16, null
  %18 = select i1 %15, i1 %17, i1 false, !prof !809
  br i1 %18, label %19, label %34, !prof !809

19:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #19
  %20 = load ptr, ptr @pre_ldst_table, align 8, !tbaa !232
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ls_expr, ptr %4, i64 0, i32 1
  store ptr %6, ptr %23, align 8, !tbaa !493
  %24 = call ptr @htab_find_slot(ptr noundef nonnull %20, ptr noundef nonnull %4, i32 noundef 0) #19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 8, !tbaa !232
  %28 = getelementptr inbounds %struct.ls_expr, ptr %27, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !499
  %30 = icmp ne i32 %29, 0
  %31 = icmp eq ptr %27, null
  %32 = or i1 %31, %30
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #19
  br i1 %32, label %41, label %42

33:                                               ; preds = %22, %19
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #19
  br label %41

34:                                               ; preds = %12
  %35 = load i32, ptr %6, align 8
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = load ptr, ptr @gcse_mem_operand, align 8, !tbaa !232
  %39 = tail call i32 @true_dependence(ptr noundef nonnull %6, i32 noundef %37, ptr noundef %38, ptr noundef nonnull @rtx_addr_varies_p) #19
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41, !prof !816

41:                                               ; preds = %34, %26, %33
  store i1 true, ptr @gcse_mems_conflict_p, align 4
  br label %42

42:                                               ; preds = %5, %41, %26, %34
  ret void
}

declare i32 @true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @rtx_addr_varies_p(ptr noundef, i8 noundef zeroext) #3

declare i32 @exp_equiv_p(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hash_rtx(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @sbitmap_vector_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_local_properties(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !prof !617 !PGOFuncName !817 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %17, label %6, !prof !818

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hash_table_d, ptr %3, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !366
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr @cfun, align 8, !tbaa !232
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !280
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !287
  br i1 %9, label %16, label %15, !prof !819

15:                                               ; preds = %6
  tail call void @sbitmap_vector_zero(ptr noundef nonnull %0, i32 noundef %14) #19
  br label %17

16:                                               ; preds = %6
  tail call void @sbitmap_vector_ones(ptr noundef nonnull %0, i32 noundef %14) #19
  br label %17

17:                                               ; preds = %15, %16, %4
  %18 = icmp eq ptr %1, null
  br i1 %18, label %25, label %19, !prof !818

19:                                               ; preds = %17
  %20 = load ptr, ptr @cfun, align 8, !tbaa !232
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !280
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !287
  tail call void @sbitmap_vector_zero(ptr noundef nonnull %1, i32 noundef %24) #19
  br label %25

25:                                               ; preds = %19, %17
  %26 = icmp eq ptr %2, null
  br i1 %26, label %33, label %27, !prof !820

27:                                               ; preds = %25
  %28 = load ptr, ptr @cfun, align 8, !tbaa !232
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !280
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !287
  tail call void @sbitmap_vector_zero(ptr noundef nonnull %2, i32 noundef %32) #19
  br label %33

33:                                               ; preds = %27, %25
  %34 = getelementptr inbounds %struct.hash_table_d, ptr %3, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !363
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %152, label %37, !prof !484

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.hash_table_d, ptr %3, i64 0, i32 3
  br label %39

39:                                               ; preds = %37, %147
  %40 = phi i64 [ 0, %37 ], [ %148, %147 ]
  %41 = load ptr, ptr %3, align 8, !tbaa !365
  %42 = getelementptr inbounds ptr, ptr %41, i64 %40
  %43 = load ptr, ptr %42, align 8, !tbaa !232
  %44 = icmp eq ptr %43, null
  br i1 %44, label %147, label %45, !prof !821

45:                                               ; preds = %39, %142
  %46 = phi ptr [ %145, %142 ], [ %43, %39 ]
  %47 = getelementptr inbounds %struct.expr, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !381
  br i1 %5, label %52, label %49, !prof !822

49:                                               ; preds = %45
  %50 = load ptr, ptr %46, align 8, !tbaa !375
  %51 = load i32, ptr %38, align 8, !tbaa !366
  tail call fastcc void @compute_transp(ptr noundef %50, i32 noundef %48, ptr noundef nonnull %0, i32 noundef %51)
  br label %52

52:                                               ; preds = %49, %45
  br i1 %26, label %97, label %53, !prof !823

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.expr, ptr %46, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !232
  %56 = icmp eq ptr %55, null
  br i1 %56, label %97, label %57, !prof !539

57:                                               ; preds = %53
  %58 = and i32 %48, 63
  %59 = zext nneg i32 %58 to i64
  %60 = shl nuw i64 1, %59
  %61 = lshr i32 %48, 6
  %62 = zext nneg i32 %61 to i64
  br label %63

63:                                               ; preds = %57, %90
  %64 = phi ptr [ %55, %57 ], [ %95, %90 ]
  %65 = getelementptr inbounds %struct.occr, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !540
  %67 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !243
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !359
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %2, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !232
  %74 = load ptr, ptr %73, align 8, !tbaa !523
  %75 = icmp eq ptr %74, null
  br i1 %75, label %90, label %76, !prof !824

76:                                               ; preds = %63
  %77 = lshr i32 %48, 6
  %78 = zext nneg i32 %77 to i64
  %79 = and i32 %48, 63
  %80 = zext nneg i32 %79 to i64
  %81 = shl nuw i64 1, %80
  %82 = getelementptr inbounds %struct.simple_bitmap_def, ptr %73, i64 0, i32 3, i64 %78
  %83 = load i64, ptr %82, align 8, !tbaa !382
  %84 = and i64 %83, %81
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = getelementptr inbounds i8, ptr %74, i64 %78
  %88 = load i8, ptr %87, align 1, !tbaa !243
  %89 = add i8 %88, 1
  store i8 %89, ptr %87, align 1, !tbaa !243
  br label %90

90:                                               ; preds = %63, %76, %86
  %91 = getelementptr inbounds %struct.simple_bitmap_def, ptr %73, i64 0, i32 3, i64 %62
  %92 = load i64, ptr %91, align 8, !tbaa !382
  %93 = or i64 %92, %60
  store i64 %93, ptr %91, align 8, !tbaa !382
  %94 = getelementptr inbounds %struct.occr, ptr %64, i64 0, i32 2
  store i8 0, ptr %94, align 8, !tbaa !547
  %95 = load ptr, ptr %64, align 8, !tbaa !232
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %63, !prof !548, !llvm.loop !825

97:                                               ; preds = %90, %53, %52
  br i1 %18, label %142, label %98, !prof !822

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.expr, ptr %46, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !232
  %101 = icmp eq ptr %100, null
  br i1 %101, label %142, label %102, !prof !826

102:                                              ; preds = %98
  %103 = and i32 %48, 63
  %104 = zext nneg i32 %103 to i64
  %105 = shl nuw i64 1, %104
  %106 = lshr i32 %48, 6
  %107 = zext nneg i32 %106 to i64
  br label %108

108:                                              ; preds = %102, %135
  %109 = phi ptr [ %100, %102 ], [ %140, %135 ]
  %110 = getelementptr inbounds %struct.occr, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !540
  %112 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1, i32 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !243
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %113, i64 0, i32 9
  %115 = load i32, ptr %114, align 8, !tbaa !359
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %1, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !232
  %119 = load ptr, ptr %118, align 8, !tbaa !523
  %120 = icmp eq ptr %119, null
  br i1 %120, label %135, label %121, !prof !827

121:                                              ; preds = %108
  %122 = lshr i32 %48, 6
  %123 = zext nneg i32 %122 to i64
  %124 = and i32 %48, 63
  %125 = zext nneg i32 %124 to i64
  %126 = shl nuw i64 1, %125
  %127 = getelementptr inbounds %struct.simple_bitmap_def, ptr %118, i64 0, i32 3, i64 %123
  %128 = load i64, ptr %127, align 8, !tbaa !382
  %129 = and i64 %128, %126
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %119, i64 %123
  %133 = load i8, ptr %132, align 1, !tbaa !243
  %134 = add i8 %133, 1
  store i8 %134, ptr %132, align 1, !tbaa !243
  br label %135

135:                                              ; preds = %108, %121, %131
  %136 = getelementptr inbounds %struct.simple_bitmap_def, ptr %118, i64 0, i32 3, i64 %107
  %137 = load i64, ptr %136, align 8, !tbaa !382
  %138 = or i64 %137, %105
  store i64 %138, ptr %136, align 8, !tbaa !382
  %139 = getelementptr inbounds %struct.occr, ptr %109, i64 0, i32 3
  store i8 0, ptr %139, align 1, !tbaa !574
  %140 = load ptr, ptr %109, align 8, !tbaa !232
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %108, !prof !828, !llvm.loop !829

142:                                              ; preds = %135, %98, %97
  %143 = getelementptr inbounds %struct.expr, ptr %46, i64 0, i32 5
  store ptr null, ptr %143, align 8, !tbaa !545
  %144 = getelementptr inbounds %struct.expr, ptr %46, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !232
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %45, !prof !830, !llvm.loop !831

147:                                              ; preds = %142, %39
  %148 = add nuw nsw i64 %40, 1
  %149 = load i32, ptr %34, align 8, !tbaa !363
  %150 = zext i32 %149 to i64
  %151 = icmp ult i64 %148, %150
  br i1 %151, label %39, label %152, !prof !832, !llvm.loop !833

152:                                              ; preds = %147, %33
  ret void
}

declare void @compute_available(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @sbitmap_vector_ones(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_transp(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #10 !prof !834 !PGOFuncName !835 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %522, label %6, !prof !424

6:                                                ; preds = %4, %476
  %7 = phi ptr [ %478, %476 ], [ %0, %4 ]
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %480 [
    i16 37, label %10
    i16 43, label %123
    i16 36, label %522
    i16 46, label %522
    i16 35, label %522
    i16 30, label %522
    i16 32, label %522
    i16 31, label %522
    i16 33, label %522
    i16 45, label %522
    i16 44, label %522
    i16 20, label %522
    i16 21, label %522
  ], !prof !836

10:                                               ; preds = %6
  %11 = icmp eq i32 %3, 0
  %12 = load ptr, ptr @df, align 8, !tbaa !232
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !837
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !243
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %14, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !232
  %20 = load ptr, ptr %19, align 8, !tbaa !243
  %21 = icmp eq ptr %20, null
  br i1 %11, label %72, label %22, !prof !838

22:                                               ; preds = %10
  br i1 %21, label %522, label %23, !prof !839

23:                                               ; preds = %22
  %24 = and i32 %1, 63
  %25 = zext nneg i32 %24 to i64
  %26 = shl nuw i64 1, %25
  %27 = lshr i32 %1, 6
  %28 = zext nneg i32 %27 to i64
  br label %29

29:                                               ; preds = %23, %65
  %30 = phi ptr [ %20, %23 ], [ %70, %65 ]
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %36, !prof !840

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.df_artificial_ref, ptr %30, i64 0, i32 1
  br label %41

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.df_base_ref, ptr %30, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !243
  %39 = load ptr, ptr %38, align 8, !tbaa !841
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 1
  br label %41

41:                                               ; preds = %36, %34
  %42 = phi ptr [ %35, %34 ], [ %40, %36 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !243
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !359
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %2, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !232
  %49 = load ptr, ptr %48, align 8, !tbaa !523
  %50 = icmp eq ptr %49, null
  br i1 %50, label %65, label %51, !prof !842

51:                                               ; preds = %41
  %52 = lshr i32 %1, 6
  %53 = zext nneg i32 %52 to i64
  %54 = and i32 %1, 63
  %55 = zext nneg i32 %54 to i64
  %56 = shl nuw i64 1, %55
  %57 = getelementptr inbounds %struct.simple_bitmap_def, ptr %48, i64 0, i32 3, i64 %53
  %58 = load i64, ptr %57, align 8, !tbaa !382
  %59 = and i64 %58, %56
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = getelementptr inbounds i8, ptr %49, i64 %53
  %63 = load i8, ptr %62, align 1, !tbaa !243
  %64 = add i8 %63, 1
  store i8 %64, ptr %62, align 1, !tbaa !243
  br label %65

65:                                               ; preds = %41, %51, %61
  %66 = getelementptr inbounds %struct.simple_bitmap_def, ptr %48, i64 0, i32 3, i64 %28
  %67 = load i64, ptr %66, align 8, !tbaa !382
  %68 = or i64 %67, %26
  store i64 %68, ptr %66, align 8, !tbaa !382
  %69 = getelementptr inbounds %struct.df_base_ref, ptr %30, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !243
  %71 = icmp eq ptr %70, null
  br i1 %71, label %522, label %29, !prof !843, !llvm.loop !844

72:                                               ; preds = %10
  br i1 %21, label %522, label %73, !prof !845

73:                                               ; preds = %72
  %74 = and i32 %1, 63
  %75 = zext nneg i32 %74 to i64
  %76 = shl nuw i64 1, %75
  %77 = xor i64 %76, -1
  %78 = lshr i32 %1, 6
  %79 = zext nneg i32 %78 to i64
  br label %80

80:                                               ; preds = %73, %116
  %81 = phi ptr [ %20, %73 ], [ %121, %116 ]
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 255
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %87, !prof !846

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.df_artificial_ref, ptr %81, i64 0, i32 1
  br label %92

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.df_base_ref, ptr %81, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !243
  %90 = load ptr, ptr %89, align 8, !tbaa !841
  %91 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 1
  br label %92

92:                                               ; preds = %87, %85
  %93 = phi ptr [ %86, %85 ], [ %91, %87 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !243
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 9
  %96 = load i32, ptr %95, align 8, !tbaa !359
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %2, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !232
  %100 = load ptr, ptr %99, align 8, !tbaa !523
  %101 = icmp eq ptr %100, null
  br i1 %101, label %116, label %102, !prof !847

102:                                              ; preds = %92
  %103 = lshr i32 %1, 6
  %104 = zext nneg i32 %103 to i64
  %105 = and i32 %1, 63
  %106 = zext nneg i32 %105 to i64
  %107 = shl nuw i64 1, %106
  %108 = getelementptr inbounds %struct.simple_bitmap_def, ptr %99, i64 0, i32 3, i64 %104
  %109 = load i64, ptr %108, align 8, !tbaa !382
  %110 = and i64 %109, %107
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %102
  %113 = getelementptr inbounds i8, ptr %100, i64 %104
  %114 = load i8, ptr %113, align 1, !tbaa !243
  %115 = add i8 %114, -1
  store i8 %115, ptr %113, align 1, !tbaa !243
  br label %116

116:                                              ; preds = %92, %102, %112
  %117 = getelementptr inbounds %struct.simple_bitmap_def, ptr %99, i64 0, i32 3, i64 %79
  %118 = load i64, ptr %117, align 8, !tbaa !382
  %119 = and i64 %118, %77
  store i64 %119, ptr %117, align 8, !tbaa !382
  %120 = getelementptr inbounds %struct.df_base_ref, ptr %81, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !243
  %122 = icmp eq ptr %121, null
  br i1 %122, label %522, label %80, !prof !848, !llvm.loop !849

123:                                              ; preds = %6
  %124 = and i32 %8, 67108864
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %474, !prof !850

126:                                              ; preds = %123
  %127 = icmp eq i32 %3, 0
  %128 = and i32 %1, 63
  %129 = zext nneg i32 %128 to i64
  %130 = shl nuw i64 1, %129
  %131 = xor i64 %130, -1
  %132 = lshr i32 %1, 6
  %133 = zext nneg i32 %132 to i64
  %134 = load ptr, ptr @blocks_with_calls, align 8, !tbaa !232
  %135 = load ptr, ptr %134, align 8, !tbaa !694
  %136 = icmp eq ptr %135, null
  %137 = select i1 %136, ptr @bitmap_zero_bits, ptr %135, !prof !851
  %138 = getelementptr inbounds %struct.bitmap_element_def, ptr %137, i64 0, i32 2
  %139 = load i32, ptr %138, align 8, !tbaa !697
  %140 = shl i32 %139, 7
  %141 = getelementptr inbounds %struct.bitmap_element_def, ptr %137, i64 0, i32 3
  %142 = load i64, ptr %141, align 8, !tbaa !382
  %143 = icmp eq i64 %142, 0
  %144 = zext i1 %143 to i32
  %145 = or disjoint i32 %140, %144
  br label %146

146:                                              ; preds = %256, %126
  %147 = phi i64 [ %142, %126 ], [ %257, %256 ]
  %148 = phi i32 [ 0, %126 ], [ %203, %256 ]
  %149 = phi ptr [ %137, %126 ], [ %204, %256 ]
  %150 = phi i32 [ %145, %126 ], [ %258, %256 ]
  %151 = icmp eq i64 %147, 0
  br i1 %151, label %166, label %152, !prof !852

152:                                              ; preds = %180, %146
  %153 = phi i64 [ %147, %146 ], [ %185, %180 ]
  %154 = phi i32 [ %148, %146 ], [ %181, %180 ]
  %155 = phi ptr [ %149, %146 ], [ %172, %180 ]
  %156 = phi i32 [ %150, %146 ], [ %182, %180 ]
  %157 = and i64 %153, 1
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %201, !prof !853

159:                                              ; preds = %152, %159
  %160 = phi i32 [ %163, %159 ], [ %156, %152 ]
  %161 = phi i64 [ %162, %159 ], [ %153, %152 ]
  %162 = lshr exact i64 %161, 1
  %163 = add i32 %160, 1
  %164 = and i64 %161, 2
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %159, label %201, !prof !854, !llvm.loop !702

166:                                              ; preds = %146
  %167 = add i32 %150, 63
  %168 = and i32 %167, -64
  %169 = add i32 %148, 1
  br label %170

170:                                              ; preds = %197, %166
  %171 = phi i64 [ %147, %166 ], [ %192, %197 ]
  %172 = phi ptr [ %149, %166 ], [ %195, %197 ]
  %173 = phi i32 [ %168, %166 ], [ %200, %197 ]
  %174 = phi i32 [ %169, %166 ], [ 0, %197 ]
  %175 = icmp eq i32 %174, 2
  br i1 %175, label %191, label %176, !prof !855

176:                                              ; preds = %170
  %177 = add i32 %173, 128
  %178 = shl i32 %174, 6
  %179 = sub i32 %177, %178
  br label %180

180:                                              ; preds = %176, %187
  %181 = phi i32 [ %189, %187 ], [ %174, %176 ]
  %182 = phi i32 [ %188, %187 ], [ %173, %176 ]
  %183 = zext i32 %181 to i64
  %184 = getelementptr inbounds %struct.bitmap_element_def, ptr %172, i64 0, i32 3, i64 %183
  %185 = load i64, ptr %184, align 8, !tbaa !382
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %152, !prof !856

187:                                              ; preds = %180
  %188 = add i32 %182, 64
  %189 = add i32 %181, 1
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %180, !prof !857, !llvm.loop !706

191:                                              ; preds = %187, %170
  %192 = phi i64 [ %171, %170 ], [ %185, %187 ]
  %193 = phi i32 [ %173, %170 ], [ %179, %187 ]
  %194 = phi i32 [ %174, %170 ], [ 2, %187 ]
  %195 = load ptr, ptr %172, align 8, !tbaa !707
  %196 = icmp eq ptr %195, null
  br i1 %196, label %201, label %197, !prof !858

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.bitmap_element_def, ptr %195, i64 0, i32 2
  %199 = load i32, ptr %198, align 8, !tbaa !697
  %200 = shl i32 %199, 7
  br label %170, !llvm.loop !709

201:                                              ; preds = %191, %159, %152
  %202 = phi i64 [ %153, %152 ], [ %162, %159 ], [ %192, %191 ]
  %203 = phi i32 [ %154, %152 ], [ %154, %159 ], [ %194, %191 ]
  %204 = phi ptr [ %155, %152 ], [ %155, %159 ], [ %195, %191 ]
  %205 = phi i32 [ %156, %152 ], [ %163, %159 ], [ %193, %191 ]
  %206 = phi i1 [ false, %152 ], [ false, %159 ], [ true, %191 ]
  br i1 %206, label %259, label %207, !prof !859

207:                                              ; preds = %201
  %208 = zext i32 %205 to i64
  %209 = getelementptr inbounds ptr, ptr %2, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !232
  %211 = load ptr, ptr %210, align 8, !tbaa !523
  %212 = icmp eq ptr %211, null
  br i1 %127, label %237, label %213, !prof !860

213:                                              ; preds = %207
  br i1 %212, label %228, label %214

214:                                              ; preds = %213
  %215 = lshr i32 %1, 6
  %216 = zext nneg i32 %215 to i64
  %217 = and i32 %1, 63
  %218 = zext nneg i32 %217 to i64
  %219 = shl nuw i64 1, %218
  %220 = getelementptr inbounds %struct.simple_bitmap_def, ptr %210, i64 0, i32 3, i64 %216
  %221 = load i64, ptr %220, align 8, !tbaa !382
  %222 = and i64 %221, %219
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %214
  %225 = getelementptr inbounds i8, ptr %211, i64 %216
  %226 = load i8, ptr %225, align 1, !tbaa !243
  %227 = add i8 %226, 1
  store i8 %227, ptr %225, align 1, !tbaa !243
  br label %228

228:                                              ; preds = %213, %214, %224
  %229 = and i32 %1, 63
  %230 = zext nneg i32 %229 to i64
  %231 = shl nuw i64 1, %230
  %232 = lshr i32 %1, 6
  %233 = zext nneg i32 %232 to i64
  %234 = getelementptr inbounds %struct.simple_bitmap_def, ptr %210, i64 0, i32 3, i64 %233
  %235 = load i64, ptr %234, align 8, !tbaa !382
  %236 = or i64 %235, %231
  store i64 %236, ptr %234, align 8, !tbaa !382
  br label %256

237:                                              ; preds = %207
  br i1 %212, label %252, label %238, !prof !860

238:                                              ; preds = %237
  %239 = lshr i32 %1, 6
  %240 = zext nneg i32 %239 to i64
  %241 = and i32 %1, 63
  %242 = zext nneg i32 %241 to i64
  %243 = shl nuw i64 1, %242
  %244 = getelementptr inbounds %struct.simple_bitmap_def, ptr %210, i64 0, i32 3, i64 %240
  %245 = load i64, ptr %244, align 8, !tbaa !382
  %246 = and i64 %245, %243
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %238
  %249 = getelementptr inbounds i8, ptr %211, i64 %240
  %250 = load i8, ptr %249, align 1, !tbaa !243
  %251 = add i8 %250, -1
  store i8 %251, ptr %249, align 1, !tbaa !243
  br label %252

252:                                              ; preds = %237, %238, %248
  %253 = getelementptr inbounds %struct.simple_bitmap_def, ptr %210, i64 0, i32 3, i64 %133
  %254 = load i64, ptr %253, align 8, !tbaa !382
  %255 = and i64 %254, %131
  store i64 %255, ptr %253, align 8, !tbaa !382
  br label %256

256:                                              ; preds = %228, %252
  %257 = lshr i64 %202, 1
  %258 = add i32 %205, 1
  br label %146, !llvm.loop !861

259:                                              ; preds = %201
  %260 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !232
  %261 = load ptr, ptr %260, align 8, !tbaa !694
  %262 = icmp eq ptr %261, null
  %263 = select i1 %262, ptr @bitmap_zero_bits, ptr %261, !prof !851
  br label %264

264:                                              ; preds = %268, %259
  %265 = phi ptr [ %134, %259 ], [ %266, %268 ]
  %266 = load ptr, ptr %265, align 8, !tbaa !232
  %267 = icmp eq ptr %266, null
  br i1 %267, label %274, label %268, !prof !851

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.bitmap_element_def, ptr %263, i64 0, i32 2
  %270 = getelementptr inbounds %struct.bitmap_element_def, ptr %266, i64 0, i32 2
  %271 = load i32, ptr %270, align 8, !tbaa !697
  %272 = load i32, ptr %269, align 8, !tbaa !697
  %273 = icmp ult i32 %271, %272
  br i1 %273, label %264, label %274, !prof !851, !llvm.loop !862

274:                                              ; preds = %268, %264
  %275 = getelementptr inbounds %struct.bitmap_element_def, ptr %263, i64 0, i32 2
  %276 = load i32, ptr %275, align 8, !tbaa !697
  %277 = getelementptr inbounds %struct.bitmap_element_def, ptr %263, i64 0, i32 3
  %278 = load i64, ptr %277, align 8, !tbaa !382
  br i1 %267, label %288, label %279, !prof !851

279:                                              ; preds = %274
  %280 = getelementptr inbounds %struct.bitmap_element_def, ptr %266, i64 0, i32 2
  %281 = load i32, ptr %280, align 8, !tbaa !697
  %282 = icmp eq i32 %276, %281
  br i1 %282, label %283, label %288, !prof !863

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.bitmap_element_def, ptr %266, i64 0, i32 3, i64 0
  %285 = load i64, ptr %284, align 8, !tbaa !382
  %286 = xor i64 %285, -1
  %287 = and i64 %278, %286
  br label %288

288:                                              ; preds = %274, %279, %283
  %289 = phi i64 [ %278, %274 ], [ %287, %283 ], [ %278, %279 ]
  %290 = shl i32 %276, 7
  %291 = icmp eq i64 %289, 0
  %292 = zext i1 %291 to i32
  %293 = or disjoint i32 %290, %292
  br label %294

294:                                              ; preds = %471, %288
  %295 = phi i64 [ %289, %288 ], [ %472, %471 ]
  %296 = phi i32 [ 0, %288 ], [ %382, %471 ]
  %297 = phi ptr [ %266, %288 ], [ %383, %471 ]
  %298 = phi ptr [ %263, %288 ], [ %384, %471 ]
  %299 = phi i32 [ %293, %288 ], [ %473, %471 ]
  %300 = icmp eq i64 %295, 0
  br i1 %300, label %316, label %301, !prof !863

301:                                              ; preds = %349, %294
  %302 = phi i64 [ %295, %294 ], [ %350, %349 ]
  %303 = phi i32 [ %296, %294 ], [ %335, %349 ]
  %304 = phi ptr [ %297, %294 ], [ %322, %349 ]
  %305 = phi ptr [ %298, %294 ], [ %323, %349 ]
  %306 = phi i32 [ %299, %294 ], [ %336, %349 ]
  %307 = and i64 %302, 1
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %380

309:                                              ; preds = %301, %309
  %310 = phi i32 [ %313, %309 ], [ %306, %301 ]
  %311 = phi i64 [ %312, %309 ], [ %302, %301 ]
  %312 = lshr exact i64 %311, 1
  %313 = add i32 %310, 1
  %314 = and i64 %311, 2
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %309, label %380, !llvm.loop !864

316:                                              ; preds = %294
  %317 = add i32 %299, 63
  %318 = and i32 %317, -64
  %319 = add i32 %296, 1
  br label %320

320:                                              ; preds = %375, %316
  %321 = phi i64 [ %295, %316 ], [ %357, %375 ]
  %322 = phi ptr [ %297, %316 ], [ %376, %375 ]
  %323 = phi ptr [ %298, %316 ], [ %360, %375 ]
  %324 = phi i32 [ %318, %316 ], [ %379, %375 ]
  %325 = phi i32 [ %319, %316 ], [ 0, %375 ]
  %326 = icmp eq i32 %325, 2
  br i1 %326, label %356, label %327, !prof !855

327:                                              ; preds = %320
  %328 = icmp eq ptr %322, null
  %329 = getelementptr inbounds %struct.bitmap_element_def, ptr %322, i64 0, i32 2
  %330 = getelementptr inbounds %struct.bitmap_element_def, ptr %323, i64 0, i32 2
  %331 = add i32 %324, 128
  %332 = shl i32 %325, 6
  %333 = sub i32 %331, %332
  br label %334

334:                                              ; preds = %327, %352
  %335 = phi i32 [ %325, %327 ], [ %354, %352 ]
  %336 = phi i32 [ %324, %327 ], [ %353, %352 ]
  %337 = zext i32 %335 to i64
  %338 = getelementptr inbounds %struct.bitmap_element_def, ptr %323, i64 0, i32 3, i64 %337
  %339 = load i64, ptr %338, align 8, !tbaa !382
  br i1 %328, label %349, label %340, !prof !865

340:                                              ; preds = %334
  %341 = load i32, ptr %329, align 8, !tbaa !697
  %342 = load i32, ptr %330, align 8, !tbaa !697
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %349, !prof !866

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.bitmap_element_def, ptr %322, i64 0, i32 3, i64 %337
  %346 = load i64, ptr %345, align 8, !tbaa !382
  %347 = xor i64 %346, -1
  %348 = and i64 %339, %347
  br label %349

349:                                              ; preds = %344, %340, %334
  %350 = phi i64 [ %339, %334 ], [ %348, %344 ], [ %339, %340 ]
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %352, label %301, !prof !866

352:                                              ; preds = %349
  %353 = add i32 %336, 64
  %354 = add i32 %335, 1
  %355 = icmp eq i32 %354, 2
  br i1 %355, label %356, label %334, !prof !857, !llvm.loop !867

356:                                              ; preds = %352, %320
  %357 = phi i64 [ %321, %320 ], [ %350, %352 ]
  %358 = phi i32 [ %324, %320 ], [ %333, %352 ]
  %359 = phi i32 [ %325, %320 ], [ 2, %352 ]
  %360 = load ptr, ptr %323, align 8, !tbaa !707
  %361 = icmp eq ptr %360, null
  br i1 %361, label %380, label %362, !prof !858

362:                                              ; preds = %356
  %363 = icmp eq ptr %322, null
  br i1 %363, label %375, label %364, !prof !424

364:                                              ; preds = %362
  %365 = getelementptr inbounds %struct.bitmap_element_def, ptr %360, i64 0, i32 2
  %366 = load i32, ptr %365, align 8, !tbaa !697
  br label %367

367:                                              ; preds = %364, %372
  %368 = phi ptr [ %322, %364 ], [ %373, %372 ]
  %369 = getelementptr inbounds %struct.bitmap_element_def, ptr %368, i64 0, i32 2
  %370 = load i32, ptr %369, align 8, !tbaa !697
  %371 = icmp ult i32 %370, %366
  br i1 %371, label %372, label %375, !prof !868

372:                                              ; preds = %367
  %373 = load ptr, ptr %368, align 8, !tbaa !707
  %374 = icmp eq ptr %373, null
  br i1 %374, label %375, label %367, !prof !869, !llvm.loop !870

375:                                              ; preds = %372, %367, %362
  %376 = phi ptr [ %322, %362 ], [ %373, %372 ], [ %368, %367 ]
  %377 = getelementptr inbounds %struct.bitmap_element_def, ptr %360, i64 0, i32 2
  %378 = load i32, ptr %377, align 8, !tbaa !697
  %379 = shl i32 %378, 7
  br label %320, !llvm.loop !871

380:                                              ; preds = %356, %309, %301
  %381 = phi i64 [ %302, %301 ], [ %312, %309 ], [ %357, %356 ]
  %382 = phi i32 [ %303, %301 ], [ %303, %309 ], [ %359, %356 ]
  %383 = phi ptr [ %304, %301 ], [ %304, %309 ], [ %322, %356 ]
  %384 = phi ptr [ %305, %301 ], [ %305, %309 ], [ %360, %356 ]
  %385 = phi i32 [ %306, %301 ], [ %313, %309 ], [ %358, %356 ]
  %386 = phi i1 [ false, %301 ], [ false, %309 ], [ true, %356 ]
  br i1 %386, label %474, label %387, !prof !863

387:                                              ; preds = %380
  %388 = icmp eq i32 %3, 0
  %389 = lshr i32 %1, 6
  %390 = zext nneg i32 %389 to i64
  %391 = and i32 %1, 63
  %392 = zext nneg i32 %391 to i64
  %393 = shl nuw i64 1, %392
  %394 = and i32 %1, 63
  %395 = zext nneg i32 %394 to i64
  %396 = shl nuw i64 1, %395
  %397 = lshr i32 %1, 6
  %398 = zext nneg i32 %397 to i64
  %399 = lshr i32 %1, 6
  %400 = zext nneg i32 %399 to i64
  %401 = and i32 %1, 63
  %402 = zext nneg i32 %401 to i64
  %403 = shl nuw i64 1, %402
  %404 = and i32 %1, 63
  %405 = zext nneg i32 %404 to i64
  %406 = shl nuw i64 1, %405
  %407 = xor i64 %406, -1
  %408 = lshr i32 %1, 6
  %409 = zext nneg i32 %408 to i64
  %410 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !232
  %411 = zext i32 %385 to i64
  %412 = getelementptr inbounds ptr, ptr %410, i64 %411
  %413 = load ptr, ptr %412, align 8, !tbaa !232
  %414 = getelementptr inbounds ptr, ptr %2, i64 %411
  %415 = getelementptr inbounds ptr, ptr %2, i64 %411
  br label %416

416:                                              ; preds = %469, %387
  %417 = phi ptr [ %413, %387 ], [ %470, %469 ]
  %418 = icmp eq ptr %417, null
  br i1 %418, label %471, label %419

419:                                              ; preds = %416
  %420 = getelementptr inbounds %struct.rtx_def, ptr %417, i64 0, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !243
  %422 = getelementptr inbounds %struct.rtx_def, ptr %417, i64 0, i32 1, i32 0, i32 0, i64 1
  %423 = load ptr, ptr %422, align 8, !tbaa !243
  %424 = getelementptr inbounds %struct.rtx_def, ptr %423, i64 0, i32 1
  %425 = load ptr, ptr %424, align 8, !tbaa !243
  %426 = load i32, ptr %421, align 8
  %427 = lshr i32 %426, 16
  %428 = and i32 %427, 255
  %429 = tail call i32 @canon_true_dependence(ptr noundef nonnull %421, i32 noundef %428, ptr noundef %425, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull @rtx_addr_varies_p) #19
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %466, label %431

431:                                              ; preds = %419
  br i1 %388, label %449, label %432

432:                                              ; preds = %431
  %433 = load ptr, ptr %414, align 8, !tbaa !232
  %434 = load ptr, ptr %433, align 8, !tbaa !523
  %435 = icmp eq ptr %434, null
  br i1 %435, label %445, label %436

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.simple_bitmap_def, ptr %433, i64 0, i32 3, i64 %390
  %438 = load i64, ptr %437, align 8, !tbaa !382
  %439 = and i64 %438, %393
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %441, label %445

441:                                              ; preds = %436
  %442 = getelementptr inbounds i8, ptr %434, i64 %390
  %443 = load i8, ptr %442, align 1, !tbaa !243
  %444 = add i8 %443, 1
  store i8 %444, ptr %442, align 1, !tbaa !243
  br label %445

445:                                              ; preds = %432, %436, %441
  %446 = getelementptr inbounds %struct.simple_bitmap_def, ptr %433, i64 0, i32 3, i64 %398
  %447 = load i64, ptr %446, align 8, !tbaa !382
  %448 = or i64 %447, %396
  store i64 %448, ptr %446, align 8, !tbaa !382
  br label %469

449:                                              ; preds = %431
  %450 = load ptr, ptr %415, align 8, !tbaa !232
  %451 = load ptr, ptr %450, align 8, !tbaa !523
  %452 = icmp eq ptr %451, null
  br i1 %452, label %462, label %453

453:                                              ; preds = %449
  %454 = getelementptr inbounds %struct.simple_bitmap_def, ptr %450, i64 0, i32 3, i64 %400
  %455 = load i64, ptr %454, align 8, !tbaa !382
  %456 = and i64 %455, %403
  %457 = icmp eq i64 %456, 0
  br i1 %457, label %462, label %458

458:                                              ; preds = %453
  %459 = getelementptr inbounds i8, ptr %451, i64 %400
  %460 = load i8, ptr %459, align 1, !tbaa !243
  %461 = add i8 %460, -1
  store i8 %461, ptr %459, align 1, !tbaa !243
  br label %462

462:                                              ; preds = %449, %453, %458
  %463 = getelementptr inbounds %struct.simple_bitmap_def, ptr %450, i64 0, i32 3, i64 %409
  %464 = load i64, ptr %463, align 8, !tbaa !382
  %465 = and i64 %464, %407
  store i64 %465, ptr %463, align 8, !tbaa !382
  br label %469

466:                                              ; preds = %419
  %467 = getelementptr inbounds %struct.rtx_def, ptr %423, i64 0, i32 1, i32 0, i32 0, i64 1
  %468 = load ptr, ptr %467, align 8, !tbaa !243
  br label %469

469:                                              ; preds = %445, %462, %466
  %470 = phi ptr [ %468, %466 ], [ %423, %462 ], [ %423, %445 ]
  br i1 %430, label %416, label %471

471:                                              ; preds = %469, %416
  %472 = lshr i64 %381, 1
  %473 = add i32 %385, 1
  br label %294, !llvm.loop !872

474:                                              ; preds = %380, %123
  %475 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  br label %476

476:                                              ; preds = %474, %503
  %477 = phi ptr [ %505, %503 ], [ %475, %474 ]
  %478 = load ptr, ptr %477, align 8, !tbaa !243
  %479 = icmp eq ptr %478, null
  br i1 %479, label %522, label %6, !prof !873

480:                                              ; preds = %6
  %481 = and i32 %8, 65535
  %482 = zext nneg i32 %481 to i64
  %483 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %482
  %484 = load i8, ptr %483, align 1, !tbaa !243
  %485 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %482
  %486 = load ptr, ptr %485, align 8, !tbaa !232
  %487 = icmp eq i8 %484, 0
  br i1 %487, label %522, label %488, !prof !424

488:                                              ; preds = %480
  %489 = zext i8 %484 to i64
  br label %490

490:                                              ; preds = %488, %520
  %491 = phi i64 [ %489, %488 ], [ %492, %520 ]
  %492 = add nsw i64 %491, -1
  %493 = getelementptr inbounds i8, ptr %486, i64 %492
  %494 = load i8, ptr %493, align 1, !tbaa !243
  switch i8 %494, label %520 [
    i8 101, label %501
    i8 69, label %495
  ], !prof !874

495:                                              ; preds = %490
  %496 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %497 = getelementptr inbounds [1 x %union.rtunion_def], ptr %496, i64 0, i64 %492
  %498 = load ptr, ptr %497, align 8, !tbaa !243
  %499 = load i32, ptr %498, align 8, !tbaa !405
  %500 = icmp sgt i32 %499, 0
  br i1 %500, label %510, label %520

501:                                              ; preds = %490
  %502 = icmp eq i64 %492, 0
  br i1 %502, label %503, label %506, !prof !875

503:                                              ; preds = %501
  %504 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %505 = getelementptr inbounds [1 x %union.rtunion_def], ptr %504, i64 0, i64 %492
  br label %476

506:                                              ; preds = %501
  %507 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %508 = getelementptr inbounds [1 x %union.rtunion_def], ptr %507, i64 0, i64 %492
  %509 = load ptr, ptr %508, align 8, !tbaa !243
  tail call fastcc void @compute_transp(ptr noundef %509, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  br label %520

510:                                              ; preds = %495, %510
  %511 = phi i64 [ %515, %510 ], [ 0, %495 ]
  %512 = phi ptr [ %516, %510 ], [ %498, %495 ]
  %513 = getelementptr inbounds %struct.rtvec_def, ptr %512, i64 0, i32 1, i64 %511
  %514 = load ptr, ptr %513, align 8, !tbaa !232
  tail call fastcc void @compute_transp(ptr noundef %514, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  %515 = add nuw nsw i64 %511, 1
  %516 = load ptr, ptr %497, align 8, !tbaa !243
  %517 = load i32, ptr %516, align 8, !tbaa !405
  %518 = sext i32 %517 to i64
  %519 = icmp slt i64 %515, %518
  br i1 %519, label %510, label %520, !llvm.loop !876

520:                                              ; preds = %510, %495, %490, %506
  %521 = icmp sgt i64 %491, 1
  br i1 %521, label %490, label %522, !prof !877, !llvm.loop !878

522:                                              ; preds = %476, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %480, %520, %65, %116, %4, %22, %72
  ret void
}

declare i32 @canon_true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @oprs_not_set_p(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !879 !PGOFuncName !880 {
  br label %3

3:                                                ; preds = %58, %24, %2
  %4 = phi ptr [ %0, %2 ], [ %26, %24 ], [ %61, %58 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %82, label %6, !prof !881

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %34 [
    i16 36, label %82
    i16 46, label %82
    i16 35, label %82
    i16 30, label %82
    i16 32, label %82
    i16 31, label %82
    i16 33, label %82
    i16 45, label %82
    i16 44, label %82
    i16 20, label %82
    i16 21, label %82
    i16 43, label %9
    i16 37, label %27
  ], !prof !882

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !243
  %13 = load ptr, ptr @df, align 8, !tbaa !232
  %14 = getelementptr inbounds %struct.df, ptr %13, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !628
  %16 = load i32, ptr %10, align 8, !tbaa !243
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !232
  %20 = getelementptr inbounds %struct.df_insn_info, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !631
  %22 = tail call fastcc i32 @load_killed_in_block_p(ptr noundef %12, i32 noundef %21, ptr noundef nonnull %4, i32 noundef 0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %82

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !243
  br label %3

27:                                               ; preds = %6
  %28 = load ptr, ptr @reg_set_bitmap, align 8, !tbaa !232
  %29 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !243
  %31 = tail call i32 @bitmap_bit_p(ptr noundef %28, i32 noundef %30) #19
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  br label %82

34:                                               ; preds = %6
  %35 = and i32 %7, 65535
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !243
  %39 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %36
  %40 = load ptr, ptr %39, align 8, !tbaa !232
  %41 = icmp eq i8 %38, 0
  br i1 %41, label %82, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %44 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %45 = zext i8 %38 to i64
  br label %46

46:                                               ; preds = %42, %80
  %47 = phi i64 [ %45, %42 ], [ %48, %80 ]
  %48 = add nsw i64 %47, -1
  %49 = getelementptr inbounds i8, ptr %40, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !243
  switch i8 %50, label %80 [
    i8 101, label %56
    i8 69, label %51
  ]

51:                                               ; preds = %46
  %52 = getelementptr inbounds [1 x %union.rtunion_def], ptr %43, i64 0, i64 %48
  %53 = load ptr, ptr %52, align 8, !tbaa !243
  %54 = load i32, ptr %53, align 8, !tbaa !405
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %73, label %80

56:                                               ; preds = %46
  %57 = icmp eq i64 %48, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %60 = getelementptr inbounds [1 x %union.rtunion_def], ptr %59, i64 0, i64 %48
  %61 = load ptr, ptr %60, align 8, !tbaa !243
  br label %3

62:                                               ; preds = %56
  %63 = getelementptr inbounds [1 x %union.rtunion_def], ptr %44, i64 0, i64 %48
  %64 = load ptr, ptr %63, align 8, !tbaa !243
  %65 = tail call fastcc i32 @oprs_not_set_p(ptr noundef %64, ptr noundef %1), !range !321
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %82, label %80

67:                                               ; preds = %73
  %68 = add nuw nsw i64 %74, 1
  %69 = load ptr, ptr %52, align 8, !tbaa !243
  %70 = load i32, ptr %69, align 8, !tbaa !405
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %80, !llvm.loop !883

73:                                               ; preds = %51, %67
  %74 = phi i64 [ %68, %67 ], [ 0, %51 ]
  %75 = phi ptr [ %69, %67 ], [ %53, %51 ]
  %76 = getelementptr inbounds %struct.rtvec_def, ptr %75, i64 0, i32 1, i64 %74
  %77 = load ptr, ptr %76, align 8, !tbaa !232
  %78 = tail call fastcc i32 @oprs_not_set_p(ptr noundef %77, ptr noundef %1), !range !321
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %67

80:                                               ; preds = %67, %51, %46, %62
  %81 = icmp sgt i64 %47, 1
  br i1 %81, label %46, label %82, !llvm.loop !884

82:                                               ; preds = %62, %80, %73, %34, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %9, %6, %3, %27
  %83 = phi i32 [ %33, %27 ], [ 1, %3 ], [ 1, %6 ], [ 0, %9 ], [ 1, %6 ], [ 1, %6 ], [ 1, %6 ], [ 1, %6 ], [ 1, %6 ], [ 1, %6 ], [ 1, %6 ], [ 1, %6 ], [ 1, %6 ], [ 1, %6 ], [ 1, %34 ], [ 0, %73 ], [ 1, %80 ], [ 0, %62 ]
  ret i32 %83
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_clobber(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #10 !prof !231 !PGOFuncName !885 {
  br label %3

3:                                                ; preds = %9, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %9 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !243
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %15 [
    i16 39, label %9
    i16 40, label %9
    i16 37, label %10
  ], !prof !413

9:                                                ; preds = %3, %3
  br label %3, !llvm.loop !414

10:                                               ; preds = %3
  %11 = load ptr, ptr @reg_set_bitmap, align 8, !tbaa !232
  %12 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !243
  %14 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %13) #19
  br label %16

15:                                               ; preds = %3
  tail call fastcc void @record_last_mem_set_info(ptr noundef %1)
  br label %16

16:                                               ; preds = %15, %10
  ret void
}

declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #3

declare i32 @computed_jump_p(ptr noundef) local_unnamed_addr #3

declare void @commit_edge_insertions() local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_insn(ptr noundef) local_unnamed_addr #3

declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

declare void @init_alias_analysis() local_unnamed_addr #3

declare void @add_noreturn_fake_exit_edges() local_unnamed_addr #3

declare void @free_edge_list(ptr noundef) local_unnamed_addr #3

declare void @remove_fake_exit_edges() local_unnamed_addr #3

declare void @end_alias_analysis() local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @pre_ldst_expr_hash(ptr nocapture noundef readonly %0) #10 !prof !886 !PGOFuncName !887 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  store i32 0, ptr %2, align 4, !tbaa !247
  %3 = getelementptr inbounds %struct.ls_expr, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !493
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = call i32 @hash_rtx(ptr noundef nonnull %4, i32 noundef %7, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @pre_ldst_expr_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !888 !PGOFuncName !889 {
  %3 = getelementptr inbounds %struct.ls_expr, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !493
  %5 = getelementptr inbounds %struct.ls_expr, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !493
  %7 = tail call i32 @exp_equiv_p(ptr noundef %4, ptr noundef %6, i32 noundef 0, i8 noundef zeroext 1) #19
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc void @invalidate_any_buried_refs(ptr noundef %0) unnamed_addr #10 !prof !890 !PGOFuncName !891 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ls_expr, align 8
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %59, !prof !892

7:                                                ; preds = %1
  %8 = and i32 %4, 134217771
  %9 = icmp ne i32 %8, 43
  %10 = and i32 %4, 16711680
  %11 = icmp eq i32 %10, 65536
  %12 = or i1 %9, %11
  br i1 %12, label %59, label %13, !prof !489

13:                                               ; preds = %7
  %14 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !247
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16, !prof !490

16:                                               ; preds = %13
  %17 = tail call i32 @may_trap_p(ptr noundef nonnull %0) #19
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %16, %13
  %20 = tail call i32 @side_effects_p(ptr noundef nonnull %0) #19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %59, !prof !490

22:                                               ; preds = %19
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !232
  %24 = tail call i32 @reg_mentioned_p(ptr noundef %23, ptr noundef nonnull %0) #19
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %59, !prof !491

26:                                               ; preds = %22
  %27 = load i32, ptr @flag_float_store, align 4, !tbaa !247
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29, !prof !492

29:                                               ; preds = %26
  %30 = load i32, ptr %0, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !243
  switch i8 %35, label %36 [
    i8 8, label %59
    i8 9, label %59
    i8 11, label %59
    i8 17, label %59
  ]

36:                                               ; preds = %29, %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  store i32 0, ptr %2, align 4, !tbaa !247
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #19
  %37 = load i32, ptr %0, align 8
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = call i32 @hash_rtx(ptr noundef nonnull %0, i32 noundef %39, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #19
  %41 = getelementptr inbounds %struct.ls_expr, ptr %3, i64 0, i32 1
  store ptr %0, ptr %41, align 8, !tbaa !493
  %42 = load ptr, ptr @pre_ldst_table, align 8, !tbaa !232
  %43 = call ptr @htab_find_slot_with_hash(ptr noundef %42, ptr noundef nonnull %3, i32 noundef %40, i32 noundef 1) #19
  %44 = load ptr, ptr %43, align 8, !tbaa !232
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %56, !prof !495

46:                                               ; preds = %36
  %47 = call ptr @xmalloc(i64 noundef 72) #19
  %48 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !232
  %49 = getelementptr inbounds %struct.ls_expr, ptr %47, i64 0, i32 5
  store ptr %48, ptr %49, align 8, !tbaa !496
  store ptr null, ptr %47, align 8, !tbaa !497
  %50 = getelementptr inbounds %struct.ls_expr, ptr %47, i64 0, i32 1
  store ptr %0, ptr %50, align 8, !tbaa !493
  %51 = getelementptr inbounds %struct.ls_expr, ptr %47, i64 0, i32 2
  %52 = getelementptr inbounds %struct.ls_expr, ptr %47, i64 0, i32 9
  store ptr null, ptr %52, align 8, !tbaa !498
  %53 = getelementptr inbounds %struct.ls_expr, ptr %47, i64 0, i32 6
  store i32 0, ptr %53, align 8, !tbaa !499
  %54 = getelementptr inbounds %struct.ls_expr, ptr %47, i64 0, i32 7
  store i32 0, ptr %54, align 4, !tbaa !500
  %55 = getelementptr inbounds %struct.ls_expr, ptr %47, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  store i32 %40, ptr %55, align 8, !tbaa !501
  store ptr %47, ptr @pre_ldst_mems, align 8, !tbaa !232
  store ptr %47, ptr %43, align 8, !tbaa !232
  br label %56

56:                                               ; preds = %36, %46
  %57 = phi ptr [ %47, %46 ], [ %44, %36 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  %58 = getelementptr inbounds %struct.ls_expr, ptr %57, i64 0, i32 6
  store i32 1, ptr %58, align 8, !tbaa !499
  br label %59

59:                                               ; preds = %29, %29, %29, %29, %22, %19, %16, %7, %56, %1
  %60 = load i32, ptr %0, align 8
  %61 = and i32 %60, 65535
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !232
  %65 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %62
  %66 = load i8, ptr %65, align 1, !tbaa !243
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %96, label %68, !prof !893

68:                                               ; preds = %59
  %69 = zext i8 %66 to i64
  br label %70

70:                                               ; preds = %68, %94
  %71 = phi i64 [ %69, %68 ], [ %72, %94 ]
  %72 = add nsw i64 %71, -1
  %73 = getelementptr inbounds i8, ptr %64, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !243
  switch i8 %74, label %94 [
    i8 101, label %75
    i8 69, label %79
  ], !prof !894

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %77 = getelementptr inbounds [1 x %union.rtunion_def], ptr %76, i64 0, i64 %72
  %78 = load ptr, ptr %77, align 8, !tbaa !243
  call fastcc void @invalidate_any_buried_refs(ptr noundef %78)
  br label %94

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %81 = getelementptr inbounds [1 x %union.rtunion_def], ptr %80, i64 0, i64 %72
  %82 = load ptr, ptr %81, align 8, !tbaa !243
  %83 = load i32, ptr %82, align 8, !tbaa !405
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %94, !prof !895

85:                                               ; preds = %79
  %86 = zext nneg i32 %83 to i64
  br label %87

87:                                               ; preds = %85, %87
  %88 = phi i64 [ %86, %85 ], [ %89, %87 ]
  %89 = add nsw i64 %88, -1
  %90 = load ptr, ptr %81, align 8, !tbaa !243
  %91 = getelementptr inbounds %struct.rtvec_def, ptr %90, i64 0, i32 1, i64 %89
  %92 = load ptr, ptr %91, align 8, !tbaa !232
  call fastcc void @invalidate_any_buried_refs(ptr noundef %92)
  %93 = icmp sgt i64 %88, 1
  br i1 %93, label %87, label %94, !prof !896, !llvm.loop !897

94:                                               ; preds = %87, %79, %70, %75
  %95 = icmp sgt i64 %71, 1
  br i1 %95, label %70, label %96, !prof !898, !llvm.loop !899

96:                                               ; preds = %94, %59
  ret void
}

declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #3

declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @htab_remove_elt_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare void @sbitmap_difference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_a_or_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_not(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pre_edge_lcm(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx_and_attrs(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gcse_emit_move_after(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 !prof !900 !PGOFuncName !901 {
  %4 = load i32, ptr %2, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %16, !prof !543

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !243
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 23
  br i1 %13, label %16, label %14, !prof !543

14:                                               ; preds = %8
  %15 = tail call ptr @single_set_2(ptr noundef nonnull %2, ptr noundef nonnull %10) #19
  br label %16

16:                                               ; preds = %3, %8, %14
  %17 = phi ptr [ %15, %14 ], [ null, %3 ], [ %10, %8 ]
  %18 = tail call ptr @gen_move_insn(ptr noundef %1, ptr noundef %0) #19
  %19 = tail call ptr @emit_insn_after(ptr noundef %18, ptr noundef nonnull %2) #19
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = add nsw i32 %21, -7
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %24, label %32, !prof !543

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !243
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 23
  br i1 %29, label %32, label %30, !prof !543

30:                                               ; preds = %24
  %31 = tail call ptr @single_set_2(ptr noundef nonnull %19, ptr noundef nonnull %26) #19
  br label %32

32:                                               ; preds = %16, %24, %30
  %33 = phi ptr [ %31, %30 ], [ null, %16 ], [ %26, %24 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35, !prof !544

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !243
  %38 = tail call i32 @rtx_equal_p(ptr noundef %37, ptr noundef %1) #19
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40, !prof !544

40:                                               ; preds = %35
  %41 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %2) #19
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %44 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = select i1 %42, ptr %44, ptr %43, !prof !543
  %46 = load ptr, ptr %45, align 8, !tbaa !243
  %47 = tail call ptr @copy_insn_1(ptr noundef %46) #19
  %48 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %19, i32 noundef 4, ptr noundef %47) #19
  br label %49

49:                                               ; preds = %32, %35, %40
  ret void
}

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_insn_1(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @insert_insn_end_basic_block(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #11 !prof !231 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !243
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !293
  %7 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !545
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !243
  %11 = tail call fastcc ptr @process_insert_insn(ptr noundef %0)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i32, ptr %11, align 8
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -7
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3425, ptr noundef nonnull @.str.17) #19
  br label %19

19:                                               ; preds = %13, %18
  br label %20

20:                                               ; preds = %19, %20
  %21 = phi ptr [ %23, %20 ], [ %11, %19 ]
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !243
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %20, !llvm.loop !902

25:                                               ; preds = %20
  %26 = load i32, ptr %6, align 8
  %27 = trunc i32 %26 to i16
  switch i16 %27, label %59 [
    i16 9, label %48
    i16 8, label %28
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !336
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %30, align 8, !tbaa !338
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  br i1 %31, label %39, label %36

36:                                               ; preds = %35
  %37 = load i32, ptr %30, align 8, !tbaa !338
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.17) #19
  br label %40

40:                                               ; preds = %36, %39
  %41 = load ptr, ptr %29, align 8, !tbaa !336
  %42 = getelementptr inbounds %struct.VEC_edge_base, ptr %41, i64 0, i32 2, i64 0
  %43 = load ptr, ptr %42, align 8, !tbaa !232
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !350
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %28, %40, %32, %25
  %49 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !243
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65534
  %53 = icmp eq i32 %52, 20
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = tail call ptr @prev_real_insn(ptr noundef nonnull %6) #19
  br label %56

56:                                               ; preds = %48, %54
  %57 = phi ptr [ %55, %54 ], [ %6, %48 ]
  %58 = tail call ptr @emit_insn_before_noloc(ptr noundef %11, ptr noundef %57, ptr noundef %1) #19
  br label %102

59:                                               ; preds = %25, %40
  %60 = load i32, ptr %6, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 10
  br i1 %62, label %63, label %100

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !336
  %66 = icmp eq ptr %65, null
  br i1 %66, label %83, label %67

67:                                               ; preds = %63
  %68 = load i32, ptr %65, align 8, !tbaa !338
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  br i1 %66, label %74, label %71

71:                                               ; preds = %70
  %72 = load i32, ptr %65, align 8, !tbaa !338
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %75, label %74

74:                                               ; preds = %70, %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.17) #19
  br label %75

75:                                               ; preds = %71, %74
  %76 = load ptr, ptr %64, align 8, !tbaa !336
  %77 = getelementptr inbounds %struct.VEC_edge_base, ptr %76, i64 0, i32 2, i64 0
  %78 = load ptr, ptr %77, align 8, !tbaa !232
  %79 = getelementptr inbounds %struct.edge_def, ptr %78, i64 0, i32 7
  %80 = load i32, ptr %79, align 8, !tbaa !350
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %63, %67, %75
  %84 = load ptr, ptr %3, align 8, !tbaa !243
  %85 = load ptr, ptr %84, align 8, !tbaa !643
  %86 = tail call ptr @find_first_parameter_load(ptr noundef nonnull %6, ptr noundef %85) #19
  br label %87

87:                                               ; preds = %95, %83
  %88 = phi ptr [ %86, %83 ], [ %97, %95 ]
  %89 = load i32, ptr %88, align 8
  %90 = trunc i32 %89 to i16
  switch i16 %90, label %98 [
    i16 12, label %95
    i16 13, label %91
  ]

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 1
  %93 = load i32, ptr %92, align 8, !tbaa !243
  %94 = icmp eq i32 %93, 10
  br i1 %94, label %95, label %98

95:                                               ; preds = %87, %91
  %96 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 0, i64 2
  %97 = load ptr, ptr %96, align 8, !tbaa !243
  br label %87, !llvm.loop !903

98:                                               ; preds = %91, %87
  %99 = tail call ptr @emit_insn_before_noloc(ptr noundef %11, ptr noundef nonnull %88, ptr noundef %1) #19
  br label %102

100:                                              ; preds = %75, %59
  %101 = tail call ptr @emit_insn_after_noloc(ptr noundef %11, ptr noundef nonnull %6, ptr noundef %1) #19
  br label %102

102:                                              ; preds = %98, %100, %56
  %103 = phi ptr [ %58, %56 ], [ %99, %98 ], [ %101, %100 ]
  br label %104

104:                                              ; preds = %115, %102
  %105 = phi ptr [ %11, %102 ], [ %117, %115 ]
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = add nsw i32 %107, -7
  %109 = icmp ult i32 %108, 4
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !243
  tail call fastcc void @add_label_notes(ptr noundef %112, ptr noundef %103)
  br label %113

113:                                              ; preds = %104, %110
  %114 = icmp eq ptr %105, %21
  br i1 %114, label %118, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 2
  %117 = load ptr, ptr %116, align 8, !tbaa !243
  br label %104, !llvm.loop !904

118:                                              ; preds = %113
  %119 = load i32, ptr @gcse_create_count, align 4, !tbaa !247
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr @gcse_create_count, align 4, !tbaa !247
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %122 = icmp eq ptr %121, null
  br i1 %122, label %133, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %125 = load i32, ptr %124, align 8, !tbaa !359
  %126 = getelementptr inbounds %struct.rtx_def, ptr %103, i64 0, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !243
  %128 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %121, ptr noundef nonnull @.str.42, i32 noundef %125, i32 noundef %127)
  %129 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %130 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %131 = load i32, ptr %130, align 8, !tbaa !381
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef nonnull @.str.43, i32 noundef %131, i32 noundef %10)
  br label %133

133:                                              ; preds = %123, %118
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @process_insert_insn(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !905 !PGOFuncName !906 {
  %2 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !545
  %4 = load ptr, ptr %0, align 8, !tbaa !375
  %5 = tail call ptr @copy_rtx(ptr noundef %4) #19
  tail call void @start_sequence() #19
  %6 = load i32, ptr %3, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = tail call i32 @general_operand(ptr noundef %5, i32 noundef %8) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !460

11:                                               ; preds = %1
  %12 = tail call ptr @emit_move_insn(ptr noundef nonnull %3, ptr noundef %5) #19
  br label %19

13:                                               ; preds = %1
  %14 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %3, ptr noundef %5) #19
  %15 = tail call ptr @emit_insn(ptr noundef %14) #19
  %16 = tail call i32 @insn_invalid_p(ptr noundef %15) #19
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3397, ptr noundef nonnull @.str.17) #19
  br label %19

19:                                               ; preds = %13, %18, %11
  %20 = tail call ptr @get_insns() #19
  tail call void @end_sequence() #19
  ret ptr %20
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @update_ld_motion_stores(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !900 !PGOFuncName !907 {
  %2 = alloca %struct.ls_expr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !375
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #19
  %4 = load ptr, ptr @pre_ldst_table, align 8, !tbaa !232
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6, !prof !544

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ls_expr, ptr %2, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !493
  %8 = call ptr @htab_find_slot(ptr noundef nonnull %4, ptr noundef nonnull %2, i32 noundef 0) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !908

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !232
  %12 = getelementptr inbounds %struct.ls_expr, ptr %11, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !499
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr %11, ptr null, !prof !394
  br label %16

16:                                               ; preds = %1, %6, %10
  %17 = phi ptr [ null, %1 ], [ null, %6 ], [ %15, %10 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %60, label %19, !prof !908

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ls_expr, ptr %17, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !243
  %22 = icmp eq ptr %21, null
  br i1 %22, label %60, label %23, !prof !909

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 5
  br label %25

25:                                               ; preds = %23, %56
  %26 = phi ptr [ %21, %23 ], [ %58, %56 ]
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !243
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !243
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !243
  %33 = load ptr, ptr %24, align 8, !tbaa !545
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %56, label %35

35:                                               ; preds = %25
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = call i64 @fwrite(ptr nonnull @.str.44, i64 38, i64 1, ptr nonnull %36)
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %41 = load ptr, ptr %24, align 8, !tbaa !545
  call void @print_rtl(ptr noundef %40, ptr noundef %41) #19
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %43 = call i64 @fwrite(ptr nonnull @.str.45, i64 3, i64 1, ptr %42)
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !232
  call void @print_inline_rtx(ptr noundef %44, ptr noundef %28, i32 noundef 8) #19
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !232
  %46 = call i32 @fputc(i32 10, ptr %45)
  br label %47

47:                                               ; preds = %38, %35
  %48 = load ptr, ptr %31, align 8, !tbaa !243
  %49 = call ptr @copy_rtx(ptr noundef %48) #19
  %50 = call ptr @gen_move_insn(ptr noundef %33, ptr noundef %49) #19
  %51 = call ptr @emit_insn_before(ptr noundef %50, ptr noundef %28) #19
  store ptr %33, ptr %31, align 8, !tbaa !243
  %52 = call zeroext i8 @df_insn_rescan(ptr noundef %28) #19
  %53 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 1, i32 1
  store i32 -1, ptr %53, align 8, !tbaa !243
  %54 = load i32, ptr @gcse_create_count, align 4, !tbaa !247
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr @gcse_create_count, align 4, !tbaa !247
  br label %56

56:                                               ; preds = %25, %47
  %57 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !243
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %25, !prof !909, !llvm.loop !910

60:                                               ; preds = %56, %19, %16
  ret void
}

declare ptr @prev_real_insn(ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_before_noloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_first_parameter_load(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn_after_noloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_label_notes(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #11 !prof !231 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 134283263
  %5 = icmp eq i32 %4, 44
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 4030, ptr noundef nonnull @.str.17) #19
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !243
  tail call void @add_reg_note(ptr noundef nonnull %1, i32 noundef 10, ptr noundef %13) #19
  %14 = load ptr, ptr %12, align 8, !tbaa !243
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 12
  br i1 %17, label %18, label %58

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !243
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !243
  br label %58

22:                                               ; preds = %2
  %23 = and i32 %3, 65535
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !243
  %27 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %24
  %28 = load ptr, ptr %27, align 8, !tbaa !232
  %29 = icmp eq i8 %26, 0
  br i1 %29, label %58, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %32 = zext i8 %26 to i64
  br label %33

33:                                               ; preds = %30, %56
  %34 = phi i64 [ %32, %30 ], [ %35, %56 ]
  %35 = add nsw i64 %34, -1
  %36 = getelementptr inbounds i8, ptr %28, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !243
  switch i8 %37, label %56 [
    i8 101, label %38
    i8 69, label %42
  ]

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %40 = getelementptr inbounds [1 x %union.rtunion_def], ptr %39, i64 0, i64 %35
  %41 = load ptr, ptr %40, align 8, !tbaa !243
  tail call fastcc void @add_label_notes(ptr noundef %41, ptr noundef %1)
  br label %56

42:                                               ; preds = %33
  %43 = getelementptr inbounds [1 x %union.rtunion_def], ptr %31, i64 0, i64 %35
  %44 = load ptr, ptr %43, align 8, !tbaa !243
  %45 = load i32, ptr %44, align 8, !tbaa !405
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = zext nneg i32 %45 to i64
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi i64 [ %48, %47 ], [ %51, %49 ]
  %51 = add nsw i64 %50, -1
  %52 = load ptr, ptr %43, align 8, !tbaa !243
  %53 = getelementptr inbounds %struct.rtvec_def, ptr %52, i64 0, i32 1, i64 %51
  %54 = load ptr, ptr %53, align 8, !tbaa !232
  tail call fastcc void @add_label_notes(ptr noundef %54, ptr noundef %1)
  %55 = icmp sgt i64 %50, 1
  br i1 %55, label %49, label %56, !llvm.loop !911

56:                                               ; preds = %49, %42, %33, %38
  %57 = icmp sgt i64 %34, 1
  br i1 %57, label %33, label %58, !llvm.loop !912

58:                                               ; preds = %56, %22, %11, %18
  ret void
}

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn(ptr noundef) local_unnamed_addr #3

declare i32 @insn_invalid_p(ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @pre_expr_reaches_here_p_work(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #10 !prof !913 !PGOFuncName !914 {
  %5 = icmp eq ptr %2, null
  %6 = getelementptr inbounds %struct.expr, ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %75, %4
  %8 = phi i32 [ 0, %4 ], [ %76, %75 ]
  br i1 %5, label %9, label %10, !prof !915

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 687, ptr noundef nonnull @.str.17) #19
  br label %10

10:                                               ; preds = %9, %7
  %11 = load ptr, ptr %2, align 8, !tbaa !232
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !915

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 8, !tbaa !338
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %14, %13 ], [ 0, %10 ]
  %17 = icmp eq i32 %16, %8
  br i1 %17, label %22, label %18, !prof !916

18:                                               ; preds = %15
  %19 = zext i32 %8 to i64
  %20 = getelementptr inbounds %struct.VEC_edge_base, ptr %11, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !232
  br label %22

22:                                               ; preds = %15, %18
  %23 = phi ptr [ %21, %18 ], [ null, %15 ]
  br i1 %17, label %77, label %24, !prof !916

24:                                               ; preds = %22
  %25 = load ptr, ptr %23, align 8, !tbaa !439
  %26 = load ptr, ptr @cfun, align 8, !tbaa !232
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !280
  %29 = load ptr, ptr %28, align 8, !tbaa !288
  %30 = icmp eq ptr %25, %29
  br i1 %30, label %66, label %31, !prof !917

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !359
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %3, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !243
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %66, !prof !918

38:                                               ; preds = %31
  %39 = load ptr, ptr @comp, align 8, !tbaa !232
  %40 = getelementptr inbounds ptr, ptr %39, i64 %34
  %41 = load ptr, ptr %40, align 8, !tbaa !232
  %42 = load i32, ptr %6, align 8, !tbaa !381
  %43 = lshr i32 %42, 6
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds %struct.simple_bitmap_def, ptr %41, i64 0, i32 3, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !382
  %47 = and i32 %42, 63
  %48 = zext nneg i32 %47 to i64
  %49 = shl nuw i64 1, %48
  %50 = and i64 %49, %46
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %55, label %52, !prof !919

52:                                               ; preds = %38
  %53 = icmp eq ptr %25, %0
  br i1 %53, label %77, label %54, !prof !920

54:                                               ; preds = %52
  store i8 1, ptr %35, align 1, !tbaa !243
  br label %66

55:                                               ; preds = %38
  %56 = load ptr, ptr @transp, align 8, !tbaa !232
  %57 = getelementptr inbounds ptr, ptr %56, i64 %34
  %58 = load ptr, ptr %57, align 8, !tbaa !232
  %59 = getelementptr inbounds %struct.simple_bitmap_def, ptr %58, i64 0, i32 3, i64 %44
  %60 = load i64, ptr %59, align 8, !tbaa !382
  %61 = and i64 %60, %49
  %62 = icmp eq i64 %61, 0
  store i8 1, ptr %35, align 1, !tbaa !243
  br i1 %62, label %66, label %63, !prof !921

63:                                               ; preds = %55
  %64 = tail call fastcc i32 @pre_expr_reaches_here_p_work(ptr noundef %0, ptr noundef %1, ptr noundef %25, ptr noundef %3)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %77, !prof !922

66:                                               ; preds = %55, %31, %24, %63, %54
  %67 = load ptr, ptr %2, align 8, !tbaa !232
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69, !prof !923

69:                                               ; preds = %66
  %70 = load i32, ptr %67, align 8, !tbaa !338
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi i32 [ %70, %69 ], [ 0, %66 ]
  %73 = icmp ult i32 %8, %72
  br i1 %73, label %75, label %74, !prof !924

74:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 738, ptr noundef nonnull @.str.17) #19
  br label %75

75:                                               ; preds = %71, %74
  %76 = add i32 %8, 1
  br label %7, !llvm.loop !925

77:                                               ; preds = %22, %52, %63
  %78 = phi i32 [ 1, %63 ], [ 1, %52 ], [ 0, %22 ]
  ret i32 %78
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #3

declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_intersection_of_succs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @sbitmap_a_or_b_and_c_cg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_dominated_by(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @hoist_expr_reaches_here_p(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #11 !prof !231 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = load ptr, ptr @cfun, align 8, !tbaa !232
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !280
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !287
  %12 = sext i32 %11 to i64
  %13 = tail call ptr @xcalloc(i64 noundef %12, i64 noundef 1) #19
  br label %14

14:                                               ; preds = %6, %4
  %15 = phi ptr [ %13, %6 ], [ %3, %4 ]
  %16 = icmp eq ptr %2, null
  %17 = lshr i32 %1, 6
  %18 = zext nneg i32 %17 to i64
  %19 = and i32 %1, 63
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw i64 1, %20
  br label %22

22:                                               ; preds = %83, %14
  %23 = phi i32 [ 0, %14 ], [ %84, %83 ]
  br i1 %16, label %24, label %25

24:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 687, ptr noundef nonnull @.str.17) #19
  br label %25

25:                                               ; preds = %24, %22
  %26 = load ptr, ptr %2, align 8, !tbaa !232
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %26, align 8, !tbaa !338
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %29, %28 ], [ 0, %25 ]
  %32 = icmp eq i32 %31, %23
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = zext i32 %23 to i64
  %35 = getelementptr inbounds %struct.VEC_edge_base, ptr %26, i64 0, i32 2, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !232
  br label %37

37:                                               ; preds = %30, %33
  %38 = phi ptr [ %36, %33 ], [ null, %30 ]
  br i1 %32, label %85, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr %38, align 8, !tbaa !439
  %41 = load ptr, ptr @cfun, align 8, !tbaa !232
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !280
  %44 = load ptr, ptr %43, align 8, !tbaa !288
  %45 = icmp eq ptr %40, %44
  br i1 %45, label %85, label %46

46:                                               ; preds = %39
  %47 = icmp eq ptr %40, %0
  br i1 %47, label %74, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !359
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %15, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !243
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %48
  %56 = load ptr, ptr @comp, align 8, !tbaa !232
  %57 = getelementptr inbounds ptr, ptr %56, i64 %51
  %58 = load ptr, ptr %57, align 8, !tbaa !232
  %59 = getelementptr inbounds %struct.simple_bitmap_def, ptr %58, i64 0, i32 3, i64 %18
  %60 = load i64, ptr %59, align 8, !tbaa !382
  %61 = and i64 %60, %21
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %55
  %64 = load ptr, ptr @transp, align 8, !tbaa !232
  %65 = getelementptr inbounds ptr, ptr %64, i64 %51
  %66 = load ptr, ptr %65, align 8, !tbaa !232
  %67 = getelementptr inbounds %struct.simple_bitmap_def, ptr %66, i64 0, i32 3, i64 %18
  %68 = load i64, ptr %67, align 8, !tbaa !382
  %69 = and i64 %68, %21
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %63
  store i8 1, ptr %52, align 1, !tbaa !243
  %72 = tail call fastcc i32 @hoist_expr_reaches_here_p(ptr noundef %0, i32 noundef %1, ptr noundef %40, ptr noundef %15), !range !321
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %46, %48, %71
  %75 = load ptr, ptr %2, align 8, !tbaa !232
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %75, align 8, !tbaa !338
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi i32 [ %78, %77 ], [ 0, %74 ]
  %81 = icmp ult i32 %23, %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 738, ptr noundef nonnull @.str.17) #19
  br label %83

83:                                               ; preds = %79, %82
  %84 = add i32 %23, 1
  br label %22, !llvm.loop !926

85:                                               ; preds = %39, %55, %63, %71, %37
  br i1 %5, label %86, label %87

86:                                               ; preds = %85
  tail call void @free(ptr noundef %15)
  br label %87

87:                                               ; preds = %86, %85
  %88 = icmp eq ptr %38, null
  %89 = zext i1 %88 to i32
  ret i32 %89
}

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

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
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nofree nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!230}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!35 = !{ptr @can_copy_p, ptr @start_sequence, i64 1}
!36 = !{ptr @can_copy_p, ptr @end_sequence, i64 1}
!37 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @general_operand, i64 4307}
!38 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @gen_rtx_REG, i64 1}
!39 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @gen_rtx_fmt_ee_stat, i64 1}
!40 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @make_insn_raw, i64 1}
!41 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @recog, i64 2760}
!42 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @added_clobbers_hard_reg_p, i64 1185}
!43 = !{ptr @fis_get_condition, ptr @get_condition, i64 148179}
!44 = !{ptr @gate_rtl_cprop, ptr @dbg_cnt, i64 114}
!45 = !{ptr @execute_rtl_cprop, ptr @delete_unreachable_blocks, i64 116}
!46 = !{ptr @execute_rtl_cprop, ptr @df_set_flags, i64 114}
!47 = !{ptr @execute_rtl_cprop, ptr @df_analyze, i64 116}
!48 = !{ptr @execute_rtl_cprop, ptr @is_too_expensive, i64 114}
!49 = !{ptr @execute_rtl_cprop, ptr @_obstack_begin, i64 93}
!50 = !{ptr @execute_rtl_cprop, ptr @bitmap_obstack_alloc_stat, i64 279}
!51 = !{ptr @execute_rtl_cprop, ptr @xcalloc, i64 279}
!52 = !{ptr @execute_rtl_cprop, ptr @cselib_init, i64 93}
!53 = !{ptr @execute_rtl_cprop, ptr @find_reg_equal_equiv_note, i64 136031}
!54 = !{ptr @execute_rtl_cprop, ptr @note_uses, i64 136038}
!55 = !{ptr @execute_rtl_cprop, ptr @find_used_regs, i64 2905}
!56 = !{ptr @execute_rtl_cprop, ptr @asm_noperands, i64 29841}
!57 = !{ptr @execute_rtl_cprop, ptr @cselib_lookup, i64 60252}
!58 = !{ptr @execute_rtl_cprop, ptr @gcse_constant_p, i64 49551}
!59 = !{ptr @execute_rtl_cprop, ptr @find_reg_note, i64 14355}
!60 = !{ptr @execute_rtl_cprop, ptr @constprop_register, i64 1186}
!61 = !{ptr @execute_rtl_cprop, ptr @try_replace_reg, i64 23}
!62 = !{ptr @execute_rtl_cprop, ptr @cselib_process_insn, i64 92844}
!63 = !{ptr @execute_rtl_cprop, ptr @cselib_clear_table, i64 16122}
!64 = !{ptr @execute_rtl_cprop, ptr @cselib_finish, i64 92}
!65 = !{ptr @execute_rtl_cprop, ptr @get_condition, i64 8867}
!66 = !{ptr @execute_rtl_cprop, ptr @gen_rtx_fmt_ee_stat, i64 3573}
!67 = !{ptr @execute_rtl_cprop, ptr @get_max_insn_count, i64 93}
!68 = !{ptr @execute_rtl_cprop, ptr @xmalloc, i64 93}
!69 = !{ptr @execute_rtl_cprop, ptr @compute_hash_table, i64 93}
!70 = !{ptr @execute_rtl_cprop, ptr @free, i64 744}
!71 = !{ptr @execute_rtl_cprop, ptr @sbitmap_vector_alloc, i64 372}
!72 = !{ptr @execute_rtl_cprop, ptr @compute_local_properties, i64 93}
!73 = !{ptr @execute_rtl_cprop, ptr @compute_available, i64 93}
!74 = !{ptr @execute_rtl_cprop, ptr @bitmap_clear, i64 16029}
!75 = !{ptr @execute_rtl_cprop, ptr @clear_modify_mem_tables, i64 16122}
!76 = !{ptr @execute_rtl_cprop, ptr @oprs_not_set_p, i64 60040}
!77 = !{ptr @execute_rtl_cprop, ptr @bitmap_set_bit, i64 50124}
!78 = !{ptr @execute_rtl_cprop, ptr @record_last_mem_set_info, i64 22450}
!79 = !{ptr @execute_rtl_cprop, ptr @mark_dfs_back_edges, i64 93}
!80 = !{ptr @execute_rtl_cprop, ptr @any_condjump_p, i64 193}
!81 = !{ptr @execute_rtl_cprop, ptr @onlyjump_p, i64 193}
!82 = !{ptr @execute_rtl_cprop, ptr @reg_set_p, i64 2}
!83 = !{ptr @execute_rtl_cprop, ptr @pc_set, i64 4}
!84 = !{ptr @execute_rtl_cprop, ptr @simplify_replace_rtx, i64 8}
!85 = !{ptr @execute_rtl_cprop, ptr @find_edge, i64 6}
!86 = !{ptr @execute_rtl_cprop, ptr @redirect_edge_and_branch_force, i64 4}
!87 = !{ptr @execute_rtl_cprop, ptr @copy_insn, i64 4}
!88 = !{ptr @execute_rtl_cprop, ptr @insert_insn_on_edge, i64 4}
!89 = !{ptr @execute_rtl_cprop, ptr @commit_edge_insertions, i64 1}
!90 = !{ptr @execute_rtl_cprop, ptr @bitmap_obstack_free, i64 186}
!91 = !{ptr @execute_rtl_cprop, ptr @obstack_free, i64 93}
!92 = !{ptr @gate_rtl_pre, ptr @optimize_function_for_speed_p, i64 38}
!93 = !{ptr @gate_rtl_pre, ptr @dbg_cnt, i64 38}
!94 = !{ptr @execute_rtl_pre, ptr @delete_unreachable_blocks, i64 38}
!95 = !{ptr @execute_rtl_pre, ptr @df_analyze, i64 38}
!96 = !{ptr @execute_rtl_pre, ptr @is_too_expensive, i64 38}
!97 = !{ptr @execute_rtl_pre, ptr @init_alias_analysis, i64 31}
!98 = !{ptr @execute_rtl_pre, ptr @_obstack_begin, i64 31}
!99 = !{ptr @execute_rtl_pre, ptr @bitmap_obstack_alloc_stat, i64 93}
!100 = !{ptr @execute_rtl_pre, ptr @xcalloc, i64 235}
!101 = !{ptr @execute_rtl_pre, ptr @get_max_insn_count, i64 31}
!102 = !{ptr @execute_rtl_pre, ptr @xmalloc, i64 402}
!103 = !{ptr @execute_rtl_pre, ptr @add_noreturn_fake_exit_edges, i64 31}
!104 = !{ptr @execute_rtl_pre, ptr @htab_create, i64 31}
!105 = !{ptr @execute_rtl_pre, ptr @side_effects_p, i64 5801}
!106 = !{ptr @execute_rtl_pre, ptr @reg_mentioned_p, i64 5801}
!107 = !{ptr @execute_rtl_pre, ptr @hash_rtx, i64 3200}
!108 = !{ptr @execute_rtl_pre, ptr @htab_find_slot_with_hash, i64 3200}
!109 = !{ptr @execute_rtl_pre, ptr @alloc_INSN_LIST, i64 3200}
!110 = !{ptr @execute_rtl_pre, ptr @invalidate_any_buried_refs, i64 21804}
!111 = !{ptr @execute_rtl_pre, ptr @can_assign_to_reg_without_clobbers_p, i64 2378}
!112 = !{ptr @execute_rtl_pre, ptr @compute_hash_table, i64 31}
!113 = !{ptr @execute_rtl_pre, ptr @exp_equiv_p, i64 204}
!114 = !{ptr @execute_rtl_pre, ptr @htab_remove_elt_with_hash, i64 450}
!115 = !{ptr @execute_rtl_pre, ptr @free_INSN_LIST_list, i64 1220}
!116 = !{ptr @execute_rtl_pre, ptr @free, i64 1155}
!117 = !{ptr @execute_rtl_pre, ptr @sbitmap_vector_alloc, i64 155}
!118 = !{ptr @execute_rtl_pre, ptr @compute_local_properties, i64 31}
!119 = !{ptr @execute_rtl_pre, ptr @sbitmap_vector_zero, i64 62}
!120 = !{ptr @execute_rtl_pre, ptr @sbitmap_alloc, i64 31}
!121 = !{ptr @execute_rtl_pre, ptr @sbitmap_zero, i64 31}
!122 = !{ptr @execute_rtl_pre, ptr @may_trap_p, i64 1027}
!123 = !{ptr @execute_rtl_pre, ptr @sbitmap_a_or_b, i64 5979}
!124 = !{ptr @execute_rtl_pre, ptr @sbitmap_not, i64 5979}
!125 = !{ptr @execute_rtl_pre, ptr @pre_edge_lcm, i64 31}
!126 = !{ptr @execute_rtl_pre, ptr @dbg_cnt, i64 5}
!127 = !{ptr @execute_rtl_pre, ptr @gen_reg_rtx_and_attrs, i64 3}
!128 = !{ptr @execute_rtl_pre, ptr @gcse_emit_move_after, i64 5}
!129 = !{ptr @execute_rtl_pre, ptr @delete_insn, i64 5}
!130 = !{ptr @execute_rtl_pre, ptr @process_insert_insn, i64 2}
!131 = !{ptr @execute_rtl_pre, ptr @insert_insn_on_edge, i64 2}
!132 = !{ptr @execute_rtl_pre, ptr @update_ld_motion_stores, i64 5}
!133 = !{ptr @execute_rtl_pre, ptr @pre_expr_reaches_here_p_work, i64 142}
!134 = !{ptr @execute_rtl_pre, ptr @validate_change, i64 18}
!135 = !{ptr @execute_rtl_pre, ptr @gen_move_insn, i64 18}
!136 = !{ptr @execute_rtl_pre, ptr @emit_insn_after, i64 18}
!137 = !{ptr @execute_rtl_pre, ptr @commit_edge_insertions, i64 1}
!138 = !{ptr @execute_rtl_pre, ptr @free_edge_list, i64 31}
!139 = !{ptr @execute_rtl_pre, ptr @htab_delete, i64 31}
!140 = !{ptr @execute_rtl_pre, ptr @remove_fake_exit_edges, i64 31}
!141 = !{ptr @execute_rtl_pre, ptr @clear_modify_mem_tables, i64 31}
!142 = !{ptr @execute_rtl_pre, ptr @bitmap_obstack_free, i64 62}
!143 = !{ptr @execute_rtl_pre, ptr @obstack_free, i64 31}
!144 = !{ptr @execute_rtl_pre, ptr @end_alias_analysis, i64 31}
!145 = !{ptr @gate_rtl_hoist, ptr @optimize_function_for_size_p, i64 38}
!146 = !{ptr @is_too_expensive, ptr @max_reg_num, i64 180}
!147 = !{ptr @is_too_expensive, ptr @warning, i64 28}
!148 = !{ptr @compute_hash_table, ptr @clear_modify_mem_tables, i64 124}
!149 = !{ptr @compute_hash_table, ptr @max_reg_num, i64 48454}
!150 = !{ptr @compute_hash_table, ptr @xmalloc, i64 124}
!151 = !{ptr @compute_hash_table, ptr @record_last_mem_set_info, i64 12727}
!152 = !{ptr @compute_hash_table, ptr @note_stores, i64 90818}
!153 = !{ptr @compute_hash_table, ptr @hash_scan_set, i64 90835}
!154 = !{ptr @compute_hash_table, ptr @free, i64 124}
!155 = !{ptr @local_cprop_find_used_regs, ptr @find_used_regs, i64 81444}
!156 = !{ptr @find_used_regs, ptr @find_used_regs, i64 145463}
!157 = !{ptr @constprop_register, ptr @single_set_2, i64 1191}
!158 = !{ptr @constprop_register, ptr @any_condjump_p, i64 2382}
!159 = !{ptr @constprop_register, ptr @try_replace_reg, i64 1191}
!160 = !{ptr @try_replace_reg, ptr @find_reg_equal_equiv_note, i64 1214}
!161 = !{ptr @try_replace_reg, ptr @single_set_2, i64 1201}
!162 = !{ptr @try_replace_reg, ptr @copy_rtx, i64 1214}
!163 = !{ptr @try_replace_reg, ptr @validate_replace_src_group, i64 1214}
!164 = !{ptr @try_replace_reg, ptr @num_changes_pending, i64 1214}
!165 = !{ptr @try_replace_reg, ptr @apply_change_group, i64 1212}
!166 = !{ptr @try_replace_reg, ptr @simplify_replace_rtx, i64 2392}
!167 = !{ptr @try_replace_reg, ptr @set_unique_reg_note, i64 1201}
!168 = !{ptr @try_replace_reg, ptr @reg_mentioned_p, i64 1193}
!169 = !{ptr @try_replace_reg, ptr @rtx_equal_p, i64 1191}
!170 = !{ptr @try_replace_reg, ptr @validate_change, i64 1191}
!171 = !{ptr @clear_modify_mem_tables, ptr @free_INSN_LIST_list, i64 16366}
!172 = !{ptr @clear_modify_mem_tables, ptr @free_EXPR_LIST_node, i64 60550}
!173 = !{ptr @clear_modify_mem_tables, ptr @free_INSN_LIST_node, i64 22344}
!174 = !{ptr @clear_modify_mem_tables, ptr @bitmap_clear, i64 32554}
!175 = !{ptr @record_last_set_info, ptr @push_operand, i64 17300}
!176 = !{ptr @record_last_set_info, ptr @record_last_mem_set_info, i64 17300}
!177 = !{ptr @hash_scan_set, ptr @find_reg_equal_equiv_note, i64 52568}
!178 = !{ptr @hash_scan_set, ptr @gcse_constant_p, i64 31085}
!179 = !{ptr @hash_scan_set, ptr @can_assign_to_reg_without_clobbers_p, i64 6901}
!180 = !{ptr @hash_scan_set, ptr @can_throw_internal, i64 8733}
!181 = !{ptr @hash_scan_set, ptr @set_noop_p, i64 2602}
!182 = !{ptr @hash_scan_set, ptr @oprs_unchanged_p, i64 11136}
!183 = !{ptr @hash_scan_set, ptr @multiple_sets, i64 1062}
!184 = !{ptr @hash_scan_set, ptr @insert_expr_in_table, i64 2572}
!185 = !{ptr @hash_scan_set, ptr @next_nonnote_insn, i64 5992}
!186 = !{ptr @hash_scan_set, ptr @exp_equiv_p, i64 62119}
!187 = !{ptr @hash_scan_set, ptr @_obstack_newchunk, i64 109}
!188 = !{ptr @hash_scan_set, ptr @copy_rtx, i64 5435}
!189 = !{ptr @record_last_mem_set_info, ptr @alloc_INSN_LIST, i64 74963}
!190 = !{ptr @record_last_mem_set_info, ptr @bitmap_set_bit, i64 74963}
!191 = !{ptr @record_last_mem_set_info, ptr @note_stores, i64 30275}
!192 = !{ptr @canon_list_insert, ptr @get_addr, i64 30275}
!193 = !{ptr @canon_list_insert, ptr @canon_rtx, i64 30275}
!194 = !{ptr @canon_list_insert, ptr @alloc_EXPR_LIST, i64 60550}
!195 = !{ptr @insert_expr_in_table, ptr @hash_rtx, i64 2572}
!196 = !{ptr @insert_expr_in_table, ptr @exp_equiv_p, i64 2738}
!197 = !{ptr @insert_expr_in_table, ptr @_obstack_newchunk, i64 18}
!198 = !{ptr @oprs_unchanged_p, ptr @load_killed_in_block_p, i64 4351}
!199 = !{ptr @oprs_unchanged_p, ptr @oprs_unchanged_p, i64 12616}
!200 = !{ptr @load_killed_in_block_p, ptr @note_stores, i64 977}
!201 = !{ptr @mems_conflict_for_gcse_p, ptr @exp_equiv_p, i64 822}
!202 = !{ptr @mems_conflict_for_gcse_p, ptr @true_dependence, i64 822}
!203 = !{ptr @compute_local_properties, ptr @sbitmap_vector_zero, i64 248}
!204 = !{ptr @compute_local_properties, ptr @sbitmap_vector_ones, i64 31}
!205 = !{ptr @compute_local_properties, ptr @compute_transp, i64 6714}
!206 = !{ptr @compute_transp, ptr @compute_transp, i64 6657}
!207 = !{ptr @oprs_not_set_p, ptr @bitmap_bit_p, i64 60155}
!208 = !{ptr @pre_ldst_expr_hash, ptr @hash_rtx, i64 523}
!209 = !{ptr @pre_ldst_expr_eq, ptr @exp_equiv_p, i64 7876}
!210 = !{ptr @invalidate_any_buried_refs, ptr @side_effects_p, i64 3707}
!211 = !{ptr @invalidate_any_buried_refs, ptr @reg_mentioned_p, i64 3707}
!212 = !{ptr @invalidate_any_buried_refs, ptr @hash_rtx, i64 2044}
!213 = !{ptr @invalidate_any_buried_refs, ptr @htab_find_slot_with_hash, i64 2044}
!214 = !{ptr @invalidate_any_buried_refs, ptr @xmalloc, i64 237}
!215 = !{ptr @invalidate_any_buried_refs, ptr @invalidate_any_buried_refs, i64 47260}
!216 = !{ptr @gcse_emit_move_after, ptr @gen_move_insn, i64 5}
!217 = !{ptr @gcse_emit_move_after, ptr @emit_insn_after, i64 5}
!218 = !{ptr @gcse_emit_move_after, ptr @rtx_equal_p, i64 5}
!219 = !{ptr @gcse_emit_move_after, ptr @find_reg_equal_equiv_note, i64 5}
!220 = !{ptr @gcse_emit_move_after, ptr @copy_insn_1, i64 5}
!221 = !{ptr @gcse_emit_move_after, ptr @set_unique_reg_note, i64 5}
!222 = !{ptr @process_insert_insn, ptr @copy_rtx, i64 2}
!223 = !{ptr @process_insert_insn, ptr @start_sequence, i64 2}
!224 = !{ptr @process_insert_insn, ptr @general_operand, i64 2}
!225 = !{ptr @process_insert_insn, ptr @emit_move_insn, i64 2}
!226 = !{ptr @process_insert_insn, ptr @get_insns, i64 2}
!227 = !{ptr @process_insert_insn, ptr @end_sequence, i64 2}
!228 = !{ptr @update_ld_motion_stores, ptr @htab_find_slot, i64 5}
!229 = !{ptr @pre_expr_reaches_here_p_work, ptr @pre_expr_reaches_here_p_work, i64 1093}
!230 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!231 = !{!"function_entry_count", i64 0}
!232 = !{!233, !233, i64 0}
!233 = !{!"any pointer", !234, i64 0}
!234 = !{!"omnipotent char", !235, i64 0}
!235 = !{!"Simple C/C++ TBAA"}
!236 = !{!237, !233, i64 8}
!237 = !{!"_IO_FILE", !238, i64 0, !233, i64 8, !233, i64 16, !233, i64 24, !233, i64 32, !233, i64 40, !233, i64 48, !233, i64 56, !233, i64 64, !233, i64 72, !233, i64 80, !233, i64 88, !233, i64 96, !233, i64 104, !238, i64 112, !238, i64 116, !239, i64 120, !240, i64 128, !234, i64 130, !234, i64 131, !233, i64 136, !239, i64 144, !233, i64 152, !233, i64 160, !233, i64 168, !233, i64 176, !239, i64 184, !238, i64 192, !234, i64 196}
!238 = !{!"int", !234, i64 0}
!239 = !{!"long", !234, i64 0}
!240 = !{!"short", !234, i64 0}
!241 = !{!237, !233, i64 16}
!242 = !{!"branch_weights", i32 2000, i32 1}
!243 = !{!234, !234, i64 0}
!244 = !{!237, !233, i64 40}
!245 = !{!237, !233, i64 48}
!246 = !{!237, !238, i64 0}
!247 = !{!238, !238, i64 0}
!248 = distinct !{!248, !249, !250}
!249 = !{!"llvm.loop.mustprogress"}
!250 = !{!"llvm.loop.unroll.disable"}
!251 = !{!"function_entry_count", i64 101082}
!252 = !{!"branch_weights", i32 110233, i32 1}
!253 = !{!"branch_weights", i32 1, i32 86}
!254 = distinct !{!254, !249, !250}
!255 = !{!"function_entry_count", i64 4307}
!256 = !{!"branch_weights", i32 2760, i32 1547}
!257 = !{!"branch_weights", i32 0, i32 2760}
!258 = !{!"branch_weights", i32 1, i32 2759}
!259 = !{!"branch_weights", i32 468, i32 2292}
!260 = !{!"branch_weights", i32 1185, i32 1107}
!261 = !{!"branch_weights", i32 0, i32 1185}
!262 = !{!263, !233, i64 1016}
!263 = !{!"gcc_target", !264, i64 0, !266, i64 368, !267, i64 664, !238, i64 744, !233, i64 752, !233, i64 760, !233, i64 768, !233, i64 776, !233, i64 784, !233, i64 792, !233, i64 800, !233, i64 808, !233, i64 816, !233, i64 824, !233, i64 832, !233, i64 840, !233, i64 848, !233, i64 856, !233, i64 864, !233, i64 872, !233, i64 880, !233, i64 888, !233, i64 896, !233, i64 904, !233, i64 912, !233, i64 920, !233, i64 928, !233, i64 936, !233, i64 944, !233, i64 952, !233, i64 960, !233, i64 968, !233, i64 976, !233, i64 984, !233, i64 992, !233, i64 1000, !233, i64 1008, !233, i64 1016, !233, i64 1024, !233, i64 1032, !233, i64 1040, !233, i64 1048, !233, i64 1056, !239, i64 1064, !239, i64 1072, !233, i64 1080, !233, i64 1088, !233, i64 1096, !233, i64 1104, !233, i64 1112, !233, i64 1120, !233, i64 1128, !233, i64 1136, !233, i64 1144, !233, i64 1152, !233, i64 1160, !233, i64 1168, !268, i64 1176, !233, i64 1232, !233, i64 1240, !233, i64 1248, !233, i64 1256, !233, i64 1264, !233, i64 1272, !233, i64 1280, !233, i64 1288, !233, i64 1296, !233, i64 1304, !233, i64 1312, !233, i64 1320, !233, i64 1328, !233, i64 1336, !233, i64 1344, !233, i64 1352, !233, i64 1360, !233, i64 1368, !233, i64 1376, !233, i64 1384, !233, i64 1392, !233, i64 1400, !233, i64 1408, !233, i64 1416, !233, i64 1424, !233, i64 1432, !233, i64 1440, !233, i64 1448, !233, i64 1456, !239, i64 1464, !269, i64 1472, !233, i64 1664, !233, i64 1672, !233, i64 1680, !233, i64 1688, !233, i64 1696, !233, i64 1704, !233, i64 1712, !233, i64 1720, !233, i64 1728, !233, i64 1736, !233, i64 1744, !233, i64 1752, !233, i64 1760, !233, i64 1768, !233, i64 1776, !270, i64 1784, !271, i64 1792, !272, i64 1896, !273, i64 1968, !233, i64 2016, !234, i64 2024, !234, i64 2025, !234, i64 2026, !234, i64 2027, !234, i64 2028, !234, i64 2029, !234, i64 2030, !234, i64 2031, !234, i64 2032, !234, i64 2033, !234, i64 2034, !234, i64 2035}
!264 = !{!"asm_out", !233, i64 0, !233, i64 8, !233, i64 16, !265, i64 24, !265, i64 56, !233, i64 88, !233, i64 96, !233, i64 104, !233, i64 112, !233, i64 120, !233, i64 128, !233, i64 136, !233, i64 144, !233, i64 152, !233, i64 160, !233, i64 168, !233, i64 176, !233, i64 184, !233, i64 192, !233, i64 200, !233, i64 208, !233, i64 216, !233, i64 224, !233, i64 232, !233, i64 240, !233, i64 248, !233, i64 256, !233, i64 264, !233, i64 272, !233, i64 280, !233, i64 288, !233, i64 296, !233, i64 304, !233, i64 312, !233, i64 320, !233, i64 328, !233, i64 336, !233, i64 344, !233, i64 352, !233, i64 360}
!265 = !{!"asm_int_op", !233, i64 0, !233, i64 8, !233, i64 16, !233, i64 24}
!266 = !{!"sched", !233, i64 0, !233, i64 8, !233, i64 16, !233, i64 24, !233, i64 32, !233, i64 40, !233, i64 48, !233, i64 56, !233, i64 64, !233, i64 72, !233, i64 80, !233, i64 88, !233, i64 96, !233, i64 104, !233, i64 112, !233, i64 120, !233, i64 128, !233, i64 136, !233, i64 144, !233, i64 152, !233, i64 160, !233, i64 168, !233, i64 176, !233, i64 184, !233, i64 192, !233, i64 200, !233, i64 208, !233, i64 216, !233, i64 224, !233, i64 232, !233, i64 240, !233, i64 248, !233, i64 256, !233, i64 264, !233, i64 272, !233, i64 280, !233, i64 288}
!267 = !{!"vectorize", !233, i64 0, !233, i64 8, !233, i64 16, !233, i64 24, !233, i64 32, !233, i64 40, !233, i64 48, !233, i64 56, !233, i64 64, !233, i64 72}
!268 = !{!"addr_space", !233, i64 0, !233, i64 8, !233, i64 16, !233, i64 24, !233, i64 32, !233, i64 40, !233, i64 48}
!269 = !{!"calls", !233, i64 0, !233, i64 8, !233, i64 16, !233, i64 24, !233, i64 32, !233, i64 40, !233, i64 48, !233, i64 56, !233, i64 64, !233, i64 72, !233, i64 80, !233, i64 88, !233, i64 96, !233, i64 104, !233, i64 112, !233, i64 120, !233, i64 128, !233, i64 136, !233, i64 144, !233, i64 152, !233, i64 160, !233, i64 168, !233, i64 176, !233, i64 184}
!270 = !{!"c", !233, i64 0}
!271 = !{!"cxx", !233, i64 0, !233, i64 8, !233, i64 16, !233, i64 24, !233, i64 32, !233, i64 40, !233, i64 48, !233, i64 56, !233, i64 64, !233, i64 72, !233, i64 80, !233, i64 88, !233, i64 96}
!272 = !{!"emutls", !233, i64 0, !233, i64 8, !233, i64 16, !233, i64 24, !233, i64 32, !233, i64 40, !233, i64 48, !233, i64 56, !234, i64 64, !234, i64 65}
!273 = !{!"target_option_hooks", !233, i64 0, !233, i64 8, !233, i64 16, !233, i64 24, !233, i64 32, !233, i64 40}
!274 = !{!"branch_weights", i32 1107, i32 0}
!275 = !{!"function_entry_count", i64 148179}
!276 = !{!"function_entry_count", i64 114}
!277 = !{!"gcse.c;gate_rtl_cprop"}
!278 = !{!"branch_weights", i32 114, i32 0}
!279 = !{!"gcse.c;execute_rtl_cprop"}
!280 = !{!281, !233, i64 8}
!281 = !{!"function", !233, i64 0, !233, i64 8, !233, i64 16, !233, i64 24, !233, i64 32, !233, i64 40, !233, i64 48, !233, i64 56, !233, i64 64, !233, i64 72, !233, i64 80, !233, i64 88, !233, i64 96, !238, i64 104, !238, i64 108, !238, i64 112, !238, i64 116, !238, i64 120, !238, i64 124, !233, i64 128, !238, i64 136, !238, i64 137, !238, i64 138, !238, i64 138, !238, i64 138, !238, i64 138, !238, i64 138, !238, i64 138, !238, i64 138, !238, i64 139, !238, i64 139, !238, i64 139, !238, i64 139, !238, i64 139, !238, i64 139, !238, i64 139}
!282 = !{!283, !238, i64 24}
!283 = !{!"control_flow_graph", !233, i64 0, !233, i64 8, !233, i64 16, !238, i64 24, !238, i64 28, !238, i64 32, !233, i64 40, !238, i64 48, !234, i64 52, !234, i64 60, !238, i64 68, !238, i64 72}
!284 = !{!"branch_weights", i32 0, i32 114}
!285 = !{i8 0, i8 2}
!286 = !{!"branch_weights", i32 93, i32 21}
!287 = !{!283, !238, i64 32}
!288 = !{!283, !233, i64 0}
!289 = !{!290, !233, i64 56}
!290 = !{!"basic_block_def", !233, i64 0, !233, i64 8, !233, i64 16, !233, i64 24, !234, i64 32, !233, i64 48, !233, i64 56, !234, i64 64, !239, i64 72, !238, i64 80, !238, i64 84, !238, i64 88, !238, i64 92, !238, i64 96}
!291 = !{!283, !233, i64 8}
!292 = !{!"branch_weights", i32 1, i32 185}
!293 = !{!294, !233, i64 8}
!294 = !{!"rtl_bb_info", !233, i64 0, !233, i64 8, !233, i64 16, !233, i64 24, !238, i64 32}
!295 = !{!"branch_weights", i32 16029, i32 93264}
!296 = !{!"branch_weights", i32 68414, i32 24850}
!297 = !{!"branch_weights", i32 66913, i32 1508}
!298 = !{!"branch_weights", i32 0, i32 82952}
!299 = !{!"branch_weights", i32 82952, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!300 = !{!"branch_weights", i32 60612, i32 7802}
!301 = !{!302, !233, i64 0}
!302 = !{!"reg_use", !233, i64 0}
!303 = !{!"branch_weights", i32 60612, i32 0}
!304 = !{!"branch_weights", i32 30546, i32 30066}
!305 = !{!"branch_weights", i32 93, i32 29973}
!306 = !{!"branch_weights", i32 29973, i32 0}
!307 = !{!"branch_weights", i32 37682, i32 22837}
!308 = !{!"branch_weights", i32 1, i32 22836}
!309 = !{!310, !233, i64 8}
!310 = !{!"elt_loc_list", !233, i64 0, !233, i64 8, !233, i64 16}
!311 = !{!"branch_weights", i32 42477, i32 1188}
!312 = !{!"branch_weights", i32 27620, i32 16045}
!313 = !{!"branch_weights", i32 14419, i32 13201}
!314 = !{!310, !233, i64 16}
!315 = !{!"branch_weights", i32 14419, i32 0}
!316 = !{!"branch_weights", i32 22836, i32 20829}
!317 = distinct !{!317, !249, !250}
!318 = !{!"branch_weights", i32 21649, i32 1188}
!319 = !{!"branch_weights", i32 1188, i32 0}
!320 = !{!"branch_weights", i32 22830, i32 7}
!321 = !{i32 0, i32 2}
!322 = !{!"branch_weights", i32 0, i32 7}
!323 = !{!"branch_weights", i32 7, i32 0}
!324 = !{!"branch_weights", i32 22830, i32 37689}
!325 = !{!"branch_weights", i32 60605, i32 7}
!326 = !{!"branch_weights", i32 0, i32 60612}
!327 = distinct !{!327, !249, !250}
!328 = !{!"branch_weights", i32 68421, i32 0}
!329 = !{!"branch_weights", i32 7, i32 68414}
!330 = distinct !{!330, !249, !250}
!331 = !{!"branch_weights", i32 185, i32 218401}
!332 = distinct !{!332, !249, !250}
!333 = !{!"branch_weights", i32 185, i32 32059}
!334 = distinct !{!334, !249, !250}
!335 = !{!"branch_weights", i32 91, i32 2}
!336 = !{!290, !233, i64 8}
!337 = !{!"branch_weights", i32 0, i32 16122}
!338 = !{!339, !238, i64 0}
!339 = !{!"VEC_edge_base", !238, i64 0, !238, i64 4, !234, i64 8}
!340 = !{!"branch_weights", i32 8867, i32 7255}
!341 = !{!"branch_weights", i32 48, i32 8819}
!342 = !{!"branch_weights", i32 7139, i32 1680}
!343 = !{!"branch_weights", i32 5844, i32 1295}
!344 = !{!"branch_weights", i32 5844, i32 0}
!345 = !{!"branch_weights", i32 5844, i32 0, i32 0, i32 0, i32 0}
!346 = !{!347, !234, i64 49}
!347 = !{!"real_format", !233, i64 0, !233, i64 8, !238, i64 16, !238, i64 20, !238, i64 24, !238, i64 28, !238, i64 32, !238, i64 36, !238, i64 40, !234, i64 44, !234, i64 45, !234, i64 46, !234, i64 47, !234, i64 48, !234, i64 49, !234, i64 50, !234, i64 51}
!348 = !{i64 0, i64 4, !247, i64 0, i64 4, !247, i64 0, i64 4, !247, i64 0, i64 4, !247, i64 0, i64 4, !247, i64 0, i64 4, !247, i64 8, i64 24, !243}
!349 = !{!"branch_weights", i32 0, i32 5844}
!350 = !{!351, !238, i64 48}
!351 = !{!"edge_def", !233, i64 0, !233, i64 8, !234, i64 16, !233, i64 24, !233, i64 32, !238, i64 40, !238, i64 44, !238, i64 48, !238, i64 52, !239, i64 56}
!352 = !{!"branch_weights", i32 3386, i32 2458}
!353 = !{!"branch_weights", i32 2033, i32 1353}
!354 = !{!"branch_weights", i32 1370, i32 1088}
!355 = !{!351, !233, i64 8}
!356 = !{!290, !233, i64 0}
!357 = !{!"branch_weights", i32 2271, i32 3573}
!358 = !{!"branch_weights", i32 0, i32 3573}
!359 = !{!290, !238, i64 80}
!360 = !{!"branch_weights", i32 3573, i32 0}
!361 = distinct !{!361, !249, !250}
!362 = !{!"branch_weights", i32 93, i32 0}
!363 = !{!364, !238, i64 8}
!364 = !{!"hash_table_d", !233, i64 0, !238, i64 8, !238, i64 12, !238, i64 16}
!365 = !{!364, !233, i64 0}
!366 = !{!364, !238, i64 16}
!367 = !{!364, !238, i64 12}
!368 = !{!"branch_weights", i32 0, i32 93}
!369 = !{!"branch_weights", i32 15936, i32 92702}
!370 = !{!"branch_weights", i32 68038, i32 24664}
!371 = !{!"branch_weights", i32 66628, i32 1410}
!372 = !{!"branch_weights", i32 60139, i32 7899}
!373 = !{!"branch_weights", i32 36202, i32 23937}
!374 = !{!"branch_weights", i32 17857, i32 3144}
!375 = !{!376, !233, i64 0}
!376 = !{!"expr", !233, i64 0, !238, i64 8, !233, i64 16, !233, i64 24, !233, i64 32, !233, i64 40}
!377 = !{!"branch_weights", i32 2952, i32 192}
!378 = !{!"branch_weights", i32 3144, i32 0}
!379 = distinct !{!379, !249, !250}
!380 = !{!"branch_weights", i32 6626, i32 17308}
!381 = !{!376, !238, i64 8}
!382 = !{!239, !239, i64 0}
!383 = !{!"branch_weights", i32 151, i32 1}
!384 = !{!376, !233, i64 16}
!385 = !{!"branch_weights", i32 2933, i32 14388}
!386 = !{!"branch_weights", i32 14356, i32 32}
!387 = distinct !{!387, !249, !250}
!388 = !{!"branch_weights", i32 138161, i32 151}
!389 = !{!"branch_weights", i32 19, i32 0}
!390 = !{!"branch_weights", i32 16, i32 3}
!391 = !{!"branch_weights", i32 0, i32 16}
!392 = !{!"branch_weights", i32 16, i32 23937}
!393 = !{!"branch_weights", i32 23918, i32 19}
!394 = !{!"branch_weights", i32 3, i32 0}
!395 = !{!"branch_weights", i32 16, i32 0}
!396 = !{!"branch_weights", i32 2, i32 14}
!397 = !{!"branch_weights", i32 14, i32 0}
!398 = !{!"branch_weights", i32 0, i32 19, i32 60120}
!399 = !{!"branch_weights", i32 0, i32 60139}
!400 = distinct !{!400, !249, !250}
!401 = !{!"branch_weights", i32 68024, i32 14}
!402 = !{!"branch_weights", i32 0, i32 14}
!403 = !{!"branch_weights", i32 0, i32 68038}
!404 = !{!"branch_weights", i32 93, i32 58577, i32 6785, i32 0, i32 2583}
!405 = !{!406, !238, i64 0}
!406 = !{!"rtvec_def", !238, i64 0, !234, i64 8}
!407 = !{!"branch_weights", i32 6784, i32 1}
!408 = !{!"branch_weights", i32 8774, i32 0, i32 0, i32 0, i32 43613, i32 12975}
!409 = distinct !{!409, !249, !250}
!410 = !{!"branch_weights", i32 6993, i32 58369}
!411 = !{!"branch_weights", i32 6993, i32 0}
!412 = !{!"branch_weights", i32 48, i32 6785, i32 6737, i32 0}
!413 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 6737}
!414 = distinct !{!414, !249, !250}
!415 = !{!"branch_weights", i32 6786, i32 6784}
!416 = distinct !{!416, !249, !250}
!417 = !{!"branch_weights", i32 2583, i32 0}
!418 = !{!"branch_weights", i32 185, i32 217091}
!419 = distinct !{!419, !249, !250}
!420 = !{!"branch_weights", i32 185, i32 31873}
!421 = distinct !{!421, !249, !250}
!422 = !{!"branch_weights", i32 0, i32 16029}
!423 = !{!"branch_weights", i32 1557, i32 14472}
!424 = !{!"branch_weights", i32 0, i32 1}
!425 = !{!"branch_weights", i32 135, i32 5078}
!426 = !{!"branch_weights", i32 3108, i32 0, i32 1777, i32 193}
!427 = !{!"branch_weights", i32 1557, i32 220}
!428 = !{!"branch_weights", i32 1505, i32 52}
!429 = !{!"branch_weights", i32 548, i32 957}
!430 = !{!"branch_weights", i32 0, i32 193}
!431 = !{!"branch_weights", i32 193, i32 0}
!432 = !{!"branch_weights", i32 0, i32 680}
!433 = !{!"branch_weights", i32 487, i32 193}
!434 = !{!"branch_weights", i32 487, i32 0}
!435 = !{!"branch_weights", i32 0, i32 487}
!436 = distinct !{!436, !249, !250}
!437 = !{!"branch_weights", i32 193, i32 487}
!438 = distinct !{!438, !249, !250}
!439 = !{!351, !233, i64 0}
!440 = !{!"branch_weights", i32 278, i32 205}
!441 = !{!"branch_weights", i32 1, i32 143}
!442 = !{!"branch_weights", i32 250, i32 0}
!443 = !{!"branch_weights", i32 143, i32 857}
!444 = !{!"branch_weights", i32 1, i32 273}
!445 = !{!"branch_weights", i32 191, i32 1}
!446 = !{!"branch_weights", i32 238, i32 557}
!447 = !{!"branch_weights", i32 530, i32 27}
!448 = distinct !{!448, !249, !250}
!449 = !{!"branch_weights", i32 12097, i32 191}
!450 = !{!"branch_weights", i32 12, i32 0}
!451 = !{!"branch_weights", i32 8, i32 4}
!452 = !{!"branch_weights", i32 8, i32 278}
!453 = !{!"branch_weights", i32 274, i32 4}
!454 = !{!"branch_weights", i32 2, i32 2}
!455 = !{!"branch_weights", i32 1, i32 127}
!456 = !{!"branch_weights", i32 2, i32 0}
!457 = !{!"branch_weights", i32 127, i32 1}
!458 = distinct !{!458, !249, !250}
!459 = !{!"branch_weights", i32 4, i32 0}
!460 = !{!"branch_weights", i32 0, i32 2}
!461 = !{!"branch_weights", i32 0, i32 4}
!462 = !{!"branch_weights", i32 0, i32 77284}
!463 = distinct !{!463, !249, !250}
!464 = !{!"branch_weights", i32 483, i32 4}
!465 = !{!"branch_weights", i32 0, i32 483}
!466 = !{!"branch_weights", i32 483, i32 0}
!467 = !{!"branch_weights", i32 0, i32 5213}
!468 = distinct !{!468, !249, !250}
!469 = distinct !{!469, !249, !250}
!470 = !{!"branch_weights", i32 92, i32 1}
!471 = !{!472, !233, i64 8}
!472 = !{!"obstack", !239, i64 0, !233, i64 8, !233, i64 16, !233, i64 24, !233, i64 32, !239, i64 40, !238, i64 48, !233, i64 56, !233, i64 64, !233, i64 72, !238, i64 80, !238, i64 80, !238, i64 80}
!473 = !{!472, !239, i64 40}
!474 = !{!472, !233, i64 32}
!475 = !{!472, !233, i64 16}
!476 = !{!472, !233, i64 24}
!477 = !{!"function_entry_count", i64 38}
!478 = !{!"gcse.c;gate_rtl_pre"}
!479 = !{!"branch_weights", i32 38, i32 0}
!480 = !{!"branch_weights", i32 0, i32 38}
!481 = !{!"gcse.c;execute_rtl_pre"}
!482 = !{!"branch_weights", i32 31, i32 7}
!483 = !{!"branch_weights", i32 0, i32 31}
!484 = !{!"branch_weights", i32 1, i32 247}
!485 = !{!"branch_weights", i32 5948, i32 32093}
!486 = !{!"branch_weights", i32 9395, i32 22698}
!487 = !{!"branch_weights", i32 19788, i32 2910}
!488 = !{!"branch_weights", i32 1495, i32 18293}
!489 = !{!"branch_weights", i32 0, i32 9527}
!490 = !{!"branch_weights", i32 9527, i32 0}
!491 = !{!"branch_weights", i32 5254, i32 4273}
!492 = !{!"branch_weights", i32 5254, i32 0}
!493 = !{!494, !233, i64 8}
!494 = !{!"ls_expr", !233, i64 0, !233, i64 8, !233, i64 16, !233, i64 24, !233, i64 32, !233, i64 40, !238, i64 48, !238, i64 52, !238, i64 56, !233, i64 64}
!495 = !{!"branch_weights", i32 610, i32 4644}
!496 = !{!494, !233, i64 40}
!497 = !{!494, !233, i64 0}
!498 = !{!494, !233, i64 64}
!499 = !{!494, !238, i64 48}
!500 = !{!494, !238, i64 52}
!501 = !{!494, !238, i64 56}
!502 = !{!"branch_weights", i32 1495, i32 0}
!503 = !{!494, !233, i64 24}
!504 = !{!"branch_weights", i32 4325, i32 15463}
!505 = !{!"branch_weights", i32 52, i32 0, i32 0}
!506 = !{!"branch_weights", i32 0, i32 52}
!507 = !{!494, !233, i64 32}
!508 = !{!"branch_weights", i32 247, i32 304081}
!509 = distinct !{!509, !249, !250}
!510 = !{!"branch_weights", i32 247, i32 47585}
!511 = distinct !{!511, !249, !250}
!512 = !{!"branch_weights", i32 191, i32 419}
!513 = !{!"branch_weights", i32 14, i32 160}
!514 = !{!"branch_weights", i32 247, i32 1145}
!515 = distinct !{!515, !249, !250}
!516 = !{!"branch_weights", i32 450, i32 160}
!517 = !{!"branch_weights", i32 247, i32 4633}
!518 = distinct !{!518, !249, !250}
!519 = distinct !{!519, !249, !250}
!520 = !{!"branch_weights", i32 31, i32 0}
!521 = !{!"branch_weights", i32 8938, i32 1027}
!522 = !{!"branch_weights", i32 946, i32 81}
!523 = !{!524, !233, i64 0}
!524 = !{!"simple_bitmap_def", !233, i64 0, !238, i64 8, !238, i64 12, !234, i64 16}
!525 = !{!"branch_weights", i32 81, i32 0}
!526 = !{!"branch_weights", i32 1027, i32 0}
!527 = distinct !{!527, !249, !250}
!528 = !{!"branch_weights", i32 79473, i32 247}
!529 = distinct !{!529, !249, !250}
!530 = !{!"branch_weights", i32 0, i32 15752}
!531 = !{!"branch_weights", i32 5979, i32 9773}
!532 = !{!"branch_weights", i32 9773, i32 0}
!533 = !{!"branch_weights", i32 0, i32 9773}
!534 = distinct !{!534, !249, !250}
!535 = distinct !{!535, !249, !250}
!536 = distinct !{!536, !249, !250}
!537 = !{!"branch_weights", i32 247, i32 79473}
!538 = distinct !{!538, !249, !250}
!539 = !{!"branch_weights", i32 1, i32 1026}
!540 = !{!541, !233, i64 8}
!541 = !{!"occr", !233, i64 0, !233, i64 8, !234, i64 16, !234, i64 17}
!542 = !{!"branch_weights", i32 1057, i32 5}
!543 = !{!"branch_weights", i32 5, i32 0}
!544 = !{!"branch_weights", i32 0, i32 5}
!545 = !{!376, !233, i64 40}
!546 = !{!"branch_weights", i32 3, i32 2}
!547 = !{!541, !234, i64 16}
!548 = !{!"branch_weights", i32 1026, i32 36}
!549 = distinct !{!549, !249, !250}
!550 = distinct !{!550, !249, !250}
!551 = distinct !{!551, !249, !250}
!552 = !{!524, !238, i64 12}
!553 = !{!554, !238, i64 4}
!554 = !{!"edge_list", !238, i64 0, !238, i64 4, !233, i64 8}
!555 = !{!"branch_weights", i32 247, i32 1}
!556 = !{!554, !233, i64 8}
!557 = !{!"branch_weights", i32 9878, i32 1}
!558 = !{!"branch_weights", i32 18, i32 13039}
!559 = !{!"branch_weights", i32 18, i32 13021}
!560 = !{!"branch_weights", i32 16, i32 2}
!561 = !{!"branch_weights", i32 24, i32 4}
!562 = !{!"branch_weights", i32 127, i32 1665}
!563 = distinct !{!563, !249, !250}
!564 = !{!"branch_weights", i32 0, i32 18}
!565 = distinct !{!565, !249, !250}
!566 = !{!"branch_weights", i32 9878, i32 3161}
!567 = distinct !{!567, !249, !250}
!568 = !{!"branch_weights", i32 247, i32 78785}
!569 = distinct !{!569, !249, !250}
!570 = !{!"branch_weights", i32 1024, i32 3}
!571 = !{!"branch_weights", i32 1, i32 191}
!572 = !{!"branch_weights", i32 38, i32 5}
!573 = !{!"branch_weights", i32 1, i32 159}
!574 = !{!541, !234, i64 17}
!575 = !{!"branch_weights", i32 151, i32 8}
!576 = !{!"branch_weights", i32 142, i32 9}
!577 = !{!"branch_weights", i32 124, i32 18}
!578 = !{!"branch_weights", i32 0, i32 18, i32 0}
!579 = distinct !{!579, !249, !250}
!580 = !{!"branch_weights", i32 18, i32 0}
!581 = !{!"branch_weights", i32 159, i32 4929}
!582 = distinct !{!582, !249, !250}
!583 = !{!"branch_weights", i32 191, i32 2561}
!584 = distinct !{!584, !249, !250}
!585 = !{!"branch_weights", i32 0, i32 3}
!586 = distinct !{!586, !249, !250}
!587 = distinct !{!587, !249, !250}
!588 = !{!"branch_weights", i32 30, i32 1}
!589 = !{!"branch_weights", i32 247, i32 1033}
!590 = distinct !{!590, !249, !250}
!591 = !{!"gcse.c;gate_rtl_hoist"}
!592 = distinct !{!592, !249, !250}
!593 = distinct !{!593, !249, !250}
!594 = distinct !{!594, !249, !250}
!595 = !{!290, !233, i64 48}
!596 = distinct !{!596, !249, !250}
!597 = distinct !{!597, !249, !250}
!598 = distinct !{!598, !249, !250}
!599 = distinct !{!599, !249, !250}
!600 = !{!524, !238, i64 8}
!601 = !{!602, !238, i64 0}
!602 = !{!"VEC_basic_block_base", !238, i64 0, !238, i64 4, !234, i64 8}
!603 = distinct !{!603, !249, !250}
!604 = distinct !{!604, !249, !250}
!605 = distinct !{!605, !249, !250}
!606 = distinct !{!606, !249, !250}
!607 = distinct !{!607, !249, !250}
!608 = distinct !{!608, !249, !250}
!609 = !{!"function_entry_count", i64 152}
!610 = !{!"gcse.c;is_too_expensive"}
!611 = !{!283, !238, i64 28}
!612 = !{!"branch_weights", i32 0, i32 152}
!613 = !{!614, !238, i64 8}
!614 = !{!"param_info", !233, i64 0, !238, i64 8, !234, i64 12, !238, i64 16, !238, i64 20, !233, i64 24}
!615 = !{!"branch_weights", i32 28, i32 124}
!616 = !{!"gcse.c;alloc_gcse_mem"}
!617 = !{!"function_entry_count", i64 124}
!618 = !{!"gcse.c;compute_hash_table"}
!619 = !{!"VP", i32 1, i64 124, i64 513, i64 92, i64 129, i64 20, i64 257, i64 8, i64 65, i64 4}
!620 = !{!621, !233, i64 0}
!621 = !{!"reg_avail_info", !233, i64 0, !238, i64 8, !238, i64 12}
!622 = !{!"branch_weights", i32 96165, i32 247}
!623 = distinct !{!623, !249, !250}
!624 = !{!"branch_weights", i32 21977, i32 125353}
!625 = !{!"branch_weights", i32 91108, i32 34245}
!626 = !{!"branch_weights", i32 12768, i32 78340}
!627 = !{!"branch_weights", i32 89376, i32 587328}
!628 = !{!629, !233, i64 248}
!629 = !{!"df", !234, i64 0, !234, i64 64, !233, i64 128, !630, i64 136, !630, i64 176, !233, i64 216, !233, i64 224, !233, i64 232, !238, i64 240, !238, i64 244, !233, i64 248, !238, i64 256, !238, i64 260, !233, i64 264, !233, i64 272, !233, i64 280, !233, i64 288, !233, i64 296, !233, i64 304, !233, i64 312, !233, i64 320, !233, i64 328, !233, i64 336, !238, i64 344, !238, i64 348, !233, i64 352, !238, i64 360, !238, i64 364, !234, i64 365, !234, i64 366}
!630 = !{!"df_ref_info", !233, i64 0, !233, i64 8, !233, i64 16, !238, i64 24, !238, i64 28, !238, i64 32, !238, i64 36}
!631 = !{!632, !238, i64 40}
!632 = !{!"df_insn_info", !233, i64 0, !233, i64 8, !233, i64 16, !233, i64 24, !233, i64 32, !238, i64 40}
!633 = !{!621, !238, i64 12}
!634 = !{!"branch_weights", i32 157136, i32 430192}
!635 = !{!621, !238, i64 8}
!636 = !{!"branch_weights", i32 12768, i32 663936}
!637 = distinct !{!637, !249, !250}
!638 = !{!"branch_weights", i32 12768, i32 0}
!639 = !{!"branch_weights", i32 247, i32 294413}
!640 = distinct !{!640, !249, !250}
!641 = !{!"branch_weights", i32 5979, i32 16122}
!642 = !{!"branch_weights", i32 12549, i32 3573}
!643 = !{!294, !233, i64 0}
!644 = !{!"branch_weights", i32 3568, i32 78737, i32 8803}
!645 = !{!"branch_weights", i32 8802, i32 1}
!646 = !{!"branch_weights", i32 8803, i32 8803}
!647 = !{!"branch_weights", i32 8804, i32 8802}
!648 = distinct !{!648, !249, !250}
!649 = distinct !{!649, !249, !250}
!650 = !{!"branch_weights", i32 247, i32 43955}
!651 = distinct !{!651, !249, !250}
!652 = distinct !{!652, !249, !250}
!653 = distinct !{!653, !249, !250}
!654 = distinct !{!654, !249, !250}
!655 = !{!"gcse.c;free_gcse_mem"}
!656 = !{!"function_entry_count", i64 81444}
!657 = !{!"gcse.c;local_cprop_find_used_regs"}
!658 = !{!"function_entry_count", i64 286903}
!659 = !{!"gcse.c;find_used_regs"}
!660 = !{!"branch_weights", i32 120869, i32 311837}
!661 = !{!"branch_weights", i32 0, i32 120869}
!662 = !{!"branch_weights", i32 1, i32 286902}
!663 = !{!"branch_weights", i32 610165, i32 267090, i32 0}
!664 = !{!"branch_weights", i32 145803, i32 121287}
!665 = !{!"branch_weights", i32 0, i32 432706}
!666 = distinct !{!666, !249, !250}
!667 = !{!"branch_weights", i32 590353, i32 286902}
!668 = distinct !{!668, !249, !250}
!669 = !{!"function_entry_count", i64 80644}
!670 = !{!"gcse.c;gcse_constant_p"}
!671 = !{!"branch_weights", i32 8439, i32 72205}
!672 = !{!"branch_weights", i32 0, i32 8439}
!673 = !{!"branch_weights", i32 17552, i32 63092}
!674 = !{!"branch_weights", i32 0, i32 17552}
!675 = !{!"function_entry_count", i64 1191}
!676 = !{!"gcse.c;constprop_register"}
!677 = !{!"branch_weights", i32 1191, i32 0}
!678 = !{!"branch_weights", i32 0, i32 1191}
!679 = !{!"function_entry_count", i64 1214}
!680 = !{!"gcse.c;try_replace_reg"}
!681 = !{!"branch_weights", i32 1214, i32 0}
!682 = !{!"branch_weights", i32 13, i32 1201}
!683 = !{!"branch_weights", i32 2, i32 1212}
!684 = !{!"branch_weights", i32 1191, i32 21}
!685 = !{!"branch_weights", i32 21, i32 1193}
!686 = !{!"branch_weights", i32 0, i32 21}
!687 = !{!"branch_weights", i32 1201, i32 0}
!688 = !{!"branch_weights", i32 1193, i32 21}
!689 = !{!"branch_weights", i32 2, i32 1191}
!690 = !{!"branch_weights", i32 0, i32 1201}
!691 = distinct !{!691, !249, !250}
!692 = !{!"function_entry_count", i64 16277}
!693 = !{!"gcse.c;clear_modify_mem_tables"}
!694 = !{!695, !233, i64 0}
!695 = !{!"bitmap_head_def", !233, i64 0, !233, i64 8, !238, i64 16, !233, i64 24}
!696 = !{!"branch_weights", i32 9139, i32 7138}
!697 = !{!698, !238, i64 16}
!698 = !{!"bitmap_element_def", !233, i64 0, !233, i64 8, !238, i64 16, !234, i64 24}
!699 = !{!"branch_weights", i32 19425, i32 13218}
!700 = !{!"branch_weights", i32 16365, i32 1}
!701 = !{!"branch_weights", i32 201404, i32 16365}
!702 = distinct !{!702, !249, !250}
!703 = !{!"branch_weights", i32 1, i32 16366}
!704 = !{!"branch_weights", i32 13309, i32 3148}
!705 = !{!"branch_weights", i32 16366, i32 91}
!706 = distinct !{!706, !249, !250}
!707 = !{!698, !233, i64 0}
!708 = !{!"branch_weights", i32 16277, i32 90}
!709 = distinct !{!709, !250}
!710 = !{!"branch_weights", i32 16277, i32 16366}
!711 = !{!"branch_weights", i32 1, i32 16365}
!712 = !{!"branch_weights", i32 60550, i32 22344}
!713 = !{!"branch_weights", i32 16365, i32 66529}
!714 = distinct !{!714, !249, !250}
!715 = distinct !{!715, !249, !250}
!716 = !{!"function_entry_count", i64 96279}
!717 = !{!"gcse.c;record_last_set_info"}
!718 = !{!"branch_weights", i32 0, i32 96279}
!719 = !{!"branch_weights", i32 11921, i32 67058, i32 17300}
!720 = !{!"branch_weights", i32 26311, i32 40747}
!721 = !{!"branch_weights", i32 17300, i32 0}
!722 = !{!"function_entry_count", i64 91113}
!723 = !{!"gcse.c;hash_scan_set"}
!724 = !{!"branch_weights", i32 9324, i32 81789}
!725 = !{!"branch_weights", i32 52568, i32 29221}
!726 = !{!"branch_weights", i32 50570, i32 1998}
!727 = !{!"branch_weights", i32 1878, i32 120}
!728 = !{!"branch_weights", i32 6, i32 1872}
!729 = !{!"branch_weights", i32 468, i32 1404}
!730 = !{!"branch_weights", i32 1404, i32 0}
!731 = !{!"branch_weights", i32 -1252225314, i32 0, i32 0, i32 0}
!732 = !{!"branch_weights", i32 84658401, i32 0, i32 0}
!733 = !{!"branch_weights", i32 9201, i32 9201}
!734 = !{!"branch_weights", i32 468, i32 0}
!735 = !{!"branch_weights", i32 12096, i32 40472}
!736 = !{!"branch_weights", i32 8733, i32 43835}
!737 = !{!"branch_weights", i32 0, i32 8733}
!738 = !{!"branch_weights", i32 8733, i32 0}
!739 = !{!"branch_weights", i32 6131, i32 2602}
!740 = !{!"branch_weights", i32 2602, i32 0}
!741 = !{!"branch_weights", i32 2572, i32 30}
!742 = !{!"branch_weights", i32 30, i32 0}
!743 = !{!"branch_weights", i32 1510, i32 1062}
!744 = !{!"branch_weights", i32 1136, i32 1436}
!745 = !{!"branch_weights", i32 40472, i32 9524}
!746 = !{!"branch_weights", i32 30100, i32 19896}
!747 = !{!"branch_weights", i32 7349, i32 22751}
!748 = !{!"branch_weights", i32 419, i32 6930}
!749 = !{!"branch_weights", i32 0, i32 419}
!750 = !{!"branch_weights", i32 19171, i32 10510}
!751 = !{!"branch_weights", i32 4937, i32 5992}
!752 = !{!"branch_weights", i32 0, i32 5992}
!753 = !{!"branch_weights", i32 5992, i32 0}
!754 = !{!"branch_weights", i32 10929, i32 0}
!755 = !{!"branch_weights", i32 1, i32 5686}
!756 = !{!"branch_weights", i32 54023, i32 5242}
!757 = !{!"branch_weights", i32 5686, i32 53579}
!758 = distinct !{!758, !249, !250}
!759 = !{!"branch_weights", i32 134, i32 20007}
!760 = !{!"branch_weights", i32 0, i32 20141}
!761 = !{!472, !238, i64 48}
!762 = !{!"branch_weights", i32 4404, i32 1283}
!763 = !{!376, !233, i64 32}
!764 = !{!"branch_weights", i32 5687, i32 5242}
!765 = !{!"branch_weights", i32 0, i32 5242}
!766 = !{!541, !233, i64 0}
!767 = !{!"branch_weights", i32 0, i32 29221}
!768 = !{!"function_entry_count", i64 52619}
!769 = !{!"gcse.c;record_last_mem_set_info"}
!770 = !{!"branch_weights", i32 22344, i32 30275}
!771 = !{!"function_entry_count", i64 30275}
!772 = !{!"gcse.c;canon_list_insert"}
!773 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 30275}
!774 = distinct !{!774, !249, !250}
!775 = !{!"gcse.c;want_to_gcse_p"}
!776 = !{!"function_entry_count", i64 2572}
!777 = !{!"gcse.c;insert_expr_in_table"}
!778 = !{!"branch_weights", i32 2572, i32 0}
!779 = !{!"branch_weights", i32 257, i32 1545}
!780 = !{!"branch_weights", i32 1026, i32 776}
!781 = distinct !{!781, !249, !250}
!782 = !{!"branch_weights", i32 846, i32 181}
!783 = !{!376, !233, i64 24}
!784 = !{!"branch_weights", i32 199, i32 863}
!785 = !{!"branch_weights", i32 0, i32 863}
!786 = !{!"branch_weights", i32 948, i32 488}
!787 = !{!"branch_weights", i32 0, i32 488}
!788 = !{!"function_entry_count", i64 29153}
!789 = !{!"gcse.c;oprs_unchanged_p"}
!790 = !{!"branch_weights", i32 0, i32 29153}
!791 = !{!"branch_weights", i32 8496, i32 9090, i32 2930, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 427, i32 7186, i32 0, i32 0, i32 0, i32 992, i32 32, i32 0, i32 0}
!792 = !{!"branch_weights", i32 5218, i32 3872}
!793 = !{!"branch_weights", i32 1081, i32 4137}
!794 = !{!"branch_weights", i32 1655, i32 1275}
!795 = !{!"branch_weights", i32 0, i32 16362, i32 0}
!796 = !{!"branch_weights", i32 7866, i32 8496}
!797 = !{!"branch_weights", i32 630, i32 7866}
!798 = distinct !{!798, !249, !250}
!799 = !{!"branch_weights", i32 16362, i32 0}
!800 = distinct !{!800, !249, !250}
!801 = !{!"function_entry_count", i64 2930}
!802 = !{!"gcse.c;load_killed_in_block_p"}
!803 = !{!"branch_weights", i32 54834, i32 4700556}
!804 = !{!"branch_weights", i32 2937, i32 1547}
!805 = !{!"branch_weights", i32 674, i32 873}
!806 = distinct !{!806, !249, !250}
!807 = !{!"branch_weights", i32 1713, i32 1224}
!808 = !{!"branch_weights", i32 1275, i32 822}
!809 = !{!"branch_weights", i32 0, i32 822}
!810 = !{!"branch_weights", i32 1275, i32 822, i32 2387}
!811 = !{!"branch_weights", i32 1622, i32 2862}
!812 = !{!"function_entry_count", i64 822}
!813 = !{!"gcse.c;mems_conflict_for_gcse_p"}
!814 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 822}
!815 = distinct !{!815, !249, !250}
!816 = !{!"branch_weights", i32 822, i32 0}
!817 = !{!"gcse.c;compute_local_properties"}
!818 = !{!"branch_weights", i32 0, i32 124}
!819 = !{!"branch_weights", i32 31, i32 93}
!820 = !{!"branch_weights", i32 93, i32 31}
!821 = !{!"branch_weights", i32 33524, i32 6714}
!822 = !{!"branch_weights", i32 0, i32 6714}
!823 = !{!"branch_weights", i32 5687, i32 1027}
!824 = !{!"branch_weights", i32 1062, i32 0}
!825 = distinct !{!825, !249, !250}
!826 = !{!"branch_weights", i32 1, i32 6713}
!827 = !{!"branch_weights", i32 12365, i32 0}
!828 = !{!"branch_weights", i32 6713, i32 5652}
!829 = distinct !{!829, !249, !250}
!830 = !{!"branch_weights", i32 6714, i32 0}
!831 = distinct !{!831, !249, !250}
!832 = !{!"branch_weights", i32 80229, i32 247}
!833 = distinct !{!833, !249, !250}
!834 = !{!"function_entry_count", i64 13371}
!835 = !{!"gcse.c;compute_transp"}
!836 = !{!"branch_weights", i32 6657, i32 7653, i32 182, i32 0, i32 0, i32 28, i32 5618, i32 0, i32 0, i32 0, i32 56, i32 16, i32 0, i32 0}
!837 = !{!629, !233, i64 216}
!838 = !{!"branch_weights", i32 1579, i32 6074}
!839 = !{!"branch_weights", i32 1, i32 6073}
!840 = !{!"branch_weights", i32 0, i32 184966}
!841 = !{!632, !233, i64 0}
!842 = !{!"branch_weights", i32 184966, i32 0}
!843 = !{!"branch_weights", i32 6073, i32 178893}
!844 = distinct !{!844, !249, !250}
!845 = !{!"branch_weights", i32 1, i32 1578}
!846 = !{!"branch_weights", i32 1, i32 11317}
!847 = !{!"branch_weights", i32 11318, i32 0}
!848 = !{!"branch_weights", i32 1578, i32 9740}
!849 = distinct !{!849, !249, !250}
!850 = !{!"branch_weights", i32 166, i32 16}
!851 = !{!"branch_weights", i32 0, i32 166}
!852 = !{!"branch_weights", i32 515, i32 15117}
!853 = !{!"branch_weights", i32 10542, i32 4924}
!854 = !{!"branch_weights", i32 0, i32 10542}
!855 = !{!"branch_weights", i32 1, i32 315}
!856 = !{!"branch_weights", i32 117, i32 349}
!857 = !{!"branch_weights", i32 315, i32 151}
!858 = !{!"branch_weights", i32 166, i32 150}
!859 = !{!"branch_weights", i32 166, i32 15466}
!860 = !{!"branch_weights", i32 15466, i32 0}
!861 = distinct !{!861, !249, !250}
!862 = distinct !{!862, !249, !250}
!863 = !{!"branch_weights", i32 166, i32 0}
!864 = distinct !{!864, !249, !250}
!865 = !{!"branch_weights", i32 0, i32 466}
!866 = !{!"branch_weights", i32 466, i32 0}
!867 = distinct !{!867, !249, !250}
!868 = !{!"branch_weights", i32 150, i32 150}
!869 = !{!"branch_weights", i32 0, i32 300}
!870 = distinct !{!870, !249, !250}
!871 = distinct !{!871, !250}
!872 = distinct !{!872, !249, !250}
!873 = !{!"branch_weights", i32 0, i32 20210}
!874 = !{!"branch_weights", i32 0, i32 13314, i32 0}
!875 = !{!"branch_weights", i32 6657, i32 6657}
!876 = distinct !{!876, !249, !250}
!877 = !{!"branch_weights", i32 13314, i32 0}
!878 = distinct !{!878, !249, !250}
!879 = !{!"function_entry_count", i64 60155}
!880 = !{!"gcse.c;oprs_not_set_p"}
!881 = !{!"branch_weights", i32 0, i32 60155}
!882 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 60155}
!883 = distinct !{!883, !249, !250}
!884 = distinct !{!884, !249, !250}
!885 = !{!"gcse.c;mark_clobber"}
!886 = !{!"function_entry_count", i64 523}
!887 = !{!"gcse.c;pre_ldst_expr_hash"}
!888 = !{!"function_entry_count", i64 7876}
!889 = !{!"gcse.c;pre_ldst_expr_eq"}
!890 = !{!"function_entry_count", i64 68463}
!891 = !{!"gcse.c;invalidate_any_buried_refs"}
!892 = !{!"branch_weights", i32 3707, i32 64756}
!893 = !{!"branch_weights", i32 1, i32 68462}
!894 = !{!"branch_weights", i32 89629, i32 43224, i32 2018}
!895 = !{!"branch_weights", i32 2017, i32 1}
!896 = !{!"branch_weights", i32 2019, i32 2017}
!897 = distinct !{!897, !249, !250}
!898 = !{!"branch_weights", i32 66409, i32 68462}
!899 = distinct !{!899, !249, !250}
!900 = !{!"function_entry_count", i64 5}
!901 = !{!"gcse.c;gcse_emit_move_after"}
!902 = distinct !{!902, !249, !250}
!903 = distinct !{!903, !249, !250}
!904 = distinct !{!904, !250}
!905 = !{!"function_entry_count", i64 2}
!906 = !{!"gcse.c;process_insert_insn"}
!907 = !{!"gcse.c;update_ld_motion_stores"}
!908 = !{!"branch_weights", i32 2, i32 3}
!909 = !{!"branch_weights", i32 1, i32 0}
!910 = distinct !{!910, !249, !250}
!911 = distinct !{!911, !249, !250}
!912 = distinct !{!912, !249, !250}
!913 = !{!"function_entry_count", i64 1235}
!914 = !{!"gcse.c;pre_expr_reaches_here_p_work"}
!915 = !{!"branch_weights", i32 0, i32 3043}
!916 = !{!"branch_weights", i32 1160, i32 1883}
!917 = !{!"branch_weights", i32 0, i32 1883}
!918 = !{!"branch_weights", i32 1668, i32 215}
!919 = !{!"branch_weights", i32 1135, i32 533}
!920 = !{!"branch_weights", i32 18, i32 515}
!921 = !{!"branch_weights", i32 42, i32 1093}
!922 = !{!"branch_weights", i32 1036, i32 57}
!923 = !{!"branch_weights", i32 0, i32 1808}
!924 = !{!"branch_weights", i32 1808, i32 0}
!925 = distinct !{!925, !249, !250}
!926 = distinct !{!926, !249, !250}
