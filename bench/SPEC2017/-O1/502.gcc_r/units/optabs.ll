; ModuleID = 'optabs.c'
source_filename = "optabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.convert_optab_d = type { i32, ptr, ptr, [87 x [87 x %struct.optab_handlers]] }
%struct.optab_handlers = type { i32 }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.insn_data = type { ptr, %union.anon.0, ptr, ptr, i8, i8, i8, i8 }
%union.anon.0 = type { ptr }
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
%struct.rtl_hooks = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.libfunc_entry = type { i64, i32, i32, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%union.tree_type_symtab = type { ptr }
%struct.separate_ops = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.no_conflict_data = type { ptr, ptr, ptr, i8 }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@convert_optab_table = dso_local global [17 x %struct.convert_optab_d] zeroinitializer, align 16
@libfunc_hash = internal global ptr null, align 8
@optab_table = dso_local global [159 x %struct.optab_d] zeroinitializer, align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str = private unnamed_addr constant [9 x i8] c"optabs.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_trapv = external local_unnamed_addr global i32, align 4
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@code_to_optab = dso_local local_unnamed_addr global [140 x ptr] zeroinitializer, align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@word_mode = external local_unnamed_addr global i32, align 4
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@ix86_branch_cost = external local_unnamed_addr global i32, align 4
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@movcc_gen_code = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@libfunc_decls = internal global ptr null, align 8
@vcond_gen_code = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@vcondu_gen_code = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@movmem_optab = external local_unnamed_addr global [87 x i32], align 16
@cmpstr_optab = external local_unnamed_addr global [87 x i32], align 16
@cmpstrn_optab = external local_unnamed_addr global [87 x i32], align 16
@cmpmem_optab = external local_unnamed_addr global [87 x i32], align 16
@setmem_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_add_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_sub_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_ior_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_and_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_xor_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_nand_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_old_add_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_old_sub_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_old_ior_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_old_and_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_old_xor_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_old_nand_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_new_add_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_new_sub_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_new_ior_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_new_and_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_new_xor_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_new_nand_optab = external local_unnamed_addr global [87 x i32], align 16
@sync_compare_and_swap = external local_unnamed_addr global [87 x i32], align 16
@sync_lock_test_and_set = external local_unnamed_addr global [87 x i32], align 16
@sync_lock_release = external local_unnamed_addr global [87 x i32], align 16
@reload_out_optab = external local_unnamed_addr global [87 x i32], align 16
@reload_in_optab = external local_unnamed_addr global [87 x i32], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ssadd\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"usadd\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"sssub\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ussub\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"ssmul\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"usmul\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"divv\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"ssdiv\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"udiv\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"usdiv\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"divmod\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"udivmod\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"umod\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"ftrunc\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"ior\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"ashl\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"ssashl\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"usashl\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"ashr\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"lshr\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"umin\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"umax\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"neg\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"ssneg\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"usneg\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"one_cmpl\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"ffs\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"clz\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"ctz\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"popcount\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"parity\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"ucmp\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"unord\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"powi\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"fix\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"fixuns\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"lrint\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"lround\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"lfloor\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"lceil\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"fract\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"satfract\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"fractuns\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"satfractuns\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"__bswapsi2\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"__bswapdi2\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"cabs\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@libfunc_table = dso_local local_unnamed_addr global [14 x ptr] zeroinitializer, align 16
@.str.69 = private unnamed_addr constant [7 x i8] c"memcpy\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"memmove\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"memcmp\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"memset\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"__setbits\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"__builtin_setjmp\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"__builtin_longjmp\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"_Unwind_SjLj_Register\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"_Unwind_SjLj_Unregister\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"__cyg_profile_func_enter\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"__cyg_profile_func_exit\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"__gcov_flush\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.81 = private unnamed_addr constant [11 x i8] c"%s\09%s:\09%s\0A\00", align 1
@rtx_name = external local_unnamed_addr constant [139 x ptr], align 16
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@.str.82 = private unnamed_addr constant [14 x i8] c"%s\09%s\09%s:\09%s\0A\00", align 1
@gt_ggc_r_gt_optabs_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @libfunc_decls, i64 1, i64 8, ptr @gt_ggc_m_P9tree_node4htab, ptr @gt_pch_n_P9tree_node4htab }, %struct.ggc_root_tab { ptr @libfunc_hash, i64 1, i64 8, ptr @gt_ggc_m_P13libfunc_entry4htab, ptr @gt_pch_n_P13libfunc_entry4htab }, %struct.ggc_root_tab zeroinitializer], align 16
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16
@optimize = external local_unnamed_addr global i32, align 4
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@const_true_rtx = external local_unnamed_addr global ptr, align 8
@_sch_tolower = external local_unnamed_addr constant [256 x i8], align 16
@.str.84 = private unnamed_addr constant [9 x i8] c"floatuns\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"floatun\00", align 1
@mode_precision = external local_unnamed_addr constant [87 x i16], align 16
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@switch.table.prepare_cmp_insn = private unnamed_addr constant [6 x ptr] [ptr @const_true_rtx, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63)], align 8
@switch.table.prepare_cmp_insn.86 = private unnamed_addr constant [6 x ptr] [ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), ptr @const_true_rtx, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64)], align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !102 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !103
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !102 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !103
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !102 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !113

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !107
  %11 = load i8, ptr %3, align 1, !tbaa !114
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !102 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !113

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !107
  %11 = load i8, ptr %3, align 1, !tbaa !114
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !102 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !103
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !113

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #22
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !107
  %11 = load i8, ptr %3, align 1, !tbaa !114
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !102 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !103
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !102 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !113

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !115
  store i8 %12, ptr %4, align 1, !tbaa !114
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !102 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !113

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !115
  store i8 %12, ptr %4, align 1, !tbaa !114
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !102 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !103
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !113

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !115
  store i8 %12, ptr %4, align 1, !tbaa !114
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !102 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #22
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !102 {
  %2 = load i32, ptr %0, align 8, !tbaa !117
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !102 {
  %2 = load i32, ptr %0, align 8, !tbaa !117
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !102 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !118
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !102 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !118
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !102 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !102 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !102 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !102 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #22
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
  br i1 %23, label %7, label %24, !llvm.loop !119

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !102 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local ptr @convert_optab_libfunc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !102 {
  %4 = alloca %struct.libfunc_entry, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %5, ptrtoint (ptr @convert_optab_table to i64)
  %7 = sdiv exact i64 %6, 30304
  store i64 %7, ptr %4, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.libfunc_entry, ptr %4, i64 0, i32 1
  store i32 %1, ptr %8, align 8, !tbaa !124
  %9 = getelementptr inbounds %struct.libfunc_entry, ptr %4, i64 0, i32 2
  store i32 %2, ptr %9, align 4, !tbaa !125
  %10 = load ptr, ptr @libfunc_hash, align 8, !tbaa !103
  %11 = call ptr @htab_find_slot(ptr noundef %10, ptr noundef nonnull %4, i32 noundef 0) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.convert_optab_d, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !126
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.convert_optab_d, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !128
  call void %15(ptr noundef %0, ptr noundef %19, i32 noundef %1, i32 noundef %2) #22
  %20 = load ptr, ptr @libfunc_hash, align 8, !tbaa !103
  %21 = call ptr @htab_find_slot(ptr noundef %20, ptr noundef nonnull %4, i32 noundef 0) #22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %3, %17
  %24 = phi ptr [ %21, %17 ], [ %11, %3 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !103
  %26 = getelementptr inbounds %struct.libfunc_entry, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !129
  br label %28

28:                                               ; preds = %23, %13, %17
  %29 = phi ptr [ null, %17 ], [ null, %13 ], [ %27, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret ptr %29
}

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @optab_libfunc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !102 {
  %3 = alloca %struct.libfunc_entry, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %4, ptrtoint (ptr @optab_table to i64)
  %6 = sdiv exact i64 %5, 384
  store i64 %6, ptr %3, align 8, !tbaa !122
  %7 = getelementptr inbounds %struct.libfunc_entry, ptr %3, i64 0, i32 1
  store i32 %1, ptr %7, align 8, !tbaa !124
  %8 = getelementptr inbounds %struct.libfunc_entry, ptr %3, i64 0, i32 2
  store i32 0, ptr %8, align 4, !tbaa !125
  %9 = load ptr, ptr @libfunc_hash, align 8, !tbaa !103
  %10 = call ptr @htab_find_slot(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 0) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.optab_d, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !130
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.optab_d, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !132
  %19 = getelementptr inbounds %struct.optab_d, ptr %0, i64 0, i32 2
  %20 = load i8, ptr %19, align 8, !tbaa !133
  call void %14(ptr noundef %0, ptr noundef %18, i8 noundef signext %20, i32 noundef %1) #22
  %21 = load ptr, ptr @libfunc_hash, align 8, !tbaa !103
  %22 = call ptr @htab_find_slot(ptr noundef %21, ptr noundef nonnull %3, i32 noundef 0) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %2, %16
  %25 = phi ptr [ %22, %16 ], [ %10, %2 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  %27 = getelementptr inbounds %struct.libfunc_entry, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !129
  br label %29

29:                                               ; preds = %24, %12, %16
  %30 = phi ptr [ null, %16 ], [ null, %12 ], [ %28, %24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret ptr %30
}

; Function Attrs: nounwind uwtable
define dso_local ptr @optab_for_tree_code(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !134 {
  switch i32 %0, label %542 [
    i32 89, label %598
    i32 87, label %4
    i32 90, label %5
    i32 88, label %6
    i32 71, label %7
    i32 72, label %7
    i32 73, label %7
    i32 74, label %7
    i32 75, label %12
    i32 67, label %12
    i32 68, label %12
    i32 69, label %12
    i32 70, label %12
    i32 76, label %12
    i32 83, label %22
    i32 84, label %139
    i32 85, label %253
    i32 86, label %358
    i32 81, label %463
    i32 80, label %468
    i32 151, label %473
    i32 168, label %474
    i32 167, label %479
    i32 164, label %484
    i32 165, label %489
    i32 166, label %494
    i32 170, label %499
    i32 171, label %500
    i32 172, label %501
    i32 173, label %506
    i32 174, label %511
    i32 175, label %516
    i32 176, label %521
    i32 177, label %526
    i32 178, label %531
    i32 179, label %532
    i32 180, label %537
  ], !prof !135

4:                                                ; preds = %3
  br label %598

5:                                                ; preds = %3
  br label %598

6:                                                ; preds = %3
  br label %598

7:                                                ; preds = %3, %3, %3, %3
  %8 = load i64, ptr %1, align 8
  %9 = and i64 %8, 2097152
  %10 = icmp eq i64 %9, 0
  %11 = select i1 %10, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 37)
  br label %598

12:                                               ; preds = %3, %3, %3, %3, %3, %3
  %13 = load i64, ptr %1, align 8
  %14 = and i64 %13, 2147483648
  %15 = icmp eq i64 %14, 0
  %16 = and i64 %13, 2097152
  %17 = icmp eq i64 %16, 0
  br i1 %15, label %20, label %18

18:                                               ; preds = %12
  %19 = select i1 %17, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 6), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 7)
  br label %598

20:                                               ; preds = %12
  %21 = select i1 %17, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34)
  br label %598

22:                                               ; preds = %3
  %23 = load i64, ptr %1, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 14
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #22
  br label %33

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  br label %33

33:                                               ; preds = %28, %26
  %34 = phi i32 [ %27, %26 ], [ %32, %28 ]
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !114
  %38 = icmp eq i8 %37, 12
  br i1 %38, label %124, label %39

39:                                               ; preds = %33
  %40 = load i64, ptr %1, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 14
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #22
  br label %50

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  br label %50

50:                                               ; preds = %45, %43
  %51 = phi i32 [ %44, %43 ], [ %49, %45 ]
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !114
  %55 = icmp eq i8 %54, 17
  br i1 %55, label %124, label %56

56:                                               ; preds = %50
  %57 = load i64, ptr %1, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 14
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #22
  br label %67

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = lshr i32 %64, 16
  %66 = and i32 %65, 255
  br label %67

67:                                               ; preds = %62, %60
  %68 = phi i32 [ %61, %60 ], [ %66, %62 ]
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !114
  %72 = icmp eq i8 %71, 13
  br i1 %72, label %124, label %73

73:                                               ; preds = %67
  %74 = load i64, ptr %1, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 14
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #22
  br label %84

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = lshr i32 %81, 16
  %83 = and i32 %82, 255
  br label %84

84:                                               ; preds = %79, %77
  %85 = phi i32 [ %78, %77 ], [ %83, %79 ]
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !114
  %89 = icmp eq i8 %88, 14
  br i1 %89, label %124, label %90

90:                                               ; preds = %84
  %91 = load i64, ptr %1, align 8
  %92 = and i64 %91, 65535
  %93 = icmp eq i64 %92, 14
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #22
  br label %101

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %98 = load i32, ptr %97, align 4
  %99 = lshr i32 %98, 16
  %100 = and i32 %99, 255
  br label %101

101:                                              ; preds = %96, %94
  %102 = phi i32 [ %95, %94 ], [ %100, %96 ]
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !114
  %106 = icmp eq i8 %105, 15
  br i1 %106, label %124, label %107

107:                                              ; preds = %101
  %108 = load i64, ptr %1, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 14
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #22
  br label %118

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = lshr i32 %115, 16
  %117 = and i32 %116, 255
  br label %118

118:                                              ; preds = %113, %111
  %119 = phi i32 [ %112, %111 ], [ %117, %113 ]
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !114
  %123 = icmp eq i8 %122, 16
  br i1 %123, label %124, label %131

124:                                              ; preds = %118, %101, %84, %67, %50, %33
  switch i32 %2, label %130 [
    i32 2, label %125
    i32 1, label %131
  ]

125:                                              ; preds = %124
  %126 = load i64, ptr %1, align 8
  %127 = and i64 %126, 2147483648
  %128 = icmp eq i64 %127, 0
  %129 = select i1 %128, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 49), ptr null
  br label %598

130:                                              ; preds = %124
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 360, ptr noundef nonnull @.str.1) #22
  br label %131

131:                                              ; preds = %118, %124, %130
  %132 = load i64, ptr %1, align 8
  %133 = and i64 %132, 2147483648
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %598, label %135

135:                                              ; preds = %131
  %136 = and i64 %132, 2097152
  %137 = icmp eq i64 %136, 0
  %138 = select i1 %137, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 10), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 11)
  br label %598

139:                                              ; preds = %3
  %140 = load i64, ptr %1, align 8
  %141 = and i64 %140, 65535
  %142 = icmp eq i64 %141, 14
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %150

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %147 = load i32, ptr %146, align 4
  %148 = lshr i32 %147, 16
  %149 = and i32 %148, 255
  br label %150

150:                                              ; preds = %145, %143
  %151 = phi i32 [ %144, %143 ], [ %149, %145 ]
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !114
  %155 = icmp eq i8 %154, 12
  br i1 %155, label %241, label %156

156:                                              ; preds = %150
  %157 = load i64, ptr %1, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 14
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %167

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %164 = load i32, ptr %163, align 4
  %165 = lshr i32 %164, 16
  %166 = and i32 %165, 255
  br label %167

167:                                              ; preds = %162, %160
  %168 = phi i32 [ %161, %160 ], [ %166, %162 ]
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !114
  %172 = icmp eq i8 %171, 17
  br i1 %172, label %241, label %173

173:                                              ; preds = %167
  %174 = load i64, ptr %1, align 8
  %175 = and i64 %174, 65535
  %176 = icmp eq i64 %175, 14
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %184

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %181 = load i32, ptr %180, align 4
  %182 = lshr i32 %181, 16
  %183 = and i32 %182, 255
  br label %184

184:                                              ; preds = %179, %177
  %185 = phi i32 [ %178, %177 ], [ %183, %179 ]
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !114
  %189 = icmp eq i8 %188, 13
  br i1 %189, label %241, label %190

190:                                              ; preds = %184
  %191 = load i64, ptr %1, align 8
  %192 = and i64 %191, 65535
  %193 = icmp eq i64 %192, 14
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %201

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %198 = load i32, ptr %197, align 4
  %199 = lshr i32 %198, 16
  %200 = and i32 %199, 255
  br label %201

201:                                              ; preds = %196, %194
  %202 = phi i32 [ %195, %194 ], [ %200, %196 ]
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !114
  %206 = icmp eq i8 %205, 14
  br i1 %206, label %241, label %207

207:                                              ; preds = %201
  %208 = load i64, ptr %1, align 8
  %209 = and i64 %208, 65535
  %210 = icmp eq i64 %209, 14
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %218

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %215 = load i32, ptr %214, align 4
  %216 = lshr i32 %215, 16
  %217 = and i32 %216, 255
  br label %218

218:                                              ; preds = %213, %211
  %219 = phi i32 [ %212, %211 ], [ %217, %213 ]
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !114
  %223 = icmp eq i8 %222, 15
  br i1 %223, label %241, label %224

224:                                              ; preds = %218
  %225 = load i64, ptr %1, align 8
  %226 = and i64 %225, 65535
  %227 = icmp eq i64 %226, 14
  br i1 %227, label %228, label %230

228:                                              ; preds = %224
  %229 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %235

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %232 = load i32, ptr %231, align 4
  %233 = lshr i32 %232, 16
  %234 = and i32 %233, 255
  br label %235

235:                                              ; preds = %230, %228
  %236 = phi i32 [ %229, %228 ], [ %234, %230 ]
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %237
  %239 = load i8, ptr %238, align 1, !tbaa !114
  %240 = icmp eq i8 %239, 16
  br i1 %240, label %241, label %248

241:                                              ; preds = %235, %218, %201, %184, %167, %150
  switch i32 %2, label %247 [
    i32 2, label %242
    i32 1, label %248
  ]

242:                                              ; preds = %241
  %243 = load i64, ptr %1, align 8
  %244 = and i64 %243, 2097152
  %245 = icmp eq i64 %244, 0
  %246 = select i1 %245, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 51), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 50)
  br label %598

247:                                              ; preds = %241
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 372, ptr noundef nonnull @.str.1) #22
  br label %248

248:                                              ; preds = %235, %241, %247
  %249 = load i64, ptr %1, align 8
  %250 = and i64 %249, 2097152
  %251 = icmp eq i64 %250, 0
  %252 = select i1 %251, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45)
  br label %598

253:                                              ; preds = %3
  %254 = load i64, ptr %1, align 8
  %255 = and i64 %254, 65535
  %256 = icmp eq i64 %255, 14
  br i1 %256, label %257, label %259

257:                                              ; preds = %253
  %258 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %264

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %261 = load i32, ptr %260, align 4
  %262 = lshr i32 %261, 16
  %263 = and i32 %262, 255
  br label %264

264:                                              ; preds = %259, %257
  %265 = phi i32 [ %258, %257 ], [ %263, %259 ]
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !114
  %269 = icmp eq i8 %268, 12
  br i1 %269, label %355, label %270

270:                                              ; preds = %264
  %271 = load i64, ptr %1, align 8
  %272 = and i64 %271, 65535
  %273 = icmp eq i64 %272, 14
  br i1 %273, label %274, label %276

274:                                              ; preds = %270
  %275 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %281

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %278 = load i32, ptr %277, align 4
  %279 = lshr i32 %278, 16
  %280 = and i32 %279, 255
  br label %281

281:                                              ; preds = %276, %274
  %282 = phi i32 [ %275, %274 ], [ %280, %276 ]
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !114
  %286 = icmp eq i8 %285, 17
  br i1 %286, label %355, label %287

287:                                              ; preds = %281
  %288 = load i64, ptr %1, align 8
  %289 = and i64 %288, 65535
  %290 = icmp eq i64 %289, 14
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  %292 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %298

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %295 = load i32, ptr %294, align 4
  %296 = lshr i32 %295, 16
  %297 = and i32 %296, 255
  br label %298

298:                                              ; preds = %293, %291
  %299 = phi i32 [ %292, %291 ], [ %297, %293 ]
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %300
  %302 = load i8, ptr %301, align 1, !tbaa !114
  %303 = icmp eq i8 %302, 13
  br i1 %303, label %355, label %304

304:                                              ; preds = %298
  %305 = load i64, ptr %1, align 8
  %306 = and i64 %305, 65535
  %307 = icmp eq i64 %306, 14
  br i1 %307, label %308, label %310

308:                                              ; preds = %304
  %309 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %315

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %312 = load i32, ptr %311, align 4
  %313 = lshr i32 %312, 16
  %314 = and i32 %313, 255
  br label %315

315:                                              ; preds = %310, %308
  %316 = phi i32 [ %309, %308 ], [ %314, %310 ]
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %317
  %319 = load i8, ptr %318, align 1, !tbaa !114
  %320 = icmp eq i8 %319, 14
  br i1 %320, label %355, label %321

321:                                              ; preds = %315
  %322 = load i64, ptr %1, align 8
  %323 = and i64 %322, 65535
  %324 = icmp eq i64 %323, 14
  br i1 %324, label %325, label %327

325:                                              ; preds = %321
  %326 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %332

327:                                              ; preds = %321
  %328 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %329 = load i32, ptr %328, align 4
  %330 = lshr i32 %329, 16
  %331 = and i32 %330, 255
  br label %332

332:                                              ; preds = %327, %325
  %333 = phi i32 [ %326, %325 ], [ %331, %327 ]
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %334
  %336 = load i8, ptr %335, align 1, !tbaa !114
  %337 = icmp eq i8 %336, 15
  br i1 %337, label %355, label %338

338:                                              ; preds = %332
  %339 = load i64, ptr %1, align 8
  %340 = and i64 %339, 65535
  %341 = icmp eq i64 %340, 14
  br i1 %341, label %342, label %344

342:                                              ; preds = %338
  %343 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %349

344:                                              ; preds = %338
  %345 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %346 = load i32, ptr %345, align 4
  %347 = lshr i32 %346, 16
  %348 = and i32 %347, 255
  br label %349

349:                                              ; preds = %344, %342
  %350 = phi i32 [ %343, %342 ], [ %348, %344 ]
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %351
  %353 = load i8, ptr %352, align 1, !tbaa !114
  %354 = icmp eq i8 %353, 16
  br i1 %354, label %355, label %357

355:                                              ; preds = %349, %332, %315, %298, %281, %264
  switch i32 %2, label %356 [
    i32 2, label %598
    i32 1, label %357
  ]

356:                                              ; preds = %355
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 382, ptr noundef nonnull @.str.1) #22
  br label %357

357:                                              ; preds = %349, %355, %356
  br label %598

358:                                              ; preds = %3
  %359 = load i64, ptr %1, align 8
  %360 = and i64 %359, 65535
  %361 = icmp eq i64 %360, 14
  br i1 %361, label %362, label %364

362:                                              ; preds = %358
  %363 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %369

364:                                              ; preds = %358
  %365 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %366 = load i32, ptr %365, align 4
  %367 = lshr i32 %366, 16
  %368 = and i32 %367, 255
  br label %369

369:                                              ; preds = %364, %362
  %370 = phi i32 [ %363, %362 ], [ %368, %364 ]
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %371
  %373 = load i8, ptr %372, align 1, !tbaa !114
  %374 = icmp eq i8 %373, 12
  br i1 %374, label %460, label %375

375:                                              ; preds = %369
  %376 = load i64, ptr %1, align 8
  %377 = and i64 %376, 65535
  %378 = icmp eq i64 %377, 14
  br i1 %378, label %379, label %381

379:                                              ; preds = %375
  %380 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %386

381:                                              ; preds = %375
  %382 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %383 = load i32, ptr %382, align 4
  %384 = lshr i32 %383, 16
  %385 = and i32 %384, 255
  br label %386

386:                                              ; preds = %381, %379
  %387 = phi i32 [ %380, %379 ], [ %385, %381 ]
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !114
  %391 = icmp eq i8 %390, 17
  br i1 %391, label %460, label %392

392:                                              ; preds = %386
  %393 = load i64, ptr %1, align 8
  %394 = and i64 %393, 65535
  %395 = icmp eq i64 %394, 14
  br i1 %395, label %396, label %398

396:                                              ; preds = %392
  %397 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %403

398:                                              ; preds = %392
  %399 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %400 = load i32, ptr %399, align 4
  %401 = lshr i32 %400, 16
  %402 = and i32 %401, 255
  br label %403

403:                                              ; preds = %398, %396
  %404 = phi i32 [ %397, %396 ], [ %402, %398 ]
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !114
  %408 = icmp eq i8 %407, 13
  br i1 %408, label %460, label %409

409:                                              ; preds = %403
  %410 = load i64, ptr %1, align 8
  %411 = and i64 %410, 65535
  %412 = icmp eq i64 %411, 14
  br i1 %412, label %413, label %415

413:                                              ; preds = %409
  %414 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %420

415:                                              ; preds = %409
  %416 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %417 = load i32, ptr %416, align 4
  %418 = lshr i32 %417, 16
  %419 = and i32 %418, 255
  br label %420

420:                                              ; preds = %415, %413
  %421 = phi i32 [ %414, %413 ], [ %419, %415 ]
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %422
  %424 = load i8, ptr %423, align 1, !tbaa !114
  %425 = icmp eq i8 %424, 14
  br i1 %425, label %460, label %426

426:                                              ; preds = %420
  %427 = load i64, ptr %1, align 8
  %428 = and i64 %427, 65535
  %429 = icmp eq i64 %428, 14
  br i1 %429, label %430, label %432

430:                                              ; preds = %426
  %431 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %437

432:                                              ; preds = %426
  %433 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %434 = load i32, ptr %433, align 4
  %435 = lshr i32 %434, 16
  %436 = and i32 %435, 255
  br label %437

437:                                              ; preds = %432, %430
  %438 = phi i32 [ %431, %430 ], [ %436, %432 ]
  %439 = zext i32 %438 to i64
  %440 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %439
  %441 = load i8, ptr %440, align 1, !tbaa !114
  %442 = icmp eq i8 %441, 15
  br i1 %442, label %460, label %443

443:                                              ; preds = %437
  %444 = load i64, ptr %1, align 8
  %445 = and i64 %444, 65535
  %446 = icmp eq i64 %445, 14
  br i1 %446, label %447, label %449

447:                                              ; preds = %443
  %448 = tail call i32 @vector_type_mode(ptr noundef %1) #22
  br label %454

449:                                              ; preds = %443
  %450 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %451 = load i32, ptr %450, align 4
  %452 = lshr i32 %451, 16
  %453 = and i32 %452, 255
  br label %454

454:                                              ; preds = %449, %447
  %455 = phi i32 [ %448, %447 ], [ %453, %449 ]
  %456 = zext i32 %455 to i64
  %457 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %456
  %458 = load i8, ptr %457, align 1, !tbaa !114
  %459 = icmp eq i8 %458, 16
  br i1 %459, label %460, label %462

460:                                              ; preds = %454, %437, %420, %403, %386, %369
  switch i32 %2, label %461 [
    i32 2, label %598
    i32 1, label %462
  ]

461:                                              ; preds = %460
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 392, ptr noundef nonnull @.str.1) #22
  br label %462

462:                                              ; preds = %454, %460, %461
  br label %598

463:                                              ; preds = %3
  %464 = load i64, ptr %1, align 8
  %465 = and i64 %464, 2097152
  %466 = icmp eq i64 %465, 0
  %467 = select i1 %466, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57)
  br label %598

468:                                              ; preds = %3
  %469 = load i64, ptr %1, align 8
  %470 = and i64 %469, 2097152
  %471 = icmp eq i64 %470, 0
  %472 = select i1 %471, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56)
  br label %598

473:                                              ; preds = %3
  br label %598

474:                                              ; preds = %3
  %475 = load i64, ptr %1, align 8
  %476 = and i64 %475, 2097152
  %477 = icmp eq i64 %476, 0
  %478 = select i1 %477, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 127), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 128)
  br label %598

479:                                              ; preds = %3
  %480 = load i64, ptr %1, align 8
  %481 = and i64 %480, 2097152
  %482 = icmp eq i64 %481, 0
  %483 = select i1 %482, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 129), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 130)
  br label %598

484:                                              ; preds = %3
  %485 = load i64, ptr %1, align 8
  %486 = and i64 %485, 2097152
  %487 = icmp eq i64 %486, 0
  %488 = select i1 %487, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 121), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 122)
  br label %598

489:                                              ; preds = %3
  %490 = load i64, ptr %1, align 8
  %491 = and i64 %490, 2097152
  %492 = icmp eq i64 %491, 0
  %493 = select i1 %492, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 123), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 124)
  br label %598

494:                                              ; preds = %3
  %495 = load i64, ptr %1, align 8
  %496 = and i64 %495, 2097152
  %497 = icmp eq i64 %496, 0
  %498 = select i1 %497, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 125), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 126)
  br label %598

499:                                              ; preds = %3
  br label %598

500:                                              ; preds = %3
  br label %598

501:                                              ; preds = %3
  %502 = load i64, ptr %1, align 8
  %503 = and i64 %502, 2097152
  %504 = icmp eq i64 %503, 0
  %505 = select i1 %504, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 143), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 141)
  br label %598

506:                                              ; preds = %3
  %507 = load i64, ptr %1, align 8
  %508 = and i64 %507, 2097152
  %509 = icmp eq i64 %508, 0
  %510 = select i1 %509, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 144), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 142)
  br label %598

511:                                              ; preds = %3
  %512 = load i64, ptr %1, align 8
  %513 = and i64 %512, 2097152
  %514 = icmp eq i64 %513, 0
  %515 = select i1 %514, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 145), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 147)
  br label %598

516:                                              ; preds = %3
  %517 = load i64, ptr %1, align 8
  %518 = and i64 %517, 2097152
  %519 = icmp eq i64 %518, 0
  %520 = select i1 %519, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 146), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 148)
  br label %598

521:                                              ; preds = %3
  %522 = load i64, ptr %1, align 8
  %523 = and i64 %522, 2097152
  %524 = icmp eq i64 %523, 0
  %525 = select i1 %524, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 149), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 151)
  br label %598

526:                                              ; preds = %3
  %527 = load i64, ptr %1, align 8
  %528 = and i64 %527, 2097152
  %529 = icmp eq i64 %528, 0
  %530 = select i1 %529, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 150), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 152)
  br label %598

531:                                              ; preds = %3
  br label %598

532:                                              ; preds = %3
  %533 = load i64, ptr %1, align 8
  %534 = and i64 %533, 2097152
  %535 = icmp eq i64 %534, 0
  %536 = select i1 %535, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 155), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 154)
  br label %598

537:                                              ; preds = %3
  %538 = load i64, ptr %1, align 8
  %539 = and i64 %538, 2097152
  %540 = icmp eq i64 %539, 0
  %541 = select i1 %540, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 156), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 157)
  br label %598

542:                                              ; preds = %3
  %543 = load i64, ptr %1, align 8
  %544 = trunc i64 %543 to i32
  %545 = and i32 %544, 65535
  %546 = add nsw i32 %545, -6
  %547 = icmp ult i32 %546, 3
  br i1 %547, label %548, label %554, !prof !136

548:                                              ; preds = %542
  %549 = and i64 %543, 2097152
  %550 = icmp ne i64 %549, 0
  %551 = load i32, ptr @flag_trapv, align 4
  %552 = icmp eq i32 %551, 0
  %553 = select i1 %550, i1 true, i1 %552, !prof !137
  br label %554

554:                                              ; preds = %542, %548
  %555 = phi i1 [ %553, %548 ], [ true, %542 ]
  switch i32 %0, label %597 [
    i32 66, label %556
    i32 63, label %556
    i32 64, label %565
    i32 65, label %574
    i32 79, label %583
    i32 82, label %592
    i32 181, label %598
    i32 182, label %594
    i32 183, label %595
    i32 184, label %596
  ], !prof !138

556:                                              ; preds = %554, %554
  %557 = and i64 %543, 2147483648
  %558 = icmp eq i64 %557, 0
  br i1 %558, label %563, label %559, !prof !139

559:                                              ; preds = %556
  %560 = and i64 %543, 2097152
  %561 = icmp eq i64 %560, 0
  %562 = select i1 %561, ptr @optab_table, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 1)
  br label %598

563:                                              ; preds = %556
  %564 = select i1 %555, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13), !prof !139
  br label %598

565:                                              ; preds = %554
  %566 = and i64 %543, 2147483648
  %567 = icmp eq i64 %566, 0
  br i1 %567, label %572, label %568, !prof !140

568:                                              ; preds = %565
  %569 = and i64 %543, 2097152
  %570 = icmp eq i64 %569, 0
  %571 = select i1 %570, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 2), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 3)
  br label %598

572:                                              ; preds = %565
  %573 = select i1 %555, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15), !prof !140
  br label %598

574:                                              ; preds = %554
  %575 = and i64 %543, 2147483648
  %576 = icmp eq i64 %575, 0
  br i1 %576, label %581, label %577

577:                                              ; preds = %574
  %578 = and i64 %543, 2097152
  %579 = icmp eq i64 %578, 0
  %580 = select i1 %579, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 4), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 5)
  br label %598

581:                                              ; preds = %574
  %582 = select i1 %555, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17)
  br label %598

583:                                              ; preds = %554
  %584 = and i64 %543, 2147483648
  %585 = icmp eq i64 %584, 0
  br i1 %585, label %590, label %586

586:                                              ; preds = %583
  %587 = and i64 %543, 2097152
  %588 = icmp eq i64 %587, 0
  %589 = select i1 %588, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 8), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 9)
  br label %598

590:                                              ; preds = %583
  %591 = select i1 %555, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65)
  br label %598

592:                                              ; preds = %554
  %593 = select i1 %555, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67)
  br label %598

594:                                              ; preds = %554
  br label %598

595:                                              ; preds = %554
  br label %598

596:                                              ; preds = %554
  br label %598

597:                                              ; preds = %554
  br label %598

598:                                              ; preds = %554, %460, %355, %131, %3, %597, %596, %595, %594, %592, %590, %586, %581, %577, %572, %568, %563, %559, %537, %532, %531, %526, %521, %516, %511, %506, %501, %500, %499, %494, %489, %484, %479, %474, %473, %468, %463, %462, %357, %248, %242, %135, %125, %20, %18, %7, %6, %5, %4
  %599 = phi ptr [ null, %597 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 136), %596 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 135), %595 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134), %594 ], [ %593, %592 ], [ %589, %586 ], [ %591, %590 ], [ %580, %577 ], [ %582, %581 ], [ %571, %568 ], [ %573, %572 ], [ %562, %559 ], [ %564, %563 ], [ %541, %537 ], [ %536, %532 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 153), %531 ], [ %530, %526 ], [ %525, %521 ], [ %520, %516 ], [ %515, %511 ], [ %510, %506 ], [ %505, %501 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 139), %500 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 138), %499 ], [ %498, %494 ], [ %493, %489 ], [ %488, %484 ], [ %483, %479 ], [ %478, %474 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 140), %473 ], [ %472, %468 ], [ %467, %463 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48), %462 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47), %357 ], [ %246, %242 ], [ %252, %248 ], [ %129, %125 ], [ %138, %135 ], [ %19, %18 ], [ %21, %20 ], [ %11, %7 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), %6 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), %5 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), %4 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), %3 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44), %131 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 52), %355 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 53), %460 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133), %554 ]
  ret ptr %599
}

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_widen_pattern_expr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 !prof !102 {
  %7 = load i32, ptr %0, align 8, !tbaa !141
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !114
  %11 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !143
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 14
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = tail call i32 @vector_type_mode(ptr noundef nonnull %14) #22
  br label %25

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  br label %25

25:                                               ; preds = %20, %18
  %26 = phi i32 [ %19, %18 ], [ %24, %20 ]
  %27 = load i32, ptr %0, align 8, !tbaa !141
  %28 = load ptr, ptr %13, align 8, !tbaa !114
  %29 = tail call ptr @optab_for_tree_code(i32 noundef %27, ptr noundef %28, i32 noundef 0)
  %30 = sext i32 %26 to i64
  %31 = getelementptr inbounds %struct.optab_d, ptr %29, i64 0, i32 4, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !144
  %33 = icmp eq i32 %32, 2956
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 551, ptr noundef nonnull @.str.1) #22
  br label %35

35:                                               ; preds = %25, %34
  %36 = sext i32 %32 to i64
  %37 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %36, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !146
  %39 = getelementptr inbounds %struct.insn_operand_data, ptr %38, i64 1, i32 2
  %40 = load i16, ptr %39, align 8
  %41 = zext i16 %40 to i32
  %42 = icmp ugt i8 %10, 1
  br i1 %42, label %43, label %63

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !148
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !114
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 14
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = tail call i32 @vector_type_mode(ptr noundef nonnull %47) #22
  br label %58

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  br label %58

58:                                               ; preds = %53, %51
  %59 = phi i32 [ %52, %51 ], [ %57, %53 ]
  %60 = getelementptr inbounds %struct.insn_operand_data, ptr %38, i64 2, i32 2
  %61 = load i16, ptr %60, align 8
  %62 = zext i16 %61 to i32
  br label %63

63:                                               ; preds = %58, %35
  %64 = phi i32 [ %59, %58 ], [ 0, %35 ]
  %65 = phi i32 [ %62, %58 ], [ 0, %35 ]
  switch i8 %10, label %92 [
    i8 2, label %93
    i8 3, label %66
  ]

66:                                               ; preds = %63
  %67 = icmp eq i32 %64, %26
  br i1 %67, label %69, label %68

68:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 569, ptr noundef nonnull @.str.1) #22
  br label %69

69:                                               ; preds = %66, %68
  %70 = icmp eq ptr %2, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 570, ptr noundef nonnull @.str.1) #22
  br label %72

72:                                               ; preds = %69, %71
  %73 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !149
  %75 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !114
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 14
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = tail call i32 @vector_type_mode(ptr noundef nonnull %76) #22
  br label %87

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.tree_type, ptr %76, i64 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 255
  br label %87

87:                                               ; preds = %82, %80
  %88 = phi i32 [ %81, %80 ], [ %86, %82 ]
  %89 = getelementptr inbounds %struct.insn_operand_data, ptr %38, i64 3, i32 2
  %90 = load i16, ptr %89, align 8
  %91 = zext i16 %90 to i32
  br label %93

92:                                               ; preds = %63
  br label %93

93:                                               ; preds = %63, %92, %87
  %94 = phi i32 [ %91, %87 ], [ %65, %63 ], [ 0, %92 ]
  %95 = phi i32 [ %88, %87 ], [ %64, %63 ], [ 0, %92 ]
  %96 = icmp eq ptr %3, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.insn_operand_data, ptr %38, i64 0, i32 2
  %99 = load i16, ptr %98, align 8
  %100 = zext i16 %99 to i32
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi i32 [ %94, %93 ], [ %100, %97 ]
  %103 = phi i32 [ %95, %93 ], [ %100, %97 ]
  %104 = icmp eq ptr %4, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %38, align 8, !tbaa !150
  %107 = tail call i32 %106(ptr noundef nonnull %4, i32 noundef %103) #22
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105, %101
  %110 = tail call ptr @gen_reg_rtx(i32 noundef %103) #22
  br label %111

111:                                              ; preds = %105, %109
  %112 = phi ptr [ %110, %109 ], [ %4, %105 ]
  %113 = load i32, ptr %1, align 8
  %114 = lshr i32 %113, 16
  %115 = and i32 %114, 255
  %116 = icmp ne i32 %115, %41
  %117 = icmp ne i16 %40, 0
  %118 = and i1 %117, %116
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = icmp eq i32 %115, 0
  %121 = select i1 %120, i32 %26, i32 %115
  %122 = tail call ptr @convert_modes(i32 noundef %41, i32 noundef %121, ptr noundef nonnull %1, i32 noundef %5) #22
  br label %123

123:                                              ; preds = %119, %111
  %124 = phi ptr [ %122, %119 ], [ %1, %111 ]
  %125 = icmp eq ptr %2, null
  br i1 %125, label %137, label %126

126:                                              ; preds = %123
  %127 = load i32, ptr %2, align 8
  %128 = lshr i32 %127, 16
  %129 = and i32 %128, 255
  %130 = icmp ne i32 %129, %65
  %131 = icmp ne i32 %65, 0
  %132 = and i1 %131, %130
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = icmp eq i32 %129, 0
  %135 = select i1 %134, i32 %64, i32 %129
  %136 = tail call ptr @convert_modes(i32 noundef %65, i32 noundef %135, ptr noundef nonnull %2, i32 noundef %5) #22
  br label %137

137:                                              ; preds = %126, %133, %123
  %138 = phi ptr [ %136, %133 ], [ %2, %126 ], [ null, %123 ]
  br i1 %96, label %150, label %139

139:                                              ; preds = %137
  %140 = load i32, ptr %3, align 8
  %141 = lshr i32 %140, 16
  %142 = and i32 %141, 255
  %143 = icmp ne i32 %142, %102
  %144 = icmp ne i32 %102, 0
  %145 = and i1 %144, %143
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = icmp eq i32 %142, 0
  %148 = select i1 %147, i32 %103, i32 %142
  %149 = tail call ptr @convert_modes(i32 noundef %102, i32 noundef %148, ptr noundef nonnull %3, i32 noundef %5) #22
  br label %150

150:                                              ; preds = %139, %146, %137
  %151 = phi ptr [ %149, %146 ], [ %3, %139 ], [ null, %137 ]
  %152 = getelementptr inbounds %struct.insn_operand_data, ptr %38, i64 1
  %153 = load ptr, ptr %152, align 8, !tbaa !150
  %154 = tail call i32 %153(ptr noundef %124, i32 noundef %41) #22
  %155 = icmp eq i32 %154, 0
  %156 = and i1 %117, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = tail call ptr @copy_to_mode_reg(i32 noundef %41, ptr noundef %124) #22
  br label %159

159:                                              ; preds = %157, %150
  %160 = phi ptr [ %158, %157 ], [ %124, %150 ]
  br i1 %125, label %190, label %161

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.insn_operand_data, ptr %38, i64 2
  %163 = load ptr, ptr %162, align 8, !tbaa !150
  %164 = tail call i32 %163(ptr noundef %138, i32 noundef %65) #22
  %165 = icmp eq i32 %164, 0
  %166 = icmp ne i32 %65, 0
  %167 = select i1 %165, i1 %166, i1 false
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = tail call ptr @copy_to_mode_reg(i32 noundef %65, ptr noundef %138) #22
  br label %170

170:                                              ; preds = %168, %161
  %171 = phi ptr [ %169, %168 ], [ %138, %161 ]
  br i1 %96, label %186, label %172

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.insn_operand_data, ptr %38, i64 3
  %174 = load ptr, ptr %173, align 8, !tbaa !150
  %175 = tail call i32 %174(ptr noundef %151, i32 noundef %102) #22
  %176 = icmp eq i32 %175, 0
  %177 = icmp ne i32 %102, 0
  %178 = select i1 %176, i1 %177, i1 false
  br i1 %178, label %179, label %181

179:                                              ; preds = %172
  %180 = tail call ptr @copy_to_mode_reg(i32 noundef %102, ptr noundef %151) #22
  br label %181

181:                                              ; preds = %179, %172
  %182 = phi ptr [ %180, %179 ], [ %151, %172 ]
  %183 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %36, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !152
  %185 = tail call ptr (ptr, ...) %184(ptr noundef %112, ptr noundef %160, ptr noundef %171, ptr noundef %182) #22
  br label %209

186:                                              ; preds = %170
  %187 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %36, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !152
  %189 = tail call ptr (ptr, ...) %188(ptr noundef %112, ptr noundef %160, ptr noundef %171) #22
  br label %209

190:                                              ; preds = %159
  br i1 %96, label %205, label %191

191:                                              ; preds = %190
  %192 = getelementptr inbounds %struct.insn_operand_data, ptr %38, i64 2
  %193 = load ptr, ptr %192, align 8, !tbaa !150
  %194 = tail call i32 %193(ptr noundef %151, i32 noundef %102) #22
  %195 = icmp eq i32 %194, 0
  %196 = icmp ne i32 %102, 0
  %197 = select i1 %195, i1 %196, i1 false
  br i1 %197, label %198, label %200

198:                                              ; preds = %191
  %199 = tail call ptr @copy_to_mode_reg(i32 noundef %102, ptr noundef %151) #22
  br label %200

200:                                              ; preds = %198, %191
  %201 = phi ptr [ %199, %198 ], [ %151, %191 ]
  %202 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %36, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !152
  %204 = tail call ptr (ptr, ...) %203(ptr noundef %112, ptr noundef %160, ptr noundef %201) #22
  br label %209

205:                                              ; preds = %190
  %206 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %36, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !152
  %208 = tail call ptr (ptr, ...) %207(ptr noundef %112, ptr noundef %160) #22
  br label %209

209:                                              ; preds = %200, %205, %181, %186
  %210 = phi ptr [ %185, %181 ], [ %189, %186 ], [ %204, %200 ], [ %208, %205 ]
  %211 = tail call ptr @emit_insn(ptr noundef %210) #22
  ret ptr %112
}

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

declare ptr @convert_modes(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @copy_to_mode_reg(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_ternary_op(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #9 !prof !102 {
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds %struct.optab_d, ptr %1, i64 0, i32 4, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !144
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !146
  %14 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 1, i32 2
  %15 = load i16, ptr %14, align 8
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 2, i32 2
  %18 = load i16, ptr %17, align 8
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 3, i32 2
  %21 = load i16, ptr %20, align 8
  %22 = zext i16 %21 to i32
  %23 = icmp eq i32 %10, 2956
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 684, ptr noundef nonnull @.str.1) #22
  br label %25

25:                                               ; preds = %7, %24
  %26 = icmp eq ptr %5, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %13, align 8, !tbaa !150
  %29 = tail call i32 %28(ptr noundef nonnull %5, i32 noundef %0) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %25
  %32 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %33

33:                                               ; preds = %27, %31
  %34 = phi ptr [ %32, %31 ], [ %5, %27 ]
  %35 = load i32, ptr %2, align 8
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = icmp ne i32 %37, %16
  %39 = icmp ne i16 %15, 0
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = icmp eq i32 %37, 0
  %43 = select i1 %42, i32 %0, i32 %37
  %44 = tail call ptr @convert_modes(i32 noundef %16, i32 noundef %43, ptr noundef nonnull %2, i32 noundef %6) #22
  br label %45

45:                                               ; preds = %41, %33
  %46 = phi ptr [ %44, %41 ], [ %2, %33 ]
  %47 = load i32, ptr %3, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = icmp ne i32 %49, %19
  %51 = icmp ne i16 %18, 0
  %52 = and i1 %51, %50
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = icmp eq i32 %49, 0
  %55 = select i1 %54, i32 %0, i32 %49
  %56 = tail call ptr @convert_modes(i32 noundef %19, i32 noundef %55, ptr noundef nonnull %3, i32 noundef %6) #22
  br label %57

57:                                               ; preds = %53, %45
  %58 = phi ptr [ %56, %53 ], [ %3, %45 ]
  %59 = load i32, ptr %4, align 8
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = icmp ne i32 %61, %22
  %63 = icmp ne i16 %21, 0
  %64 = and i1 %63, %62
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = icmp eq i32 %61, 0
  %67 = select i1 %66, i32 %0, i32 %61
  %68 = tail call ptr @convert_modes(i32 noundef %22, i32 noundef %67, ptr noundef nonnull %4, i32 noundef %6) #22
  br label %69

69:                                               ; preds = %65, %57
  %70 = phi ptr [ %68, %65 ], [ %4, %57 ]
  %71 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !150
  %73 = tail call i32 %72(ptr noundef %46, i32 noundef %16) #22
  %74 = icmp eq i32 %73, 0
  %75 = and i1 %39, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = tail call ptr @copy_to_mode_reg(i32 noundef %16, ptr noundef %46) #22
  br label %78

78:                                               ; preds = %76, %69
  %79 = phi ptr [ %77, %76 ], [ %46, %69 ]
  %80 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !150
  %82 = tail call i32 %81(ptr noundef %58, i32 noundef %19) #22
  %83 = icmp eq i32 %82, 0
  %84 = and i1 %51, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = tail call ptr @copy_to_mode_reg(i32 noundef %19, ptr noundef %58) #22
  br label %87

87:                                               ; preds = %85, %78
  %88 = phi ptr [ %86, %85 ], [ %58, %78 ]
  %89 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 3
  %90 = load ptr, ptr %89, align 8, !tbaa !150
  %91 = tail call i32 %90(ptr noundef %70, i32 noundef %22) #22
  %92 = icmp eq i32 %91, 0
  %93 = and i1 %63, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = tail call ptr @copy_to_mode_reg(i32 noundef %22, ptr noundef %70) #22
  br label %96

96:                                               ; preds = %94, %87
  %97 = phi ptr [ %95, %94 ], [ %70, %87 ]
  %98 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !152
  %100 = tail call ptr (ptr, ...) %99(ptr noundef %34, ptr noundef %79, ptr noundef %88, ptr noundef %97) #22
  %101 = tail call ptr @emit_insn(ptr noundef %100) #22
  ret ptr %34
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @force_expand_binop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #9 !prof !102 {
  %8 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %8, %4
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @emit_move_insn(ptr noundef %4, ptr noundef nonnull %8) #22
  br label %14

14:                                               ; preds = %10, %12, %7
  %15 = phi i8 [ 0, %7 ], [ 1, %12 ], [ 1, %10 ]
  ret i8 %15
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @simplify_expand_binop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #9 !prof !102 {
  %8 = load i32, ptr %2, align 8
  %9 = and i32 %8, 65535
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !118
  %13 = icmp eq i32 %12, 9
  br i1 %13, label %14, label %25

14:                                               ; preds = %7
  %15 = load i32, ptr %3, align 8
  %16 = and i32 %15, 65535
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !118
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, ptr %1, align 8, !tbaa !153
  %23 = tail call ptr @simplify_binary_operation(i32 noundef %22, i32 noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %14, %7
  %26 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6)
  br label %27

27:                                               ; preds = %21, %25
  %28 = phi ptr [ %23, %21 ], [ %26, %25 ]
  ret ptr %28
}

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @expand_vec_shift_expr(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !102 {
  %3 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !154
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 14
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #22
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ %9, %8 ], [ %14, %10 ]
  %17 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !143
  %19 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !148
  %21 = load i32, ptr %0, align 8, !tbaa !141
  switch i32 %21, label %23 [
    i32 171, label %24
    i32 170, label %22
  ]

22:                                               ; preds = %15
  br label %24

23:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 801, ptr noundef nonnull @.str.1) #22
  unreachable

24:                                               ; preds = %15, %22
  %25 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 138), %22 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 139), %15 ]
  %26 = sext i32 %16 to i64
  %27 = getelementptr inbounds %struct.optab_d, ptr %25, i64 0, i32 4, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !144
  %29 = icmp eq i32 %28, 2956
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 805, ptr noundef nonnull @.str.1) #22
  br label %31

31:                                               ; preds = %24, %30
  %32 = zext i32 %28 to i64
  %33 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %32, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !146
  %35 = getelementptr inbounds %struct.insn_operand_data, ptr %34, i64 1, i32 2
  %36 = load i16, ptr %35, align 8
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.insn_operand_data, ptr %34, i64 2, i32 2
  %39 = load i16, ptr %38, align 8
  %40 = zext i16 %39 to i32
  %41 = tail call ptr @expand_expr_real(ptr noundef %18, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #22
  %42 = getelementptr inbounds %struct.insn_operand_data, ptr %34, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !150
  %44 = tail call i32 %43(ptr noundef %41, i32 noundef %37) #22
  %45 = icmp eq i32 %44, 0
  %46 = icmp ne i16 %36, 0
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = tail call ptr @force_reg(i32 noundef %37, ptr noundef %41) #22
  br label %50

50:                                               ; preds = %48, %31
  %51 = phi ptr [ %49, %48 ], [ %41, %31 ]
  %52 = tail call ptr @expand_expr_real(ptr noundef %20, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #22
  %53 = getelementptr inbounds %struct.insn_operand_data, ptr %34, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !150
  %55 = tail call i32 %54(ptr noundef %52, i32 noundef %40) #22
  %56 = icmp eq i32 %55, 0
  %57 = icmp ne i16 %39, 0
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = tail call ptr @force_reg(i32 noundef %40, ptr noundef %52) #22
  br label %61

61:                                               ; preds = %59, %50
  %62 = phi ptr [ %60, %59 ], [ %52, %50 ]
  %63 = icmp eq ptr %1, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %34, align 8, !tbaa !150
  %66 = tail call i32 %65(ptr noundef nonnull %1, i32 noundef %16) #22
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %61
  %69 = tail call ptr @gen_reg_rtx(i32 noundef %16) #22
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi ptr [ %1, %64 ], [ %69, %68 ]
  %72 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %32, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !152
  %74 = tail call ptr (ptr, ...) %73(ptr noundef %71, ptr noundef %51, ptr noundef %62) #22
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 826, ptr noundef nonnull @.str.1) #22
  br label %77

77:                                               ; preds = %70, %76
  %78 = tail call ptr @emit_insn(ptr noundef %74) #22
  ret ptr %71
}

declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @expand_simple_binop(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #10 !prof !155 {
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !103
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !156

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1322, ptr noundef nonnull @.str.1) #22
  br label %13

13:                                               ; preds = %7, %12
  %14 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef %10, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6)
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expand_binop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #10 !prof !157 {
  %8 = icmp eq i32 %6, 1
  %9 = icmp eq i32 %6, 3
  %10 = or i1 %8, %9
  %11 = select i1 %10, i32 2, i32 %6, !prof !158
  %12 = tail call ptr @get_last_insn() #22
  %13 = zext i32 %0 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !114
  %16 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14)
  br i1 %16, label %17, label %23, !prof !159

17:                                               ; preds = %7
  %18 = load i32, ptr %3, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 30
  br i1 %20, label %21, label %23, !prof !160

21:                                               ; preds = %17
  %22 = tail call ptr @negate_rtx(i32 noundef %0, ptr noundef nonnull %3) #22
  br label %23

23:                                               ; preds = %21, %17, %7
  %24 = phi ptr [ %22, %21 ], [ %3, %17 ], [ %3, %7 ]
  %25 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), %21 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), %17 ], [ %1, %7 ]
  %26 = tail call ptr @get_last_insn() #22
  %27 = icmp eq i32 %6, 4
  br i1 %27, label %36, label %28, !prof !161

28:                                               ; preds = %23
  %29 = sext i32 %0 to i64
  %30 = getelementptr inbounds %struct.optab_d, ptr %25, i64 0, i32 4, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !144
  %32 = icmp eq i32 %31, 2956
  br i1 %32, label %36, label %33, !prof !161

33:                                               ; preds = %28
  %34 = tail call fastcc ptr @expand_binop_directly(i32 noundef %0, ptr noundef %25, ptr noundef %2, ptr noundef %24, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %26)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %760, !prof !161

36:                                               ; preds = %33, %28, %23
  %37 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47)
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = sext i32 %0 to i64
  %40 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48, i32 4, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !144
  %42 = icmp eq i32 %41, 2956
  br i1 %42, label %43, label %52

43:                                               ; preds = %38, %36
  %44 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48)
  br i1 %44, label %45, label %88

45:                                               ; preds = %43
  %46 = sext i32 %0 to i64
  %47 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47, i32 4, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !144
  %49 = icmp ne i32 %48, 2956
  %50 = icmp eq i8 %15, 2
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %54, label %88

52:                                               ; preds = %38
  %53 = icmp eq i8 %15, 2
  br i1 %53, label %54, label %88

54:                                               ; preds = %45, %52
  %55 = select i1 %37, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47)
  %56 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %57 = load i8, ptr %56, align 1, !tbaa !114
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 3
  %60 = load i32, ptr %24, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 30
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = zext nneg i32 %59 to i64
  %65 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !114
  %67 = sub nsw i64 %64, %66
  %68 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %67) #22
  br label %84

69:                                               ; preds = %54
  %70 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 53), align 8, !tbaa !162
  %71 = tail call i64 %70(i32 noundef %0) #22
  %72 = add nsw i32 %59, -1
  %73 = zext i32 %72 to i64
  %74 = icmp eq i64 %71, %73
  %75 = load i32, ptr %24, align 8
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 255
  br i1 %74, label %78, label %80

78:                                               ; preds = %69
  %79 = tail call ptr @negate_rtx(i32 noundef %77, ptr noundef nonnull %24) #22
  br label %84

80:                                               ; preds = %69
  %81 = zext nneg i32 %59 to i64
  %82 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %81) #22
  %83 = tail call ptr @expand_binop(i32 noundef %77, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %82, ptr noundef nonnull %24, ptr noundef null, i32 noundef %5, i32 noundef 0)
  br label %84

84:                                               ; preds = %78, %80, %63
  %85 = phi ptr [ %68, %63 ], [ %79, %78 ], [ %83, %80 ]
  %86 = tail call fastcc ptr @expand_binop_directly(i32 noundef %0, ptr noundef nonnull %55, ptr noundef %2, ptr noundef %85, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %26)
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %760

88:                                               ; preds = %84, %52, %45, %43
  %89 = phi ptr [ undef, %45 ], [ undef, %43 ], [ undef, %52 ], [ %86, %84 ]
  %90 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16)
  br i1 %90, label %91, label %114

91:                                               ; preds = %88
  %92 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %13
  %93 = load i8, ptr %92, align 1, !tbaa !114
  %94 = zext i8 %93 to i32
  %95 = icmp eq i8 %93, 0
  br i1 %95, label %114, label %96

96:                                               ; preds = %91
  %97 = icmp eq i32 %5, 0
  %98 = select i1 %97, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4)
  %99 = zext i8 %93 to i64
  %100 = getelementptr inbounds [87 x %struct.optab_handlers], ptr %98, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !144
  %102 = icmp eq i32 %101, 2956
  br i1 %102, label %114, label %103

103:                                              ; preds = %96
  %104 = select i1 %97, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21)
  %105 = tail call ptr @expand_binop(i32 noundef %94, ptr noundef nonnull %104, ptr noundef %2, ptr noundef %24, ptr noundef null, i32 noundef %5, i32 noundef 0)
  %106 = icmp eq ptr %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  %108 = icmp eq i8 %15, 2
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = load ptr, ptr @rtl_hooks, align 8, !tbaa !174
  %111 = tail call ptr %110(i32 noundef %0, ptr noundef nonnull %105) #22
  br label %760

112:                                              ; preds = %107
  %113 = tail call ptr @convert_to_mode(i32 noundef %0, ptr noundef nonnull %105, i32 noundef %5) #22
  br label %760

114:                                              ; preds = %103, %96, %91, %88
  %115 = icmp eq i8 %15, 2
  %116 = and i8 %15, -2
  %117 = icmp eq i8 %116, 8
  %118 = icmp eq i8 %15, 11
  %119 = or i1 %118, %117
  %120 = and i8 %15, -4
  %121 = icmp eq i8 %120, 4
  %122 = or i1 %121, %119
  %123 = or i1 %115, %122
  %124 = icmp ugt i32 %6, 1
  %125 = and i1 %124, %123
  br i1 %125, label %126, label %202

126:                                              ; preds = %114
  %127 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %13
  %128 = load i8, ptr %127, align 1, !tbaa !114
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %202, label %130

130:                                              ; preds = %126
  %131 = icmp eq i32 %5, 0
  %132 = select i1 %131, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4)
  %133 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42)
  %134 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41)
  %135 = select i1 %133, i1 true, i1 %134
  %136 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43)
  %137 = select i1 %135, i1 true, i1 %136
  %138 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12)
  %139 = select i1 %137, i1 true, i1 %138
  %140 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14)
  %141 = select i1 %139, i1 true, i1 %140
  %142 = or i1 %90, %141
  %143 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44)
  %144 = select i1 %142, i1 true, i1 %143
  %145 = and i1 %115, %144
  %146 = trunc i32 %5 to i8
  %147 = icmp ne ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44)
  %148 = select i1 %145, i1 %147, i1 false
  %149 = zext i1 %148 to i32
  br label %150

150:                                              ; preds = %130, %196
  %151 = phi i8 [ %128, %130 ], [ %200, %196 ]
  %152 = phi ptr [ %89, %130 ], [ %198, %196 ]
  %153 = phi ptr [ %4, %130 ], [ %197, %196 ]
  %154 = zext i8 %151 to i32
  %155 = zext i8 %151 to i64
  %156 = getelementptr inbounds %struct.optab_d, ptr %25, i64 0, i32 4, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !144
  %158 = icmp eq i32 %157, 2956
  br i1 %158, label %159, label %169

159:                                              ; preds = %150
  br i1 %90, label %160, label %196

160:                                              ; preds = %159
  %161 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %155
  %162 = load i8, ptr %161, align 1, !tbaa !114
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %196, label %164

164:                                              ; preds = %160
  %165 = zext i8 %162 to i64
  %166 = getelementptr inbounds [87 x %struct.optab_handlers], ptr %132, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !144
  %168 = icmp eq i32 %167, 2956
  br i1 %168, label %196, label %169

169:                                              ; preds = %164, %150
  br i1 %145, label %170, label %174

170:                                              ; preds = %169
  %171 = tail call fastcc ptr @avoid_expensive_constant(i32 noundef %0, ptr noundef %25, ptr noundef %2, i8 noundef zeroext %146)
  br i1 %143, label %174, label %172

172:                                              ; preds = %170
  %173 = tail call fastcc ptr @avoid_expensive_constant(i32 noundef %0, ptr noundef %25, ptr noundef %24, i8 noundef zeroext %146)
  br label %174

174:                                              ; preds = %170, %172, %169
  %175 = phi i32 [ 1, %172 ], [ 1, %170 ], [ 0, %169 ]
  %176 = phi ptr [ %173, %172 ], [ %24, %170 ], [ %24, %169 ]
  %177 = phi ptr [ %171, %172 ], [ %171, %170 ], [ %2, %169 ]
  %178 = tail call fastcc ptr @widen_operand(ptr noundef %177, i32 noundef %154, i32 noundef %0, i32 noundef %5, i32 noundef %175)
  %179 = tail call fastcc ptr @widen_operand(ptr noundef %176, i32 noundef %154, i32 noundef %0, i32 noundef %5, i32 noundef %149)
  %180 = tail call ptr @expand_binop(i32 noundef %154, ptr noundef %25, ptr noundef %178, ptr noundef %179, ptr noundef null, i32 noundef %5, i32 noundef 0)
  %181 = icmp eq ptr %180, null
  br i1 %181, label %192, label %182

182:                                              ; preds = %174
  br i1 %115, label %189, label %183

183:                                              ; preds = %182
  %184 = icmp eq ptr %153, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %183
  %186 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi ptr [ %186, %185 ], [ %153, %183 ]
  tail call void @convert_move(ptr noundef %188, ptr noundef nonnull %180, i32 noundef 0) #22
  br label %193

189:                                              ; preds = %182
  %190 = load ptr, ptr @rtl_hooks, align 8, !tbaa !174
  %191 = tail call ptr %190(i32 noundef %0, ptr noundef nonnull %180) #22
  br label %193

192:                                              ; preds = %174
  tail call void @delete_insns_since(ptr noundef %26) #22
  br label %193

193:                                              ; preds = %192, %189, %187
  %194 = phi ptr [ %188, %187 ], [ %153, %189 ], [ %153, %192 ]
  %195 = phi ptr [ %188, %187 ], [ %191, %189 ], [ %152, %192 ]
  br i1 %181, label %196, label %760

196:                                              ; preds = %159, %160, %164, %193
  %197 = phi ptr [ %194, %193 ], [ %153, %164 ], [ %153, %160 ], [ %153, %159 ]
  %198 = phi ptr [ %195, %193 ], [ %152, %164 ], [ %152, %160 ], [ %152, %159 ]
  %199 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %155
  %200 = load i8, ptr %199, align 1, !tbaa !114
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %150, !llvm.loop !176

202:                                              ; preds = %196, %126, %114
  %203 = phi ptr [ %4, %114 ], [ %4, %126 ], [ %197, %196 ]
  %204 = phi ptr [ %89, %114 ], [ %89, %126 ], [ %198, %196 ]
  %205 = load i32, ptr %25, align 8, !tbaa !153
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !118
  %209 = icmp ne i32 %208, 3
  %210 = icmp ne ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20)
  %211 = select i1 %209, i1 %210, i1 false
  %212 = icmp ne ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21)
  %213 = select i1 %211, i1 %212, i1 false
  %214 = icmp ne ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 18)
  %215 = select i1 %213, i1 %214, i1 false
  %216 = icmp ne ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 19)
  %217 = select i1 %215, i1 %216, i1 false
  br i1 %217, label %223, label %218

218:                                              ; preds = %202
  %219 = tail call fastcc zeroext i8 @swap_commutative_operands_with_target(ptr noundef %203, ptr noundef %2, ptr noundef %24)
  %220 = icmp eq i8 %219, 0
  %221 = select i1 %220, ptr %24, ptr %2
  %222 = select i1 %220, ptr %2, ptr %24
  br label %223

223:                                              ; preds = %218, %202
  %224 = phi ptr [ %24, %202 ], [ %221, %218 ]
  %225 = phi ptr [ %2, %202 ], [ %222, %218 ]
  %226 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41)
  %227 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42)
  %228 = select i1 %226, i1 true, i1 %227
  %229 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43)
  %230 = select i1 %228, i1 true, i1 %229
  %231 = and i1 %115, %230
  br i1 %231, label %232, label %284

232:                                              ; preds = %223
  %233 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %234 = load i8, ptr %233, align 1, !tbaa !114
  %235 = icmp ugt i8 %234, 4
  br i1 %235, label %236, label %284

236:                                              ; preds = %232
  %237 = load i32, ptr @word_mode, align 4, !tbaa !118
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.optab_d, ptr %25, i64 0, i32 4, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !144
  %241 = icmp eq i32 %240, 2956
  br i1 %241, label %284, label %242

242:                                              ; preds = %236
  %243 = icmp eq ptr %203, null
  %244 = icmp eq ptr %203, %225
  %245 = select i1 %243, i1 true, i1 %244
  %246 = icmp eq ptr %203, %224
  %247 = select i1 %245, i1 true, i1 %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %242
  %249 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %250

250:                                              ; preds = %242, %248
  %251 = phi ptr [ %249, %248 ], [ %203, %242 ]
  tail call void @start_sequence() #22
  %252 = load i8, ptr %233, align 1, !tbaa !114
  %253 = icmp ult i8 %252, 4
  br i1 %253, label %273, label %254

254:                                              ; preds = %250, %267
  %255 = phi i32 [ %268, %267 ], [ 0, %250 ]
  %256 = tail call ptr @operand_subword(ptr noundef %251, i32 noundef %255, i32 noundef 1, i32 noundef %0) #22
  %257 = load i32, ptr @word_mode, align 4, !tbaa !118
  %258 = tail call ptr @operand_subword_force(ptr noundef %225, i32 noundef %255, i32 noundef %0) #22
  %259 = tail call ptr @operand_subword_force(ptr noundef %224, i32 noundef %255, i32 noundef %0) #22
  %260 = tail call ptr @expand_binop(i32 noundef %257, ptr noundef nonnull %25, ptr noundef %258, ptr noundef %259, ptr noundef %256, i32 noundef %5, i32 noundef %11)
  %261 = icmp eq ptr %260, null
  %262 = icmp eq ptr %256, %260
  %263 = select i1 %261, i1 true, i1 %262
  br i1 %263, label %266, label %264

264:                                              ; preds = %254
  %265 = tail call ptr @emit_move_insn(ptr noundef %256, ptr noundef nonnull %260) #22
  br label %266

266:                                              ; preds = %264, %254
  br i1 %261, label %273, label %267

267:                                              ; preds = %266
  %268 = add nuw nsw i32 %255, 1
  %269 = load i8, ptr %233, align 1, !tbaa !114
  %270 = lshr i8 %269, 2
  %271 = zext nneg i8 %270 to i32
  %272 = icmp ult i32 %268, %271
  br i1 %272, label %254, label %273, !llvm.loop !177

273:                                              ; preds = %267, %266, %250
  %274 = phi i32 [ 0, %250 ], [ %268, %267 ], [ %255, %266 ]
  %275 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %276 = load i8, ptr %233, align 1, !tbaa !114
  %277 = lshr i8 %276, 2
  %278 = zext nneg i8 %277 to i32
  %279 = icmp eq i32 %274, %278
  br i1 %279, label %280, label %282

280:                                              ; preds = %273
  %281 = tail call ptr @emit_insn(ptr noundef %275) #22
  br label %282

282:                                              ; preds = %273, %280
  %283 = phi ptr [ %251, %280 ], [ %204, %273 ]
  br i1 %279, label %760, label %284

284:                                              ; preds = %282, %223, %236, %232
  %285 = phi ptr [ %203, %236 ], [ %203, %232 ], [ %203, %223 ], [ %251, %282 ]
  %286 = phi ptr [ %204, %236 ], [ %204, %232 ], [ %204, %223 ], [ %283, %282 ]
  %287 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45)
  %288 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44)
  %289 = select i1 %287, i1 true, i1 %288
  %290 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46)
  %291 = select i1 %289, i1 true, i1 %290
  %292 = and i1 %115, %291
  br i1 %292, label %293, label %377

293:                                              ; preds = %284
  %294 = load i32, ptr %224, align 8
  %295 = and i32 %294, 65535
  %296 = icmp eq i32 %295, 30
  br i1 %296, label %300, label %297

297:                                              ; preds = %293
  %298 = tail call zeroext i8 @optimize_insn_for_speed_p() #22
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %377, label %300

300:                                              ; preds = %297, %293
  %301 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %302 = load i8, ptr %301, align 1, !tbaa !114
  %303 = icmp eq i8 %302, 8
  br i1 %303, label %304, label %377

304:                                              ; preds = %300
  %305 = load i32, ptr @word_mode, align 4, !tbaa !118
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.optab_d, ptr %25, i64 0, i32 4, i64 %306
  %308 = load i32, ptr %307, align 4, !tbaa !144
  %309 = icmp eq i32 %308, 2956
  br i1 %309, label %377, label %310

310:                                              ; preds = %304
  %311 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 %306
  %312 = load i32, ptr %311, align 4, !tbaa !144
  %313 = icmp eq i32 %312, 2956
  br i1 %313, label %377, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 %306
  %316 = load i32, ptr %315, align 4, !tbaa !144
  %317 = icmp eq i32 %316, 2956
  br i1 %317, label %377, label %318

318:                                              ; preds = %314
  %319 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 53), align 8, !tbaa !162
  %320 = tail call i64 %319(i32 noundef %0) #22
  %321 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 53), align 8, !tbaa !162
  %322 = load i32, ptr @word_mode, align 4, !tbaa !118
  %323 = tail call i64 %321(i32 noundef %322) #22
  %324 = load i32, ptr %224, align 8
  %325 = lshr i32 %324, 16
  %326 = and i32 %325, 255
  %327 = icmp eq i32 %326, 0
  %328 = load i32, ptr @word_mode, align 4
  %329 = select i1 %327, i32 %328, i32 %326
  %330 = icmp ne i64 %320, 0
  %331 = and i32 %324, 65535
  %332 = icmp eq i32 %331, 30
  %333 = select i1 %330, i1 %332, i1 false
  br i1 %333, label %334, label %339

334:                                              ; preds = %318
  %335 = getelementptr inbounds %struct.rtx_def, ptr %224, i64 0, i32 1
  %336 = load i64, ptr %335, align 8, !tbaa !114
  %337 = and i64 %336, %320
  %338 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %337) #22
  br label %339

339:                                              ; preds = %334, %318
  %340 = phi ptr [ %338, %334 ], [ %224, %318 ]
  %341 = sext i32 %329 to i64
  %342 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %341
  %343 = load ptr, ptr %342, align 8, !tbaa !103
  %344 = icmp eq ptr %340, %343
  br i1 %344, label %373, label %345

345:                                              ; preds = %339
  br i1 %330, label %346, label %350

346:                                              ; preds = %345
  %347 = icmp eq i64 %323, 31
  %348 = icmp eq i64 %320, 63
  %349 = select i1 %347, i1 %348, i1 false
  br i1 %349, label %350, label %373

350:                                              ; preds = %346, %345
  %351 = icmp eq ptr %285, null
  %352 = icmp eq ptr %285, %225
  %353 = select i1 %351, i1 true, i1 %352
  %354 = icmp eq ptr %285, %340
  %355 = or i1 %353, %354
  br i1 %355, label %356, label %358

356:                                              ; preds = %350
  %357 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %358

358:                                              ; preds = %350, %356
  %359 = phi ptr [ %357, %356 ], [ %285, %350 ]
  tail call void @start_sequence() #22
  %360 = xor i1 %288, true
  %361 = zext i1 %360 to i32
  %362 = tail call ptr @operand_subword(ptr noundef %359, i32 noundef %361, i32 noundef 1, i32 noundef %0) #22
  %363 = zext i1 %288 to i32
  %364 = tail call ptr @operand_subword(ptr noundef %359, i32 noundef %363, i32 noundef 1, i32 noundef %0) #22
  %365 = tail call ptr @operand_subword_force(ptr noundef %225, i32 noundef %361, i32 noundef %0) #22
  %366 = tail call ptr @operand_subword_force(ptr noundef %225, i32 noundef %363, i32 noundef %0) #22
  %367 = tail call fastcc zeroext i8 @expand_doubleword_shift(i32 noundef %329, ptr noundef nonnull %25, ptr noundef %365, ptr noundef %366, ptr noundef %340, ptr noundef %362, ptr noundef %364, i32 noundef %5, i32 noundef %11, i64 noundef %323), !range !178
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %372, label %369

369:                                              ; preds = %358
  %370 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %371 = tail call ptr @emit_insn(ptr noundef %370) #22
  br label %373

372:                                              ; preds = %358
  tail call void @end_sequence() #22
  br label %373

373:                                              ; preds = %369, %372, %346, %339
  %374 = phi i1 [ false, %339 ], [ true, %346 ], [ true, %372 ], [ false, %369 ]
  %375 = phi ptr [ %285, %339 ], [ %285, %346 ], [ %359, %372 ], [ %359, %369 ]
  %376 = phi ptr [ %225, %339 ], [ %286, %346 ], [ %286, %372 ], [ %359, %369 ]
  br i1 %374, label %377, label %760

377:                                              ; preds = %297, %373, %284, %314, %310, %304, %300
  %378 = phi ptr [ %375, %373 ], [ %285, %314 ], [ %285, %310 ], [ %285, %304 ], [ %285, %300 ], [ %285, %284 ], [ %285, %297 ]
  %379 = phi ptr [ %340, %373 ], [ %224, %314 ], [ %224, %310 ], [ %224, %304 ], [ %224, %300 ], [ %224, %284 ], [ %224, %297 ]
  %380 = phi ptr [ %376, %373 ], [ %286, %314 ], [ %286, %310 ], [ %286, %304 ], [ %286, %300 ], [ %286, %284 ], [ %286, %297 ]
  %381 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48)
  %382 = select i1 %37, i1 true, i1 %381
  %383 = and i1 %115, %382
  br i1 %383, label %384, label %496

384:                                              ; preds = %377
  %385 = load i32, ptr %379, align 8
  %386 = and i32 %385, 65535
  %387 = icmp eq i32 %386, 30
  br i1 %387, label %388, label %496

388:                                              ; preds = %384
  %389 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %390 = load i8, ptr %389, align 1, !tbaa !114
  %391 = icmp eq i8 %390, 8
  br i1 %391, label %392, label %496

392:                                              ; preds = %388
  %393 = load i32, ptr @word_mode, align 4, !tbaa !118
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 %394
  %396 = load i32, ptr %395, align 4, !tbaa !144
  %397 = icmp eq i32 %396, 2956
  br i1 %397, label %496, label %398

398:                                              ; preds = %392
  %399 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 %394
  %400 = load i32, ptr %399, align 4, !tbaa !144
  %401 = icmp eq i32 %400, 2956
  br i1 %401, label %496, label %402

402:                                              ; preds = %398
  %403 = icmp eq ptr %378, null
  %404 = icmp eq ptr %378, %225
  %405 = select i1 %403, i1 true, i1 %404
  %406 = icmp eq ptr %378, %379
  %407 = select i1 %405, i1 true, i1 %406
  br i1 %407, label %412, label %408

408:                                              ; preds = %402
  %409 = load i32, ptr %378, align 8
  %410 = and i32 %409, 65535
  %411 = icmp eq i32 %410, 37
  br i1 %411, label %414, label %412

412:                                              ; preds = %408, %402
  %413 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %414

414:                                              ; preds = %412, %408
  %415 = phi ptr [ %413, %412 ], [ %378, %408 ]
  tail call void @start_sequence() #22
  %416 = getelementptr inbounds %struct.rtx_def, ptr %379, i64 0, i32 1
  %417 = load i64, ptr %416, align 8, !tbaa !114
  %418 = trunc i64 %417 to i32
  %419 = zext i1 %37 to i32
  %420 = xor i32 %419, 1
  %421 = tail call ptr @operand_subword(ptr noundef %415, i32 noundef %420, i32 noundef 1, i32 noundef %0) #22
  %422 = tail call ptr @operand_subword(ptr noundef %415, i32 noundef %419, i32 noundef 1, i32 noundef %0) #22
  %423 = tail call ptr @operand_subword_force(ptr noundef %225, i32 noundef %420, i32 noundef %0) #22
  %424 = tail call ptr @operand_subword_force(ptr noundef %225, i32 noundef %419, i32 noundef %0) #22
  %425 = icmp eq i32 %418, 32
  br i1 %425, label %426, label %430

426:                                              ; preds = %414
  %427 = tail call ptr @emit_move_insn(ptr noundef %421, ptr noundef %424) #22
  %428 = tail call ptr @emit_move_insn(ptr noundef %422, ptr noundef %423) #22
  %429 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !103
  br label %488

430:                                              ; preds = %414
  %431 = icmp slt i32 %418, 32
  %432 = xor i1 %37, %431
  %433 = select i1 %432, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44)
  %434 = select i1 %432, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45)
  %435 = icmp sgt i32 %418, 32
  br i1 %435, label %436, label %442

436:                                              ; preds = %430
  %437 = add i64 %417, 4294967264
  %438 = and i64 %437, 4294967295
  %439 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %438) #22
  %440 = shl i64 %417, 32
  %441 = sub i64 274877906944, %440
  br label %447

442:                                              ; preds = %430
  %443 = shl i64 %417, 32
  %444 = sub i64 137438953472, %443
  %445 = ashr exact i64 %444, 32
  %446 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %445) #22
  br label %447

447:                                              ; preds = %442, %436
  %448 = phi i64 [ %443, %442 ], [ %441, %436 ]
  %449 = phi ptr [ %446, %442 ], [ %439, %436 ]
  %450 = ashr exact i64 %448, 32
  %451 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %450) #22
  %452 = load i32, ptr @word_mode, align 4, !tbaa !118
  %453 = tail call ptr @expand_binop(i32 noundef %452, ptr noundef nonnull %434, ptr noundef %423, ptr noundef %449, ptr noundef null, i32 noundef %5, i32 noundef %11)
  %454 = load i32, ptr @word_mode, align 4, !tbaa !118
  %455 = tail call ptr @expand_binop(i32 noundef %454, ptr noundef nonnull %433, ptr noundef %424, ptr noundef %451, ptr noundef null, i32 noundef %5, i32 noundef %11)
  %456 = icmp ne ptr %453, null
  %457 = icmp ne ptr %455, null
  %458 = select i1 %456, i1 %457, i1 false
  br i1 %458, label %459, label %462

459:                                              ; preds = %447
  %460 = load i32, ptr @word_mode, align 4, !tbaa !118
  %461 = tail call ptr @expand_binop(i32 noundef %460, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef nonnull %453, ptr noundef nonnull %455, ptr noundef %422, i32 noundef %5, i32 noundef %11)
  br label %462

462:                                              ; preds = %447, %459
  %463 = phi ptr [ %461, %459 ], [ null, %447 ]
  %464 = icmp ne ptr %463, null
  %465 = icmp ne ptr %463, %422
  %466 = select i1 %464, i1 %465, i1 false
  br i1 %466, label %467, label %469

467:                                              ; preds = %462
  %468 = tail call ptr @emit_move_insn(ptr noundef %422, ptr noundef nonnull %463) #22
  br label %469

469:                                              ; preds = %467, %462
  %470 = load i32, ptr @word_mode, align 4, !tbaa !118
  %471 = tail call ptr @expand_binop(i32 noundef %470, ptr noundef nonnull %434, ptr noundef %424, ptr noundef %449, ptr noundef null, i32 noundef %5, i32 noundef %11)
  %472 = load i32, ptr @word_mode, align 4, !tbaa !118
  %473 = tail call ptr @expand_binop(i32 noundef %472, ptr noundef nonnull %433, ptr noundef %423, ptr noundef %451, ptr noundef null, i32 noundef %5, i32 noundef %11)
  %474 = icmp ne ptr %471, null
  %475 = select i1 %464, i1 %474, i1 false
  %476 = icmp ne ptr %473, null
  %477 = select i1 %475, i1 %476, i1 false
  br i1 %477, label %478, label %481

478:                                              ; preds = %469
  %479 = load i32, ptr @word_mode, align 4, !tbaa !118
  %480 = tail call ptr @expand_binop(i32 noundef %479, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef nonnull %471, ptr noundef nonnull %473, ptr noundef %421, i32 noundef %5, i32 noundef %11)
  br label %481

481:                                              ; preds = %478, %469
  %482 = phi ptr [ %480, %478 ], [ %463, %469 ]
  %483 = icmp eq ptr %482, null
  %484 = icmp eq ptr %482, %421
  %485 = select i1 %483, i1 true, i1 %484
  br i1 %485, label %488, label %486

486:                                              ; preds = %481
  %487 = tail call ptr @emit_move_insn(ptr noundef %421, ptr noundef nonnull %482) #22
  br label %488

488:                                              ; preds = %481, %486, %426
  %489 = phi ptr [ %429, %426 ], [ %482, %486 ], [ %482, %481 ]
  %490 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %491 = icmp eq ptr %489, null
  br i1 %491, label %494, label %492

492:                                              ; preds = %488
  %493 = tail call ptr @emit_insn(ptr noundef %490) #22
  br label %494

494:                                              ; preds = %488, %492
  %495 = phi ptr [ %415, %492 ], [ %380, %488 ]
  br i1 %491, label %496, label %760

496:                                              ; preds = %494, %377, %398, %392, %388, %384
  %497 = phi ptr [ %378, %398 ], [ %378, %392 ], [ %378, %388 ], [ %378, %384 ], [ %378, %377 ], [ %415, %494 ]
  %498 = phi ptr [ %380, %398 ], [ %380, %392 ], [ %380, %388 ], [ %380, %384 ], [ %380, %377 ], [ %495, %494 ]
  %499 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12)
  %500 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14)
  %501 = select i1 %499, i1 true, i1 %500
  %502 = and i1 %115, %501
  br i1 %502, label %503, label %614

503:                                              ; preds = %496
  %504 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %505 = load i8, ptr %504, align 1, !tbaa !114
  %506 = icmp ugt i8 %505, 7
  br i1 %506, label %507, label %614

507:                                              ; preds = %503
  %508 = load i32, ptr @word_mode, align 4, !tbaa !118
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.optab_d, ptr %25, i64 0, i32 4, i64 %509
  %511 = load i32, ptr %510, align 4, !tbaa !144
  %512 = icmp eq i32 %511, 2956
  br i1 %512, label %614, label %513

513:                                              ; preds = %507
  %514 = lshr i8 %505, 2
  %515 = zext nneg i8 %514 to i32
  %516 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %225) #22
  %517 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %379) #22
  %518 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  %519 = icmp eq ptr %497, null
  br i1 %519, label %524, label %520

520:                                              ; preds = %513
  %521 = load i32, ptr %497, align 8
  %522 = and i32 %521, 65535
  %523 = icmp eq i32 %522, 37
  br i1 %523, label %525, label %524

524:                                              ; preds = %520, %513
  br label %525

525:                                              ; preds = %524, %520
  %526 = phi ptr [ %518, %524 ], [ %497, %520 ]
  %527 = load i32, ptr %526, align 8
  %528 = and i32 %527, 65535
  %529 = icmp eq i32 %528, 37
  br i1 %529, label %530, label %532

530:                                              ; preds = %525
  %531 = tail call ptr @emit_clobber(ptr noundef %518) #22
  br label %532

532:                                              ; preds = %525, %530
  %533 = select i1 %499, i32 85, i32 83
  %534 = select i1 %499, i32 85, i32 83
  %535 = tail call i32 @llvm.umax.i32(i32 %515, i32 1)
  br label %536

536:                                              ; preds = %532, %586
  %537 = phi ptr [ null, %532 ], [ %583, %586 ]
  %538 = phi ptr [ null, %532 ], [ %582, %586 ]
  %539 = phi i32 [ 0, %532 ], [ %587, %586 ]
  %540 = tail call ptr @operand_subword(ptr noundef %518, i32 noundef %539, i32 noundef 1, i32 noundef %0) #22
  %541 = tail call ptr @operand_subword_force(ptr noundef %516, i32 noundef %539, i32 noundef %0) #22
  %542 = tail call ptr @operand_subword_force(ptr noundef %517, i32 noundef %539, i32 noundef %0) #22
  %543 = load i32, ptr @word_mode, align 4, !tbaa !118
  %544 = tail call ptr @expand_binop(i32 noundef %543, ptr noundef nonnull %25, ptr noundef %541, ptr noundef %542, ptr noundef %540, i32 noundef %5, i32 noundef %11)
  %545 = icmp eq ptr %544, null
  br i1 %545, label %581, label %546

546:                                              ; preds = %536
  %547 = add nuw nsw i32 %539, 1
  %548 = icmp ult i32 %547, %515
  br i1 %548, label %549, label %554

549:                                              ; preds = %546
  %550 = load i32, ptr @word_mode, align 4, !tbaa !118
  %551 = tail call ptr @gen_reg_rtx(i32 noundef %550) #22
  %552 = load i32, ptr @word_mode, align 4, !tbaa !118
  %553 = tail call ptr @emit_store_flag_force(ptr noundef %551, i32 noundef %533, ptr noundef nonnull %544, ptr noundef %541, i32 noundef %552, i32 noundef 1, i32 noundef 1) #22
  br label %554

554:                                              ; preds = %549, %546
  %555 = phi ptr [ %553, %549 ], [ %537, %546 ]
  %556 = icmp eq i32 %539, 0
  br i1 %556, label %577, label %557

557:                                              ; preds = %554
  %558 = load i32, ptr @word_mode, align 4, !tbaa !118
  %559 = tail call ptr @expand_binop(i32 noundef %558, ptr noundef nonnull %25, ptr noundef nonnull %544, ptr noundef %538, ptr noundef null, i32 noundef 1, i32 noundef %11)
  br i1 %548, label %560, label %569

560:                                              ; preds = %557
  %561 = load i32, ptr @word_mode, align 4, !tbaa !118
  %562 = tail call ptr @gen_reg_rtx(i32 noundef %561) #22
  %563 = load i32, ptr @word_mode, align 4, !tbaa !118
  %564 = tail call ptr @emit_store_flag_force(ptr noundef %562, i32 noundef %534, ptr noundef %559, ptr noundef nonnull %544, i32 noundef %563, i32 noundef 1, i32 noundef 1) #22
  %565 = load i32, ptr @word_mode, align 4, !tbaa !118
  %566 = tail call ptr @expand_binop(i32 noundef %565, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %555, ptr noundef %564, ptr noundef %555, i32 noundef 0, i32 noundef %11)
  %567 = icmp eq ptr %566, null
  %568 = select i1 %567, i32 8, i32 0
  br i1 %567, label %572, label %569

569:                                              ; preds = %560, %557
  %570 = phi ptr [ %566, %560 ], [ %555, %557 ]
  %571 = tail call ptr @emit_move_insn(ptr noundef %540, ptr noundef %559) #22
  br label %572

572:                                              ; preds = %560, %569
  %573 = phi ptr [ %570, %569 ], [ %566, %560 ]
  %574 = phi i32 [ 0, %569 ], [ %568, %560 ]
  %575 = icmp eq i32 %574, 0
  %576 = select i1 %575, ptr %573, ptr %538
  br label %581

577:                                              ; preds = %554
  %578 = icmp eq ptr %544, %540
  br i1 %578, label %581, label %579

579:                                              ; preds = %577
  %580 = tail call ptr @emit_move_insn(ptr noundef %540, ptr noundef nonnull %544) #22
  br label %581

581:                                              ; preds = %572, %579, %577, %536
  %582 = phi ptr [ %538, %536 ], [ %555, %579 ], [ %555, %577 ], [ %576, %572 ]
  %583 = phi ptr [ %537, %536 ], [ %555, %579 ], [ %555, %577 ], [ %573, %572 ]
  %584 = phi i32 [ 8, %536 ], [ 0, %579 ], [ 0, %577 ], [ %574, %572 ]
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %589

586:                                              ; preds = %581
  %587 = add nuw nsw i32 %539, 1
  %588 = icmp eq i32 %587, %535
  br i1 %588, label %589, label %536, !llvm.loop !179

589:                                              ; preds = %586, %581
  %590 = phi i32 [ %587, %586 ], [ %539, %581 ]
  %591 = load i8, ptr %504, align 1, !tbaa !114
  %592 = lshr i8 %591, 2
  %593 = zext nneg i8 %592 to i32
  %594 = icmp eq i32 %590, %593
  br i1 %594, label %595, label %610

595:                                              ; preds = %589
  %596 = sext i32 %0 to i64
  %597 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %596
  %598 = load i32, ptr %597, align 4, !tbaa !144
  %599 = icmp eq i32 %598, 2956
  br i1 %599, label %600, label %603

600:                                              ; preds = %595
  %601 = tail call i32 @rtx_equal_p(ptr noundef nonnull %526, ptr noundef %518) #22
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %603, label %611

603:                                              ; preds = %600, %595
  %604 = tail call ptr @emit_move_insn(ptr noundef nonnull %526, ptr noundef %518) #22
  %605 = load i32, ptr %25, align 8, !tbaa !153
  %606 = tail call ptr @copy_rtx(ptr noundef %516) #22
  %607 = tail call ptr @copy_rtx(ptr noundef %517) #22
  %608 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %605, i32 noundef %0, ptr noundef %606, ptr noundef %607) #22
  %609 = tail call ptr @set_unique_reg_note(ptr noundef %604, i32 noundef 4, ptr noundef %608) #22
  br label %611

610:                                              ; preds = %589
  tail call void @delete_insns_since(ptr noundef %26) #22
  br label %611

611:                                              ; preds = %603, %600, %610
  %612 = phi ptr [ %526, %610 ], [ %526, %603 ], [ %518, %600 ]
  %613 = phi ptr [ %498, %610 ], [ %526, %603 ], [ %518, %600 ]
  br i1 %594, label %760, label %614

614:                                              ; preds = %611, %496, %507, %503
  %615 = phi ptr [ %497, %507 ], [ %497, %503 ], [ %497, %496 ], [ %612, %611 ]
  %616 = phi ptr [ %498, %507 ], [ %498, %503 ], [ %498, %496 ], [ %613, %611 ]
  %617 = and i1 %115, %90
  br i1 %617, label %618, label %669

618:                                              ; preds = %614
  %619 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %620 = load i8, ptr %619, align 1, !tbaa !114
  %621 = icmp eq i8 %620, 8
  br i1 %621, label %622, label %669

622:                                              ; preds = %618
  %623 = load i32, ptr @word_mode, align 4, !tbaa !118
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 %624
  %626 = load i32, ptr %625, align 4, !tbaa !144
  %627 = icmp eq i32 %626, 2956
  br i1 %627, label %669, label %628

628:                                              ; preds = %622
  %629 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 %624
  %630 = load i32, ptr %629, align 4, !tbaa !144
  %631 = icmp eq i32 %630, 2956
  br i1 %631, label %669, label %632

632:                                              ; preds = %628
  %633 = sext i32 %0 to i64
  %634 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4, i64 %633
  %635 = load i32, ptr %634, align 4, !tbaa !144
  %636 = icmp eq i32 %635, 2956
  br i1 %636, label %641, label %637

637:                                              ; preds = %632
  %638 = tail call fastcc ptr @expand_doubleword_mult(i32 noundef %0, ptr noundef %225, ptr noundef %379, ptr noundef %615, i8 noundef zeroext 1, i32 noundef %6)
  %639 = icmp eq ptr %638, null
  br i1 %639, label %640, label %641

640:                                              ; preds = %637
  tail call void @delete_insns_since(ptr noundef %26) #22
  br label %641

641:                                              ; preds = %637, %640, %632
  %642 = phi ptr [ %638, %637 ], [ null, %640 ], [ null, %632 ]
  %643 = icmp eq ptr %642, null
  br i1 %643, label %644, label %652

644:                                              ; preds = %641
  %645 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4, i64 %633
  %646 = load i32, ptr %645, align 4, !tbaa !144
  %647 = icmp eq i32 %646, 2956
  br i1 %647, label %652, label %648

648:                                              ; preds = %644
  %649 = tail call fastcc ptr @expand_doubleword_mult(i32 noundef %0, ptr noundef %225, ptr noundef %379, ptr noundef %615, i8 noundef zeroext 0, i32 noundef %6)
  %650 = icmp eq ptr %649, null
  br i1 %650, label %651, label %652

651:                                              ; preds = %648
  tail call void @delete_insns_since(ptr noundef %26) #22
  br label %652

652:                                              ; preds = %648, %651, %644, %641
  %653 = phi ptr [ %649, %648 ], [ null, %651 ], [ null, %644 ], [ %642, %641 ]
  %654 = icmp eq ptr %653, null
  br i1 %654, label %667, label %655

655:                                              ; preds = %652
  %656 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %633
  %657 = load i32, ptr %656, align 4, !tbaa !144
  %658 = icmp eq i32 %657, 2956
  br i1 %658, label %667, label %659

659:                                              ; preds = %655
  %660 = icmp eq ptr %615, null
  %661 = select i1 %660, ptr %653, ptr %615
  %662 = tail call ptr @emit_move_insn(ptr noundef nonnull %661, ptr noundef nonnull %653) #22
  %663 = tail call ptr @copy_rtx(ptr noundef %225) #22
  %664 = tail call ptr @copy_rtx(ptr noundef %379) #22
  %665 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %0, ptr noundef %663, ptr noundef %664) #22
  %666 = tail call ptr @set_unique_reg_note(ptr noundef %662, i32 noundef 4, ptr noundef %665) #22
  br label %667

667:                                              ; preds = %652, %655, %659
  %668 = phi ptr [ %653, %659 ], [ %653, %655 ], [ %616, %652 ]
  br i1 %654, label %669, label %760

669:                                              ; preds = %667, %628, %622, %618, %614
  %670 = phi ptr [ %616, %628 ], [ %616, %622 ], [ %616, %618 ], [ %616, %614 ], [ %668, %667 ]
  %671 = tail call ptr @optab_libfunc(ptr noundef nonnull %25, i32 noundef %0)
  %672 = icmp eq ptr %671, null
  br i1 %672, label %699, label %673

673:                                              ; preds = %669
  switch i32 %6, label %699 [
    i32 3, label %674
    i32 1, label %674
  ]

674:                                              ; preds = %673, %673
  tail call void @start_sequence() #22
  %675 = tail call fastcc zeroext i8 @shift_optab_p(ptr noundef nonnull %25), !range !178
  %676 = icmp eq i8 %675, 0
  br i1 %676, label %681, label %677

677:                                              ; preds = %674
  %678 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 9), align 8, !tbaa !180
  %679 = tail call i32 %678() #22
  %680 = tail call ptr @convert_to_mode(i32 noundef %679, ptr noundef %379, i32 noundef 1) #22
  br label %681

681:                                              ; preds = %677, %674
  %682 = phi ptr [ %680, %677 ], [ %379, %674 ]
  %683 = phi i32 [ %679, %677 ], [ %0, %674 ]
  %684 = load i32, ptr %225, align 8
  %685 = lshr i32 %684, 16
  %686 = and i32 %685, 255
  %687 = icmp eq i32 %686, 0
  %688 = icmp eq i32 %686, %0
  %689 = or i1 %687, %688
  br i1 %689, label %692, label %690

690:                                              ; preds = %681
  %691 = tail call ptr @convert_to_mode(i32 noundef %0, ptr noundef nonnull %225, i32 noundef %5) #22
  br label %692

692:                                              ; preds = %690, %681
  %693 = phi ptr [ %691, %690 ], [ %225, %681 ]
  %694 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef nonnull %671, ptr noundef null, i32 noundef 1, i32 noundef %0, i32 noundef 2, ptr noundef %693, i32 noundef %0, ptr noundef %682, i32 noundef %683) #22
  %695 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %696 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  %697 = load i32, ptr %25, align 8, !tbaa !153
  %698 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %697, i32 noundef %0, ptr noundef %693, ptr noundef %379) #22
  tail call void @emit_libcall_block(ptr noundef %695, ptr noundef %696, ptr noundef %694, ptr noundef %698)
  br label %760

699:                                              ; preds = %673, %669
  tail call void @delete_insns_since(ptr noundef %26) #22
  %700 = add i32 %6, -2
  %701 = icmp ult i32 %700, 3
  br i1 %701, label %703, label %702

702:                                              ; preds = %699
  tail call void @delete_insns_since(ptr noundef %12) #22
  br label %760

703:                                              ; preds = %699
  %704 = zext i1 %9 to i32
  switch i8 %15, label %759 [
    i8 11, label %705
    i8 9, label %705
    i8 8, label %705
    i8 7, label %705
    i8 6, label %705
    i8 5, label %705
    i8 4, label %705
    i8 2, label %705
  ]

705:                                              ; preds = %703, %703, %703, %703, %703, %703, %703, %703
  %706 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %13
  %707 = load i8, ptr %706, align 1, !tbaa !114
  %708 = icmp eq i8 %707, 0
  br i1 %708, label %759, label %709

709:                                              ; preds = %705
  %710 = or i1 %227, %226
  %711 = select i1 %710, i1 true, i1 %229
  %712 = or i1 %499, %711
  %713 = select i1 %712, i1 true, i1 %500
  %714 = or i1 %90, %713
  %715 = select i1 %714, i1 true, i1 %288
  %716 = and i1 %115, %715
  %717 = zext i1 %716 to i32
  %718 = icmp ne ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44)
  %719 = select i1 %716, i1 %718, i1 false
  %720 = zext i1 %719 to i32
  br label %721

721:                                              ; preds = %709, %753
  %722 = phi i8 [ %707, %709 ], [ %757, %753 ]
  %723 = phi ptr [ %670, %709 ], [ %755, %753 ]
  %724 = phi ptr [ %615, %709 ], [ %754, %753 ]
  %725 = zext i8 %722 to i32
  %726 = zext i8 %722 to i64
  %727 = getelementptr inbounds %struct.optab_d, ptr %25, i64 0, i32 4, i64 %726
  %728 = load i32, ptr %727, align 4, !tbaa !144
  %729 = icmp eq i32 %728, 2956
  br i1 %729, label %730, label %734

730:                                              ; preds = %721
  br i1 %9, label %731, label %753

731:                                              ; preds = %730
  %732 = tail call ptr @optab_libfunc(ptr noundef nonnull %25, i32 noundef %725)
  %733 = icmp eq ptr %732, null
  br i1 %733, label %753, label %734

734:                                              ; preds = %731, %721
  %735 = tail call fastcc ptr @widen_operand(ptr noundef %225, i32 noundef %725, i32 noundef %0, i32 noundef %5, i32 noundef %717)
  %736 = tail call fastcc ptr @widen_operand(ptr noundef %379, i32 noundef %725, i32 noundef %0, i32 noundef %5, i32 noundef %720)
  %737 = tail call ptr @expand_binop(i32 noundef %725, ptr noundef nonnull %25, ptr noundef %735, ptr noundef %736, ptr noundef null, i32 noundef %5, i32 noundef %704)
  %738 = icmp eq ptr %737, null
  br i1 %738, label %749, label %739

739:                                              ; preds = %734
  br i1 %115, label %746, label %740

740:                                              ; preds = %739
  %741 = icmp eq ptr %724, null
  br i1 %741, label %742, label %744

742:                                              ; preds = %740
  %743 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %744

744:                                              ; preds = %742, %740
  %745 = phi ptr [ %743, %742 ], [ %724, %740 ]
  tail call void @convert_move(ptr noundef %745, ptr noundef nonnull %737, i32 noundef 0) #22
  br label %750

746:                                              ; preds = %739
  %747 = load ptr, ptr @rtl_hooks, align 8, !tbaa !174
  %748 = tail call ptr %747(i32 noundef %0, ptr noundef nonnull %737) #22
  br label %750

749:                                              ; preds = %734
  tail call void @delete_insns_since(ptr noundef %26) #22
  br label %750

750:                                              ; preds = %749, %746, %744
  %751 = phi ptr [ %745, %744 ], [ %724, %746 ], [ %724, %749 ]
  %752 = phi ptr [ %745, %744 ], [ %748, %746 ], [ %723, %749 ]
  br i1 %738, label %753, label %760

753:                                              ; preds = %730, %731, %750
  %754 = phi ptr [ %751, %750 ], [ %724, %731 ], [ %724, %730 ]
  %755 = phi ptr [ %752, %750 ], [ %723, %731 ], [ %723, %730 ]
  %756 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %726
  %757 = load i8, ptr %756, align 1, !tbaa !114
  %758 = icmp eq i8 %757, 0
  br i1 %758, label %759, label %721, !llvm.loop !181

759:                                              ; preds = %753, %705, %703
  tail call void @delete_insns_since(ptr noundef %12) #22
  br label %760

760:                                              ; preds = %193, %750, %373, %33, %84, %282, %494, %611, %667, %759, %702, %692, %112, %109
  %761 = phi ptr [ %111, %109 ], [ %113, %112 ], [ %696, %692 ], [ null, %759 ], [ null, %702 ], [ %668, %667 ], [ %613, %611 ], [ %495, %494 ], [ %283, %282 ], [ %86, %84 ], [ %34, %33 ], [ %376, %373 ], [ %752, %750 ], [ %195, %193 ]
  ret ptr %761
}

declare ptr @get_last_insn() local_unnamed_addr #3

declare ptr @negate_rtx(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @expand_binop_directly(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) unnamed_addr #10 !prof !157 !PGOFuncName !182 {
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds %struct.optab_d, ptr %1, i64 0, i32 4, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !144
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %12, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !146
  %15 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 1, i32 2
  %16 = load i16, ptr %15, align 8
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 2, i32 2
  %19 = load i16, ptr %18, align 8
  %20 = zext i16 %19 to i32
  %21 = icmp eq ptr %4, null
  br i1 %21, label %22, label %24, !prof !183

22:                                               ; preds = %8
  %23 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %24

24:                                               ; preds = %8, %22
  %25 = phi ptr [ %23, %22 ], [ %4, %8 ]
  %26 = load i32, ptr %1, align 8, !tbaa !153
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !118
  %30 = icmp ne i32 %29, 3
  %31 = icmp ne ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20)
  %32 = select i1 %30, i1 %31, i1 false, !prof !184
  %33 = icmp ne ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21)
  %34 = select i1 %32, i1 %33, i1 false, !prof !184
  %35 = icmp ne ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 18)
  %36 = select i1 %34, i1 %35, i1 false, !prof !184
  %37 = icmp ne ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 19)
  %38 = select i1 %36, i1 %37, i1 false, !prof !184
  %39 = trunc i32 %5 to i8
  %40 = tail call fastcc ptr @avoid_expensive_constant(i32 noundef %17, ptr noundef nonnull %1, ptr noundef %2, i8 noundef zeroext %39)
  %41 = load i32, ptr %1, align 8, !tbaa !153
  switch i32 %41, label %42 [
    i32 65, label %44
    i32 133, label %44
    i32 134, label %44
    i32 67, label %44
    i32 68, label %44
    i32 66, label %44
    i32 69, label %44
  ], !prof !185

42:                                               ; preds = %24
  %43 = tail call fastcc ptr @avoid_expensive_constant(i32 noundef %20, ptr noundef nonnull %1, ptr noundef %3, i8 noundef zeroext %39)
  br label %44

44:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %42
  %45 = phi ptr [ %43, %42 ], [ %3, %24 ], [ %3, %24 ], [ %3, %24 ], [ %3, %24 ], [ %3, %24 ], [ %3, %24 ], [ %3, %24 ]
  %46 = load i32, ptr %40, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = icmp ne i32 %48, %17
  %50 = icmp ne i16 %16, 0
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %56, !prof !186

52:                                               ; preds = %44
  %53 = icmp eq i32 %48, 0
  %54 = select i1 %53, i32 %0, i32 %48, !prof !187
  %55 = tail call ptr @convert_modes(i32 noundef %17, i32 noundef %54, ptr noundef nonnull %40, i32 noundef %5) #22
  br label %56

56:                                               ; preds = %52, %44
  %57 = phi ptr [ %55, %52 ], [ %40, %44 ]
  %58 = load i32, ptr %45, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = icmp ne i32 %60, %20
  %62 = icmp ne i16 %19, 0
  %63 = and i1 %62, %61
  br i1 %63, label %64, label %68, !prof !188

64:                                               ; preds = %56
  %65 = icmp eq i32 %60, 0
  %66 = select i1 %65, i32 %0, i32 %60, !prof !189
  %67 = tail call ptr @convert_modes(i32 noundef %20, i32 noundef %66, ptr noundef nonnull %45, i32 noundef %5) #22
  br label %68

68:                                               ; preds = %64, %56
  %69 = phi ptr [ %67, %64 ], [ %45, %56 ]
  br i1 %38, label %100, label %70, !prof !184

70:                                               ; preds = %68
  %71 = tail call i32 @commutative_operand_precedence(ptr noundef %57) #22
  %72 = tail call i32 @commutative_operand_precedence(ptr noundef %69) #22
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %95, label %74, !prof !190

74:                                               ; preds = %70
  %75 = icmp sgt i32 %71, %72
  br i1 %75, label %95, label %76, !prof !191

76:                                               ; preds = %74
  br i1 %21, label %81, label %77, !prof !192

77:                                               ; preds = %76
  %78 = load i32, ptr %4, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 37
  br i1 %80, label %81, label %92, !prof !193

81:                                               ; preds = %77, %76
  %82 = load i32, ptr %69, align 8
  %83 = and i32 %82, 65535
  %84 = icmp eq i32 %83, 37
  br i1 %84, label %85, label %89, !prof !194

85:                                               ; preds = %81
  %86 = load i32, ptr %57, align 8
  %87 = and i32 %86, 65535
  %88 = icmp eq i32 %87, 37
  br i1 %88, label %89, label %95, !prof !194

89:                                               ; preds = %85, %81
  %90 = icmp eq ptr %69, %4
  %91 = zext i1 %90 to i8
  br label %95

92:                                               ; preds = %77
  %93 = tail call i32 @rtx_equal_p(ptr noundef %69, ptr noundef nonnull %4) #22
  %94 = trunc i32 %93 to i8
  br label %95

95:                                               ; preds = %70, %74, %85, %89, %92
  %96 = phi i8 [ %94, %92 ], [ 1, %70 ], [ 0, %74 ], [ 1, %85 ], [ %91, %89 ]
  %97 = icmp eq i8 %96, 0
  %98 = select i1 %97, ptr %57, ptr %69, !prof !195
  %99 = select i1 %97, ptr %69, ptr %57, !prof !195
  br label %100

100:                                              ; preds = %95, %68
  %101 = phi ptr [ %57, %68 ], [ %98, %95 ]
  %102 = phi ptr [ %69, %68 ], [ %99, %95 ]
  %103 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !150
  %105 = tail call i32 %104(ptr noundef %101, i32 noundef %17) #22, !prof !196
  %106 = icmp eq i32 %105, 0
  %107 = and i1 %50, %106
  br i1 %107, label %108, label %110, !prof !186

108:                                              ; preds = %100
  %109 = tail call ptr @copy_to_mode_reg(i32 noundef %17, ptr noundef %101) #22
  br label %110

110:                                              ; preds = %108, %100
  %111 = phi ptr [ %109, %108 ], [ %101, %100 ]
  %112 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 2
  %113 = load ptr, ptr %112, align 8, !tbaa !150
  %114 = tail call i32 %113(ptr noundef %102, i32 noundef %20) #22, !prof !197
  %115 = icmp eq i32 %114, 0
  %116 = and i1 %62, %115
  br i1 %116, label %117, label %119, !prof !161

117:                                              ; preds = %110
  %118 = tail call ptr @copy_to_mode_reg(i32 noundef %20, ptr noundef %102) #22
  br label %119

119:                                              ; preds = %117, %110
  %120 = phi ptr [ %118, %117 ], [ %102, %110 ]
  %121 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 153)
  %122 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 154)
  %123 = select i1 %121, i1 true, i1 %122, !prof !161
  %124 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 155)
  %125 = select i1 %123, i1 true, i1 %124, !prof !161
  %126 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 157)
  %127 = select i1 %125, i1 true, i1 %126, !prof !161
  %128 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 156)
  %129 = select i1 %127, i1 true, i1 %128, !prof !161
  br i1 %129, label %130, label %144, !prof !161

130:                                              ; preds = %119
  %131 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 0, i32 2
  %132 = load i16, ptr %131, align 8
  %133 = zext i16 %132 to i32
  %134 = zext i16 %132 to i64
  %135 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !114
  %137 = zext i8 %136 to i32
  %138 = zext i32 %0 to i64
  %139 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !114
  %141 = zext i8 %140 to i32
  %142 = shl nuw nsw i32 %141, 1
  %143 = icmp eq i32 %142, %137
  br i1 %143, label %144, label %175

144:                                              ; preds = %119, %130
  %145 = phi i32 [ %133, %130 ], [ %0, %119 ]
  %146 = load ptr, ptr %14, align 8, !tbaa !150
  %147 = tail call i32 %146(ptr noundef %25, i32 noundef %145) #22, !prof !196
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151, !prof !161

149:                                              ; preds = %144
  %150 = tail call ptr @gen_reg_rtx(i32 noundef %145) #22
  br label %151

151:                                              ; preds = %149, %144
  %152 = phi ptr [ %25, %144 ], [ %150, %149 ]
  %153 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %12, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !152
  %155 = tail call ptr (ptr, ...) %154(ptr noundef %152, ptr noundef %111, ptr noundef %120) #22, !prof !198
  %156 = icmp eq ptr %155, null
  br i1 %156, label %174, label %157, !prof !161

157:                                              ; preds = %151
  %158 = load i32, ptr %155, align 8
  %159 = and i32 %158, 65535
  %160 = add nsw i32 %159, -7
  %161 = icmp ult i32 %160, 4
  br i1 %161, label %162, label %172, !prof !199

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1, i32 0, i32 0, i64 2
  %164 = load ptr, ptr %163, align 8, !tbaa !114
  %165 = icmp eq ptr %164, null
  br i1 %165, label %172, label %166, !prof !200

166:                                              ; preds = %162
  %167 = load i32, ptr %1, align 8, !tbaa !153
  %168 = tail call fastcc i32 @add_equal_note(ptr noundef nonnull %155, ptr noundef %152, i32 noundef %167, ptr noundef %111, ptr noundef %120), !range !201
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %172, !prof !202

170:                                              ; preds = %166
  tail call void @delete_insns_since(ptr noundef %7) #22
  %171 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %5, i32 noundef %6)
  br label %175

172:                                              ; preds = %157, %166, %162
  %173 = tail call ptr @emit_insn(ptr noundef nonnull %155) #22
  br label %175

174:                                              ; preds = %151
  tail call void @delete_insns_since(ptr noundef %7) #22
  br label %175

175:                                              ; preds = %130, %174, %172, %170
  %176 = phi ptr [ %152, %172 ], [ %171, %170 ], [ null, %174 ], [ null, %130 ]
  ret ptr %176
}

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @convert_to_mode(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @avoid_expensive_constant(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #10 !prof !203 !PGOFuncName !204 {
  %5 = tail call zeroext i8 @optimize_insn_for_speed_p() #22
  %6 = icmp ne i32 %0, 0
  %7 = load i32, ptr @optimize, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false, !prof !205
  br i1 %9, label %10, label %40, !prof !205

10:                                               ; preds = %4
  %11 = load i32, ptr %2, align 8
  %12 = and i32 %11, 65535
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !118
  %16 = icmp eq i32 %15, 9
  br i1 %16, label %17, label %40, !prof !206

17:                                               ; preds = %10
  %18 = load i32, ptr %1, align 8, !tbaa !153
  %19 = tail call i32 @rtx_cost(ptr noundef nonnull %2, i32 noundef %18, i8 noundef zeroext %5) #22
  %20 = tail call i32 @rtx_cost(ptr noundef nonnull %2, i32 noundef 23, i8 noundef zeroext %5) #22
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %40, !prof !207

22:                                               ; preds = %17
  %23 = load i32, ptr %2, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 30
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !114
  %29 = tail call i64 @trunc_int_for_mode(i64 noundef %28, i32 noundef %0) #22
  %30 = load i64, ptr %27, align 8, !tbaa !114
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %29) #22
  br label %37

34:                                               ; preds = %22
  %35 = zext i8 %3 to i32
  %36 = tail call ptr @convert_modes(i32 noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef %35) #22
  br label %37

37:                                               ; preds = %26, %32, %34
  %38 = phi ptr [ %36, %34 ], [ %33, %32 ], [ %2, %26 ]
  %39 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %38) #22
  br label %40

40:                                               ; preds = %37, %17, %10, %4
  %41 = phi ptr [ %39, %37 ], [ %2, %17 ], [ %2, %10 ], [ %2, %4 ]
  ret ptr %41
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @widen_operand(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #9 !prof !102 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 16711680
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %7
  %12 = and i32 %8, 268500991
  %13 = icmp eq i32 %12, 268435495
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = and i32 %8, 134217728
  %16 = icmp eq i32 %15, 0
  %17 = lshr i32 %8, 26
  %18 = and i32 %17, 1
  %19 = select i1 %16, i32 %18, i32 -1
  %20 = icmp eq i32 %19, %3
  br i1 %20, label %21, label %23

21:                                               ; preds = %5, %14
  %22 = tail call ptr @convert_modes(i32 noundef %1, i32 noundef %2, ptr noundef %0, i32 noundef %3) #22
  br label %42

23:                                               ; preds = %14, %11
  %24 = zext i32 %1 to i64
  %25 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !114
  %27 = icmp ult i8 %26, 5
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = lshr i32 %8, 16
  %30 = and i32 %29, 255
  %31 = tail call ptr @force_reg(i32 noundef %30, ptr noundef nonnull %0) #22
  %32 = tail call ptr @gen_rtx_SUBREG(i32 noundef %1, ptr noundef %31, i32 noundef 0) #22
  br label %42

33:                                               ; preds = %23
  %34 = tail call ptr @gen_reg_rtx(i32 noundef %1) #22
  %35 = tail call ptr @emit_clobber(ptr noundef %34) #22
  %36 = load ptr, ptr @rtl_hooks, align 8, !tbaa !174
  %37 = load i32, ptr %0, align 8
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = tail call ptr %36(i32 noundef %39, ptr noundef %34) #22
  %41 = tail call ptr @emit_move_insn(ptr noundef %40, ptr noundef nonnull %0) #22
  br label %42

42:                                               ; preds = %7, %33, %28, %21
  %43 = phi ptr [ %22, %21 ], [ %32, %28 ], [ %34, %33 ], [ %0, %7 ]
  ret ptr %43
}

declare void @convert_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @delete_insns_since(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @swap_commutative_operands_with_target(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !102 !PGOFuncName !208 {
  %4 = tail call i32 @commutative_operand_precedence(ptr noundef %1) #22
  %5 = tail call i32 @commutative_operand_precedence(ptr noundef %2) #22
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %29, label %7, !prof !190

7:                                                ; preds = %3
  %8 = icmp sgt i32 %4, %5
  br i1 %8, label %29, label %9, !prof !191

9:                                                ; preds = %7
  %10 = icmp eq ptr %0, null
  br i1 %10, label %15, label %11, !prof !192

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %26, !prof !193

15:                                               ; preds = %11, %9
  %16 = load i32, ptr %2, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %23, !prof !194

19:                                               ; preds = %15
  %20 = load i32, ptr %1, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %29, !prof !194

23:                                               ; preds = %19, %15
  %24 = icmp eq ptr %0, %2
  %25 = zext i1 %24 to i8
  br label %29

26:                                               ; preds = %11
  %27 = tail call i32 @rtx_equal_p(ptr noundef %2, ptr noundef nonnull %0) #22
  %28 = trunc i32 %27 to i8
  br label %29

29:                                               ; preds = %19, %23, %7, %3, %26
  %30 = phi i8 [ %28, %26 ], [ 1, %3 ], [ 0, %7 ], [ 1, %19 ], [ %25, %23 ]
  ret i8 %30
}

declare void @start_sequence() local_unnamed_addr #3

declare ptr @operand_subword(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @operand_subword_force(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @expand_doubleword_shift(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9) unnamed_addr #9 !prof !102 {
  %11 = icmp ugt i64 %9, 31
  %12 = icmp ne ptr %5, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load i32, ptr %4, align 8
  %16 = and i32 %15, 65535
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !118
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %34, label %21

21:                                               ; preds = %14
  %22 = tail call fastcc zeroext i8 @expand_doubleword_shift(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef null, ptr noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9), !range !178
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %118, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr @word_mode, align 4, !tbaa !118
  %26 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %25, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %7, i32 noundef %8)
  %27 = icmp ne ptr %26, null
  %28 = icmp ne ptr %26, %5
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = tail call ptr @emit_move_insn(ptr noundef nonnull %5, ptr noundef nonnull %26) #22
  br label %32

32:                                               ; preds = %24, %30
  %33 = zext i1 %27 to i8
  br label %118

34:                                               ; preds = %14, %10
  %35 = tail call ptr @immed_double_const(i64 noundef 32, i64 noundef 0, i32 noundef %0) #22
  %36 = load i32, ptr %4, align 8
  %37 = and i32 %36, 65535
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !118
  %41 = icmp ne i32 %40, 9
  %42 = icmp eq i64 %9, 31
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef nonnull %4, ptr noundef %35, ptr noundef null, i32 noundef 1, i32 noundef %8)
  br label %48

46:                                               ; preds = %34
  %47 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %4, ptr noundef %35, ptr noundef null, i32 noundef 1, i32 noundef %8)
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi ptr [ %45, %44 ], [ %47, %46 ]
  %50 = phi ptr [ %4, %44 ], [ %47, %46 ]
  %51 = phi i32 [ 81, %44 ], [ 85, %46 ]
  %52 = sext i32 %0 to i64
  %53 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !103
  %55 = icmp eq ptr %49, null
  br i1 %55, label %118, label %56

56:                                               ; preds = %48
  %57 = tail call ptr @simplify_relational_operation(i32 noundef %51, i32 noundef 16, i32 noundef %0, ptr noundef nonnull %49, ptr noundef %54) #22
  %58 = icmp eq ptr %57, null
  br i1 %58, label %70, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %57, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 30
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !103
  %65 = icmp eq ptr %57, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = tail call fastcc zeroext i8 @expand_superword_shift(ptr noundef %1, ptr noundef %2, ptr noundef %50, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8), !range !178
  br label %118

68:                                               ; preds = %63
  %69 = tail call fastcc zeroext i8 @expand_subword_shift(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9), !range !178
  br label %118

70:                                               ; preds = %59, %56
  %71 = tail call ptr @get_last_insn() #22
  br i1 %12, label %72, label %75

72:                                               ; preds = %70
  %73 = load i32, ptr @word_mode, align 4, !tbaa !118
  %74 = tail call ptr @gen_reg_rtx(i32 noundef %73) #22
  br label %75

75:                                               ; preds = %72, %70
  %76 = phi ptr [ %74, %72 ], [ null, %70 ]
  %77 = icmp eq ptr %50, %4
  %78 = and i1 %12, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = tail call fastcc zeroext i8 @expand_superword_shift(ptr noundef %1, ptr noundef %2, ptr noundef %50, ptr noundef %76, ptr noundef null, i32 noundef %7, i32 noundef %8), !range !178
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %100, label %87

82:                                               ; preds = %75
  %83 = load i32, ptr @word_mode, align 4, !tbaa !118
  %84 = tail call ptr @gen_reg_rtx(i32 noundef %83) #22
  %85 = tail call fastcc zeroext i8 @expand_superword_shift(ptr noundef %1, ptr noundef %2, ptr noundef %50, ptr noundef %76, ptr noundef %84, i32 noundef %7, i32 noundef %8), !range !178
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %82, %79
  %88 = phi ptr [ %5, %79 ], [ %84, %82 ]
  %89 = tail call fastcc zeroext i8 @expand_subword_shift(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9), !range !178
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %87
  %92 = load i32, ptr @word_mode, align 4, !tbaa !118
  %93 = tail call ptr @emit_conditional_move(ptr noundef %6, i32 noundef %51, ptr noundef nonnull %49, ptr noundef %54, i32 noundef %0, ptr noundef %6, ptr noundef %88, i32 noundef %92, i32 noundef 0)
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  br i1 %12, label %96, label %118

96:                                               ; preds = %95
  %97 = load i32, ptr @word_mode, align 4, !tbaa !118
  %98 = tail call ptr @emit_conditional_move(ptr noundef nonnull %5, i32 noundef %51, ptr noundef nonnull %49, ptr noundef %54, i32 noundef %0, ptr noundef nonnull %5, ptr noundef %76, i32 noundef %97, i32 noundef 0)
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %118

100:                                              ; preds = %96, %82, %79, %91, %87
  tail call void @delete_insns_since(ptr noundef %71) #22
  %101 = tail call ptr @gen_label_rtx() #22
  %102 = tail call ptr @gen_label_rtx() #22
  %103 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !209
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !209
  tail call void @do_compare_rtx_and_jump(ptr noundef nonnull %49, ptr noundef %54, i32 noundef %51, i32 noundef 0, i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef %101, i32 noundef -1) #22
  %105 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !209
  %106 = add nsw i32 %105, -1
  store i32 %106, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !209
  %107 = tail call fastcc zeroext i8 @expand_superword_shift(ptr noundef %1, ptr noundef %2, ptr noundef %50, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8), !range !178
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %100
  %110 = tail call ptr @gen_jump(ptr noundef %102) #22
  %111 = tail call ptr @emit_jump_insn(ptr noundef %110) #22
  %112 = tail call ptr @emit_barrier() #22
  %113 = tail call ptr @emit_label(ptr noundef %101) #22
  %114 = tail call fastcc zeroext i8 @expand_subword_shift(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9), !range !178
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %109
  %117 = tail call ptr @emit_label(ptr noundef %102) #22
  br label %118

118:                                              ; preds = %95, %96, %109, %100, %48, %32, %21, %116, %68, %66
  %119 = phi i8 [ %67, %66 ], [ %69, %68 ], [ 1, %116 ], [ 0, %21 ], [ %33, %32 ], [ 0, %48 ], [ 0, %100 ], [ 0, %109 ], [ 1, %96 ], [ 1, %95 ]
  ret i8 %119
}

declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #3

declare ptr @emit_store_flag_force(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_doubleword_mult(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5) unnamed_addr #9 !prof !102 {
  %7 = icmp eq i8 %4, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 31) #22
  br label %10

10:                                               ; preds = %6, %8
  %11 = phi ptr [ %9, %8 ], [ null, %6 ]
  %12 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef 1, i32 noundef %0) #22
  %13 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef 0, i32 noundef %0) #22
  %14 = tail call ptr @operand_subword_force(ptr noundef %2, i32 noundef 1, i32 noundef %0) #22
  %15 = tail call ptr @operand_subword_force(ptr noundef %2, i32 noundef 0, i32 noundef %0) #22
  br i1 %7, label %16, label %32

16:                                               ; preds = %10
  %17 = load i32, ptr @word_mode, align 4, !tbaa !118
  %18 = tail call ptr @expand_binop(i32 noundef %17, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), ptr noundef %13, ptr noundef %11, ptr noundef null, i32 noundef 1, i32 noundef %5)
  %19 = icmp eq ptr %18, null
  %20 = load i32, ptr @word_mode, align 4, !tbaa !118
  br i1 %19, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call ptr @expand_binop(i32 noundef %20, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %12, ptr noundef nonnull %18, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %29

23:                                               ; preds = %16
  %24 = tail call ptr @expand_binop(i32 noundef %20, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), ptr noundef %13, ptr noundef %11, ptr noundef null, i32 noundef 0, i32 noundef %5)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %82, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr @word_mode, align 4, !tbaa !118
  %28 = tail call ptr @expand_binop(i32 noundef %27, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %12, ptr noundef nonnull %24, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi ptr [ %22, %21 ], [ %28, %26 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %82, label %32

32:                                               ; preds = %29, %10
  %33 = phi ptr [ %12, %10 ], [ %30, %29 ]
  %34 = load i32, ptr @word_mode, align 4, !tbaa !118
  %35 = tail call ptr @expand_binop(i32 noundef %34, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16), ptr noundef %33, ptr noundef %15, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %82, label %37

37:                                               ; preds = %32
  br i1 %7, label %38, label %54

38:                                               ; preds = %37
  %39 = load i32, ptr @word_mode, align 4, !tbaa !118
  %40 = tail call ptr @expand_binop(i32 noundef %39, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), ptr noundef %15, ptr noundef %11, ptr noundef null, i32 noundef 1, i32 noundef %5)
  %41 = icmp eq ptr %40, null
  %42 = load i32, ptr @word_mode, align 4, !tbaa !118
  br i1 %41, label %45, label %43

43:                                               ; preds = %38
  %44 = tail call ptr @expand_binop(i32 noundef %42, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %14, ptr noundef nonnull %40, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %51

45:                                               ; preds = %38
  %46 = tail call ptr @expand_binop(i32 noundef %42, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), ptr noundef %15, ptr noundef %11, ptr noundef null, i32 noundef 0, i32 noundef %5)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %82, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr @word_mode, align 4, !tbaa !118
  %50 = tail call ptr @expand_binop(i32 noundef %49, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %14, ptr noundef nonnull %46, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi ptr [ %44, %43 ], [ %50, %48 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %82, label %54

54:                                               ; preds = %51, %37
  %55 = phi ptr [ %14, %37 ], [ %52, %51 ]
  %56 = load i32, ptr @word_mode, align 4, !tbaa !118
  %57 = tail call ptr @expand_binop(i32 noundef %56, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16), ptr noundef %55, ptr noundef %13, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %58 = icmp eq ptr %57, null
  br i1 %58, label %82, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr @word_mode, align 4, !tbaa !118
  %61 = tail call ptr @expand_binop(i32 noundef %60, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef nonnull %35, ptr noundef nonnull %57, ptr noundef nonnull %35, i32 noundef 0, i32 noundef 0)
  %62 = icmp eq ptr %3, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %3, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 37
  %67 = select i1 %66, ptr %3, ptr null
  br label %68

68:                                               ; preds = %63, %59
  %69 = phi ptr [ %67, %63 ], [ null, %59 ]
  %70 = select i1 %7, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21)
  %71 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %70, ptr noundef %13, ptr noundef %15, ptr noundef %69, i32 noundef 1, i32 noundef 0)
  %72 = icmp eq ptr %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %68
  %74 = tail call ptr @operand_subword(ptr noundef nonnull %71, i32 noundef 1, i32 noundef 1, i32 noundef %0) #22
  %75 = load i32, ptr @word_mode, align 4, !tbaa !118
  %76 = load i32, ptr %74, align 8
  %77 = and i32 %76, 65535
  %78 = icmp eq i32 %77, 37
  %79 = select i1 %78, ptr %74, ptr %61
  %80 = tail call ptr @expand_binop(i32 noundef %75, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef nonnull %74, ptr noundef %61, ptr noundef %79, i32 noundef 0, i32 noundef 0)
  %81 = tail call ptr @emit_move_insn(ptr noundef nonnull %74, ptr noundef %80) #22
  br label %82

82:                                               ; preds = %51, %29, %68, %54, %45, %32, %23, %73
  %83 = phi ptr [ %71, %73 ], [ null, %23 ], [ null, %32 ], [ null, %45 ], [ null, %54 ], [ null, %68 ], [ null, %29 ], [ null, %51 ]
  ret ptr %83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @shift_optab_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !102 !PGOFuncName !218 {
  %2 = load i32, ptr %0, align 8, !tbaa !153
  switch i32 %2, label %3 [
    i32 65, label %4
    i32 133, label %4
    i32 134, label %4
    i32 67, label %4
    i32 68, label %4
    i32 66, label %4
    i32 69, label %4
  ], !prof !185

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %3
  %5 = phi i8 [ 0, %3 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %5
}

declare ptr @emit_library_call_value(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @emit_libcall_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !102 {
  %5 = alloca %struct.no_conflict_data, align 8
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 134283263
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = lshr i32 %6, 16
  %11 = and i32 %10, 255
  %12 = tail call ptr @gen_reg_rtx(i32 noundef %11) #22
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %12, %9 ], [ %1, %4 ]
  %15 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !118
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @may_trap_p(ptr noundef %3) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %17
  %21 = icmp eq ptr %0, null
  br i1 %21, label %54, label %22

22:                                               ; preds = %20, %38
  %23 = phi ptr [ %40, %38 ], [ %0, %20 ]
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = tail call ptr @find_reg_note(ptr noundef nonnull %23, i32 noundef 25, ptr noundef null) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !114
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !114
  %35 = and i64 %34, 2147483647
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  tail call void @remove_note(ptr noundef nonnull %23, ptr noundef nonnull %28) #22
  br label %38

38:                                               ; preds = %27, %30, %37, %22
  %39 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !114
  %41 = icmp eq ptr %40, null
  br i1 %41, label %54, label %22, !llvm.loop !219

42:                                               ; preds = %17, %13
  %43 = icmp eq ptr %0, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %42, %50
  %45 = phi ptr [ %52, %50 ], [ %0, %42 ]
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  tail call void @make_reg_eh_region_note_nothrow_nononlocal(ptr noundef nonnull %45) #22
  br label %50

50:                                               ; preds = %44, %49
  %51 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 2
  %52 = load ptr, ptr %51, align 8, !tbaa !114
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %44, !llvm.loop !220

54:                                               ; preds = %38, %50, %20, %42
  %55 = getelementptr inbounds %struct.no_conflict_data, ptr %5, i64 0, i32 1
  %56 = getelementptr inbounds %struct.no_conflict_data, ptr %5, i64 0, i32 2
  %57 = getelementptr inbounds %struct.no_conflict_data, ptr %5, i64 0, i32 3
  br label %58

58:                                               ; preds = %111, %54
  %59 = phi ptr [ %0, %54 ], [ %78, %111 ]
  %60 = phi ptr [ %0, %54 ], [ %112, %111 ]
  %61 = icmp eq ptr %59, null
  br i1 %61, label %116, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %59, align 8
  %64 = and i32 %63, 65535
  %65 = add nsw i32 %64, -7
  %66 = icmp ult i32 %65, 4
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !114
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 23
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = call ptr @single_set_2(ptr noundef nonnull %59, ptr noundef nonnull %69) #22
  br label %75

75:                                               ; preds = %62, %67, %73
  %76 = phi ptr [ %74, %73 ], [ null, %62 ], [ %69, %67 ]
  %77 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !114
  %79 = icmp eq ptr %76, null
  br i1 %79, label %111, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !114
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 37
  br i1 %85, label %86, label %111

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %88 = load i32, ptr %87, align 8, !tbaa !114
  %89 = icmp ugt i32 %88, 52
  br i1 %89, label %90, label %111

90:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  %91 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !103
  store ptr %91, ptr %5, align 8, !tbaa !221
  store ptr %60, ptr %55, align 8, !tbaa !223
  store ptr %59, ptr %56, align 8, !tbaa !224
  store i8 0, ptr %57, align 8, !tbaa !225
  %92 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !114
  call void @note_stores(ptr noundef %93, ptr noundef nonnull @no_conflict_move_test, ptr noundef nonnull %5) #22
  %94 = load i8, ptr %57, align 8, !tbaa !225
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %98 = load ptr, ptr %97, align 8, !tbaa !114
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %78, ptr %101, align 8, !tbaa !114
  br label %102

102:                                              ; preds = %96, %100
  %103 = phi ptr [ %60, %100 ], [ %78, %96 ]
  %104 = icmp eq ptr %78, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %97, align 8, !tbaa !114
  %107 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %106, ptr %107, align 8, !tbaa !114
  br label %108

108:                                              ; preds = %105, %102
  call void @add_insn(ptr noundef nonnull %59) #22
  br label %109

109:                                              ; preds = %108, %90
  %110 = phi ptr [ %60, %90 ], [ %103, %108 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  br label %111

111:                                              ; preds = %109, %86, %80, %75
  %112 = phi ptr [ %110, %109 ], [ %60, %86 ], [ %60, %80 ], [ %60, %75 ]
  %113 = load i32, ptr %59, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 12
  br i1 %115, label %116, label %58

116:                                              ; preds = %111, %58
  %117 = phi ptr [ %60, %58 ], [ %112, %111 ]
  %118 = icmp eq ptr %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %116, %119
  %120 = phi ptr [ %122, %119 ], [ %117, %116 ]
  %121 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1, i32 0, i32 0, i64 2
  %122 = load ptr, ptr %121, align 8, !tbaa !114
  call void @add_insn(ptr noundef nonnull %120) #22
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %119, !llvm.loop !226

124:                                              ; preds = %119, %116
  %125 = call ptr @emit_move_insn(ptr noundef %14, ptr noundef %2) #22
  %126 = load i32, ptr %14, align 8
  %127 = lshr i32 %126, 16
  %128 = and i32 %127, 255
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !144
  %132 = icmp eq i32 %131, 2956
  br i1 %132, label %136, label %133

133:                                              ; preds = %124
  %134 = call ptr @copy_rtx(ptr noundef %3) #22
  %135 = call ptr @set_unique_reg_note(ptr noundef %125, i32 noundef 4, ptr noundef %134) #22
  br label %136

136:                                              ; preds = %133, %124
  %137 = icmp eq ptr %14, %1
  br i1 %137, label %140, label %138

138:                                              ; preds = %136
  %139 = call ptr @emit_move_insn(ptr noundef nonnull %1, ptr noundef nonnull %14) #22
  br label %140

140:                                              ; preds = %138, %136
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @sign_expand_binop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #9 !prof !102 {
  %9 = alloca %struct.optab_d, align 8
  %10 = icmp ne i32 %6, 0
  %11 = select i1 %10, ptr %1, ptr %2
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %9) #22
  %12 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef %11, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 0)
  %13 = icmp ne ptr %12, null
  %14 = icmp eq i32 %7, 0
  %15 = or i1 %14, %13
  br i1 %15, label %41, label %16

16:                                               ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %9, ptr noundef nonnull align 8 dereferenceable(384) %2, i64 384, i1 false), !tbaa.struct !227
  %17 = sext i32 %0 to i64
  %18 = getelementptr inbounds %struct.optab_d, ptr %9, i64 0, i32 4, i64 %17
  store i32 2956, ptr %18, align 4, !tbaa !144
  %19 = getelementptr inbounds %struct.optab_d, ptr %9, i64 0, i32 3
  store ptr null, ptr %19, align 8, !tbaa !130
  %20 = call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %9, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 2)
  %21 = icmp eq ptr %20, null
  %22 = and i1 %10, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call ptr @expand_binop(i32 noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 2)
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi ptr [ %24, %23 ], [ %20, %16 ]
  %27 = icmp ne ptr %26, null
  %28 = icmp eq i32 %7, 2
  %29 = or i1 %28, %27
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = call ptr @expand_binop(i32 noundef %0, ptr noundef %11, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 1)
  %32 = icmp ne ptr %31, null
  %33 = icmp eq i32 %7, 1
  %34 = or i1 %33, %32
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %9, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7)
  %37 = icmp eq ptr %36, null
  %38 = and i1 %10, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call ptr @expand_binop(i32 noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7)
  br label %41

41:                                               ; preds = %35, %30, %25, %8, %39
  %42 = phi ptr [ %40, %39 ], [ %12, %8 ], [ %26, %25 ], [ %31, %30 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %9) #22
  ret ptr %42
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @expand_twoval_unop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !102 {
  %6 = icmp eq ptr %2, null
  %7 = select i1 %6, ptr %3, ptr %2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = tail call ptr @get_last_insn() #22
  %12 = zext nneg i32 %10 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !114
  br i1 %6, label %15, label %17

15:                                               ; preds = %5
  %16 = tail call ptr @gen_reg_rtx(i32 noundef %10) #22
  br label %17

17:                                               ; preds = %15, %5
  %18 = phi ptr [ %2, %5 ], [ %16, %15 ]
  %19 = icmp eq ptr %3, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call ptr @gen_reg_rtx(i32 noundef %10) #22
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi ptr [ %3, %17 ], [ %21, %20 ]
  %24 = tail call ptr @get_last_insn() #22
  %25 = getelementptr inbounds %struct.optab_d, ptr %0, i64 0, i32 4, i64 %12
  %26 = load i32, ptr %25, align 4, !tbaa !144
  %27 = icmp eq i32 %26, 2956
  br i1 %27, label %72, label %28

28:                                               ; preds = %22
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %29, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !146
  %32 = getelementptr inbounds %struct.insn_operand_data, ptr %31, i64 2, i32 2
  %33 = load i16, ptr %32, align 8
  %34 = zext i16 %33 to i32
  %35 = load i32, ptr %1, align 8
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, 0
  %39 = icmp eq i32 %37, %34
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %28
  %42 = tail call ptr @convert_to_mode(i32 noundef %34, ptr noundef nonnull %1, i32 noundef %4) #22
  br label %43

43:                                               ; preds = %41, %28
  %44 = phi ptr [ %42, %41 ], [ %1, %28 ]
  %45 = getelementptr inbounds %struct.insn_operand_data, ptr %31, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !150
  %47 = tail call i32 %46(ptr noundef %44, i32 noundef %34) #22
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = tail call ptr @copy_to_mode_reg(i32 noundef %34, ptr noundef %44) #22
  br label %51

51:                                               ; preds = %49, %43
  %52 = phi ptr [ %44, %43 ], [ %50, %49 ]
  %53 = load ptr, ptr %31, align 8, !tbaa !150
  %54 = tail call i32 %53(ptr noundef %18, i32 noundef %10) #22
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2334, ptr noundef nonnull @.str.1) #22
  br label %57

57:                                               ; preds = %51, %56
  %58 = getelementptr inbounds %struct.insn_operand_data, ptr %31, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !150
  %60 = tail call i32 %59(ptr noundef %23, i32 noundef %10) #22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2335, ptr noundef nonnull @.str.1) #22
  br label %63

63:                                               ; preds = %57, %62
  %64 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %29, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !152
  %66 = tail call ptr (ptr, ...) %65(ptr noundef %18, ptr noundef %23, ptr noundef %52) #22
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = tail call ptr @emit_insn(ptr noundef nonnull %66) #22
  br label %71

70:                                               ; preds = %63
  tail call void @delete_insns_since(ptr noundef %24) #22
  br label %71

71:                                               ; preds = %70, %68
  br i1 %67, label %72, label %98

72:                                               ; preds = %71, %22
  switch i8 %14, label %97 [
    i8 11, label %73
    i8 9, label %73
    i8 8, label %73
    i8 7, label %73
    i8 6, label %73
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ]

73:                                               ; preds = %72, %72, %72, %72, %72, %72, %72, %72
  %74 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %12
  %75 = load i8, ptr %74, align 1, !tbaa !114
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %97, label %77

77:                                               ; preds = %73, %93
  %78 = phi i8 [ %95, %93 ], [ %75, %73 ]
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds %struct.optab_d, ptr %0, i64 0, i32 4, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !144
  %82 = icmp eq i32 %81, 2956
  br i1 %82, label %93, label %83

83:                                               ; preds = %77
  %84 = zext i8 %78 to i32
  %85 = tail call ptr @gen_reg_rtx(i32 noundef %84) #22
  %86 = tail call ptr @gen_reg_rtx(i32 noundef %84) #22
  %87 = tail call ptr @convert_modes(i32 noundef %84, i32 noundef %10, ptr noundef %1, i32 noundef %4) #22
  %88 = tail call i32 @expand_twoval_unop(ptr noundef %0, ptr noundef %87, ptr noundef %85, ptr noundef %86, i32 noundef %4), !range !201
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  tail call void @convert_move(ptr noundef %18, ptr noundef %85, i32 noundef %4) #22
  tail call void @convert_move(ptr noundef %23, ptr noundef %86, i32 noundef %4) #22
  br label %92

91:                                               ; preds = %83
  tail call void @delete_insns_since(ptr noundef %24) #22
  br label %92

92:                                               ; preds = %91, %90
  br i1 %89, label %93, label %98

93:                                               ; preds = %77, %92
  %94 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %79
  %95 = load i8, ptr %94, align 1, !tbaa !114
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %77, !llvm.loop !228

97:                                               ; preds = %93, %73, %72
  tail call void @delete_insns_since(ptr noundef %11) #22
  br label %98

98:                                               ; preds = %92, %71, %97
  %99 = phi i32 [ 0, %97 ], [ 1, %71 ], [ 1, %92 ]
  ret i32 %99
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @expand_twoval_binop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 !prof !102 {
  %7 = icmp eq ptr %3, null
  %8 = select i1 %7, ptr %4, ptr %3
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = tail call ptr @get_last_insn() #22
  %13 = zext nneg i32 %11 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !114
  br i1 %7, label %16, label %18

16:                                               ; preds = %6
  %17 = tail call ptr @gen_reg_rtx(i32 noundef %11) #22
  br label %18

18:                                               ; preds = %16, %6
  %19 = phi ptr [ %3, %6 ], [ %17, %16 ]
  %20 = icmp eq ptr %4, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call ptr @gen_reg_rtx(i32 noundef %11) #22
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi ptr [ %4, %18 ], [ %22, %21 ]
  %25 = tail call ptr @get_last_insn() #22
  %26 = getelementptr inbounds %struct.optab_d, ptr %0, i64 0, i32 4, i64 %13
  %27 = load i32, ptr %26, align 4, !tbaa !144
  %28 = icmp eq i32 %27, 2956
  br i1 %28, label %101, label %29

29:                                               ; preds = %23
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %30, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !146
  %33 = getelementptr inbounds %struct.insn_operand_data, ptr %32, i64 1, i32 2
  %34 = load i16, ptr %33, align 8
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.insn_operand_data, ptr %32, i64 2, i32 2
  %37 = load i16, ptr %36, align 8
  %38 = zext i16 %37 to i32
  %39 = trunc i32 %5 to i8
  %40 = tail call fastcc ptr @avoid_expensive_constant(i32 noundef %35, ptr noundef %0, ptr noundef %1, i8 noundef zeroext %39)
  %41 = tail call fastcc ptr @avoid_expensive_constant(i32 noundef %38, ptr noundef %0, ptr noundef %2, i8 noundef zeroext %39)
  %42 = load i32, ptr %1, align 8
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = icmp ne i32 %44, %35
  %46 = icmp ne i16 %34, 0
  %47 = and i1 %46, %45
  br i1 %47, label %48, label %52

48:                                               ; preds = %29
  %49 = icmp eq i32 %44, 0
  %50 = select i1 %49, i32 %11, i32 %44
  %51 = tail call ptr @convert_modes(i32 noundef %35, i32 noundef %50, ptr noundef %40, i32 noundef %5) #22
  br label %52

52:                                               ; preds = %48, %29
  %53 = phi ptr [ %51, %48 ], [ %40, %29 ]
  %54 = load i32, ptr %2, align 8
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 255
  %57 = icmp ne i32 %56, %38
  %58 = icmp ne i16 %37, 0
  %59 = and i1 %58, %57
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = icmp eq i32 %56, 0
  %62 = select i1 %61, i32 %11, i32 %56
  %63 = tail call ptr @convert_modes(i32 noundef %38, i32 noundef %62, ptr noundef %41, i32 noundef %5) #22
  br label %64

64:                                               ; preds = %60, %52
  %65 = phi ptr [ %63, %60 ], [ %41, %52 ]
  %66 = getelementptr inbounds %struct.insn_operand_data, ptr %32, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !150
  %68 = tail call i32 %67(ptr noundef %53, i32 noundef %35) #22
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = tail call ptr @copy_to_mode_reg(i32 noundef %35, ptr noundef %53) #22
  br label %72

72:                                               ; preds = %70, %64
  %73 = phi ptr [ %53, %64 ], [ %71, %70 ]
  %74 = getelementptr inbounds %struct.insn_operand_data, ptr %32, i64 2
  %75 = load ptr, ptr %74, align 8, !tbaa !150
  %76 = tail call i32 %75(ptr noundef %65, i32 noundef %38) #22
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = tail call ptr @copy_to_mode_reg(i32 noundef %38, ptr noundef %65) #22
  br label %80

80:                                               ; preds = %78, %72
  %81 = phi ptr [ %65, %72 ], [ %79, %78 ]
  %82 = load ptr, ptr %32, align 8, !tbaa !150
  %83 = tail call i32 %82(ptr noundef %19, i32 noundef %11) #22
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2451, ptr noundef nonnull @.str.1) #22
  br label %86

86:                                               ; preds = %80, %85
  %87 = getelementptr inbounds %struct.insn_operand_data, ptr %32, i64 3
  %88 = load ptr, ptr %87, align 8, !tbaa !150
  %89 = tail call i32 %88(ptr noundef %24, i32 noundef %11) #22
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2452, ptr noundef nonnull @.str.1) #22
  br label %92

92:                                               ; preds = %86, %91
  %93 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %30, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !152
  %95 = tail call ptr (ptr, ...) %94(ptr noundef %19, ptr noundef %73, ptr noundef %81, ptr noundef %24) #22
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = tail call ptr @emit_insn(ptr noundef nonnull %95) #22
  br label %100

99:                                               ; preds = %92
  tail call void @delete_insns_since(ptr noundef %25) #22
  br label %100

100:                                              ; preds = %99, %97
  br i1 %96, label %101, label %128

101:                                              ; preds = %100, %23
  switch i8 %15, label %127 [
    i8 11, label %102
    i8 9, label %102
    i8 8, label %102
    i8 7, label %102
    i8 6, label %102
    i8 5, label %102
    i8 4, label %102
    i8 2, label %102
  ]

102:                                              ; preds = %101, %101, %101, %101, %101, %101, %101, %101
  %103 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %13
  %104 = load i8, ptr %103, align 1, !tbaa !114
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %127, label %106

106:                                              ; preds = %102, %123
  %107 = phi i8 [ %125, %123 ], [ %104, %102 ]
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds %struct.optab_d, ptr %0, i64 0, i32 4, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !144
  %111 = icmp eq i32 %110, 2956
  br i1 %111, label %123, label %112

112:                                              ; preds = %106
  %113 = zext i8 %107 to i32
  %114 = tail call ptr @gen_reg_rtx(i32 noundef %113) #22
  %115 = tail call ptr @gen_reg_rtx(i32 noundef %113) #22
  %116 = tail call ptr @convert_modes(i32 noundef %113, i32 noundef %11, ptr noundef %1, i32 noundef %5) #22
  %117 = tail call ptr @convert_modes(i32 noundef %113, i32 noundef %11, ptr noundef %2, i32 noundef %5) #22
  %118 = tail call i32 @expand_twoval_binop(ptr noundef %0, ptr noundef %116, ptr noundef %117, ptr noundef %114, ptr noundef %115, i32 noundef %5), !range !201
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  tail call void @convert_move(ptr noundef %19, ptr noundef %114, i32 noundef %5) #22
  tail call void @convert_move(ptr noundef %24, ptr noundef %115, i32 noundef %5) #22
  br label %122

121:                                              ; preds = %112
  tail call void @delete_insns_since(ptr noundef %25) #22
  br label %122

122:                                              ; preds = %121, %120
  br i1 %119, label %123, label %128

123:                                              ; preds = %106, %122
  %124 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %108
  %125 = load i8, ptr %124, align 1, !tbaa !114
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %106, !llvm.loop !229

127:                                              ; preds = %123, %102, %101
  tail call void @delete_insns_since(ptr noundef %12) #22
  br label %128

128:                                              ; preds = %122, %100, %127
  %129 = phi i32 [ 0, %127 ], [ 1, %100 ], [ 1, %122 ]
  ret i32 %129
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @expand_twoval_binop_libfunc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 !prof !102 {
  %7 = icmp eq ptr %3, null
  %8 = icmp ne ptr %4, null
  %9 = xor i1 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2517, ptr noundef nonnull @.str.1) #22
  br label %11

11:                                               ; preds = %6, %10
  %12 = load i32, ptr %1, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = tail call ptr @optab_libfunc(ptr noundef %0, i32 noundef %14)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %11
  %18 = zext nneg i32 %14 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !114
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 4
  %23 = tail call i32 @smallest_mode_for_size(i32 noundef %22, i32 noundef 2) #22
  tail call void @start_sequence() #22
  %24 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef nonnull %15, ptr noundef null, i32 noundef 1, i32 noundef %23, i32 noundef 2, ptr noundef nonnull %1, i32 noundef %14, ptr noundef %2, i32 noundef %14) #22
  br i1 %7, label %25, label %28

25:                                               ; preds = %17
  %26 = load i8, ptr %19, align 1, !tbaa !114
  %27 = zext i8 %26 to i32
  br label %28

28:                                               ; preds = %17, %25
  %29 = phi ptr [ %4, %25 ], [ %3, %17 ]
  %30 = phi i32 [ %27, %25 ], [ 0, %17 ]
  %31 = tail call ptr @simplify_gen_subreg(i32 noundef %14, ptr noundef %24, i32 noundef %23, i32 noundef %30) #22
  %32 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %33 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %5, i32 noundef %14, ptr noundef nonnull %1, ptr noundef %2) #22
  tail call void @emit_libcall_block(ptr noundef %32, ptr noundef %29, ptr noundef %31, ptr noundef %33)
  br label %34

34:                                               ; preds = %11, %28
  %35 = phi i8 [ 1, %28 ], [ 0, %11 ]
  ret i8 %35
}

declare i32 @smallest_mode_for_size(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @expand_simple_unop(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #10 !prof !230 {
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !103
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !231

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2554, ptr noundef nonnull @.str.1) #22
  br label %11

11:                                               ; preds = %5, %10
  %12 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef %8, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @expand_unop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #10 !prof !230 {
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !114
  %9 = tail call fastcc ptr @expand_unop_direct(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %467, !prof !231

11:                                               ; preds = %5
  %12 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71)
  br i1 %12, label %13, label %71

13:                                               ; preds = %11
  switch i8 %8, label %54 [
    i8 11, label %14
    i8 9, label %14
    i8 8, label %14
    i8 7, label %14
    i8 6, label %14
    i8 5, label %14
    i8 4, label %14
    i8 2, label %14
  ]

14:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13
  br label %15

15:                                               ; preds = %14, %20
  %16 = phi i64 [ %21, %20 ], [ %6, %14 ]
  %17 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !114
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %52, label %20

20:                                               ; preds = %15
  %21 = zext i8 %18 to i64
  %22 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 4, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !144
  %24 = icmp eq i32 %23, 2956
  br i1 %24, label %15, label %25, !llvm.loop !232

25:                                               ; preds = %20
  %26 = zext i8 %18 to i32
  %27 = tail call ptr @get_last_insn() #22
  %28 = icmp eq ptr %3, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi ptr [ %30, %29 ], [ %3, %25 ]
  %33 = tail call ptr @convert_modes(i32 noundef %26, i32 noundef %0, ptr noundef %2, i32 noundef 1) #22
  %34 = tail call ptr @expand_unop(i32 noundef %26, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71), ptr noundef %33, ptr noundef null, i32 noundef 1)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %48, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %38 = load i8, ptr %37, align 1, !tbaa !114
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %41 = load i8, ptr %40, align 1, !tbaa !114
  %42 = zext i8 %41 to i32
  %43 = sub nsw i32 %39, %42
  %44 = shl nsw i32 %43, 3
  %45 = sext i32 %44 to i64
  %46 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %45) #22
  %47 = tail call ptr @expand_binop(i32 noundef %26, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %34, ptr noundef %46, ptr noundef %32, i32 noundef 1, i32 noundef 0)
  br label %48

48:                                               ; preds = %36, %31
  %49 = phi ptr [ %47, %36 ], [ null, %31 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  tail call void @delete_insns_since(ptr noundef %27) #22
  br label %52

52:                                               ; preds = %15, %51, %48
  %53 = phi ptr [ %49, %51 ], [ %49, %48 ], [ undef, %15 ]
  br i1 %19, label %54, label %55

54:                                               ; preds = %52, %13
  br label %55

55:                                               ; preds = %52, %54
  %56 = phi ptr [ null, %54 ], [ %53, %52 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %467

58:                                               ; preds = %55
  %59 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %60 = load i8, ptr %59, align 1, !tbaa !114
  %61 = icmp eq i8 %60, 8
  br i1 %61, label %62, label %314

62:                                               ; preds = %58
  %63 = load i32, ptr @word_mode, align 4, !tbaa !118
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 4, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !144
  %67 = icmp eq i32 %66, 2956
  br i1 %67, label %314, label %68

68:                                               ; preds = %62
  %69 = tail call fastcc ptr @expand_doubleword_clz(i32 noundef %0, ptr noundef %2, ptr noundef %3)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %314, label %467

71:                                               ; preds = %11
  %72 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68)
  br i1 %72, label %73, label %132

73:                                               ; preds = %71
  switch i8 %8, label %116 [
    i8 11, label %74
    i8 9, label %74
    i8 8, label %74
    i8 7, label %74
    i8 6, label %74
    i8 5, label %74
    i8 4, label %74
    i8 2, label %74
  ]

74:                                               ; preds = %73, %73, %73, %73, %73, %73, %73, %73
  br label %75

75:                                               ; preds = %74, %80
  %76 = phi i64 [ %81, %80 ], [ %6, %74 ]
  %77 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !114
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %116, label %80

80:                                               ; preds = %75
  %81 = zext i8 %78 to i64
  %82 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68, i32 4, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !144
  %84 = icmp eq i32 %83, 2956
  br i1 %84, label %75, label %85, !llvm.loop !233

85:                                               ; preds = %80
  %86 = zext i8 %78 to i32
  %87 = tail call ptr @get_last_insn() #22
  %88 = tail call fastcc ptr @widen_operand(ptr noundef %2, i32 noundef %86, i32 noundef %0, i32 noundef 1, i32 noundef 1)
  %89 = tail call ptr @expand_unop(i32 noundef %86, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68), ptr noundef %88, ptr noundef null, i32 noundef 1)
  %90 = icmp eq ptr %89, null
  br i1 %90, label %103, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %81
  %93 = load i8, ptr %92, align 1, !tbaa !114
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %96 = load i8, ptr %95, align 1, !tbaa !114
  %97 = zext i8 %96 to i32
  %98 = sub nsw i32 %94, %97
  %99 = shl nsw i32 %98, 3
  %100 = sext i32 %99 to i64
  %101 = tail call ptr @size_int_kind(i64 noundef %100, i32 noundef 0) #22
  %102 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %86, ptr noundef nonnull %89, ptr noundef %101, ptr noundef null, i32 noundef 1) #22
  br label %103

103:                                              ; preds = %91, %85
  %104 = phi ptr [ %102, %91 ], [ null, %85 ]
  %105 = icmp eq ptr %104, null
  br i1 %105, label %115, label %106

106:                                              ; preds = %103
  %107 = icmp eq ptr %3, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %106
  %109 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi ptr [ %109, %108 ], [ %3, %106 ]
  %112 = load ptr, ptr @rtl_hooks, align 8, !tbaa !174
  %113 = tail call ptr %112(i32 noundef %0, ptr noundef nonnull %104) #22
  %114 = tail call ptr @emit_move_insn(ptr noundef %111, ptr noundef %113) #22
  br label %116

115:                                              ; preds = %103
  tail call void @delete_insns_since(ptr noundef %87) #22
  br label %116

116:                                              ; preds = %75, %73, %110, %115
  %117 = phi ptr [ null, %73 ], [ %111, %110 ], [ %3, %115 ], [ null, %75 ]
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %467

119:                                              ; preds = %116
  %120 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %121 = load i8, ptr %120, align 1, !tbaa !114
  %122 = icmp eq i8 %121, 8
  br i1 %122, label %123, label %314

123:                                              ; preds = %119
  %124 = load i32, ptr @word_mode, align 4, !tbaa !118
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68, i32 4, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !144
  %128 = icmp eq i32 %127, 2956
  br i1 %128, label %314, label %129

129:                                              ; preds = %123
  %130 = tail call fastcc ptr @expand_doubleword_bswap(i32 noundef %0, ptr noundef %2, ptr noundef %3)
  %131 = icmp eq ptr %130, null
  br i1 %131, label %314, label %467

132:                                              ; preds = %71
  %133 = icmp eq i8 %8, 2
  switch i8 %8, label %178 [
    i8 11, label %134
    i8 9, label %134
    i8 8, label %134
    i8 7, label %134
    i8 6, label %134
    i8 5, label %134
    i8 4, label %134
    i8 2, label %134
  ]

134:                                              ; preds = %132, %132, %132, %132, %132, %132, %132, %132
  %135 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %6
  %136 = load i8, ptr %135, align 1, !tbaa !114
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %178, label %138

138:                                              ; preds = %134
  %139 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64)
  %140 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69)
  %141 = select i1 %139, i1 true, i1 %140
  %142 = select i1 %141, i1 %133, i1 false
  %143 = zext i1 %142 to i32
  br label %144

144:                                              ; preds = %138, %172
  %145 = phi i8 [ %136, %138 ], [ %176, %172 ]
  %146 = phi ptr [ undef, %138 ], [ %174, %172 ]
  %147 = phi ptr [ %3, %138 ], [ %173, %172 ]
  %148 = zext i8 %145 to i64
  %149 = getelementptr inbounds %struct.optab_d, ptr %1, i64 0, i32 4, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !144
  %151 = icmp eq i32 %150, 2956
  br i1 %151, label %172, label %152

152:                                              ; preds = %144
  %153 = zext i8 %145 to i32
  %154 = tail call ptr @get_last_insn() #22
  %155 = tail call fastcc ptr @widen_operand(ptr noundef %2, i32 noundef %153, i32 noundef %0, i32 noundef %4, i32 noundef %143)
  %156 = tail call ptr @expand_unop(i32 noundef %153, ptr noundef %1, ptr noundef %155, ptr noundef null, i32 noundef %4)
  %157 = icmp eq ptr %156, null
  br i1 %157, label %168, label %158

158:                                              ; preds = %152
  br i1 %133, label %165, label %159

159:                                              ; preds = %158
  %160 = icmp eq ptr %147, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %159
  %162 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi ptr [ %162, %161 ], [ %147, %159 ]
  tail call void @convert_move(ptr noundef %164, ptr noundef nonnull %156, i32 noundef 0) #22
  br label %169

165:                                              ; preds = %158
  %166 = load ptr, ptr @rtl_hooks, align 8, !tbaa !174
  %167 = tail call ptr %166(i32 noundef %0, ptr noundef nonnull %156) #22
  br label %169

168:                                              ; preds = %152
  tail call void @delete_insns_since(ptr noundef %154) #22
  br label %169

169:                                              ; preds = %168, %165, %163
  %170 = phi ptr [ %164, %163 ], [ %147, %165 ], [ %147, %168 ]
  %171 = phi ptr [ %164, %163 ], [ %167, %165 ], [ %146, %168 ]
  br i1 %157, label %172, label %467

172:                                              ; preds = %144, %169
  %173 = phi ptr [ %170, %169 ], [ %147, %144 ]
  %174 = phi ptr [ %171, %169 ], [ %146, %144 ]
  %175 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %148
  %176 = load i8, ptr %175, align 1, !tbaa !114
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %144, !llvm.loop !234

178:                                              ; preds = %172, %134, %132
  %179 = phi ptr [ %3, %132 ], [ %3, %134 ], [ %173, %172 ]
  %180 = phi ptr [ undef, %132 ], [ undef, %134 ], [ %174, %172 ]
  %181 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69)
  %182 = and i1 %181, %133
  br i1 %182, label %183, label %221

183:                                              ; preds = %178
  %184 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %185 = load i8, ptr %184, align 1, !tbaa !114
  %186 = icmp ugt i8 %185, 4
  br i1 %186, label %187, label %221

187:                                              ; preds = %183
  %188 = load i32, ptr @word_mode, align 4, !tbaa !118
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 4, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !144
  %192 = icmp eq i32 %191, 2956
  br i1 %192, label %221, label %193

193:                                              ; preds = %187
  %194 = icmp eq ptr %179, null
  %195 = icmp eq ptr %179, %2
  %196 = or i1 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %199

199:                                              ; preds = %193, %197
  %200 = phi ptr [ %198, %197 ], [ %179, %193 ]
  tail call void @start_sequence() #22
  %201 = load i8, ptr %184, align 1, !tbaa !114
  %202 = icmp ult i8 %201, 4
  br i1 %202, label %218, label %203

203:                                              ; preds = %199, %212
  %204 = phi i32 [ %213, %212 ], [ 0, %199 ]
  %205 = tail call ptr @operand_subword(ptr noundef %200, i32 noundef %204, i32 noundef 1, i32 noundef %0) #22
  %206 = load i32, ptr @word_mode, align 4, !tbaa !118
  %207 = tail call ptr @operand_subword_force(ptr noundef %2, i32 noundef %204, i32 noundef %0) #22
  %208 = tail call ptr @expand_unop(i32 noundef %206, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), ptr noundef %207, ptr noundef %205, i32 noundef %4)
  %209 = icmp eq ptr %205, %208
  br i1 %209, label %212, label %210

210:                                              ; preds = %203
  %211 = tail call ptr @emit_move_insn(ptr noundef %205, ptr noundef %208) #22
  br label %212

212:                                              ; preds = %210, %203
  %213 = add nuw nsw i32 %204, 1
  %214 = load i8, ptr %184, align 1, !tbaa !114
  %215 = lshr i8 %214, 2
  %216 = zext nneg i8 %215 to i32
  %217 = icmp ult i32 %213, %216
  br i1 %217, label %203, label %218, !llvm.loop !235

218:                                              ; preds = %212, %199
  %219 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %220 = tail call ptr @emit_insn(ptr noundef %219) #22
  br label %467

221:                                              ; preds = %187, %183, %178
  %222 = load i32, ptr %1, align 8, !tbaa !153
  %223 = icmp eq i32 %222, 51
  br i1 %223, label %224, label %256

224:                                              ; preds = %221
  %225 = and i8 %8, -2
  %226 = icmp eq i8 %225, 8
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = tail call fastcc ptr @expand_absneg_bit(i32 noundef 51, i32 noundef %0, ptr noundef %2, ptr noundef %179)
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %467

230:                                              ; preds = %224, %227
  switch i8 %8, label %248 [
    i8 8, label %231
    i8 9, label %231
    i8 11, label %231
    i8 17, label %231
  ]

231:                                              ; preds = %230, %230, %230, %230
  br i1 %226, label %236, label %232

232:                                              ; preds = %231
  %233 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %6
  %234 = load i8, ptr %233, align 1, !tbaa !114
  %235 = zext i8 %234 to i32
  br label %236

236:                                              ; preds = %231, %232
  %237 = phi i32 [ %235, %232 ], [ %0, %231 ]
  %238 = add i32 %237, -38
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %239
  %241 = load ptr, ptr %240, align 8, !tbaa !103
  %242 = getelementptr inbounds %struct.real_format, ptr %241, i64 0, i32 14
  %243 = load i8, ptr %242, align 1, !tbaa !236
  %244 = icmp ne i8 %243, 0
  %245 = load i32, ptr @flag_signed_zeros, align 4
  %246 = icmp ne i32 %245, 0
  %247 = select i1 %244, i1 %246, i1 false
  br i1 %247, label %256, label %248

248:                                              ; preds = %230, %236
  %249 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65)
  %250 = select i1 %249, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14)
  %251 = sext i32 %0 to i64
  %252 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !103
  %254 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %250, ptr noundef %253, ptr noundef %2, ptr noundef %179, i32 noundef %4, i32 noundef 0)
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %467

256:                                              ; preds = %248, %236, %221
  %257 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74)
  br i1 %257, label %258, label %304

258:                                              ; preds = %256
  switch i8 %8, label %300 [
    i8 11, label %259
    i8 9, label %259
    i8 8, label %259
    i8 7, label %259
    i8 6, label %259
    i8 5, label %259
    i8 4, label %259
    i8 2, label %259
  ]

259:                                              ; preds = %258, %258, %258, %258, %258, %258, %258, %258
  %260 = icmp eq i32 %0, 0
  br i1 %260, label %297, label %261

261:                                              ; preds = %259
  %262 = sext i32 %0 to i64
  %263 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73, i32 4, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !144
  %265 = icmp eq i32 %264, 2956
  br i1 %265, label %291, label %272

266:                                              ; preds = %291
  %267 = zext i8 %295 to i32
  %268 = zext i8 %295 to i64
  %269 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73, i32 4, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !144
  %271 = icmp eq i32 %270, 2956
  br i1 %271, label %291, label %272, !llvm.loop !238

272:                                              ; preds = %266, %261
  %273 = phi i1 [ %260, %261 ], [ %296, %266 ]
  %274 = phi i32 [ %0, %261 ], [ %267, %266 ]
  %275 = tail call ptr @get_last_insn() #22
  %276 = icmp eq ptr %179, null
  br i1 %276, label %277, label %279

277:                                              ; preds = %272
  %278 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %279

279:                                              ; preds = %277, %272
  %280 = phi ptr [ %278, %277 ], [ %179, %272 ]
  %281 = tail call ptr @convert_modes(i32 noundef %274, i32 noundef %0, ptr noundef %2, i32 noundef 1) #22
  %282 = tail call ptr @expand_unop(i32 noundef %274, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73), ptr noundef %281, ptr noundef null, i32 noundef 1)
  %283 = icmp eq ptr %282, null
  br i1 %283, label %287, label %284

284:                                              ; preds = %279
  %285 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !103
  %286 = tail call ptr @expand_binop(i32 noundef %274, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef nonnull %282, ptr noundef %285, ptr noundef %280, i32 noundef 1, i32 noundef 0)
  br label %287

287:                                              ; preds = %284, %279
  %288 = phi ptr [ %286, %284 ], [ null, %279 ]
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %297

290:                                              ; preds = %287
  tail call void @delete_insns_since(ptr noundef %275) #22
  br label %297

291:                                              ; preds = %261, %266
  %292 = phi i32 [ %267, %266 ], [ %0, %261 ]
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %293
  %295 = load i8, ptr %294, align 1, !tbaa !114
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %297, label %266, !llvm.loop !238

297:                                              ; preds = %291, %259, %290, %287
  %298 = phi i1 [ %273, %290 ], [ %273, %287 ], [ %260, %259 ], [ %296, %291 ]
  %299 = phi ptr [ %288, %290 ], [ %288, %287 ], [ undef, %259 ], [ undef, %291 ]
  br i1 %298, label %300, label %301

300:                                              ; preds = %297, %258
  br label %301

301:                                              ; preds = %297, %300
  %302 = phi ptr [ null, %300 ], [ %299, %297 ]
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %467

304:                                              ; preds = %301, %256
  %305 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70)
  br i1 %305, label %306, label %309

306:                                              ; preds = %304
  %307 = tail call fastcc ptr @expand_ffs(i32 noundef %0, ptr noundef %2, ptr noundef %179)
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %467

309:                                              ; preds = %306, %304
  %310 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72)
  br i1 %310, label %311, label %314

311:                                              ; preds = %309
  %312 = tail call fastcc ptr @expand_ctz(i32 noundef %0, ptr noundef %2, ptr noundef %179)
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %467

314:                                              ; preds = %311, %129, %68, %309, %119, %123, %58, %62
  %315 = phi ptr [ %3, %62 ], [ %3, %58 ], [ %3, %123 ], [ %3, %119 ], [ %179, %309 ], [ %3, %68 ], [ %3, %129 ], [ %179, %311 ]
  %316 = phi ptr [ undef, %62 ], [ undef, %58 ], [ undef, %123 ], [ undef, %119 ], [ %180, %309 ], [ undef, %68 ], [ undef, %129 ], [ %180, %311 ]
  %317 = tail call ptr @optab_libfunc(ptr noundef %1, i32 noundef %0)
  %318 = icmp eq ptr %317, null
  br i1 %318, label %367, label %319

319:                                              ; preds = %314
  %320 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70)
  %321 = or i1 %320, %12
  %322 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72)
  %323 = select i1 %321, i1 true, i1 %322
  %324 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73)
  %325 = select i1 %323, i1 true, i1 %324
  %326 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74)
  %327 = select i1 %325, i1 true, i1 %326
  br i1 %327, label %328, label %347

328:                                              ; preds = %319
  %329 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !103
  %330 = load i64, ptr %329, align 8
  %331 = and i64 %330, 65535
  %332 = icmp eq i64 %331, 14
  br i1 %332, label %333, label %335

333:                                              ; preds = %328
  %334 = tail call i32 @vector_type_mode(ptr noundef nonnull %329) #22
  br label %340

335:                                              ; preds = %328
  %336 = getelementptr inbounds %struct.tree_type, ptr %329, i64 0, i32 6
  %337 = load i32, ptr %336, align 4
  %338 = lshr i32 %337, 16
  %339 = and i32 %338, 255
  br label %340

340:                                              ; preds = %335, %333
  %341 = phi i32 [ %334, %333 ], [ %339, %335 ]
  %342 = tail call ptr @optab_libfunc(ptr noundef %1, i32 noundef %0)
  %343 = tail call ptr @hard_libcall_value(i32 noundef %341, ptr noundef %342) #22
  %344 = load i32, ptr %343, align 8
  %345 = lshr i32 %344, 16
  %346 = and i32 %345, 255
  br label %347

347:                                              ; preds = %319, %340
  %348 = phi i32 [ %346, %340 ], [ %0, %319 ]
  tail call void @start_sequence() #22
  %349 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef nonnull %317, ptr noundef null, i32 noundef 1, i32 noundef %348, i32 noundef 1, ptr noundef %2, i32 noundef %0) #22
  %350 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %351 = tail call ptr @gen_reg_rtx(i32 noundef %348) #22
  %352 = load i32, ptr %1, align 8, !tbaa !153
  %353 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %352, i32 noundef %0, ptr noundef %2) #22
  %354 = zext i32 %348 to i64
  %355 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %354
  %356 = load i8, ptr %355, align 1, !tbaa !114
  %357 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %358 = load i8, ptr %357, align 1, !tbaa !114
  %359 = icmp ult i8 %356, %358
  br i1 %359, label %362, label %360

360:                                              ; preds = %347
  %361 = icmp ugt i8 %356, %358
  br i1 %361, label %362, label %365

362:                                              ; preds = %360, %347
  %363 = phi i32 [ 100, %347 ], [ 99, %360 ]
  %364 = tail call ptr @simplify_gen_unary(i32 noundef %363, i32 noundef %348, ptr noundef %353, i32 noundef %0) #22
  br label %365

365:                                              ; preds = %362, %360
  %366 = phi ptr [ %353, %360 ], [ %364, %362 ]
  tail call void @emit_libcall_block(ptr noundef %350, ptr noundef %351, ptr noundef %349, ptr noundef %366)
  br label %467

367:                                              ; preds = %314
  %368 = icmp eq i8 %8, 2
  switch i8 %8, label %432 [
    i8 11, label %369
    i8 9, label %369
    i8 8, label %369
    i8 7, label %369
    i8 6, label %369
    i8 5, label %369
    i8 4, label %369
    i8 2, label %369
  ]

369:                                              ; preds = %367, %367, %367, %367, %367, %367, %367, %367
  %370 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %6
  %371 = load i8, ptr %370, align 1, !tbaa !114
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %432, label %373

373:                                              ; preds = %369
  %374 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64)
  %375 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69)
  %376 = select i1 %374, i1 true, i1 %375
  %377 = select i1 %376, i1 %368, i1 false
  %378 = zext i1 %377 to i32
  br label %379

379:                                              ; preds = %373, %426
  %380 = phi i8 [ %371, %373 ], [ %430, %426 ]
  %381 = phi ptr [ %316, %373 ], [ %428, %426 ]
  %382 = phi ptr [ %315, %373 ], [ %427, %426 ]
  %383 = zext i8 %380 to i32
  %384 = zext i8 %380 to i64
  %385 = getelementptr inbounds %struct.optab_d, ptr %1, i64 0, i32 4, i64 %384
  %386 = load i32, ptr %385, align 4, !tbaa !144
  %387 = icmp eq i32 %386, 2956
  br i1 %387, label %388, label %391

388:                                              ; preds = %379
  %389 = tail call ptr @optab_libfunc(ptr noundef %1, i32 noundef %383)
  %390 = icmp eq ptr %389, null
  br i1 %390, label %426, label %391

391:                                              ; preds = %388, %379
  %392 = tail call ptr @get_last_insn() #22
  %393 = tail call fastcc ptr @widen_operand(ptr noundef %2, i32 noundef %383, i32 noundef %0, i32 noundef %4, i32 noundef %378)
  %394 = tail call ptr @expand_unop(i32 noundef %383, ptr noundef %1, ptr noundef %393, ptr noundef null, i32 noundef %4)
  %395 = icmp ne ptr %394, null
  %396 = select i1 %12, i1 %395, i1 false
  br i1 %396, label %397, label %409

397:                                              ; preds = %391
  %398 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %399 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %384
  %400 = load i8, ptr %399, align 1, !tbaa !114
  %401 = zext i8 %400 to i32
  %402 = load i8, ptr %398, align 1, !tbaa !114
  %403 = zext i8 %402 to i32
  %404 = sub nsw i32 %401, %403
  %405 = shl nsw i32 %404, 3
  %406 = sext i32 %405 to i64
  %407 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %406) #22
  %408 = tail call ptr @expand_binop(i32 noundef %383, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %394, ptr noundef %407, ptr noundef %382, i32 noundef 1, i32 noundef 0)
  br label %409

409:                                              ; preds = %397, %391
  %410 = phi ptr [ %408, %397 ], [ %394, %391 ]
  %411 = icmp eq ptr %410, null
  br i1 %411, label %422, label %412

412:                                              ; preds = %409
  br i1 %368, label %419, label %413

413:                                              ; preds = %412
  %414 = icmp eq ptr %382, null
  br i1 %414, label %415, label %417

415:                                              ; preds = %413
  %416 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %417

417:                                              ; preds = %415, %413
  %418 = phi ptr [ %416, %415 ], [ %382, %413 ]
  tail call void @convert_move(ptr noundef %418, ptr noundef nonnull %410, i32 noundef 0) #22
  br label %423

419:                                              ; preds = %412
  %420 = load ptr, ptr @rtl_hooks, align 8, !tbaa !174
  %421 = tail call ptr %420(i32 noundef %0, ptr noundef nonnull %410) #22
  br label %423

422:                                              ; preds = %409
  tail call void @delete_insns_since(ptr noundef %392) #22
  br label %423

423:                                              ; preds = %422, %419, %417
  %424 = phi ptr [ %418, %417 ], [ %382, %419 ], [ %382, %422 ]
  %425 = phi ptr [ %418, %417 ], [ %421, %419 ], [ %381, %422 ]
  br i1 %411, label %426, label %467

426:                                              ; preds = %388, %423
  %427 = phi ptr [ %424, %423 ], [ %382, %388 ]
  %428 = phi ptr [ %425, %423 ], [ %381, %388 ]
  %429 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %384
  %430 = load i8, ptr %429, align 1, !tbaa !114
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %432, label %379, !llvm.loop !239

432:                                              ; preds = %426, %369, %367
  %433 = phi ptr [ %315, %367 ], [ %315, %369 ], [ %427, %426 ]
  %434 = phi ptr [ %316, %367 ], [ %316, %369 ], [ %428, %426 ]
  %435 = load i32, ptr %1, align 8, !tbaa !153
  %436 = icmp eq i32 %435, 51
  br i1 %436, label %437, label %466

437:                                              ; preds = %432
  switch i8 %8, label %457 [
    i8 8, label %438
    i8 9, label %438
    i8 11, label %438
    i8 17, label %438
  ]

438:                                              ; preds = %437, %437, %437, %437
  %439 = and i8 %8, -2
  %440 = icmp eq i8 %439, 8
  br i1 %440, label %445, label %441

441:                                              ; preds = %438
  %442 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %6
  %443 = load i8, ptr %442, align 1, !tbaa !114
  %444 = zext i8 %443 to i32
  br label %445

445:                                              ; preds = %438, %441
  %446 = phi i32 [ %444, %441 ], [ %0, %438 ]
  %447 = add i32 %446, -38
  %448 = zext i32 %447 to i64
  %449 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %448
  %450 = load ptr, ptr %449, align 8, !tbaa !103
  %451 = getelementptr inbounds %struct.real_format, ptr %450, i64 0, i32 14
  %452 = load i8, ptr %451, align 1, !tbaa !236
  %453 = icmp ne i8 %452, 0
  %454 = load i32, ptr @flag_signed_zeros, align 4
  %455 = icmp ne i32 %454, 0
  %456 = select i1 %453, i1 %455, i1 false
  br i1 %456, label %466, label %457

457:                                              ; preds = %437, %445
  %458 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65)
  %459 = select i1 %458, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14)
  %460 = sext i32 %0 to i64
  %461 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %460
  %462 = load ptr, ptr %461, align 8, !tbaa !103
  %463 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %459, ptr noundef %462, ptr noundef %2, ptr noundef %433, i32 noundef %4, i32 noundef 3)
  %464 = icmp eq ptr %463, null
  %465 = select i1 %464, ptr %434, ptr %463
  br i1 %464, label %466, label %467

466:                                              ; preds = %457, %445, %432
  br label %467

467:                                              ; preds = %169, %423, %311, %306, %301, %248, %227, %129, %116, %68, %55, %5, %457, %466, %365, %218
  %468 = phi ptr [ %351, %365 ], [ null, %466 ], [ %465, %457 ], [ %200, %218 ], [ %9, %5 ], [ %56, %55 ], [ %69, %68 ], [ %117, %116 ], [ %130, %129 ], [ %228, %227 ], [ %254, %248 ], [ %302, %301 ], [ %307, %306 ], [ %312, %311 ], [ %425, %423 ], [ %171, %169 ]
  ret ptr %468
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @expand_unop_direct(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #10 !prof !230 !PGOFuncName !240 {
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds %struct.optab_d, ptr %1, i64 0, i32 4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !144
  %9 = icmp eq i32 %8, 2956
  br i1 %9, label %72, label %10, !prof !231

10:                                               ; preds = %5
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !146
  %14 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 1, i32 2
  %15 = load i16, ptr %14, align 8
  %16 = zext i16 %15 to i32
  %17 = tail call ptr @get_last_insn() #22
  %18 = icmp eq ptr %3, null
  br i1 %18, label %19, label %21, !prof !231

19:                                               ; preds = %10
  %20 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %21

21:                                               ; preds = %10, %19
  %22 = phi ptr [ %20, %19 ], [ %3, %10 ]
  %23 = load i32, ptr %2, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq i32 %25, %16
  %28 = select i1 %26, i1 true, i1 %27, !prof !231
  br i1 %28, label %31, label %29, !prof !241

29:                                               ; preds = %21
  %30 = tail call ptr @convert_to_mode(i32 noundef %16, ptr noundef nonnull %2, i32 noundef %4) #22
  br label %31

31:                                               ; preds = %29, %21
  %32 = phi ptr [ %30, %29 ], [ %2, %21 ]
  %33 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !150
  %35 = tail call i32 %34(ptr noundef %32, i32 noundef %16) #22, !prof !242
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39, !prof !231

37:                                               ; preds = %31
  %38 = tail call ptr @copy_to_mode_reg(i32 noundef %16, ptr noundef %32) #22
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi ptr [ %32, %31 ], [ %38, %37 ]
  %41 = load ptr, ptr %13, align 8, !tbaa !150
  %42 = tail call i32 %41(ptr noundef %22, i32 noundef %0) #22, !prof !242
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46, !prof !231

44:                                               ; preds = %39
  %45 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi ptr [ %22, %39 ], [ %45, %44 ]
  %48 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !152
  %50 = tail call ptr (ptr, ...) %49(ptr noundef %47, ptr noundef %40) #22, !prof !243
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %52, !prof !231

52:                                               ; preds = %46
  %53 = load i32, ptr %50, align 8
  %54 = and i32 %53, 65535
  %55 = add nsw i32 %54, -7
  %56 = icmp ult i32 %55, 4
  br i1 %56, label %57, label %67, !prof !241

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 2
  %59 = load ptr, ptr %58, align 8, !tbaa !114
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61, !prof !241

61:                                               ; preds = %57
  %62 = load i32, ptr %1, align 8, !tbaa !153
  %63 = tail call fastcc i32 @add_equal_note(ptr noundef nonnull %50, ptr noundef %47, i32 noundef %62, ptr noundef %40, ptr noundef null), !range !201
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  tail call void @delete_insns_since(ptr noundef %17) #22
  %66 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null, i32 noundef %4)
  br label %70

67:                                               ; preds = %52, %61, %57
  %68 = tail call ptr @emit_insn(ptr noundef nonnull %50) #22
  br label %70

69:                                               ; preds = %46
  tail call void @delete_insns_since(ptr noundef %17) #22
  br label %70

70:                                               ; preds = %69, %67, %65
  %71 = phi ptr [ %47, %67 ], [ %66, %65 ], [ undef, %69 ]
  br i1 %51, label %72, label %73, !prof !231

72:                                               ; preds = %70, %5
  br label %73

73:                                               ; preds = %70, %72
  %74 = phi ptr [ %71, %70 ], [ null, %72 ]
  ret ptr %74
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_doubleword_clz(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !102 {
  %4 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %1) #22
  %5 = load i32, ptr @word_mode, align 4, !tbaa !118
  %6 = tail call ptr @gen_highpart(i32 noundef %5, ptr noundef %4) #22
  %7 = load ptr, ptr @rtl_hooks, align 8, !tbaa !174
  %8 = load i32, ptr @word_mode, align 4, !tbaa !118
  %9 = tail call ptr %7(i32 noundef %8, ptr noundef %4) #22
  %10 = tail call ptr @gen_label_rtx() #22
  %11 = tail call ptr @gen_label_rtx() #22
  %12 = icmp eq ptr %2, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, ptr @word_mode, align 4, !tbaa !118
  %15 = tail call ptr @gen_reg_rtx(i32 noundef %14) #22
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi ptr [ %2, %3 ], [ %15, %13 ]
  %18 = load i32, ptr @word_mode, align 4, !tbaa !118
  %19 = tail call ptr @gen_reg_rtx(i32 noundef %18) #22
  tail call void @start_sequence() #22
  %20 = load i32, ptr @word_mode, align 4, !tbaa !118
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  tail call void @emit_cmp_and_jump_insns(ptr noundef %6, ptr noundef %23, i32 noundef 81, ptr noundef null, i32 noundef %20, i32 noundef 1, ptr noundef %10)
  %24 = load i32, ptr @word_mode, align 4, !tbaa !118
  %25 = tail call fastcc ptr @expand_unop_direct(i32 noundef %24, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71), ptr noundef %6, ptr noundef %19, i32 noundef 1)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %56, label %27

27:                                               ; preds = %16
  %28 = icmp eq ptr %25, %19
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  tail call void @convert_move(ptr noundef %19, ptr noundef nonnull %25, i32 noundef 1) #22
  br label %30

30:                                               ; preds = %29, %27
  %31 = tail call ptr @gen_jump(ptr noundef %11) #22
  %32 = tail call ptr @emit_jump_insn(ptr noundef %31) #22
  %33 = tail call ptr @emit_barrier() #22
  %34 = tail call ptr @emit_label(ptr noundef %10) #22
  %35 = load i32, ptr @word_mode, align 4, !tbaa !118
  %36 = tail call fastcc ptr @expand_unop_direct(i32 noundef %35, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71), ptr noundef %9, ptr noundef null, i32 noundef 1)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %30
  %39 = load i32, ptr @word_mode, align 4, !tbaa !118
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !114
  %43 = zext i8 %42 to i64
  %44 = shl nuw nsw i64 %43, 3
  %45 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %44) #22
  %46 = tail call ptr @expand_binop(i32 noundef %39, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef nonnull %36, ptr noundef %45, ptr noundef %19, i32 noundef 1, i32 noundef 0)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %38
  %49 = icmp eq ptr %46, %19
  br i1 %49, label %51, label %50

50:                                               ; preds = %48
  tail call void @convert_move(ptr noundef %19, ptr noundef nonnull %46, i32 noundef 1) #22
  br label %51

51:                                               ; preds = %50, %48
  %52 = tail call ptr @emit_label(ptr noundef %11) #22
  tail call void @convert_move(ptr noundef %17, ptr noundef %19, i32 noundef 1) #22
  %53 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %54 = tail call fastcc i32 @add_equal_note(ptr noundef %53, ptr noundef %17, i32 noundef 115, ptr noundef %4, ptr noundef null), !range !201
  %55 = tail call ptr @emit_insn(ptr noundef %53) #22
  br label %57

56:                                               ; preds = %38, %30, %16
  tail call void @end_sequence() #22
  br label %57

57:                                               ; preds = %56, %51
  %58 = phi ptr [ %17, %51 ], [ null, %56 ]
  ret ptr %58
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @expand_doubleword_bswap(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !102 {
  %4 = load i32, ptr @word_mode, align 4, !tbaa !118
  %5 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef 0, i32 noundef %0) #22
  %6 = tail call ptr @expand_unop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68), ptr noundef %5, ptr noundef null, i32 noundef 1)
  %7 = load i32, ptr @word_mode, align 4, !tbaa !118
  %8 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef 1, i32 noundef %0) #22
  %9 = tail call ptr @expand_unop(i32 noundef %7, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68), ptr noundef %8, ptr noundef null, i32 noundef 1)
  %10 = icmp eq ptr %2, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = tail call ptr @emit_clobber(ptr noundef nonnull %14) #22
  br label %20

20:                                               ; preds = %18, %13
  %21 = tail call ptr @operand_subword(ptr noundef nonnull %14, i32 noundef 0, i32 noundef 1, i32 noundef %0) #22
  %22 = tail call ptr @emit_move_insn(ptr noundef %21, ptr noundef %9) #22
  %23 = tail call ptr @operand_subword(ptr noundef nonnull %14, i32 noundef 1, i32 noundef 1, i32 noundef %0) #22
  %24 = tail call ptr @emit_move_insn(ptr noundef %23, ptr noundef %6) #22
  ret ptr %14
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_absneg_bit(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 !prof !102 {
  %5 = zext i32 %1 to i64
  %6 = add i32 %1, -38
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = icmp eq ptr %9, null
  br i1 %10, label %94, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.real_format, ptr %9, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !244
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %94, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %0, 51
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.real_format, ptr %9, i64 0, i32 14
  %19 = load i8, ptr %18, align 1, !tbaa !236
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %94, label %21

21:                                               ; preds = %17, %15
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %23 = load i8, ptr %22, align 1, !tbaa !114
  %24 = icmp ult i8 %23, 5
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = tail call i32 @int_mode_for_mode(i32 noundef %1) #22
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %94, label %36

28:                                               ; preds = %21
  %29 = zext i8 %23 to i32
  %30 = load i32, ptr @word_mode, align 4, !tbaa !118
  %31 = lshr i32 %13, 5
  %32 = and i32 %13, 31
  %33 = shl nuw nsw i32 %29, 3
  %34 = add nuw nsw i32 %33, 31
  %35 = lshr i32 %34, 5
  br label %36

36:                                               ; preds = %25, %28
  %37 = phi i32 [ %31, %28 ], [ 0, %25 ]
  %38 = phi i32 [ %35, %28 ], [ 1, %25 ]
  %39 = phi i32 [ %30, %28 ], [ %26, %25 ]
  %40 = phi i32 [ %32, %28 ], [ %13, %25 ]
  %41 = icmp slt i32 %40, 64
  %42 = zext nneg i32 %40 to i64
  %43 = shl nuw i64 1, %42
  %44 = add nsw i32 %40, -64
  %45 = zext nneg i32 %44 to i64
  %46 = shl nuw i64 1, %45
  %47 = select i1 %41, i64 0, i64 %46
  %48 = select i1 %41, i64 %43, i64 0
  %49 = icmp eq i32 %0, 111
  %50 = sext i1 %49 to i64
  %51 = xor i64 %47, %50
  %52 = xor i64 %48, %50
  %53 = icmp eq ptr %3, null
  %54 = icmp eq ptr %3, %2
  %55 = or i1 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %36
  %57 = tail call ptr @gen_reg_rtx(i32 noundef %1) #22
  br label %58

58:                                               ; preds = %36, %56
  %59 = phi ptr [ %57, %56 ], [ %3, %36 ]
  %60 = icmp ugt i32 %38, 1
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  tail call void @start_sequence() #22
  %62 = select i1 %49, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43)
  br label %63

63:                                               ; preds = %61, %75
  %64 = phi i32 [ 0, %61 ], [ %76, %75 ]
  %65 = tail call ptr @operand_subword(ptr noundef %59, i32 noundef %64, i32 noundef 1, i32 noundef %1) #22
  %66 = tail call ptr @operand_subword_force(ptr noundef %2, i32 noundef %64, i32 noundef %1) #22
  %67 = icmp eq i32 %64, %37
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = tail call ptr @immed_double_const(i64 noundef %52, i64 noundef %51, i32 noundef %39) #22
  %70 = tail call ptr @expand_binop(i32 noundef %39, ptr noundef nonnull %62, ptr noundef %66, ptr noundef %69, ptr noundef %65, i32 noundef 1, i32 noundef 3)
  %71 = icmp eq ptr %70, %65
  br i1 %71, label %75, label %72

72:                                               ; preds = %63, %68
  %73 = phi ptr [ %70, %68 ], [ %66, %63 ]
  %74 = tail call ptr @emit_move_insn(ptr noundef %65, ptr noundef %73) #22
  br label %75

75:                                               ; preds = %72, %68
  %76 = add nuw nsw i32 %64, 1
  %77 = icmp eq i32 %76, %38
  br i1 %77, label %78, label %63, !llvm.loop !245

78:                                               ; preds = %75
  %79 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %80 = tail call ptr @emit_insn(ptr noundef %79) #22
  br label %94

81:                                               ; preds = %58
  %82 = select i1 %49, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43)
  %83 = load ptr, ptr @rtl_hooks, align 8, !tbaa !174
  %84 = tail call ptr %83(i32 noundef %39, ptr noundef %2) #22
  %85 = tail call ptr @immed_double_const(i64 noundef %52, i64 noundef %51, i32 noundef %39) #22
  %86 = load ptr, ptr @rtl_hooks, align 8, !tbaa !174
  %87 = tail call ptr %86(i32 noundef %39, ptr noundef %59) #22
  %88 = tail call ptr @expand_binop(i32 noundef %39, ptr noundef nonnull %82, ptr noundef %84, ptr noundef %85, ptr noundef %87, i32 noundef 1, i32 noundef 3)
  %89 = tail call fastcc ptr @lowpart_subreg_maybe_copy(i32 noundef %1, ptr noundef %88, i32 noundef %39)
  %90 = tail call ptr @get_last_insn() #22
  %91 = tail call ptr @copy_rtx(ptr noundef %2) #22
  %92 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %0, i32 noundef %1, ptr noundef %91) #22
  %93 = tail call ptr @set_unique_reg_note(ptr noundef %90, i32 noundef 4, ptr noundef %92) #22
  br label %94

94:                                               ; preds = %78, %81, %25, %17, %11, %4
  %95 = phi ptr [ null, %4 ], [ null, %11 ], [ null, %17 ], [ null, %25 ], [ %59, %78 ], [ %89, %81 ]
  ret ptr %95
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_ffs(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !102 {
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72, i32 4, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !144
  %7 = icmp eq i32 %6, 2956
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  tail call void @start_sequence() #22
  %9 = tail call fastcc ptr @expand_unop_direct(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72), ptr noundef %1, ptr noundef null, i32 noundef 1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %18

11:                                               ; preds = %3
  %12 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 4, i64 %4
  %13 = load i32, ptr %12, align 4, !tbaa !144
  %14 = icmp eq i32 %13, 2956
  br i1 %14, label %33, label %15

15:                                               ; preds = %11
  tail call void @start_sequence() #22
  %16 = tail call fastcc ptr @expand_ctz(i32 noundef %0, ptr noundef %1, ptr noundef null)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %15, %8
  %19 = phi ptr [ %16, %15 ], [ %9, %8 ]
  %20 = tail call ptr @gen_label_rtx() #22
  %21 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %4
  %22 = load ptr, ptr %21, align 8, !tbaa !103
  tail call void @emit_cmp_and_jump_insns(ptr noundef %1, ptr noundef %22, i32 noundef 80, ptr noundef null, i32 noundef %0, i32 noundef 1, ptr noundef %20)
  %23 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef -1) #22
  tail call void @convert_move(ptr noundef nonnull %19, ptr noundef %23, i32 noundef 0) #22
  %24 = tail call ptr @emit_label(ptr noundef %20) #22
  %25 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 1) #22
  %26 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef nonnull %19, ptr noundef %25, ptr noundef %2, i32 noundef 0, i32 noundef 0)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %30 = tail call fastcc i32 @add_equal_note(ptr noundef %29, ptr noundef nonnull %26, i32 noundef 114, ptr noundef %1, ptr noundef null), !range !201
  %31 = tail call ptr @emit_insn(ptr noundef %29) #22
  br label %33

32:                                               ; preds = %18, %15, %8
  tail call void @end_sequence() #22
  br label %33

33:                                               ; preds = %11, %32, %28
  %34 = phi ptr [ %26, %28 ], [ null, %32 ], [ null, %11 ]
  ret ptr %34
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_ctz(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !102 {
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 4, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !144
  %7 = icmp eq i32 %6, 2956
  br i1 %7, label %39, label %8

8:                                                ; preds = %3
  tail call void @start_sequence() #22
  %9 = tail call fastcc ptr @expand_unop_direct(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %1, ptr noundef null, i32 noundef 1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %1, ptr noundef nonnull %9, ptr noundef null, i32 noundef 1, i32 noundef 0)
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %12, %11 ], [ null, %8 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call fastcc ptr @expand_unop_direct(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71), ptr noundef nonnull %14, ptr noundef null, i32 noundef 1)
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %17, %16 ], [ null, %13 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = zext i32 %0 to i64
  %23 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !114
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 3
  %27 = add nsw i32 %26, -1
  %28 = sext i32 %27 to i64
  %29 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %28) #22
  %30 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %29, ptr noundef nonnull %19, ptr noundef %2, i32 noundef 1, i32 noundef 0)
  br label %31

31:                                               ; preds = %21, %18
  %32 = phi ptr [ %30, %21 ], [ null, %18 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call void @end_sequence() #22
  br label %39

35:                                               ; preds = %31
  %36 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %37 = tail call fastcc i32 @add_equal_note(ptr noundef %36, ptr noundef nonnull %32, i32 noundef 116, ptr noundef %1, ptr noundef null), !range !201
  %38 = tail call ptr @emit_insn(ptr noundef %36) #22
  br label %39

39:                                               ; preds = %3, %35, %34
  %40 = phi ptr [ null, %34 ], [ %32, %35 ], [ null, %3 ]
  ret ptr %40
}

declare ptr @hard_libcall_value(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_gen_unary(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_abs_nojump(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !102 {
  %5 = load i32, ptr @flag_trapv, align 4, !tbaa !118
  %6 = icmp ne i32 %5, 0
  %7 = icmp eq i32 %3, 0
  %8 = and i1 %7, %6
  %9 = select i1 %8, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66)
  %10 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %82

12:                                               ; preds = %4
  %13 = zext i32 %0 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !114
  %16 = and i8 %15, -2
  %17 = icmp eq i8 %16, 8
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = tail call fastcc ptr @expand_absneg_bit(i32 noundef 111, i32 noundef %0, ptr noundef %1, ptr noundef %2)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %82

21:                                               ; preds = %12, %18
  %22 = sext i32 %0 to i64
  %23 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !144
  %25 = icmp eq i32 %24, 2956
  br i1 %25, label %54, label %26

26:                                               ; preds = %21
  switch i8 %15, label %44 [
    i8 8, label %27
    i8 9, label %27
    i8 11, label %27
    i8 17, label %27
  ]

27:                                               ; preds = %26, %26, %26, %26
  br i1 %17, label %32, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %13
  %30 = load i8, ptr %29, align 1, !tbaa !114
  %31 = zext i8 %30 to i32
  br label %32

32:                                               ; preds = %27, %28
  %33 = phi i32 [ %31, %28 ], [ %0, %27 ]
  %34 = add i32 %33, -38
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !103
  %38 = getelementptr inbounds %struct.real_format, ptr %37, i64 0, i32 14
  %39 = load i8, ptr %38, align 1, !tbaa !236
  %40 = icmp ne i8 %39, 0
  %41 = load i32, ptr @flag_signed_zeros, align 4
  %42 = icmp ne i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %54, label %44

44:                                               ; preds = %26, %32
  %45 = tail call ptr @get_last_insn() #22
  %46 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %1, ptr noundef null, i32 noundef 0)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55), ptr noundef %1, ptr noundef nonnull %46, ptr noundef %2, i32 noundef 0, i32 noundef 2)
  br label %50

50:                                               ; preds = %44, %48
  %51 = phi ptr [ %49, %48 ], [ null, %44 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  tail call void @delete_insns_since(ptr noundef %45) #22
  br label %54

54:                                               ; preds = %53, %32, %21
  %55 = phi ptr [ undef, %32 ], [ %51, %53 ], [ undef, %21 ]
  %56 = icmp eq i8 %15, 2
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = tail call zeroext i8 @optimize_insn_for_speed_p() #22
  %59 = icmp eq i8 %58, 0
  %60 = load i32, ptr @ix86_branch_cost, align 4
  %61 = icmp sgt i32 %60, 1
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %57
  %64 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %65 = load i8, ptr %64, align 1, !tbaa !114
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 3
  %68 = add nsw i32 %67, -1
  %69 = sext i32 %68 to i64
  %70 = tail call ptr @size_int_kind(i64 noundef %69, i32 noundef 0) #22
  %71 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef %1, ptr noundef %70, ptr noundef null, i32 noundef 0) #22
  %72 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %71, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 3)
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %63
  %75 = select i1 %8, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14)
  %76 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %75, ptr noundef nonnull %72, ptr noundef %71, ptr noundef %2, i32 noundef 0, i32 noundef 3)
  br label %77

77:                                               ; preds = %74, %63
  %78 = phi ptr [ %76, %74 ], [ null, %63 ]
  %79 = icmp eq ptr %78, null
  %80 = select i1 %79, ptr %55, ptr %78
  br i1 %79, label %81, label %82

81:                                               ; preds = %77, %57, %54
  br label %82

82:                                               ; preds = %50, %18, %4, %77, %81
  %83 = phi ptr [ null, %81 ], [ %80, %77 ], [ %10, %4 ], [ %19, %18 ], [ %51, %50 ]
  ret ptr %83
}

declare ptr @expand_shift(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_abs(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !102 {
  %6 = load i32, ptr @flag_trapv, align 4, !tbaa !118
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 %3
  %9 = tail call ptr @expand_abs_nojump(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %8)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %63

11:                                               ; preds = %5
  %12 = icmp eq ptr %1, %2
  br i1 %12, label %13, label %22

13:                                               ; preds = %11
  %14 = load i32, ptr %1, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !114
  %20 = icmp ugt i32 %19, 52
  %21 = select i1 %20, i32 1, i32 %4
  br label %22

22:                                               ; preds = %17, %13, %11
  %23 = phi i32 [ %4, %13 ], [ %4, %11 ], [ %21, %17 ]
  %24 = tail call ptr @gen_label_rtx() #22
  %25 = icmp ne ptr %2, null
  %26 = icmp ne i32 %23, 0
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load i32, ptr %2, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = icmp ne i32 %31, %0
  %33 = and i32 %29, 134283263
  %34 = icmp eq i32 %33, 134217771
  %35 = or i1 %34, %32
  br i1 %35, label %43, label %36

36:                                               ; preds = %28
  %37 = and i32 %29, 65535
  %38 = icmp eq i32 %37, 37
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !114
  %42 = icmp ult i32 %41, 53
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %28, %22
  %44 = tail call ptr @gen_reg_rtx(i32 noundef %0) #22
  br label %45

45:                                               ; preds = %43, %39, %36
  %46 = phi ptr [ %44, %43 ], [ %2, %39 ], [ %2, %36 ]
  %47 = tail call ptr @emit_move_insn(ptr noundef %46, ptr noundef %1) #22
  %48 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !209
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !209
  %50 = sext i32 %0 to i64
  %51 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !103
  tail call void @do_compare_rtx_and_jump(ptr noundef %46, ptr noundef %52, i32 noundef 82, i32 noundef 0, i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef %24, i32 noundef -1) #22
  %53 = icmp eq i32 %8, 0
  %54 = select i1 %53, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64)
  %55 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull %54, ptr noundef %46, ptr noundef %46, i32 noundef 0)
  %56 = icmp eq ptr %55, %46
  br i1 %56, label %59, label %57

57:                                               ; preds = %45
  %58 = tail call ptr @emit_move_insn(ptr noundef %46, ptr noundef %55) #22
  br label %59

59:                                               ; preds = %57, %45
  %60 = tail call ptr @emit_label(ptr noundef %24) #22
  %61 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !209
  %62 = add nsw i32 %61, -1
  store i32 %62, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !209
  br label %63

63:                                               ; preds = %5, %59
  %64 = phi ptr [ %46, %59 ], [ %9, %5 ]
  ret ptr %64
}

declare ptr @gen_label_rtx() local_unnamed_addr #3

declare void @do_compare_rtx_and_jump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_one_cmpl_abs_nojump(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !102 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !114
  %7 = add i8 %6, -8
  %8 = icmp ult i8 %7, 10
  br i1 %8, label %46, label %9

9:                                                ; preds = %46, %3
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !144
  %13 = icmp eq i32 %12, 2956
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @get_last_insn() #22
  %16 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), ptr noundef %1, ptr noundef null, i32 noundef 0)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55), ptr noundef %1, ptr noundef nonnull %16, ptr noundef %2, i32 noundef 0, i32 noundef 2)
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %19, %18 ], [ null, %14 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %51

23:                                               ; preds = %20
  tail call void @delete_insns_since(ptr noundef %15) #22
  br label %24

24:                                               ; preds = %23, %9
  %25 = phi ptr [ %21, %23 ], [ undef, %9 ]
  %26 = icmp eq i8 %6, 2
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = tail call zeroext i8 @optimize_insn_for_speed_p() #22
  %29 = icmp eq i8 %28, 0
  %30 = load i32, ptr @ix86_branch_cost, align 4
  %31 = icmp sgt i32 %30, 1
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %35 = load i8, ptr %34, align 1, !tbaa !114
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 3
  %38 = add nsw i32 %37, -1
  %39 = sext i32 %38 to i64
  %40 = tail call ptr @size_int_kind(i64 noundef %39, i32 noundef 0) #22
  %41 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef %1, ptr noundef %40, ptr noundef null, i32 noundef 0) #22
  %42 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %41, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 3)
  %43 = icmp eq ptr %42, null
  %44 = select i1 %43, ptr %25, ptr %42
  br i1 %43, label %45, label %51

45:                                               ; preds = %33, %27, %24
  br label %51

46:                                               ; preds = %3
  %47 = zext nneg i8 %7 to i16
  %48 = lshr i16 523, %47
  %49 = and i16 %48, 1
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %9, label %51

51:                                               ; preds = %46, %20, %33, %45
  %52 = phi ptr [ null, %45 ], [ %44, %33 ], [ %21, %20 ], [ null, %46 ]
  ret ptr %52
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_copysign(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !102 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !114
  %10 = and i8 %9, -2
  %11 = icmp eq i8 %10, 8
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3749, ptr noundef nonnull @.str.1) #22
  br label %13

13:                                               ; preds = %3, %12
  %14 = load i32, ptr %1, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, %6
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3750, ptr noundef nonnull @.str.1) #22
  br label %19

19:                                               ; preds = %13, %18
  %20 = tail call ptr @expand_binop(i32 noundef %6, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 102), ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, i32 noundef 0)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %235

22:                                               ; preds = %19
  %23 = add nsw i32 %6, -38
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  %27 = icmp eq ptr %26, null
  br i1 %27, label %235, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.real_format, ptr %26, i64 0, i32 14
  %30 = load i8, ptr %29, align 1, !tbaa !236
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %235, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %0, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = tail call zeroext i8 @real_isneg(ptr noundef nonnull %37) #22
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @simplify_unary_operation(i32 noundef 111, i32 noundef %6, ptr noundef nonnull %0, i32 noundef %6) #22
  br label %42

42:                                               ; preds = %36, %40, %32
  %43 = phi ptr [ %0, %32 ], [ %41, %40 ], [ %0, %36 ]
  %44 = getelementptr inbounds %struct.real_format, ptr %26, i64 0, i32 7
  %45 = load i32, ptr %44, align 4, !tbaa !246
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %144

47:                                               ; preds = %42
  %48 = load i32, ptr %43, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 %7
  %53 = load i32, ptr %52, align 4, !tbaa !144
  %54 = icmp eq i32 %53, 2956
  br i1 %54, label %144, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 %7
  %57 = load i32, ptr %56, align 4, !tbaa !144
  %58 = icmp eq i32 %57, 2956
  br i1 %58, label %144, label %59

59:                                               ; preds = %55, %47
  %60 = icmp eq ptr %2, %1
  %61 = select i1 %60, ptr null, ptr %2
  %62 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 103, i32 4, i64 %7
  %63 = load i32, ptr %62, align 4, !tbaa !144
  %64 = icmp eq i32 %63, 2956
  br i1 %64, label %76, label %65

65:                                               ; preds = %59
  %66 = sext i32 %63 to i64
  %67 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %66, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !146
  %69 = getelementptr inbounds %struct.insn_operand_data, ptr %68, i64 0, i32 2
  %70 = load i16, ptr %69, align 8
  %71 = zext i16 %70 to i32
  %72 = tail call ptr @gen_reg_rtx(i32 noundef %71) #22
  %73 = tail call zeroext i8 @maybe_emit_unop_insn(i32 noundef %63, ptr noundef %72, ptr noundef nonnull %1, i32 noundef 0), !range !178
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3839, ptr noundef nonnull @.str.1) #22
  br label %110

76:                                               ; preds = %59
  %77 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %78 = load i8, ptr %77, align 1, !tbaa !114
  %79 = icmp ult i8 %78, 5
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = tail call i32 @int_mode_for_mode(i32 noundef %6) #22
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %106, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr @rtl_hooks, align 8, !tbaa !174
  %85 = tail call ptr %84(i32 noundef %81, ptr noundef nonnull %1) #22
  br label %91

86:                                               ; preds = %76
  %87 = load i32, ptr @word_mode, align 4, !tbaa !118
  %88 = lshr i32 %45, 5
  %89 = and i32 %45, 31
  %90 = tail call ptr @operand_subword_force(ptr noundef nonnull %1, i32 noundef %88, i32 noundef %6) #22
  br label %91

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %45, %83 ], [ %89, %86 ]
  %93 = phi i32 [ %81, %83 ], [ %87, %86 ]
  %94 = phi ptr [ %85, %83 ], [ %90, %86 ]
  %95 = icmp slt i32 %92, 64
  %96 = zext nneg i32 %92 to i64
  %97 = shl nuw i64 1, %96
  %98 = add nsw i32 %92, -64
  %99 = zext nneg i32 %98 to i64
  %100 = shl nuw i64 1, %99
  %101 = select i1 %95, i64 0, i64 %100
  %102 = select i1 %95, i64 %97, i64 0
  %103 = tail call ptr @gen_reg_rtx(i32 noundef %93) #22
  %104 = tail call ptr @immed_double_const(i64 noundef %102, i64 noundef %101, i32 noundef %93) #22
  %105 = tail call ptr @expand_binop(i32 noundef %93, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %94, ptr noundef %104, ptr noundef null, i32 noundef 1, i32 noundef 3)
  br label %106

106:                                              ; preds = %91, %80
  %107 = phi i32 [ %93, %91 ], [ 1, %80 ]
  %108 = phi ptr [ %105, %91 ], [ undef, %80 ]
  %109 = phi i1 [ true, %91 ], [ false, %80 ]
  br i1 %109, label %110, label %141

110:                                              ; preds = %106, %75, %65
  %111 = phi i32 [ %107, %106 ], [ %71, %65 ], [ %71, %75 ]
  %112 = phi ptr [ %108, %106 ], [ %72, %65 ], [ %72, %75 ]
  br i1 %35, label %116, label %113

113:                                              ; preds = %110
  %114 = tail call ptr @expand_unop(i32 noundef %6, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66), ptr noundef nonnull %43, ptr noundef %61, i32 noundef 0)
  %115 = icmp eq ptr %114, null
  br i1 %115, label %141, label %122

116:                                              ; preds = %110
  %117 = icmp eq ptr %61, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %116
  %119 = tail call ptr @copy_to_reg(ptr noundef nonnull %43) #22
  br label %122

120:                                              ; preds = %116
  %121 = tail call ptr @emit_move_insn(ptr noundef nonnull %61, ptr noundef nonnull %43) #22
  br label %122

122:                                              ; preds = %120, %118, %113
  %123 = phi ptr [ %119, %118 ], [ %61, %120 ], [ %114, %113 ]
  %124 = phi ptr [ %43, %118 ], [ %43, %120 ], [ %114, %113 ]
  %125 = tail call ptr @gen_label_rtx() #22
  %126 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !103
  tail call void @emit_cmp_and_jump_insns(ptr noundef %112, ptr noundef %126, i32 noundef 81, ptr noundef null, i32 noundef %111, i32 noundef 1, ptr noundef %125)
  %127 = load i32, ptr %124, align 8
  %128 = and i32 %127, 65535
  %129 = icmp eq i32 %128, 32
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %6, ptr noundef nonnull %124, i32 noundef %6) #22
  br label %134

132:                                              ; preds = %122
  %133 = tail call ptr @expand_unop(i32 noundef %6, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef nonnull %124, ptr noundef %123, i32 noundef 0)
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi ptr [ %131, %130 ], [ %133, %132 ]
  %136 = icmp eq ptr %135, %123
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = tail call ptr @emit_move_insn(ptr noundef %123, ptr noundef %135) #22
  br label %139

139:                                              ; preds = %137, %134
  %140 = tail call ptr @emit_label(ptr noundef %125) #22
  br label %141

141:                                              ; preds = %106, %113, %139
  %142 = phi ptr [ %123, %139 ], [ null, %106 ], [ null, %113 ]
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %235

144:                                              ; preds = %141, %55, %51, %42
  %145 = getelementptr inbounds %struct.real_format, ptr %26, i64 0, i32 8
  %146 = load i32, ptr %145, align 8, !tbaa !244
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %235, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %150 = load i8, ptr %149, align 1, !tbaa !114
  %151 = icmp ult i8 %150, 5
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = tail call i32 @int_mode_for_mode(i32 noundef %6) #22
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %235, label %163

155:                                              ; preds = %148
  %156 = zext i8 %150 to i32
  %157 = load i32, ptr @word_mode, align 4, !tbaa !118
  %158 = lshr i32 %146, 5
  %159 = and i32 %146, 31
  %160 = shl nuw nsw i32 %156, 3
  %161 = add nuw nsw i32 %160, 31
  %162 = lshr i32 %161, 5
  br label %163

163:                                              ; preds = %155, %152
  %164 = phi i32 [ %159, %155 ], [ %146, %152 ]
  %165 = phi i32 [ %157, %155 ], [ %153, %152 ]
  %166 = phi i32 [ %158, %155 ], [ 0, %152 ]
  %167 = phi i32 [ %162, %155 ], [ 1, %152 ]
  %168 = icmp slt i32 %164, 64
  %169 = zext nneg i32 %164 to i64
  %170 = shl nuw i64 1, %169
  %171 = add nsw i32 %164, -64
  %172 = zext nneg i32 %171 to i64
  %173 = shl nuw i64 1, %172
  %174 = select i1 %168, i64 0, i64 %173
  %175 = select i1 %168, i64 %170, i64 0
  %176 = icmp eq ptr %2, null
  %177 = icmp eq ptr %43, %2
  %178 = or i1 %176, %177
  %179 = icmp eq ptr %2, %1
  %180 = or i1 %179, %178
  br i1 %180, label %181, label %183

181:                                              ; preds = %163
  %182 = tail call ptr @gen_reg_rtx(i32 noundef %6) #22
  br label %183

183:                                              ; preds = %181, %163
  %184 = phi ptr [ %182, %181 ], [ %2, %163 ]
  %185 = icmp ugt i32 %167, 1
  br i1 %185, label %186, label %217

186:                                              ; preds = %183
  tail call void @start_sequence() #22
  %187 = xor i64 %175, -1
  %188 = xor i64 %174, -1
  br label %189

189:                                              ; preds = %186, %210
  %190 = phi i32 [ 0, %186 ], [ %212, %210 ]
  %191 = phi ptr [ %1, %186 ], [ %211, %210 ]
  %192 = tail call ptr @operand_subword(ptr noundef %184, i32 noundef %190, i32 noundef 1, i32 noundef %6) #22
  %193 = tail call ptr @operand_subword_force(ptr noundef %43, i32 noundef %190, i32 noundef %6) #22
  %194 = icmp eq i32 %190, %166
  br i1 %194, label %195, label %206

195:                                              ; preds = %189
  br i1 %35, label %199, label %196

196:                                              ; preds = %195
  %197 = tail call ptr @immed_double_const(i64 noundef %187, i64 noundef %188, i32 noundef %165) #22
  %198 = tail call ptr @expand_binop(i32 noundef %165, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %193, ptr noundef %197, ptr noundef null, i32 noundef 1, i32 noundef 3)
  br label %199

199:                                              ; preds = %196, %195
  %200 = phi ptr [ %193, %195 ], [ %198, %196 ]
  %201 = tail call ptr @operand_subword_force(ptr noundef %191, i32 noundef %190, i32 noundef %6) #22
  %202 = tail call ptr @immed_double_const(i64 noundef %175, i64 noundef %174, i32 noundef %165) #22
  %203 = tail call ptr @expand_binop(i32 noundef %165, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %201, ptr noundef %202, ptr noundef null, i32 noundef 1, i32 noundef 3)
  %204 = tail call ptr @expand_binop(i32 noundef %165, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %200, ptr noundef %203, ptr noundef %192, i32 noundef 1, i32 noundef 3)
  %205 = icmp eq ptr %204, %192
  br i1 %205, label %210, label %206

206:                                              ; preds = %189, %199
  %207 = phi ptr [ %204, %199 ], [ %193, %189 ]
  %208 = phi ptr [ %203, %199 ], [ %191, %189 ]
  %209 = tail call ptr @emit_move_insn(ptr noundef %192, ptr noundef %207) #22
  br label %210

210:                                              ; preds = %206, %199
  %211 = phi ptr [ %203, %199 ], [ %208, %206 ]
  %212 = add nuw nsw i32 %190, 1
  %213 = icmp eq i32 %212, %167
  br i1 %213, label %214, label %189, !llvm.loop !247

214:                                              ; preds = %210
  %215 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %216 = tail call ptr @emit_insn(ptr noundef %215) #22
  br label %235

217:                                              ; preds = %183
  %218 = load ptr, ptr @rtl_hooks, align 8, !tbaa !174
  %219 = tail call ptr %218(i32 noundef %165, ptr noundef nonnull %1) #22
  %220 = tail call ptr @immed_double_const(i64 noundef %175, i64 noundef %174, i32 noundef %165) #22
  %221 = tail call ptr @expand_binop(i32 noundef %165, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %219, ptr noundef %220, ptr noundef null, i32 noundef 1, i32 noundef 3)
  %222 = load ptr, ptr @rtl_hooks, align 8, !tbaa !174
  %223 = tail call ptr %222(i32 noundef %165, ptr noundef %43) #22
  br i1 %35, label %229, label %224

224:                                              ; preds = %217
  %225 = xor i64 %175, -1
  %226 = xor i64 %174, -1
  %227 = tail call ptr @immed_double_const(i64 noundef %225, i64 noundef %226, i32 noundef %165) #22
  %228 = tail call ptr @expand_binop(i32 noundef %165, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %223, ptr noundef %227, ptr noundef null, i32 noundef 1, i32 noundef 3)
  br label %229

229:                                              ; preds = %224, %217
  %230 = phi ptr [ %223, %217 ], [ %228, %224 ]
  %231 = load ptr, ptr @rtl_hooks, align 8, !tbaa !174
  %232 = tail call ptr %231(i32 noundef %165, ptr noundef %184) #22
  %233 = tail call ptr @expand_binop(i32 noundef %165, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %230, ptr noundef %221, ptr noundef %232, i32 noundef 1, i32 noundef 3)
  %234 = tail call fastcc ptr @lowpart_subreg_maybe_copy(i32 noundef %6, ptr noundef %233, i32 noundef %165)
  br label %235

235:                                              ; preds = %229, %214, %152, %144, %141, %22, %28, %19
  %236 = phi ptr [ %20, %19 ], [ null, %28 ], [ null, %22 ], [ %142, %141 ], [ null, %144 ], [ null, %152 ], [ %184, %214 ], [ %234, %229 ]
  ret ptr %236
}

declare zeroext i8 @real_isneg(ptr noundef) local_unnamed_addr #3

declare ptr @simplify_unary_operation(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @maybe_emit_unop_insn(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #10 !prof !248 {
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %5, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !146
  %8 = getelementptr inbounds %struct.insn_operand_data, ptr %7, i64 1, i32 2
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  %11 = tail call ptr @get_last_insn() #22
  %12 = getelementptr inbounds %struct.insn_operand_data, ptr %7, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !150
  %14 = tail call i32 %13(ptr noundef %2, i32 noundef %10) #22, !prof !249
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !250

16:                                               ; preds = %4
  %17 = tail call ptr @copy_to_mode_reg(i32 noundef %10, ptr noundef %2) #22
  br label %18

18:                                               ; preds = %16, %4
  %19 = phi ptr [ %2, %4 ], [ %17, %16 ]
  %20 = load ptr, ptr %7, align 8, !tbaa !150
  %21 = load i32, ptr %1, align 8
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  %24 = tail call i32 %20(ptr noundef nonnull %1, i32 noundef %23) #22, !prof !251
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31, !prof !250

26:                                               ; preds = %18
  %27 = load i32, ptr %1, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = tail call ptr @gen_reg_rtx(i32 noundef %29) #22
  br label %31

31:                                               ; preds = %26, %18
  %32 = phi ptr [ %1, %18 ], [ %30, %26 ]
  %33 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %5, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !152
  %35 = tail call ptr (ptr, ...) %34(ptr noundef %32, ptr noundef %19) #22, !prof !252
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38, !prof !250

37:                                               ; preds = %31
  tail call void @delete_insns_since(ptr noundef %11) #22
  br label %56

38:                                               ; preds = %31
  %39 = load i32, ptr %35, align 8
  %40 = and i32 %39, 65535
  %41 = add nsw i32 %40, -7
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %43, label %51, !prof !250

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !114
  %46 = icmp ne ptr %45, null
  %47 = icmp ne i32 %3, 0
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = tail call fastcc i32 @add_equal_note(ptr noundef nonnull %35, ptr noundef %32, i32 noundef %3, ptr noundef %19, ptr noundef null), !range !201
  br label %51

51:                                               ; preds = %38, %49, %43
  %52 = tail call ptr @emit_insn(ptr noundef nonnull %35) #22
  %53 = icmp eq ptr %32, %1
  br i1 %53, label %56, label %54, !prof !253

54:                                               ; preds = %51
  %55 = tail call ptr @emit_move_insn(ptr noundef nonnull %1, ptr noundef %32) #22
  br label %56

56:                                               ; preds = %51, %54, %37
  %57 = phi i8 [ 0, %37 ], [ 1, %54 ], [ 1, %51 ]
  ret i8 %57
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @add_equal_note(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #10 !prof !254 !PGOFuncName !255 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %16, label %7, !prof !202

7:                                                ; preds = %5
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %16, !prof !256

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !202

16:                                               ; preds = %7, %12, %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 225, ptr noundef nonnull @.str.1) #22
  br label %17

17:                                               ; preds = %12, %16
  %18 = sext i32 %2 to i64
  %19 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !118
  %21 = icmp ult i32 %20, 5
  br i1 %21, label %22, label %93, !prof !256

22:                                               ; preds = %17
  %23 = load i32, ptr %1, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 120
  br i1 %25, label %93, label %26, !prof !202

26:                                               ; preds = %22, %26
  %27 = phi ptr [ %29, %26 ], [ %0, %22 ]
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !114
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26, !prof !257, !llvm.loop !258

31:                                               ; preds = %26
  %32 = load i32, ptr %27, align 8
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -7
  %35 = icmp ult i32 %34, 4
  br i1 %35, label %36, label %44, !prof !256

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !114
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 23
  br i1 %41, label %44, label %42, !prof !202

42:                                               ; preds = %36
  %43 = tail call ptr @single_set_2(ptr noundef nonnull %27, ptr noundef nonnull %38) #22
  br label %44

44:                                               ; preds = %31, %36, %42
  %45 = phi ptr [ %43, %42 ], [ null, %31 ], [ %38, %36 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %93, label %47, !prof !202

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !114
  %50 = tail call i32 @rtx_equal_p(ptr noundef %49, ptr noundef nonnull %1) #22
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62, !prof !202

52:                                               ; preds = %47
  %53 = load ptr, ptr %48, align 8, !tbaa !114
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 40
  br i1 %56, label %57, label %93

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !114
  %60 = tail call i32 @rtx_equal_p(ptr noundef %59, ptr noundef nonnull %1) #22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %57, %47
  %63 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %1, ptr noundef %3) #22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70, !prof !256

65:                                               ; preds = %62
  %66 = icmp eq ptr %4, null
  br i1 %66, label %79, label %67, !prof !202

67:                                               ; preds = %65
  %68 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %1, ptr noundef nonnull %4) #22
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %79, label %70, !prof !256

70:                                               ; preds = %67, %62
  br label %71

71:                                               ; preds = %70, %76
  %72 = phi ptr [ %74, %76 ], [ %27, %70 ]
  %73 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1, i32 0, i32 0, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !114
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = tail call i32 @reg_set_p(ptr noundef nonnull %1, ptr noundef nonnull %74) #22
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %71, label %93, !llvm.loop !259

79:                                               ; preds = %71, %67, %65
  %80 = icmp eq i32 %20, 4
  %81 = load i32, ptr %1, align 8
  %82 = lshr i32 %81, 16
  %83 = and i32 %82, 255
  %84 = tail call ptr @copy_rtx(ptr noundef %3) #22
  br i1 %80, label %85, label %87, !prof !202

85:                                               ; preds = %79
  %86 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %2, i32 noundef %83, ptr noundef %84) #22
  br label %90

87:                                               ; preds = %79
  %88 = tail call ptr @copy_rtx(ptr noundef %4) #22
  %89 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef %83, ptr noundef %84, ptr noundef %88) #22
  br label %90

90:                                               ; preds = %87, %85
  %91 = phi ptr [ %86, %85 ], [ %89, %87 ]
  %92 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %27, i32 noundef 4, ptr noundef %91) #22
  br label %93

93:                                               ; preds = %76, %17, %52, %57, %44, %22, %90
  %94 = phi i32 [ 1, %90 ], [ 1, %17 ], [ 1, %22 ], [ 1, %44 ], [ 1, %57 ], [ 1, %52 ], [ 0, %76 ]
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_unop_insn(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #10 !prof !248 {
  %5 = tail call zeroext i8 @maybe_emit_unop_insn(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3), !range !178
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8, !prof !250

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3839, ptr noundef nonnull @.str.1) #22
  br label %8

8:                                                ; preds = %4, %7
  ret void
}

declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @make_reg_eh_region_note_nothrow_nononlocal(ptr noundef) local_unnamed_addr #3

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @no_conflict_move_test(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #9 !prof !102 {
  %4 = load ptr, ptr %2, align 8, !tbaa !221
  %5 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %4, ptr noundef %0) #22
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %59

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.no_conflict_data, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !224
  %10 = getelementptr inbounds %struct.no_conflict_data, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !223
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %61, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  %16 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %15) #22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %13
  %19 = load ptr, ptr %10, align 8, !tbaa !223
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = tail call i32 @find_reg_fusage(ptr noundef nonnull %19, i32 noundef 24, ptr noundef %0) #22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %23, %18
  %27 = load ptr, ptr %10, align 8, !tbaa !223
  %28 = load ptr, ptr %8, align 8, !tbaa !224
  %29 = tail call i32 @reg_used_between_p(ptr noundef %0, ptr noundef %27, ptr noundef %28) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %26
  %32 = load i32, ptr %1, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 23
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %37 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !114
  %39 = load ptr, ptr %10, align 8, !tbaa !223
  %40 = tail call i32 @modified_in_p(ptr noundef %38, ptr noundef %39) #22
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load ptr, ptr %36, align 8, !tbaa !114
  %44 = load ptr, ptr %10, align 8, !tbaa !223
  %45 = tail call i32 @modified_in_p(ptr noundef %43, ptr noundef %44) #22
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load ptr, ptr %37, align 8, !tbaa !114
  %49 = load ptr, ptr %10, align 8, !tbaa !223
  %50 = load ptr, ptr %8, align 8, !tbaa !224
  %51 = tail call i32 @modified_between_p(ptr noundef %48, ptr noundef %49, ptr noundef %50) #22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load ptr, ptr %36, align 8, !tbaa !114
  %55 = load ptr, ptr %10, align 8, !tbaa !223
  %56 = load ptr, ptr %8, align 8, !tbaa !224
  %57 = tail call i32 @modified_between_p(ptr noundef %54, ptr noundef %55, ptr noundef %56) #22
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %13, %23, %26, %35, %42, %47, %53, %3
  %60 = getelementptr inbounds %struct.no_conflict_data, ptr %2, i64 0, i32 3
  store i8 1, ptr %60, align 8, !tbaa !225
  br label %61

61:                                               ; preds = %59, %53, %31, %7
  ret void
}

declare void @add_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef i32 @can_compare_p(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #13 !prof !260 {
  %4 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !103
  %5 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %4) #22
  br label %6

6:                                                ; preds = %53, %3
  %7 = phi i32 [ %1, %3 ], [ %51, %53 ]
  switch i32 %2, label %41 [
    i32 0, label %8
    i32 2, label %21
    i32 1, label %36
  ], !prof !261

8:                                                ; preds = %6
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !144
  %12 = icmp eq i32 %11, 2956
  br i1 %12, label %20, label %13, !prof !262

13:                                               ; preds = %8
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %14, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !146
  %17 = load ptr, ptr %16, align 8, !tbaa !150
  %18 = tail call i32 %17(ptr noundef %5, i32 noundef %7) #22, !prof !263
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %50, !prof !262

20:                                               ; preds = %13, %8
  switch i32 %2, label %41 [
    i32 2, label %21
    i32 1, label %36
  ]

21:                                               ; preds = %20, %6
  %22 = sext i32 %7 to i64
  %23 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !144
  %25 = icmp eq i32 %24, 2956
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %27, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !146
  %30 = getelementptr inbounds %struct.insn_operand_data, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !150
  %32 = tail call i32 %31(ptr noundef %5, i32 noundef %7) #22
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %26, %21
  %35 = icmp eq i32 %2, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %34, %20, %6
  %37 = sext i32 %7 to i64
  %38 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 116, i32 4, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !144
  %40 = icmp eq i32 %39, 2956
  br i1 %40, label %41, label %50

41:                                               ; preds = %36, %34, %6, %20
  %42 = zext i32 %7 to i64
  %43 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !114
  %45 = zext i8 %44 to i32
  %46 = load i32, ptr %5, align 8
  %47 = shl nuw nsw i32 %45, 16
  %48 = and i32 %46, -16711681
  %49 = or disjoint i32 %48, %47
  store i32 %49, ptr %5, align 8
  br label %50

50:                                               ; preds = %36, %26, %13, %41
  %51 = phi i32 [ %45, %41 ], [ %7, %13 ], [ %7, %26 ], [ %7, %36 ]
  %52 = phi i1 [ true, %41 ], [ false, %13 ], [ false, %26 ], [ false, %36 ]
  br i1 %52, label %53, label %55, !prof !262

53:                                               ; preds = %50
  %54 = icmp eq i32 %51, 0
  br i1 %54, label %55, label %6, !llvm.loop !264

55:                                               ; preds = %53, %50
  %56 = phi i32 [ 1, %50 ], [ 0, %53 ]
  ret i32 %56
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @prepare_operand(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #13 !prof !265 {
  %7 = icmp eq i32 %3, %4
  br i1 %7, label %10, label %8, !prof !266

8:                                                ; preds = %6
  %9 = tail call ptr @convert_modes(i32 noundef %4, i32 noundef %3, ptr noundef %1, i32 noundef %5) #22
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ %1, %6 ]
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %12, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !146
  %15 = sext i32 %2 to i64
  %16 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !150
  %18 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 %15, i32 2
  %19 = load i16, ptr %18, align 8
  %20 = zext i16 %19 to i32
  %21 = tail call i32 %17(ptr noundef %11, i32 noundef %20) #22, !prof !267
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30, !prof !268

23:                                               ; preds = %10
  %24 = load i32, ptr @reload_completed, align 4, !tbaa !118
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i16, ptr %18, align 8
  %28 = zext i16 %27 to i32
  %29 = tail call ptr @copy_to_mode_reg(i32 noundef %28, ptr noundef %11) #22
  br label %30

30:                                               ; preds = %10, %26, %23
  %31 = phi ptr [ null, %23 ], [ %11, %10 ], [ %29, %26 ]
  ret ptr %31
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @emit_cmp_and_jump_insns(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #13 !prof !269 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store i32 %4, ptr %8, align 4, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  %10 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %0, ptr noundef %1) #22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12, !prof !270

12:                                               ; preds = %7
  %13 = tail call i32 @swap_condition(i32 noundef %2) #22
  %14 = tail call i32 @can_compare_p(i32 noundef %13, i32 noundef %4, i32 noundef 0)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @swap_condition(i32 noundef %2) #22
  br label %18

18:                                               ; preds = %16, %12, %7
  %19 = phi i32 [ %17, %16 ], [ %2, %12 ], [ %2, %7 ]
  %20 = phi ptr [ %1, %16 ], [ %0, %12 ], [ %0, %7 ]
  %21 = phi ptr [ %0, %16 ], [ %1, %12 ], [ %1, %7 ]
  %22 = load i32, ptr %20, align 8
  %23 = and i32 %22, 65535
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !118
  %27 = icmp eq i32 %26, 9
  br i1 %27, label %28, label %30, !prof !271

28:                                               ; preds = %18
  %29 = tail call ptr @force_reg(i32 noundef %4, ptr noundef nonnull %20) #22
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi ptr [ %29, %28 ], [ %20, %18 ]
  %32 = icmp eq i32 %5, 0
  br i1 %32, label %35, label %33, !prof !272

33:                                               ; preds = %30
  %34 = tail call i32 @unsigned_condition(i32 noundef %19) #22
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %34, %33 ], [ %19, %30 ]
  call fastcc void @prepare_cmp_insn(ptr noundef %31, ptr noundef %21, i32 noundef %36, ptr noundef %3, i32 noundef %5, i32 noundef 3, ptr noundef nonnull %9, ptr noundef nonnull %8)
  %37 = load ptr, ptr %9, align 8, !tbaa !103
  %38 = load i32, ptr %8, align 4, !tbaa !118
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !114
  %42 = icmp eq i8 %41, 1
  %43 = sext i32 %38 to i64
  %44 = select i1 %42, i64 2, i64 %43, !prof !271
  %45 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !144
  %47 = icmp eq i32 %46, 2956
  br i1 %47, label %48, label %49, !prof !271

48:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4297, ptr noundef nonnull @.str.1) #22
  br label %49

49:                                               ; preds = %48, %35
  %50 = zext i32 %46 to i64
  %51 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %50, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !146
  %53 = load ptr, ptr %52, align 8, !tbaa !150
  %54 = tail call i32 %53(ptr noundef %37, i32 noundef 0) #22, !prof !273
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57, !prof !271

56:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4298, ptr noundef nonnull @.str.1) #22
  br label %57

57:                                               ; preds = %49, %56
  %58 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %50, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !152
  %60 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !114
  %62 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !114
  %64 = tail call ptr (ptr, ...) %59(ptr noundef %37, ptr noundef %61, ptr noundef %63, ptr noundef %6) #22, !prof !274
  %65 = tail call ptr @emit_jump_insn(ptr noundef %64) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  ret void
}

declare zeroext i8 @swap_commutative_operands_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @swap_condition(i32 noundef) local_unnamed_addr #3

declare i32 @unsigned_condition(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @prepare_cmp_insn(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef %7) unnamed_addr #13 !prof !275 !PGOFuncName !276 {
  br label %9

9:                                                ; preds = %365, %8
  %10 = phi ptr [ %0, %8 ], [ %369, %365 ]
  %11 = phi ptr [ %1, %8 ], [ %370, %365 ]
  %12 = phi ptr [ %3, %8 ], [ null, %365 ]
  %13 = phi i32 [ %5, %8 ], [ 3, %365 ]
  %14 = load i32, ptr %7, align 4, !tbaa !118
  %15 = icmp eq i32 %13, 0
  switch i32 %13, label %16 [
    i32 3, label %17
    i32 2, label %17
    i32 0, label %17
  ], !prof !277

16:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4060, ptr noundef nonnull @.str.1) #22
  br label %17

17:                                               ; preds = %9, %9, %9, %16
  %18 = load i32, ptr %10, align 8
  %19 = and i32 %18, 65535
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !118
  %23 = icmp eq i32 %22, 9
  %24 = load i32, ptr @optimize, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false, !prof !278
  br i1 %26, label %27, label %33, !prof !278

27:                                               ; preds = %17
  %28 = tail call zeroext i8 @optimize_insn_for_speed_p() #22
  %29 = tail call i32 @rtx_cost(ptr noundef nonnull %10, i32 noundef 48, i8 noundef zeroext %28) #22
  %30 = icmp sgt i32 %29, 4
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = tail call ptr @force_reg(i32 noundef %14, ptr noundef nonnull %10) #22
  br label %33

33:                                               ; preds = %31, %27, %17
  %34 = phi ptr [ %32, %31 ], [ %10, %27 ], [ %10, %17 ]
  %35 = load i32, ptr %11, align 8
  %36 = and i32 %35, 65535
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !118
  %40 = icmp eq i32 %39, 9
  %41 = load i32, ptr @optimize, align 4
  %42 = icmp ne i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false, !prof !279
  br i1 %43, label %44, label %50, !prof !279

44:                                               ; preds = %33
  %45 = tail call zeroext i8 @optimize_insn_for_speed_p() #22
  %46 = tail call i32 @rtx_cost(ptr noundef nonnull %11, i32 noundef 48, i8 noundef zeroext %45) #22
  %47 = icmp sgt i32 %46, 4
  br i1 %47, label %48, label %50, !prof !278

48:                                               ; preds = %44
  %49 = tail call ptr @force_reg(i32 noundef %14, ptr noundef nonnull %11) #22
  br label %50

50:                                               ; preds = %48, %44, %33
  %51 = phi ptr [ %49, %48 ], [ %11, %44 ], [ %11, %33 ]
  %52 = load i32, ptr %34, align 8
  %53 = and i32 %52, 16711680
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61, !prof !278

55:                                               ; preds = %50
  %56 = load i32, ptr %51, align 8
  %57 = and i32 %56, 16711680
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = tail call ptr @force_reg(i32 noundef %14, ptr noundef nonnull %34) #22
  br label %61

61:                                               ; preds = %59, %55, %50
  %62 = phi ptr [ %60, %59 ], [ %34, %55 ], [ %34, %50 ]
  %63 = icmp eq i32 %14, 0
  br i1 %63, label %64, label %73, !prof !278

64:                                               ; preds = %61
  %65 = load i32, ptr %62, align 8
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, ptr %51, align 8
  %71 = lshr i32 %70, 16
  %72 = and i32 %71, 255
  br label %73

73:                                               ; preds = %69, %64, %61
  %74 = phi i32 [ %14, %61 ], [ %72, %69 ], [ %67, %64 ]
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %227, !prof !278

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %78 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1, i32 0, i32 0, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !114
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.mem_attrs, ptr %79, i64 0, i32 4
  %83 = load i32, ptr %82, align 4, !tbaa !280
  br label %84

84:                                               ; preds = %76, %81
  %85 = phi i32 [ %83, %81 ], [ 8, %76 ]
  %86 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %87 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1, i32 0, i32 0, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !114
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.mem_attrs, ptr %88, i64 0, i32 4
  %92 = load i32, ptr %91, align 4, !tbaa !280
  br label %93

93:                                               ; preds = %84, %90
  %94 = phi i32 [ %92, %90 ], [ 8, %84 ]
  %95 = icmp ult i32 %85, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br i1 %80, label %104, label %98

97:                                               ; preds = %93
  br i1 %89, label %104, label %98

98:                                               ; preds = %97, %96
  %99 = phi ptr [ %79, %96 ], [ %88, %97 ]
  %100 = getelementptr inbounds %struct.mem_attrs, ptr %99, i64 0, i32 4
  %101 = load i32, ptr %100, align 4, !tbaa !280
  %102 = lshr i32 %101, 3
  %103 = zext nneg i32 %102 to i64
  br label %104

104:                                              ; preds = %98, %97, %96
  %105 = phi i64 [ 1, %96 ], [ 1, %97 ], [ %103, %98 ]
  %106 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %105) #22
  %107 = icmp eq ptr %12, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4098, ptr noundef nonnull @.str.1) #22
  br label %109

109:                                              ; preds = %104, %108
  %110 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !114
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %174, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  br label %114

114:                                              ; preds = %112, %170
  %115 = phi i8 [ %110, %112 ], [ %172, %170 ]
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds [87 x i32], ptr @cmpmem_optab, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !118
  %119 = icmp eq i32 %118, 2956
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = getelementptr inbounds [87 x i32], ptr @cmpstr_optab, i64 0, i64 %116
  %122 = load i32, ptr %121, align 4, !tbaa !118
  br label %123

123:                                              ; preds = %120, %114
  %124 = phi i32 [ %122, %120 ], [ %118, %114 ]
  %125 = icmp eq i32 %124, 2956
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = getelementptr inbounds [87 x i32], ptr @cmpstrn_optab, i64 0, i64 %116
  %128 = load i32, ptr %127, align 4, !tbaa !118
  br label %129

129:                                              ; preds = %126, %123
  %130 = phi i32 [ %128, %126 ], [ %124, %123 ]
  %131 = icmp eq i32 %130, 2956
  br i1 %131, label %170, label %132

132:                                              ; preds = %129
  %133 = load i32, ptr %12, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 30
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load i64, ptr %113, align 8, !tbaa !114
  %138 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %116
  %139 = load i8, ptr %138, align 1, !tbaa !114
  %140 = zext i8 %139 to i32
  %141 = shl nuw nsw i32 %140, 3
  %142 = shl nuw i32 1, %141
  %143 = zext nneg i32 %142 to i64
  %144 = icmp slt i64 %137, %143
  br i1 %144, label %145, label %170

145:                                              ; preds = %136, %132
  %146 = lshr i32 %133, 16
  %147 = and i32 %146, 255
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !114
  %151 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %116
  %152 = load i8, ptr %151, align 1, !tbaa !114
  %153 = icmp ugt i8 %150, %152
  br i1 %153, label %170, label %154

154:                                              ; preds = %145
  %155 = zext i8 %115 to i32
  %156 = zext i32 %130 to i64
  %157 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %156, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !146
  %159 = getelementptr inbounds %struct.insn_operand_data, ptr %158, i64 0, i32 2
  %160 = load i16, ptr %159, align 8
  %161 = zext i16 %160 to i32
  %162 = tail call ptr @gen_reg_rtx(i32 noundef %161) #22
  %163 = tail call ptr @convert_to_mode(i32 noundef %155, ptr noundef nonnull %12, i32 noundef 1) #22
  %164 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %156, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !152
  %166 = tail call ptr (ptr, ...) %165(ptr noundef %162, ptr noundef %62, ptr noundef %51, ptr noundef %163, ptr noundef %106) #22
  %167 = tail call ptr @emit_insn(ptr noundef %166) #22
  %168 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !103
  %169 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef 0, ptr noundef %162, ptr noundef %168) #22
  store ptr %169, ptr %6, align 8, !tbaa !103
  store i32 %161, ptr %7, align 4, !tbaa !118
  br label %463

170:                                              ; preds = %136, %145, %129
  %171 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %116
  %172 = load i8, ptr %171, align 1, !tbaa !114
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %114, !llvm.loop !282

174:                                              ; preds = %170, %109
  %175 = and i32 %13, -3
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %462

177:                                              ; preds = %174
  %178 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 3), align 8, !tbaa !103
  %179 = load ptr, ptr @sizetype_tab, align 16, !tbaa !103
  %180 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !103
  %181 = load i64, ptr %180, align 8
  %182 = and i64 %181, 65535
  %183 = icmp eq i64 %182, 14
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = tail call i32 @vector_type_mode(ptr noundef nonnull %180) #22
  br label %191

186:                                              ; preds = %177
  %187 = getelementptr inbounds %struct.tree_type, ptr %180, i64 0, i32 6
  %188 = load i32, ptr %187, align 4
  %189 = lshr i32 %188, 16
  %190 = and i32 %189, 255
  br label %191

191:                                              ; preds = %186, %184
  %192 = phi i32 [ %185, %184 ], [ %190, %186 ]
  %193 = load i64, ptr %179, align 8
  %194 = and i64 %193, 65535
  %195 = icmp eq i64 %194, 14
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = tail call i32 @vector_type_mode(ptr noundef nonnull %179) #22
  br label %203

198:                                              ; preds = %191
  %199 = getelementptr inbounds %struct.tree_type, ptr %179, i64 0, i32 6
  %200 = load i32, ptr %199, align 4
  %201 = lshr i32 %200, 16
  %202 = and i32 %201, 255
  br label %203

203:                                              ; preds = %198, %196
  %204 = phi i32 [ %197, %196 ], [ %202, %198 ]
  %205 = load i64, ptr %179, align 8
  %206 = and i64 %205, 65535
  %207 = icmp eq i64 %206, 14
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = tail call i32 @vector_type_mode(ptr noundef nonnull %179) #22
  br label %215

210:                                              ; preds = %203
  %211 = getelementptr inbounds %struct.tree_type, ptr %179, i64 0, i32 6
  %212 = load i32, ptr %211, align 4
  %213 = lshr i32 %212, 16
  %214 = and i32 %213, 255
  br label %215

215:                                              ; preds = %210, %208
  %216 = phi i32 [ %209, %208 ], [ %214, %210 ]
  %217 = load i64, ptr %179, align 8
  %218 = trunc i64 %217 to i32
  %219 = lshr i32 %218, 21
  %220 = and i32 %219, 1
  %221 = tail call ptr @convert_to_mode(i32 noundef %216, ptr noundef %12, i32 noundef %220) #22
  %222 = load ptr, ptr %77, align 8, !tbaa !114
  %223 = load ptr, ptr %86, align 8, !tbaa !114
  %224 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef %178, ptr noundef null, i32 noundef 2, i32 noundef %192, i32 noundef 3, ptr noundef %222, i32 noundef 16, ptr noundef %223, i32 noundef 16, ptr noundef %221, i32 noundef %204) #22
  %225 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !103
  %226 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef 0, ptr noundef %224, ptr noundef %225) #22
  store ptr %226, ptr %6, align 8, !tbaa !103
  store i32 %192, ptr %7, align 4, !tbaa !118
  br label %463

227:                                              ; preds = %73
  %228 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !118
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %241, label %230, !prof !279

230:                                              ; preds = %227
  %231 = tail call i32 @may_trap_p(ptr noundef %62) #22
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %230
  %234 = tail call ptr @force_reg(i32 noundef %74, ptr noundef %62) #22
  br label %235

235:                                              ; preds = %233, %230
  %236 = phi ptr [ %234, %233 ], [ %62, %230 ]
  %237 = tail call i32 @may_trap_p(ptr noundef %51) #22
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %235
  %240 = tail call ptr @force_reg(i32 noundef %74, ptr noundef %51) #22
  br label %241

241:                                              ; preds = %235, %239, %227
  %242 = phi ptr [ %240, %239 ], [ %51, %235 ], [ %51, %227 ]
  %243 = phi ptr [ %236, %239 ], [ %236, %235 ], [ %62, %227 ]
  %244 = zext i32 %74 to i64
  %245 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %244
  %246 = load i8, ptr %245, align 1, !tbaa !114
  %247 = icmp eq i8 %246, 1
  br i1 %247, label %248, label %254, !prof !278

248:                                              ; preds = %241
  %249 = tail call i32 @can_compare_p(i32 noundef %2, i32 noundef 2, i32 noundef 0)
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %248
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4165, ptr noundef nonnull @.str.1) #22
  br label %252

252:                                              ; preds = %248, %251
  %253 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef 0, ptr noundef %243, ptr noundef %242) #22
  store ptr %253, ptr %6, align 8, !tbaa !103
  br label %463

254:                                              ; preds = %241
  %255 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef 0, ptr noundef %243, ptr noundef %242) #22
  br label %256

256:                                              ; preds = %348, %254
  %257 = phi i32 [ %74, %254 ], [ %347, %348 ]
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !144
  %261 = icmp eq i32 %260, 2956
  br i1 %261, label %338, label %262, !prof !278

262:                                              ; preds = %256
  %263 = zext i32 %260 to i64
  %264 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %263, i32 3
  %265 = load ptr, ptr %264, align 8, !tbaa !146
  %266 = load ptr, ptr %265, align 8, !tbaa !150
  %267 = tail call i32 %266(ptr noundef %255, i32 noundef 0) #22, !prof !283
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %338, label %269, !prof !278

269:                                              ; preds = %262
  %270 = tail call ptr @get_last_insn() #22
  %271 = icmp eq i32 %74, %257
  br i1 %271, label %274, label %272, !prof !266

272:                                              ; preds = %269
  %273 = tail call ptr @convert_modes(i32 noundef %257, i32 noundef %74, ptr noundef %243, i32 noundef %4) #22
  br label %274

274:                                              ; preds = %272, %269
  %275 = phi ptr [ %273, %272 ], [ %243, %269 ]
  %276 = sext i32 %260 to i64
  %277 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %276, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !146
  %279 = getelementptr inbounds %struct.insn_operand_data, ptr %278, i64 1
  %280 = load ptr, ptr %279, align 8, !tbaa !150
  %281 = getelementptr inbounds %struct.insn_operand_data, ptr %278, i64 1, i32 2
  %282 = load i16, ptr %281, align 8
  %283 = zext i16 %282 to i32
  %284 = tail call i32 %280(ptr noundef %275, i32 noundef %283) #22, !prof !284
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %293, !prof !268

286:                                              ; preds = %274
  %287 = load i32, ptr @reload_completed, align 4, !tbaa !118
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %286
  %290 = load i16, ptr %281, align 8
  %291 = zext i16 %290 to i32
  %292 = tail call ptr @copy_to_mode_reg(i32 noundef %291, ptr noundef %275) #22
  br label %293

293:                                              ; preds = %274, %286, %289
  %294 = phi ptr [ null, %286 ], [ %275, %274 ], [ %292, %289 ]
  br i1 %271, label %297, label %295, !prof !266

295:                                              ; preds = %293
  %296 = tail call ptr @convert_modes(i32 noundef %257, i32 noundef %74, ptr noundef %242, i32 noundef %4) #22
  br label %297

297:                                              ; preds = %295, %293
  %298 = phi ptr [ %296, %295 ], [ %242, %293 ]
  %299 = getelementptr inbounds %struct.insn_operand_data, ptr %278, i64 2
  %300 = load ptr, ptr %299, align 8, !tbaa !150
  %301 = getelementptr inbounds %struct.insn_operand_data, ptr %278, i64 2, i32 2
  %302 = load i16, ptr %301, align 8
  %303 = zext i16 %302 to i32
  %304 = tail call i32 %300(ptr noundef %298, i32 noundef %303) #22, !prof !284
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %313, !prof !268

306:                                              ; preds = %297
  %307 = load i32, ptr @reload_completed, align 4, !tbaa !118
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %306
  %310 = load i16, ptr %301, align 8
  %311 = zext i16 %310 to i32
  %312 = tail call ptr @copy_to_mode_reg(i32 noundef %311, ptr noundef %298) #22
  br label %313

313:                                              ; preds = %297, %306, %309
  %314 = phi ptr [ null, %306 ], [ %298, %297 ], [ %312, %309 ]
  %315 = icmp ne ptr %294, null
  %316 = icmp ne ptr %314, null
  %317 = select i1 %315, i1 %316, i1 false, !prof !279
  br i1 %317, label %318, label %337, !prof !279

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.insn_operand_data, ptr %265, i64 1
  %320 = load ptr, ptr %319, align 8, !tbaa !150
  %321 = getelementptr inbounds %struct.insn_operand_data, ptr %265, i64 1, i32 2
  %322 = load i16, ptr %321, align 8
  %323 = zext i16 %322 to i32
  %324 = tail call i32 %320(ptr noundef nonnull %294, i32 noundef %323) #22, !prof !285
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %337, label %326, !prof !278

326:                                              ; preds = %318
  %327 = getelementptr inbounds %struct.insn_operand_data, ptr %265, i64 2
  %328 = load ptr, ptr %327, align 8, !tbaa !150
  %329 = getelementptr inbounds %struct.insn_operand_data, ptr %265, i64 2, i32 2
  %330 = load i16, ptr %329, align 8
  %331 = zext i16 %330 to i32
  %332 = tail call i32 %328(ptr noundef nonnull %314, i32 noundef %331) #22, !prof !286
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %337, label %334, !prof !278

334:                                              ; preds = %326
  %335 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1
  %336 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %294, ptr %335, align 8, !tbaa !114
  store ptr %314, ptr %336, align 8, !tbaa !114
  store ptr %255, ptr %6, align 8, !tbaa !103
  store i32 %257, ptr %7, align 4, !tbaa !118
  br label %345

337:                                              ; preds = %326, %318, %313
  tail call void @delete_insns_since(ptr noundef %270) #22
  br label %338

338:                                              ; preds = %337, %262, %256
  br i1 %15, label %345, label %339

339:                                              ; preds = %338
  switch i8 %246, label %345 [
    i8 11, label %340
    i8 9, label %340
    i8 8, label %340
    i8 7, label %340
    i8 6, label %340
    i8 5, label %340
    i8 4, label %340
    i8 2, label %340
  ]

340:                                              ; preds = %339, %339, %339, %339, %339, %339, %339, %339
  %341 = zext i32 %257 to i64
  %342 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %341
  %343 = load i8, ptr %342, align 1, !tbaa !114
  %344 = zext i8 %343 to i32
  br label %345

345:                                              ; preds = %338, %339, %334, %340
  %346 = phi i32 [ 0, %340 ], [ 1, %334 ], [ 6, %339 ], [ 6, %338 ]
  %347 = phi i32 [ %344, %340 ], [ %257, %334 ], [ %257, %339 ], [ %257, %338 ]
  switch i32 %346, label %463 [
    i32 0, label %348
    i32 6, label %350
  ], !prof !287

348:                                              ; preds = %345
  %349 = icmp eq i32 %347, 0
  br i1 %349, label %350, label %256, !llvm.loop !288

350:                                              ; preds = %348, %345
  %351 = icmp eq i32 %13, 3
  br i1 %351, label %352, label %462

352:                                              ; preds = %350
  %353 = and i8 %246, -2
  %354 = icmp eq i8 %353, 8
  br i1 %354, label %372, label %355

355:                                              ; preds = %352
  %356 = tail call ptr @optab_libfunc(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 105), i32 noundef %74)
  %357 = icmp eq ptr %356, null
  br i1 %357, label %358, label %359

358:                                              ; preds = %355
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4213, ptr noundef nonnull @.str.1) #22
  br label %359

359:                                              ; preds = %355, %358
  %360 = icmp eq i32 %4, 0
  br i1 %360, label %365, label %361

361:                                              ; preds = %359
  %362 = tail call ptr @optab_libfunc(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 106), i32 noundef %74)
  %363 = icmp eq ptr %362, null
  %364 = select i1 %363, ptr %356, ptr %362
  br label %365

365:                                              ; preds = %361, %359
  %366 = phi ptr [ %364, %361 ], [ %356, %359 ]
  %367 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 8), align 8, !tbaa !289
  %368 = tail call i32 %367() #22
  %369 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef %366, ptr noundef null, i32 noundef 1, i32 noundef %368, i32 noundef 2, ptr noundef %243, i32 noundef %74, ptr noundef %242, i32 noundef %74) #22
  %370 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !103
  %371 = load i32, ptr @word_mode, align 4, !tbaa !118
  store i32 %371, ptr %7, align 4, !tbaa !118
  br label %9

372:                                              ; preds = %352
  %373 = tail call i32 @swap_condition(i32 noundef %2) #22
  %374 = tail call i32 @reverse_condition_maybe_unordered(i32 noundef %2) #22
  %375 = load i32, ptr %243, align 8
  %376 = lshr i32 %375, 16
  %377 = and i32 %376, 255
  %378 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 8), align 8, !tbaa !289
  %379 = tail call i32 %378() #22
  %380 = icmp eq i32 %377, 0
  br i1 %380, label %417, label %381

381:                                              ; preds = %372
  %382 = zext i32 %2 to i64
  %383 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %382
  %384 = zext i32 %373 to i64
  %385 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %384
  %386 = zext i32 %374 to i64
  %387 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %386
  br label %388

388:                                              ; preds = %381, %410
  %389 = phi i1 [ %380, %381 ], [ %416, %410 ]
  %390 = phi ptr [ null, %381 ], [ %411, %410 ]
  %391 = phi i32 [ %377, %381 ], [ %415, %410 ]
  %392 = load ptr, ptr %383, align 8, !tbaa !103
  %393 = icmp eq ptr %392, null
  br i1 %393, label %397, label %394

394:                                              ; preds = %388
  %395 = tail call ptr @optab_libfunc(ptr noundef nonnull %392, i32 noundef %391)
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %417

397:                                              ; preds = %394, %388
  %398 = phi ptr [ null, %394 ], [ %390, %388 ]
  %399 = load ptr, ptr %385, align 8, !tbaa !103
  %400 = icmp eq ptr %399, null
  br i1 %400, label %404, label %401

401:                                              ; preds = %397
  %402 = tail call ptr @optab_libfunc(ptr noundef nonnull %399, i32 noundef %391)
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %417

404:                                              ; preds = %401, %397
  %405 = phi ptr [ null, %401 ], [ %398, %397 ]
  %406 = load ptr, ptr %387, align 8, !tbaa !103
  %407 = icmp eq ptr %406, null
  br i1 %407, label %410, label %408

408:                                              ; preds = %404
  %409 = tail call ptr @optab_libfunc(ptr noundef nonnull %406, i32 noundef %391)
  br label %410

410:                                              ; preds = %408, %404
  %411 = phi ptr [ %409, %408 ], [ %405, %404 ]
  %412 = zext nneg i32 %391 to i64
  %413 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %412
  %414 = load i8, ptr %413, align 1, !tbaa !114
  %415 = zext i8 %414 to i32
  %416 = icmp eq i8 %414, 0
  br i1 %416, label %417, label %388, !llvm.loop !290

417:                                              ; preds = %410, %394, %401, %372
  %418 = phi i32 [ %377, %372 ], [ %415, %410 ], [ %391, %394 ], [ %391, %401 ]
  %419 = phi i1 [ %380, %372 ], [ %416, %410 ], [ %389, %394 ], [ %389, %401 ]
  %420 = phi ptr [ null, %372 ], [ %411, %410 ], [ %395, %394 ], [ %402, %401 ]
  %421 = phi i32 [ %2, %372 ], [ %2, %410 ], [ %2, %394 ], [ %373, %401 ]
  %422 = phi ptr [ %242, %372 ], [ %242, %410 ], [ %242, %394 ], [ %243, %401 ]
  %423 = phi ptr [ %243, %372 ], [ %243, %410 ], [ %243, %394 ], [ %242, %401 ]
  br i1 %419, label %424, label %425

424:                                              ; preds = %417
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4392, ptr noundef nonnull @.str.1) #22
  br label %425

425:                                              ; preds = %424, %417
  %426 = icmp eq i32 %418, %377
  br i1 %426, label %430, label %427

427:                                              ; preds = %425
  %428 = tail call ptr @convert_to_mode(i32 noundef %418, ptr noundef %423, i32 noundef 0) #22
  %429 = tail call ptr @convert_to_mode(i32 noundef %418, ptr noundef %422, i32 noundef 0) #22
  br label %430

430:                                              ; preds = %427, %425
  %431 = phi ptr [ %429, %427 ], [ %422, %425 ]
  %432 = phi ptr [ %428, %427 ], [ %423, %425 ]
  %433 = icmp eq i32 %421, 90
  br i1 %433, label %434, label %439

434:                                              ; preds = %430
  %435 = tail call ptr @simplify_gen_relational(i32 noundef 80, i32 noundef %379, i32 noundef %418, ptr noundef %432, ptr noundef %432) #22
  %436 = tail call ptr @simplify_gen_relational(i32 noundef 80, i32 noundef %379, i32 noundef %418, ptr noundef %431, ptr noundef %431) #22
  %437 = load ptr, ptr @const_true_rtx, align 8, !tbaa !103
  %438 = tail call ptr @simplify_gen_ternary(i32 noundef 47, i32 noundef %379, i32 noundef %379, ptr noundef %435, ptr noundef %437, ptr noundef %436) #22
  br label %454

439:                                              ; preds = %430
  %440 = tail call ptr @simplify_gen_relational(i32 noundef %421, i32 noundef %379, i32 noundef %418, ptr noundef %432, ptr noundef %431) #22
  %441 = add i32 %421, -80
  %442 = icmp ult i32 %441, 6
  br i1 %442, label %444, label %443

443:                                              ; preds = %439
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4450, ptr noundef nonnull @.str.1) #22
  unreachable

444:                                              ; preds = %439
  %445 = zext nneg i32 %441 to i64
  %446 = getelementptr inbounds [6 x ptr], ptr @switch.table.prepare_cmp_insn, i64 0, i64 %445
  %447 = load ptr, ptr %446, align 8
  %448 = zext nneg i32 %441 to i64
  %449 = getelementptr inbounds [6 x ptr], ptr @switch.table.prepare_cmp_insn.86, i64 0, i64 %448
  %450 = load ptr, ptr %449, align 8
  %451 = load ptr, ptr %450, align 8, !tbaa !103
  %452 = load ptr, ptr %447, align 8, !tbaa !103
  %453 = tail call ptr @simplify_gen_ternary(i32 noundef 47, i32 noundef %379, i32 noundef %379, ptr noundef %440, ptr noundef %452, ptr noundef %451) #22
  br label %454

454:                                              ; preds = %434, %444
  %455 = phi i32 [ 80, %434 ], [ %421, %444 ]
  %456 = phi ptr [ %438, %434 ], [ %453, %444 ]
  tail call void @start_sequence() #22
  %457 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef %420, ptr noundef null, i32 noundef 1, i32 noundef %379, i32 noundef 2, ptr noundef %432, i32 noundef %418, ptr noundef %431, i32 noundef %418) #22
  %458 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %459 = tail call ptr @gen_reg_rtx(i32 noundef %379) #22
  tail call void @emit_libcall_block(ptr noundef %458, ptr noundef %459, ptr noundef %457, ptr noundef %456)
  %460 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !103
  %461 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %455, i32 noundef 0, ptr noundef %459, ptr noundef %460) #22
  store ptr %461, ptr %6, align 8, !tbaa !103
  store i32 %379, ptr %7, align 4, !tbaa !118
  br label %463

462:                                              ; preds = %174, %350
  store ptr null, ptr %6, align 8, !tbaa !103
  br label %463

463:                                              ; preds = %345, %154, %215, %454, %462, %252
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @emit_indirect_jump(ptr noundef %0) local_unnamed_addr #9 !prof !102 {
  %2 = load ptr, ptr getelementptr inbounds ([0 x %struct.insn_data], ptr @insn_data, i64 0, i64 2200, i32 3), align 8, !tbaa !146
  %3 = load ptr, ptr %2, align 8, !tbaa !150
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 16) #22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @copy_to_mode_reg(i32 noundef 16, ptr noundef %0) #22
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %0, %1 ], [ %7, %6 ]
  %10 = tail call ptr @gen_indirect_jump(ptr noundef %9) #22
  %11 = tail call ptr @emit_jump_insn(ptr noundef %10) #22
  %12 = tail call ptr @emit_barrier() #22
  ret void
}

declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #3

declare ptr @gen_indirect_jump(ptr noundef) local_unnamed_addr #3

declare ptr @emit_barrier() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @emit_conditional_move(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #10 !prof !291 {
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store i32 %4, ptr %10, align 4, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #22
  %12 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %2, ptr noundef %3) #22
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14, !prof !292

14:                                               ; preds = %9
  %15 = tail call i32 @swap_condition(i32 noundef %1) #22
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi ptr [ %3, %14 ], [ %2, %9 ]
  %18 = phi ptr [ %2, %14 ], [ %3, %9 ]
  %19 = phi i32 [ %15, %14 ], [ %1, %9 ]
  %20 = icmp eq i32 %19, 85
  %21 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %22 = icmp eq ptr %18, %21
  %23 = select i1 %20, i1 %22, i1 false, !prof !293
  br i1 %23, label %24, label %26, !prof !294

24:                                               ; preds = %16
  %25 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !103
  br label %34

26:                                               ; preds = %16
  %27 = icmp eq i32 %19, 83
  br i1 %27, label %28, label %34, !prof !294

28:                                               ; preds = %26
  %29 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !103
  %30 = icmp eq ptr %18, %29
  %31 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %32 = select i1 %30, ptr %31, ptr %18
  %33 = select i1 %30, i32 82, i32 83
  br label %34

34:                                               ; preds = %28, %26, %24
  %35 = phi ptr [ %25, %24 ], [ %18, %26 ], [ %32, %28 ]
  %36 = phi i32 [ 84, %24 ], [ %19, %26 ], [ %33, %28 ]
  %37 = icmp eq i32 %4, 0
  br i1 %37, label %38, label %42, !prof !292

38:                                               ; preds = %34
  %39 = load i32, ptr %17, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  store i32 %41, ptr %10, align 4, !tbaa !118
  br label %42

42:                                               ; preds = %38, %34
  %43 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %5, ptr noundef %6) #22
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45, !prof !292

45:                                               ; preds = %42
  %46 = tail call i32 @reversed_comparison_code_parts(i32 noundef %36, ptr noundef %17, ptr noundef %35, ptr noundef null) #22
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48, %45, %42
  %50 = phi ptr [ %6, %48 ], [ %5, %45 ], [ %5, %42 ]
  %51 = phi ptr [ %5, %48 ], [ %6, %45 ], [ %6, %42 ]
  %52 = phi i32 [ %46, %48 ], [ %36, %45 ], [ %36, %42 ]
  %53 = icmp eq i32 %7, 0
  br i1 %53, label %54, label %58, !prof !294

54:                                               ; preds = %49
  %55 = load i32, ptr %50, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  br label %58

58:                                               ; preds = %54, %49
  %59 = phi i32 [ %57, %54 ], [ %7, %49 ]
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [87 x i32], ptr @movcc_gen_code, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !118
  %63 = icmp eq i32 %62, 2956
  br i1 %63, label %147, label %64, !prof !294

64:                                               ; preds = %58
  %65 = icmp eq ptr %0, null
  br i1 %65, label %66, label %68, !prof !294

66:                                               ; preds = %64
  %67 = tail call ptr @gen_reg_rtx(i32 noundef %59) #22
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi ptr [ %0, %64 ], [ %67, %66 ]
  %70 = zext i32 %62 to i64
  %71 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %70, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !146
  %73 = load ptr, ptr %72, align 8, !tbaa !150
  %74 = getelementptr inbounds %struct.insn_operand_data, ptr %72, i64 0, i32 2
  %75 = load i16, ptr %74, align 8
  %76 = zext i16 %75 to i32
  %77 = tail call i32 %73(ptr noundef %69, i32 noundef %76) #22, !prof !295
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83, !prof !294

79:                                               ; preds = %68
  %80 = load i16, ptr %74, align 8
  %81 = zext i16 %80 to i32
  %82 = tail call ptr @gen_reg_rtx(i32 noundef %81) #22
  br label %83

83:                                               ; preds = %79, %68
  %84 = phi ptr [ %69, %68 ], [ %82, %79 ]
  %85 = getelementptr inbounds %struct.insn_operand_data, ptr %72, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !150
  %87 = getelementptr inbounds %struct.insn_operand_data, ptr %72, i64 2, i32 2
  %88 = load i16, ptr %87, align 8
  %89 = zext i16 %88 to i32
  %90 = tail call i32 %86(ptr noundef %50, i32 noundef %89) #22, !prof !296
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96, !prof !294

92:                                               ; preds = %83
  %93 = load i16, ptr %87, align 8
  %94 = zext i16 %93 to i32
  %95 = tail call ptr @copy_to_mode_reg(i32 noundef %94, ptr noundef %50) #22
  br label %96

96:                                               ; preds = %92, %83
  %97 = phi ptr [ %50, %83 ], [ %95, %92 ]
  %98 = getelementptr inbounds %struct.insn_operand_data, ptr %72, i64 3
  %99 = load ptr, ptr %98, align 8, !tbaa !150
  %100 = getelementptr inbounds %struct.insn_operand_data, ptr %72, i64 3, i32 2
  %101 = load i16, ptr %100, align 8
  %102 = zext i16 %101 to i32
  %103 = tail call i32 %99(ptr noundef %51, i32 noundef %102) #22, !prof !296
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109, !prof !294

105:                                              ; preds = %96
  %106 = load i16, ptr %100, align 8
  %107 = zext i16 %106 to i32
  %108 = tail call ptr @copy_to_mode_reg(i32 noundef %107, ptr noundef %51) #22
  br label %109

109:                                              ; preds = %105, %96
  %110 = phi ptr [ %51, %96 ], [ %108, %105 ]
  %111 = icmp eq i32 %8, 0
  br i1 %111, label %114, label %112, !prof !292

112:                                              ; preds = %109
  %113 = tail call i32 @unsigned_condition(i32 noundef %52) #22
  br label %114

114:                                              ; preds = %109, %112
  %115 = phi i32 [ %113, %112 ], [ %52, %109 ]
  %116 = load i32, ptr %10, align 4, !tbaa !118
  %117 = tail call ptr @simplify_gen_relational(i32 noundef %115, i32 noundef 0, i32 noundef %116, ptr noundef %17, ptr noundef %35) #22
  store ptr %117, ptr %11, align 8, !tbaa !103
  %118 = load i32, ptr %117, align 8
  %119 = and i32 %118, 65535
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !118
  %123 = icmp ult i32 %122, 2
  br i1 %123, label %124, label %147, !prof !292

124:                                              ; preds = %114
  tail call void @do_pending_stack_adjust() #22
  tail call void @start_sequence() #22
  %125 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !114
  %127 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !114
  %129 = load i32, ptr %117, align 8
  %130 = and i32 %129, 65535
  call fastcc void @prepare_cmp_insn(ptr noundef %126, ptr noundef %128, i32 noundef %130, ptr noundef null, i32 noundef %8, i32 noundef 2, ptr noundef nonnull %11, ptr noundef nonnull %10)
  %131 = load ptr, ptr %11, align 8, !tbaa !103
  %132 = icmp eq ptr %131, null
  br i1 %132, label %137, label %133, !prof !294

133:                                              ; preds = %124
  %134 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %70, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !152
  %136 = tail call ptr (ptr, ...) %135(ptr noundef %84, ptr noundef nonnull %131, ptr noundef %97, ptr noundef %110) #22, !prof !297
  br label %137

137:                                              ; preds = %124, %133
  %138 = phi ptr [ %136, %133 ], [ null, %124 ]
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %141, !prof !294

140:                                              ; preds = %137
  tail call void @end_sequence() #22
  br label %147

141:                                              ; preds = %137
  %142 = tail call ptr @emit_insn(ptr noundef nonnull %138) #22
  %143 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %144 = tail call ptr @emit_insn(ptr noundef %143) #22
  %145 = icmp eq ptr %84, %69
  br i1 %145, label %147, label %146, !prof !292

146:                                              ; preds = %141
  tail call void @convert_move(ptr noundef %69, ptr noundef %84, i32 noundef 0) #22
  br label %147

147:                                              ; preds = %141, %146, %114, %58, %140
  %148 = phi ptr [ null, %140 ], [ null, %58 ], [ null, %114 ], [ %69, %146 ], [ %69, %141 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #22
  ret ptr %148
}

declare i32 @reversed_comparison_code_parts(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_gen_relational(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @do_pending_stack_adjust() local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @can_conditionally_move_p(i32 noundef %0) local_unnamed_addr #14 !prof !102 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [87 x i32], ptr @movcc_gen_code, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !118
  %5 = icmp ne i32 %4, 2956
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @emit_conditional_add(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #9 !prof !102 {
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store i32 %4, ptr %10, align 4, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #22
  %12 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %2, ptr noundef %3) #22
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @swap_condition(i32 noundef %1) #22
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi ptr [ %3, %14 ], [ %2, %9 ]
  %18 = phi ptr [ %2, %14 ], [ %3, %9 ]
  %19 = phi i32 [ %15, %14 ], [ %1, %9 ]
  %20 = icmp eq i32 %19, 85
  %21 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8
  %22 = icmp eq ptr %18, %21
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !103
  br label %34

26:                                               ; preds = %16
  %27 = icmp eq i32 %19, 83
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !103
  %30 = icmp eq ptr %18, %29
  %31 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %32 = select i1 %30, ptr %31, ptr %18
  %33 = select i1 %30, i32 82, i32 83
  br label %34

34:                                               ; preds = %28, %26, %24
  %35 = phi ptr [ %25, %24 ], [ %18, %26 ], [ %32, %28 ]
  %36 = phi i32 [ 84, %24 ], [ %19, %26 ], [ %33, %28 ]
  %37 = icmp eq i32 %4, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, ptr %17, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  store i32 %41, ptr %10, align 4, !tbaa !118
  br label %42

42:                                               ; preds = %38, %34
  %43 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %5, ptr noundef %6) #22
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @reversed_comparison_code_parts(i32 noundef %36, ptr noundef %17, ptr noundef %35, ptr noundef null) #22
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48, %45, %42
  %50 = phi ptr [ %6, %48 ], [ %5, %45 ], [ %5, %42 ]
  %51 = phi ptr [ %5, %48 ], [ %6, %45 ], [ %6, %42 ]
  %52 = phi i32 [ %46, %48 ], [ %36, %45 ], [ %36, %42 ]
  %53 = icmp eq i32 %7, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, ptr %50, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  br label %58

58:                                               ; preds = %54, %49
  %59 = phi i32 [ %57, %54 ], [ %7, %49 ]
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 120, i32 4, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !144
  %63 = icmp eq i32 %62, 2956
  br i1 %63, label %147, label %64

64:                                               ; preds = %58
  %65 = icmp eq ptr %0, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %64
  %67 = tail call ptr @gen_reg_rtx(i32 noundef %59) #22
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi ptr [ %0, %64 ], [ %67, %66 ]
  %70 = zext i32 %62 to i64
  %71 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %70, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !146
  %73 = load ptr, ptr %72, align 8, !tbaa !150
  %74 = getelementptr inbounds %struct.insn_operand_data, ptr %72, i64 0, i32 2
  %75 = load i16, ptr %74, align 8
  %76 = zext i16 %75 to i32
  %77 = tail call i32 %73(ptr noundef %69, i32 noundef %76) #22
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load i16, ptr %74, align 8
  %81 = zext i16 %80 to i32
  %82 = tail call ptr @gen_reg_rtx(i32 noundef %81) #22
  br label %83

83:                                               ; preds = %68, %79
  %84 = phi ptr [ %82, %79 ], [ %69, %68 ]
  %85 = getelementptr inbounds %struct.insn_operand_data, ptr %72, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !150
  %87 = getelementptr inbounds %struct.insn_operand_data, ptr %72, i64 2, i32 2
  %88 = load i16, ptr %87, align 8
  %89 = zext i16 %88 to i32
  %90 = tail call i32 %86(ptr noundef %50, i32 noundef %89) #22
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load i16, ptr %87, align 8
  %94 = zext i16 %93 to i32
  %95 = tail call ptr @copy_to_mode_reg(i32 noundef %94, ptr noundef %50) #22
  br label %96

96:                                               ; preds = %92, %83
  %97 = phi ptr [ %50, %83 ], [ %95, %92 ]
  %98 = getelementptr inbounds %struct.insn_operand_data, ptr %72, i64 3
  %99 = load ptr, ptr %98, align 8, !tbaa !150
  %100 = getelementptr inbounds %struct.insn_operand_data, ptr %72, i64 3, i32 2
  %101 = load i16, ptr %100, align 8
  %102 = zext i16 %101 to i32
  %103 = tail call i32 %99(ptr noundef %51, i32 noundef %102) #22
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i16, ptr %100, align 8
  %107 = zext i16 %106 to i32
  %108 = tail call ptr @copy_to_mode_reg(i32 noundef %107, ptr noundef %51) #22
  br label %109

109:                                              ; preds = %105, %96
  %110 = phi ptr [ %51, %96 ], [ %108, %105 ]
  %111 = icmp eq i32 %8, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  %113 = tail call i32 @unsigned_condition(i32 noundef %52) #22
  br label %114

114:                                              ; preds = %109, %112
  %115 = phi i32 [ %113, %112 ], [ %52, %109 ]
  %116 = load i32, ptr %10, align 4, !tbaa !118
  %117 = tail call ptr @simplify_gen_relational(i32 noundef %115, i32 noundef 0, i32 noundef %116, ptr noundef %17, ptr noundef %35) #22
  store ptr %117, ptr %11, align 8, !tbaa !103
  %118 = load i32, ptr %117, align 8
  %119 = and i32 %118, 65535
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !118
  %123 = icmp ult i32 %122, 2
  br i1 %123, label %124, label %147

124:                                              ; preds = %114
  tail call void @do_pending_stack_adjust() #22
  tail call void @start_sequence() #22
  %125 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !114
  %127 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !114
  %129 = load i32, ptr %117, align 8
  %130 = and i32 %129, 65535
  call fastcc void @prepare_cmp_insn(ptr noundef %126, ptr noundef %128, i32 noundef %130, ptr noundef null, i32 noundef %8, i32 noundef 2, ptr noundef nonnull %11, ptr noundef nonnull %10)
  %131 = load ptr, ptr %11, align 8, !tbaa !103
  %132 = icmp eq ptr %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %124
  %134 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %70, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !152
  %136 = tail call ptr (ptr, ...) %135(ptr noundef %84, ptr noundef nonnull %131, ptr noundef %97, ptr noundef %110) #22
  br label %137

137:                                              ; preds = %124, %133
  %138 = phi ptr [ %136, %133 ], [ null, %124 ]
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  tail call void @end_sequence() #22
  br label %147

141:                                              ; preds = %137
  %142 = tail call ptr @emit_insn(ptr noundef nonnull %138) #22
  %143 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %144 = tail call ptr @emit_insn(ptr noundef %143) #22
  %145 = icmp eq ptr %84, %69
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  tail call void @convert_move(ptr noundef %69, ptr noundef %84, i32 noundef 0) #22
  br label %147

147:                                              ; preds = %141, %146, %114, %58, %140
  %148 = phi ptr [ null, %140 ], [ null, %58 ], [ null, %114 ], [ %69, %146 ], [ %69, %141 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #22
  ret ptr %148
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gen_add2_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !102 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !144
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %9, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !146
  %12 = load ptr, ptr %11, align 8, !tbaa !150
  %13 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 0, i32 2
  %14 = load i16, ptr %13, align 8
  %15 = zext i16 %14 to i32
  %16 = tail call i32 %12(ptr noundef nonnull %0, i32 noundef %15) #22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4760, ptr noundef nonnull @.str.1) #22
  br label %19

19:                                               ; preds = %2, %18
  %20 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !150
  %22 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 1, i32 2
  %23 = load i16, ptr %22, align 8
  %24 = zext i16 %23 to i32
  %25 = tail call i32 %21(ptr noundef nonnull %0, i32 noundef %24) #22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4762, ptr noundef nonnull @.str.1) #22
  br label %28

28:                                               ; preds = %19, %27
  %29 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !150
  %31 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 2, i32 2
  %32 = load i16, ptr %31, align 8
  %33 = zext i16 %32 to i32
  %34 = tail call i32 %30(ptr noundef %1, i32 noundef %33) #22
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4764, ptr noundef nonnull @.str.1) #22
  br label %37

37:                                               ; preds = %28, %36
  %38 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %9, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !152
  %40 = tail call ptr (ptr, ...) %39(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %1) #22
  ret ptr %40
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gen_add3_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !102 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !144
  %10 = icmp eq i32 %9, 2956
  br i1 %10, label %41, label %11

11:                                               ; preds = %3
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %12, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !146
  %15 = load ptr, ptr %14, align 8, !tbaa !150
  %16 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 0, i32 2
  %17 = load i16, ptr %16, align 8
  %18 = zext i16 %17 to i32
  %19 = tail call i32 %15(ptr noundef nonnull %0, i32 noundef %18) #22
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !150
  %24 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 1, i32 2
  %25 = load i16, ptr %24, align 8
  %26 = zext i16 %25 to i32
  %27 = tail call i32 %23(ptr noundef %1, i32 noundef %26) #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !150
  %32 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 2, i32 2
  %33 = load i16, ptr %32, align 8
  %34 = zext i16 %33 to i32
  %35 = tail call i32 %31(ptr noundef %2, i32 noundef %34) #22
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %12, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !152
  %40 = tail call ptr (ptr, ...) %39(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #22
  br label %41

41:                                               ; preds = %3, %11, %21, %29, %37
  %42 = phi ptr [ %40, %37 ], [ null, %29 ], [ null, %21 ], [ null, %11 ], [ null, %3 ]
  ret ptr %42
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @have_add2_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !102 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 16711680
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4794, ptr noundef nonnull @.str.1) #22
  br label %7

7:                                                ; preds = %2, %6
  %8 = load i32, ptr %0, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !144
  %14 = icmp eq i32 %13, 2956
  br i1 %14, label %42, label %15

15:                                               ; preds = %7
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %16, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !146
  %19 = load ptr, ptr %18, align 8, !tbaa !150
  %20 = getelementptr inbounds %struct.insn_operand_data, ptr %18, i64 0, i32 2
  %21 = load i16, ptr %20, align 8
  %22 = zext i16 %21 to i32
  %23 = tail call i32 %19(ptr noundef nonnull %0, i32 noundef %22) #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.insn_operand_data, ptr %18, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !150
  %28 = getelementptr inbounds %struct.insn_operand_data, ptr %18, i64 1, i32 2
  %29 = load i16, ptr %28, align 8
  %30 = zext i16 %29 to i32
  %31 = tail call i32 %27(ptr noundef nonnull %0, i32 noundef %30) #22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.insn_operand_data, ptr %18, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !150
  %36 = getelementptr inbounds %struct.insn_operand_data, ptr %18, i64 2, i32 2
  %37 = load i16, ptr %36, align 8
  %38 = zext i16 %37 to i32
  %39 = tail call i32 %35(ptr noundef %1, i32 noundef %38) #22
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %33, %15, %25, %7
  %43 = phi i32 [ 0, %7 ], [ 0, %25 ], [ 0, %15 ], [ %41, %33 ]
  ret i32 %43
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gen_sub2_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !102 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !144
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %9, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !146
  %12 = load ptr, ptr %11, align 8, !tbaa !150
  %13 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 0, i32 2
  %14 = load i16, ptr %13, align 8
  %15 = zext i16 %14 to i32
  %16 = tail call i32 %12(ptr noundef nonnull %0, i32 noundef %15) #22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4820, ptr noundef nonnull @.str.1) #22
  br label %19

19:                                               ; preds = %2, %18
  %20 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !150
  %22 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 1, i32 2
  %23 = load i16, ptr %22, align 8
  %24 = zext i16 %23 to i32
  %25 = tail call i32 %21(ptr noundef nonnull %0, i32 noundef %24) #22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4822, ptr noundef nonnull @.str.1) #22
  br label %28

28:                                               ; preds = %19, %27
  %29 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !150
  %31 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 2, i32 2
  %32 = load i16, ptr %31, align 8
  %33 = zext i16 %32 to i32
  %34 = tail call i32 %30(ptr noundef %1, i32 noundef %33) #22
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4824, ptr noundef nonnull @.str.1) #22
  br label %37

37:                                               ; preds = %28, %36
  %38 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %9, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !152
  %40 = tail call ptr (ptr, ...) %39(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %1) #22
  ret ptr %40
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gen_sub3_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !102 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !144
  %10 = icmp eq i32 %9, 2956
  br i1 %10, label %41, label %11

11:                                               ; preds = %3
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %12, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !146
  %15 = load ptr, ptr %14, align 8, !tbaa !150
  %16 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 0, i32 2
  %17 = load i16, ptr %16, align 8
  %18 = zext i16 %17 to i32
  %19 = tail call i32 %15(ptr noundef nonnull %0, i32 noundef %18) #22
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !150
  %24 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 1, i32 2
  %25 = load i16, ptr %24, align 8
  %26 = zext i16 %25 to i32
  %27 = tail call i32 %23(ptr noundef %1, i32 noundef %26) #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !150
  %32 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 2, i32 2
  %33 = load i16, ptr %32, align 8
  %34 = zext i16 %33 to i32
  %35 = tail call i32 %31(ptr noundef %2, i32 noundef %34) #22
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %12, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !152
  %40 = tail call ptr (ptr, ...) %39(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #22
  br label %41

41:                                               ; preds = %3, %11, %21, %29, %37
  %42 = phi ptr [ %40, %37 ], [ null, %29 ], [ null, %21 ], [ null, %11 ], [ null, %3 ]
  ret ptr %42
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @have_sub2_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !102 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 16711680
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4854, ptr noundef nonnull @.str.1) #22
  br label %7

7:                                                ; preds = %2, %6
  %8 = load i32, ptr %0, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !144
  %14 = icmp eq i32 %13, 2956
  br i1 %14, label %42, label %15

15:                                               ; preds = %7
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %16, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !146
  %19 = load ptr, ptr %18, align 8, !tbaa !150
  %20 = getelementptr inbounds %struct.insn_operand_data, ptr %18, i64 0, i32 2
  %21 = load i16, ptr %20, align 8
  %22 = zext i16 %21 to i32
  %23 = tail call i32 %19(ptr noundef nonnull %0, i32 noundef %22) #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.insn_operand_data, ptr %18, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !150
  %28 = getelementptr inbounds %struct.insn_operand_data, ptr %18, i64 1, i32 2
  %29 = load i16, ptr %28, align 8
  %30 = zext i16 %29 to i32
  %31 = tail call i32 %27(ptr noundef nonnull %0, i32 noundef %30) #22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.insn_operand_data, ptr %18, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !150
  %36 = getelementptr inbounds %struct.insn_operand_data, ptr %18, i64 2, i32 2
  %37 = load i16, ptr %36, align 8
  %38 = zext i16 %37 to i32
  %39 = tail call i32 %35(ptr noundef %1, i32 noundef %38) #22
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %33, %15, %25, %7
  %43 = phi i32 [ 0, %7 ], [ 0, %25 ], [ 0, %15 ], [ %41, %33 ]
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gen_move_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !298 {
  tail call void @start_sequence() #22
  %3 = tail call ptr @emit_move_insn_1(ptr noundef %0, ptr noundef %1) #22
  %4 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  ret ptr %4
}

declare ptr @emit_move_insn_1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @can_extend_p(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #15 !prof !299 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1, i32 3), !prof !300
  %6 = sext i32 %0 to i64
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [87 x [87 x %struct.optab_handlers]], ptr %5, i64 0, i64 %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !144
  ret i32 %9
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gen_extend_insn(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #9 !prof !102 {
  %6 = icmp eq i32 %4, 0
  %7 = select i1 %6, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1, i32 3)
  %8 = sext i32 %2 to i64
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds [87 x [87 x %struct.optab_handlers]], ptr %7, i64 0, i64 %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !144
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %12, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !152
  %15 = tail call ptr (ptr, ...) %14(ptr noundef %0, ptr noundef %1) #22
  ret ptr %15
}

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_float(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !102 {
  %4 = alloca %struct.real_value, align 8
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 16711680
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4981, ptr noundef nonnull @.str.1) #22
  br label %9

9:                                                ; preds = %3, %8
  %10 = load i32, ptr %0, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %118, label %14

14:                                               ; preds = %9
  %15 = icmp eq i32 %2, 0
  %16 = select i1 %15, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 8, i32 3)
  %17 = icmp ne i32 %2, 0
  br label %18

18:                                               ; preds = %14, %107
  %19 = phi ptr [ %1, %14 ], [ %110, %107 ]
  %20 = phi ptr [ %0, %14 ], [ %109, %107 ]
  %21 = phi i32 [ %12, %14 ], [ %114, %107 ]
  %22 = phi i8 [ 0, %14 ], [ %108, %107 ]
  %23 = load i32, ptr %19, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %107, label %27

27:                                               ; preds = %18
  %28 = zext nneg i32 %21 to i64
  br label %29

29:                                               ; preds = %27, %101
  %30 = phi ptr [ %19, %27 ], [ %100, %101 ]
  %31 = phi ptr [ %20, %27 ], [ %99, %101 ]
  %32 = phi i32 [ %25, %27 ], [ %105, %101 ]
  %33 = phi i8 [ %22, %27 ], [ %98, %101 ]
  %34 = load i32, ptr %0, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = icmp eq i32 %21, %36
  br i1 %37, label %49, label %38

38:                                               ; preds = %29
  %39 = tail call i32 @significand_size(i32 noundef %21) #22
  %40 = load i32, ptr %30, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !114
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 3
  %48 = icmp slt i32 %39, %47
  br i1 %48, label %96, label %49

49:                                               ; preds = %38, %29
  %50 = zext nneg i32 %32 to i64
  %51 = getelementptr inbounds [87 x [87 x %struct.optab_handlers]], ptr %16, i64 0, i64 %28, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !144
  %53 = icmp eq i32 %52, 2956
  %54 = and i1 %17, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 %28, i64 %50
  %57 = load i32, ptr %56, align 4, !tbaa !144
  %58 = icmp eq i32 %57, 2956
  %59 = select i1 %58, i8 %33, i8 1
  %60 = load i32, ptr %30, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = icmp eq i32 %32, %62
  %64 = select i1 %63, i32 %2, i32 0
  %65 = select i1 %63, i32 2956, i32 %57
  br label %66

66:                                               ; preds = %55, %49
  %67 = phi i32 [ %64, %55 ], [ %2, %49 ]
  %68 = phi i8 [ %59, %55 ], [ %33, %49 ]
  %69 = phi i32 [ %65, %55 ], [ %52, %49 ]
  %70 = icmp eq i32 %69, 2956
  br i1 %70, label %96, label %71

71:                                               ; preds = %66
  %72 = load i32, ptr %30, align 8
  %73 = lshr i32 %72, 16
  %74 = and i32 %73, 255
  %75 = icmp eq i32 %32, %74
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = tail call ptr @convert_to_mode(i32 noundef %32, ptr noundef nonnull %30, i32 noundef %2) #22
  br label %78

78:                                               ; preds = %76, %71
  %79 = phi ptr [ %77, %76 ], [ %30, %71 ]
  %80 = load i32, ptr %0, align 8
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = icmp eq i32 %21, %82
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  %85 = tail call ptr @gen_reg_rtx(i32 noundef %21) #22
  br label %86

86:                                               ; preds = %84, %78
  %87 = phi ptr [ %85, %84 ], [ %31, %78 ]
  %88 = icmp eq i32 %67, 0
  %89 = select i1 %88, i32 103, i32 105
  %90 = tail call zeroext i8 @maybe_emit_unop_insn(i32 noundef %69, ptr noundef %87, ptr noundef %79, i32 noundef %89), !range !178
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3839, ptr noundef nonnull @.str.1) #22
  br label %93

93:                                               ; preds = %86, %92
  %94 = icmp eq ptr %87, %0
  br i1 %94, label %96, label %95

95:                                               ; preds = %93
  tail call void @convert_move(ptr noundef nonnull %0, ptr noundef %87, i32 noundef 0) #22
  br label %96

96:                                               ; preds = %66, %93, %95, %38
  %97 = phi i32 [ 7, %38 ], [ 1, %95 ], [ 1, %93 ], [ 0, %66 ]
  %98 = phi i8 [ %33, %38 ], [ %68, %95 ], [ %68, %93 ], [ %68, %66 ]
  %99 = phi ptr [ %31, %38 ], [ %87, %95 ], [ %87, %93 ], [ %31, %66 ]
  %100 = phi ptr [ %30, %38 ], [ %79, %95 ], [ %79, %93 ], [ %30, %66 ]
  switch i32 %97, label %284 [
    i32 0, label %101
    i32 7, label %101
  ]

101:                                              ; preds = %96, %96
  %102 = zext nneg i32 %32 to i64
  %103 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !114
  %105 = zext i8 %104 to i32
  %106 = icmp eq i8 %104, 0
  br i1 %106, label %107, label %29, !llvm.loop !301

107:                                              ; preds = %101, %18
  %108 = phi i8 [ %22, %18 ], [ %98, %101 ]
  %109 = phi ptr [ %20, %18 ], [ %99, %101 ]
  %110 = phi ptr [ %19, %18 ], [ %100, %101 ]
  %111 = zext nneg i32 %21 to i64
  %112 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !114
  %114 = zext i8 %113 to i32
  %115 = icmp eq i8 %113, 0
  br i1 %115, label %116, label %18, !llvm.loop !302

116:                                              ; preds = %107
  %117 = icmp ne i8 %108, 0
  br label %118

118:                                              ; preds = %116, %9
  %119 = phi i1 [ false, %9 ], [ %117, %116 ]
  %120 = phi ptr [ %0, %9 ], [ %109, %116 ]
  %121 = phi ptr [ %1, %9 ], [ %110, %116 ]
  %122 = icmp ne i32 %2, 0
  %123 = select i1 %122, i1 %119, i1 false
  br i1 %123, label %124, label %235

124:                                              ; preds = %118
  %125 = tail call ptr @gen_label_rtx() #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %126 = load i32, ptr %0, align 8
  %127 = lshr i32 %126, 16
  %128 = and i32 %127, 255
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %152, label %130

130:                                              ; preds = %124
  %131 = load i32, ptr %121, align 8
  %132 = lshr i32 %131, 16
  %133 = and i32 %132, 255
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !114
  br label %137

137:                                              ; preds = %130, %147
  %138 = phi i32 [ %128, %130 ], [ %150, %147 ]
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !114
  %142 = icmp ult i8 %136, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3, i64 %139, i64 %134
  %145 = load i32, ptr %144, align 4, !tbaa !144
  %146 = icmp eq i32 %145, 2956
  br i1 %146, label %147, label %198

147:                                              ; preds = %137, %143
  %148 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %139
  %149 = load i8, ptr %148, align 1, !tbaa !114
  %150 = zext i8 %149 to i32
  %151 = icmp eq i8 %149, 0
  br i1 %151, label %152, label %137, !llvm.loop !303

152:                                              ; preds = %147, %124
  %153 = tail call i32 @significand_size(i32 noundef %128) #22
  %154 = add nsw i32 %153, 1
  %155 = load i32, ptr %121, align 8
  %156 = lshr i32 %155, 16
  %157 = and i32 %156, 255
  %158 = zext nneg i32 %157 to i64
  %159 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !114
  %161 = zext i8 %160 to i32
  %162 = shl nuw nsw i32 %161, 3
  %163 = icmp slt i32 %154, %162
  br i1 %163, label %164, label %198

164:                                              ; preds = %152
  %165 = tail call ptr @gen_label_rtx() #22
  %166 = load i32, ptr %120, align 8
  %167 = and i32 %166, 65535
  %168 = icmp eq i32 %167, 37
  br i1 %168, label %169, label %177

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %171 = load i32, ptr %170, align 8, !tbaa !114
  %172 = icmp ult i32 %171, 53
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = lshr i32 %166, 16
  %175 = and i32 %174, 255
  %176 = icmp eq i32 %175, %128
  br i1 %176, label %179, label %177

177:                                              ; preds = %173, %169, %164
  %178 = tail call ptr @gen_reg_rtx(i32 noundef %128) #22
  br label %179

179:                                              ; preds = %177, %173
  %180 = phi ptr [ %178, %177 ], [ %120, %173 ]
  %181 = load i32, ptr %121, align 8
  %182 = lshr i32 %181, 16
  %183 = and i32 %182, 255
  tail call void @do_pending_stack_adjust() #22
  %184 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !103
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %121, ptr noundef %184, i32 noundef 85, ptr noundef null, i32 noundef %183, i32 noundef 0, ptr noundef %165)
  tail call void @expand_float(ptr noundef %180, ptr noundef nonnull %121, i32 noundef 0)
  %185 = tail call ptr @gen_jump(ptr noundef %125) #22
  %186 = tail call ptr @emit_jump_insn(ptr noundef %185) #22
  %187 = tail call ptr @emit_barrier() #22
  %188 = tail call ptr @emit_label(ptr noundef %165) #22
  %189 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !103
  %190 = tail call ptr @expand_binop(i32 noundef %183, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef nonnull %121, ptr noundef %189, ptr noundef null, i32 noundef 1, i32 noundef 3)
  %191 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !103
  %192 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %183, ptr noundef nonnull %121, ptr noundef %191, ptr noundef null, i32 noundef 1) #22
  %193 = tail call ptr @expand_binop(i32 noundef %183, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %190, ptr noundef %192, ptr noundef %190, i32 noundef 1, i32 noundef 3)
  tail call void @expand_float(ptr noundef %180, ptr noundef %193, i32 noundef 0)
  %194 = tail call ptr @expand_binop(i32 noundef %128, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %180, ptr noundef %180, ptr noundef %180, i32 noundef 0, i32 noundef 3)
  %195 = icmp eq ptr %194, %180
  br i1 %195, label %232, label %196

196:                                              ; preds = %179
  %197 = tail call ptr @emit_move_insn(ptr noundef %180, ptr noundef %194) #22
  br label %232

198:                                              ; preds = %143, %152
  %199 = phi i32 [ %128, %152 ], [ %138, %143 ]
  %200 = load i32, ptr %0, align 8
  %201 = lshr i32 %200, 16
  %202 = and i32 %201, 255
  %203 = icmp eq i32 %202, %199
  %204 = and i32 %200, 65535
  %205 = icmp eq i32 %204, 37
  %206 = and i1 %205, %203
  br i1 %206, label %207, label %211

207:                                              ; preds = %198
  %208 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %209 = load i32, ptr %208, align 8, !tbaa !114
  %210 = icmp ult i32 %209, 53
  br i1 %210, label %211, label %213

211:                                              ; preds = %207, %198
  %212 = tail call ptr @gen_reg_rtx(i32 noundef %199) #22
  br label %213

213:                                              ; preds = %211, %207
  %214 = phi ptr [ %212, %211 ], [ %120, %207 ]
  tail call void @expand_float(ptr noundef %214, ptr noundef %121, i32 noundef 0)
  tail call void @do_pending_stack_adjust() #22
  %215 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !103
  %216 = load i32, ptr %121, align 8
  %217 = lshr i32 %216, 16
  %218 = and i32 %217, 255
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %121, ptr noundef %215, i32 noundef 82, ptr noundef null, i32 noundef %218, i32 noundef 0, ptr noundef %125)
  %219 = load i32, ptr %121, align 8
  %220 = lshr i32 %219, 16
  %221 = and i32 %220, 255
  %222 = zext nneg i32 %221 to i64
  %223 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !114
  %225 = zext i8 %224 to i32
  %226 = shl nuw nsw i32 %225, 3
  call void @real_2expN(ptr noundef nonnull %4, i32 noundef %226, i32 noundef %199) #22
  %227 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %4, i32 noundef %199) #22
  %228 = call ptr @expand_binop(i32 noundef %199, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %214, ptr noundef %227, ptr noundef %214, i32 noundef 0, i32 noundef 3)
  %229 = icmp eq ptr %228, %214
  br i1 %229, label %232, label %230

230:                                              ; preds = %213
  %231 = call ptr @emit_move_insn(ptr noundef %214, ptr noundef %228) #22
  br label %232

232:                                              ; preds = %213, %230, %179, %196
  %233 = phi ptr [ %180, %196 ], [ %180, %179 ], [ %214, %230 ], [ %214, %213 ]
  call void @do_pending_stack_adjust() #22
  %234 = call ptr @emit_label(ptr noundef %125) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  br label %272

235:                                              ; preds = %118
  %236 = select i1 %122, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 8), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7)
  %237 = load i32, ptr %121, align 8
  %238 = lshr i32 %237, 16
  %239 = and i32 %238, 255
  %240 = zext nneg i32 %239 to i64
  %241 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %240
  %242 = load i8, ptr %241, align 1, !tbaa !114
  %243 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !114
  %244 = icmp ult i8 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %235
  %246 = tail call ptr @convert_to_mode(i32 noundef 16, ptr noundef nonnull %121, i32 noundef %2) #22
  br label %247

247:                                              ; preds = %245, %235
  %248 = phi ptr [ %246, %245 ], [ %121, %235 ]
  %249 = load i32, ptr %0, align 8
  %250 = lshr i32 %249, 16
  %251 = and i32 %250, 255
  %252 = load i32, ptr %248, align 8
  %253 = lshr i32 %252, 16
  %254 = and i32 %253, 255
  %255 = tail call ptr @convert_optab_libfunc(ptr noundef nonnull %236, i32 noundef %251, i32 noundef %254)
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %258

257:                                              ; preds = %247
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5142, ptr noundef nonnull @.str.1) #22
  br label %258

258:                                              ; preds = %247, %257
  tail call void @start_sequence() #22
  %259 = load i32, ptr %0, align 8
  %260 = lshr i32 %259, 16
  %261 = and i32 %260, 255
  %262 = load i32, ptr %248, align 8
  %263 = lshr i32 %262, 16
  %264 = and i32 %263, 255
  %265 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef %255, ptr noundef null, i32 noundef 1, i32 noundef %261, i32 noundef 1, ptr noundef nonnull %248, i32 noundef %264) #22
  %266 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %267 = select i1 %122, i32 105, i32 103
  %268 = load i32, ptr %0, align 8
  %269 = lshr i32 %268, 16
  %270 = and i32 %269, 255
  %271 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %267, i32 noundef %270, ptr noundef nonnull %248) #22
  tail call void @emit_libcall_block(ptr noundef %266, ptr noundef %120, ptr noundef %265, ptr noundef %271)
  br label %272

272:                                              ; preds = %232, %258
  %273 = phi ptr [ %233, %232 ], [ %120, %258 ]
  %274 = icmp eq ptr %273, %0
  br i1 %274, label %284, label %275

275:                                              ; preds = %272
  %276 = load i32, ptr %273, align 8
  %277 = load i32, ptr %0, align 8
  %278 = xor i32 %277, %276
  %279 = and i32 %278, 16711680
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %275
  %282 = call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %273) #22
  br label %284

283:                                              ; preds = %275
  call void @convert_move(ptr noundef nonnull %0, ptr noundef nonnull %273, i32 noundef 0) #22
  br label %284

284:                                              ; preds = %96, %272, %283, %281
  ret void
}

declare i32 @significand_size(i32 noundef) local_unnamed_addr #3

declare ptr @gen_jump(ptr noundef) local_unnamed_addr #3

declare void @real_2expN(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @const_double_from_real_value(ptr noundef byval(%struct.real_value) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_fix(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !102 {
  %4 = alloca %struct.real_value, align 8
  %5 = load i32, ptr %1, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %124, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %2, 0
  %11 = select i1 %10, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 6, i32 3)
  %12 = select i1 %10, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 3, i32 3), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 4, i32 3)
  %13 = icmp ne i32 %2, 0
  br label %14

14:                                               ; preds = %9, %116
  %15 = phi ptr [ %1, %9 ], [ %118, %116 ]
  %16 = phi ptr [ %0, %9 ], [ %117, %116 ]
  %17 = phi i32 [ %7, %9 ], [ %122, %116 ]
  %18 = load i32, ptr %0, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %116, label %22

22:                                               ; preds = %14
  %23 = zext nneg i32 %17 to i64
  %24 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 40, i32 4, i64 %23
  %25 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 40, i32 4, i64 %23
  br label %26

26:                                               ; preds = %22, %111
  %27 = phi ptr [ %15, %22 ], [ %110, %111 ]
  %28 = phi ptr [ %16, %22 ], [ %109, %111 ]
  %29 = phi i32 [ %20, %22 ], [ %114, %111 ]
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [87 x [87 x %struct.optab_handlers]], ptr %11, i64 0, i64 %30, i64 %23
  %32 = load i32, ptr %31, align 4, !tbaa !144
  %33 = icmp eq i32 %32, 2956
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = getelementptr inbounds [87 x [87 x %struct.optab_handlers]], ptr %12, i64 0, i64 %30, i64 %23
  %36 = load i32, ptr %35, align 4, !tbaa !144
  %37 = icmp eq i32 %36, 2956
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %24, align 4, !tbaa !144
  %40 = icmp eq i32 %39, 2956
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %34
  br label %42

42:                                               ; preds = %38, %26, %41
  %43 = phi i32 [ 0, %41 ], [ 0, %26 ], [ 1, %38 ]
  %44 = phi i32 [ 2956, %41 ], [ %32, %26 ], [ %36, %38 ]
  %45 = icmp eq i32 %44, 2956
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load i32, ptr %0, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = icmp ne i32 %29, %49
  %51 = and i1 %13, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 %30, i64 %23
  %54 = load i32, ptr %53, align 4, !tbaa !144
  %55 = icmp eq i32 %54, 2956
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 3, i32 3, i64 %30, i64 %23
  %58 = load i32, ptr %57, align 4, !tbaa !144
  %59 = icmp eq i32 %58, 2956
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %25, align 4, !tbaa !144
  %62 = icmp eq i32 %61, 2956
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %56
  br label %64

64:                                               ; preds = %63, %52, %60, %46, %42
  %65 = phi i32 [ %43, %46 ], [ %43, %42 ], [ 0, %63 ], [ 0, %52 ], [ 1, %60 ]
  %66 = phi i32 [ %2, %46 ], [ %2, %42 ], [ 0, %63 ], [ 0, %52 ], [ 0, %60 ]
  %67 = phi i32 [ 2956, %46 ], [ %44, %42 ], [ 2956, %63 ], [ %54, %52 ], [ %58, %60 ]
  %68 = icmp eq i32 %67, 2956
  br i1 %68, label %107, label %69

69:                                               ; preds = %64
  %70 = tail call ptr @get_last_insn() #22
  %71 = load i32, ptr %27, align 8
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = icmp eq i32 %17, %73
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  %76 = tail call ptr @convert_to_mode(i32 noundef %17, ptr noundef nonnull %27, i32 noundef 0) #22
  br label %77

77:                                               ; preds = %75, %69
  %78 = phi ptr [ %76, %75 ], [ %27, %69 ]
  %79 = icmp eq i32 %65, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %78, align 8
  %82 = lshr i32 %81, 16
  %83 = and i32 %82, 255
  %84 = tail call ptr @gen_reg_rtx(i32 noundef %83) #22
  %85 = load i32, ptr %78, align 8
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 255
  %88 = tail call ptr @expand_unop(i32 noundef %87, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 40), ptr noundef nonnull %78, ptr noundef %84, i32 noundef 0)
  br label %89

89:                                               ; preds = %80, %77
  %90 = phi ptr [ %88, %80 ], [ %78, %77 ]
  %91 = load i32, ptr %0, align 8
  %92 = lshr i32 %91, 16
  %93 = and i32 %92, 255
  %94 = icmp eq i32 %29, %93
  br i1 %94, label %97, label %95

95:                                               ; preds = %89
  %96 = tail call ptr @gen_reg_rtx(i32 noundef %29) #22
  br label %97

97:                                               ; preds = %95, %89
  %98 = phi ptr [ %96, %95 ], [ %28, %89 ]
  %99 = icmp eq i32 %66, 0
  %100 = select i1 %99, i32 104, i32 106
  %101 = tail call zeroext i8 @maybe_emit_unop_insn(i32 noundef %67, ptr noundef %98, ptr noundef %90, i32 noundef %100), !range !178
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = icmp eq ptr %98, %0
  br i1 %104, label %107, label %105

105:                                              ; preds = %103
  tail call void @convert_move(ptr noundef nonnull %0, ptr noundef %98, i32 noundef %2) #22
  br label %107

106:                                              ; preds = %97
  tail call void @delete_insns_since(ptr noundef %70) #22
  br label %107

107:                                              ; preds = %106, %105, %103, %64
  %108 = phi i1 [ true, %64 ], [ false, %103 ], [ false, %105 ], [ true, %106 ]
  %109 = phi ptr [ %28, %64 ], [ %98, %103 ], [ %98, %105 ], [ %98, %106 ]
  %110 = phi ptr [ %27, %64 ], [ %90, %103 ], [ %90, %105 ], [ %90, %106 ]
  br i1 %108, label %111, label %267

111:                                              ; preds = %107
  %112 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %30
  %113 = load i8, ptr %112, align 1, !tbaa !114
  %114 = zext i8 %113 to i32
  %115 = icmp eq i8 %113, 0
  br i1 %115, label %116, label %26, !llvm.loop !304

116:                                              ; preds = %111, %14
  %117 = phi ptr [ %16, %14 ], [ %109, %111 ]
  %118 = phi ptr [ %15, %14 ], [ %110, %111 ]
  %119 = zext nneg i32 %17 to i64
  %120 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !114
  %122 = zext i8 %121 to i32
  %123 = icmp eq i8 %121, 0
  br i1 %123, label %124, label %14, !llvm.loop !305

124:                                              ; preds = %116, %3
  %125 = phi ptr [ %0, %3 ], [ %117, %116 ]
  %126 = phi ptr [ %1, %3 ], [ %118, %116 ]
  %127 = icmp eq i32 %2, 0
  br i1 %127, label %222, label %128

128:                                              ; preds = %124
  %129 = load i32, ptr %0, align 8
  %130 = lshr i32 %129, 16
  %131 = and i32 %130, 255
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !114
  %135 = icmp ult i8 %134, 9
  br i1 %135, label %136, label %222

136:                                              ; preds = %128
  %137 = load i32, ptr %126, align 8
  %138 = lshr i32 %137, 16
  %139 = and i32 %138, 255
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %222, label %141

141:                                              ; preds = %136, %217
  %142 = phi i32 [ %220, %217 ], [ %139, %136 ]
  %143 = zext nneg i32 %142 to i64
  %144 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3, i64 %132, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !144
  %146 = icmp eq i32 %145, 2956
  br i1 %146, label %147, label %155

147:                                              ; preds = %141
  %148 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 3, i32 3, i64 %132, i64 %143
  %149 = load i32, ptr %148, align 4, !tbaa !144
  %150 = icmp eq i32 %149, 2956
  br i1 %150, label %217, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 40, i32 4, i64 %143
  %153 = load i32, ptr %152, align 4, !tbaa !144
  %154 = icmp eq i32 %153, 2956
  br i1 %154, label %217, label %155

155:                                              ; preds = %141, %151
  %156 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %143
  %157 = load i8, ptr %156, align 1, !tbaa !114
  %158 = icmp eq i8 %157, 9
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %143
  %161 = load i8, ptr %160, align 1, !tbaa !114
  %162 = icmp ugt i8 %161, %134
  br i1 %162, label %163, label %217

163:                                              ; preds = %159, %155
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %164 = shl nuw nsw i8 %134, 3
  %165 = zext nneg i8 %164 to i32
  %166 = add nsw i32 %165, -1
  call void @real_2expN(ptr noundef nonnull %4, i32 noundef %166, i32 noundef %142) #22
  %167 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %4, i32 noundef %142) #22
  %168 = call ptr @gen_label_rtx() #22
  %169 = call ptr @gen_label_rtx() #22
  %170 = load i32, ptr %126, align 8
  %171 = lshr i32 %170, 16
  %172 = and i32 %171, 255
  %173 = icmp eq i32 %142, %172
  br i1 %173, label %176, label %174

174:                                              ; preds = %163
  %175 = call ptr @convert_to_mode(i32 noundef %142, ptr noundef nonnull %126, i32 noundef 0) #22
  br label %176

176:                                              ; preds = %174, %163
  %177 = phi ptr [ %175, %174 ], [ %126, %163 ]
  call void @do_pending_stack_adjust() #22
  %178 = load i32, ptr %177, align 8
  %179 = lshr i32 %178, 16
  %180 = and i32 %179, 255
  call void @emit_cmp_and_jump_insns(ptr noundef nonnull %177, ptr noundef %167, i32 noundef 82, ptr noundef null, i32 noundef %180, i32 noundef 0, ptr noundef %168)
  call void @expand_fix(ptr noundef nonnull %0, ptr noundef nonnull %177, i32 noundef 0)
  %181 = call ptr @gen_jump(ptr noundef %169) #22
  %182 = call ptr @emit_jump_insn(ptr noundef %181) #22
  %183 = call ptr @emit_barrier() #22
  %184 = call ptr @emit_label(ptr noundef %168) #22
  %185 = load i32, ptr %177, align 8
  %186 = lshr i32 %185, 16
  %187 = and i32 %186, 255
  %188 = call ptr @expand_binop(i32 noundef %187, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %177, ptr noundef %167, ptr noundef null, i32 noundef 0, i32 noundef 3)
  call void @expand_fix(ptr noundef nonnull %0, ptr noundef %188, i32 noundef 0)
  %189 = load i32, ptr %0, align 8
  %190 = lshr i32 %189, 16
  %191 = and i32 %190, 255
  %192 = zext nneg i32 %166 to i64
  %193 = shl nuw i64 1, %192
  %194 = call ptr @gen_int_mode(i64 noundef %193, i32 noundef %191) #22
  %195 = call ptr @expand_binop(i32 noundef %191, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef nonnull %0, ptr noundef %194, ptr noundef nonnull %0, i32 noundef 1, i32 noundef 3)
  %196 = icmp eq ptr %195, %0
  br i1 %196, label %199, label %197

197:                                              ; preds = %176
  %198 = call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef %195) #22
  br label %199

199:                                              ; preds = %197, %176
  %200 = call ptr @emit_label(ptr noundef %169) #22
  %201 = load i32, ptr %0, align 8
  %202 = lshr i32 %201, 16
  %203 = and i32 %202, 255
  %204 = zext nneg i32 %203 to i64
  %205 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !144
  %207 = icmp eq i32 %206, 2956
  br i1 %207, label %216, label %208

208:                                              ; preds = %199
  %209 = call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %0) #22
  %210 = load i32, ptr %0, align 8
  %211 = lshr i32 %210, 16
  %212 = and i32 %211, 255
  %213 = call ptr @copy_rtx(ptr noundef nonnull %177) #22
  %214 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 106, i32 noundef %212, ptr noundef %213) #22
  %215 = call ptr @set_unique_reg_note(ptr noundef %209, i32 noundef 4, ptr noundef %214) #22
  br label %216

216:                                              ; preds = %208, %199
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  br label %267

217:                                              ; preds = %147, %151, %159
  %218 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %143
  %219 = load i8, ptr %218, align 1, !tbaa !114
  %220 = zext i8 %219 to i32
  %221 = icmp eq i8 %219, 0
  br i1 %221, label %222, label %141, !llvm.loop !306

222:                                              ; preds = %217, %136, %128, %124
  %223 = load i32, ptr %0, align 8
  %224 = lshr i32 %223, 16
  %225 = and i32 %224, 255
  %226 = zext nneg i32 %225 to i64
  %227 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %226
  %228 = load i8, ptr %227, align 1, !tbaa !114
  %229 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !114
  %230 = icmp ult i8 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %222
  %232 = tail call ptr @gen_reg_rtx(i32 noundef 16) #22
  tail call void @expand_fix(ptr noundef %232, ptr noundef %126, i32 noundef %2)
  br label %255

233:                                              ; preds = %222
  %234 = select i1 %127, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 3), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 4)
  %235 = load i32, ptr %126, align 8
  %236 = lshr i32 %235, 16
  %237 = and i32 %236, 255
  %238 = tail call ptr @convert_optab_libfunc(ptr noundef nonnull %234, i32 noundef %225, i32 noundef %237)
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %241

240:                                              ; preds = %233
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5330, ptr noundef nonnull @.str.1) #22
  br label %241

241:                                              ; preds = %233, %240
  tail call void @start_sequence() #22
  %242 = load i32, ptr %0, align 8
  %243 = lshr i32 %242, 16
  %244 = and i32 %243, 255
  %245 = load i32, ptr %126, align 8
  %246 = lshr i32 %245, 16
  %247 = and i32 %246, 255
  %248 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef %238, ptr noundef null, i32 noundef 1, i32 noundef %244, i32 noundef 1, ptr noundef nonnull %126, i32 noundef %247) #22
  %249 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %250 = select i1 %127, i32 104, i32 106
  %251 = load i32, ptr %0, align 8
  %252 = lshr i32 %251, 16
  %253 = and i32 %252, 255
  %254 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %250, i32 noundef %253, ptr noundef nonnull %126) #22
  tail call void @emit_libcall_block(ptr noundef %249, ptr noundef %125, ptr noundef %248, ptr noundef %254)
  br label %255

255:                                              ; preds = %241, %231
  %256 = phi ptr [ %232, %231 ], [ %125, %241 ]
  %257 = icmp eq ptr %256, %0
  br i1 %257, label %267, label %258

258:                                              ; preds = %255
  %259 = load i32, ptr %0, align 8
  %260 = load i32, ptr %256, align 8
  %261 = xor i32 %260, %259
  %262 = and i32 %261, 16711680
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %258
  %265 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %256) #22
  br label %267

266:                                              ; preds = %258
  tail call void @convert_move(ptr noundef nonnull %0, ptr noundef nonnull %256, i32 noundef 0) #22
  br label %267

267:                                              ; preds = %107, %255, %266, %264, %216
  ret void
}

declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_fixed_convert(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !102 {
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = load i32, ptr %1, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %1) #22
  br label %41

14:                                               ; preds = %4
  %15 = icmp eq i32 %2, 0
  %16 = icmp eq i32 %3, 0
  %17 = select i1 %16, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 14), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 16)
  %18 = select i1 %16, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 13), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 15)
  %19 = select i1 %15, ptr %18, ptr %17
  %20 = zext nneg i32 %7 to i64
  %21 = zext nneg i32 %10 to i64
  %22 = getelementptr inbounds %struct.convert_optab_d, ptr %19, i64 0, i32 3, i64 %20, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !144
  %24 = icmp eq i32 %23, 2956
  br i1 %24, label %32, label %25

25:                                               ; preds = %14
  %26 = select i1 %16, i32 107, i32 109
  %27 = select i1 %16, i32 108, i32 110
  %28 = select i1 %15, i32 %26, i32 %27
  %29 = tail call zeroext i8 @maybe_emit_unop_insn(i32 noundef %23, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %28), !range !178
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3839, ptr noundef nonnull @.str.1) #22
  br label %41

32:                                               ; preds = %14
  %33 = tail call ptr @convert_optab_libfunc(ptr noundef nonnull %19, i32 noundef %7, i32 noundef %10)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5393, ptr noundef nonnull @.str.1) #22
  br label %36

36:                                               ; preds = %32, %35
  tail call void @start_sequence() #22
  %37 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef %33, ptr noundef null, i32 noundef 1, i32 noundef %7, i32 noundef 1, ptr noundef nonnull %1, i32 noundef %10) #22
  %38 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %39 = load i32, ptr %19, align 16, !tbaa !307
  %40 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %39, i32 noundef %7, ptr noundef nonnull %1) #22
  tail call void @emit_libcall_block(ptr noundef %38, ptr noundef nonnull %0, ptr noundef %37, ptr noundef %40)
  br label %41

41:                                               ; preds = %31, %25, %36, %12
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @expand_sfix_optab(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 !prof !102 {
  %4 = load i32, ptr %1, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %66, label %8

8:                                                ; preds = %3, %58
  %9 = phi i32 [ %64, %58 ], [ %6, %3 ]
  %10 = phi ptr [ %60, %58 ], [ %0, %3 ]
  %11 = phi ptr [ %59, %58 ], [ %1, %3 ]
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %58, label %16

16:                                               ; preds = %8
  %17 = zext nneg i32 %9 to i64
  br label %18

18:                                               ; preds = %16, %51
  %19 = phi i32 [ %14, %16 ], [ %56, %51 ]
  %20 = phi ptr [ %10, %16 ], [ %53, %51 ]
  %21 = phi ptr [ %11, %16 ], [ %52, %51 ]
  %22 = zext nneg i32 %19 to i64
  %23 = getelementptr inbounds %struct.convert_optab_d, ptr %2, i64 0, i32 3, i64 %22, i64 %17
  %24 = load i32, ptr %23, align 4, !tbaa !144
  %25 = icmp eq i32 %24, 2956
  br i1 %25, label %51, label %26

26:                                               ; preds = %18
  %27 = tail call ptr @get_last_insn() #22
  %28 = load i32, ptr %21, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = icmp eq i32 %9, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = tail call ptr @convert_to_mode(i32 noundef %9, ptr noundef nonnull %21, i32 noundef 0) #22
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %33, %32 ], [ %21, %26 ]
  %36 = load i32, ptr %0, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = icmp eq i32 %19, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = tail call ptr @gen_reg_rtx(i32 noundef %19) #22
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi ptr [ %41, %40 ], [ %20, %34 ]
  %44 = tail call zeroext i8 @maybe_emit_unop_insn(i32 noundef %24, ptr noundef %43, ptr noundef %35, i32 noundef 0), !range !178
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call void @delete_insns_since(ptr noundef %27) #22
  br label %50

47:                                               ; preds = %42
  %48 = icmp eq ptr %43, %0
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  tail call void @convert_move(ptr noundef nonnull %0, ptr noundef %43, i32 noundef 0) #22
  br label %50

50:                                               ; preds = %47, %49, %46
  br i1 %45, label %51, label %66

51:                                               ; preds = %18, %50
  %52 = phi ptr [ %35, %50 ], [ %21, %18 ]
  %53 = phi ptr [ %43, %50 ], [ %20, %18 ]
  %54 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %22
  %55 = load i8, ptr %54, align 1, !tbaa !114
  %56 = zext i8 %55 to i32
  %57 = icmp eq i8 %55, 0
  br i1 %57, label %58, label %18, !llvm.loop !308

58:                                               ; preds = %51, %8
  %59 = phi ptr [ %11, %8 ], [ %52, %51 ]
  %60 = phi ptr [ %10, %8 ], [ %53, %51 ]
  %61 = zext nneg i32 %9 to i64
  %62 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !114
  %64 = zext i8 %63 to i32
  %65 = icmp eq i8 %63, 0
  br i1 %65, label %66, label %8, !llvm.loop !309

66:                                               ; preds = %58, %50, %3
  %67 = phi i8 [ 0, %3 ], [ 1, %50 ], [ 0, %58 ]
  ret i8 %67
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @have_insn_for(i32 noundef %0, i32 noundef %1) local_unnamed_addr #16 !prof !310 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7, !prof !311

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.optab_d, ptr %5, i64 0, i32 4, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !144
  %11 = icmp ne i32 %10, 2956
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %7 ]
  ret i32 %14
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @build_libfunc_function(ptr noundef %0) local_unnamed_addr #9 !prof !312 {
  %2 = tail call ptr @get_identifier(ptr noundef %0) #22
  %3 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !103
  %4 = tail call ptr @build_function_type(ptr noundef %3, ptr noundef null) #22
  %5 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %2, ptr noundef %4) #22
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = or i64 %7, 33558528
  store i64 %8, ptr %6, align 8
  %9 = load i64, ptr %5, align 8
  %10 = or i64 %9, 134217728
  store i64 %10, ptr %5, align 8
  %11 = tail call ptr @decl_assembler_name(ptr noundef nonnull %5) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !313

13:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6082, ptr noundef nonnull @.str.1) #22
  br label %14

14:                                               ; preds = %1, %13
  %15 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %5, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20, !prof !314

18:                                               ; preds = %14
  tail call void @make_decl_rtl(ptr noundef nonnull %5) #22
  %19 = load ptr, ptr %15, align 8, !tbaa !114
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi ptr [ %19, %18 ], [ %16, %14 ]
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !114
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 67108864
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27, !prof !314

27:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6086, ptr noundef nonnull @.str.1) #22
  br label %28

28:                                               ; preds = %20, %27
  %29 = load ptr, ptr %15, align 8, !tbaa !114
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33, !prof !313

31:                                               ; preds = %28
  tail call void @make_decl_rtl(ptr noundef nonnull %5) #22
  %32 = load ptr, ptr %15, align 8, !tbaa !114
  br label %33

33:                                               ; preds = %28, %31
  %34 = phi ptr [ %32, %31 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !114
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %37, align 8, !tbaa !114
  ret ptr %5
}

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare ptr @build_function_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @init_one_libfunc(ptr noundef %0) local_unnamed_addr #9 !prof !312 {
  %2 = load ptr, ptr @libfunc_decls, align 8, !tbaa !103
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6, !prof !315

4:                                                ; preds = %1
  %5 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @libfunc_decl_hash, ptr noundef nonnull @libfunc_decl_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #22
  store ptr %5, ptr @libfunc_decls, align 8, !tbaa !103
  br label %6

6:                                                ; preds = %4, %1
  %7 = tail call ptr @get_identifier(ptr noundef %0) #22
  %8 = tail call i32 @htab_hash_string(ptr noundef %0) #22
  %9 = load ptr, ptr @libfunc_decls, align 8, !tbaa !103
  %10 = tail call ptr @htab_find_slot_with_hash(ptr noundef %9, ptr noundef %7, i32 noundef %8, i32 noundef 1) #22
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15, !prof !314

13:                                               ; preds = %6
  %14 = tail call ptr @build_libfunc_function(ptr noundef %0)
  store ptr %14, ptr %10, align 8, !tbaa !103
  br label %15

15:                                               ; preds = %13, %6
  %16 = phi ptr [ %14, %13 ], [ %11, %6 ]
  %17 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !114
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22, !prof !313

20:                                               ; preds = %15
  tail call void @make_decl_rtl(ptr noundef %16) #22
  %21 = load ptr, ptr %17, align 8, !tbaa !114
  br label %22

22:                                               ; preds = %15, %20
  %23 = phi ptr [ %21, %20 ], [ %18, %15 ]
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !114
  ret ptr %25
}

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @libfunc_decl_hash(ptr nocapture noundef readonly %0) #9 !prof !102 {
  %2 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct.tree_identifier, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = tail call i32 @htab_hash_string(ptr noundef %5) #22
  ret i32 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @libfunc_decl_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #17 !prof !316 !PGOFuncName !317 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

declare void @ggc_free(ptr noundef) #3

declare i32 @htab_hash_string(ptr noundef) local_unnamed_addr #3

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @set_user_assembler_libfunc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !102 {
  %3 = tail call ptr @get_identifier(ptr noundef %0) #22
  %4 = tail call i32 @htab_hash_string(ptr noundef %0) #22
  %5 = load ptr, ptr @libfunc_decls, align 8, !tbaa !103
  %6 = tail call ptr @htab_find_slot_with_hash(ptr noundef %5, ptr noundef %3, i32 noundef %4, i32 noundef 0) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6129, ptr noundef nonnull @.str.1) #22
  br label %9

9:                                                ; preds = %2, %8
  %10 = load ptr, ptr %6, align 8, !tbaa !103
  tail call void @set_user_assembler_name(ptr noundef %10, ptr noundef %1) #22
  %11 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !114
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  tail call void @make_decl_rtl(ptr noundef %10) #22
  %15 = load ptr, ptr %11, align 8, !tbaa !114
  br label %16

16:                                               ; preds = %9, %14
  %17 = phi ptr [ %15, %14 ], [ %12, %9 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !114
  ret ptr %19
}

declare void @set_user_assembler_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @set_optab_libfunc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !318 {
  %4 = alloca %struct.libfunc_entry, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %5, ptrtoint (ptr @optab_table to i64)
  %7 = sdiv exact i64 %6, 384
  store i64 %7, ptr %4, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.libfunc_entry, ptr %4, i64 0, i32 1
  store i32 %1, ptr %8, align 8, !tbaa !124
  %9 = getelementptr inbounds %struct.libfunc_entry, ptr %4, i64 0, i32 2
  store i32 0, ptr %9, align 4, !tbaa !125
  %10 = icmp eq ptr %2, null
  br i1 %10, label %13, label %11, !prof !319

11:                                               ; preds = %3
  %12 = tail call ptr @init_one_libfunc(ptr noundef nonnull %2)
  br label %13

13:                                               ; preds = %3, %11
  %14 = phi ptr [ %12, %11 ], [ null, %3 ]
  %15 = load ptr, ptr @libfunc_hash, align 8, !tbaa !103
  %16 = call ptr @htab_find_slot(ptr noundef %15, ptr noundef nonnull %4, i32 noundef 1) #22
  %17 = load ptr, ptr %16, align 8, !tbaa !103
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21, !prof !320

19:                                               ; preds = %13
  %20 = call ptr @ggc_alloc_stat(i64 noundef 24) #22
  store ptr %20, ptr %16, align 8, !tbaa !103
  br label %21

21:                                               ; preds = %19, %13
  %22 = load ptr, ptr %16, align 8, !tbaa !103
  store i64 %7, ptr %22, align 8, !tbaa !122
  %23 = getelementptr inbounds %struct.libfunc_entry, ptr %22, i64 0, i32 1
  store i32 %1, ptr %23, align 8, !tbaa !124
  %24 = getelementptr inbounds %struct.libfunc_entry, ptr %22, i64 0, i32 2
  store i32 0, ptr %24, align 4, !tbaa !125
  %25 = getelementptr inbounds %struct.libfunc_entry, ptr %22, i64 0, i32 3
  store ptr %14, ptr %25, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret void
}

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @set_conv_libfunc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !102 {
  %5 = alloca %struct.libfunc_entry, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %6, ptrtoint (ptr @convert_optab_table to i64)
  %8 = sdiv exact i64 %7, 30304
  store i64 %8, ptr %5, align 8, !tbaa !122
  %9 = getelementptr inbounds %struct.libfunc_entry, ptr %5, i64 0, i32 1
  store i32 %1, ptr %9, align 8, !tbaa !124
  %10 = getelementptr inbounds %struct.libfunc_entry, ptr %5, i64 0, i32 2
  store i32 %2, ptr %10, align 4, !tbaa !125
  %11 = icmp eq ptr %3, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = tail call ptr @init_one_libfunc(ptr noundef nonnull %3)
  br label %14

14:                                               ; preds = %4, %12
  %15 = phi ptr [ %13, %12 ], [ null, %4 ]
  %16 = load ptr, ptr @libfunc_hash, align 8, !tbaa !103
  %17 = call ptr @htab_find_slot(ptr noundef %16, ptr noundef nonnull %5, i32 noundef 1) #22
  %18 = load ptr, ptr %17, align 8, !tbaa !103
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call ptr @ggc_alloc_stat(i64 noundef 24) #22
  store ptr %21, ptr %17, align 8, !tbaa !103
  br label %22

22:                                               ; preds = %20, %14
  %23 = load ptr, ptr %17, align 8, !tbaa !103
  store i64 %8, ptr %23, align 8, !tbaa !122
  %24 = getelementptr inbounds %struct.libfunc_entry, ptr %23, i64 0, i32 1
  store i32 %1, ptr %24, align 8, !tbaa !124
  %25 = getelementptr inbounds %struct.libfunc_entry, ptr %23, i64 0, i32 2
  store i32 %2, ptr %25, align 4, !tbaa !125
  %26 = getelementptr inbounds %struct.libfunc_entry, ptr %23, i64 0, i32 3
  store ptr %15, ptr %26, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_optabs() local_unnamed_addr #10 !prof !321 {
  %1 = tail call ptr @htab_create_alloc(i64 noundef 10, ptr noundef nonnull @hash_libfunc, ptr noundef nonnull @eq_libfunc, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #22
  store ptr %1, ptr @libfunc_hash, align 8, !tbaa !103
  br label %2

2:                                                ; preds = %0, %2
  %3 = phi i64 [ 0, %0 ], [ %5, %2 ]
  %4 = getelementptr inbounds [87 x i32], ptr @movcc_gen_code, i64 0, i64 %3
  store i32 2956, ptr %4, align 4, !tbaa !118
  %5 = add nuw nsw i64 %3, 1
  %6 = icmp eq i64 %5, 87
  br i1 %6, label %7, label %2, !prof !322, !llvm.loop !323

7:                                                ; preds = %2, %7
  %8 = phi i64 [ %11, %7 ], [ 0, %2 ]
  %9 = getelementptr inbounds [87 x i32], ptr @vcond_gen_code, i64 0, i64 %8
  store i32 2956, ptr %9, align 4, !tbaa !118
  %10 = getelementptr inbounds [87 x i32], ptr @vcondu_gen_code, i64 0, i64 %8
  store i32 2956, ptr %10, align 4, !tbaa !118
  %11 = add nuw nsw i64 %8, 1
  %12 = icmp eq i64 %11, 87
  br i1 %12, label %13, label %7, !prof !322, !llvm.loop !324

13:                                               ; preds = %7, %20
  %14 = phi i64 [ %21, %20 ], [ 0, %7 ]
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %18, %15 ]
  %17 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 %14, i32 4, i64 %16
  store i32 2956, ptr %17, align 4, !tbaa !144
  %18 = add nuw nsw i64 %16, 1
  %19 = icmp eq i64 %18, 87
  br i1 %19, label %20, label %15, !prof !325, !llvm.loop !326

20:                                               ; preds = %15
  %21 = add nuw nsw i64 %14, 1
  %22 = icmp eq i64 %21, 159
  br i1 %22, label %23, label %13, !prof !327, !llvm.loop !328

23:                                               ; preds = %20, %35
  %24 = phi i64 [ %36, %35 ], [ 0, %20 ]
  br label %25

25:                                               ; preds = %23, %32
  %26 = phi i64 [ 0, %23 ], [ %33, %32 ]
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i64 [ 0, %25 ], [ %30, %27 ]
  %29 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 %24, i32 3, i64 %26, i64 %28
  store i32 2956, ptr %29, align 4, !tbaa !144
  %30 = add nuw nsw i64 %28, 1
  %31 = icmp eq i64 %30, 87
  br i1 %31, label %32, label %27, !prof !329, !llvm.loop !330

32:                                               ; preds = %27
  %33 = add nuw nsw i64 %26, 1
  %34 = icmp eq i64 %33, 87
  br i1 %34, label %35, label %25, !prof !331, !llvm.loop !332

35:                                               ; preds = %32
  %36 = add nuw nsw i64 %24, 1
  %37 = icmp eq i64 %36, 17
  br i1 %37, label %38, label %23, !prof !333, !llvm.loop !334

38:                                               ; preds = %35
  store i32 49, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 49), align 8, !tbaa !103
  store i32 49, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13), align 16, !tbaa !153
  store i32 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 50), align 16, !tbaa !103
  store i32 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15), align 16, !tbaa !153
  store i32 127, ptr @optab_table, align 16, !tbaa !153
  store ptr @optab_table, ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 127), align 8, !tbaa !103
  store i32 128, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 1), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 1), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 128), align 16, !tbaa !103
  store i32 129, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 2), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 2), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 129), align 8, !tbaa !103
  store i32 135, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 3), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 3), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 135), align 8, !tbaa !103
  store i32 52, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 52), align 16, !tbaa !103
  store i32 53, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 4), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 4), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 53), align 8, !tbaa !103
  store i32 54, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 5), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 5), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 54), align 16, !tbaa !103
  store i32 52, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17), align 16, !tbaa !153
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 18), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 18), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 19), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 19), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 22), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 22), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 23), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 23), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 24), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 24), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 25), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 25), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 26), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 26), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 27), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 27), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 28), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 28), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 29), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 29), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 30), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 30), ptr @code_to_optab, align 16, !tbaa !103
  store i32 55, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 55), align 8, !tbaa !103
  store i32 56, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 6), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 6), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 56), align 16, !tbaa !103
  store i32 57, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 7), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 7), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 57), align 8, !tbaa !103
  store i32 55, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 32), align 16, !tbaa !153
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33), ptr @code_to_optab, align 16, !tbaa !103
  store i32 59, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 59), align 8, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35), ptr @code_to_optab, align 16, !tbaa !103
  store i32 58, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 58), align 16, !tbaa !103
  store i32 60, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 37), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 37), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 60), align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 38), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 38), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 39), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 39), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 40), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 40), ptr @code_to_optab, align 16, !tbaa !103
  store i32 61, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 61), align 8, !tbaa !103
  store i32 62, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 62), align 16, !tbaa !103
  store i32 63, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 63), align 8, !tbaa !103
  store i32 65, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 65), align 8, !tbaa !103
  store i32 133, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 10), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 10), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 133), align 8, !tbaa !103
  store i32 134, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 11), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 11), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 134), align 16, !tbaa !103
  store i32 67, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 67), align 8, !tbaa !103
  store i32 68, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 68), align 16, !tbaa !103
  store i32 66, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 66), align 16, !tbaa !103
  store i32 69, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 69), align 8, !tbaa !103
  store i32 70, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 70), align 16, !tbaa !103
  store i32 71, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 71), align 8, !tbaa !103
  store i32 72, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 72), align 16, !tbaa !103
  store i32 73, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 73), align 8, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 58), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 58), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 59), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 59), ptr @code_to_optab, align 16, !tbaa !103
  store i32 23, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 23), align 8, !tbaa !103
  store i32 40, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 61), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 61), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 40), align 16, !tbaa !103
  store i32 48, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 48), align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 116), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 116), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 118), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 118), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 105), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 105), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 106), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 106), ptr @code_to_optab, align 16, !tbaa !103
  store i32 81, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 107), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 107), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 81), align 8, !tbaa !103
  store i32 80, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 108), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 108), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 80), align 16, !tbaa !103
  store i32 83, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 109), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 109), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 83), align 8, !tbaa !103
  store i32 82, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 110), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 110), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 82), align 16, !tbaa !103
  store i32 85, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 111), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 111), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 85), align 8, !tbaa !103
  store i32 84, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 112), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 112), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 84), align 16, !tbaa !103
  store i32 90, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 113), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 113), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 90), align 16, !tbaa !103
  store i32 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 51), align 8, !tbaa !103
  store i32 130, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 8), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 8), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 130), align 16, !tbaa !103
  store i32 131, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 9), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 9), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 131), align 8, !tbaa !103
  store i32 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65), align 16, !tbaa !153
  store i32 111, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 111), align 8, !tbaa !103
  store i32 111, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67), align 16, !tbaa !153
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 120), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 120), ptr @code_to_optab, align 16, !tbaa !103
  store i32 64, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 64), align 16, !tbaa !103
  store i32 113, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 113), align 8, !tbaa !103
  store i32 114, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 114), align 16, !tbaa !103
  store i32 115, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 115), align 8, !tbaa !103
  store i32 116, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 116), align 16, !tbaa !103
  store i32 117, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 117), align 8, !tbaa !103
  store i32 118, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 118), align 16, !tbaa !103
  store i32 112, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75), ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 112), align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 94), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 94), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 95), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 95), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 97), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 97), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 96), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 96), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 98), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 98), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 99), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 99), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 76), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 76), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 77), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 77), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 78), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 78), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 79), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 79), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 80), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 80), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 81), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 81), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 82), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 82), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 83), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 83), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 84), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 84), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 85), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 85), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 86), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 86), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 87), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 87), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 88), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 88), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 89), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 89), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 90), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 90), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 91), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 91), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 92), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 92), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 93), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 93), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 100), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 100), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 101), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 101), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 102), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 102), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 103), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 103), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 104), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 104), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 114), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 114), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 121), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 121), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 122), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 122), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 123), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 123), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 124), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 124), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 125), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 125), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 126), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 126), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 127), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 127), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 128), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 128), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 129), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 129), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 130), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 130), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 135), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 135), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 136), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 136), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 138), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 138), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 139), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 139), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 140), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 140), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 141), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 141), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 142), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 142), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 143), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 143), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 144), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 144), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 145), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 145), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 146), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 146), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 147), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 147), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 148), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 148), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 149), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 149), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 150), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 150), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 151), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 151), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 152), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 152), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 153), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 153), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 154), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 154), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 155), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 155), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 157), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 157), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 156), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 156), ptr @code_to_optab, align 16, !tbaa !103
  store i32 0, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 158), align 16, !tbaa !153
  store ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 158), ptr @code_to_optab, align 16, !tbaa !103
  store i32 98, ptr @convert_optab_table, align 16, !tbaa !307
  store i32 99, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1), align 16, !tbaa !307
  store i32 100, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2), align 16, !tbaa !307
  store i32 104, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 3), align 16, !tbaa !307
  store i32 106, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 4), align 16, !tbaa !307
  store i32 0, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5), align 16, !tbaa !307
  store i32 0, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 6), align 16, !tbaa !307
  store i32 103, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7), align 16, !tbaa !307
  store i32 105, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 8), align 16, !tbaa !307
  store i32 0, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 9), align 16, !tbaa !307
  store i32 0, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 10), align 16, !tbaa !307
  store i32 0, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11), align 16, !tbaa !307
  store i32 0, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12), align 16, !tbaa !307
  store i32 107, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 13), align 16, !tbaa !307
  store i32 108, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 14), align 16, !tbaa !307
  store i32 109, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 15), align 16, !tbaa !307
  store i32 110, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 16), align 16, !tbaa !307
  br label %39

39:                                               ; preds = %38, %39
  %40 = phi i64 [ 0, %38 ], [ %69, %39 ]
  %41 = getelementptr inbounds [87 x i32], ptr @movmem_optab, i64 0, i64 %40
  store i32 2956, ptr %41, align 4, !tbaa !118
  %42 = getelementptr inbounds [87 x i32], ptr @cmpstr_optab, i64 0, i64 %40
  store i32 2956, ptr %42, align 4, !tbaa !118
  %43 = getelementptr inbounds [87 x i32], ptr @cmpstrn_optab, i64 0, i64 %40
  store i32 2956, ptr %43, align 4, !tbaa !118
  %44 = getelementptr inbounds [87 x i32], ptr @cmpmem_optab, i64 0, i64 %40
  store i32 2956, ptr %44, align 4, !tbaa !118
  %45 = getelementptr inbounds [87 x i32], ptr @setmem_optab, i64 0, i64 %40
  store i32 2956, ptr %45, align 4, !tbaa !118
  %46 = getelementptr inbounds [87 x i32], ptr @sync_add_optab, i64 0, i64 %40
  store i32 2956, ptr %46, align 4, !tbaa !118
  %47 = getelementptr inbounds [87 x i32], ptr @sync_sub_optab, i64 0, i64 %40
  store i32 2956, ptr %47, align 4, !tbaa !118
  %48 = getelementptr inbounds [87 x i32], ptr @sync_ior_optab, i64 0, i64 %40
  store i32 2956, ptr %48, align 4, !tbaa !118
  %49 = getelementptr inbounds [87 x i32], ptr @sync_and_optab, i64 0, i64 %40
  store i32 2956, ptr %49, align 4, !tbaa !118
  %50 = getelementptr inbounds [87 x i32], ptr @sync_xor_optab, i64 0, i64 %40
  store i32 2956, ptr %50, align 4, !tbaa !118
  %51 = getelementptr inbounds [87 x i32], ptr @sync_nand_optab, i64 0, i64 %40
  store i32 2956, ptr %51, align 4, !tbaa !118
  %52 = getelementptr inbounds [87 x i32], ptr @sync_old_add_optab, i64 0, i64 %40
  store i32 2956, ptr %52, align 4, !tbaa !118
  %53 = getelementptr inbounds [87 x i32], ptr @sync_old_sub_optab, i64 0, i64 %40
  store i32 2956, ptr %53, align 4, !tbaa !118
  %54 = getelementptr inbounds [87 x i32], ptr @sync_old_ior_optab, i64 0, i64 %40
  store i32 2956, ptr %54, align 4, !tbaa !118
  %55 = getelementptr inbounds [87 x i32], ptr @sync_old_and_optab, i64 0, i64 %40
  store i32 2956, ptr %55, align 4, !tbaa !118
  %56 = getelementptr inbounds [87 x i32], ptr @sync_old_xor_optab, i64 0, i64 %40
  store i32 2956, ptr %56, align 4, !tbaa !118
  %57 = getelementptr inbounds [87 x i32], ptr @sync_old_nand_optab, i64 0, i64 %40
  store i32 2956, ptr %57, align 4, !tbaa !118
  %58 = getelementptr inbounds [87 x i32], ptr @sync_new_add_optab, i64 0, i64 %40
  store i32 2956, ptr %58, align 4, !tbaa !118
  %59 = getelementptr inbounds [87 x i32], ptr @sync_new_sub_optab, i64 0, i64 %40
  store i32 2956, ptr %59, align 4, !tbaa !118
  %60 = getelementptr inbounds [87 x i32], ptr @sync_new_ior_optab, i64 0, i64 %40
  store i32 2956, ptr %60, align 4, !tbaa !118
  %61 = getelementptr inbounds [87 x i32], ptr @sync_new_and_optab, i64 0, i64 %40
  store i32 2956, ptr %61, align 4, !tbaa !118
  %62 = getelementptr inbounds [87 x i32], ptr @sync_new_xor_optab, i64 0, i64 %40
  store i32 2956, ptr %62, align 4, !tbaa !118
  %63 = getelementptr inbounds [87 x i32], ptr @sync_new_nand_optab, i64 0, i64 %40
  store i32 2956, ptr %63, align 4, !tbaa !118
  %64 = getelementptr inbounds [87 x i32], ptr @sync_compare_and_swap, i64 0, i64 %40
  store i32 2956, ptr %64, align 4, !tbaa !118
  %65 = getelementptr inbounds [87 x i32], ptr @sync_lock_test_and_set, i64 0, i64 %40
  store i32 2956, ptr %65, align 4, !tbaa !118
  %66 = getelementptr inbounds [87 x i32], ptr @sync_lock_release, i64 0, i64 %40
  store i32 2956, ptr %66, align 4, !tbaa !118
  %67 = getelementptr inbounds [87 x i32], ptr @reload_out_optab, i64 0, i64 %40
  store i32 2956, ptr %67, align 4, !tbaa !118
  %68 = getelementptr inbounds [87 x i32], ptr @reload_in_optab, i64 0, i64 %40
  store i32 2956, ptr %68, align 4, !tbaa !118
  %69 = add nuw nsw i64 %40, 1
  %70 = icmp eq i64 %69, 87
  br i1 %70, label %71, label %39, !prof !322, !llvm.loop !335

71:                                               ; preds = %39
  tail call void @init_all_optabs() #22
  store ptr @.str.2, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 2), align 16, !tbaa !133
  store ptr @gen_int_fp_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 3), align 8, !tbaa !130
  store ptr @.str.2, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 2), align 16, !tbaa !133
  store ptr @gen_intv_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 3), align 8, !tbaa !130
  store ptr @.str.3, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 0, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 0, i32 2), align 16, !tbaa !133
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 0, i32 3), align 8, !tbaa !130
  store ptr @.str.4, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 1, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 1, i32 2), align 16, !tbaa !133
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 1, i32 3), align 8, !tbaa !130
  store ptr @.str.5, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 2), align 16, !tbaa !133
  store ptr @gen_int_fp_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 3), align 8, !tbaa !130
  store ptr @.str.5, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 2), align 16, !tbaa !133
  store ptr @gen_intv_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 3), align 8, !tbaa !130
  store ptr @.str.6, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 2, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 2, i32 2), align 16, !tbaa !133
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 2, i32 3), align 8, !tbaa !130
  store ptr @.str.7, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 3, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 3, i32 2), align 16, !tbaa !133
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 3, i32 3), align 8, !tbaa !130
  store ptr @.str.8, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 2), align 16, !tbaa !133
  store ptr @gen_int_fp_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 3), align 8, !tbaa !130
  store ptr @.str.8, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 2), align 16, !tbaa !133
  store ptr @gen_intv_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 3), align 8, !tbaa !130
  store ptr @.str.9, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 4, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 4, i32 2), align 16, !tbaa !133
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 4, i32 3), align 8, !tbaa !130
  store ptr @.str.10, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 5, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 5, i32 2), align 16, !tbaa !133
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 5, i32 3), align 8, !tbaa !130
  store ptr @.str.11, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 2), align 16, !tbaa !133
  store ptr @gen_int_fp_signed_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 3), align 8, !tbaa !130
  store ptr @.str.12, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 32, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 32, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 32, i32 3), align 8, !tbaa !130
  store ptr @.str.13, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 6, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 6, i32 2), align 16, !tbaa !133
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 6, i32 3), align 8, !tbaa !130
  store ptr @.str.14, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34, i32 2), align 16, !tbaa !133
  store ptr @gen_int_unsigned_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34, i32 3), align 8, !tbaa !130
  store ptr @.str.15, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 7, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 7, i32 2), align 16, !tbaa !133
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 7, i32 3), align 8, !tbaa !130
  store ptr @.str.16, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 1), align 8, !tbaa !132
  store i8 52, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 3), align 8, !tbaa !130
  store ptr @.str.17, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35, i32 1), align 8, !tbaa !132
  store i8 52, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35, i32 3), align 8, !tbaa !130
  store ptr @.str.18, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36, i32 3), align 8, !tbaa !130
  store ptr @.str.19, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 37, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 37, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 37, i32 3), align 8, !tbaa !130
  store ptr @.str.20, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 40, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 40, i32 2), align 16, !tbaa !133
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 40, i32 3), align 8, !tbaa !130
  store ptr @.str.21, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 3), align 8, !tbaa !130
  store ptr @.str.22, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 3), align 8, !tbaa !130
  store ptr @.str.23, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 3), align 8, !tbaa !130
  store ptr @.str.24, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 2), align 16, !tbaa !133
  store ptr @gen_int_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 3), align 8, !tbaa !130
  store ptr @.str.25, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 10, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 10, i32 2), align 16, !tbaa !133
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 10, i32 3), align 8, !tbaa !130
  store ptr @.str.26, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 11, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 11, i32 2), align 16, !tbaa !133
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 11, i32 3), align 8, !tbaa !130
  store ptr @.str.27, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 2), align 16, !tbaa !133
  store ptr @gen_int_signed_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 3), align 8, !tbaa !130
  store ptr @.str.28, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 2), align 16, !tbaa !133
  store ptr @gen_int_unsigned_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 3), align 8, !tbaa !130
  store ptr @.str.29, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 2), align 16, !tbaa !133
  store ptr @gen_int_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 3), align 8, !tbaa !130
  store ptr @.str.30, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 2), align 16, !tbaa !133
  store ptr @gen_int_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 3), align 8, !tbaa !130
  store ptr @.str.31, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56, i32 3), align 8, !tbaa !130
  store ptr @.str.32, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57, i32 1), align 8, !tbaa !132
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57, i32 3), align 8, !tbaa !130
  store ptr @.str.33, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 2), align 16, !tbaa !133
  store ptr @gen_int_fp_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 3), align 8, !tbaa !130
  store ptr @.str.34, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 8, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 8, i32 2), align 16, !tbaa !133
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 8, i32 3), align 8, !tbaa !130
  store ptr @.str.35, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 9, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 9, i32 2), align 16, !tbaa !133
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 9, i32 3), align 8, !tbaa !130
  store ptr @.str.33, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 2), align 16, !tbaa !133
  store ptr @gen_intv_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 3), align 8, !tbaa !130
  store ptr @.str.36, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 3), align 8, !tbaa !130
  store ptr @.str.37, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70, i32 3), align 8, !tbaa !130
  store ptr @.str.38, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 3), align 8, !tbaa !130
  store ptr @.str.39, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72, i32 3), align 8, !tbaa !130
  store ptr @.str.40, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73, i32 3), align 8, !tbaa !130
  store ptr @.str.41, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74, i32 3), align 8, !tbaa !130
  store ptr @.str.42, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 105, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 105, i32 2), align 16, !tbaa !133
  store ptr @gen_int_fp_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 105, i32 3), align 8, !tbaa !130
  store ptr @.str.43, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 106, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 106, i32 2), align 16, !tbaa !133
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 106, i32 3), align 8, !tbaa !130
  store ptr @.str.44, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 107, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 107, i32 2), align 16, !tbaa !133
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 107, i32 3), align 8, !tbaa !130
  store ptr @.str.45, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 108, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 108, i32 2), align 16, !tbaa !133
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 108, i32 3), align 8, !tbaa !130
  store ptr @.str.46, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 109, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 109, i32 2), align 16, !tbaa !133
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 109, i32 3), align 8, !tbaa !130
  store ptr @.str.47, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 110, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 110, i32 2), align 16, !tbaa !133
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 110, i32 3), align 8, !tbaa !130
  store ptr @.str.48, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 111, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 111, i32 2), align 16, !tbaa !133
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 111, i32 3), align 8, !tbaa !130
  store ptr @.str.49, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 112, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 112, i32 2), align 16, !tbaa !133
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 112, i32 3), align 8, !tbaa !130
  store ptr @.str.50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 113, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 113, i32 2), align 16, !tbaa !133
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 113, i32 3), align 8, !tbaa !130
  store ptr @.str.51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 158, i32 1), align 8, !tbaa !132
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 158, i32 2), align 16, !tbaa !133
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 158, i32 3), align 8, !tbaa !130
  store ptr @.str.52, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 1), align 8, !tbaa !128
  store ptr @gen_int_to_fp_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 2), align 16, !tbaa !126
  store ptr @gen_ufloat_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 8, i32 2), align 16, !tbaa !126
  store ptr @.str.53, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 3, i32 1), align 8, !tbaa !128
  store ptr @gen_fp_to_int_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 3, i32 2), align 16, !tbaa !126
  store ptr @.str.54, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 4, i32 1), align 8, !tbaa !128
  store ptr @gen_fp_to_int_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 4, i32 2), align 16, !tbaa !126
  store ptr @.str.55, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 9, i32 1), align 8, !tbaa !128
  store ptr @gen_int_to_fp_nondecimal_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 9, i32 2), align 16, !tbaa !126
  store ptr @.str.56, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 10, i32 1), align 8, !tbaa !128
  store ptr @gen_int_to_fp_nondecimal_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 10, i32 2), align 16, !tbaa !126
  store ptr @.str.57, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11, i32 1), align 8, !tbaa !128
  store ptr @gen_int_to_fp_nondecimal_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11, i32 2), align 16, !tbaa !126
  store ptr @.str.58, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12, i32 1), align 8, !tbaa !128
  store ptr @gen_int_to_fp_nondecimal_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12, i32 2), align 16, !tbaa !126
  store ptr @.str.59, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 1), align 8, !tbaa !128
  store ptr @gen_extend_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 2), align 16, !tbaa !126
  store ptr @.str.60, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 1), align 8, !tbaa !128
  store ptr @gen_trunc_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 2), align 16, !tbaa !126
  store ptr @.str.61, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 13, i32 1), align 8, !tbaa !128
  store ptr @gen_fract_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 13, i32 2), align 16, !tbaa !126
  store ptr @.str.62, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 15, i32 1), align 8, !tbaa !128
  store ptr @gen_satfract_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 15, i32 2), align 16, !tbaa !126
  store ptr @.str.63, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 14, i32 1), align 8, !tbaa !128
  store ptr @gen_fractuns_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 14, i32 2), align 16, !tbaa !126
  store ptr @.str.64, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 16, i32 1), align 8, !tbaa !128
  store ptr @gen_satfractuns_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 16, i32 2), align 16, !tbaa !126
  tail call void @set_optab_libfunc(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68), i32 noundef 16, ptr noundef nonnull @.str.65)
  tail call void @set_optab_libfunc(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68), i32 noundef 17, ptr noundef nonnull @.str.66)
  %72 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 29), align 8, !tbaa !103
  %73 = icmp eq ptr %72, null
  br i1 %73, label %87, label %74, !prof !336

74:                                               ; preds = %71
  %75 = load i64, ptr %72, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 14
  br i1 %77, label %78, label %80, !prof !336

78:                                               ; preds = %74
  %79 = tail call i32 @vector_type_mode(ptr noundef nonnull %72) #22
  br label %85

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = lshr i32 %82, 16
  %84 = and i32 %83, 255
  br label %85

85:                                               ; preds = %80, %78
  %86 = phi i32 [ %79, %78 ], [ %84, %80 ]
  tail call void @set_optab_libfunc(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66), i32 noundef %86, ptr noundef nonnull @.str.67)
  br label %87

87:                                               ; preds = %85, %71
  %88 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.68)
  store ptr %88, ptr @libfunc_table, align 16, !tbaa !103
  %89 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.69)
  store ptr %89, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 1), align 8, !tbaa !103
  %90 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.70)
  store ptr %90, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 2), align 16, !tbaa !103
  %91 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.71)
  store ptr %91, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 3), align 8, !tbaa !103
  %92 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.72)
  store ptr %92, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 4), align 16, !tbaa !103
  %93 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.73)
  store ptr %93, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 5), align 8, !tbaa !103
  %94 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.74)
  store ptr %94, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 6), align 16, !tbaa !103
  %95 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.75)
  store ptr %95, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 7), align 8, !tbaa !103
  %96 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.76)
  store ptr %96, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 8), align 16, !tbaa !103
  %97 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.77)
  store ptr %97, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 9), align 8, !tbaa !103
  %98 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.78)
  store ptr %98, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 10), align 16, !tbaa !103
  %99 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.79)
  store ptr %99, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 11), align 8, !tbaa !103
  %100 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.80)
  store ptr %100, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 13), align 8, !tbaa !103
  %101 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 30), align 8, !tbaa !337
  tail call void %101() #22, !prof !338
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @hash_libfunc(ptr nocapture noundef readonly %0) #17 !prof !318 !PGOFuncName !339 {
  %2 = getelementptr inbounds %struct.libfunc_entry, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !124
  %4 = getelementptr inbounds %struct.libfunc_entry, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !125
  %6 = mul nsw i32 %5, 87
  %7 = add nsw i32 %6, %3
  %8 = load i64, ptr %0, align 8, !tbaa !122
  %9 = trunc i64 %8 to i32
  %10 = xor i32 %7, %9
  ret i32 %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @eq_libfunc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 !prof !102 {
  %3 = load i64, ptr %0, align 8, !tbaa !122
  %4 = load i64, ptr %1, align 8, !tbaa !122
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.libfunc_entry, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !124
  %9 = getelementptr inbounds %struct.libfunc_entry, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !124
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.libfunc_entry, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !125
  %15 = getelementptr inbounds %struct.libfunc_entry, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !125
  %17 = icmp eq i32 %14, %16
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i32 [ 0, %6 ], [ 0, %2 ], [ %18, %12 ]
  ret i32 %20
}

declare void @init_all_optabs() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @gen_int_fp_fixed_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 8
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @gen_fp_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3)
  br label %11

11:                                               ; preds = %4, %10
  switch i8 %7, label %27 [
    i8 2, label %12
    i8 3, label %12
    i8 10, label %12
    i8 12, label %12
    i8 4, label %24
    i8 13, label %24
    i8 6, label %24
    i8 15, label %24
    i8 5, label %24
    i8 14, label %24
    i8 7, label %24
    i8 16, label %24
  ]

12:                                               ; preds = %11, %11, %11, %11
  %13 = icmp ne i8 %7, 2
  %14 = load i32, ptr @word_mode, align 4
  %15 = icmp ugt i32 %14, %3
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %19 = load i8, ptr %18, align 1, !tbaa !114
  %20 = icmp ugt i8 %19, 8
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %22, i32 noundef %3)
  br label %23

23:                                               ; preds = %21, %17, %12
  switch i8 %7, label %27 [
    i8 4, label %24
    i8 13, label %24
    i8 6, label %24
    i8 15, label %24
    i8 5, label %24
    i8 14, label %24
    i8 7, label %24
    i8 16, label %24
  ]

24:                                               ; preds = %23, %11, %23, %11, %23, %11, %23, %11, %23, %11, %23, %11, %23, %11, %11, %23
  switch i8 %7, label %27 [
    i8 4, label %25
    i8 13, label %25
    i8 6, label %25
    i8 15, label %25
    i8 5, label %25
    i8 14, label %25
    i8 7, label %25
    i8 16, label %25
  ]

25:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %24
  %26 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %26, i32 noundef %3)
  br label %27

27:                                               ; preds = %24, %11, %25, %23
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_intv_fp_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 8
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @gen_fp_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3)
  br label %11

11:                                               ; preds = %4, %10
  %12 = icmp eq i8 %7, 2
  br i1 %12, label %13, label %33

13:                                               ; preds = %11
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %15 = shl i64 %14, 32
  %16 = add i64 %15, 8589934592
  %17 = ashr exact i64 %16, 32
  %18 = alloca i8, i64 %17, align 16
  %19 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) %1)
  %20 = ashr exact i64 %15, 32
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  store i8 118, ptr %21, align 1, !tbaa !114
  %22 = add i64 %15, 4294967296
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds i8, ptr %18, i64 %23
  store i8 0, ptr %24, align 1, !tbaa !114
  %25 = load i32, ptr @word_mode, align 4
  %26 = icmp ugt i32 %25, %3
  br i1 %26, label %33, label %27

27:                                               ; preds = %13
  %28 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %29 = load i8, ptr %28, align 1, !tbaa !114
  %30 = icmp ugt i8 %29, 8
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = sext i8 %2 to i32
  call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %32, i32 noundef %3)
  br label %33

33:                                               ; preds = %31, %27, %13, %11
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_signed_fixed_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  switch i8 %7, label %10 [
    i8 4, label %8
    i8 13, label %8
    i8 6, label %8
    i8 15, label %8
  ]

8:                                                ; preds = %4, %4, %4, %4
  %9 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %9, i32 noundef %3)
  br label %10

10:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_unsigned_fixed_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  switch i8 %7, label %10 [
    i8 5, label %8
    i8 14, label %8
    i8 7, label %8
    i8 16, label %8
  ]

8:                                                ; preds = %4, %4, %4, %4
  %9 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %9, i32 noundef %3)
  br label %10

10:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_int_fp_signed_fixed_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 8
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @gen_fp_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3)
  br label %11

11:                                               ; preds = %4, %10
  switch i8 %7, label %26 [
    i8 2, label %12
    i8 3, label %12
    i8 10, label %12
    i8 12, label %12
    i8 4, label %24
    i8 13, label %24
    i8 6, label %24
    i8 15, label %24
  ]

12:                                               ; preds = %11, %11, %11, %11
  %13 = icmp ne i8 %7, 2
  %14 = load i32, ptr @word_mode, align 4
  %15 = icmp ugt i32 %14, %3
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %19 = load i8, ptr %18, align 1, !tbaa !114
  %20 = icmp ugt i8 %19, 8
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %22, i32 noundef %3)
  br label %23

23:                                               ; preds = %21, %17, %12
  switch i8 %7, label %26 [
    i8 4, label %24
    i8 13, label %24
    i8 6, label %24
    i8 15, label %24
  ]

24:                                               ; preds = %11, %23, %11, %23, %11, %23, %23, %11
  %25 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %25, i32 noundef %3)
  br label %26

26:                                               ; preds = %23, %11, %24
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_int_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  %8 = icmp ne i8 %7, 2
  %9 = load i32, ptr @word_mode, align 4
  %10 = icmp ugt i32 %9, %3
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %14 = load i8, ptr %13, align 1, !tbaa !114
  %15 = icmp ugt i8 %14, 8
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %17, i32 noundef %3)
  br label %18

18:                                               ; preds = %12, %4, %16
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_int_unsigned_fixed_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  switch i8 %7, label %22 [
    i8 2, label %8
    i8 3, label %8
    i8 10, label %8
    i8 12, label %8
    i8 5, label %20
    i8 14, label %20
    i8 7, label %20
    i8 16, label %20
  ]

8:                                                ; preds = %4, %4, %4, %4
  %9 = icmp ne i8 %7, 2
  %10 = load i32, ptr @word_mode, align 4
  %11 = icmp ugt i32 %10, %3
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %15 = load i8, ptr %14, align 1, !tbaa !114
  %16 = icmp ugt i8 %15, 8
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %18, i32 noundef %3)
  br label %19

19:                                               ; preds = %17, %13, %8
  switch i8 %7, label %22 [
    i8 5, label %20
    i8 14, label %20
    i8 7, label %20
    i8 16, label %20
  ]

20:                                               ; preds = %4, %19, %4, %19, %4, %19, %19, %4
  %21 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %21, i32 noundef %3)
  br label %22

22:                                               ; preds = %19, %4, %20
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_fp_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  switch i8 %7, label %17 [
    i8 8, label %8
    i8 9, label %10
  ]

8:                                                ; preds = %4
  %9 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %9, i32 noundef %3)
  br label %17

10:                                               ; preds = %4
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %12 = add i64 %11, 5
  %13 = alloca i8, i64 %12, align 16
  store i32 1600416098, ptr %13, align 16
  %14 = getelementptr inbounds i8, ptr %13, i64 4
  %15 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %1)
  %16 = sext i8 %2 to i32
  call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef nonnull %13, i32 noundef %16, i32 noundef %3)
  br label %17

17:                                               ; preds = %8, %4, %10
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_int_fixed_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  switch i8 %7, label %23 [
    i8 2, label %8
    i8 3, label %8
    i8 10, label %8
    i8 12, label %8
    i8 4, label %20
    i8 13, label %20
    i8 6, label %20
    i8 15, label %20
    i8 5, label %20
    i8 14, label %20
    i8 7, label %20
    i8 16, label %20
  ]

8:                                                ; preds = %4, %4, %4, %4
  %9 = icmp ne i8 %7, 2
  %10 = load i32, ptr @word_mode, align 4
  %11 = icmp ugt i32 %10, %3
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %15 = load i8, ptr %14, align 1, !tbaa !114
  %16 = icmp ugt i8 %15, 8
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %18, i32 noundef %3)
  br label %19

19:                                               ; preds = %17, %13, %8
  switch i8 %7, label %23 [
    i8 4, label %20
    i8 13, label %20
    i8 6, label %20
    i8 15, label %20
    i8 5, label %20
    i8 14, label %20
    i8 7, label %20
    i8 16, label %20
  ]

20:                                               ; preds = %19, %4, %19, %4, %19, %4, %19, %4, %19, %4, %19, %4, %19, %4, %4, %19
  switch i8 %7, label %23 [
    i8 4, label %21
    i8 13, label %21
    i8 6, label %21
    i8 15, label %21
    i8 5, label %21
    i8 14, label %21
    i8 7, label %21
    i8 16, label %21
  ]

21:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  %22 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %22, i32 noundef %3)
  br label %23

23:                                               ; preds = %20, %4, %21, %19
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_int_signed_fixed_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  switch i8 %7, label %22 [
    i8 2, label %8
    i8 3, label %8
    i8 10, label %8
    i8 12, label %8
    i8 4, label %20
    i8 13, label %20
    i8 6, label %20
    i8 15, label %20
  ]

8:                                                ; preds = %4, %4, %4, %4
  %9 = icmp ne i8 %7, 2
  %10 = load i32, ptr @word_mode, align 4
  %11 = icmp ugt i32 %10, %3
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %15 = load i8, ptr %14, align 1, !tbaa !114
  %16 = icmp ugt i8 %15, 8
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %18, i32 noundef %3)
  br label %19

19:                                               ; preds = %17, %13, %8
  switch i8 %7, label %22 [
    i8 4, label %20
    i8 13, label %20
    i8 6, label %20
    i8 15, label %20
  ]

20:                                               ; preds = %4, %19, %4, %19, %4, %19, %19, %4
  %21 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %21, i32 noundef %3)
  br label %22

22:                                               ; preds = %19, %4, %20
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_int_fp_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 8
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @gen_fp_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3)
  br label %11

11:                                               ; preds = %4, %10
  switch i8 %7, label %23 [
    i8 2, label %12
    i8 3, label %12
    i8 10, label %12
    i8 12, label %12
  ]

12:                                               ; preds = %11, %11, %11, %11
  %13 = icmp ne i8 %7, 2
  %14 = load i32, ptr @word_mode, align 4
  %15 = icmp ugt i32 %14, %3
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %19 = load i8, ptr %18, align 1, !tbaa !114
  %20 = icmp ugt i8 %19, 8
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %22, i32 noundef %3)
  br label %23

23:                                               ; preds = %11, %21, %17, %12
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_int_to_fp_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = zext i32 %2 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !114
  %13 = and i8 %12, -2
  %14 = icmp eq i8 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %16

16:                                               ; preds = %9, %4, %15
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_ufloat_conv_libfunc(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  %8 = icmp eq i8 %7, 9
  %9 = zext i32 %3 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !114
  %12 = icmp eq i8 %11, 2
  br i1 %8, label %13, label %14

13:                                               ; preds = %4
  br i1 %12, label %18, label %20

14:                                               ; preds = %4
  %15 = and i8 %7, -2
  %16 = icmp eq i8 %15, 8
  %17 = and i1 %16, %12
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %13
  %19 = phi ptr [ @.str.84, %13 ], [ @.str.85, %14 ]
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef nonnull %19, i32 noundef %2, i32 noundef %3)
  br label %20

20:                                               ; preds = %18, %14, %13
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_fp_to_int_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 8
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = zext i32 %2 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !114
  %14 = icmp eq i8 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %16

16:                                               ; preds = %4, %10, %15
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_int_to_fp_nondecimal_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = zext i32 %2 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !114
  %13 = icmp eq i8 %12, 8
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %15

15:                                               ; preds = %9, %4, %14
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_extend_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 8
  br i1 %9, label %10, label %40

10:                                               ; preds = %4
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !114
  %14 = and i8 %13, -2
  %15 = icmp ne i8 %14, 8
  %16 = icmp eq i32 %2, %3
  %17 = or i1 %16, %15
  br i1 %17, label %40, label %18

18:                                               ; preds = %10
  %19 = icmp eq i8 %7, 8
  %20 = icmp eq i8 %13, 9
  %21 = and i1 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = icmp eq i8 %13, 8
  %24 = icmp eq i8 %7, 9
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %11
  %29 = load i16, ptr %28, align 2, !tbaa !340
  %30 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %5
  %31 = load i16, ptr %30, align 2, !tbaa !340
  %32 = icmp ugt i16 %29, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = icmp eq i8 %13, 8
  %35 = and i1 %19, %34
  %36 = icmp eq i8 %7, 9
  %37 = and i1 %36, %20
  %38 = or i1 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  tail call fastcc void @gen_intraclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %40

40:                                               ; preds = %33, %10, %4, %27, %39
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_trunc_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #9 !prof !102 {
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !114
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 8
  br i1 %9, label %10, label %40

10:                                               ; preds = %4
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !114
  %14 = and i8 %13, -2
  %15 = icmp ne i8 %14, 8
  %16 = icmp eq i32 %2, %3
  %17 = or i1 %16, %15
  br i1 %17, label %40, label %18

18:                                               ; preds = %10
  %19 = icmp eq i8 %7, 8
  %20 = icmp eq i8 %13, 9
  %21 = and i1 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = icmp eq i8 %13, 8
  %24 = icmp eq i8 %7, 9
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %11
  %29 = load i16, ptr %28, align 2, !tbaa !340
  %30 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %5
  %31 = load i16, ptr %30, align 2, !tbaa !340
  %32 = icmp ugt i16 %29, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = icmp eq i8 %13, 8
  %35 = and i1 %19, %34
  %36 = icmp eq i8 %7, 9
  %37 = and i1 %36, %20
  %38 = or i1 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  tail call fastcc void @gen_intraclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %40

40:                                               ; preds = %33, %10, %4, %27, %39
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_fract_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #9 !prof !102 {
  %5 = icmp eq i32 %2, %3
  br i1 %5, label %21, label %6

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !114
  switch i8 %9, label %10 [
    i8 4, label %14
    i8 13, label %14
    i8 6, label %14
    i8 15, label %14
    i8 5, label %14
    i8 14, label %14
    i8 7, label %14
    i8 16, label %14
  ]

10:                                               ; preds = %6
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !114
  switch i8 %13, label %21 [
    i8 4, label %14
    i8 13, label %14
    i8 6, label %14
    i8 15, label %14
    i8 5, label %14
    i8 14, label %14
    i8 7, label %14
    i8 16, label %14
  ]

14:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %6, %6, %6, %6, %6, %6, %6, %10, %6
  %15 = zext i32 %3 to i64
  %16 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !114
  %18 = icmp eq i8 %9, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call fastcc void @gen_intraclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %21

20:                                               ; preds = %14
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %21

21:                                               ; preds = %10, %4, %20, %19
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_satfract_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #9 !prof !102 {
  %5 = icmp eq i32 %2, %3
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !114
  switch i8 %9, label %17 [
    i8 4, label %10
    i8 13, label %10
    i8 6, label %10
    i8 15, label %10
    i8 5, label %10
    i8 14, label %10
    i8 7, label %10
    i8 16, label %10
  ]

10:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !114
  %14 = icmp eq i8 %9, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call fastcc void @gen_intraclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %17

16:                                               ; preds = %10
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %17

17:                                               ; preds = %6, %4, %16, %15
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_fractuns_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #9 !prof !102 {
  %5 = icmp eq i32 %2, %3
  br i1 %5, label %22, label %6

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !114
  switch i8 %9, label %15 [
    i8 4, label %10
    i8 13, label %10
    i8 6, label %10
    i8 15, label %10
    i8 5, label %10
    i8 14, label %10
    i8 7, label %10
    i8 16, label %10
  ]

10:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !114
  %14 = icmp eq i8 %13, 2
  br i1 %14, label %21, label %15

15:                                               ; preds = %6, %10
  %16 = zext i32 %3 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !114
  switch i8 %18, label %22 [
    i8 4, label %19
    i8 13, label %19
    i8 6, label %19
    i8 15, label %19
    i8 5, label %19
    i8 14, label %19
    i8 7, label %19
    i8 16, label %19
  ]

19:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15
  %20 = icmp eq i8 %9, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %19, %10
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %22

22:                                               ; preds = %15, %19, %4, %21
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gen_satfractuns_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #9 !prof !102 {
  %5 = icmp eq i32 %2, %3
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !114
  switch i8 %9, label %16 [
    i8 4, label %10
    i8 13, label %10
    i8 6, label %10
    i8 15, label %10
    i8 5, label %10
    i8 14, label %10
    i8 7, label %10
    i8 16, label %10
  ]

10:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !114
  %14 = icmp eq i8 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %16

16:                                               ; preds = %6, %10, %4, %15
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_optab_libfuncs() local_unnamed_addr #9 !prof !102 {
  br label %1

1:                                                ; preds = %0, %28
  %2 = phi i64 [ 0, %0 ], [ %29, %28 ]
  %3 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 %2
  br label %4

4:                                                ; preds = %1, %25
  %5 = phi i64 [ 0, %1 ], [ %26, %25 ]
  %6 = trunc i64 %5 to i32
  %7 = tail call ptr @optab_libfunc(ptr noundef nonnull %3, i32 noundef %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 45
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6715, ptr noundef nonnull @.str.1) #22
  br label %14

14:                                               ; preds = %9, %13
  %15 = load ptr, ptr @stderr, align 8, !tbaa !103
  %16 = load i32, ptr %3, align 16, !tbaa !153
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !103
  %20 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %5
  %21 = load ptr, ptr %20, align 8, !tbaa !103
  %22 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !114
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.81, ptr noundef %19, ptr noundef %21, ptr noundef %23) #23
  br label %25

25:                                               ; preds = %14, %4
  %26 = add nuw nsw i64 %5, 1
  %27 = icmp eq i64 %26, 87
  br i1 %27, label %28, label %4, !llvm.loop !341

28:                                               ; preds = %25
  %29 = add nuw nsw i64 %2, 1
  %30 = icmp eq i64 %29, 159
  br i1 %30, label %31, label %1, !llvm.loop !342

31:                                               ; preds = %28, %66
  %32 = phi i64 [ %67, %66 ], [ 0, %28 ]
  %33 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 %32
  br label %34

34:                                               ; preds = %31, %63
  %35 = phi i64 [ 0, %31 ], [ %64, %63 ]
  %36 = trunc i64 %35 to i32
  br label %37

37:                                               ; preds = %34, %60
  %38 = phi i64 [ 0, %34 ], [ %61, %60 ]
  %39 = trunc i64 %38 to i32
  %40 = tail call ptr @convert_optab_libfunc(ptr noundef nonnull %33, i32 noundef %36, i32 noundef %39)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %60, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %40, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 45
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6736, ptr noundef nonnull @.str.1) #22
  br label %47

47:                                               ; preds = %42, %46
  %48 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %35
  %49 = load ptr, ptr @stderr, align 8, !tbaa !103
  %50 = load i32, ptr %33, align 16, !tbaa !307
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !103
  %54 = load ptr, ptr %48, align 8, !tbaa !103
  %55 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %38
  %56 = load ptr, ptr %55, align 8, !tbaa !103
  %57 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !114
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.82, ptr noundef %53, ptr noundef %54, ptr noundef %56, ptr noundef %58) #23
  br label %60

60:                                               ; preds = %47, %37
  %61 = add nuw nsw i64 %38, 1
  %62 = icmp eq i64 %61, 87
  br i1 %62, label %63, label %37, !llvm.loop !343

63:                                               ; preds = %60
  %64 = add nuw nsw i64 %35, 1
  %65 = icmp eq i64 %64, 87
  br i1 %65, label %66, label %34, !llvm.loop !344

66:                                               ; preds = %63
  %67 = add nuw nsw i64 %32, 1
  %68 = icmp eq i64 %67, 17
  br i1 %68, label %69, label %31, !llvm.loop !345

69:                                               ; preds = %66
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gen_cond_trap(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !102 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  %7 = load i32, ptr %1, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  store i32 %9, ptr %5, align 4, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %4
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 118, i32 4, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !144
  %15 = icmp eq i32 %14, 2956
  br i1 %15, label %45, label %16

16:                                               ; preds = %11
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %17, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !146
  %20 = getelementptr inbounds %struct.insn_operand_data, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8, !tbaa !150
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = tail call i32 %21(ptr noundef %3, i32 noundef 0) #22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %23, %16
  tail call void @do_pending_stack_adjust() #22
  tail call void @start_sequence() #22
  call fastcc void @prepare_cmp_insn(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %5)
  %27 = load ptr, ptr %6, align 8, !tbaa !103
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %17, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !152
  %32 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !114
  %34 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !114
  %36 = tail call ptr (ptr, ...) %31(ptr noundef nonnull %27, ptr noundef %33, ptr noundef %35, ptr noundef %3) #22
  br label %37

37:                                               ; preds = %26, %29
  %38 = phi ptr [ %36, %29 ], [ null, %26 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = tail call ptr @emit_insn(ptr noundef nonnull %38) #22
  %42 = tail call ptr @get_insns() #22
  br label %43

43:                                               ; preds = %37, %40
  %44 = phi ptr [ %42, %40 ], [ null, %37 ]
  tail call void @end_sequence() #22
  br label %45

45:                                               ; preds = %43, %23, %11, %4
  %46 = phi ptr [ null, %4 ], [ null, %11 ], [ null, %23 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  ret ptr %46
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @expand_vec_cond_expr_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #18 !prof !102 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 2097152
  %5 = icmp eq i64 %4, 0
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [87 x i32], ptr @vcondu_gen_code, i64 0, i64 %6
  %8 = getelementptr inbounds [87 x i32], ptr @vcond_gen_code, i64 0, i64 %6
  %9 = select i1 %5, ptr %8, ptr %7
  %10 = load i32, ptr %9, align 4, !tbaa !118
  %11 = icmp ne i32 %10, 2956
  %12 = zext i1 %11 to i8
  ret i8 %12
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_vec_cond_expr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #9 !prof !102 {
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #22
  br label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ %10, %9 ], [ %15, %11 ]
  %18 = load i64, ptr %0, align 8
  %19 = lshr i64 %18, 21
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = and i64 %18, 2097152
  %23 = icmp eq i64 %22, 0
  %24 = zext i32 %17 to i64
  %25 = getelementptr inbounds [87 x i32], ptr @vcondu_gen_code, i64 0, i64 %24
  %26 = getelementptr inbounds [87 x i32], ptr @vcond_gen_code, i64 0, i64 %24
  %27 = select i1 %23, ptr %26, ptr %25
  %28 = load i32, ptr %27, align 4, !tbaa !118
  %29 = icmp eq i32 %28, 2956
  br i1 %29, label %175, label %30

30:                                               ; preds = %16
  %31 = icmp eq ptr %4, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %30
  %33 = zext i32 %28 to i64
  %34 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %33, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !146
  %36 = load ptr, ptr %35, align 8, !tbaa !150
  %37 = tail call i32 %36(ptr noundef nonnull %4, i32 noundef %17) #22
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32, %30
  %40 = tail call ptr @gen_reg_rtx(i32 noundef %17) #22
  br label %41

41:                                               ; preds = %39, %32
  %42 = phi ptr [ %4, %32 ], [ %40, %39 ]
  %43 = load i64, ptr %1, align 8
  %44 = and i64 %43, 65535
  %45 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !118
  %47 = icmp eq i32 %46, 5
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6864, ptr noundef nonnull @.str.1) #22
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i64, ptr %1, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %73 [
    i16 101, label %74
    i16 102, label %52
    i16 97, label %53
    i16 98, label %56
    i16 99, label %59
    i16 100, label %62
    i16 103, label %65
    i16 104, label %66
    i16 105, label %67
    i16 106, label %68
    i16 107, label %69
    i16 108, label %70
    i16 109, label %71
    i16 110, label %72
  ]

52:                                               ; preds = %49
  br label %74

53:                                               ; preds = %49
  %54 = icmp eq i8 %21, 0
  %55 = select i1 %54, i32 85, i32 89
  br label %74

56:                                               ; preds = %49
  %57 = icmp eq i8 %21, 0
  %58 = select i1 %57, i32 84, i32 88
  br label %74

59:                                               ; preds = %49
  %60 = icmp eq i8 %21, 0
  %61 = select i1 %60, i32 83, i32 87
  br label %74

62:                                               ; preds = %49
  %63 = icmp eq i8 %21, 0
  %64 = select i1 %63, i32 82, i32 86
  br label %74

65:                                               ; preds = %49
  br label %74

66:                                               ; preds = %49
  br label %74

67:                                               ; preds = %49
  br label %74

68:                                               ; preds = %49
  br label %74

69:                                               ; preds = %49
  br label %74

70:                                               ; preds = %49
  br label %74

71:                                               ; preds = %49
  br label %74

72:                                               ; preds = %49
  br label %74

73:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6847, ptr noundef nonnull @.str.1) #22
  br label %74

74:                                               ; preds = %73, %72, %71, %70, %69, %68, %67, %66, %65, %62, %59, %56, %53, %52, %49
  %75 = phi i32 [ undef, %73 ], [ 97, %72 ], [ 92, %71 ], [ 93, %70 ], [ 94, %69 ], [ 95, %68 ], [ 96, %67 ], [ 91, %66 ], [ 90, %65 ], [ %64, %62 ], [ %61, %59 ], [ %58, %56 ], [ %55, %53 ], [ 80, %52 ], [ 81, %49 ]
  %76 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !114
  %78 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !114
  %80 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !114
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, 65535
  %84 = icmp eq i64 %83, 14
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #22
  br label %92

87:                                               ; preds = %74
  %88 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = lshr i32 %89, 16
  %91 = and i32 %90, 255
  br label %92

92:                                               ; preds = %87, %85
  %93 = phi i32 [ %86, %85 ], [ %91, %87 ]
  %94 = tail call ptr @expand_expr_real(ptr noundef %77, ptr noundef null, i32 noundef %93, i32 noundef 1, ptr noundef null) #22
  %95 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !114
  %97 = load i64, ptr %96, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 14
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = tail call i32 @vector_type_mode(ptr noundef nonnull %96) #22
  br label %107

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 6
  %104 = load i32, ptr %103, align 4
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 255
  br label %107

107:                                              ; preds = %102, %100
  %108 = phi i32 [ %101, %100 ], [ %106, %102 ]
  %109 = tail call ptr @expand_expr_real(ptr noundef %79, ptr noundef null, i32 noundef %108, i32 noundef 1, ptr noundef null) #22
  %110 = zext i32 %28 to i64
  %111 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %110, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !146
  %113 = getelementptr inbounds %struct.insn_operand_data, ptr %112, i64 4
  %114 = load ptr, ptr %113, align 8, !tbaa !150
  %115 = load i32, ptr %94, align 8
  %116 = lshr i32 %115, 16
  %117 = and i32 %116, 255
  %118 = tail call i32 %114(ptr noundef nonnull %94, i32 noundef %117) #22
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %107
  %121 = load i32, ptr %94, align 8
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %120
  %126 = tail call ptr @force_reg(i32 noundef %123, ptr noundef nonnull %94) #22
  br label %127

127:                                              ; preds = %125, %120, %107
  %128 = phi ptr [ %94, %107 ], [ %126, %125 ], [ %94, %120 ]
  %129 = getelementptr inbounds %struct.insn_operand_data, ptr %112, i64 5
  %130 = load ptr, ptr %129, align 8, !tbaa !150
  %131 = load i32, ptr %109, align 8
  %132 = lshr i32 %131, 16
  %133 = and i32 %132, 255
  %134 = tail call i32 %130(ptr noundef nonnull %109, i32 noundef %133) #22
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %127
  %137 = load i32, ptr %109, align 8
  %138 = lshr i32 %137, 16
  %139 = and i32 %138, 255
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %136
  %142 = tail call ptr @force_reg(i32 noundef %139, ptr noundef nonnull %109) #22
  br label %143

143:                                              ; preds = %127, %136, %141
  %144 = phi ptr [ %109, %127 ], [ %142, %141 ], [ %109, %136 ]
  %145 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %75, i32 noundef 0, ptr noundef %128, ptr noundef %144) #22
  %146 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !114
  %148 = getelementptr inbounds %struct.rtx_def, ptr %145, i64 0, i32 1, i32 0, i32 0, i64 1
  %149 = load ptr, ptr %148, align 8, !tbaa !114
  %150 = tail call ptr @expand_expr_real(ptr noundef %2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #22
  %151 = getelementptr inbounds %struct.insn_operand_data, ptr %112, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !150
  %153 = tail call i32 %152(ptr noundef %150, i32 noundef %17) #22
  %154 = icmp eq i32 %153, 0
  %155 = icmp ne i32 %17, 0
  %156 = and i1 %155, %154
  br i1 %156, label %157, label %159

157:                                              ; preds = %143
  %158 = tail call ptr @force_reg(i32 noundef %17, ptr noundef %150) #22
  br label %159

159:                                              ; preds = %157, %143
  %160 = phi ptr [ %158, %157 ], [ %150, %143 ]
  %161 = tail call ptr @expand_expr_real(ptr noundef %3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #22
  %162 = getelementptr inbounds %struct.insn_operand_data, ptr %112, i64 2
  %163 = load ptr, ptr %162, align 8, !tbaa !150
  %164 = tail call i32 %163(ptr noundef %161, i32 noundef %17) #22
  %165 = icmp eq i32 %164, 0
  %166 = and i1 %155, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %159
  %168 = tail call ptr @force_reg(i32 noundef %17, ptr noundef %161) #22
  br label %169

169:                                              ; preds = %167, %159
  %170 = phi ptr [ %168, %167 ], [ %161, %159 ]
  %171 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %110, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !152
  %173 = tail call ptr (ptr, ...) %172(ptr noundef %42, ptr noundef %160, ptr noundef %170, ptr noundef %145, ptr noundef %147, ptr noundef %149) #22
  %174 = tail call ptr @emit_insn(ptr noundef %173) #22
  br label %175

175:                                              ; preds = %16, %169
  %176 = phi ptr [ %42, %169 ], [ null, %16 ]
  ret ptr %176
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_val_compare_and_swap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !102 {
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [87 x i32], ptr @sync_compare_and_swap, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !118
  %11 = icmp eq i32 %10, 2956
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = tail call fastcc ptr @expand_val_compare_and_swap_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %10)
  br label %14

14:                                               ; preds = %4, %12
  %15 = phi ptr [ %13, %12 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @expand_val_compare_and_swap_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #9 !prof !102 {
  %6 = load i32, ptr %0, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = icmp eq ptr %3, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = zext i32 %4 to i64
  %12 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !146
  %14 = load ptr, ptr %13, align 8, !tbaa !150
  %15 = tail call i32 %14(ptr noundef nonnull %3, i32 noundef %8) #22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10, %5
  %18 = tail call ptr @gen_reg_rtx(i32 noundef %8) #22
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi ptr [ %3, %10 ], [ %18, %17 ]
  %21 = load i32, ptr %1, align 8
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  %24 = icmp eq i32 %23, 0
  %25 = icmp eq i32 %23, %8
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = tail call ptr @convert_modes(i32 noundef %8, i32 noundef %23, ptr noundef nonnull %1, i32 noundef 1) #22
  br label %29

29:                                               ; preds = %27, %19
  %30 = phi ptr [ %28, %27 ], [ %1, %19 ]
  %31 = zext i32 %4 to i64
  %32 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %31, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !146
  %34 = getelementptr inbounds %struct.insn_operand_data, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !150
  %36 = tail call i32 %35(ptr noundef %30, i32 noundef %8) #22
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = tail call ptr @force_reg(i32 noundef %8, ptr noundef %30) #22
  br label %40

40:                                               ; preds = %38, %29
  %41 = phi ptr [ %30, %29 ], [ %39, %38 ]
  %42 = load i32, ptr %2, align 8
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = icmp eq i32 %44, 0
  %46 = icmp eq i32 %44, %8
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = tail call ptr @convert_modes(i32 noundef %8, i32 noundef %44, ptr noundef nonnull %2, i32 noundef 1) #22
  br label %50

50:                                               ; preds = %48, %40
  %51 = phi ptr [ %49, %48 ], [ %2, %40 ]
  %52 = getelementptr inbounds %struct.insn_operand_data, ptr %33, i64 3
  %53 = load ptr, ptr %52, align 8, !tbaa !150
  %54 = tail call i32 %53(ptr noundef %51, i32 noundef %8) #22
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = tail call ptr @force_reg(i32 noundef %8, ptr noundef %51) #22
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi ptr [ %51, %50 ], [ %57, %56 ]
  %60 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %31, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !152
  %62 = tail call ptr (ptr, ...) %61(ptr noundef %20, ptr noundef nonnull %0, ptr noundef %41, ptr noundef %59) #22
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %58
  %65 = tail call ptr @emit_insn(ptr noundef nonnull %62) #22
  br label %66

66:                                               ; preds = %58, %64
  %67 = phi ptr [ %20, %64 ], [ null, %58 ]
  ret ptr %67
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_bool_compare_and_swap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !102 {
  %5 = alloca ptr, align 8
  %6 = load i32, ptr %0, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [87 x i32], ptr @sync_compare_and_swap, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !118
  %12 = icmp eq i32 %11, 2956
  br i1 %12, label %56, label %13

13:                                               ; preds = %4, %43
  %14 = phi ptr [ %44, %43 ], [ %1, %4 ]
  call void @start_sequence() #22
  %15 = call fastcc ptr @expand_val_compare_and_swap_1(ptr noundef nonnull %0, ptr noundef %14, ptr noundef %2, ptr noundef null, i32 noundef %11)
  store ptr null, ptr %5, align 8, !tbaa !103
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  call void @end_sequence() #22
  br label %56

18:                                               ; preds = %13
  %19 = load ptr, ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 48), align 16, !tbaa !103
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.optab_d, ptr %19, i64 0, i32 4, i64 2
  %23 = load i32, ptr %22, align 4, !tbaa !144
  %24 = icmp ne i32 %23, 2956
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %18, %21
  %27 = phi i32 [ 0, %18 ], [ %25, %21 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = call ptr @get_last_insn() #22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !114
  call void @note_stores(ptr noundef %32, ptr noundef nonnull @find_cc_set, ptr noundef nonnull %5) #22
  br label %33

33:                                               ; preds = %29, %26
  %34 = call ptr @get_insns() #22
  call void @end_sequence() #22
  %35 = load ptr, ptr %5, align 8, !tbaa !103
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, ptr %14, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 43
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call ptr @force_reg(i32 noundef %8, ptr noundef nonnull %14) #22
  br label %43

43:                                               ; preds = %33, %37, %41
  %44 = phi ptr [ %14, %33 ], [ %42, %41 ], [ %14, %37 ]
  %45 = phi ptr [ %34, %33 ], [ null, %41 ], [ %34, %37 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %13, label %47, !llvm.loop !346

47:                                               ; preds = %43
  %48 = call ptr @emit_insn(ptr noundef nonnull %45) #22
  %49 = load ptr, ptr %5, align 8, !tbaa !103
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !103
  %53 = call ptr @emit_store_flag_force(ptr noundef %3, i32 noundef 81, ptr noundef nonnull %49, ptr noundef %52, i32 noundef 0, i32 noundef 0, i32 noundef 1) #22
  br label %56

54:                                               ; preds = %47
  %55 = call ptr @emit_store_flag_force(ptr noundef %3, i32 noundef 81, ptr noundef nonnull %15, ptr noundef %44, i32 noundef 0, i32 noundef 1, i32 noundef 1) #22
  br label %56

56:                                               ; preds = %4, %54, %51, %17
  %57 = phi ptr [ null, %17 ], [ %53, %51 ], [ %55, %54 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret ptr %57
}

; Function Attrs: cold nounwind uwtable
define internal void @find_cc_set(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #9 !prof !102 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = lshr i32 %4, 16
  %9 = and i32 %8, 255
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !114
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = load i32, ptr %1, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 23
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 8, !tbaa !103
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7013, ptr noundef nonnull @.str.1) #22
  br label %22

22:                                               ; preds = %18, %21
  store ptr %0, ptr %2, align 8, !tbaa !103
  br label %23

23:                                               ; preds = %22, %14, %7, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_sync_operation(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !102 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  switch i32 %2, label %46 [
    i32 49, label %7
    i32 62, label %11
    i32 63, label %15
    i32 61, label %19
    i32 64, label %23
    i32 50, label %27
  ]

7:                                                ; preds = %3
  %8 = zext nneg i32 %6 to i64
  %9 = getelementptr inbounds [87 x i32], ptr @sync_add_optab, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !118
  br label %47

11:                                               ; preds = %3
  %12 = zext nneg i32 %6 to i64
  %13 = getelementptr inbounds [87 x i32], ptr @sync_ior_optab, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !118
  br label %47

15:                                               ; preds = %3
  %16 = zext nneg i32 %6 to i64
  %17 = getelementptr inbounds [87 x i32], ptr @sync_xor_optab, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !118
  br label %47

19:                                               ; preds = %3
  %20 = zext nneg i32 %6 to i64
  %21 = getelementptr inbounds [87 x i32], ptr @sync_and_optab, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !118
  br label %47

23:                                               ; preds = %3
  %24 = zext nneg i32 %6 to i64
  %25 = getelementptr inbounds [87 x i32], ptr @sync_nand_optab, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !118
  br label %47

27:                                               ; preds = %3
  %28 = zext nneg i32 %6 to i64
  %29 = getelementptr inbounds [87 x i32], ptr @sync_sub_optab, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !118
  %31 = icmp eq i32 %30, 2956
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr %1, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 30
  br i1 %35, label %36, label %47

36:                                               ; preds = %32, %27
  %37 = getelementptr inbounds [87 x i32], ptr @sync_add_optab, i64 0, i64 %28
  %38 = load i32, ptr %37, align 4, !tbaa !118
  %39 = icmp eq i32 %38, 2956
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 51), align 8, !tbaa !103
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2554, ptr noundef nonnull @.str.1) #22
  br label %44

44:                                               ; preds = %40, %43
  %45 = tail call ptr @expand_unop(i32 noundef %6, ptr noundef %41, ptr noundef %1, ptr noundef null, i32 noundef 1)
  br label %47

46:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7183, ptr noundef nonnull @.str.1) #22
  br label %47

47:                                               ; preds = %32, %44, %36, %46, %23, %19, %15, %11, %7
  %48 = phi i32 [ %2, %46 ], [ 49, %44 ], [ 50, %36 ], [ 64, %23 ], [ 61, %19 ], [ 63, %15 ], [ 62, %11 ], [ 49, %7 ], [ 50, %32 ]
  %49 = phi ptr [ %1, %46 ], [ %45, %44 ], [ %1, %36 ], [ %1, %23 ], [ %1, %19 ], [ %1, %15 ], [ %1, %11 ], [ %1, %7 ], [ %1, %32 ]
  %50 = phi i32 [ undef, %46 ], [ %38, %44 ], [ 2956, %36 ], [ %26, %23 ], [ %22, %19 ], [ %18, %15 ], [ %14, %11 ], [ %10, %7 ], [ %30, %32 ]
  %51 = icmp eq i32 %50, 2956
  br i1 %51, label %81, label %52

52:                                               ; preds = %47
  %53 = load i32, ptr %49, align 8
  %54 = lshr i32 %53, 16
  %55 = and i32 %54, 255
  %56 = icmp eq i32 %55, 0
  %57 = icmp eq i32 %55, %6
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = tail call ptr @convert_modes(i32 noundef %6, i32 noundef %55, ptr noundef nonnull %49, i32 noundef 1) #22
  br label %61

61:                                               ; preds = %59, %52
  %62 = phi ptr [ %60, %59 ], [ %49, %52 ]
  %63 = zext i32 %50 to i64
  %64 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %63, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !146
  %66 = getelementptr inbounds %struct.insn_operand_data, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !150
  %68 = tail call i32 %67(ptr noundef %62, i32 noundef %6) #22
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = tail call ptr @force_reg(i32 noundef %6, ptr noundef %62) #22
  br label %72

72:                                               ; preds = %70, %61
  %73 = phi ptr [ %62, %61 ], [ %71, %70 ]
  %74 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %63, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !152
  %76 = tail call ptr (ptr, ...) %75(ptr noundef nonnull %0, ptr noundef %73) #22
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = tail call ptr @emit_insn(ptr noundef nonnull %76) #22
  %80 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !103
  br label %122

81:                                               ; preds = %72, %47
  %82 = phi ptr [ %73, %72 ], [ %49, %47 ]
  %83 = zext nneg i32 %6 to i64
  %84 = getelementptr inbounds [87 x i32], ptr @sync_compare_and_swap, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !118
  %86 = icmp eq i32 %85, 2956
  br i1 %86, label %121, label %87

87:                                               ; preds = %81
  %88 = tail call ptr @gen_reg_rtx(i32 noundef %6) #22
  tail call void @start_sequence() #22
  %89 = icmp eq i32 %48, 64
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load ptr, ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 61), align 8, !tbaa !103
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1322, ptr noundef nonnull @.str.1) #22
  br label %94

94:                                               ; preds = %90, %93
  %95 = tail call ptr @expand_binop(i32 noundef %6, ptr noundef %91, ptr noundef %88, ptr noundef %82, ptr noundef null, i32 noundef 1, i32 noundef 3)
  %96 = load ptr, ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 64), align 16, !tbaa !103
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2554, ptr noundef nonnull @.str.1) #22
  br label %99

99:                                               ; preds = %94, %98
  %100 = tail call ptr @expand_unop(i32 noundef %6, ptr noundef %96, ptr noundef %95, ptr noundef null, i32 noundef 1)
  br label %109

101:                                              ; preds = %87
  %102 = sext i32 %48 to i64
  %103 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !103
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1322, ptr noundef nonnull @.str.1) #22
  br label %107

107:                                              ; preds = %101, %106
  %108 = tail call ptr @expand_binop(i32 noundef %6, ptr noundef %104, ptr noundef %88, ptr noundef %82, ptr noundef null, i32 noundef 1, i32 noundef 3)
  br label %109

109:                                              ; preds = %107, %99
  %110 = phi ptr [ %100, %99 ], [ %108, %107 ]
  %111 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %112 = icmp eq ptr %110, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = tail call fastcc zeroext i8 @expand_compare_and_swap_loop(ptr noundef nonnull %0, ptr noundef %88, ptr noundef nonnull %110, ptr noundef %111), !range !178
  %115 = icmp eq i8 %114, 0
  %116 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %117 = select i1 %115, ptr undef, ptr %116
  br label %118

118:                                              ; preds = %113, %109
  %119 = phi i1 [ true, %109 ], [ %115, %113 ]
  %120 = phi ptr [ undef, %109 ], [ %117, %113 ]
  br i1 %119, label %121, label %122

121:                                              ; preds = %118, %81
  br label %122

122:                                              ; preds = %118, %121, %78
  %123 = phi ptr [ %80, %78 ], [ null, %121 ], [ %120, %118 ]
  ret ptr %123
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @expand_compare_and_swap_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 !prof !102 {
  %5 = alloca ptr, align 8
  %6 = load i32, ptr %0, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %9 = tail call ptr @gen_label_rtx() #22
  %10 = tail call ptr @gen_reg_rtx(i32 noundef %8) #22
  %11 = tail call ptr @emit_move_insn(ptr noundef %10, ptr noundef nonnull %0) #22
  %12 = tail call ptr @emit_label(ptr noundef %9) #22
  %13 = tail call ptr @emit_move_insn(ptr noundef %1, ptr noundef %10) #22
  %14 = icmp eq ptr %3, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = tail call ptr @emit_insn(ptr noundef nonnull %3) #22
  br label %17

17:                                               ; preds = %15, %4
  %18 = zext nneg i32 %8 to i64
  %19 = getelementptr inbounds [87 x i32], ptr @sync_compare_and_swap, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !118
  %21 = icmp eq i32 %20, 2956
  br i1 %21, label %52, label %22

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @expand_val_compare_and_swap_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %10, i32 noundef %20)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %52, label %25

25:                                               ; preds = %22
  store ptr null, ptr %5, align 8, !tbaa !103
  %26 = load ptr, ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 48), align 16, !tbaa !103
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.optab_d, ptr %26, i64 0, i32 4, i64 2
  %30 = load i32, ptr %29, align 4, !tbaa !144
  %31 = icmp eq i32 %30, 2956
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @get_last_insn() #22
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !114
  call void @note_stores(ptr noundef %35, ptr noundef nonnull @find_cc_set, ptr noundef nonnull %5) #22
  br label %36

36:                                               ; preds = %25, %32, %28
  %37 = load ptr, ptr %5, align 8, !tbaa !103
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !103
  br label %45

41:                                               ; preds = %36
  %42 = icmp eq ptr %23, %10
  br i1 %42, label %45, label %43

43:                                               ; preds = %41
  %44 = call ptr @emit_move_insn(ptr noundef %10, ptr noundef nonnull %23) #22
  br label %45

45:                                               ; preds = %41, %43, %39
  %46 = phi ptr [ %40, %39 ], [ %1, %43 ], [ %1, %41 ]
  %47 = phi ptr [ %37, %39 ], [ %10, %43 ], [ %10, %41 ]
  %48 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !103
  %49 = load i32, ptr %47, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  call void @emit_cmp_and_jump_insns(ptr noundef nonnull %47, ptr noundef %46, i32 noundef 80, ptr noundef %48, i32 noundef %51, i32 noundef 1, ptr noundef %9)
  br label %52

52:                                               ; preds = %22, %17, %45
  %53 = phi i8 [ 1, %45 ], [ 0, %17 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret i8 %53
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_sync_fetch_operation(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #9 !prof !102 {
  %6 = load i32, ptr %0, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  switch i32 %2, label %66 [
    i32 49, label %9
    i32 62, label %15
    i32 63, label %21
    i32 61, label %27
    i32 64, label %33
    i32 50, label %39
  ]

9:                                                ; preds = %5
  %10 = zext nneg i32 %8 to i64
  %11 = getelementptr inbounds [87 x i32], ptr @sync_old_add_optab, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !118
  %13 = getelementptr inbounds [87 x i32], ptr @sync_new_add_optab, i64 0, i64 %10
  %14 = load i32, ptr %13, align 4, !tbaa !118
  br label %67

15:                                               ; preds = %5
  %16 = zext nneg i32 %8 to i64
  %17 = getelementptr inbounds [87 x i32], ptr @sync_old_ior_optab, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !118
  %19 = getelementptr inbounds [87 x i32], ptr @sync_new_ior_optab, i64 0, i64 %16
  %20 = load i32, ptr %19, align 4, !tbaa !118
  br label %67

21:                                               ; preds = %5
  %22 = zext nneg i32 %8 to i64
  %23 = getelementptr inbounds [87 x i32], ptr @sync_old_xor_optab, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !118
  %25 = getelementptr inbounds [87 x i32], ptr @sync_new_xor_optab, i64 0, i64 %22
  %26 = load i32, ptr %25, align 4, !tbaa !118
  br label %67

27:                                               ; preds = %5
  %28 = zext nneg i32 %8 to i64
  %29 = getelementptr inbounds [87 x i32], ptr @sync_old_and_optab, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !118
  %31 = getelementptr inbounds [87 x i32], ptr @sync_new_and_optab, i64 0, i64 %28
  %32 = load i32, ptr %31, align 4, !tbaa !118
  br label %67

33:                                               ; preds = %5
  %34 = zext nneg i32 %8 to i64
  %35 = getelementptr inbounds [87 x i32], ptr @sync_old_nand_optab, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !118
  %37 = getelementptr inbounds [87 x i32], ptr @sync_new_nand_optab, i64 0, i64 %34
  %38 = load i32, ptr %37, align 4, !tbaa !118
  br label %67

39:                                               ; preds = %5
  %40 = zext nneg i32 %8 to i64
  %41 = getelementptr inbounds [87 x i32], ptr @sync_old_sub_optab, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !118
  %43 = getelementptr inbounds [87 x i32], ptr @sync_new_sub_optab, i64 0, i64 %40
  %44 = load i32, ptr %43, align 4, !tbaa !118
  %45 = icmp eq i32 %42, 2956
  %46 = icmp eq i32 %44, 2956
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load i32, ptr %1, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 30
  br i1 %51, label %52, label %67

52:                                               ; preds = %39, %48
  %53 = getelementptr inbounds [87 x i32], ptr @sync_old_add_optab, i64 0, i64 %40
  %54 = load i32, ptr %53, align 4, !tbaa !118
  %55 = getelementptr inbounds [87 x i32], ptr @sync_new_add_optab, i64 0, i64 %40
  %56 = load i32, ptr %55, align 4, !tbaa !118
  %57 = icmp ne i32 %54, 2956
  %58 = icmp ne i32 %56, 2956
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load ptr, ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 51), align 8, !tbaa !103
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2554, ptr noundef nonnull @.str.1) #22
  br label %64

64:                                               ; preds = %60, %63
  %65 = tail call ptr @expand_unop(i32 noundef %8, ptr noundef %61, ptr noundef %1, ptr noundef null, i32 noundef 1)
  br label %67

66:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7286, ptr noundef nonnull @.str.1) #22
  br label %67

67:                                               ; preds = %48, %52, %64, %66, %33, %27, %21, %15, %9
  %68 = phi i32 [ %2, %66 ], [ 49, %64 ], [ 50, %52 ], [ 64, %33 ], [ 61, %27 ], [ 63, %21 ], [ 62, %15 ], [ 49, %9 ], [ 50, %48 ]
  %69 = phi ptr [ %1, %66 ], [ %65, %64 ], [ %1, %52 ], [ %1, %33 ], [ %1, %27 ], [ %1, %21 ], [ %1, %15 ], [ %1, %9 ], [ %1, %48 ]
  %70 = phi i32 [ undef, %66 ], [ %54, %64 ], [ 2956, %52 ], [ %36, %33 ], [ %30, %27 ], [ %24, %21 ], [ %18, %15 ], [ %12, %9 ], [ %42, %48 ]
  %71 = phi i32 [ undef, %66 ], [ %56, %64 ], [ 2956, %52 ], [ %38, %33 ], [ %32, %27 ], [ %26, %21 ], [ %20, %15 ], [ %14, %9 ], [ %44, %48 ]
  %72 = icmp eq i8 %3, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = icmp ne i32 %71, 2956
  %75 = icmp eq i32 %70, 2956
  %76 = select i1 %74, i32 %71, i32 %70
  %77 = select i1 %74, i1 true, i1 %75
  br label %83

78:                                               ; preds = %67
  %79 = icmp eq i32 %70, 2956
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  switch i32 %68, label %83 [
    i32 63, label %81
    i32 50, label %81
    i32 49, label %81
  ]

81:                                               ; preds = %80, %80, %80
  %82 = icmp eq i32 %71, 2956
  br label %83

83:                                               ; preds = %73, %81, %80, %78
  %84 = phi i32 [ 2956, %80 ], [ %70, %78 ], [ %71, %81 ], [ %76, %73 ]
  %85 = phi i1 [ true, %80 ], [ true, %78 ], [ %82, %81 ], [ %77, %73 ]
  %86 = icmp eq i32 %84, 2956
  br i1 %86, label %155, label %87

87:                                               ; preds = %83
  %88 = icmp eq ptr %4, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %87
  %90 = zext i32 %84 to i64
  %91 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %90, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !146
  %93 = load ptr, ptr %92, align 8, !tbaa !150
  %94 = tail call i32 %93(ptr noundef nonnull %4, i32 noundef %8) #22
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89, %87
  %97 = tail call ptr @gen_reg_rtx(i32 noundef %8) #22
  br label %98

98:                                               ; preds = %96, %89
  %99 = phi ptr [ %4, %89 ], [ %97, %96 ]
  %100 = load i32, ptr %69, align 8
  %101 = lshr i32 %100, 16
  %102 = and i32 %101, 255
  %103 = icmp eq i32 %102, 0
  %104 = icmp eq i32 %102, %8
  %105 = select i1 %103, i1 true, i1 %104
  br i1 %105, label %108, label %106

106:                                              ; preds = %98
  %107 = tail call ptr @convert_modes(i32 noundef %8, i32 noundef %102, ptr noundef nonnull %69, i32 noundef 1) #22
  br label %108

108:                                              ; preds = %106, %98
  %109 = phi ptr [ %107, %106 ], [ %69, %98 ]
  %110 = zext i32 %84 to i64
  %111 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %110, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !146
  %113 = getelementptr inbounds %struct.insn_operand_data, ptr %112, i64 2
  %114 = load ptr, ptr %113, align 8, !tbaa !150
  %115 = tail call i32 %114(ptr noundef %109, i32 noundef %8) #22
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = tail call ptr @force_reg(i32 noundef %8, ptr noundef %109) #22
  br label %119

119:                                              ; preds = %117, %108
  %120 = phi ptr [ %109, %108 ], [ %118, %117 ]
  %121 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %110, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !152
  %123 = tail call ptr (ptr, ...) %122(ptr noundef %99, ptr noundef nonnull %0, ptr noundef %120) #22
  %124 = icmp eq ptr %123, null
  br i1 %124, label %155, label %125

125:                                              ; preds = %119
  %126 = tail call ptr @emit_insn(ptr noundef nonnull %123) #22
  br i1 %85, label %206, label %127

127:                                              ; preds = %125
  br i1 %72, label %128, label %133

128:                                              ; preds = %127
  %129 = icmp eq i32 %68, 49
  br i1 %129, label %133, label %130

130:                                              ; preds = %128
  %131 = icmp eq i32 %68, 50
  %132 = select i1 %131, i32 49, i32 %68
  br label %133

133:                                              ; preds = %128, %130, %127
  %134 = phi i32 [ %68, %127 ], [ %132, %130 ], [ 50, %128 ]
  %135 = icmp eq i32 %134, 64
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = load ptr, ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 61), align 8, !tbaa !103
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1322, ptr noundef nonnull @.str.1) #22
  br label %140

140:                                              ; preds = %136, %139
  %141 = tail call ptr @expand_binop(i32 noundef %8, ptr noundef %137, ptr noundef %99, ptr noundef %120, ptr noundef null, i32 noundef 1, i32 noundef 3)
  %142 = load ptr, ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 64), align 16, !tbaa !103
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2554, ptr noundef nonnull @.str.1) #22
  br label %145

145:                                              ; preds = %140, %144
  %146 = tail call ptr @expand_unop(i32 noundef %8, ptr noundef %142, ptr noundef %141, ptr noundef null, i32 noundef 1)
  br label %206

147:                                              ; preds = %133
  %148 = sext i32 %134 to i64
  %149 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !103
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1322, ptr noundef nonnull @.str.1) #22
  br label %153

153:                                              ; preds = %147, %152
  %154 = tail call ptr @expand_binop(i32 noundef %8, ptr noundef %150, ptr noundef %99, ptr noundef %120, ptr noundef null, i32 noundef 1, i32 noundef 3)
  br label %206

155:                                              ; preds = %119, %83
  %156 = phi ptr [ %99, %119 ], [ %4, %83 ]
  %157 = phi ptr [ %120, %119 ], [ %69, %83 ]
  %158 = zext nneg i32 %8 to i64
  %159 = getelementptr inbounds [87 x i32], ptr @sync_compare_and_swap, i64 0, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !118
  %161 = icmp eq i32 %160, 2956
  br i1 %161, label %206, label %162

162:                                              ; preds = %155
  %163 = tail call ptr @gen_reg_rtx(i32 noundef %8) #22
  %164 = icmp eq ptr %156, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = tail call i32 @register_operand(ptr noundef nonnull %156, i32 noundef %8) #22
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165, %162
  %169 = tail call ptr @gen_reg_rtx(i32 noundef %8) #22
  br label %170

170:                                              ; preds = %168, %165
  %171 = phi ptr [ %156, %165 ], [ %169, %168 ]
  tail call void @start_sequence() #22
  br i1 %72, label %172, label %174

172:                                              ; preds = %170
  %173 = tail call ptr @emit_move_insn(ptr noundef %171, ptr noundef %163) #22
  br label %174

174:                                              ; preds = %172, %170
  %175 = icmp eq i32 %68, 64
  br i1 %175, label %176, label %187

176:                                              ; preds = %174
  %177 = load ptr, ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 61), align 8, !tbaa !103
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1322, ptr noundef nonnull @.str.1) #22
  br label %180

180:                                              ; preds = %176, %179
  %181 = tail call ptr @expand_binop(i32 noundef %8, ptr noundef %177, ptr noundef %163, ptr noundef %157, ptr noundef null, i32 noundef 1, i32 noundef 3)
  %182 = load ptr, ptr getelementptr inbounds ([140 x ptr], ptr @code_to_optab, i64 0, i64 64), align 16, !tbaa !103
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2554, ptr noundef nonnull @.str.1) #22
  br label %185

185:                                              ; preds = %180, %184
  %186 = tail call ptr @expand_unop(i32 noundef %8, ptr noundef %182, ptr noundef %181, ptr noundef null, i32 noundef 1)
  br label %195

187:                                              ; preds = %174
  %188 = sext i32 %68 to i64
  %189 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !103
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1322, ptr noundef nonnull @.str.1) #22
  br label %193

193:                                              ; preds = %187, %192
  %194 = tail call ptr @expand_binop(i32 noundef %8, ptr noundef %190, ptr noundef %163, ptr noundef %157, ptr noundef null, i32 noundef 1, i32 noundef 3)
  br label %195

195:                                              ; preds = %193, %185
  %196 = phi ptr [ %186, %185 ], [ %194, %193 ]
  br i1 %72, label %199, label %197

197:                                              ; preds = %195
  %198 = tail call ptr @emit_move_insn(ptr noundef %171, ptr noundef %196) #22
  br label %199

199:                                              ; preds = %197, %195
  %200 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  %201 = icmp eq ptr %196, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = tail call fastcc zeroext i8 @expand_compare_and_swap_loop(ptr noundef nonnull %0, ptr noundef %163, ptr noundef nonnull %196, ptr noundef %200), !range !178
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %202, %199
  br label %206

206:                                              ; preds = %155, %205, %202, %125, %153, %145
  %207 = phi ptr [ %146, %145 ], [ %154, %153 ], [ %99, %125 ], [ %171, %202 ], [ null, %205 ], [ null, %155 ]
  ret ptr %207
}

declare i32 @register_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_sync_lock_test_and_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !102 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [87 x i32], ptr @sync_lock_test_and_set, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !118
  %10 = icmp eq i32 %9, 2956
  br i1 %10, label %51, label %11

11:                                               ; preds = %3
  %12 = icmp eq ptr %2, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = zext i32 %9 to i64
  %15 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %14, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !146
  %17 = load ptr, ptr %16, align 8, !tbaa !150
  %18 = tail call i32 %17(ptr noundef nonnull %2, i32 noundef %6) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13, %11
  %21 = tail call ptr @gen_reg_rtx(i32 noundef %6) #22
  br label %22

22:                                               ; preds = %20, %13
  %23 = phi ptr [ %2, %13 ], [ %21, %20 ]
  %24 = load i32, ptr %1, align 8
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %26, 0
  %28 = icmp eq i32 %26, %6
  %29 = or i1 %27, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = tail call ptr @convert_modes(i32 noundef %6, i32 noundef %26, ptr noundef nonnull %1, i32 noundef 1) #22
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi ptr [ %31, %30 ], [ %1, %22 ]
  %34 = zext i32 %9 to i64
  %35 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %34, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !146
  %37 = getelementptr inbounds %struct.insn_operand_data, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !150
  %39 = tail call i32 %38(ptr noundef %33, i32 noundef %6) #22
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = tail call ptr @force_reg(i32 noundef %6, ptr noundef %33) #22
  br label %43

43:                                               ; preds = %41, %32
  %44 = phi ptr [ %33, %32 ], [ %42, %41 ]
  %45 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %34, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !152
  %47 = tail call ptr (ptr, ...) %46(ptr noundef %23, ptr noundef nonnull %0, ptr noundef %44) #22
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = tail call ptr @emit_insn(ptr noundef nonnull %47) #22
  br label %79

51:                                               ; preds = %43, %3
  %52 = phi ptr [ %23, %43 ], [ %2, %3 ]
  %53 = phi ptr [ %44, %43 ], [ %1, %3 ]
  %54 = getelementptr inbounds [87 x i32], ptr @sync_compare_and_swap, i64 0, i64 %7
  %55 = load i32, ptr %54, align 4, !tbaa !118
  %56 = icmp eq i32 %55, 2956
  br i1 %56, label %78, label %57

57:                                               ; preds = %51
  %58 = icmp eq ptr %52, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %57
  %60 = tail call i32 @register_operand(ptr noundef nonnull %52, i32 noundef %6) #22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %57
  %63 = tail call ptr @gen_reg_rtx(i32 noundef %6) #22
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi ptr [ %52, %59 ], [ %63, %62 ]
  %66 = load i32, ptr %53, align 8
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = icmp eq i32 %68, 0
  %70 = icmp eq i32 %68, %6
  %71 = or i1 %69, %70
  br i1 %71, label %74, label %72

72:                                               ; preds = %64
  %73 = tail call ptr @convert_modes(i32 noundef %6, i32 noundef %68, ptr noundef nonnull %53, i32 noundef 1) #22
  br label %74

74:                                               ; preds = %72, %64
  %75 = phi ptr [ %73, %72 ], [ %53, %64 ]
  %76 = tail call fastcc zeroext i8 @expand_compare_and_swap_loop(ptr noundef nonnull %0, ptr noundef %65, ptr noundef %75, ptr noundef null), !range !178
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %51
  br label %79

79:                                               ; preds = %74, %78, %49
  %80 = phi ptr [ %23, %49 ], [ null, %78 ], [ %65, %74 ]
  ret ptr %80
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_libfunc_entry(ptr noundef %0) local_unnamed_addr #9 !prof !102 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.libfunc_entry, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %8) #22
  br label %11

11:                                               ; preds = %1, %6, %10, %3
  ret void
}

declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_rtx_def(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_m_P13libfunc_entry4htab(ptr noundef %0) #9 !prof !102 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !347
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !349
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %10, %28
  %15 = phi i64 [ %29, %28 ], [ 0, %10 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !347
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !103
  %19 = icmp ult ptr %18, inttoptr (i64 2 to ptr)
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @ggc_set_mark(ptr noundef nonnull %18) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.libfunc_entry, ptr %18, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !129
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %25) #22
  br label %28

28:                                               ; preds = %14, %27, %23, %20
  %29 = add i64 %15, 1
  %30 = load i64, ptr %11, align 8, !tbaa !349
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %14, !llvm.loop !350

32:                                               ; preds = %28, %10
  %33 = load ptr, ptr %7, align 8, !tbaa !347
  %34 = icmp ult ptr %33, inttoptr (i64 2 to ptr)
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @ggc_set_mark(ptr noundef nonnull %33) #22
  br label %37

37:                                               ; preds = %32, %1, %35, %6, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_libfunc_entry(ptr noundef %0) local_unnamed_addr #9 !prof !102 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_13libfunc_entry, i32 noundef 62) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.libfunc_entry, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %6) #22
  br label %9

9:                                                ; preds = %4, %8, %1
  ret void
}

declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_13libfunc_entry(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !102 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.libfunc_entry, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #22
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

declare void @gt_pch_nx_rtx_def(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_n_P13libfunc_entry4htab(ptr noundef %0) #9 !prof !102 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P13libfunc_entry4htab, i32 noundef 198) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !347
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !349
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %19
  %13 = phi i64 [ %20, %19 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !347
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !103
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @gt_pch_nx_libfunc_entry(ptr noundef nonnull %16)
  br label %19

19:                                               ; preds = %12, %18
  %20 = add i64 %13, 1
  %21 = load i64, ptr %9, align 8, !tbaa !349
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %12, !llvm.loop !351

23:                                               ; preds = %19, %8
  %24 = load ptr, ptr %5, align 8, !tbaa !347
  %25 = tail call i32 @gt_pch_note_object(ptr noundef %24, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P13libfunc_entry4htab, i32 noundef 217) #22
  br label %26

26:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_P13libfunc_entry4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #9 !prof !102 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !347
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !349
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !347
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds ptr, ptr %14, i64 %13
  tail call void %2(ptr noundef %17, ptr noundef %3) #22
  br label %18

18:                                               ; preds = %12, %16
  %19 = add i64 %13, 1
  %20 = load i64, ptr %9, align 8, !tbaa !349
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %12, !llvm.loop !352

22:                                               ; preds = %18, %8
  %23 = icmp eq ptr %1, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #22
  br label %25

25:                                               ; preds = %22, %24, %4
  ret void
}

declare void @gt_ggc_m_P9tree_node4htab(ptr noundef) #3

declare void @gt_pch_n_P9tree_node4htab(ptr noundef) #3

declare ptr @simplify_binary_operation(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_SUBREG(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @commutative_operand_precedence(ptr noundef) local_unnamed_addr #3

declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_relational_operation(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @expand_superword_shift(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #9 !prof !102 {
  %8 = icmp eq ptr %4, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %7
  %10 = load i32, ptr @word_mode, align 4, !tbaa !118
  %11 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %10, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, i32 noundef %5, i32 noundef %6)
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %11, %4
  %14 = or i1 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @emit_move_insn(ptr noundef nonnull %4, ptr noundef nonnull %11) #22
  br label %17

17:                                               ; preds = %9, %15
  br i1 %12, label %38, label %18

18:                                               ; preds = %17, %7
  %19 = icmp eq ptr %3, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %18
  %21 = icmp eq ptr %0, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46)
  %22 = load i32, ptr @word_mode, align 4, !tbaa !118
  br i1 %21, label %28, label %23

23:                                               ; preds = %20
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  %27 = tail call ptr @emit_move_insn(ptr noundef nonnull %3, ptr noundef %26) #22
  br label %37

28:                                               ; preds = %20
  %29 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 31) #22
  %30 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %22, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), ptr noundef %1, ptr noundef %29, ptr noundef nonnull %3, i32 noundef %5, i32 noundef %6)
  %31 = icmp eq ptr %30, null
  %32 = icmp eq ptr %30, %3
  %33 = or i1 %31, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = tail call ptr @emit_move_insn(ptr noundef nonnull %3, ptr noundef nonnull %30) #22
  br label %36

36:                                               ; preds = %28, %34
  br i1 %31, label %38, label %37

37:                                               ; preds = %23, %36, %18
  br label %38

38:                                               ; preds = %36, %17, %37
  %39 = phi i8 [ 1, %37 ], [ 0, %17 ], [ 0, %36 ]
  ret i8 %39
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @expand_subword_shift(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9) unnamed_addr #9 !prof !102 {
  %11 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44)
  %12 = select i1 %11, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44)
  %13 = select i1 %11, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45)
  %14 = load i32, ptr %4, align 8
  %15 = and i32 %14, 65535
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !118
  %19 = icmp eq i32 %18, 9
  %20 = icmp ugt i64 %9, 31
  %21 = or i1 %20, %19
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = tail call ptr @immed_double_const(i64 noundef 32, i64 noundef 0, i32 noundef %0) #22
  %24 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %23, ptr noundef nonnull %4, ptr noundef null, i32 noundef 1, i32 noundef %8)
  br label %36

25:                                               ; preds = %10
  %26 = load i32, ptr @word_mode, align 4, !tbaa !118
  %27 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !103
  %28 = tail call ptr @expand_binop(i32 noundef %26, ptr noundef nonnull %12, ptr noundef %2, ptr noundef %27, ptr noundef null, i32 noundef %7, i32 noundef %8)
  %29 = icmp eq i64 %9, 31
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = tail call ptr @immed_double_const(i64 noundef -1, i64 noundef -1, i32 noundef %0) #22
  %32 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef nonnull %4, ptr noundef %31, ptr noundef null, i32 noundef 1, i32 noundef %8)
  br label %36

33:                                               ; preds = %25
  %34 = tail call ptr @immed_double_const(i64 noundef 31, i64 noundef 0, i32 noundef %0) #22
  %35 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %34, ptr noundef nonnull %4, ptr noundef null, i32 noundef 1, i32 noundef %8)
  br label %36

36:                                               ; preds = %30, %33, %22
  %37 = phi ptr [ %24, %22 ], [ %32, %30 ], [ %35, %33 ]
  %38 = phi ptr [ %2, %22 ], [ %28, %30 ], [ %28, %33 ]
  %39 = icmp eq ptr %37, null
  %40 = icmp eq ptr %38, null
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %71, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr @word_mode, align 4, !tbaa !118
  %44 = tail call ptr @expand_binop(i32 noundef %43, ptr noundef nonnull %12, ptr noundef %38, ptr noundef %37, ptr noundef null, i32 noundef %7, i32 noundef %8)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %71, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr @word_mode, align 4, !tbaa !118
  %48 = tail call ptr @expand_binop(i32 noundef %47, ptr noundef nonnull %13, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  %49 = icmp eq ptr %48, null
  br i1 %49, label %71, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr @word_mode, align 4, !tbaa !118
  %52 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %51, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef nonnull %48, ptr noundef nonnull %44, ptr noundef %6, i32 noundef %7, i32 noundef %8)
  %53 = icmp eq ptr %52, null
  %54 = icmp eq ptr %52, %6
  %55 = or i1 %53, %54
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = tail call ptr @emit_move_insn(ptr noundef %6, ptr noundef nonnull %52) #22
  br label %58

58:                                               ; preds = %50, %56
  br i1 %53, label %71, label %59

59:                                               ; preds = %58
  %60 = icmp eq ptr %5, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %59
  %62 = load i32, ptr @word_mode, align 4, !tbaa !118
  %63 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %62, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %7, i32 noundef %8)
  %64 = icmp eq ptr %63, null
  %65 = icmp eq ptr %63, %5
  %66 = or i1 %64, %65
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  %68 = tail call ptr @emit_move_insn(ptr noundef nonnull %5, ptr noundef nonnull %63) #22
  br label %69

69:                                               ; preds = %61, %67
  br i1 %64, label %71, label %70

70:                                               ; preds = %69, %59
  br label %71

71:                                               ; preds = %69, %58, %46, %42, %36, %70
  %72 = phi i8 [ 1, %70 ], [ 0, %36 ], [ 0, %42 ], [ 0, %46 ], [ 0, %58 ], [ 0, %69 ]
  ret i8 %72
}

declare ptr @gen_highpart(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @int_mode_for_mode(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @lowpart_subreg_maybe_copy(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !prof !102 {
  %4 = tail call ptr @lowpart_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @force_reg(i32 noundef %2, ptr noundef %1) #22
  %8 = tail call ptr @lowpart_subreg(i32 noundef %0, ptr noundef %7, i32 noundef %2) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2916, ptr noundef nonnull @.str.1) #22
  br label %11

11:                                               ; preds = %10, %6, %3
  %12 = phi ptr [ %8, %6 ], [ null, %10 ], [ %4, %3 ]
  ret ptr %12
}

declare ptr @lowpart_subreg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #3

declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @find_reg_fusage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reg_used_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @modified_in_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @modified_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reverse_condition_maybe_unordered(i32 noundef) local_unnamed_addr #3

declare ptr @simplify_gen_ternary(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gen_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !102 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %6 = zext i32 %3 to i64
  %7 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !103
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8)
  %10 = add i64 %5, 4
  %11 = add i64 %10, %9
  %12 = and i64 %11, 4294967295
  %13 = alloca i8, i64 %12, align 16
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 95, ptr %13, align 16, !tbaa !114
  %15 = getelementptr inbounds i8, ptr %13, i64 2
  store i8 95, ptr %14, align 1, !tbaa !114
  %16 = load i8, ptr %1, align 1, !tbaa !114
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %22, %4
  %19 = phi ptr [ %15, %4 ], [ %27, %22 ]
  %20 = load i8, ptr %8, align 1, !tbaa !114
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %41, label %30

22:                                               ; preds = %4, %22
  %23 = phi i8 [ %28, %22 ], [ %16, %4 ]
  %24 = phi ptr [ %26, %22 ], [ %1, %4 ]
  %25 = phi ptr [ %27, %22 ], [ %15, %4 ]
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  %27 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %23, ptr %25, align 1, !tbaa !114
  %28 = load i8, ptr %26, align 1, !tbaa !114
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %18, label %22, !llvm.loop !353

30:                                               ; preds = %18, %30
  %31 = phi i8 [ %39, %30 ], [ %20, %18 ]
  %32 = phi ptr [ %38, %30 ], [ %8, %18 ]
  %33 = phi ptr [ %37, %30 ], [ %19, %18 ]
  %34 = zext i8 %31 to i64
  %35 = getelementptr inbounds [256 x i8], ptr @_sch_tolower, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !114
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 %36, ptr %33, align 1, !tbaa !114
  %38 = getelementptr inbounds i8, ptr %32, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !114
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %30, !llvm.loop !354

41:                                               ; preds = %30, %18
  %42 = phi ptr [ %19, %18 ], [ %37, %30 ]
  %43 = trunc i32 %2 to i8
  %44 = getelementptr inbounds i8, ptr %42, i64 1
  store i8 %43, ptr %42, align 1, !tbaa !114
  store i8 0, ptr %44, align 1, !tbaa !114
  %45 = ptrtoint ptr %44 to i64
  %46 = ptrtoint ptr %13 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call ptr @ggc_alloc_string(ptr noundef nonnull %13, i32 noundef %48) #22
  call void @set_optab_libfunc(ptr noundef %0, i32 noundef %3, ptr noundef %49)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #19

declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !102 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !103
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8)
  %10 = zext i32 %3 to i64
  %11 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !103
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12)
  %14 = add i64 %13, %9
  %15 = add i64 %14, %5
  %16 = add i64 %15, 4
  %17 = alloca i8, i64 %16, align 16
  store i8 95, ptr %17, align 16, !tbaa !114
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 95, ptr %18, align 1, !tbaa !114
  %19 = getelementptr inbounds i8, ptr %17, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %19, ptr align 1 %1, i64 %5, i1 false)
  %20 = add i64 %14, %5
  %21 = add i64 %20, 8
  %22 = alloca i8, i64 %21, align 16
  store i8 95, ptr %22, align 16, !tbaa !114
  %23 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 95, ptr %23, align 1, !tbaa !114
  %24 = getelementptr inbounds i8, ptr %22, i64 2
  store i32 1600416098, ptr %24, align 2
  %25 = getelementptr inbounds i8, ptr %22, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %25, ptr align 1 %1, i64 %5, i1 false)
  %26 = getelementptr inbounds i8, ptr %22, i64 4
  %27 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %28 = load i8, ptr %27, align 1, !tbaa !114
  %29 = icmp eq i8 %28, 9
  br i1 %29, label %36, label %30

30:                                               ; preds = %4
  %31 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %32 = load i8, ptr %31, align 1, !tbaa !114
  %33 = icmp eq i8 %32, 9
  %34 = select i1 %33, ptr %26, ptr %17
  %35 = select i1 %33, ptr %22, ptr %17
  br label %36

36:                                               ; preds = %30, %4
  %37 = phi ptr [ %26, %4 ], [ %34, %30 ]
  %38 = phi ptr [ %22, %4 ], [ %35, %30 ]
  %39 = getelementptr inbounds i8, ptr %37, i64 %5
  %40 = getelementptr inbounds i8, ptr %39, i64 2
  %41 = load i8, ptr %12, align 1, !tbaa !114
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %47, %36
  %44 = phi ptr [ %40, %36 ], [ %54, %47 ]
  %45 = load i8, ptr %8, align 1, !tbaa !114
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %69, label %58

47:                                               ; preds = %36, %47
  %48 = phi i8 [ %56, %47 ], [ %41, %36 ]
  %49 = phi ptr [ %55, %47 ], [ %12, %36 ]
  %50 = phi ptr [ %54, %47 ], [ %40, %36 ]
  %51 = zext i8 %48 to i64
  %52 = getelementptr inbounds [256 x i8], ptr @_sch_tolower, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !114
  store i8 %53, ptr %50, align 1, !tbaa !114
  %54 = getelementptr inbounds i8, ptr %50, i64 1
  %55 = getelementptr inbounds i8, ptr %49, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !114
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %43, label %47, !llvm.loop !355

58:                                               ; preds = %43, %58
  %59 = phi i8 [ %67, %58 ], [ %45, %43 ]
  %60 = phi ptr [ %66, %58 ], [ %8, %43 ]
  %61 = phi ptr [ %65, %58 ], [ %44, %43 ]
  %62 = zext i8 %59 to i64
  %63 = getelementptr inbounds [256 x i8], ptr @_sch_tolower, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !114
  store i8 %64, ptr %61, align 1, !tbaa !114
  %65 = getelementptr inbounds i8, ptr %61, i64 1
  %66 = getelementptr inbounds i8, ptr %60, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !114
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %58, !llvm.loop !356

69:                                               ; preds = %58, %43
  %70 = phi ptr [ %44, %43 ], [ %65, %58 ]
  store i8 0, ptr %70, align 1, !tbaa !114
  %71 = ptrtoint ptr %70 to i64
  %72 = ptrtoint ptr %38 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = call ptr @ggc_alloc_string(ptr noundef nonnull %38, i32 noundef %74) #22
  call void @set_conv_libfunc(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef %75)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @gen_intraclass_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !102 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !103
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8)
  %10 = zext i32 %3 to i64
  %11 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !103
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12)
  %14 = add i64 %13, %9
  %15 = add i64 %14, %5
  %16 = add i64 %15, 4
  %17 = alloca i8, i64 %16, align 16
  store i8 95, ptr %17, align 16, !tbaa !114
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 95, ptr %18, align 1, !tbaa !114
  %19 = getelementptr inbounds i8, ptr %17, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %19, ptr align 1 %1, i64 %5, i1 false)
  %20 = add i64 %14, %5
  %21 = add i64 %20, 8
  %22 = alloca i8, i64 %21, align 16
  store i8 95, ptr %22, align 16, !tbaa !114
  %23 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 95, ptr %23, align 1, !tbaa !114
  %24 = getelementptr inbounds i8, ptr %22, i64 2
  store i32 1600416098, ptr %24, align 2
  %25 = getelementptr inbounds i8, ptr %22, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %25, ptr align 1 %1, i64 %5, i1 false)
  %26 = getelementptr inbounds i8, ptr %22, i64 4
  %27 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %28 = load i8, ptr %27, align 1, !tbaa !114
  %29 = icmp eq i8 %28, 9
  br i1 %29, label %36, label %30

30:                                               ; preds = %4
  %31 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %32 = load i8, ptr %31, align 1, !tbaa !114
  %33 = icmp eq i8 %32, 9
  %34 = select i1 %33, ptr %22, ptr %17
  %35 = select i1 %33, ptr %26, ptr %17
  br label %36

36:                                               ; preds = %30, %4
  %37 = phi ptr [ %22, %4 ], [ %34, %30 ]
  %38 = phi ptr [ %26, %4 ], [ %35, %30 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 %5
  %40 = getelementptr inbounds i8, ptr %39, i64 2
  %41 = load i8, ptr %12, align 1, !tbaa !114
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %47, %36
  %44 = phi ptr [ %40, %36 ], [ %54, %47 ]
  %45 = load i8, ptr %8, align 1, !tbaa !114
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %69, label %58

47:                                               ; preds = %36, %47
  %48 = phi i8 [ %56, %47 ], [ %41, %36 ]
  %49 = phi ptr [ %55, %47 ], [ %12, %36 ]
  %50 = phi ptr [ %54, %47 ], [ %40, %36 ]
  %51 = zext i8 %48 to i64
  %52 = getelementptr inbounds [256 x i8], ptr @_sch_tolower, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !114
  store i8 %53, ptr %50, align 1, !tbaa !114
  %54 = getelementptr inbounds i8, ptr %50, i64 1
  %55 = getelementptr inbounds i8, ptr %49, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !114
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %43, label %47, !llvm.loop !357

58:                                               ; preds = %43, %58
  %59 = phi i8 [ %67, %58 ], [ %45, %43 ]
  %60 = phi ptr [ %66, %58 ], [ %8, %43 ]
  %61 = phi ptr [ %65, %58 ], [ %44, %43 ]
  %62 = zext i8 %59 to i64
  %63 = getelementptr inbounds [256 x i8], ptr @_sch_tolower, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !114
  store i8 %64, ptr %61, align 1, !tbaa !114
  %65 = getelementptr inbounds i8, ptr %61, i64 1
  %66 = getelementptr inbounds i8, ptr %60, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !114
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %58, !llvm.loop !358

69:                                               ; preds = %58, %43
  %70 = phi ptr [ %44, %43 ], [ %65, %58 ]
  %71 = getelementptr inbounds i8, ptr %70, i64 1
  store i8 50, ptr %70, align 1, !tbaa !114
  store i8 0, ptr %71, align 1, !tbaa !114
  %72 = ptrtoint ptr %71 to i64
  %73 = ptrtoint ptr %37 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = call ptr @ggc_alloc_string(ptr noundef nonnull %37, i32 noundef %75) #22
  call void @set_conv_libfunc(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef %76)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!101}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!35 = !{ptr @expand_simple_binop, ptr @expand_binop, i64 3186}
!36 = !{ptr @expand_binop, ptr @get_last_insn, i64 44340}
!37 = !{ptr @expand_binop, ptr @negate_rtx, i64 53}
!38 = !{ptr @expand_binop, ptr @expand_binop_directly, i64 22170}
!39 = !{ptr @expand_binop_directly, ptr @gen_reg_rtx, i64 18541}
!40 = !{ptr @expand_binop_directly, ptr @avoid_expensive_constant, i64 37230}
!41 = !{ptr @expand_binop_directly, ptr @convert_modes, i64 28274}
!42 = !{ptr @expand_binop_directly, ptr @commutative_operand_precedence, i64 30108}
!43 = !{ptr @expand_binop_directly, ptr @copy_to_mode_reg, i64 7043}
!44 = !{ptr @expand_binop_directly, ptr @add_equal_note, i64 1206}
!45 = !{ptr @expand_binop_directly, ptr @emit_insn, i64 22170}
!46 = !{ptr @avoid_expensive_constant, ptr @optimize_insn_for_speed_p, i64 37230}
!47 = !{ptr @avoid_expensive_constant, ptr @rtx_cost, i64 42328}
!48 = !{ptr @expand_simple_unop, ptr @expand_unop, i64 272}
!49 = !{ptr @expand_unop, ptr @expand_unop_direct, i64 272}
!50 = !{ptr @expand_unop_direct, ptr @get_last_insn, i64 272}
!51 = !{ptr @expand_unop_direct, ptr @emit_insn, i64 272}
!52 = !{ptr @maybe_emit_unop_insn, ptr @get_last_insn, i64 1409}
!53 = !{ptr @maybe_emit_unop_insn, ptr @register_operand, i64 1409}
!54 = !{ptr @maybe_emit_unop_insn, ptr @emit_insn, i64 1409}
!55 = !{ptr @add_equal_note, ptr @single_set_2, i64 1206}
!56 = !{ptr @add_equal_note, ptr @rtx_equal_p, i64 1206}
!57 = !{ptr @add_equal_note, ptr @reg_overlap_mentioned_p, i64 2412}
!58 = !{ptr @add_equal_note, ptr @copy_rtx, i64 2412}
!59 = !{ptr @add_equal_note, ptr @gen_rtx_fmt_ee_stat, i64 1206}
!60 = !{ptr @add_equal_note, ptr @set_unique_reg_note, i64 1206}
!61 = !{ptr @emit_unop_insn, ptr @maybe_emit_unop_insn, i64 1409}
!62 = !{ptr @can_compare_p, ptr @gen_rtx_fmt_ee_stat, i64 388767}
!63 = !{ptr @emit_cmp_and_jump_insns, ptr @swap_commutative_operands_p, i64 150023}
!64 = !{ptr @emit_cmp_and_jump_insns, ptr @unsigned_condition, i64 112918}
!65 = !{ptr @emit_cmp_and_jump_insns, ptr @prepare_cmp_insn, i64 150023}
!66 = !{ptr @emit_cmp_and_jump_insns, ptr @emit_jump_insn, i64 150023}
!67 = !{ptr @prepare_cmp_insn, ptr @optimize_insn_for_speed_p, i64 151867}
!68 = !{ptr @prepare_cmp_insn, ptr @rtx_cost, i64 151867}
!69 = !{ptr @prepare_cmp_insn, ptr @gen_rtx_fmt_ee_stat, i64 151867}
!70 = !{ptr @prepare_cmp_insn, ptr @get_last_insn, i64 151867}
!71 = !{ptr @emit_conditional_move, ptr @swap_commutative_operands_p, i64 3688}
!72 = !{ptr @emit_conditional_move, ptr @register_operand, i64 1844}
!73 = !{ptr @emit_conditional_move, ptr @simplify_gen_relational, i64 1844}
!74 = !{ptr @emit_conditional_move, ptr @do_pending_stack_adjust, i64 1844}
!75 = !{ptr @emit_conditional_move, ptr @start_sequence, i64 1844}
!76 = !{ptr @emit_conditional_move, ptr @prepare_cmp_insn, i64 1844}
!77 = !{ptr @emit_conditional_move, ptr @emit_insn, i64 3688}
!78 = !{ptr @emit_conditional_move, ptr @get_insns, i64 1844}
!79 = !{ptr @emit_conditional_move, ptr @end_sequence, i64 1844}
!80 = !{ptr @gen_move_insn, ptr @start_sequence, i64 115}
!81 = !{ptr @gen_move_insn, ptr @emit_move_insn_1, i64 115}
!82 = !{ptr @gen_move_insn, ptr @get_insns, i64 115}
!83 = !{ptr @gen_move_insn, ptr @end_sequence, i64 115}
!84 = !{ptr @build_libfunc_function, ptr @get_identifier, i64 16}
!85 = !{ptr @build_libfunc_function, ptr @build_function_type, i64 16}
!86 = !{ptr @build_libfunc_function, ptr @build_decl_stat, i64 16}
!87 = !{ptr @build_libfunc_function, ptr @decl_assembler_name, i64 16}
!88 = !{ptr @build_libfunc_function, ptr @make_decl_rtl, i64 16}
!89 = !{ptr @init_one_libfunc, ptr @htab_create_alloc, i64 1}
!90 = !{ptr @init_one_libfunc, ptr @get_identifier, i64 16}
!91 = !{ptr @init_one_libfunc, ptr @htab_hash_string, i64 16}
!92 = !{ptr @init_one_libfunc, ptr @htab_find_slot_with_hash, i64 16}
!93 = !{ptr @init_one_libfunc, ptr @build_libfunc_function, i64 16}
!94 = !{ptr @set_optab_libfunc, ptr @init_one_libfunc, i64 3}
!95 = !{ptr @set_optab_libfunc, ptr @htab_find_slot, i64 3}
!96 = !{ptr @set_optab_libfunc, ptr @ggc_alloc_stat, i64 3}
!97 = !{ptr @init_optabs, ptr @htab_create_alloc, i64 1}
!98 = !{ptr @init_optabs, ptr @init_all_optabs, i64 1}
!99 = !{ptr @init_optabs, ptr @set_optab_libfunc, i64 3}
!100 = !{ptr @init_optabs, ptr @init_one_libfunc, i64 13}
!101 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!102 = !{!"function_entry_count", i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"any pointer", !105, i64 0}
!105 = !{!"omnipotent char", !106, i64 0}
!106 = !{!"Simple C/C++ TBAA"}
!107 = !{!108, !104, i64 8}
!108 = !{!"_IO_FILE", !109, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !104, i64 48, !104, i64 56, !104, i64 64, !104, i64 72, !104, i64 80, !104, i64 88, !104, i64 96, !104, i64 104, !109, i64 112, !109, i64 116, !110, i64 120, !111, i64 128, !105, i64 130, !105, i64 131, !104, i64 136, !110, i64 144, !104, i64 152, !104, i64 160, !104, i64 168, !104, i64 176, !110, i64 184, !109, i64 192, !105, i64 196}
!109 = !{!"int", !105, i64 0}
!110 = !{!"long", !105, i64 0}
!111 = !{!"short", !105, i64 0}
!112 = !{!108, !104, i64 16}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{!105, !105, i64 0}
!115 = !{!108, !104, i64 40}
!116 = !{!108, !104, i64 48}
!117 = !{!108, !109, i64 0}
!118 = !{!109, !109, i64 0}
!119 = distinct !{!119, !120, !121}
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!"llvm.loop.unroll.disable"}
!122 = !{!123, !110, i64 0}
!123 = !{!"libfunc_entry", !110, i64 0, !109, i64 8, !109, i64 12, !104, i64 16}
!124 = !{!123, !109, i64 8}
!125 = !{!123, !109, i64 12}
!126 = !{!127, !104, i64 16}
!127 = !{!"convert_optab_d", !109, i64 0, !104, i64 8, !104, i64 16, !105, i64 24}
!128 = !{!127, !104, i64 8}
!129 = !{!123, !104, i64 16}
!130 = !{!131, !104, i64 24}
!131 = !{!"optab_d", !109, i64 0, !104, i64 8, !105, i64 16, !104, i64 24, !105, i64 32}
!132 = !{!131, !104, i64 8}
!133 = !{!131, !105, i64 16}
!134 = !{!"function_entry_count", i64 11874}
!135 = !{!"branch_weights", i32 3383, i32 8176, i32 303, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!136 = !{!"branch_weights", i32 3383, i32 0}
!137 = !{!"branch_weights", i32 2606, i32 777}
!138 = !{!"branch_weights", i32 0, i32 0, i32 3377, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!139 = !{!"branch_weights", i32 3377, i32 0}
!140 = !{!"branch_weights", i32 6, i32 0}
!141 = !{!142, !109, i64 0}
!142 = !{!"separate_ops", !109, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !109, i64 40}
!143 = !{!142, !104, i64 16}
!144 = !{!145, !109, i64 0}
!145 = !{!"optab_handlers", !109, i64 0}
!146 = !{!147, !104, i64 24}
!147 = !{!"insn_data", !104, i64 0, !105, i64 8, !104, i64 16, !104, i64 24, !105, i64 32, !105, i64 33, !105, i64 34, !105, i64 35}
!148 = !{!142, !104, i64 24}
!149 = !{!142, !104, i64 32}
!150 = !{!151, !104, i64 0}
!151 = !{!"insn_operand_data", !104, i64 0, !104, i64 8, !109, i64 16, !105, i64 18, !105, i64 19}
!152 = !{!147, !104, i64 16}
!153 = !{!131, !109, i64 0}
!154 = !{!142, !104, i64 8}
!155 = !{!"function_entry_count", i64 3186}
!156 = !{!"branch_weights", i32 0, i32 3186}
!157 = !{!"function_entry_count", i64 22170}
!158 = !{!"branch_weights", i32 11890, i32 10280}
!159 = !{!"branch_weights", i32 59, i32 22111}
!160 = !{!"branch_weights", i32 53, i32 6}
!161 = !{!"branch_weights", i32 0, i32 22170}
!162 = !{!163, !104, i64 1144}
!163 = !{!"gcc_target", !164, i64 0, !166, i64 368, !167, i64 664, !109, i64 744, !104, i64 752, !104, i64 760, !104, i64 768, !104, i64 776, !104, i64 784, !104, i64 792, !104, i64 800, !104, i64 808, !104, i64 816, !104, i64 824, !104, i64 832, !104, i64 840, !104, i64 848, !104, i64 856, !104, i64 864, !104, i64 872, !104, i64 880, !104, i64 888, !104, i64 896, !104, i64 904, !104, i64 912, !104, i64 920, !104, i64 928, !104, i64 936, !104, i64 944, !104, i64 952, !104, i64 960, !104, i64 968, !104, i64 976, !104, i64 984, !104, i64 992, !104, i64 1000, !104, i64 1008, !104, i64 1016, !104, i64 1024, !104, i64 1032, !104, i64 1040, !104, i64 1048, !104, i64 1056, !110, i64 1064, !110, i64 1072, !104, i64 1080, !104, i64 1088, !104, i64 1096, !104, i64 1104, !104, i64 1112, !104, i64 1120, !104, i64 1128, !104, i64 1136, !104, i64 1144, !104, i64 1152, !104, i64 1160, !104, i64 1168, !168, i64 1176, !104, i64 1232, !104, i64 1240, !104, i64 1248, !104, i64 1256, !104, i64 1264, !104, i64 1272, !104, i64 1280, !104, i64 1288, !104, i64 1296, !104, i64 1304, !104, i64 1312, !104, i64 1320, !104, i64 1328, !104, i64 1336, !104, i64 1344, !104, i64 1352, !104, i64 1360, !104, i64 1368, !104, i64 1376, !104, i64 1384, !104, i64 1392, !104, i64 1400, !104, i64 1408, !104, i64 1416, !104, i64 1424, !104, i64 1432, !104, i64 1440, !104, i64 1448, !104, i64 1456, !110, i64 1464, !169, i64 1472, !104, i64 1664, !104, i64 1672, !104, i64 1680, !104, i64 1688, !104, i64 1696, !104, i64 1704, !104, i64 1712, !104, i64 1720, !104, i64 1728, !104, i64 1736, !104, i64 1744, !104, i64 1752, !104, i64 1760, !104, i64 1768, !104, i64 1776, !170, i64 1784, !171, i64 1792, !172, i64 1896, !173, i64 1968, !104, i64 2016, !105, i64 2024, !105, i64 2025, !105, i64 2026, !105, i64 2027, !105, i64 2028, !105, i64 2029, !105, i64 2030, !105, i64 2031, !105, i64 2032, !105, i64 2033, !105, i64 2034, !105, i64 2035}
!164 = !{!"asm_out", !104, i64 0, !104, i64 8, !104, i64 16, !165, i64 24, !165, i64 56, !104, i64 88, !104, i64 96, !104, i64 104, !104, i64 112, !104, i64 120, !104, i64 128, !104, i64 136, !104, i64 144, !104, i64 152, !104, i64 160, !104, i64 168, !104, i64 176, !104, i64 184, !104, i64 192, !104, i64 200, !104, i64 208, !104, i64 216, !104, i64 224, !104, i64 232, !104, i64 240, !104, i64 248, !104, i64 256, !104, i64 264, !104, i64 272, !104, i64 280, !104, i64 288, !104, i64 296, !104, i64 304, !104, i64 312, !104, i64 320, !104, i64 328, !104, i64 336, !104, i64 344, !104, i64 352, !104, i64 360}
!165 = !{!"asm_int_op", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24}
!166 = !{!"sched", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !104, i64 48, !104, i64 56, !104, i64 64, !104, i64 72, !104, i64 80, !104, i64 88, !104, i64 96, !104, i64 104, !104, i64 112, !104, i64 120, !104, i64 128, !104, i64 136, !104, i64 144, !104, i64 152, !104, i64 160, !104, i64 168, !104, i64 176, !104, i64 184, !104, i64 192, !104, i64 200, !104, i64 208, !104, i64 216, !104, i64 224, !104, i64 232, !104, i64 240, !104, i64 248, !104, i64 256, !104, i64 264, !104, i64 272, !104, i64 280, !104, i64 288}
!167 = !{!"vectorize", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !104, i64 48, !104, i64 56, !104, i64 64, !104, i64 72}
!168 = !{!"addr_space", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !104, i64 48}
!169 = !{!"calls", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !104, i64 48, !104, i64 56, !104, i64 64, !104, i64 72, !104, i64 80, !104, i64 88, !104, i64 96, !104, i64 104, !104, i64 112, !104, i64 120, !104, i64 128, !104, i64 136, !104, i64 144, !104, i64 152, !104, i64 160, !104, i64 168, !104, i64 176, !104, i64 184}
!170 = !{!"c", !104, i64 0}
!171 = !{!"cxx", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !104, i64 48, !104, i64 56, !104, i64 64, !104, i64 72, !104, i64 80, !104, i64 88, !104, i64 96}
!172 = !{!"emutls", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !104, i64 48, !104, i64 56, !105, i64 64, !105, i64 65}
!173 = !{!"target_option_hooks", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40}
!174 = !{!175, !104, i64 0}
!175 = !{!"rtl_hooks", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32}
!176 = distinct !{!176, !120, !121}
!177 = distinct !{!177, !120, !121}
!178 = !{i8 0, i8 2}
!179 = distinct !{!179, !120, !121}
!180 = !{!163, !104, i64 792}
!181 = distinct !{!181, !120, !121}
!182 = !{!"optabs.c;expand_binop_directly"}
!183 = !{!"branch_weights", i32 18541, i32 3629}
!184 = !{!"branch_weights", i32 7116, i32 15054}
!185 = !{!"branch_weights", i32 15060, i32 67, i32 0, i32 0, i32 7043, i32 0, i32 0, i32 0}
!186 = !{!"branch_weights", i32 7043, i32 15127}
!187 = !{!"branch_weights", i32 7043, i32 0}
!188 = !{!"branch_weights", i32 21231, i32 939}
!189 = !{!"branch_weights", i32 14188, i32 7043}
!190 = !{!"branch_weights", i32 0, i32 15054}
!191 = !{!"branch_weights", i32 14121, i32 933}
!192 = !{!"branch_weights", i32 615, i32 318}
!193 = !{!"branch_weights", i32 318, i32 0}
!194 = !{!"branch_weights", i32 933, i32 0}
!195 = !{!"branch_weights", i32 15054, i32 0}
!196 = !{!"VP", i32 0, i64 22170, i64 1320961495666781357, i64 22170}
!197 = !{!"VP", i32 0, i64 22170, i64 2413368657831509256, i64 15060, i64 6942555554272443968, i64 7110}
!198 = !{!"VP", i32 0, i64 22170, i64 -7413483932647443979, i64 9751, i64 7027914427268259239, i64 7043, i64 -6952580561400418840, i64 4988}
!199 = !{!"branch_weights", i32 22170, i32 0}
!200 = !{!"branch_weights", i32 20964, i32 1206}
!201 = !{i32 0, i32 2}
!202 = !{!"branch_weights", i32 0, i32 1206}
!203 = !{!"function_entry_count", i64 37230}
!204 = !{!"optabs.c;avoid_expensive_constant"}
!205 = !{!"branch_weights", i32 37230, i32 0}
!206 = !{!"branch_weights", i32 21164, i32 16066}
!207 = !{!"branch_weights", i32 0, i32 21164}
!208 = !{!"optabs.c;swap_commutative_operands_with_target"}
!209 = !{!210, !109, i64 4}
!210 = !{!"rtl_data", !211, i64 0, !212, i64 40, !213, i64 96, !214, i64 112, !216, i64 208, !217, i64 248, !109, i64 312, !104, i64 320, !104, i64 328, !104, i64 336, !104, i64 344, !104, i64 352, !104, i64 360, !104, i64 368, !104, i64 376, !104, i64 384, !104, i64 392, !110, i64 400, !104, i64 408, !104, i64 416, !104, i64 424, !109, i64 432, !109, i64 436, !109, i64 440, !109, i64 444, !109, i64 448, !109, i64 452, !104, i64 456, !105, i64 464, !105, i64 465, !105, i64 466, !105, i64 467, !105, i64 468, !105, i64 469, !105, i64 470, !105, i64 471, !105, i64 472, !105, i64 473, !105, i64 474, !105, i64 475, !105, i64 476, !105, i64 477, !105, i64 478, !105, i64 479, !105, i64 480, !105, i64 481, !105, i64 482, !105, i64 483, !105, i64 484, !105, i64 485}
!211 = !{!"expr_status", !109, i64 0, !109, i64 4, !109, i64 8, !104, i64 16, !104, i64 24, !104, i64 32}
!212 = !{!"emit_status", !109, i64 0, !109, i64 4, !104, i64 8, !104, i64 16, !104, i64 24, !109, i64 32, !109, i64 36, !109, i64 40, !109, i64 44, !104, i64 48}
!213 = !{!"varasm_status", !104, i64 0, !109, i64 8}
!214 = !{!"incoming_args", !109, i64 0, !109, i64 4, !109, i64 8, !104, i64 16, !215, i64 24, !104, i64 88}
!215 = !{!"ix86_args", !109, i64 0, !109, i64 4, !109, i64 8, !109, i64 12, !109, i64 16, !109, i64 20, !109, i64 24, !109, i64 28, !109, i64 32, !109, i64 36, !109, i64 40, !109, i64 44, !109, i64 48, !109, i64 52, !109, i64 56, !109, i64 60}
!216 = !{!"function_subsections", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32}
!217 = !{!"rtl_eh", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !104, i64 32, !104, i64 40, !105, i64 48}
!218 = !{!"optabs.c;shift_optab_p"}
!219 = distinct !{!219, !120, !121}
!220 = distinct !{!220, !120, !121}
!221 = !{!222, !104, i64 0}
!222 = !{!"no_conflict_data", !104, i64 0, !104, i64 8, !104, i64 16, !105, i64 24}
!223 = !{!222, !104, i64 8}
!224 = !{!222, !104, i64 16}
!225 = !{!222, !105, i64 24}
!226 = distinct !{!226, !120, !121}
!227 = !{i64 0, i64 4, !118, i64 8, i64 8, !103, i64 16, i64 1, !114, i64 24, i64 8, !103, i64 32, i64 348, !114}
!228 = distinct !{!228, !120, !121}
!229 = distinct !{!229, !120, !121}
!230 = !{!"function_entry_count", i64 272}
!231 = !{!"branch_weights", i32 0, i32 272}
!232 = distinct !{!232, !120, !121}
!233 = distinct !{!233, !120, !121}
!234 = distinct !{!234, !120, !121}
!235 = distinct !{!235, !120, !121}
!236 = !{!237, !105, i64 49}
!237 = !{!"real_format", !104, i64 0, !104, i64 8, !109, i64 16, !109, i64 20, !109, i64 24, !109, i64 28, !109, i64 32, !109, i64 36, !109, i64 40, !105, i64 44, !105, i64 45, !105, i64 46, !105, i64 47, !105, i64 48, !105, i64 49, !105, i64 50, !105, i64 51}
!238 = distinct !{!238, !120, !121}
!239 = distinct !{!239, !120, !121}
!240 = !{!"optabs.c;expand_unop_direct"}
!241 = !{!"branch_weights", i32 272, i32 0}
!242 = !{!"VP", i32 0, i64 272, i64 1320961495666781357, i64 272}
!243 = !{!"VP", i32 0, i64 272, i64 6223344125370006887, i64 272}
!244 = !{!237, !109, i64 40}
!245 = distinct !{!245, !120, !121}
!246 = !{!237, !109, i64 36}
!247 = distinct !{!247, !120, !121}
!248 = !{!"function_entry_count", i64 1409}
!249 = !{!"VP", i32 0, i64 1409, i64 1320961495666781357, i64 1409}
!250 = !{!"branch_weights", i32 0, i32 1409}
!251 = !{!"VP", i32 0, i64 1409, i64 -2077511023057329547, i64 1409}
!252 = !{!"VP", i32 0, i64 1409, i64 4439892960339235015, i64 1409}
!253 = !{!"branch_weights", i32 1409, i32 0}
!254 = !{!"function_entry_count", i64 1206}
!255 = !{!"optabs.c;add_equal_note"}
!256 = !{!"branch_weights", i32 1206, i32 0}
!257 = !{!"branch_weights", i32 1206, i32 1206}
!258 = distinct !{!258, !120, !121}
!259 = distinct !{!259, !120, !121}
!260 = !{!"function_entry_count", i64 388767}
!261 = !{!"branch_weights", i32 0, i32 388767, i32 0, i32 0}
!262 = !{!"branch_weights", i32 0, i32 388767}
!263 = !{!"VP", i32 0, i64 388767, i64 2961254994277687989, i64 388767}
!264 = distinct !{!264, !120, !121}
!265 = !{!"function_entry_count", i64 40458}
!266 = !{!"branch_weights", i32 344192, i32 0}
!267 = !{!"VP", i32 0, i64 40458, i64 1320961495666781357, i64 20228, i64 2413368657831509256, i64 20228}
!268 = !{!"branch_weights", i32 0, i32 344192}
!269 = !{!"function_entry_count", i64 150023}
!270 = !{!"branch_weights", i32 150023, i32 0}
!271 = !{!"branch_weights", i32 0, i32 150023}
!272 = !{!"branch_weights", i32 37105, i32 112918}
!273 = !{!"VP", i32 0, i64 150023, i64 2961254994277687989, i64 150023}
!274 = !{!"VP", i32 0, i64 150023, i64 32105142309218154, i64 127654, i64 -2659818658081227581, i64 22323, i64 3263126402147885034, i64 46}
!275 = !{!"function_entry_count", i64 151867}
!276 = !{!"optabs.c;prepare_cmp_insn"}
!277 = !{!"branch_weights", i32 0, i32 150023, i32 1844, i32 0}
!278 = !{!"branch_weights", i32 0, i32 151867}
!279 = !{!"branch_weights", i32 151867, i32 0}
!280 = !{!281, !109, i64 28}
!281 = !{!"mem_attrs", !104, i64 0, !104, i64 8, !104, i64 16, !109, i64 24, !109, i64 28, !105, i64 32}
!282 = distinct !{!282, !120, !121}
!283 = !{!"VP", i32 0, i64 151867, i64 2961254994277687989, i64 151867}
!284 = !{!"VP", i32 0, i64 151867, i64 1320961495666781357, i64 75933, i64 2413368657831509256, i64 75933}
!285 = !{!"VP", i32 0, i64 151867, i64 1320961495666781357, i64 151867}
!286 = !{!"VP", i32 0, i64 151867, i64 2413368657831509256, i64 151867}
!287 = !{!"branch_weights", i32 151867, i32 0, i32 0}
!288 = distinct !{!288, !120, !121}
!289 = !{!163, !104, i64 784}
!290 = distinct !{!290, !120, !121}
!291 = !{!"function_entry_count", i64 1844}
!292 = !{!"branch_weights", i32 1844, i32 0}
!293 = !{!"branch_weights", i32 3, i32 1841}
!294 = !{!"branch_weights", i32 0, i32 1844}
!295 = !{!"VP", i32 0, i64 1844, i64 -2077511023057329547, i64 1844}
!296 = !{!"VP", i32 0, i64 1844, i64 2413368657831509256, i64 1844}
!297 = !{!"VP", i32 0, i64 1844, i64 3394409580089672174, i64 1844}
!298 = !{!"function_entry_count", i64 115}
!299 = !{!"function_entry_count", i64 1415}
!300 = !{!"branch_weights", i32 6, i32 1409}
!301 = distinct !{!301, !120, !121}
!302 = distinct !{!302, !120, !121}
!303 = distinct !{!303, !120, !121}
!304 = distinct !{!304, !120, !121}
!305 = distinct !{!305, !120, !121}
!306 = distinct !{!306, !120, !121}
!307 = !{!127, !109, i64 0}
!308 = distinct !{!308, !120, !121}
!309 = distinct !{!309, !120, !121}
!310 = !{!"function_entry_count", i64 588052}
!311 = !{!"branch_weights", i32 315889, i32 272163}
!312 = !{!"function_entry_count", i64 16}
!313 = !{!"branch_weights", i32 0, i32 16}
!314 = !{!"branch_weights", i32 16, i32 0}
!315 = !{!"branch_weights", i32 1, i32 15}
!316 = !{!"function_entry_count", i64 2}
!317 = !{!"optabs.c;libfunc_decl_eq"}
!318 = !{!"function_entry_count", i64 3}
!319 = !{!"branch_weights", i32 0, i32 3}
!320 = !{!"branch_weights", i32 3, i32 0}
!321 = !{!"function_entry_count", i64 1}
!322 = !{!"branch_weights", i32 1, i32 86}
!323 = distinct !{!323, !120, !121}
!324 = distinct !{!324, !120, !121}
!325 = !{!"branch_weights", i32 159, i32 13674}
!326 = distinct !{!326, !120, !121}
!327 = !{!"branch_weights", i32 1, i32 158}
!328 = distinct !{!328, !120, !121}
!329 = !{!"branch_weights", i32 1479, i32 127194}
!330 = distinct !{!330, !120, !121}
!331 = !{!"branch_weights", i32 17, i32 1462}
!332 = distinct !{!332, !120, !121}
!333 = !{!"branch_weights", i32 1, i32 16}
!334 = distinct !{!334, !120, !121}
!335 = distinct !{!335, !120, !121}
!336 = !{!"branch_weights", i32 0, i32 1}
!337 = !{!163, !104, i64 960}
!338 = !{!"VP", i32 0, i64 1, i64 -7047677361869380989, i64 1}
!339 = !{!"optabs.c;hash_libfunc"}
!340 = !{!111, !111, i64 0}
!341 = distinct !{!341, !120, !121}
!342 = distinct !{!342, !120, !121}
!343 = distinct !{!343, !120, !121}
!344 = distinct !{!344, !120, !121}
!345 = distinct !{!345, !120, !121}
!346 = distinct !{!346, !120, !121}
!347 = !{!348, !104, i64 24}
!348 = !{!"htab", !104, i64 0, !104, i64 8, !104, i64 16, !104, i64 24, !110, i64 32, !110, i64 40, !110, i64 48, !109, i64 56, !109, i64 60, !104, i64 64, !104, i64 72, !104, i64 80, !104, i64 88, !104, i64 96, !109, i64 104}
!349 = !{!348, !110, i64 32}
!350 = distinct !{!350, !120, !121}
!351 = distinct !{!351, !120, !121}
!352 = distinct !{!352, !120, !121}
!353 = distinct !{!353, !120, !121}
!354 = distinct !{!354, !120, !121}
!355 = distinct !{!355, !120, !121}
!356 = distinct !{!356, !120, !121}
!357 = distinct !{!357, !120, !121}
!358 = distinct !{!358, !120, !121}
