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
@switch.table.prepare_float_lib_cmp = private unnamed_addr constant [6 x ptr] [ptr @const_true_rtx, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63)], align 8
@switch.table.prepare_float_lib_cmp.86 = private unnamed_addr constant [6 x ptr] [ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), ptr @const_true_rtx, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64)], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @convert_optab_libfunc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !174 {
  %4 = alloca %struct.libfunc_entry, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %5, ptrtoint (ptr @convert_optab_table to i64)
  %7 = sdiv exact i64 %6, 30304
  store i64 %7, ptr %4, align 8, !tbaa !175
  %8 = getelementptr inbounds %struct.libfunc_entry, ptr %4, i64 0, i32 1
  store i32 %1, ptr %8, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.libfunc_entry, ptr %4, i64 0, i32 2
  store i32 %2, ptr %9, align 4, !tbaa !183
  %10 = load ptr, ptr @libfunc_hash, align 8, !tbaa !184
  %11 = call ptr @htab_find_slot(ptr noundef %10, ptr noundef nonnull %4, i32 noundef 0) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.convert_optab_d, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !185
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.convert_optab_d, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !187
  call void %15(ptr noundef nonnull %0, ptr noundef %19, i32 noundef %1, i32 noundef %2) #16
  %20 = load ptr, ptr @libfunc_hash, align 8, !tbaa !184
  %21 = call ptr @htab_find_slot(ptr noundef %20, ptr noundef nonnull %4, i32 noundef 0) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %3, %17
  %24 = phi ptr [ %21, %17 ], [ %11, %3 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !184
  %26 = getelementptr inbounds %struct.libfunc_entry, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !188
  br label %28

28:                                               ; preds = %23, %13, %17
  %29 = phi ptr [ null, %17 ], [ null, %13 ], [ %27, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret ptr %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @optab_libfunc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !174 {
  %3 = alloca %struct.libfunc_entry, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %4, ptrtoint (ptr @optab_table to i64)
  %6 = sdiv exact i64 %5, 384
  store i64 %6, ptr %3, align 8, !tbaa !175
  %7 = getelementptr inbounds %struct.libfunc_entry, ptr %3, i64 0, i32 1
  store i32 %1, ptr %7, align 8, !tbaa !182
  %8 = getelementptr inbounds %struct.libfunc_entry, ptr %3, i64 0, i32 2
  store i32 0, ptr %8, align 4, !tbaa !183
  %9 = load ptr, ptr @libfunc_hash, align 8, !tbaa !184
  %10 = call ptr @htab_find_slot(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 0) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.optab_d, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !189
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.optab_d, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !191
  %19 = getelementptr inbounds %struct.optab_d, ptr %0, i64 0, i32 2
  %20 = load i8, ptr %19, align 8, !tbaa !192
  call void %14(ptr noundef nonnull %0, ptr noundef %18, i8 noundef signext %20, i32 noundef %1) #16
  %21 = load ptr, ptr @libfunc_hash, align 8, !tbaa !184
  %22 = call ptr @htab_find_slot(ptr noundef %21, ptr noundef nonnull %3, i32 noundef 0) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %2, %16
  %25 = phi ptr [ %22, %16 ], [ %10, %2 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !184
  %27 = getelementptr inbounds %struct.libfunc_entry, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !188
  br label %29

29:                                               ; preds = %24, %12, %16
  %30 = phi ptr [ null, %16 ], [ null, %12 ], [ %28, %24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @optab_for_tree_code(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !193 {
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
  ], !prof !194

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
  %27 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %37 = load i8, ptr %36, align 1, !tbaa !195
  %38 = icmp eq i8 %37, 12
  br i1 %38, label %124, label %39

39:                                               ; preds = %33
  %40 = load i64, ptr %1, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 14
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %54 = load i8, ptr %53, align 1, !tbaa !195
  %55 = icmp eq i8 %54, 17
  br i1 %55, label %124, label %56

56:                                               ; preds = %50
  %57 = load i64, ptr %1, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 14
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %71 = load i8, ptr %70, align 1, !tbaa !195
  %72 = icmp eq i8 %71, 13
  br i1 %72, label %124, label %73

73:                                               ; preds = %67
  %74 = load i64, ptr %1, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 14
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %88 = load i8, ptr %87, align 1, !tbaa !195
  %89 = icmp eq i8 %88, 14
  br i1 %89, label %124, label %90

90:                                               ; preds = %84
  %91 = load i64, ptr %1, align 8
  %92 = and i64 %91, 65535
  %93 = icmp eq i64 %92, 14
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %105 = load i8, ptr %104, align 1, !tbaa !195
  %106 = icmp eq i8 %105, 15
  br i1 %106, label %124, label %107

107:                                              ; preds = %101
  %108 = load i64, ptr %1, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 14
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %122 = load i8, ptr %121, align 1, !tbaa !195
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
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 360, ptr noundef nonnull @.str.1) #16
  br label %131

131:                                              ; preds = %124, %130, %118
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
  %144 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %154 = load i8, ptr %153, align 1, !tbaa !195
  %155 = icmp eq i8 %154, 12
  br i1 %155, label %241, label %156

156:                                              ; preds = %150
  %157 = load i64, ptr %1, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 14
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %171 = load i8, ptr %170, align 1, !tbaa !195
  %172 = icmp eq i8 %171, 17
  br i1 %172, label %241, label %173

173:                                              ; preds = %167
  %174 = load i64, ptr %1, align 8
  %175 = and i64 %174, 65535
  %176 = icmp eq i64 %175, 14
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %188 = load i8, ptr %187, align 1, !tbaa !195
  %189 = icmp eq i8 %188, 13
  br i1 %189, label %241, label %190

190:                                              ; preds = %184
  %191 = load i64, ptr %1, align 8
  %192 = and i64 %191, 65535
  %193 = icmp eq i64 %192, 14
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %205 = load i8, ptr %204, align 1, !tbaa !195
  %206 = icmp eq i8 %205, 14
  br i1 %206, label %241, label %207

207:                                              ; preds = %201
  %208 = load i64, ptr %1, align 8
  %209 = and i64 %208, 65535
  %210 = icmp eq i64 %209, 14
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %222 = load i8, ptr %221, align 1, !tbaa !195
  %223 = icmp eq i8 %222, 15
  br i1 %223, label %241, label %224

224:                                              ; preds = %218
  %225 = load i64, ptr %1, align 8
  %226 = and i64 %225, 65535
  %227 = icmp eq i64 %226, 14
  br i1 %227, label %228, label %230

228:                                              ; preds = %224
  %229 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %239 = load i8, ptr %238, align 1, !tbaa !195
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
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 372, ptr noundef nonnull @.str.1) #16
  br label %248

248:                                              ; preds = %241, %247, %235
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
  %258 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %268 = load i8, ptr %267, align 1, !tbaa !195
  %269 = icmp eq i8 %268, 12
  br i1 %269, label %355, label %270

270:                                              ; preds = %264
  %271 = load i64, ptr %1, align 8
  %272 = and i64 %271, 65535
  %273 = icmp eq i64 %272, 14
  br i1 %273, label %274, label %276

274:                                              ; preds = %270
  %275 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %285 = load i8, ptr %284, align 1, !tbaa !195
  %286 = icmp eq i8 %285, 17
  br i1 %286, label %355, label %287

287:                                              ; preds = %281
  %288 = load i64, ptr %1, align 8
  %289 = and i64 %288, 65535
  %290 = icmp eq i64 %289, 14
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  %292 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %302 = load i8, ptr %301, align 1, !tbaa !195
  %303 = icmp eq i8 %302, 13
  br i1 %303, label %355, label %304

304:                                              ; preds = %298
  %305 = load i64, ptr %1, align 8
  %306 = and i64 %305, 65535
  %307 = icmp eq i64 %306, 14
  br i1 %307, label %308, label %310

308:                                              ; preds = %304
  %309 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %319 = load i8, ptr %318, align 1, !tbaa !195
  %320 = icmp eq i8 %319, 14
  br i1 %320, label %355, label %321

321:                                              ; preds = %315
  %322 = load i64, ptr %1, align 8
  %323 = and i64 %322, 65535
  %324 = icmp eq i64 %323, 14
  br i1 %324, label %325, label %327

325:                                              ; preds = %321
  %326 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %336 = load i8, ptr %335, align 1, !tbaa !195
  %337 = icmp eq i8 %336, 15
  br i1 %337, label %355, label %338

338:                                              ; preds = %332
  %339 = load i64, ptr %1, align 8
  %340 = and i64 %339, 65535
  %341 = icmp eq i64 %340, 14
  br i1 %341, label %342, label %344

342:                                              ; preds = %338
  %343 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %353 = load i8, ptr %352, align 1, !tbaa !195
  %354 = icmp eq i8 %353, 16
  br i1 %354, label %355, label %357

355:                                              ; preds = %349, %332, %315, %298, %281, %264
  switch i32 %2, label %356 [
    i32 2, label %598
    i32 1, label %357
  ]

356:                                              ; preds = %355
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 382, ptr noundef nonnull @.str.1) #16
  br label %357

357:                                              ; preds = %355, %356, %349
  br label %598

358:                                              ; preds = %3
  %359 = load i64, ptr %1, align 8
  %360 = and i64 %359, 65535
  %361 = icmp eq i64 %360, 14
  br i1 %361, label %362, label %364

362:                                              ; preds = %358
  %363 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %373 = load i8, ptr %372, align 1, !tbaa !195
  %374 = icmp eq i8 %373, 12
  br i1 %374, label %460, label %375

375:                                              ; preds = %369
  %376 = load i64, ptr %1, align 8
  %377 = and i64 %376, 65535
  %378 = icmp eq i64 %377, 14
  br i1 %378, label %379, label %381

379:                                              ; preds = %375
  %380 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %390 = load i8, ptr %389, align 1, !tbaa !195
  %391 = icmp eq i8 %390, 17
  br i1 %391, label %460, label %392

392:                                              ; preds = %386
  %393 = load i64, ptr %1, align 8
  %394 = and i64 %393, 65535
  %395 = icmp eq i64 %394, 14
  br i1 %395, label %396, label %398

396:                                              ; preds = %392
  %397 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %407 = load i8, ptr %406, align 1, !tbaa !195
  %408 = icmp eq i8 %407, 13
  br i1 %408, label %460, label %409

409:                                              ; preds = %403
  %410 = load i64, ptr %1, align 8
  %411 = and i64 %410, 65535
  %412 = icmp eq i64 %411, 14
  br i1 %412, label %413, label %415

413:                                              ; preds = %409
  %414 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %424 = load i8, ptr %423, align 1, !tbaa !195
  %425 = icmp eq i8 %424, 14
  br i1 %425, label %460, label %426

426:                                              ; preds = %420
  %427 = load i64, ptr %1, align 8
  %428 = and i64 %427, 65535
  %429 = icmp eq i64 %428, 14
  br i1 %429, label %430, label %432

430:                                              ; preds = %426
  %431 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %441 = load i8, ptr %440, align 1, !tbaa !195
  %442 = icmp eq i8 %441, 15
  br i1 %442, label %460, label %443

443:                                              ; preds = %437
  %444 = load i64, ptr %1, align 8
  %445 = and i64 %444, 65535
  %446 = icmp eq i64 %445, 14
  br i1 %446, label %447, label %449

447:                                              ; preds = %443
  %448 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  %458 = load i8, ptr %457, align 1, !tbaa !195
  %459 = icmp eq i8 %458, 16
  br i1 %459, label %460, label %462

460:                                              ; preds = %454, %437, %420, %403, %386, %369
  switch i32 %2, label %461 [
    i32 2, label %598
    i32 1, label %462
  ]

461:                                              ; preds = %460
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 392, ptr noundef nonnull @.str.1) #16
  br label %462

462:                                              ; preds = %460, %461, %454
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
  br i1 %547, label %548, label %554, !prof !196

548:                                              ; preds = %542
  %549 = and i64 %543, 2097152
  %550 = icmp ne i64 %549, 0
  %551 = load i32, ptr @flag_trapv, align 4
  %552 = icmp eq i32 %551, 0
  %553 = select i1 %550, i1 true, i1 %552
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
  ], !prof !197

556:                                              ; preds = %554, %554
  %557 = and i64 %543, 2147483648
  %558 = icmp eq i64 %557, 0
  br i1 %558, label %563, label %559, !prof !198

559:                                              ; preds = %556
  %560 = and i64 %543, 2097152
  %561 = icmp eq i64 %560, 0
  %562 = select i1 %561, ptr @optab_table, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 1)
  br label %598

563:                                              ; preds = %556
  %564 = select i1 %555, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13)
  br label %598

565:                                              ; preds = %554
  %566 = and i64 %543, 2147483648
  %567 = icmp eq i64 %566, 0
  br i1 %567, label %572, label %568, !prof !199

568:                                              ; preds = %565
  %569 = and i64 %543, 2097152
  %570 = icmp eq i64 %569, 0
  %571 = select i1 %570, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 2), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 3)
  br label %598

572:                                              ; preds = %565
  %573 = select i1 %555, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15)
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

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_widen_pattern_expr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !174 {
  %7 = load i32, ptr %0, align 8, !tbaa !200
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !195
  %11 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !202
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !195
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 14
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = tail call i32 @vector_type_mode(ptr noundef nonnull %14) #16
  %20 = load i32, ptr %0, align 8, !tbaa !200
  %21 = load ptr, ptr %13, align 8, !tbaa !195
  br label %27

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi ptr [ %21, %18 ], [ %14, %22 ]
  %29 = phi i32 [ %20, %18 ], [ %7, %22 ]
  %30 = phi i32 [ %19, %18 ], [ %26, %22 ]
  %31 = tail call ptr @optab_for_tree_code(i32 noundef %29, ptr noundef %28, i32 noundef 0) #17
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds %struct.optab_d, ptr %31, i64 0, i32 4, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !203
  %35 = icmp eq i32 %34, 2956
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 551, ptr noundef nonnull @.str.1) #16
  br label %37

37:                                               ; preds = %27, %36
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %38, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !205
  %41 = getelementptr inbounds %struct.insn_operand_data, ptr %40, i64 1, i32 2
  %42 = load i16, ptr %41, align 8
  %43 = zext i16 %42 to i32
  %44 = icmp ugt i8 %10, 1
  br i1 %44, label %45, label %65

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !207
  %48 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !195
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 14
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = tail call i32 @vector_type_mode(ptr noundef nonnull %49) #16
  br label %60

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.tree_type, ptr %49, i64 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  br label %60

60:                                               ; preds = %55, %53
  %61 = phi i32 [ %54, %53 ], [ %59, %55 ]
  %62 = getelementptr inbounds %struct.insn_operand_data, ptr %40, i64 2, i32 2
  %63 = load i16, ptr %62, align 8
  %64 = zext i16 %63 to i32
  br label %65

65:                                               ; preds = %60, %37
  %66 = phi i32 [ %61, %60 ], [ 0, %37 ]
  %67 = phi i32 [ %64, %60 ], [ 0, %37 ]
  switch i8 %10, label %94 [
    i8 2, label %95
    i8 3, label %68
  ]

68:                                               ; preds = %65
  %69 = icmp eq i32 %66, %30
  br i1 %69, label %71, label %70

70:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 569, ptr noundef nonnull @.str.1) #16
  br label %71

71:                                               ; preds = %68, %70
  %72 = icmp eq ptr %2, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 570, ptr noundef nonnull @.str.1) #16
  br label %74

74:                                               ; preds = %71, %73
  %75 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !208
  %77 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !195
  %79 = load i64, ptr %78, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 14
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = tail call i32 @vector_type_mode(ptr noundef nonnull %78) #16
  br label %89

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.tree_type, ptr %78, i64 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 255
  br label %89

89:                                               ; preds = %84, %82
  %90 = phi i32 [ %83, %82 ], [ %88, %84 ]
  %91 = getelementptr inbounds %struct.insn_operand_data, ptr %40, i64 3, i32 2
  %92 = load i16, ptr %91, align 8
  %93 = zext i16 %92 to i32
  br label %95

94:                                               ; preds = %65
  br label %95

95:                                               ; preds = %65, %94, %89
  %96 = phi i32 [ %93, %89 ], [ %67, %65 ], [ 0, %94 ]
  %97 = phi i32 [ %90, %89 ], [ %66, %65 ], [ 0, %94 ]
  %98 = icmp eq ptr %3, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.insn_operand_data, ptr %40, i64 0, i32 2
  %101 = load i16, ptr %100, align 8
  %102 = zext i16 %101 to i32
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i32 [ %96, %95 ], [ %102, %99 ]
  %105 = phi i32 [ %97, %95 ], [ %102, %99 ]
  %106 = icmp eq ptr %4, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %40, align 8, !tbaa !209
  %109 = tail call i32 %108(ptr noundef nonnull %4, i32 noundef %105) #16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107, %103
  %112 = tail call ptr @gen_reg_rtx(i32 noundef %105) #16
  br label %113

113:                                              ; preds = %107, %111
  %114 = phi ptr [ %112, %111 ], [ %4, %107 ]
  %115 = load i32, ptr %1, align 8
  %116 = lshr i32 %115, 16
  %117 = and i32 %116, 255
  %118 = icmp ne i32 %117, %43
  %119 = icmp ne i16 %42, 0
  %120 = and i1 %119, %118
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = icmp eq i32 %117, 0
  %123 = select i1 %122, i32 %30, i32 %117
  %124 = tail call ptr @convert_modes(i32 noundef %43, i32 noundef %123, ptr noundef nonnull %1, i32 noundef %5) #16
  br label %125

125:                                              ; preds = %121, %113
  %126 = phi ptr [ %124, %121 ], [ %1, %113 ]
  %127 = icmp eq ptr %2, null
  br i1 %127, label %139, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr %2, align 8
  %130 = lshr i32 %129, 16
  %131 = and i32 %130, 255
  %132 = icmp ne i32 %131, %67
  %133 = icmp ne i32 %67, 0
  %134 = and i1 %133, %132
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = icmp eq i32 %131, 0
  %137 = select i1 %136, i32 %66, i32 %131
  %138 = tail call ptr @convert_modes(i32 noundef %67, i32 noundef %137, ptr noundef nonnull %2, i32 noundef %5) #16
  br label %139

139:                                              ; preds = %128, %135, %125
  %140 = phi ptr [ %138, %135 ], [ %2, %128 ], [ null, %125 ]
  br i1 %98, label %152, label %141

141:                                              ; preds = %139
  %142 = load i32, ptr %3, align 8
  %143 = lshr i32 %142, 16
  %144 = and i32 %143, 255
  %145 = icmp ne i32 %144, %104
  %146 = icmp ne i32 %104, 0
  %147 = and i1 %146, %145
  br i1 %147, label %148, label %152

148:                                              ; preds = %141
  %149 = icmp eq i32 %144, 0
  %150 = select i1 %149, i32 %105, i32 %144
  %151 = tail call ptr @convert_modes(i32 noundef %104, i32 noundef %150, ptr noundef nonnull %3, i32 noundef %5) #16
  br label %152

152:                                              ; preds = %141, %148, %139
  %153 = phi ptr [ %151, %148 ], [ %3, %141 ], [ null, %139 ]
  %154 = getelementptr inbounds %struct.insn_operand_data, ptr %40, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !209
  %156 = tail call i32 %155(ptr noundef %126, i32 noundef %43) #16
  %157 = icmp eq i32 %156, 0
  %158 = and i1 %119, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = tail call ptr @copy_to_mode_reg(i32 noundef %43, ptr noundef %126) #16
  br label %161

161:                                              ; preds = %159, %152
  %162 = phi ptr [ %160, %159 ], [ %126, %152 ]
  br i1 %127, label %192, label %163

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.insn_operand_data, ptr %40, i64 2
  %165 = load ptr, ptr %164, align 8, !tbaa !209
  %166 = tail call i32 %165(ptr noundef %140, i32 noundef %67) #16
  %167 = icmp eq i32 %166, 0
  %168 = icmp ne i32 %67, 0
  %169 = select i1 %167, i1 %168, i1 false
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = tail call ptr @copy_to_mode_reg(i32 noundef %67, ptr noundef %140) #16
  br label %172

172:                                              ; preds = %170, %163
  %173 = phi ptr [ %171, %170 ], [ %140, %163 ]
  br i1 %98, label %188, label %174

174:                                              ; preds = %172
  %175 = getelementptr inbounds %struct.insn_operand_data, ptr %40, i64 3
  %176 = load ptr, ptr %175, align 8, !tbaa !209
  %177 = tail call i32 %176(ptr noundef %153, i32 noundef %104) #16
  %178 = icmp eq i32 %177, 0
  %179 = icmp ne i32 %104, 0
  %180 = select i1 %178, i1 %179, i1 false
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = tail call ptr @copy_to_mode_reg(i32 noundef %104, ptr noundef %153) #16
  br label %183

183:                                              ; preds = %181, %174
  %184 = phi ptr [ %182, %181 ], [ %153, %174 ]
  %185 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %38, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !211
  %187 = tail call ptr (ptr, ...) %186(ptr noundef %114, ptr noundef %162, ptr noundef %173, ptr noundef %184) #16
  br label %211

188:                                              ; preds = %172
  %189 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %38, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !211
  %191 = tail call ptr (ptr, ...) %190(ptr noundef %114, ptr noundef %162, ptr noundef %173) #16
  br label %211

192:                                              ; preds = %161
  br i1 %98, label %207, label %193

193:                                              ; preds = %192
  %194 = getelementptr inbounds %struct.insn_operand_data, ptr %40, i64 2
  %195 = load ptr, ptr %194, align 8, !tbaa !209
  %196 = tail call i32 %195(ptr noundef %153, i32 noundef %104) #16
  %197 = icmp eq i32 %196, 0
  %198 = icmp ne i32 %104, 0
  %199 = select i1 %197, i1 %198, i1 false
  br i1 %199, label %200, label %202

200:                                              ; preds = %193
  %201 = tail call ptr @copy_to_mode_reg(i32 noundef %104, ptr noundef %153) #16
  br label %202

202:                                              ; preds = %200, %193
  %203 = phi ptr [ %201, %200 ], [ %153, %193 ]
  %204 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %38, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !211
  %206 = tail call ptr (ptr, ...) %205(ptr noundef %114, ptr noundef %162, ptr noundef %203) #16
  br label %211

207:                                              ; preds = %192
  %208 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %38, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !211
  %210 = tail call ptr (ptr, ...) %209(ptr noundef %114, ptr noundef %162) #16
  br label %211

211:                                              ; preds = %202, %207, %183, %188
  %212 = phi ptr [ %187, %183 ], [ %191, %188 ], [ %206, %202 ], [ %210, %207 ]
  %213 = tail call ptr @emit_insn(ptr noundef %212) #16
  ret ptr %114
}

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @convert_modes(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_to_mode_reg(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_ternary_op(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 !prof !174 {
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds %struct.optab_d, ptr %1, i64 0, i32 4, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !203
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !205
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
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 684, ptr noundef nonnull @.str.1) #16
  br label %25

25:                                               ; preds = %7, %24
  %26 = icmp eq ptr %5, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %13, align 8, !tbaa !209
  %29 = tail call i32 %28(ptr noundef nonnull %5, i32 noundef %0) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %25
  %32 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
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
  %44 = tail call ptr @convert_modes(i32 noundef %16, i32 noundef %43, ptr noundef nonnull %2, i32 noundef %6) #16
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
  %56 = tail call ptr @convert_modes(i32 noundef %19, i32 noundef %55, ptr noundef nonnull %3, i32 noundef %6) #16
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
  %68 = tail call ptr @convert_modes(i32 noundef %22, i32 noundef %67, ptr noundef nonnull %4, i32 noundef %6) #16
  br label %69

69:                                               ; preds = %65, %57
  %70 = phi ptr [ %68, %65 ], [ %4, %57 ]
  %71 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !209
  %73 = tail call i32 %72(ptr noundef %46, i32 noundef %16) #16
  %74 = icmp eq i32 %73, 0
  %75 = and i1 %39, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = tail call ptr @copy_to_mode_reg(i32 noundef %16, ptr noundef %46) #16
  br label %78

78:                                               ; preds = %76, %69
  %79 = phi ptr [ %77, %76 ], [ %46, %69 ]
  %80 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !209
  %82 = tail call i32 %81(ptr noundef %58, i32 noundef %19) #16
  %83 = icmp eq i32 %82, 0
  %84 = and i1 %51, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = tail call ptr @copy_to_mode_reg(i32 noundef %19, ptr noundef %58) #16
  br label %87

87:                                               ; preds = %85, %78
  %88 = phi ptr [ %86, %85 ], [ %58, %78 ]
  %89 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 3
  %90 = load ptr, ptr %89, align 8, !tbaa !209
  %91 = tail call i32 %90(ptr noundef %70, i32 noundef %22) #16
  %92 = icmp eq i32 %91, 0
  %93 = and i1 %63, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = tail call ptr @copy_to_mode_reg(i32 noundef %22, ptr noundef %70) #16
  br label %96

96:                                               ; preds = %94, %87
  %97 = phi ptr [ %95, %94 ], [ %70, %87 ]
  %98 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !211
  %100 = tail call ptr (ptr, ...) %99(ptr noundef %34, ptr noundef %79, ptr noundef %88, ptr noundef %97) #16
  %101 = tail call ptr @emit_insn(ptr noundef %100) #16
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @force_expand_binop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 !prof !174 {
  %8 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %8, %4
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @emit_move_insn(ptr noundef %4, ptr noundef nonnull %8) #16
  br label %14

14:                                               ; preds = %10, %12, %7
  %15 = phi i8 [ 0, %7 ], [ 1, %12 ], [ 1, %10 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @simplify_expand_binop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !prof !174 !PGOFuncName !212 {
  %8 = load i32, ptr %2, align 8
  %9 = and i32 %8, 65535
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !213
  %13 = icmp eq i32 %12, 9
  br i1 %13, label %14, label %25

14:                                               ; preds = %7
  %15 = load i32, ptr %3, align 8
  %16 = and i32 %15, 65535
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !213
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, ptr %1, align 8, !tbaa !214
  %23 = tail call ptr @simplify_binary_operation(i32 noundef %22, i32 noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %14, %7
  %26 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #17
  br label %27

27:                                               ; preds = %21, %25
  %28 = phi ptr [ %23, %21 ], [ %26, %25 ]
  ret ptr %28
}

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @expand_vec_shift_expr(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !174 {
  %3 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !215
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 14
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call i32 @vector_type_mode(ptr noundef nonnull %4) #16
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
  %18 = load ptr, ptr %17, align 8, !tbaa !202
  %19 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !207
  %21 = load i32, ptr %0, align 8, !tbaa !200
  switch i32 %21, label %23 [
    i32 171, label %24
    i32 170, label %22
  ]

22:                                               ; preds = %15
  br label %24

23:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 801, ptr noundef nonnull @.str.1) #16
  unreachable

24:                                               ; preds = %15, %22
  %25 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 138), %22 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 139), %15 ]
  %26 = sext i32 %16 to i64
  %27 = getelementptr inbounds %struct.optab_d, ptr %25, i64 0, i32 4, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !203
  %29 = icmp eq i32 %28, 2956
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 805, ptr noundef nonnull @.str.1) #16
  br label %31

31:                                               ; preds = %24, %30
  %32 = zext i32 %28 to i64
  %33 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %32, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !205
  %35 = getelementptr inbounds %struct.insn_operand_data, ptr %34, i64 1, i32 2
  %36 = load i16, ptr %35, align 8
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.insn_operand_data, ptr %34, i64 2, i32 2
  %39 = load i16, ptr %38, align 8
  %40 = zext i16 %39 to i32
  %41 = tail call fastcc ptr @expand_normal(ptr noundef %18) #17
  %42 = getelementptr inbounds %struct.insn_operand_data, ptr %34, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !209
  %44 = tail call i32 %43(ptr noundef %41, i32 noundef %37) #16
  %45 = icmp eq i32 %44, 0
  %46 = icmp ne i16 %36, 0
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = tail call ptr @force_reg(i32 noundef %37, ptr noundef %41) #16
  br label %50

50:                                               ; preds = %48, %31
  %51 = phi ptr [ %49, %48 ], [ %41, %31 ]
  %52 = tail call fastcc ptr @expand_normal(ptr noundef %20) #17
  %53 = getelementptr inbounds %struct.insn_operand_data, ptr %34, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !209
  %55 = tail call i32 %54(ptr noundef %52, i32 noundef %40) #16
  %56 = icmp eq i32 %55, 0
  %57 = icmp ne i16 %39, 0
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = tail call ptr @force_reg(i32 noundef %40, ptr noundef %52) #16
  br label %61

61:                                               ; preds = %59, %50
  %62 = phi ptr [ %60, %59 ], [ %52, %50 ]
  %63 = icmp eq ptr %1, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %34, align 8, !tbaa !209
  %66 = tail call i32 %65(ptr noundef nonnull %1, i32 noundef %16) #16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %61
  %69 = tail call ptr @gen_reg_rtx(i32 noundef %16) #16
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi ptr [ %1, %64 ], [ %69, %68 ]
  %72 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %32, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !211
  %74 = tail call ptr (ptr, ...) %73(ptr noundef %71, ptr noundef %51, ptr noundef %62) #16
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 826, ptr noundef nonnull @.str.1) #16
  br label %77

77:                                               ; preds = %70, %76
  %78 = tail call ptr @emit_insn(ptr noundef %74) #16
  ret ptr %71
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_normal(ptr noundef %0) unnamed_addr #0 !prof !174 !PGOFuncName !216 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_simple_binop(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 !prof !217 {
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !184
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !218

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1322, ptr noundef nonnull @.str.1) #16
  br label %13

13:                                               ; preds = %7, %12
  %14 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef %10, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #17
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_binop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 !prof !219 {
  %8 = icmp eq i32 %6, 1
  %9 = icmp eq i32 %6, 3
  %10 = or i1 %8, %9
  %11 = select i1 %10, i32 2, i32 %6, !prof !220
  %12 = tail call ptr @get_last_insn() #16
  %13 = zext i32 %0 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !195
  %16 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14)
  br i1 %16, label %17, label %23, !prof !221

17:                                               ; preds = %7
  %18 = load i32, ptr %3, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 30
  br i1 %20, label %21, label %23, !prof !222

21:                                               ; preds = %17
  %22 = tail call ptr @negate_rtx(i32 noundef %0, ptr noundef nonnull %3) #16
  br label %23

23:                                               ; preds = %21, %17, %7
  %24 = phi ptr [ %22, %21 ], [ %3, %17 ], [ %3, %7 ]
  %25 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), %21 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), %17 ], [ %1, %7 ]
  %26 = tail call ptr @get_last_insn() #16
  %27 = icmp eq i32 %6, 4
  br i1 %27, label %36, label %28, !prof !223

28:                                               ; preds = %23
  %29 = sext i32 %0 to i64
  %30 = getelementptr inbounds %struct.optab_d, ptr %25, i64 0, i32 4, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !203
  %32 = icmp eq i32 %31, 2956
  br i1 %32, label %36, label %33, !prof !223

33:                                               ; preds = %28
  %34 = tail call fastcc ptr @expand_binop_directly(i32 noundef %0, ptr noundef nonnull %25, ptr noundef %2, ptr noundef %24, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %26) #17
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %705, !prof !223

36:                                               ; preds = %33, %28, %23
  %37 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47)
  br i1 %37, label %38, label %45

38:                                               ; preds = %36
  %39 = sext i32 %0 to i64
  %40 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48, i32 4, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !203
  %42 = icmp ne i32 %41, 2956
  %43 = icmp eq i8 %15, 2
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %54, label %113

45:                                               ; preds = %36
  %46 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48)
  br i1 %46, label %47, label %88

47:                                               ; preds = %45
  %48 = sext i32 %0 to i64
  %49 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47, i32 4, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !203
  %51 = icmp ne i32 %50, 2956
  %52 = icmp eq i8 %15, 2
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %113

54:                                               ; preds = %38, %47
  %55 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48), %38 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47), %47 ]
  %56 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %57 = load i8, ptr %56, align 1, !tbaa !195
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 3
  %60 = load i32, ptr %24, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 30
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = zext nneg i32 %59 to i64
  %65 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !195
  %67 = sub nsw i64 %64, %66
  %68 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %67) #16
  br label %84

69:                                               ; preds = %54
  %70 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 53), align 8, !tbaa !224
  %71 = tail call i64 %70(i32 noundef %0) #16
  %72 = add nsw i32 %59, -1
  %73 = zext i32 %72 to i64
  %74 = icmp eq i64 %71, %73
  %75 = load i32, ptr %24, align 8
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 255
  br i1 %74, label %78, label %80

78:                                               ; preds = %69
  %79 = tail call ptr @negate_rtx(i32 noundef %77, ptr noundef nonnull %24) #16
  br label %84

80:                                               ; preds = %69
  %81 = zext nneg i32 %59 to i64
  %82 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %81) #16
  %83 = tail call ptr @expand_binop(i32 noundef %77, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %82, ptr noundef nonnull %24, ptr noundef null, i32 noundef %5, i32 noundef 0) #17
  br label %84

84:                                               ; preds = %78, %80, %63
  %85 = phi ptr [ %68, %63 ], [ %79, %78 ], [ %83, %80 ]
  %86 = tail call fastcc ptr @expand_binop_directly(i32 noundef %0, ptr noundef nonnull %55, ptr noundef %2, ptr noundef %85, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %26) #17
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %705

88:                                               ; preds = %84, %45
  %89 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16)
  br i1 %89, label %90, label %113

90:                                               ; preds = %88
  %91 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %13
  %92 = load i8, ptr %91, align 1, !tbaa !195
  %93 = zext i8 %92 to i32
  %94 = icmp eq i8 %92, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %90
  %96 = icmp eq i32 %5, 0
  %97 = select i1 %96, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4)
  %98 = zext i8 %92 to i64
  %99 = getelementptr inbounds [87 x %struct.optab_handlers], ptr %97, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !203
  %101 = icmp eq i32 %100, 2956
  br i1 %101, label %113, label %102

102:                                              ; preds = %95
  %103 = select i1 %96, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21)
  %104 = tail call ptr @expand_binop(i32 noundef %93, ptr noundef nonnull %103, ptr noundef %2, ptr noundef %24, ptr noundef null, i32 noundef %5, i32 noundef 0) #17
  %105 = icmp eq ptr %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = icmp eq i8 %15, 2
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = load ptr, ptr @rtl_hooks, align 8, !tbaa !236
  %110 = tail call ptr %109(i32 noundef %0, ptr noundef nonnull %104) #16
  br label %705

111:                                              ; preds = %106
  %112 = tail call ptr @convert_to_mode(i32 noundef %0, ptr noundef nonnull %104, i32 noundef %5) #16
  br label %705

113:                                              ; preds = %38, %47, %102, %95, %90, %88
  %114 = phi i1 [ true, %102 ], [ true, %95 ], [ true, %90 ], [ false, %88 ], [ false, %47 ], [ false, %38 ]
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
  br i1 %125, label %126, label %195

126:                                              ; preds = %113
  %127 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %13
  %128 = load i8, ptr %127, align 1, !tbaa !195
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %195, label %130

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
  %142 = or i1 %141, %114
  %143 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44)
  %144 = select i1 %142, i1 true, i1 %143
  %145 = and i1 %115, %144
  %146 = trunc i32 %5 to i8
  %147 = icmp ne ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44)
  %148 = select i1 %145, i1 %147, i1 false
  %149 = zext i1 %148 to i32
  br label %150

150:                                              ; preds = %130, %191
  %151 = phi i8 [ %128, %130 ], [ %193, %191 ]
  %152 = zext i8 %151 to i32
  %153 = zext i8 %151 to i64
  %154 = getelementptr inbounds %struct.optab_d, ptr %25, i64 0, i32 4, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !203
  %156 = icmp eq i32 %155, 2956
  br i1 %156, label %157, label %167

157:                                              ; preds = %150
  br i1 %114, label %158, label %191

158:                                              ; preds = %157
  %159 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %153
  %160 = load i8, ptr %159, align 1, !tbaa !195
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %191, label %162

162:                                              ; preds = %158
  %163 = zext i8 %160 to i64
  %164 = getelementptr inbounds [87 x %struct.optab_handlers], ptr %132, i64 0, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !203
  %166 = icmp eq i32 %165, 2956
  br i1 %166, label %191, label %167

167:                                              ; preds = %162, %150
  br i1 %145, label %168, label %172

168:                                              ; preds = %167
  %169 = tail call fastcc ptr @avoid_expensive_constant(i32 noundef %0, ptr noundef nonnull %25, ptr noundef %2, i8 noundef zeroext %146) #17
  br i1 %143, label %172, label %170

170:                                              ; preds = %168
  %171 = tail call fastcc ptr @avoid_expensive_constant(i32 noundef %0, ptr noundef %25, ptr noundef %24, i8 noundef zeroext %146) #17
  br label %172

172:                                              ; preds = %168, %170, %167
  %173 = phi i32 [ 1, %170 ], [ 1, %168 ], [ 0, %167 ]
  %174 = phi ptr [ %171, %170 ], [ %24, %168 ], [ %24, %167 ]
  %175 = phi ptr [ %169, %170 ], [ %169, %168 ], [ %2, %167 ]
  %176 = tail call fastcc ptr @widen_operand(ptr noundef %175, i32 noundef %152, i32 noundef %0, i32 noundef %5, i32 noundef %173) #17
  %177 = tail call fastcc ptr @widen_operand(ptr noundef %174, i32 noundef %152, i32 noundef %0, i32 noundef %5, i32 noundef %149) #17
  %178 = tail call ptr @expand_binop(i32 noundef %152, ptr noundef %25, ptr noundef %176, ptr noundef %177, ptr noundef null, i32 noundef %5, i32 noundef 0) #17
  %179 = icmp eq ptr %178, null
  br i1 %179, label %190, label %180

180:                                              ; preds = %172
  br i1 %115, label %187, label %181

181:                                              ; preds = %180
  %182 = icmp eq ptr %4, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %181
  %184 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi ptr [ %184, %183 ], [ %4, %181 ]
  tail call void @convert_move(ptr noundef %186, ptr noundef nonnull %178, i32 noundef 0) #16
  br label %705

187:                                              ; preds = %180
  %188 = load ptr, ptr @rtl_hooks, align 8, !tbaa !236
  %189 = tail call ptr %188(i32 noundef %0, ptr noundef nonnull %178) #16
  br label %705

190:                                              ; preds = %172
  tail call void @delete_insns_since(ptr noundef %26) #16
  br label %191

191:                                              ; preds = %190, %157, %158, %162
  %192 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %153
  %193 = load i8, ptr %192, align 1, !tbaa !195
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %150, !llvm.loop !238

195:                                              ; preds = %191, %126, %113
  %196 = tail call fastcc zeroext i8 @commutative_optab_p(ptr noundef %25) #17, !range !240
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %195
  %199 = tail call fastcc zeroext i8 @swap_commutative_operands_with_target(ptr noundef %4, ptr noundef %2, ptr noundef %24) #17
  %200 = icmp eq i8 %199, 0
  %201 = select i1 %200, ptr %24, ptr %2
  %202 = select i1 %200, ptr %2, ptr %24
  br label %203

203:                                              ; preds = %198, %195
  %204 = phi ptr [ %24, %195 ], [ %201, %198 ]
  %205 = phi ptr [ %2, %195 ], [ %202, %198 ]
  %206 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41)
  %207 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42)
  %208 = select i1 %206, i1 true, i1 %207
  %209 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43)
  %210 = select i1 %208, i1 true, i1 %209
  %211 = and i1 %115, %210
  br i1 %211, label %212, label %261

212:                                              ; preds = %203
  %213 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %214 = load i8, ptr %213, align 1, !tbaa !195
  %215 = icmp ugt i8 %214, 4
  br i1 %215, label %216, label %261

216:                                              ; preds = %212
  %217 = load i32, ptr @word_mode, align 4, !tbaa !213
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.optab_d, ptr %25, i64 0, i32 4, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !203
  %221 = icmp eq i32 %220, 2956
  br i1 %221, label %261, label %222

222:                                              ; preds = %216
  %223 = icmp eq ptr %4, null
  %224 = icmp eq ptr %205, %4
  %225 = select i1 %223, i1 true, i1 %224
  %226 = icmp eq ptr %204, %4
  %227 = select i1 %225, i1 true, i1 %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %222
  %229 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %230

230:                                              ; preds = %222, %228
  %231 = phi ptr [ %229, %228 ], [ %4, %222 ]
  tail call void @start_sequence() #16
  %232 = load i8, ptr %213, align 1, !tbaa !195
  %233 = icmp ult i8 %232, 4
  br i1 %233, label %252, label %234

234:                                              ; preds = %230, %246
  %235 = phi i32 [ %247, %246 ], [ 0, %230 ]
  %236 = tail call ptr @operand_subword(ptr noundef %231, i32 noundef %235, i32 noundef 1, i32 noundef %0) #16
  %237 = load i32, ptr @word_mode, align 4, !tbaa !213
  %238 = tail call ptr @operand_subword_force(ptr noundef %205, i32 noundef %235, i32 noundef %0) #16
  %239 = tail call ptr @operand_subword_force(ptr noundef %204, i32 noundef %235, i32 noundef %0) #16
  %240 = tail call ptr @expand_binop(i32 noundef %237, ptr noundef %25, ptr noundef %238, ptr noundef %239, ptr noundef %236, i32 noundef %5, i32 noundef %11) #17
  %241 = icmp eq ptr %240, null
  br i1 %241, label %252, label %242

242:                                              ; preds = %234
  %243 = icmp eq ptr %236, %240
  br i1 %243, label %246, label %244

244:                                              ; preds = %242
  %245 = tail call ptr @emit_move_insn(ptr noundef %236, ptr noundef nonnull %240) #16
  br label %246

246:                                              ; preds = %244, %242
  %247 = add nuw nsw i32 %235, 1
  %248 = load i8, ptr %213, align 1, !tbaa !195
  %249 = lshr i8 %248, 2
  %250 = zext nneg i8 %249 to i32
  %251 = icmp ult i32 %247, %250
  br i1 %251, label %234, label %252, !llvm.loop !241

252:                                              ; preds = %246, %234, %230
  %253 = phi i32 [ 0, %230 ], [ %235, %234 ], [ %247, %246 ]
  %254 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %255 = load i8, ptr %213, align 1, !tbaa !195
  %256 = lshr i8 %255, 2
  %257 = zext nneg i8 %256 to i32
  %258 = icmp eq i32 %253, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %252
  %260 = tail call ptr @emit_insn(ptr noundef %254) #16
  br label %705

261:                                              ; preds = %252, %203, %216, %212
  %262 = phi ptr [ %4, %216 ], [ %4, %212 ], [ %4, %203 ], [ %231, %252 ]
  %263 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45)
  %264 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44)
  %265 = select i1 %263, i1 true, i1 %264
  %266 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46)
  %267 = select i1 %265, i1 true, i1 %266
  %268 = and i1 %115, %267
  br i1 %268, label %269, label %354

269:                                              ; preds = %261
  %270 = load i32, ptr %204, align 8
  %271 = and i32 %270, 65535
  %272 = icmp eq i32 %271, 30
  br i1 %272, label %276, label %273

273:                                              ; preds = %269
  %274 = tail call zeroext i8 @optimize_insn_for_speed_p() #16
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %354, label %276

276:                                              ; preds = %273, %269
  %277 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %278 = load i8, ptr %277, align 1, !tbaa !195
  %279 = icmp eq i8 %278, 8
  br i1 %279, label %280, label %354

280:                                              ; preds = %276
  %281 = load i32, ptr @word_mode, align 4, !tbaa !213
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.optab_d, ptr %25, i64 0, i32 4, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !203
  %285 = icmp eq i32 %284, 2956
  br i1 %285, label %354, label %286

286:                                              ; preds = %280
  %287 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 %282
  %288 = load i32, ptr %287, align 4, !tbaa !203
  %289 = icmp eq i32 %288, 2956
  br i1 %289, label %354, label %290

290:                                              ; preds = %286
  %291 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 %282
  %292 = load i32, ptr %291, align 4, !tbaa !203
  %293 = icmp eq i32 %292, 2956
  br i1 %293, label %354, label %294

294:                                              ; preds = %290
  %295 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 53), align 8, !tbaa !224
  %296 = tail call i64 %295(i32 noundef %0) #16
  %297 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 53), align 8, !tbaa !224
  %298 = load i32, ptr @word_mode, align 4, !tbaa !213
  %299 = tail call i64 %297(i32 noundef %298) #16
  %300 = load i32, ptr %204, align 8
  %301 = lshr i32 %300, 16
  %302 = and i32 %301, 255
  %303 = icmp eq i32 %302, 0
  %304 = load i32, ptr @word_mode, align 4
  %305 = select i1 %303, i32 %304, i32 %302
  %306 = icmp eq i64 %296, 0
  br i1 %306, label %321, label %307

307:                                              ; preds = %294
  %308 = and i32 %300, 65535
  %309 = icmp eq i32 %308, 30
  br i1 %309, label %310, label %315

310:                                              ; preds = %307
  %311 = getelementptr inbounds %struct.rtx_def, ptr %204, i64 0, i32 1
  %312 = load i64, ptr %311, align 8, !tbaa !195
  %313 = and i64 %312, %296
  %314 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %313) #16
  br label %315

315:                                              ; preds = %310, %307
  %316 = phi ptr [ %314, %310 ], [ %204, %307 ]
  %317 = sext i32 %305 to i64
  %318 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !184
  %320 = icmp eq ptr %316, %319
  br i1 %320, label %705, label %326

321:                                              ; preds = %294
  %322 = sext i32 %305 to i64
  %323 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %322
  %324 = load ptr, ptr %323, align 8, !tbaa !184
  %325 = icmp eq ptr %204, %324
  br i1 %325, label %705, label %330

326:                                              ; preds = %315
  %327 = icmp eq i64 %299, 31
  %328 = icmp eq i64 %296, 63
  %329 = select i1 %327, i1 %328, i1 false
  br i1 %329, label %330, label %354

330:                                              ; preds = %321, %326
  %331 = phi ptr [ %316, %326 ], [ %204, %321 ]
  %332 = icmp eq ptr %262, null
  %333 = icmp eq ptr %262, %205
  %334 = select i1 %332, i1 true, i1 %333
  %335 = icmp eq ptr %262, %331
  %336 = or i1 %334, %335
  br i1 %336, label %337, label %339

337:                                              ; preds = %330
  %338 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %339

339:                                              ; preds = %330, %337
  %340 = phi ptr [ %338, %337 ], [ %262, %330 ]
  tail call void @start_sequence() #16
  %341 = xor i1 %264, true
  %342 = zext i1 %341 to i32
  %343 = tail call ptr @operand_subword(ptr noundef %340, i32 noundef %342, i32 noundef 1, i32 noundef %0) #16
  %344 = zext i1 %264 to i32
  %345 = tail call ptr @operand_subword(ptr noundef %340, i32 noundef %344, i32 noundef 1, i32 noundef %0) #16
  %346 = tail call ptr @operand_subword_force(ptr noundef %205, i32 noundef %342, i32 noundef %0) #16
  %347 = tail call ptr @operand_subword_force(ptr noundef %205, i32 noundef %344, i32 noundef %0) #16
  %348 = tail call fastcc zeroext i8 @expand_doubleword_shift(i32 noundef %305, ptr noundef nonnull %25, ptr noundef %346, ptr noundef %347, ptr noundef %331, ptr noundef %343, ptr noundef %345, i32 noundef %5, i32 noundef %11, i64 noundef %299) #17, !range !240
  %349 = icmp eq i8 %348, 0
  br i1 %349, label %353, label %350

350:                                              ; preds = %339
  %351 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %352 = tail call ptr @emit_insn(ptr noundef %351) #16
  br label %705

353:                                              ; preds = %339
  tail call void @end_sequence() #16
  br label %354

354:                                              ; preds = %326, %353, %261, %290, %286, %280, %276, %273
  %355 = phi ptr [ %262, %290 ], [ %262, %286 ], [ %262, %280 ], [ %262, %276 ], [ %262, %273 ], [ %262, %261 ], [ %262, %326 ], [ %340, %353 ]
  %356 = phi ptr [ %204, %290 ], [ %204, %286 ], [ %204, %280 ], [ %204, %276 ], [ %204, %273 ], [ %204, %261 ], [ %316, %326 ], [ %331, %353 ]
  %357 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48)
  %358 = select i1 %37, i1 true, i1 %357
  %359 = and i1 %115, %358
  br i1 %359, label %360, label %470

360:                                              ; preds = %354
  %361 = load i32, ptr %356, align 8
  %362 = and i32 %361, 65535
  %363 = icmp eq i32 %362, 30
  br i1 %363, label %364, label %470

364:                                              ; preds = %360
  %365 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %366 = load i8, ptr %365, align 1, !tbaa !195
  %367 = icmp eq i8 %366, 8
  br i1 %367, label %368, label %470

368:                                              ; preds = %364
  %369 = load i32, ptr @word_mode, align 4, !tbaa !213
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 %370
  %372 = load i32, ptr %371, align 4, !tbaa !203
  %373 = icmp eq i32 %372, 2956
  br i1 %373, label %470, label %374

374:                                              ; preds = %368
  %375 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 4, i64 %370
  %376 = load i32, ptr %375, align 4, !tbaa !203
  %377 = icmp eq i32 %376, 2956
  br i1 %377, label %470, label %378

378:                                              ; preds = %374
  %379 = icmp eq ptr %355, null
  %380 = icmp eq ptr %355, %205
  %381 = select i1 %379, i1 true, i1 %380
  %382 = icmp eq ptr %355, %356
  %383 = select i1 %381, i1 true, i1 %382
  br i1 %383, label %388, label %384

384:                                              ; preds = %378
  %385 = load i32, ptr %355, align 8
  %386 = and i32 %385, 65535
  %387 = icmp eq i32 %386, 37
  br i1 %387, label %390, label %388

388:                                              ; preds = %384, %378
  %389 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %390

390:                                              ; preds = %388, %384
  %391 = phi ptr [ %389, %388 ], [ %355, %384 ]
  tail call void @start_sequence() #16
  %392 = getelementptr inbounds %struct.rtx_def, ptr %356, i64 0, i32 1
  %393 = load i64, ptr %392, align 8, !tbaa !195
  %394 = trunc i64 %393 to i32
  %395 = zext i1 %37 to i32
  %396 = xor i32 %395, 1
  %397 = tail call ptr @operand_subword(ptr noundef %391, i32 noundef %396, i32 noundef 1, i32 noundef %0) #16
  %398 = tail call ptr @operand_subword(ptr noundef %391, i32 noundef %395, i32 noundef 1, i32 noundef %0) #16
  %399 = tail call ptr @operand_subword_force(ptr noundef %205, i32 noundef %396, i32 noundef %0) #16
  %400 = tail call ptr @operand_subword_force(ptr noundef %205, i32 noundef %395, i32 noundef %0) #16
  %401 = icmp eq i32 %394, 32
  br i1 %401, label %402, label %406

402:                                              ; preds = %390
  %403 = tail call ptr @emit_move_insn(ptr noundef %397, ptr noundef %400) #16
  %404 = tail call ptr @emit_move_insn(ptr noundef %398, ptr noundef %399) #16
  %405 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !184
  br label %464

406:                                              ; preds = %390
  %407 = icmp slt i32 %394, 32
  %408 = xor i1 %37, %407
  %409 = select i1 %408, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44)
  %410 = select i1 %408, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45)
  %411 = icmp sgt i32 %394, 32
  br i1 %411, label %412, label %418

412:                                              ; preds = %406
  %413 = add i64 %393, 4294967264
  %414 = and i64 %413, 4294967295
  %415 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %414) #16
  %416 = shl i64 %393, 32
  %417 = sub i64 274877906944, %416
  br label %423

418:                                              ; preds = %406
  %419 = shl i64 %393, 32
  %420 = sub i64 137438953472, %419
  %421 = ashr exact i64 %420, 32
  %422 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %421) #16
  br label %423

423:                                              ; preds = %418, %412
  %424 = phi i64 [ %419, %418 ], [ %417, %412 ]
  %425 = phi ptr [ %422, %418 ], [ %415, %412 ]
  %426 = ashr exact i64 %424, 32
  %427 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %426) #16
  %428 = load i32, ptr @word_mode, align 4, !tbaa !213
  %429 = tail call ptr @expand_binop(i32 noundef %428, ptr noundef nonnull %410, ptr noundef %399, ptr noundef %425, ptr noundef null, i32 noundef %5, i32 noundef %11) #17
  %430 = load i32, ptr @word_mode, align 4, !tbaa !213
  %431 = tail call ptr @expand_binop(i32 noundef %430, ptr noundef nonnull %409, ptr noundef %400, ptr noundef %427, ptr noundef null, i32 noundef %5, i32 noundef %11) #17
  %432 = icmp ne ptr %429, null
  %433 = icmp ne ptr %431, null
  %434 = select i1 %432, i1 %433, i1 false
  br i1 %434, label %435, label %443

435:                                              ; preds = %423
  %436 = load i32, ptr @word_mode, align 4, !tbaa !213
  %437 = tail call ptr @expand_binop(i32 noundef %436, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef nonnull %429, ptr noundef nonnull %431, ptr noundef %398, i32 noundef %5, i32 noundef %11) #17
  %438 = icmp ne ptr %437, null
  %439 = icmp ne ptr %437, %398
  %440 = select i1 %438, i1 %439, i1 false
  br i1 %440, label %441, label %443

441:                                              ; preds = %435
  %442 = tail call ptr @emit_move_insn(ptr noundef %398, ptr noundef nonnull %437) #16
  br label %443

443:                                              ; preds = %423, %441, %435
  %444 = phi i1 [ true, %441 ], [ %438, %435 ], [ false, %423 ]
  %445 = phi ptr [ %437, %441 ], [ %437, %435 ], [ null, %423 ]
  %446 = load i32, ptr @word_mode, align 4, !tbaa !213
  %447 = tail call ptr @expand_binop(i32 noundef %446, ptr noundef nonnull %410, ptr noundef %400, ptr noundef %425, ptr noundef null, i32 noundef %5, i32 noundef %11) #17
  %448 = load i32, ptr @word_mode, align 4, !tbaa !213
  %449 = tail call ptr @expand_binop(i32 noundef %448, ptr noundef nonnull %409, ptr noundef %399, ptr noundef %427, ptr noundef null, i32 noundef %5, i32 noundef %11) #17
  %450 = icmp ne ptr %447, null
  %451 = select i1 %444, i1 %450, i1 false
  %452 = icmp ne ptr %449, null
  %453 = select i1 %451, i1 %452, i1 false
  br i1 %453, label %454, label %457

454:                                              ; preds = %443
  %455 = load i32, ptr @word_mode, align 4, !tbaa !213
  %456 = tail call ptr @expand_binop(i32 noundef %455, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef nonnull %447, ptr noundef nonnull %449, ptr noundef %397, i32 noundef %5, i32 noundef %11) #17
  br label %457

457:                                              ; preds = %454, %443
  %458 = phi ptr [ %456, %454 ], [ %445, %443 ]
  %459 = icmp eq ptr %458, null
  %460 = icmp eq ptr %458, %397
  %461 = select i1 %459, i1 true, i1 %460
  br i1 %461, label %464, label %462

462:                                              ; preds = %457
  %463 = tail call ptr @emit_move_insn(ptr noundef %397, ptr noundef nonnull %458) #16
  br label %464

464:                                              ; preds = %457, %462, %402
  %465 = phi ptr [ %405, %402 ], [ %458, %462 ], [ %458, %457 ]
  %466 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %467 = icmp eq ptr %465, null
  br i1 %467, label %470, label %468

468:                                              ; preds = %464
  %469 = tail call ptr @emit_insn(ptr noundef %466) #16
  br label %705

470:                                              ; preds = %464, %354, %374, %368, %364, %360
  %471 = phi ptr [ %355, %374 ], [ %355, %368 ], [ %355, %364 ], [ %355, %360 ], [ %355, %354 ], [ %391, %464 ]
  %472 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12)
  %473 = icmp eq ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14)
  %474 = select i1 %472, i1 true, i1 %473
  %475 = and i1 %115, %474
  br i1 %475, label %476, label %575

476:                                              ; preds = %470
  %477 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %478 = load i8, ptr %477, align 1, !tbaa !195
  %479 = icmp ugt i8 %478, 7
  br i1 %479, label %480, label %575

480:                                              ; preds = %476
  %481 = load i32, ptr @word_mode, align 4, !tbaa !213
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.optab_d, ptr %25, i64 0, i32 4, i64 %482
  %484 = load i32, ptr %483, align 4, !tbaa !203
  %485 = icmp eq i32 %484, 2956
  br i1 %485, label %575, label %486

486:                                              ; preds = %480
  %487 = lshr i8 %478, 2
  %488 = zext nneg i8 %487 to i32
  %489 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %205) #16
  %490 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %356) #16
  %491 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  %492 = icmp eq ptr %471, null
  br i1 %492, label %497, label %493

493:                                              ; preds = %486
  %494 = load i32, ptr %471, align 8
  %495 = and i32 %494, 65535
  %496 = icmp eq i32 %495, 37
  br i1 %496, label %499, label %497

497:                                              ; preds = %493, %486
  %498 = load i32, ptr %491, align 8
  br label %499

499:                                              ; preds = %497, %493
  %500 = phi i32 [ %498, %497 ], [ %494, %493 ]
  %501 = phi ptr [ %491, %497 ], [ %471, %493 ]
  %502 = and i32 %500, 65535
  %503 = icmp eq i32 %502, 37
  br i1 %503, label %504, label %506

504:                                              ; preds = %499
  %505 = tail call ptr @emit_clobber(ptr noundef %491) #16
  br label %506

506:                                              ; preds = %499, %504
  %507 = select i1 %472, i32 85, i32 83
  br label %508

508:                                              ; preds = %506, %550
  %509 = phi ptr [ null, %506 ], [ %551, %550 ]
  %510 = phi i32 [ 0, %506 ], [ %518, %550 ]
  %511 = tail call ptr @operand_subword(ptr noundef %491, i32 noundef %510, i32 noundef 1, i32 noundef %0) #16
  %512 = tail call ptr @operand_subword_force(ptr noundef %489, i32 noundef %510, i32 noundef %0) #16
  %513 = tail call ptr @operand_subword_force(ptr noundef %490, i32 noundef %510, i32 noundef %0) #16
  %514 = load i32, ptr @word_mode, align 4, !tbaa !213
  %515 = tail call ptr @expand_binop(i32 noundef %514, ptr noundef %25, ptr noundef %512, ptr noundef %513, ptr noundef %511, i32 noundef %5, i32 noundef %11) #17
  %516 = icmp eq ptr %515, null
  br i1 %516, label %553, label %517

517:                                              ; preds = %508
  %518 = add nuw nsw i32 %510, 1
  %519 = icmp ult i32 %518, %488
  br i1 %519, label %520, label %526

520:                                              ; preds = %517
  %521 = load i32, ptr @word_mode, align 4, !tbaa !213
  %522 = tail call ptr @gen_reg_rtx(i32 noundef %521) #16
  %523 = load i32, ptr @word_mode, align 4, !tbaa !213
  %524 = tail call ptr @emit_store_flag_force(ptr noundef %522, i32 noundef %507, ptr noundef nonnull %515, ptr noundef %512, i32 noundef %523, i32 noundef 1, i32 noundef 1) #16
  %525 = icmp eq i32 %510, 0
  br i1 %525, label %545, label %531

526:                                              ; preds = %517
  %527 = icmp eq i32 %510, 0
  br i1 %527, label %545, label %528

528:                                              ; preds = %526
  %529 = load i32, ptr @word_mode, align 4, !tbaa !213
  %530 = tail call ptr @expand_binop(i32 noundef %529, ptr noundef %25, ptr noundef nonnull %515, ptr noundef %509, ptr noundef null, i32 noundef 1, i32 noundef %11) #17
  br label %541

531:                                              ; preds = %520
  %532 = load i32, ptr @word_mode, align 4, !tbaa !213
  %533 = tail call ptr @expand_binop(i32 noundef %532, ptr noundef %25, ptr noundef nonnull %515, ptr noundef %509, ptr noundef null, i32 noundef 1, i32 noundef %11) #17
  %534 = load i32, ptr @word_mode, align 4, !tbaa !213
  %535 = tail call ptr @gen_reg_rtx(i32 noundef %534) #16
  %536 = load i32, ptr @word_mode, align 4, !tbaa !213
  %537 = tail call ptr @emit_store_flag_force(ptr noundef %535, i32 noundef %507, ptr noundef %533, ptr noundef nonnull %515, i32 noundef %536, i32 noundef 1, i32 noundef 1) #16
  %538 = load i32, ptr @word_mode, align 4, !tbaa !213
  %539 = tail call ptr @expand_binop(i32 noundef %538, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %524, ptr noundef %537, ptr noundef %524, i32 noundef 0, i32 noundef %11) #17
  %540 = icmp eq ptr %539, null
  br i1 %540, label %553, label %541

541:                                              ; preds = %531, %528
  %542 = phi ptr [ %533, %531 ], [ %530, %528 ]
  %543 = phi ptr [ %539, %531 ], [ %509, %528 ]
  %544 = tail call ptr @emit_move_insn(ptr noundef %511, ptr noundef %542) #16
  br label %550

545:                                              ; preds = %526, %520
  %546 = phi ptr [ %509, %526 ], [ %524, %520 ]
  %547 = icmp eq ptr %515, %511
  br i1 %547, label %550, label %548

548:                                              ; preds = %545
  %549 = tail call ptr @emit_move_insn(ptr noundef %511, ptr noundef nonnull %515) #16
  br label %550

550:                                              ; preds = %545, %548, %541
  %551 = phi ptr [ %543, %541 ], [ %546, %545 ], [ %546, %548 ]
  %552 = icmp eq i32 %518, %488
  br i1 %552, label %553, label %508, !llvm.loop !242

553:                                              ; preds = %550, %508, %531
  %554 = phi i32 [ %488, %550 ], [ %510, %508 ], [ %510, %531 ]
  %555 = load i8, ptr %477, align 1, !tbaa !195
  %556 = lshr i8 %555, 2
  %557 = zext nneg i8 %556 to i32
  %558 = icmp eq i32 %554, %557
  br i1 %558, label %559, label %574

559:                                              ; preds = %553
  %560 = sext i32 %0 to i64
  %561 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %560
  %562 = load i32, ptr %561, align 4, !tbaa !203
  %563 = icmp eq i32 %562, 2956
  br i1 %563, label %564, label %567

564:                                              ; preds = %559
  %565 = tail call i32 @rtx_equal_p(ptr noundef nonnull %501, ptr noundef %491) #16
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %567, label %705

567:                                              ; preds = %564, %559
  %568 = tail call ptr @emit_move_insn(ptr noundef nonnull %501, ptr noundef %491) #16
  %569 = load i32, ptr %25, align 8, !tbaa !214
  %570 = tail call ptr @copy_rtx(ptr noundef %489) #16
  %571 = tail call ptr @copy_rtx(ptr noundef %490) #16
  %572 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %569, i32 noundef %0, ptr noundef %570, ptr noundef %571) #16
  %573 = tail call ptr @set_unique_reg_note(ptr noundef %568, i32 noundef 4, ptr noundef %572) #16
  br label %705

574:                                              ; preds = %553
  tail call void @delete_insns_since(ptr noundef %26) #16
  br label %575

575:                                              ; preds = %574, %470, %480, %476
  %576 = phi ptr [ %501, %574 ], [ %471, %480 ], [ %471, %476 ], [ %471, %470 ]
  %577 = and i1 %115, %114
  br i1 %577, label %578, label %622

578:                                              ; preds = %575
  %579 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %580 = load i8, ptr %579, align 1, !tbaa !195
  %581 = icmp eq i8 %580, 8
  br i1 %581, label %582, label %622

582:                                              ; preds = %578
  %583 = load i32, ptr @word_mode, align 4, !tbaa !213
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 4, i64 %584
  %586 = load i32, ptr %585, align 4, !tbaa !203
  %587 = icmp eq i32 %586, 2956
  br i1 %587, label %622, label %588

588:                                              ; preds = %582
  %589 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 %584
  %590 = load i32, ptr %589, align 4, !tbaa !203
  %591 = icmp eq i32 %590, 2956
  br i1 %591, label %622, label %592

592:                                              ; preds = %588
  %593 = sext i32 %0 to i64
  %594 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4, i64 %593
  %595 = load i32, ptr %594, align 4, !tbaa !203
  %596 = icmp eq i32 %595, 2956
  br i1 %596, label %601, label %597

597:                                              ; preds = %592
  %598 = tail call fastcc ptr @expand_doubleword_mult(i32 noundef %0, ptr noundef %205, ptr noundef %356, ptr noundef %576, i8 noundef zeroext 1, i32 noundef %6) #17
  %599 = icmp eq ptr %598, null
  br i1 %599, label %600, label %609

600:                                              ; preds = %597
  tail call void @delete_insns_since(ptr noundef %26) #16
  br label %601

601:                                              ; preds = %600, %592
  %602 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4, i64 %593
  %603 = load i32, ptr %602, align 4, !tbaa !203
  %604 = icmp eq i32 %603, 2956
  br i1 %604, label %622, label %605

605:                                              ; preds = %601
  %606 = tail call fastcc ptr @expand_doubleword_mult(i32 noundef %0, ptr noundef %205, ptr noundef %356, ptr noundef %576, i8 noundef zeroext 0, i32 noundef %6) #17
  %607 = icmp eq ptr %606, null
  br i1 %607, label %608, label %609

608:                                              ; preds = %605
  tail call void @delete_insns_since(ptr noundef %26) #16
  br label %622

609:                                              ; preds = %605, %597
  %610 = phi ptr [ %606, %605 ], [ %598, %597 ]
  %611 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %593
  %612 = load i32, ptr %611, align 4, !tbaa !203
  %613 = icmp eq i32 %612, 2956
  br i1 %613, label %705, label %614

614:                                              ; preds = %609
  %615 = icmp eq ptr %576, null
  %616 = select i1 %615, ptr %610, ptr %576
  %617 = tail call ptr @emit_move_insn(ptr noundef nonnull %616, ptr noundef nonnull %610) #16
  %618 = tail call ptr @copy_rtx(ptr noundef %205) #16
  %619 = tail call ptr @copy_rtx(ptr noundef %356) #16
  %620 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %0, ptr noundef %618, ptr noundef %619) #16
  %621 = tail call ptr @set_unique_reg_note(ptr noundef %617, i32 noundef 4, ptr noundef %620) #16
  br label %705

622:                                              ; preds = %601, %608, %588, %582, %578, %575
  %623 = tail call ptr @optab_libfunc(ptr noundef %25, i32 noundef %0) #17
  %624 = icmp eq ptr %623, null
  br i1 %624, label %651, label %625

625:                                              ; preds = %622
  switch i32 %6, label %651 [
    i32 3, label %626
    i32 1, label %626
  ]

626:                                              ; preds = %625, %625
  tail call void @start_sequence() #16
  %627 = tail call fastcc zeroext i8 @shift_optab_p(ptr noundef %25) #17, !range !240
  %628 = icmp eq i8 %627, 0
  br i1 %628, label %633, label %629

629:                                              ; preds = %626
  %630 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 9), align 8, !tbaa !243
  %631 = tail call i32 %630() #16
  %632 = tail call ptr @convert_to_mode(i32 noundef %631, ptr noundef %356, i32 noundef 1) #16
  br label %633

633:                                              ; preds = %629, %626
  %634 = phi ptr [ %632, %629 ], [ %356, %626 ]
  %635 = phi i32 [ %631, %629 ], [ %0, %626 ]
  %636 = load i32, ptr %205, align 8
  %637 = lshr i32 %636, 16
  %638 = and i32 %637, 255
  %639 = icmp eq i32 %638, 0
  %640 = icmp eq i32 %638, %0
  %641 = or i1 %639, %640
  br i1 %641, label %644, label %642

642:                                              ; preds = %633
  %643 = tail call ptr @convert_to_mode(i32 noundef %0, ptr noundef nonnull %205, i32 noundef %5) #16
  br label %644

644:                                              ; preds = %642, %633
  %645 = phi ptr [ %643, %642 ], [ %205, %633 ]
  %646 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef nonnull %623, ptr noundef null, i32 noundef 1, i32 noundef %0, i32 noundef 2, ptr noundef %645, i32 noundef %0, ptr noundef %634, i32 noundef %635) #16
  %647 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %648 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  %649 = load i32, ptr %25, align 8, !tbaa !214
  %650 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %649, i32 noundef %0, ptr noundef %645, ptr noundef %356) #16
  tail call void @emit_libcall_block(ptr noundef %647, ptr noundef %648, ptr noundef %646, ptr noundef %650) #17
  br label %705

651:                                              ; preds = %625, %622
  tail call void @delete_insns_since(ptr noundef %26) #16
  %652 = add i32 %6, -2
  %653 = icmp ult i32 %652, 3
  br i1 %653, label %655, label %654

654:                                              ; preds = %651
  tail call void @delete_insns_since(ptr noundef %12) #16
  br label %705

655:                                              ; preds = %651
  %656 = zext i1 %9 to i32
  switch i8 %15, label %704 [
    i8 11, label %657
    i8 9, label %657
    i8 8, label %657
    i8 7, label %657
    i8 6, label %657
    i8 5, label %657
    i8 4, label %657
    i8 2, label %657
  ]

657:                                              ; preds = %655, %655, %655, %655, %655, %655, %655, %655
  %658 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %13
  %659 = load i8, ptr %658, align 1, !tbaa !195
  %660 = icmp eq i8 %659, 0
  br i1 %660, label %704, label %661

661:                                              ; preds = %657
  %662 = or i1 %207, %206
  %663 = select i1 %662, i1 true, i1 %209
  %664 = or i1 %472, %663
  %665 = select i1 %664, i1 true, i1 %473
  %666 = or i1 %665, %114
  %667 = select i1 %666, i1 true, i1 %264
  %668 = and i1 %115, %667
  %669 = zext i1 %668 to i32
  %670 = icmp ne ptr %25, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44)
  %671 = select i1 %668, i1 %670, i1 false
  %672 = zext i1 %671 to i32
  br label %673

673:                                              ; preds = %661, %700
  %674 = phi i8 [ %659, %661 ], [ %702, %700 ]
  %675 = zext i8 %674 to i32
  %676 = zext i8 %674 to i64
  %677 = getelementptr inbounds %struct.optab_d, ptr %25, i64 0, i32 4, i64 %676
  %678 = load i32, ptr %677, align 4, !tbaa !203
  %679 = icmp eq i32 %678, 2956
  br i1 %679, label %680, label %684

680:                                              ; preds = %673
  br i1 %9, label %681, label %700

681:                                              ; preds = %680
  %682 = tail call ptr @optab_libfunc(ptr noundef nonnull %25, i32 noundef %675) #17
  %683 = icmp eq ptr %682, null
  br i1 %683, label %700, label %684

684:                                              ; preds = %681, %673
  %685 = tail call fastcc ptr @widen_operand(ptr noundef %205, i32 noundef %675, i32 noundef %0, i32 noundef %5, i32 noundef %669) #17
  %686 = tail call fastcc ptr @widen_operand(ptr noundef %356, i32 noundef %675, i32 noundef %0, i32 noundef %5, i32 noundef %672) #17
  %687 = tail call ptr @expand_binop(i32 noundef %675, ptr noundef nonnull %25, ptr noundef %685, ptr noundef %686, ptr noundef null, i32 noundef %5, i32 noundef %656) #17
  %688 = icmp eq ptr %687, null
  br i1 %688, label %699, label %689

689:                                              ; preds = %684
  br i1 %115, label %696, label %690

690:                                              ; preds = %689
  %691 = icmp eq ptr %576, null
  br i1 %691, label %692, label %694

692:                                              ; preds = %690
  %693 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %694

694:                                              ; preds = %692, %690
  %695 = phi ptr [ %693, %692 ], [ %576, %690 ]
  tail call void @convert_move(ptr noundef %695, ptr noundef nonnull %687, i32 noundef 0) #16
  br label %705

696:                                              ; preds = %689
  %697 = load ptr, ptr @rtl_hooks, align 8, !tbaa !236
  %698 = tail call ptr %697(i32 noundef %0, ptr noundef nonnull %687) #16
  br label %705

699:                                              ; preds = %684
  tail call void @delete_insns_since(ptr noundef %26) #16
  br label %700

700:                                              ; preds = %699, %680, %681
  %701 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %676
  %702 = load i8, ptr %701, align 1, !tbaa !195
  %703 = icmp eq i8 %702, 0
  br i1 %703, label %704, label %673, !llvm.loop !244

704:                                              ; preds = %700, %657, %655
  tail call void @delete_insns_since(ptr noundef %12) #16
  br label %705

705:                                              ; preds = %694, %696, %609, %614, %564, %567, %350, %321, %315, %185, %187, %468, %259, %33, %84, %704, %654, %644, %111, %108
  %706 = phi ptr [ %110, %108 ], [ %112, %111 ], [ %648, %644 ], [ null, %704 ], [ null, %654 ], [ %391, %468 ], [ %86, %84 ], [ %34, %33 ], [ %231, %259 ], [ %189, %187 ], [ %186, %185 ], [ %340, %350 ], [ %205, %321 ], [ %205, %315 ], [ %491, %564 ], [ %501, %567 ], [ %610, %614 ], [ %610, %609 ], [ %698, %696 ], [ %695, %694 ]
  ret ptr %706
}

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @negate_rtx(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_binop_directly(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 !prof !219 !PGOFuncName !245 {
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds %struct.optab_d, ptr %1, i64 0, i32 4, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !203
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %12, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !205
  %15 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 1, i32 2
  %16 = load i16, ptr %15, align 8
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 2, i32 2
  %19 = load i16, ptr %18, align 8
  %20 = zext i16 %19 to i32
  %21 = icmp eq ptr %4, null
  br i1 %21, label %22, label %24, !prof !246

22:                                               ; preds = %8
  %23 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %24

24:                                               ; preds = %8, %22
  %25 = phi ptr [ %23, %22 ], [ %4, %8 ]
  %26 = tail call fastcc zeroext i8 @commutative_optab_p(ptr noundef nonnull %1) #17, !range !240
  %27 = icmp eq i8 %26, 0
  %28 = trunc i32 %5 to i8
  %29 = tail call fastcc ptr @avoid_expensive_constant(i32 noundef %17, ptr noundef nonnull %1, ptr noundef %2, i8 noundef zeroext %28) #17
  %30 = tail call fastcc zeroext i8 @shift_optab_p(ptr noundef nonnull %1) #17, !range !240
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %34, !prof !247

32:                                               ; preds = %24
  %33 = tail call fastcc ptr @avoid_expensive_constant(i32 noundef %20, ptr noundef nonnull %1, ptr noundef %3, i8 noundef zeroext %28) #17
  br label %34

34:                                               ; preds = %32, %24
  %35 = phi ptr [ %3, %24 ], [ %33, %32 ]
  %36 = load i32, ptr %29, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = icmp ne i32 %38, %17
  %40 = icmp ne i16 %16, 0
  %41 = and i1 %40, %39
  br i1 %41, label %42, label %46, !prof !248

42:                                               ; preds = %34
  %43 = icmp eq i32 %38, 0
  %44 = select i1 %43, i32 %0, i32 %38, !prof !249
  %45 = tail call ptr @convert_modes(i32 noundef %17, i32 noundef %44, ptr noundef nonnull %29, i32 noundef %5) #16
  br label %46

46:                                               ; preds = %42, %34
  %47 = phi ptr [ %45, %42 ], [ %29, %34 ]
  %48 = load i32, ptr %35, align 8
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  %51 = icmp ne i32 %50, %20
  %52 = icmp ne i16 %19, 0
  %53 = and i1 %52, %51
  br i1 %53, label %54, label %58, !prof !250

54:                                               ; preds = %46
  %55 = icmp eq i32 %50, 0
  %56 = select i1 %55, i32 %0, i32 %50, !prof !251
  %57 = tail call ptr @convert_modes(i32 noundef %20, i32 noundef %56, ptr noundef nonnull %35, i32 noundef %5) #16
  br label %58

58:                                               ; preds = %54, %46
  %59 = phi ptr [ %57, %54 ], [ %35, %46 ]
  br i1 %27, label %64, label %60, !prof !252

60:                                               ; preds = %58
  %61 = tail call fastcc zeroext i8 @swap_commutative_operands_with_target(ptr noundef %4, ptr noundef %47, ptr noundef %59) #17
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63, !prof !253

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %63, %60, %58
  %65 = phi ptr [ %59, %63 ], [ %47, %60 ], [ %47, %58 ]
  %66 = phi ptr [ %47, %63 ], [ %59, %60 ], [ %59, %58 ]
  %67 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !209
  %69 = tail call i32 %68(ptr noundef %65, i32 noundef %17) #16
  %70 = icmp eq i32 %69, 0
  %71 = and i1 %40, %70
  br i1 %71, label %72, label %74, !prof !248

72:                                               ; preds = %64
  %73 = tail call ptr @copy_to_mode_reg(i32 noundef %17, ptr noundef %65) #16
  br label %74

74:                                               ; preds = %72, %64
  %75 = phi ptr [ %73, %72 ], [ %65, %64 ]
  %76 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 2
  %77 = load ptr, ptr %76, align 8, !tbaa !209
  %78 = tail call i32 %77(ptr noundef %66, i32 noundef %20) #16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83, !prof !223

80:                                               ; preds = %74
  br i1 %52, label %81, label %83

81:                                               ; preds = %80
  %82 = tail call ptr @copy_to_mode_reg(i32 noundef %20, ptr noundef %66) #16
  br label %83

83:                                               ; preds = %81, %80, %74
  %84 = phi ptr [ %66, %74 ], [ %82, %81 ], [ %66, %80 ]
  %85 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 153)
  %86 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 154)
  %87 = select i1 %85, i1 true, i1 %86
  %88 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 155)
  %89 = select i1 %87, i1 true, i1 %88
  %90 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 157)
  %91 = select i1 %89, i1 true, i1 %90
  %92 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 156)
  %93 = select i1 %91, i1 true, i1 %92
  br i1 %93, label %94, label %108, !prof !254

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 0, i32 2
  %96 = load i16, ptr %95, align 8
  %97 = zext i16 %96 to i32
  %98 = zext i16 %96 to i64
  %99 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !195
  %101 = zext i8 %100 to i32
  %102 = zext i32 %0 to i64
  %103 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !195
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 1
  %107 = icmp eq i32 %106, %101
  br i1 %107, label %108, label %139

108:                                              ; preds = %83, %94
  %109 = phi i32 [ %97, %94 ], [ %0, %83 ]
  %110 = load ptr, ptr %14, align 8, !tbaa !209
  %111 = tail call i32 %110(ptr noundef %25, i32 noundef %109) #16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115, !prof !223

113:                                              ; preds = %108
  %114 = tail call ptr @gen_reg_rtx(i32 noundef %109) #16
  br label %115

115:                                              ; preds = %113, %108
  %116 = phi ptr [ %25, %108 ], [ %114, %113 ]
  %117 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %12, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !211
  %119 = tail call ptr (ptr, ...) %118(ptr noundef %116, ptr noundef %75, ptr noundef %84) #16
  %120 = icmp eq ptr %119, null
  br i1 %120, label %138, label %121, !prof !223

121:                                              ; preds = %115
  %122 = load i32, ptr %119, align 8
  %123 = and i32 %122, 65535
  %124 = add nsw i32 %123, -7
  %125 = icmp ult i32 %124, 4
  br i1 %125, label %126, label %136, !prof !255

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1, i32 0, i32 0, i64 2
  %128 = load ptr, ptr %127, align 8, !tbaa !195
  %129 = icmp eq ptr %128, null
  br i1 %129, label %136, label %130, !prof !256

130:                                              ; preds = %126
  %131 = load i32, ptr %1, align 8, !tbaa !214
  %132 = tail call fastcc i32 @add_equal_note(ptr noundef nonnull %119, ptr noundef %116, i32 noundef %131, ptr noundef %75, ptr noundef %84) #17, !range !257
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136, !prof !258

134:                                              ; preds = %130
  tail call void @delete_insns_since(ptr noundef %7) #16
  %135 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %5, i32 noundef %6) #17
  br label %139

136:                                              ; preds = %121, %130, %126
  %137 = tail call ptr @emit_insn(ptr noundef nonnull %119) #16
  br label %139

138:                                              ; preds = %115
  tail call void @delete_insns_since(ptr noundef %7) #16
  br label %139

139:                                              ; preds = %94, %138, %136, %134
  %140 = phi ptr [ %116, %136 ], [ %135, %134 ], [ null, %138 ], [ null, %94 ]
  ret ptr %140
}

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @convert_to_mode(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @avoid_expensive_constant(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !259 !PGOFuncName !260 {
  %5 = tail call zeroext i8 @optimize_insn_for_speed_p() #16
  %6 = icmp ne i32 %0, 0
  %7 = load i32, ptr @optimize, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %40, !prof !261

10:                                               ; preds = %4
  %11 = load i32, ptr %2, align 8
  %12 = and i32 %11, 65535
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !213
  %16 = icmp eq i32 %15, 9
  br i1 %16, label %17, label %40, !prof !262

17:                                               ; preds = %10
  %18 = load i32, ptr %1, align 8, !tbaa !214
  %19 = tail call i32 @rtx_cost(ptr noundef nonnull %2, i32 noundef %18, i8 noundef zeroext %5) #16
  %20 = tail call i32 @rtx_cost(ptr noundef nonnull %2, i32 noundef 23, i8 noundef zeroext %5) #16
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %40, !prof !263

22:                                               ; preds = %17
  %23 = load i32, ptr %2, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 30
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !195
  %29 = tail call i64 @trunc_int_for_mode(i64 noundef %28, i32 noundef %0) #16
  %30 = load i64, ptr %27, align 8, !tbaa !195
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %29) #16
  br label %37

34:                                               ; preds = %22
  %35 = zext i8 %3 to i32
  %36 = tail call ptr @convert_modes(i32 noundef %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef %35) #16
  br label %37

37:                                               ; preds = %26, %32, %34
  %38 = phi ptr [ %36, %34 ], [ %33, %32 ], [ %2, %26 ]
  %39 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %38) #16
  br label %40

40:                                               ; preds = %37, %17, %10, %4
  %41 = phi ptr [ %39, %37 ], [ %2, %17 ], [ %2, %10 ], [ %2, %4 ]
  ret ptr %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @widen_operand(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !prof !174 !PGOFuncName !264 {
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
  %22 = tail call ptr @convert_modes(i32 noundef %1, i32 noundef %2, ptr noundef %0, i32 noundef %3) #16
  br label %42

23:                                               ; preds = %14, %11
  %24 = zext i32 %1 to i64
  %25 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !195
  %27 = icmp ult i8 %26, 5
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = lshr i32 %8, 16
  %30 = and i32 %29, 255
  %31 = tail call ptr @force_reg(i32 noundef %30, ptr noundef nonnull %0) #16
  %32 = tail call ptr @gen_rtx_SUBREG(i32 noundef %1, ptr noundef %31, i32 noundef 0) #16
  br label %42

33:                                               ; preds = %23
  %34 = tail call ptr @gen_reg_rtx(i32 noundef %1) #16
  %35 = tail call ptr @emit_clobber(ptr noundef %34) #16
  %36 = load ptr, ptr @rtl_hooks, align 8, !tbaa !236
  %37 = load i32, ptr %0, align 8
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = tail call ptr %36(i32 noundef %39, ptr noundef %34) #16
  %41 = tail call ptr @emit_move_insn(ptr noundef %40, ptr noundef nonnull %0) #16
  br label %42

42:                                               ; preds = %7, %33, %28, %21
  %43 = phi ptr [ %22, %21 ], [ %32, %28 ], [ %34, %33 ], [ %0, %7 ]
  ret ptr %43
}

; Function Attrs: optsize
declare void @convert_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @delete_insns_since(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @commutative_optab_p(ptr noundef readonly %0) unnamed_addr #3 !prof !219 !PGOFuncName !265 {
  %2 = load i32, ptr %0, align 8, !tbaa !214
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !213
  %6 = icmp eq i32 %5, 3
  %7 = icmp eq ptr %0, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20)
  %8 = select i1 %6, i1 true, i1 %7
  %9 = icmp eq ptr %0, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21)
  %10 = select i1 %8, i1 true, i1 %9
  %11 = icmp eq ptr %0, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 18)
  %12 = select i1 %10, i1 true, i1 %11
  %13 = icmp eq ptr %0, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 19)
  %14 = select i1 %12, i1 true, i1 %13, !prof !266
  %15 = zext i1 %14 to i8
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @swap_commutative_operands_with_target(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !267 !PGOFuncName !268 {
  %4 = tail call i32 @commutative_operand_precedence(ptr noundef %1) #16
  %5 = tail call i32 @commutative_operand_precedence(ptr noundef %2) #16
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %29, label %7, !prof !269

7:                                                ; preds = %3
  %8 = icmp sgt i32 %4, %5
  br i1 %8, label %29, label %9, !prof !270

9:                                                ; preds = %7
  %10 = icmp eq ptr %0, null
  br i1 %10, label %15, label %11, !prof !271

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %26, !prof !272

15:                                               ; preds = %11, %9
  %16 = load i32, ptr %2, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 37
  br i1 %18, label %19, label %23, !prof !273

19:                                               ; preds = %15
  %20 = load i32, ptr %1, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %29, !prof !273

23:                                               ; preds = %19, %15
  %24 = icmp eq ptr %0, %2
  %25 = zext i1 %24 to i8
  br label %29

26:                                               ; preds = %11
  %27 = tail call i32 @rtx_equal_p(ptr noundef %2, ptr noundef nonnull %0) #16
  %28 = trunc i32 %27 to i8
  br label %29

29:                                               ; preds = %19, %23, %7, %3, %26
  %30 = phi i8 [ %28, %26 ], [ 1, %3 ], [ 0, %7 ], [ 1, %19 ], [ %25, %23 ]
  ret i8 %30
}

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @operand_subword(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @operand_subword_force(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @expand_doubleword_shift(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9) unnamed_addr #0 !prof !174 !PGOFuncName !274 {
  %11 = icmp ugt i64 %9, 31
  %12 = icmp ne ptr %5, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load i32, ptr %4, align 8
  %16 = and i32 %15, 65535
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !213
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = tail call fastcc zeroext i8 @expand_doubleword_shift(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef null, ptr noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9) #17, !range !240
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %85, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr @word_mode, align 4, !tbaa !213
  %26 = tail call zeroext i8 @force_expand_binop(i32 noundef %25, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %7, i32 noundef %8) #17, !range !240
  br label %85

27:                                               ; preds = %14, %10
  %28 = tail call ptr @immed_double_const(i64 noundef 32, i64 noundef 0, i32 noundef %0) #16
  %29 = load i32, ptr %4, align 8
  %30 = and i32 %29, 65535
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !213
  %34 = icmp ne i32 %33, 9
  %35 = icmp eq i64 %9, 31
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef nonnull %4, ptr noundef %28, ptr noundef null, i32 noundef 1, i32 noundef %8) #17
  br label %41

39:                                               ; preds = %27
  %40 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %4, ptr noundef %28, ptr noundef null, i32 noundef 1, i32 noundef %8) #17
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi ptr [ %38, %37 ], [ %40, %39 ]
  %43 = phi ptr [ %4, %37 ], [ %40, %39 ]
  %44 = phi i32 [ 81, %37 ], [ 85, %39 ]
  %45 = sext i32 %0 to i64
  %46 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !184
  %48 = icmp eq ptr %42, null
  br i1 %48, label %85, label %49

49:                                               ; preds = %41
  %50 = tail call ptr @simplify_relational_operation(i32 noundef %44, i32 noundef 16, i32 noundef %0, ptr noundef nonnull %42, ptr noundef %47) #16
  %51 = icmp eq ptr %50, null
  br i1 %51, label %63, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr %50, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 30
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !184
  %58 = icmp eq ptr %50, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = tail call fastcc zeroext i8 @expand_superword_shift(ptr noundef %1, ptr noundef %2, ptr noundef %43, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) #17, !range !240
  br label %85

61:                                               ; preds = %56
  %62 = tail call fastcc zeroext i8 @expand_subword_shift(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9) #17, !range !240
  br label %85

63:                                               ; preds = %52, %49
  %64 = tail call ptr @get_last_insn() #16
  %65 = tail call fastcc zeroext i8 @expand_doubleword_shift_condmove(i32 noundef %0, ptr noundef %1, i32 noundef %44, ptr noundef nonnull %42, ptr noundef %47, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %43, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9) #17, !range !240
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %63
  tail call void @delete_insns_since(ptr noundef %64) #16
  %68 = tail call ptr @gen_label_rtx() #16
  %69 = tail call ptr @gen_label_rtx() #16
  %70 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !275
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !275
  tail call void @do_compare_rtx_and_jump(ptr noundef nonnull %42, ptr noundef %47, i32 noundef %44, i32 noundef 0, i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef %68, i32 noundef -1) #16
  %72 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !275
  %73 = add nsw i32 %72, -1
  store i32 %73, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !275
  %74 = tail call fastcc zeroext i8 @expand_superword_shift(ptr noundef %1, ptr noundef %2, ptr noundef %43, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) #17, !range !240
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %67
  %77 = tail call ptr @gen_jump(ptr noundef %69) #16
  %78 = tail call ptr @emit_jump_insn(ptr noundef %77) #16
  %79 = tail call ptr @emit_barrier() #16
  %80 = tail call ptr @emit_label(ptr noundef %68) #16
  %81 = tail call fastcc zeroext i8 @expand_subword_shift(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9) #17, !range !240
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %76
  %84 = tail call ptr @emit_label(ptr noundef %69) #16
  br label %85

85:                                               ; preds = %63, %76, %67, %41, %24, %21, %83, %61, %59
  %86 = phi i8 [ %60, %59 ], [ %62, %61 ], [ 1, %83 ], [ 0, %21 ], [ %26, %24 ], [ 0, %41 ], [ 0, %67 ], [ 0, %76 ], [ 1, %63 ]
  ret i8 %86
}

; Function Attrs: optsize
declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_store_flag_force(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_doubleword_mult(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5) unnamed_addr #0 !prof !174 !PGOFuncName !284 {
  %7 = icmp eq i8 %4, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 31) #16
  br label %10

10:                                               ; preds = %6, %8
  %11 = phi ptr [ %9, %8 ], [ null, %6 ]
  %12 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef 1, i32 noundef %0) #16
  %13 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef 0, i32 noundef %0) #16
  %14 = tail call ptr @operand_subword_force(ptr noundef %2, i32 noundef 1, i32 noundef %0) #16
  %15 = tail call ptr @operand_subword_force(ptr noundef %2, i32 noundef 0, i32 noundef %0) #16
  %16 = load i32, ptr @word_mode, align 4, !tbaa !213
  br i1 %7, label %17, label %36

17:                                               ; preds = %10
  %18 = tail call ptr @expand_binop(i32 noundef %16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), ptr noundef %13, ptr noundef %11, ptr noundef null, i32 noundef 1, i32 noundef %5) #17
  %19 = icmp eq ptr %18, null
  %20 = load i32, ptr @word_mode, align 4, !tbaa !213
  br i1 %19, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @expand_binop(i32 noundef %20, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %12, ptr noundef nonnull %18, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  br label %29

23:                                               ; preds = %17
  %24 = tail call ptr @expand_binop(i32 noundef %20, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), ptr noundef %13, ptr noundef %11, ptr noundef null, i32 noundef 0, i32 noundef %5) #17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %84, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr @word_mode, align 4, !tbaa !213
  %28 = tail call ptr @expand_binop(i32 noundef %27, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %12, ptr noundef nonnull %24, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi ptr [ %22, %21 ], [ %28, %26 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %84, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr @word_mode, align 4, !tbaa !213
  %34 = tail call ptr @expand_binop(i32 noundef %33, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16), ptr noundef nonnull %30, ptr noundef %15, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  %35 = icmp eq ptr %34, null
  br i1 %35, label %84, label %39

36:                                               ; preds = %10
  %37 = tail call ptr @expand_binop(i32 noundef %16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16), ptr noundef %12, ptr noundef %15, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %84, label %55

39:                                               ; preds = %32
  %40 = load i32, ptr @word_mode, align 4, !tbaa !213
  %41 = tail call ptr @expand_binop(i32 noundef %40, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), ptr noundef %15, ptr noundef %11, ptr noundef null, i32 noundef 1, i32 noundef %5) #17
  %42 = icmp eq ptr %41, null
  %43 = load i32, ptr @word_mode, align 4, !tbaa !213
  br i1 %42, label %46, label %44

44:                                               ; preds = %39
  %45 = tail call ptr @expand_binop(i32 noundef %43, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %14, ptr noundef nonnull %41, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  br label %52

46:                                               ; preds = %39
  %47 = tail call ptr @expand_binop(i32 noundef %43, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), ptr noundef %15, ptr noundef %11, ptr noundef null, i32 noundef 0, i32 noundef %5) #17
  %48 = icmp eq ptr %47, null
  br i1 %48, label %84, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr @word_mode, align 4, !tbaa !213
  %51 = tail call ptr @expand_binop(i32 noundef %50, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %14, ptr noundef nonnull %47, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi ptr [ %45, %44 ], [ %51, %49 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %84, label %55

55:                                               ; preds = %36, %52
  %56 = phi ptr [ %34, %52 ], [ %37, %36 ]
  %57 = phi ptr [ %53, %52 ], [ %14, %36 ]
  %58 = load i32, ptr @word_mode, align 4, !tbaa !213
  %59 = tail call ptr @expand_binop(i32 noundef %58, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16), ptr noundef %57, ptr noundef %13, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  %60 = icmp eq ptr %59, null
  br i1 %60, label %84, label %61

61:                                               ; preds = %55
  %62 = load i32, ptr @word_mode, align 4, !tbaa !213
  %63 = tail call ptr @expand_binop(i32 noundef %62, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef nonnull %56, ptr noundef nonnull %59, ptr noundef nonnull %56, i32 noundef 0, i32 noundef 0) #17
  %64 = icmp eq ptr %3, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %3, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 37
  %69 = select i1 %68, ptr %3, ptr null
  br label %70

70:                                               ; preds = %65, %61
  %71 = phi ptr [ %69, %65 ], [ null, %61 ]
  %72 = select i1 %7, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21)
  %73 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %72, ptr noundef %13, ptr noundef %15, ptr noundef %71, i32 noundef 1, i32 noundef 0) #17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %70
  %76 = tail call ptr @operand_subword(ptr noundef nonnull %73, i32 noundef 1, i32 noundef 1, i32 noundef %0) #16
  %77 = load i32, ptr @word_mode, align 4, !tbaa !213
  %78 = load i32, ptr %76, align 8
  %79 = and i32 %78, 65535
  %80 = icmp eq i32 %79, 37
  %81 = select i1 %80, ptr %76, ptr %63
  %82 = tail call ptr @expand_binop(i32 noundef %77, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef nonnull %76, ptr noundef %63, ptr noundef %81, i32 noundef 0, i32 noundef 0) #17
  %83 = tail call ptr @emit_move_insn(ptr noundef nonnull %76, ptr noundef %82) #16
  br label %84

84:                                               ; preds = %36, %70, %55, %52, %46, %32, %29, %23, %75
  %85 = phi ptr [ %73, %75 ], [ null, %23 ], [ null, %29 ], [ null, %32 ], [ null, %46 ], [ null, %52 ], [ null, %55 ], [ null, %70 ], [ null, %36 ]
  ret ptr %85
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @shift_optab_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !219 !PGOFuncName !285 {
  %2 = load i32, ptr %0, align 8, !tbaa !214
  switch i32 %2, label %3 [
    i32 65, label %4
    i32 133, label %4
    i32 134, label %4
    i32 67, label %4
    i32 68, label %4
    i32 66, label %4
    i32 69, label %4
  ], !prof !286

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %3
  %5 = phi i8 [ 0, %3 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @emit_library_call_value(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_libcall_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !174 {
  %5 = alloca %struct.no_conflict_data, align 8
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 134283263
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = lshr i32 %6, 16
  %11 = and i32 %10, 255
  %12 = tail call ptr @gen_reg_rtx(i32 noundef %11) #16
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi ptr [ %12, %9 ], [ %1, %4 ]
  %15 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !213
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @may_trap_p(ptr noundef %3) #16
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
  %28 = tail call ptr @find_reg_note(ptr noundef nonnull %23, i32 noundef 25, ptr noundef null) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !195
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !195
  %35 = and i64 %34, 2147483647
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  tail call void @remove_note(ptr noundef nonnull %23, ptr noundef nonnull %28) #16
  br label %38

38:                                               ; preds = %27, %30, %37, %22
  %39 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !195
  %41 = icmp eq ptr %40, null
  br i1 %41, label %54, label %22, !llvm.loop !287

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
  tail call void @make_reg_eh_region_note_nothrow_nononlocal(ptr noundef nonnull %45) #16
  br label %50

50:                                               ; preds = %44, %49
  %51 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 2
  %52 = load ptr, ptr %51, align 8, !tbaa !195
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %44, !llvm.loop !288

54:                                               ; preds = %38, %50, %20, %42
  %55 = getelementptr inbounds %struct.no_conflict_data, ptr %5, i64 0, i32 1
  %56 = getelementptr inbounds %struct.no_conflict_data, ptr %5, i64 0, i32 2
  %57 = getelementptr inbounds %struct.no_conflict_data, ptr %5, i64 0, i32 3
  br label %58

58:                                               ; preds = %115, %54
  %59 = phi ptr [ %0, %54 ], [ %116, %115 ]
  %60 = phi ptr [ %0, %54 ], [ %117, %115 ]
  %61 = icmp eq ptr %59, null
  br i1 %61, label %121, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %59, align 8
  %64 = and i32 %63, 65535
  %65 = add nsw i32 %64, -7
  %66 = icmp ult i32 %65, 4
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 2
  %69 = load ptr, ptr %68, align 8, !tbaa !195
  br label %115

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !195
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 23
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !195
  br label %84

79:                                               ; preds = %70
  %80 = call ptr @single_set_2(ptr noundef nonnull %59, ptr noundef nonnull %72) #16
  %81 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 2
  %82 = load ptr, ptr %81, align 8, !tbaa !195
  %83 = icmp eq ptr %80, null
  br i1 %83, label %115, label %84

84:                                               ; preds = %76, %79
  %85 = phi ptr [ %78, %76 ], [ %82, %79 ]
  %86 = phi ptr [ %72, %76 ], [ %80, %79 ]
  %87 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !195
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 37
  br i1 %91, label %92, label %115

92:                                               ; preds = %84
  %93 = call fastcc i32 @rhs_regno(ptr noundef nonnull %88) #17
  %94 = icmp ugt i32 %93, 52
  br i1 %94, label %95, label %115

95:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %96 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !184
  store ptr %96, ptr %5, align 8, !tbaa !289
  store ptr %60, ptr %55, align 8, !tbaa !291
  store ptr %59, ptr %56, align 8, !tbaa !292
  store i8 0, ptr %57, align 8, !tbaa !293
  %97 = load ptr, ptr %71, align 8, !tbaa !195
  call void @note_stores(ptr noundef %97, ptr noundef nonnull @no_conflict_move_test, ptr noundef nonnull %5) #16
  %98 = load i8, ptr %57, align 8, !tbaa !293
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !195
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %85, ptr %105, align 8, !tbaa !195
  br label %106

106:                                              ; preds = %100, %104
  %107 = phi ptr [ %60, %104 ], [ %85, %100 ]
  %108 = icmp eq ptr %85, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr %101, align 8, !tbaa !195
  %111 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %110, ptr %111, align 8, !tbaa !195
  br label %112

112:                                              ; preds = %109, %106
  call void @add_insn(ptr noundef nonnull %59) #16
  br label %113

113:                                              ; preds = %112, %95
  %114 = phi ptr [ %60, %95 ], [ %107, %112 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %115

115:                                              ; preds = %67, %113, %92, %84, %79
  %116 = phi ptr [ %85, %113 ], [ %85, %92 ], [ %85, %84 ], [ %82, %79 ], [ %69, %67 ]
  %117 = phi ptr [ %114, %113 ], [ %60, %92 ], [ %60, %84 ], [ %60, %79 ], [ %60, %67 ]
  %118 = load i32, ptr %59, align 8
  %119 = and i32 %118, 65535
  %120 = icmp eq i32 %119, 12
  br i1 %120, label %121, label %58

121:                                              ; preds = %115, %58
  %122 = phi ptr [ %117, %115 ], [ %60, %58 ]
  %123 = icmp eq ptr %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %121, %124
  %125 = phi ptr [ %127, %124 ], [ %122, %121 ]
  %126 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1, i32 0, i32 0, i64 2
  %127 = load ptr, ptr %126, align 8, !tbaa !195
  call void @add_insn(ptr noundef nonnull %125) #16
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %124, !llvm.loop !294

129:                                              ; preds = %124, %121
  %130 = call ptr @emit_move_insn(ptr noundef %14, ptr noundef %2) #16
  %131 = load i32, ptr %14, align 8
  %132 = lshr i32 %131, 16
  %133 = and i32 %132, 255
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !203
  %137 = icmp eq i32 %136, 2956
  br i1 %137, label %141, label %138

138:                                              ; preds = %129
  %139 = call ptr @copy_rtx(ptr noundef %3) #16
  %140 = call ptr @set_unique_reg_note(ptr noundef %130, i32 noundef 4, ptr noundef %139) #16
  br label %141

141:                                              ; preds = %138, %129
  %142 = icmp eq ptr %14, %1
  br i1 %142, label %145, label %143

143:                                              ; preds = %141
  %144 = call ptr @emit_move_insn(ptr noundef nonnull %1, ptr noundef nonnull %14) #16
  br label %145

145:                                              ; preds = %143, %141
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sign_expand_binop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 !prof !174 {
  %9 = alloca %struct.optab_d, align 8
  %10 = icmp ne i32 %6, 0
  %11 = select i1 %10, ptr %1, ptr %2
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %9) #15
  %12 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef %11, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 0) #17
  %13 = icmp ne ptr %12, null
  %14 = icmp eq i32 %7, 0
  %15 = or i1 %14, %13
  br i1 %15, label %41, label %16

16:                                               ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %9, ptr noundef nonnull align 8 dereferenceable(384) %2, i64 384, i1 false), !tbaa.struct !295
  %17 = sext i32 %0 to i64
  %18 = getelementptr inbounds %struct.optab_d, ptr %9, i64 0, i32 4, i64 %17
  store i32 2956, ptr %18, align 4, !tbaa !203
  %19 = getelementptr inbounds %struct.optab_d, ptr %9, i64 0, i32 3
  store ptr null, ptr %19, align 8, !tbaa !189
  %20 = call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %9, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 2) #17
  %21 = icmp eq ptr %20, null
  %22 = and i1 %10, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call ptr @expand_binop(i32 noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 2) #17
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi ptr [ %24, %23 ], [ %20, %16 ]
  %27 = icmp ne ptr %26, null
  %28 = icmp eq i32 %7, 2
  %29 = or i1 %28, %27
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = call ptr @expand_binop(i32 noundef %0, ptr noundef %11, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef 1) #17
  %32 = icmp ne ptr %31, null
  %33 = icmp eq i32 %7, 1
  %34 = or i1 %33, %32
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %9, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #17
  %37 = icmp eq ptr %36, null
  %38 = and i1 %10, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call ptr @expand_binop(i32 noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #17
  br label %41

41:                                               ; preds = %35, %30, %25, %8, %39
  %42 = phi ptr [ %40, %39 ], [ %12, %8 ], [ %26, %25 ], [ %31, %30 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %9) #15
  ret ptr %42
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @expand_twoval_unop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !174 {
  %6 = icmp eq ptr %2, null
  %7 = select i1 %6, ptr %3, ptr %2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = tail call ptr @get_last_insn() #16
  %12 = zext nneg i32 %10 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !195
  br i1 %6, label %15, label %17

15:                                               ; preds = %5
  %16 = tail call ptr @gen_reg_rtx(i32 noundef %10) #16
  br label %17

17:                                               ; preds = %15, %5
  %18 = phi ptr [ %2, %5 ], [ %16, %15 ]
  %19 = icmp eq ptr %3, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call ptr @gen_reg_rtx(i32 noundef %10) #16
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi ptr [ %3, %17 ], [ %21, %20 ]
  %24 = tail call ptr @get_last_insn() #16
  %25 = getelementptr inbounds %struct.optab_d, ptr %0, i64 0, i32 4, i64 %12
  %26 = load i32, ptr %25, align 4, !tbaa !203
  %27 = icmp eq i32 %26, 2956
  br i1 %27, label %71, label %28

28:                                               ; preds = %22
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %29, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !205
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
  %42 = tail call ptr @convert_to_mode(i32 noundef %34, ptr noundef nonnull %1, i32 noundef %4) #16
  br label %43

43:                                               ; preds = %41, %28
  %44 = phi ptr [ %42, %41 ], [ %1, %28 ]
  %45 = getelementptr inbounds %struct.insn_operand_data, ptr %31, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !209
  %47 = tail call i32 %46(ptr noundef %44, i32 noundef %34) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = tail call ptr @copy_to_mode_reg(i32 noundef %34, ptr noundef %44) #16
  br label %51

51:                                               ; preds = %49, %43
  %52 = phi ptr [ %44, %43 ], [ %50, %49 ]
  %53 = load ptr, ptr %31, align 8, !tbaa !209
  %54 = tail call i32 %53(ptr noundef %18, i32 noundef %10) #16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2334, ptr noundef nonnull @.str.1) #16
  br label %57

57:                                               ; preds = %51, %56
  %58 = getelementptr inbounds %struct.insn_operand_data, ptr %31, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !209
  %60 = tail call i32 %59(ptr noundef %23, i32 noundef %10) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2335, ptr noundef nonnull @.str.1) #16
  br label %63

63:                                               ; preds = %57, %62
  %64 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %29, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !211
  %66 = tail call ptr (ptr, ...) %65(ptr noundef %18, ptr noundef %23, ptr noundef %52) #16
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  tail call void @delete_insns_since(ptr noundef %24) #16
  br label %71

69:                                               ; preds = %63
  %70 = tail call ptr @emit_insn(ptr noundef nonnull %66) #16
  br label %96

71:                                               ; preds = %68, %22
  switch i8 %14, label %95 [
    i8 11, label %72
    i8 9, label %72
    i8 8, label %72
    i8 7, label %72
    i8 6, label %72
    i8 5, label %72
    i8 4, label %72
    i8 2, label %72
  ]

72:                                               ; preds = %71, %71, %71, %71, %71, %71, %71, %71
  %73 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %12
  %74 = load i8, ptr %73, align 1, !tbaa !195
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %72, %91
  %77 = phi i8 [ %93, %91 ], [ %74, %72 ]
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds %struct.optab_d, ptr %0, i64 0, i32 4, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !203
  %81 = icmp eq i32 %80, 2956
  br i1 %81, label %91, label %82

82:                                               ; preds = %76
  %83 = zext i8 %77 to i32
  %84 = tail call ptr @gen_reg_rtx(i32 noundef %83) #16
  %85 = tail call ptr @gen_reg_rtx(i32 noundef %83) #16
  %86 = tail call ptr @convert_modes(i32 noundef %83, i32 noundef %10, ptr noundef %1, i32 noundef %4) #16
  %87 = tail call i32 @expand_twoval_unop(ptr noundef nonnull %0, ptr noundef %86, ptr noundef %84, ptr noundef %85, i32 noundef %4) #17, !range !257
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  tail call void @delete_insns_since(ptr noundef %24) #16
  br label %91

90:                                               ; preds = %82
  tail call void @convert_move(ptr noundef %18, ptr noundef %84, i32 noundef %4) #16
  tail call void @convert_move(ptr noundef %23, ptr noundef %85, i32 noundef %4) #16
  br label %96

91:                                               ; preds = %89, %76
  %92 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %78
  %93 = load i8, ptr %92, align 1, !tbaa !195
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %76, !llvm.loop !296

95:                                               ; preds = %91, %72, %71
  tail call void @delete_insns_since(ptr noundef %11) #16
  br label %96

96:                                               ; preds = %90, %69, %95
  %97 = phi i32 [ 1, %90 ], [ 0, %95 ], [ 1, %69 ]
  ret i32 %97
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @expand_twoval_binop(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !174 {
  %7 = icmp eq ptr %3, null
  %8 = select i1 %7, ptr %4, ptr %3
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = tail call ptr @get_last_insn() #16
  %13 = zext nneg i32 %11 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !195
  br i1 %7, label %16, label %18

16:                                               ; preds = %6
  %17 = tail call ptr @gen_reg_rtx(i32 noundef %11) #16
  br label %18

18:                                               ; preds = %16, %6
  %19 = phi ptr [ %3, %6 ], [ %17, %16 ]
  %20 = icmp eq ptr %4, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call ptr @gen_reg_rtx(i32 noundef %11) #16
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi ptr [ %4, %18 ], [ %22, %21 ]
  %25 = tail call ptr @get_last_insn() #16
  %26 = getelementptr inbounds %struct.optab_d, ptr %0, i64 0, i32 4, i64 %13
  %27 = load i32, ptr %26, align 4, !tbaa !203
  %28 = icmp eq i32 %27, 2956
  br i1 %28, label %100, label %29

29:                                               ; preds = %23
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %30, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !205
  %33 = getelementptr inbounds %struct.insn_operand_data, ptr %32, i64 1, i32 2
  %34 = load i16, ptr %33, align 8
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.insn_operand_data, ptr %32, i64 2, i32 2
  %37 = load i16, ptr %36, align 8
  %38 = zext i16 %37 to i32
  %39 = trunc i32 %5 to i8
  %40 = tail call fastcc ptr @avoid_expensive_constant(i32 noundef %35, ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %39) #17
  %41 = tail call fastcc ptr @avoid_expensive_constant(i32 noundef %38, ptr noundef nonnull %0, ptr noundef %2, i8 noundef zeroext %39) #17
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
  %51 = tail call ptr @convert_modes(i32 noundef %35, i32 noundef %50, ptr noundef %40, i32 noundef %5) #16
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
  %63 = tail call ptr @convert_modes(i32 noundef %38, i32 noundef %62, ptr noundef %41, i32 noundef %5) #16
  br label %64

64:                                               ; preds = %60, %52
  %65 = phi ptr [ %63, %60 ], [ %41, %52 ]
  %66 = getelementptr inbounds %struct.insn_operand_data, ptr %32, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !209
  %68 = tail call i32 %67(ptr noundef %53, i32 noundef %35) #16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = tail call ptr @copy_to_mode_reg(i32 noundef %35, ptr noundef %53) #16
  br label %72

72:                                               ; preds = %70, %64
  %73 = phi ptr [ %53, %64 ], [ %71, %70 ]
  %74 = getelementptr inbounds %struct.insn_operand_data, ptr %32, i64 2
  %75 = load ptr, ptr %74, align 8, !tbaa !209
  %76 = tail call i32 %75(ptr noundef %65, i32 noundef %38) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = tail call ptr @copy_to_mode_reg(i32 noundef %38, ptr noundef %65) #16
  br label %80

80:                                               ; preds = %78, %72
  %81 = phi ptr [ %65, %72 ], [ %79, %78 ]
  %82 = load ptr, ptr %32, align 8, !tbaa !209
  %83 = tail call i32 %82(ptr noundef %19, i32 noundef %11) #16
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2451, ptr noundef nonnull @.str.1) #16
  br label %86

86:                                               ; preds = %80, %85
  %87 = getelementptr inbounds %struct.insn_operand_data, ptr %32, i64 3
  %88 = load ptr, ptr %87, align 8, !tbaa !209
  %89 = tail call i32 %88(ptr noundef %24, i32 noundef %11) #16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2452, ptr noundef nonnull @.str.1) #16
  br label %92

92:                                               ; preds = %86, %91
  %93 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %30, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !211
  %95 = tail call ptr (ptr, ...) %94(ptr noundef %19, ptr noundef %73, ptr noundef %81, ptr noundef %24) #16
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  tail call void @delete_insns_since(ptr noundef %25) #16
  br label %100

98:                                               ; preds = %92
  %99 = tail call ptr @emit_insn(ptr noundef nonnull %95) #16
  br label %126

100:                                              ; preds = %97, %23
  switch i8 %15, label %125 [
    i8 11, label %101
    i8 9, label %101
    i8 8, label %101
    i8 7, label %101
    i8 6, label %101
    i8 5, label %101
    i8 4, label %101
    i8 2, label %101
  ]

101:                                              ; preds = %100, %100, %100, %100, %100, %100, %100, %100
  %102 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %13
  %103 = load i8, ptr %102, align 1, !tbaa !195
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %125, label %105

105:                                              ; preds = %101, %121
  %106 = phi i8 [ %123, %121 ], [ %103, %101 ]
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds %struct.optab_d, ptr %0, i64 0, i32 4, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !203
  %110 = icmp eq i32 %109, 2956
  br i1 %110, label %121, label %111

111:                                              ; preds = %105
  %112 = zext i8 %106 to i32
  %113 = tail call ptr @gen_reg_rtx(i32 noundef %112) #16
  %114 = tail call ptr @gen_reg_rtx(i32 noundef %112) #16
  %115 = tail call ptr @convert_modes(i32 noundef %112, i32 noundef %11, ptr noundef %1, i32 noundef %5) #16
  %116 = tail call ptr @convert_modes(i32 noundef %112, i32 noundef %11, ptr noundef %2, i32 noundef %5) #16
  %117 = tail call i32 @expand_twoval_binop(ptr noundef nonnull %0, ptr noundef %115, ptr noundef %116, ptr noundef %113, ptr noundef %114, i32 noundef %5) #17, !range !257
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  tail call void @delete_insns_since(ptr noundef %25) #16
  br label %121

120:                                              ; preds = %111
  tail call void @convert_move(ptr noundef %19, ptr noundef %113, i32 noundef %5) #16
  tail call void @convert_move(ptr noundef %24, ptr noundef %114, i32 noundef %5) #16
  br label %126

121:                                              ; preds = %119, %105
  %122 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %107
  %123 = load i8, ptr %122, align 1, !tbaa !195
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %105, !llvm.loop !297

125:                                              ; preds = %121, %101, %100
  tail call void @delete_insns_since(ptr noundef %12) #16
  br label %126

126:                                              ; preds = %120, %98, %125
  %127 = phi i32 [ 1, %120 ], [ 0, %125 ], [ 1, %98 ]
  ret i32 %127
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @expand_twoval_binop_libfunc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !174 {
  %7 = icmp eq ptr %3, null
  %8 = icmp ne ptr %4, null
  %9 = xor i1 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2517, ptr noundef nonnull @.str.1) #16
  br label %11

11:                                               ; preds = %6, %10
  %12 = load i32, ptr %1, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = tail call ptr @optab_libfunc(ptr noundef %0, i32 noundef %14) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %11
  %18 = zext nneg i32 %14 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !195
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 4
  %23 = tail call i32 @smallest_mode_for_size(i32 noundef %22, i32 noundef 2) #16
  tail call void @start_sequence() #16
  %24 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef nonnull %15, ptr noundef null, i32 noundef 1, i32 noundef %23, i32 noundef 2, ptr noundef nonnull %1, i32 noundef %14, ptr noundef %2, i32 noundef %14) #16
  br i1 %7, label %25, label %28

25:                                               ; preds = %17
  %26 = load i8, ptr %19, align 1, !tbaa !195
  %27 = zext i8 %26 to i32
  br label %28

28:                                               ; preds = %17, %25
  %29 = phi ptr [ %4, %25 ], [ %3, %17 ]
  %30 = phi i32 [ %27, %25 ], [ 0, %17 ]
  %31 = tail call ptr @simplify_gen_subreg(i32 noundef %14, ptr noundef %24, i32 noundef %23, i32 noundef %30) #16
  %32 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %33 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %5, i32 noundef %14, ptr noundef nonnull %1, ptr noundef %2) #16
  tail call void @emit_libcall_block(ptr noundef %32, ptr noundef %29, ptr noundef %31, ptr noundef %33) #17
  br label %34

34:                                               ; preds = %11, %28
  %35 = phi i8 [ 1, %28 ], [ 0, %11 ]
  ret i8 %35
}

; Function Attrs: optsize
declare i32 @smallest_mode_for_size(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_simple_unop(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !298 {
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !184
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !299

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2554, ptr noundef nonnull @.str.1) #16
  br label %11

11:                                               ; preds = %5, %10
  %12 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef %8, ptr noundef %2, ptr noundef %3, i32 noundef %4) #17
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_unop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !298 {
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !195
  %9 = tail call fastcc ptr @expand_unop_direct(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %319, !prof !299

11:                                               ; preds = %5
  %12 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71)
  br i1 %12, label %13, label %29

13:                                               ; preds = %11
  %14 = tail call fastcc ptr @widen_clz(i32 noundef %0, ptr noundef %2, ptr noundef %3) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %319

16:                                               ; preds = %13
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %18 = load i8, ptr %17, align 1, !tbaa !195
  %19 = icmp eq i8 %18, 8
  br i1 %19, label %20, label %177

20:                                               ; preds = %16
  %21 = load i32, ptr @word_mode, align 4, !tbaa !213
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 4, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !203
  %25 = icmp eq i32 %24, 2956
  br i1 %25, label %177, label %26

26:                                               ; preds = %20
  %27 = tail call fastcc ptr @expand_doubleword_clz(i32 noundef %0, ptr noundef %2, ptr noundef %3) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %177, label %319

29:                                               ; preds = %11
  %30 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68)
  br i1 %30, label %31, label %47

31:                                               ; preds = %29
  %32 = tail call fastcc ptr @widen_bswap(i32 noundef %0, ptr noundef %2, ptr noundef %3) #17
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %319

34:                                               ; preds = %31
  %35 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %36 = load i8, ptr %35, align 1, !tbaa !195
  %37 = icmp eq i8 %36, 8
  br i1 %37, label %38, label %177

38:                                               ; preds = %34
  %39 = load i32, ptr @word_mode, align 4, !tbaa !213
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68, i32 4, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !203
  %43 = icmp eq i32 %42, 2956
  br i1 %43, label %177, label %44

44:                                               ; preds = %38
  %45 = tail call fastcc ptr @expand_doubleword_bswap(i32 noundef %0, ptr noundef %2, ptr noundef %3) #17
  %46 = icmp eq ptr %45, null
  br i1 %46, label %177, label %319

47:                                               ; preds = %29
  %48 = icmp eq i8 %8, 2
  switch i8 %8, label %86 [
    i8 11, label %49
    i8 9, label %49
    i8 8, label %49
    i8 7, label %49
    i8 6, label %49
    i8 5, label %49
    i8 4, label %49
    i8 2, label %49
  ]

49:                                               ; preds = %47, %47, %47, %47, %47, %47, %47, %47
  %50 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %6
  %51 = load i8, ptr %50, align 1, !tbaa !195
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %86, label %53

53:                                               ; preds = %49
  %54 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64)
  %55 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69)
  %56 = select i1 %54, i1 true, i1 %55
  %57 = select i1 %56, i1 %48, i1 false
  %58 = zext i1 %57 to i32
  br label %59

59:                                               ; preds = %53, %82
  %60 = phi i8 [ %51, %53 ], [ %84, %82 ]
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds %struct.optab_d, ptr %1, i64 0, i32 4, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !203
  %64 = icmp eq i32 %63, 2956
  br i1 %64, label %82, label %65

65:                                               ; preds = %59
  %66 = zext i8 %60 to i32
  %67 = tail call ptr @get_last_insn() #16
  %68 = tail call fastcc ptr @widen_operand(ptr noundef %2, i32 noundef %66, i32 noundef %0, i32 noundef %4, i32 noundef %58) #17
  %69 = tail call ptr @expand_unop(i32 noundef %66, ptr noundef nonnull %1, ptr noundef %68, ptr noundef null, i32 noundef %4) #17
  %70 = icmp eq ptr %69, null
  br i1 %70, label %81, label %71

71:                                               ; preds = %65
  br i1 %48, label %78, label %72

72:                                               ; preds = %71
  %73 = icmp eq ptr %3, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi ptr [ %75, %74 ], [ %3, %72 ]
  tail call void @convert_move(ptr noundef %77, ptr noundef nonnull %69, i32 noundef 0) #16
  br label %319

78:                                               ; preds = %71
  %79 = load ptr, ptr @rtl_hooks, align 8, !tbaa !236
  %80 = tail call ptr %79(i32 noundef %0, ptr noundef nonnull %69) #16
  br label %319

81:                                               ; preds = %65
  tail call void @delete_insns_since(ptr noundef %67) #16
  br label %82

82:                                               ; preds = %81, %59
  %83 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %61
  %84 = load i8, ptr %83, align 1, !tbaa !195
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %59, !llvm.loop !300

86:                                               ; preds = %82, %49, %47
  %87 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69)
  %88 = and i1 %87, %48
  br i1 %88, label %89, label %127

89:                                               ; preds = %86
  %90 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %91 = load i8, ptr %90, align 1, !tbaa !195
  %92 = icmp ugt i8 %91, 4
  br i1 %92, label %93, label %127

93:                                               ; preds = %89
  %94 = load i32, ptr @word_mode, align 4, !tbaa !213
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 4, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !203
  %98 = icmp eq i32 %97, 2956
  br i1 %98, label %127, label %99

99:                                               ; preds = %93
  %100 = icmp eq ptr %3, null
  %101 = icmp eq ptr %3, %2
  %102 = or i1 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %105

105:                                              ; preds = %99, %103
  %106 = phi ptr [ %104, %103 ], [ %3, %99 ]
  tail call void @start_sequence() #16
  %107 = load i8, ptr %90, align 1, !tbaa !195
  %108 = icmp ult i8 %107, 4
  br i1 %108, label %124, label %109

109:                                              ; preds = %105, %118
  %110 = phi i32 [ %119, %118 ], [ 0, %105 ]
  %111 = tail call ptr @operand_subword(ptr noundef %106, i32 noundef %110, i32 noundef 1, i32 noundef %0) #16
  %112 = load i32, ptr @word_mode, align 4, !tbaa !213
  %113 = tail call ptr @operand_subword_force(ptr noundef %2, i32 noundef %110, i32 noundef %0) #16
  %114 = tail call ptr @expand_unop(i32 noundef %112, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), ptr noundef %113, ptr noundef %111, i32 noundef %4) #17
  %115 = icmp eq ptr %111, %114
  br i1 %115, label %118, label %116

116:                                              ; preds = %109
  %117 = tail call ptr @emit_move_insn(ptr noundef %111, ptr noundef %114) #16
  br label %118

118:                                              ; preds = %116, %109
  %119 = add nuw nsw i32 %110, 1
  %120 = load i8, ptr %90, align 1, !tbaa !195
  %121 = lshr i8 %120, 2
  %122 = zext nneg i8 %121 to i32
  %123 = icmp ult i32 %119, %122
  br i1 %123, label %109, label %124, !llvm.loop !301

124:                                              ; preds = %118, %105
  %125 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %126 = tail call ptr @emit_insn(ptr noundef %125) #16
  br label %319

127:                                              ; preds = %93, %89, %86
  %128 = load i32, ptr %1, align 8, !tbaa !214
  %129 = icmp eq i32 %128, 51
  br i1 %129, label %130, label %162

130:                                              ; preds = %127
  %131 = and i8 %8, -2
  %132 = icmp eq i8 %131, 8
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = tail call fastcc ptr @expand_absneg_bit(i32 noundef 51, i32 noundef %0, ptr noundef %2, ptr noundef %3) #17
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %319

136:                                              ; preds = %130, %133
  switch i8 %8, label %154 [
    i8 8, label %137
    i8 9, label %137
    i8 11, label %137
    i8 17, label %137
  ]

137:                                              ; preds = %136, %136, %136, %136
  br i1 %132, label %142, label %138

138:                                              ; preds = %137
  %139 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %6
  %140 = load i8, ptr %139, align 1, !tbaa !195
  %141 = zext i8 %140 to i32
  br label %142

142:                                              ; preds = %138, %137
  %143 = phi i32 [ %0, %137 ], [ %141, %138 ]
  %144 = add i32 %143, -38
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !184
  %148 = getelementptr inbounds %struct.real_format, ptr %147, i64 0, i32 14
  %149 = load i8, ptr %148, align 1, !tbaa !302
  %150 = icmp ne i8 %149, 0
  %151 = load i32, ptr @flag_signed_zeros, align 4
  %152 = icmp ne i32 %151, 0
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %162, label %154

154:                                              ; preds = %136, %142
  %155 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65)
  %156 = select i1 %155, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14)
  %157 = sext i32 %0 to i64
  %158 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !184
  %160 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %156, ptr noundef %159, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0) #17
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %319

162:                                              ; preds = %142, %154, %127
  %163 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74)
  br i1 %163, label %164, label %167

164:                                              ; preds = %162
  %165 = tail call fastcc ptr @expand_parity(i32 noundef %0, ptr noundef %2, ptr noundef %3) #17
  %166 = icmp eq ptr %165, null
  br i1 %166, label %177, label %319

167:                                              ; preds = %162
  %168 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70)
  br i1 %168, label %169, label %172

169:                                              ; preds = %167
  %170 = tail call fastcc ptr @expand_ffs(i32 noundef %0, ptr noundef %2, ptr noundef %3) #17
  %171 = icmp eq ptr %170, null
  br i1 %171, label %177, label %319

172:                                              ; preds = %167
  %173 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72)
  br i1 %173, label %174, label %177

174:                                              ; preds = %172
  %175 = tail call fastcc ptr @expand_ctz(i32 noundef %0, ptr noundef %2, ptr noundef %3) #17
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %319

177:                                              ; preds = %164, %169, %172, %174, %34, %38, %44, %16, %20, %26
  %178 = tail call ptr @optab_libfunc(ptr noundef %1, i32 noundef %0) #17
  %179 = icmp eq ptr %178, null
  br i1 %179, label %229, label %180

180:                                              ; preds = %177
  %181 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70)
  %182 = or i1 %181, %12
  %183 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72)
  %184 = select i1 %182, i1 true, i1 %183
  %185 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73)
  %186 = select i1 %184, i1 true, i1 %185
  %187 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74)
  %188 = select i1 %186, i1 true, i1 %187
  br i1 %188, label %189, label %209

189:                                              ; preds = %180
  %190 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !184
  %191 = load i64, ptr %190, align 8
  %192 = and i64 %191, 65535
  %193 = icmp eq i64 %192, 14
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = tail call i32 @vector_type_mode(ptr noundef nonnull %190) #16
  br label %201

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.tree_type, ptr %190, i64 0, i32 6
  %198 = load i32, ptr %197, align 4
  %199 = lshr i32 %198, 16
  %200 = and i32 %199, 255
  br label %201

201:                                              ; preds = %196, %194
  %202 = phi i32 [ %195, %194 ], [ %200, %196 ]
  %203 = tail call ptr @optab_libfunc(ptr noundef %1, i32 noundef %0) #17
  %204 = tail call ptr @hard_libcall_value(i32 noundef %202, ptr noundef %203) #16
  %205 = load i32, ptr %204, align 8
  %206 = lshr i32 %205, 16
  %207 = and i32 %206, 255
  %208 = zext nneg i32 %207 to i64
  br label %209

209:                                              ; preds = %180, %201
  %210 = phi i64 [ %6, %180 ], [ %208, %201 ]
  %211 = phi i32 [ %0, %180 ], [ %207, %201 ]
  tail call void @start_sequence() #16
  %212 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef nonnull %178, ptr noundef null, i32 noundef 1, i32 noundef %211, i32 noundef 1, ptr noundef %2, i32 noundef %0) #16
  %213 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %214 = tail call ptr @gen_reg_rtx(i32 noundef %211) #16
  %215 = load i32, ptr %1, align 8, !tbaa !214
  %216 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %215, i32 noundef %0, ptr noundef %2) #16
  %217 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %210
  %218 = load i8, ptr %217, align 1, !tbaa !195
  %219 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %220 = load i8, ptr %219, align 1, !tbaa !195
  %221 = icmp ult i8 %218, %220
  br i1 %221, label %224, label %222

222:                                              ; preds = %209
  %223 = icmp ugt i8 %218, %220
  br i1 %223, label %224, label %227

224:                                              ; preds = %222, %209
  %225 = phi i32 [ 100, %209 ], [ 99, %222 ]
  %226 = tail call ptr @simplify_gen_unary(i32 noundef %225, i32 noundef %211, ptr noundef %216, i32 noundef %0) #16
  br label %227

227:                                              ; preds = %224, %222
  %228 = phi ptr [ %216, %222 ], [ %226, %224 ]
  tail call void @emit_libcall_block(ptr noundef %213, ptr noundef %214, ptr noundef %212, ptr noundef %228) #17
  br label %319

229:                                              ; preds = %177
  %230 = icmp eq i8 %8, 2
  switch i8 %8, label %287 [
    i8 11, label %231
    i8 9, label %231
    i8 8, label %231
    i8 7, label %231
    i8 6, label %231
    i8 5, label %231
    i8 4, label %231
    i8 2, label %231
  ]

231:                                              ; preds = %229, %229, %229, %229, %229, %229, %229, %229
  %232 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %6
  %233 = load i8, ptr %232, align 1, !tbaa !195
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %287, label %235

235:                                              ; preds = %231
  %236 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64)
  %237 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69)
  %238 = select i1 %236, i1 true, i1 %237
  %239 = select i1 %238, i1 %230, i1 false
  %240 = zext i1 %239 to i32
  %241 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  br label %242

242:                                              ; preds = %235, %283
  %243 = phi i8 [ %233, %235 ], [ %285, %283 ]
  %244 = zext i8 %243 to i32
  %245 = zext i8 %243 to i64
  %246 = getelementptr inbounds %struct.optab_d, ptr %1, i64 0, i32 4, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !203
  %248 = icmp eq i32 %247, 2956
  br i1 %248, label %249, label %252

249:                                              ; preds = %242
  %250 = tail call ptr @optab_libfunc(ptr noundef nonnull %1, i32 noundef %244) #17
  %251 = icmp eq ptr %250, null
  br i1 %251, label %283, label %252

252:                                              ; preds = %249, %242
  %253 = tail call ptr @get_last_insn() #16
  %254 = tail call fastcc ptr @widen_operand(ptr noundef %2, i32 noundef %244, i32 noundef %0, i32 noundef %4, i32 noundef %240) #17
  %255 = tail call ptr @expand_unop(i32 noundef %244, ptr noundef nonnull %1, ptr noundef %254, ptr noundef null, i32 noundef %4) #17
  %256 = icmp ne ptr %255, null
  %257 = select i1 %12, i1 %256, i1 false
  br i1 %257, label %258, label %269

258:                                              ; preds = %252
  %259 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %245
  %260 = load i8, ptr %259, align 1, !tbaa !195
  %261 = zext i8 %260 to i32
  %262 = load i8, ptr %241, align 1, !tbaa !195
  %263 = zext i8 %262 to i32
  %264 = sub nsw i32 %261, %263
  %265 = shl nsw i32 %264, 3
  %266 = sext i32 %265 to i64
  %267 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %266) #16
  %268 = tail call ptr @expand_binop(i32 noundef %244, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %255, ptr noundef %267, ptr noundef %3, i32 noundef 1, i32 noundef 0) #17
  br label %269

269:                                              ; preds = %258, %252
  %270 = phi ptr [ %268, %258 ], [ %255, %252 ]
  %271 = icmp eq ptr %270, null
  br i1 %271, label %282, label %272

272:                                              ; preds = %269
  br i1 %230, label %279, label %273

273:                                              ; preds = %272
  %274 = icmp eq ptr %3, null
  br i1 %274, label %275, label %277

275:                                              ; preds = %273
  %276 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %277

277:                                              ; preds = %275, %273
  %278 = phi ptr [ %276, %275 ], [ %3, %273 ]
  tail call void @convert_move(ptr noundef %278, ptr noundef nonnull %270, i32 noundef 0) #16
  br label %319

279:                                              ; preds = %272
  %280 = load ptr, ptr @rtl_hooks, align 8, !tbaa !236
  %281 = tail call ptr %280(i32 noundef %0, ptr noundef nonnull %270) #16
  br label %319

282:                                              ; preds = %269
  tail call void @delete_insns_since(ptr noundef %253) #16
  br label %283

283:                                              ; preds = %282, %249
  %284 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %245
  %285 = load i8, ptr %284, align 1, !tbaa !195
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %287, label %242, !llvm.loop !304

287:                                              ; preds = %283, %231, %229
  %288 = load i32, ptr %1, align 8, !tbaa !214
  %289 = icmp eq i32 %288, 51
  br i1 %289, label %290, label %318

290:                                              ; preds = %287
  switch i8 %8, label %310 [
    i8 8, label %291
    i8 9, label %291
    i8 11, label %291
    i8 17, label %291
  ]

291:                                              ; preds = %290, %290, %290, %290
  %292 = and i8 %8, -2
  %293 = icmp eq i8 %292, 8
  br i1 %293, label %298, label %294

294:                                              ; preds = %291
  %295 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %6
  %296 = load i8, ptr %295, align 1, !tbaa !195
  %297 = zext i8 %296 to i32
  br label %298

298:                                              ; preds = %294, %291
  %299 = phi i32 [ %0, %291 ], [ %297, %294 ]
  %300 = add i32 %299, -38
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !184
  %304 = getelementptr inbounds %struct.real_format, ptr %303, i64 0, i32 14
  %305 = load i8, ptr %304, align 1, !tbaa !302
  %306 = icmp ne i8 %305, 0
  %307 = load i32, ptr @flag_signed_zeros, align 4
  %308 = icmp ne i32 %307, 0
  %309 = select i1 %306, i1 %308, i1 false
  br i1 %309, label %318, label %310

310:                                              ; preds = %290, %298
  %311 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65)
  %312 = select i1 %311, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14)
  %313 = sext i32 %0 to i64
  %314 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %313
  %315 = load ptr, ptr %314, align 8, !tbaa !184
  %316 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %312, ptr noundef %315, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 3) #17
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %319

318:                                              ; preds = %310, %298, %287
  br label %319

319:                                              ; preds = %277, %279, %76, %78, %174, %169, %164, %154, %133, %44, %31, %26, %13, %5, %310, %318, %227, %124
  %320 = phi ptr [ %214, %227 ], [ null, %318 ], [ %316, %310 ], [ %106, %124 ], [ %9, %5 ], [ %14, %13 ], [ %27, %26 ], [ %32, %31 ], [ %45, %44 ], [ %134, %133 ], [ %160, %154 ], [ %165, %164 ], [ %170, %169 ], [ %175, %174 ], [ %80, %78 ], [ %77, %76 ], [ %281, %279 ], [ %278, %277 ]
  ret ptr %320
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_unop_direct(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !298 !PGOFuncName !305 {
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds %struct.optab_d, ptr %1, i64 0, i32 4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !203
  %9 = icmp eq i32 %8, 2956
  br i1 %9, label %70, label %10, !prof !299

10:                                               ; preds = %5
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !205
  %14 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 1, i32 2
  %15 = load i16, ptr %14, align 8
  %16 = zext i16 %15 to i32
  %17 = tail call ptr @get_last_insn() #16
  %18 = icmp eq ptr %3, null
  br i1 %18, label %19, label %21, !prof !299

19:                                               ; preds = %10
  %20 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %21

21:                                               ; preds = %10, %19
  %22 = phi ptr [ %20, %19 ], [ %3, %10 ]
  %23 = load i32, ptr %2, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq i32 %25, %16
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %31, label %29, !prof !306

29:                                               ; preds = %21
  %30 = tail call ptr @convert_to_mode(i32 noundef %16, ptr noundef nonnull %2, i32 noundef %4) #16
  br label %31

31:                                               ; preds = %29, %21
  %32 = phi ptr [ %30, %29 ], [ %2, %21 ]
  %33 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !209
  %35 = tail call i32 %34(ptr noundef %32, i32 noundef %16) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39, !prof !299

37:                                               ; preds = %31
  %38 = tail call ptr @copy_to_mode_reg(i32 noundef %16, ptr noundef %32) #16
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi ptr [ %32, %31 ], [ %38, %37 ]
  %41 = load ptr, ptr %13, align 8, !tbaa !209
  %42 = tail call i32 %41(ptr noundef %22, i32 noundef %0) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46, !prof !299

44:                                               ; preds = %39
  %45 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi ptr [ %22, %39 ], [ %45, %44 ]
  %48 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !211
  %50 = tail call ptr (ptr, ...) %49(ptr noundef %47, ptr noundef %40) #16
  %51 = icmp eq ptr %50, null
  br i1 %51, label %69, label %52, !prof !299

52:                                               ; preds = %46
  %53 = load i32, ptr %50, align 8
  %54 = and i32 %53, 65535
  %55 = add nsw i32 %54, -7
  %56 = icmp ult i32 %55, 4
  br i1 %56, label %57, label %67, !prof !307

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 2
  %59 = load ptr, ptr %58, align 8, !tbaa !195
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61, !prof !308

61:                                               ; preds = %57
  %62 = load i32, ptr %1, align 8, !tbaa !214
  %63 = tail call fastcc i32 @add_equal_note(ptr noundef nonnull %50, ptr noundef %47, i32 noundef %62, ptr noundef %40, ptr noundef null) #17, !range !257
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  tail call void @delete_insns_since(ptr noundef %17) #16
  %66 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null, i32 noundef %4) #17
  br label %70

67:                                               ; preds = %52, %61, %57
  %68 = tail call ptr @emit_insn(ptr noundef nonnull %50) #16
  br label %70

69:                                               ; preds = %46
  tail call void @delete_insns_since(ptr noundef %17) #16
  br label %70

70:                                               ; preds = %65, %67, %5, %69
  %71 = phi ptr [ null, %69 ], [ null, %5 ], [ %66, %65 ], [ %47, %67 ]
  ret ptr %71
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @widen_clz(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !174 !PGOFuncName !309 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !195
  switch i8 %6, label %43 [
    i8 11, label %7
    i8 9, label %7
    i8 8, label %7
    i8 7, label %7
    i8 6, label %7
    i8 5, label %7
    i8 4, label %7
    i8 2, label %7
  ]

7:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  br label %8

8:                                                ; preds = %7, %13
  %9 = phi i64 [ %14, %13 ], [ %4, %7 ]
  %10 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !195
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %8
  %14 = zext i8 %11 to i64
  %15 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 4, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !203
  %17 = icmp eq i32 %16, 2956
  br i1 %17, label %8, label %18, !llvm.loop !310

18:                                               ; preds = %13
  %19 = zext i8 %11 to i32
  %20 = tail call ptr @get_last_insn() #16
  %21 = icmp eq ptr %2, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ %2, %18 ]
  %26 = tail call fastcc ptr @widen_operand(ptr noundef %1, i32 noundef %19, i32 noundef %0, i32 noundef 1, i32 noundef 0) #17
  %27 = tail call ptr @expand_unop(i32 noundef %19, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71), ptr noundef %26, ptr noundef null, i32 noundef 1) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %31 = load i8, ptr %30, align 1, !tbaa !195
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %34 = load i8, ptr %33, align 1, !tbaa !195
  %35 = zext i8 %34 to i32
  %36 = sub nsw i32 %32, %35
  %37 = shl nsw i32 %36, 3
  %38 = sext i32 %37 to i64
  %39 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %38) #16
  %40 = tail call ptr @expand_binop(i32 noundef %19, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %27, ptr noundef %39, ptr noundef %25, i32 noundef 1, i32 noundef 0) #17
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %24, %29
  tail call void @delete_insns_since(ptr noundef %20) #16
  br label %43

43:                                               ; preds = %8, %42, %29, %3
  %44 = phi ptr [ null, %3 ], [ %40, %29 ], [ null, %42 ], [ null, %8 ]
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_doubleword_clz(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !174 !PGOFuncName !311 {
  %4 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %1) #16
  %5 = load i32, ptr @word_mode, align 4, !tbaa !213
  %6 = tail call ptr @gen_highpart(i32 noundef %5, ptr noundef %4) #16
  %7 = load ptr, ptr @rtl_hooks, align 8, !tbaa !236
  %8 = load i32, ptr @word_mode, align 4, !tbaa !213
  %9 = tail call ptr %7(i32 noundef %8, ptr noundef %4) #16
  %10 = tail call ptr @gen_label_rtx() #16
  %11 = tail call ptr @gen_label_rtx() #16
  %12 = icmp eq ptr %2, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, ptr @word_mode, align 4, !tbaa !213
  %15 = tail call ptr @gen_reg_rtx(i32 noundef %14) #16
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi ptr [ %2, %3 ], [ %15, %13 ]
  %18 = load i32, ptr @word_mode, align 4, !tbaa !213
  %19 = tail call ptr @gen_reg_rtx(i32 noundef %18) #16
  tail call void @start_sequence() #16
  %20 = load i32, ptr @word_mode, align 4, !tbaa !213
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !184
  tail call void @emit_cmp_and_jump_insns(ptr noundef %6, ptr noundef %23, i32 noundef 81, ptr noundef null, i32 noundef %20, i32 noundef 1, ptr noundef %10) #17
  %24 = load i32, ptr @word_mode, align 4, !tbaa !213
  %25 = tail call fastcc ptr @expand_unop_direct(i32 noundef %24, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71), ptr noundef %6, ptr noundef %19, i32 noundef 1) #17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %56, label %27

27:                                               ; preds = %16
  %28 = icmp eq ptr %25, %19
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  tail call void @convert_move(ptr noundef %19, ptr noundef nonnull %25, i32 noundef 1) #16
  br label %30

30:                                               ; preds = %29, %27
  %31 = tail call ptr @gen_jump(ptr noundef %11) #16
  %32 = tail call ptr @emit_jump_insn(ptr noundef %31) #16
  %33 = tail call ptr @emit_barrier() #16
  %34 = tail call ptr @emit_label(ptr noundef %10) #16
  %35 = load i32, ptr @word_mode, align 4, !tbaa !213
  %36 = tail call fastcc ptr @expand_unop_direct(i32 noundef %35, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71), ptr noundef %9, ptr noundef null, i32 noundef 1) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %30
  %39 = load i32, ptr @word_mode, align 4, !tbaa !213
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !195
  %43 = zext i8 %42 to i64
  %44 = shl nuw nsw i64 %43, 3
  %45 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %44) #16
  %46 = tail call ptr @expand_binop(i32 noundef %39, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef nonnull %36, ptr noundef %45, ptr noundef %19, i32 noundef 1, i32 noundef 0) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %38
  %49 = icmp eq ptr %46, %19
  br i1 %49, label %51, label %50

50:                                               ; preds = %48
  tail call void @convert_move(ptr noundef %19, ptr noundef nonnull %46, i32 noundef 1) #16
  br label %51

51:                                               ; preds = %50, %48
  %52 = tail call ptr @emit_label(ptr noundef %11) #16
  tail call void @convert_move(ptr noundef %17, ptr noundef %19, i32 noundef 1) #16
  %53 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %54 = tail call fastcc i32 @add_equal_note(ptr noundef %53, ptr noundef %17, i32 noundef 115, ptr noundef %4, ptr noundef null) #17, !range !257
  %55 = tail call ptr @emit_insn(ptr noundef %53) #16
  br label %57

56:                                               ; preds = %38, %30, %16
  tail call void @end_sequence() #16
  br label %57

57:                                               ; preds = %56, %51
  %58 = phi ptr [ %17, %51 ], [ null, %56 ]
  ret ptr %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @widen_bswap(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !174 !PGOFuncName !312 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !195
  switch i8 %6, label %47 [
    i8 11, label %7
    i8 9, label %7
    i8 8, label %7
    i8 7, label %7
    i8 6, label %7
    i8 5, label %7
    i8 4, label %7
    i8 2, label %7
  ]

7:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  br label %8

8:                                                ; preds = %7, %13
  %9 = phi i64 [ %14, %13 ], [ %4, %7 ]
  %10 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !195
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %8
  %14 = zext i8 %11 to i64
  %15 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68, i32 4, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !203
  %17 = icmp eq i32 %16, 2956
  br i1 %17, label %8, label %18, !llvm.loop !313

18:                                               ; preds = %13
  %19 = zext i8 %11 to i32
  %20 = tail call ptr @get_last_insn() #16
  %21 = tail call fastcc ptr @widen_operand(ptr noundef %1, i32 noundef %19, i32 noundef %0, i32 noundef 1, i32 noundef 1) #17
  %22 = tail call ptr @expand_unop(i32 noundef %19, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68), ptr noundef %21, ptr noundef null, i32 noundef 1) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %26 = load i8, ptr %25, align 1, !tbaa !195
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %29 = load i8, ptr %28, align 1, !tbaa !195
  %30 = zext i8 %29 to i32
  %31 = sub nsw i32 %27, %30
  %32 = shl nsw i32 %31, 3
  %33 = sext i32 %32 to i64
  %34 = tail call ptr @size_int_kind(i64 noundef %33, i32 noundef 0) #16
  %35 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %19, ptr noundef nonnull %22, ptr noundef %34, ptr noundef null, i32 noundef 1) #16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %24
  %38 = icmp eq ptr %2, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi ptr [ %40, %39 ], [ %2, %37 ]
  %43 = load ptr, ptr @rtl_hooks, align 8, !tbaa !236
  %44 = tail call ptr %43(i32 noundef %0, ptr noundef nonnull %35) #16
  %45 = tail call ptr @emit_move_insn(ptr noundef %42, ptr noundef %44) #16
  br label %47

46:                                               ; preds = %18, %24
  tail call void @delete_insns_since(ptr noundef %20) #16
  br label %47

47:                                               ; preds = %8, %41, %46, %3
  %48 = phi ptr [ null, %3 ], [ %42, %41 ], [ %2, %46 ], [ null, %8 ]
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @expand_doubleword_bswap(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !174 !PGOFuncName !314 {
  %4 = load i32, ptr @word_mode, align 4, !tbaa !213
  %5 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef 0, i32 noundef %0) #16
  %6 = tail call ptr @expand_unop(i32 noundef %4, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68), ptr noundef %5, ptr noundef null, i32 noundef 1) #17
  %7 = load i32, ptr @word_mode, align 4, !tbaa !213
  %8 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef 1, i32 noundef %0) #16
  %9 = tail call ptr @expand_unop(i32 noundef %7, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68), ptr noundef %8, ptr noundef null, i32 noundef 1) #17
  %10 = icmp eq ptr %2, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = tail call ptr @emit_clobber(ptr noundef nonnull %14) #16
  br label %20

20:                                               ; preds = %18, %13
  %21 = tail call ptr @operand_subword(ptr noundef nonnull %14, i32 noundef 0, i32 noundef 1, i32 noundef %0) #16
  %22 = tail call ptr @emit_move_insn(ptr noundef %21, ptr noundef %9) #16
  %23 = tail call ptr @operand_subword(ptr noundef nonnull %14, i32 noundef 1, i32 noundef 1, i32 noundef %0) #16
  %24 = tail call ptr @emit_move_insn(ptr noundef %23, ptr noundef %6) #16
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_absneg_bit(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !174 !PGOFuncName !315 {
  %5 = zext i32 %1 to i64
  %6 = add i32 %1, -38
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !184
  %10 = icmp eq ptr %9, null
  br i1 %10, label %94, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.real_format, ptr %9, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !316
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %94, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %0, 51
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.real_format, ptr %9, i64 0, i32 14
  %19 = load i8, ptr %18, align 1, !tbaa !302
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %94, label %21

21:                                               ; preds = %17, %15
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %23 = load i8, ptr %22, align 1, !tbaa !195
  %24 = icmp ult i8 %23, 5
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = tail call i32 @int_mode_for_mode(i32 noundef %1) #16
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %94, label %36

28:                                               ; preds = %21
  %29 = zext i8 %23 to i32
  %30 = load i32, ptr @word_mode, align 4, !tbaa !213
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
  %41 = icmp ult i32 %40, 64
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
  %57 = tail call ptr @gen_reg_rtx(i32 noundef %1) #16
  br label %58

58:                                               ; preds = %36, %56
  %59 = phi ptr [ %57, %56 ], [ %3, %36 ]
  %60 = icmp ugt i32 %38, 1
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  tail call void @start_sequence() #16
  %62 = select i1 %49, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43)
  br label %63

63:                                               ; preds = %61, %75
  %64 = phi i32 [ 0, %61 ], [ %76, %75 ]
  %65 = tail call ptr @operand_subword(ptr noundef %59, i32 noundef %64, i32 noundef 1, i32 noundef %1) #16
  %66 = tail call ptr @operand_subword_force(ptr noundef %2, i32 noundef %64, i32 noundef %1) #16
  %67 = icmp eq i32 %64, %37
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = tail call ptr @immed_double_const(i64 noundef %52, i64 noundef %51, i32 noundef %39) #16
  %70 = tail call ptr @expand_binop(i32 noundef %39, ptr noundef nonnull %62, ptr noundef %66, ptr noundef %69, ptr noundef %65, i32 noundef 1, i32 noundef 3) #17
  %71 = icmp eq ptr %70, %65
  br i1 %71, label %75, label %72

72:                                               ; preds = %63, %68
  %73 = phi ptr [ %70, %68 ], [ %66, %63 ]
  %74 = tail call ptr @emit_move_insn(ptr noundef %65, ptr noundef %73) #16
  br label %75

75:                                               ; preds = %72, %68
  %76 = add nuw nsw i32 %64, 1
  %77 = icmp eq i32 %76, %38
  br i1 %77, label %78, label %63, !llvm.loop !317

78:                                               ; preds = %75
  %79 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %80 = tail call ptr @emit_insn(ptr noundef %79) #16
  br label %94

81:                                               ; preds = %58
  %82 = select i1 %49, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43)
  %83 = load ptr, ptr @rtl_hooks, align 8, !tbaa !236
  %84 = tail call ptr %83(i32 noundef %39, ptr noundef %2) #16
  %85 = tail call ptr @immed_double_const(i64 noundef %52, i64 noundef %51, i32 noundef %39) #16
  %86 = load ptr, ptr @rtl_hooks, align 8, !tbaa !236
  %87 = tail call ptr %86(i32 noundef %39, ptr noundef %59) #16
  %88 = tail call ptr @expand_binop(i32 noundef %39, ptr noundef nonnull %82, ptr noundef %84, ptr noundef %85, ptr noundef %87, i32 noundef 1, i32 noundef 3) #17
  %89 = tail call fastcc ptr @lowpart_subreg_maybe_copy(i32 noundef %1, ptr noundef %88, i32 noundef %39) #17
  %90 = tail call ptr @get_last_insn() #16
  %91 = tail call ptr @copy_rtx(ptr noundef %2) #16
  %92 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %0, i32 noundef %1, ptr noundef %91) #16
  %93 = tail call ptr @set_unique_reg_note(ptr noundef %90, i32 noundef 4, ptr noundef %92) #16
  br label %94

94:                                               ; preds = %78, %81, %25, %17, %11, %4
  %95 = phi ptr [ null, %4 ], [ null, %11 ], [ null, %17 ], [ null, %25 ], [ %59, %78 ], [ %89, %81 ]
  ret ptr %95
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_parity(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !174 !PGOFuncName !318 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !195
  switch i8 %6, label %36 [
    i8 11, label %7
    i8 9, label %7
    i8 8, label %7
    i8 7, label %7
    i8 6, label %7
    i8 5, label %7
    i8 4, label %7
    i8 2, label %7
  ]

7:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %7, %30
  %10 = phi i32 [ %34, %30 ], [ %0, %7 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73, i32 4, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !203
  %14 = icmp eq i32 %13, 2956
  br i1 %14, label %30, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @get_last_insn() #16
  %17 = icmp eq ptr %2, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi ptr [ %19, %18 ], [ %2, %15 ]
  %22 = tail call fastcc ptr @widen_operand(ptr noundef %1, i32 noundef %10, i32 noundef %0, i32 noundef 1, i32 noundef 0) #17
  %23 = tail call ptr @expand_unop(i32 noundef %10, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73), ptr noundef %22, ptr noundef null, i32 noundef 1) #17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !184
  %27 = tail call ptr @expand_binop(i32 noundef %10, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef nonnull %23, ptr noundef %26, ptr noundef %21, i32 noundef 1, i32 noundef 0) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %20, %25
  tail call void @delete_insns_since(ptr noundef %16) #16
  br label %36

30:                                               ; preds = %9
  %31 = zext i32 %10 to i64
  %32 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !195
  %34 = zext i8 %33 to i32
  %35 = icmp eq i8 %33, 0
  br i1 %35, label %36, label %9, !llvm.loop !319

36:                                               ; preds = %30, %7, %29, %25, %3
  %37 = phi ptr [ null, %3 ], [ %27, %25 ], [ null, %29 ], [ null, %7 ], [ null, %30 ]
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_ffs(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !174 !PGOFuncName !320 {
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72, i32 4, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !203
  %7 = icmp eq i32 %6, 2956
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  tail call void @start_sequence() #16
  %9 = tail call fastcc ptr @expand_unop_direct(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72), ptr noundef %1, ptr noundef null, i32 noundef 1) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %18

11:                                               ; preds = %3
  %12 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 4, i64 %4
  %13 = load i32, ptr %12, align 4, !tbaa !203
  %14 = icmp eq i32 %13, 2956
  br i1 %14, label %33, label %15

15:                                               ; preds = %11
  tail call void @start_sequence() #16
  %16 = tail call fastcc ptr @expand_ctz(i32 noundef %0, ptr noundef %1, ptr noundef null) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %15, %8
  %19 = phi ptr [ %16, %15 ], [ %9, %8 ]
  %20 = tail call ptr @gen_label_rtx() #16
  %21 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %4
  %22 = load ptr, ptr %21, align 8, !tbaa !184
  tail call void @emit_cmp_and_jump_insns(ptr noundef %1, ptr noundef %22, i32 noundef 80, ptr noundef null, i32 noundef %0, i32 noundef 1, ptr noundef %20) #17
  %23 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef -1) #16
  tail call void @convert_move(ptr noundef nonnull %19, ptr noundef %23, i32 noundef 0) #16
  %24 = tail call ptr @emit_label(ptr noundef %20) #16
  %25 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 1) #16
  %26 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef nonnull %19, ptr noundef %25, ptr noundef %2, i32 noundef 0, i32 noundef 0) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %30 = tail call fastcc i32 @add_equal_note(ptr noundef %29, ptr noundef nonnull %26, i32 noundef 114, ptr noundef %1, ptr noundef null) #17, !range !257
  %31 = tail call ptr @emit_insn(ptr noundef %29) #16
  br label %33

32:                                               ; preds = %18, %15, %8
  tail call void @end_sequence() #16
  br label %33

33:                                               ; preds = %11, %32, %28
  %34 = phi ptr [ %26, %28 ], [ null, %32 ], [ null, %11 ]
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_ctz(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !174 !PGOFuncName !321 {
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 4, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !203
  %7 = icmp eq i32 %6, 2956
  br i1 %7, label %33, label %8

8:                                                ; preds = %3
  tail call void @start_sequence() #16
  %9 = tail call fastcc ptr @expand_unop_direct(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %1, ptr noundef null, i32 noundef 1) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %1, ptr noundef nonnull %9, ptr noundef null, i32 noundef 1, i32 noundef 0) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @expand_unop_direct(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71), ptr noundef nonnull %12, ptr noundef null, i32 noundef 1) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = zext i32 %0 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !195
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 3
  %23 = add nsw i32 %22, -1
  %24 = sext i32 %23 to i64
  %25 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %24) #16
  %26 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %25, ptr noundef nonnull %15, ptr noundef %2, i32 noundef 1, i32 noundef 0) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %8, %11, %14, %17
  tail call void @end_sequence() #16
  br label %33

29:                                               ; preds = %17
  %30 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %31 = tail call fastcc i32 @add_equal_note(ptr noundef %30, ptr noundef nonnull %26, i32 noundef 116, ptr noundef %1, ptr noundef null) #17, !range !257
  %32 = tail call ptr @emit_insn(ptr noundef %30) #16
  br label %33

33:                                               ; preds = %3, %29, %28
  %34 = phi ptr [ null, %28 ], [ %26, %29 ], [ null, %3 ]
  ret ptr %34
}

; Function Attrs: optsize
declare ptr @hard_libcall_value(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_unary(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_abs_nojump(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !174 {
  %5 = load i32, ptr @flag_trapv, align 4, !tbaa !213
  %6 = icmp ne i32 %5, 0
  %7 = icmp eq i32 %3, 0
  %8 = and i1 %7, %6
  %9 = select i1 %8, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66)
  %10 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2, i32 noundef 0) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %76

12:                                               ; preds = %4
  %13 = zext i32 %0 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !195
  %16 = and i8 %15, -2
  %17 = icmp eq i8 %16, 8
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = tail call fastcc ptr @expand_absneg_bit(i32 noundef 111, i32 noundef %0, ptr noundef %1, ptr noundef %2) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %76

21:                                               ; preds = %12, %18
  %22 = sext i32 %0 to i64
  %23 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !203
  %25 = icmp eq i32 %24, 2956
  br i1 %25, label %52, label %26

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
  %30 = load i8, ptr %29, align 1, !tbaa !195
  %31 = zext i8 %30 to i32
  br label %32

32:                                               ; preds = %28, %27
  %33 = phi i32 [ %0, %27 ], [ %31, %28 ]
  %34 = add i32 %33, -38
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !184
  %38 = getelementptr inbounds %struct.real_format, ptr %37, i64 0, i32 14
  %39 = load i8, ptr %38, align 1, !tbaa !302
  %40 = icmp ne i8 %39, 0
  %41 = load i32, ptr @flag_signed_zeros, align 4
  %42 = icmp ne i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %75, label %44

44:                                               ; preds = %26, %32
  %45 = tail call ptr @get_last_insn() #16
  %46 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef %1, ptr noundef null, i32 noundef 0) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55), ptr noundef %1, ptr noundef nonnull %46, ptr noundef %2, i32 noundef 0, i32 noundef 2) #17
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %76

51:                                               ; preds = %44, %48
  tail call void @delete_insns_since(ptr noundef %45) #16
  br label %52

52:                                               ; preds = %51, %21
  %53 = icmp eq i8 %15, 2
  br i1 %53, label %54, label %75

54:                                               ; preds = %52
  %55 = tail call zeroext i8 @optimize_insn_for_speed_p() #16
  %56 = icmp eq i8 %55, 0
  %57 = load i32, ptr @ix86_branch_cost, align 4
  %58 = icmp sgt i32 %57, 1
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %13
  %62 = load i8, ptr %61, align 1, !tbaa !195
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 3
  %65 = add nsw i32 %64, -1
  %66 = sext i32 %65 to i64
  %67 = tail call ptr @size_int_kind(i64 noundef %66, i32 noundef 0) #16
  %68 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef %1, ptr noundef %67, ptr noundef null, i32 noundef 0) #16
  %69 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %68, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 3) #17
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %60
  %72 = select i1 %8, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14)
  %73 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull %72, ptr noundef nonnull %69, ptr noundef %68, ptr noundef %2, i32 noundef 0, i32 noundef 3) #17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %60, %32, %71, %54, %52
  br label %76

76:                                               ; preds = %48, %18, %4, %71, %75
  %77 = phi ptr [ null, %75 ], [ %73, %71 ], [ %10, %4 ], [ %19, %18 ], [ %49, %48 ]
  ret ptr %77
}

; Function Attrs: optsize
declare ptr @expand_shift(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_abs(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !174 {
  %6 = load i32, ptr @flag_trapv, align 4, !tbaa !213
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 %3
  %9 = tail call ptr @expand_abs_nojump(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %8) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %61

11:                                               ; preds = %5
  %12 = icmp eq ptr %1, %2
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = load i32, ptr %1, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #17
  %19 = icmp ugt i32 %18, 52
  %20 = select i1 %19, i32 1, i32 %4
  br label %21

21:                                               ; preds = %17, %13, %11
  %22 = phi i32 [ %4, %13 ], [ %4, %11 ], [ %20, %17 ]
  %23 = tail call ptr @gen_label_rtx() #16
  %24 = icmp ne ptr %2, null
  %25 = icmp ne i32 %22, 0
  %26 = and i1 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i32, ptr %2, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = icmp ne i32 %30, %0
  %32 = and i32 %28, 134283263
  %33 = icmp eq i32 %32, 134217771
  %34 = or i1 %33, %31
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = and i32 %28, 65535
  %37 = icmp eq i32 %36, 37
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #17
  %40 = icmp ult i32 %39, 53
  br i1 %40, label %41, label %43

41:                                               ; preds = %38, %27, %21
  %42 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %43

43:                                               ; preds = %41, %38, %35
  %44 = phi ptr [ %42, %41 ], [ %2, %38 ], [ %2, %35 ]
  %45 = tail call ptr @emit_move_insn(ptr noundef %44, ptr noundef %1) #16
  %46 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !275
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !275
  %48 = sext i32 %0 to i64
  %49 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !184
  tail call void @do_compare_rtx_and_jump(ptr noundef %44, ptr noundef %50, i32 noundef 82, i32 noundef 0, i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef %23, i32 noundef -1) #16
  %51 = icmp eq i32 %8, 0
  %52 = select i1 %51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64)
  %53 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull %52, ptr noundef %44, ptr noundef %44, i32 noundef 0) #17
  %54 = icmp eq ptr %53, %44
  br i1 %54, label %57, label %55

55:                                               ; preds = %43
  %56 = tail call ptr @emit_move_insn(ptr noundef %44, ptr noundef %53) #16
  br label %57

57:                                               ; preds = %55, %43
  %58 = tail call ptr @emit_label(ptr noundef %23) #16
  %59 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !275
  %60 = add nsw i32 %59, -1
  store i32 %60, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !275
  br label %61

61:                                               ; preds = %5, %57
  %62 = phi ptr [ %44, %57 ], [ %9, %5 ]
  ret ptr %62
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !174 !PGOFuncName !322 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !195
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @gen_label_rtx() local_unnamed_addr #2

; Function Attrs: optsize
declare void @do_compare_rtx_and_jump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_one_cmpl_abs_nojump(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !174 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !195
  %7 = add i8 %6, -8
  %8 = icmp ult i8 %7, 10
  br i1 %8, label %42, label %9

9:                                                ; preds = %42, %3
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 4, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !203
  %13 = icmp eq i32 %12, 2956
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @get_last_insn() #16
  %16 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), ptr noundef %1, ptr noundef null, i32 noundef 0) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55), ptr noundef %1, ptr noundef nonnull %16, ptr noundef %2, i32 noundef 0, i32 noundef 2) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %14, %18
  tail call void @delete_insns_since(ptr noundef %15) #16
  br label %22

22:                                               ; preds = %21, %9
  %23 = icmp eq i8 %6, 2
  br i1 %23, label %24, label %41

24:                                               ; preds = %22
  %25 = tail call zeroext i8 @optimize_insn_for_speed_p() #16
  %26 = icmp eq i8 %25, 0
  %27 = load i32, ptr @ix86_branch_cost, align 4
  %28 = icmp sgt i32 %27, 1
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %32 = load i8, ptr %31, align 1, !tbaa !195
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 3
  %35 = add nsw i32 %34, -1
  %36 = sext i32 %35 to i64
  %37 = tail call ptr @size_int_kind(i64 noundef %36, i32 noundef 0) #16
  %38 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %0, ptr noundef %1, ptr noundef %37, ptr noundef null, i32 noundef 0) #16
  %39 = tail call ptr @expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %38, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 3) #17
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %30, %24, %22
  br label %47

42:                                               ; preds = %3
  %43 = zext nneg i8 %7 to i16
  %44 = lshr i16 523, %43
  %45 = and i16 %44, 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %9, label %47

47:                                               ; preds = %42, %18, %30, %41
  %48 = phi ptr [ null, %41 ], [ %39, %30 ], [ %19, %18 ], [ null, %42 ]
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_copysign(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !174 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !195
  %10 = and i8 %9, -2
  %11 = icmp eq i8 %10, 8
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3749, ptr noundef nonnull @.str.1) #16
  br label %13

13:                                               ; preds = %3, %12
  %14 = load i32, ptr %1, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, %6
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3750, ptr noundef nonnull @.str.1) #16
  br label %19

19:                                               ; preds = %13, %18
  %20 = tail call ptr @expand_binop(i32 noundef %6, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 102), ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, i32 noundef 0) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %69

22:                                               ; preds = %19
  %23 = add nsw i32 %6, -38
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !184
  %27 = icmp eq ptr %26, null
  br i1 %27, label %69, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.real_format, ptr %26, i64 0, i32 14
  %30 = load i8, ptr %29, align 1, !tbaa !302
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %69, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %0, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = tail call zeroext i8 @real_isneg(ptr noundef nonnull %37) #16
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @simplify_unary_operation(i32 noundef 111, i32 noundef %6, ptr noundef nonnull %0, i32 noundef %6) #16
  br label %42

42:                                               ; preds = %36, %40, %32
  %43 = phi ptr [ %0, %32 ], [ %41, %40 ], [ %0, %36 ]
  %44 = phi i8 [ 0, %32 ], [ 1, %40 ], [ 1, %36 ]
  %45 = getelementptr inbounds %struct.real_format, ptr %26, i64 0, i32 7
  %46 = load i32, ptr %45, align 4, !tbaa !323
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load i32, ptr %43, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 4, i64 %7
  %54 = load i32, ptr %53, align 4, !tbaa !203
  %55 = icmp eq i32 %54, 2956
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66, i32 4, i64 %7
  %58 = load i32, ptr %57, align 4, !tbaa !203
  %59 = icmp eq i32 %58, 2956
  br i1 %59, label %63, label %60

60:                                               ; preds = %56, %48
  %61 = tail call fastcc ptr @expand_copysign_absneg(i32 noundef %6, ptr noundef nonnull %43, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %46, i8 noundef zeroext %44) #17
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60, %56, %52, %42
  %64 = getelementptr inbounds %struct.real_format, ptr %26, i64 0, i32 8
  %65 = load i32, ptr %64, align 8, !tbaa !316
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = tail call fastcc ptr @expand_copysign_bit(i32 noundef %6, ptr noundef %43, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %65, i8 noundef zeroext %44) #17
  br label %69

69:                                               ; preds = %63, %60, %22, %28, %19, %67
  %70 = phi ptr [ %68, %67 ], [ %20, %19 ], [ null, %28 ], [ null, %22 ], [ %61, %60 ], [ null, %63 ]
  ret ptr %70
}

; Function Attrs: optsize
declare zeroext i8 @real_isneg(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_unary_operation(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_copysign_absneg(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 !prof !174 !PGOFuncName !324 {
  %7 = icmp eq ptr %3, %2
  %8 = select i1 %7, ptr null, ptr %3
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 103, i32 4, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !203
  %12 = icmp eq i32 %11, 2956
  br i1 %12, label %21, label %13

13:                                               ; preds = %6
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %14, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !205
  %17 = getelementptr inbounds %struct.insn_operand_data, ptr %16, i64 0, i32 2
  %18 = load i16, ptr %17, align 8
  %19 = zext i16 %18 to i32
  %20 = tail call ptr @gen_reg_rtx(i32 noundef %19) #16
  tail call void @emit_unop_insn(i32 noundef %11, ptr noundef %20, ptr noundef %2, i32 noundef 0) #17
  br label %51

21:                                               ; preds = %6
  %22 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %23 = load i8, ptr %22, align 1, !tbaa !195
  %24 = icmp ult i8 %23, 5
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = tail call i32 @int_mode_for_mode(i32 noundef %0) #16
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %83, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr @rtl_hooks, align 8, !tbaa !236
  %30 = tail call ptr %29(i32 noundef %26, ptr noundef %2) #16
  br label %36

31:                                               ; preds = %21
  %32 = load i32, ptr @word_mode, align 4, !tbaa !213
  %33 = sdiv i32 %4, 32
  %34 = srem i32 %4, 32
  %35 = tail call ptr @operand_subword_force(ptr noundef %2, i32 noundef %33, i32 noundef %0) #16
  br label %36

36:                                               ; preds = %28, %31
  %37 = phi i32 [ %4, %28 ], [ %34, %31 ]
  %38 = phi i32 [ %26, %28 ], [ %32, %31 ]
  %39 = phi ptr [ %30, %28 ], [ %35, %31 ]
  %40 = icmp slt i32 %37, 64
  %41 = zext nneg i32 %37 to i64
  %42 = shl nuw i64 1, %41
  %43 = add nsw i32 %37, -64
  %44 = zext nneg i32 %43 to i64
  %45 = shl nuw i64 1, %44
  %46 = select i1 %40, i64 0, i64 %45
  %47 = select i1 %40, i64 %42, i64 0
  %48 = tail call ptr @gen_reg_rtx(i32 noundef %38) #16
  %49 = tail call ptr @immed_double_const(i64 noundef %47, i64 noundef %46, i32 noundef %38) #16
  %50 = tail call ptr @expand_binop(i32 noundef %38, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %39, ptr noundef %49, ptr noundef null, i32 noundef 1, i32 noundef 3) #17
  br label %51

51:                                               ; preds = %36, %13
  %52 = phi i32 [ %19, %13 ], [ %38, %36 ]
  %53 = phi ptr [ %20, %13 ], [ %50, %36 ]
  %54 = icmp eq i8 %5, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66), ptr noundef %1, ptr noundef %8, i32 noundef 0) #17
  %57 = icmp eq ptr %56, null
  br i1 %57, label %83, label %64

58:                                               ; preds = %51
  %59 = icmp eq ptr %8, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %58
  %61 = tail call ptr @copy_to_reg(ptr noundef %1) #16
  br label %64

62:                                               ; preds = %58
  %63 = tail call ptr @emit_move_insn(ptr noundef nonnull %8, ptr noundef %1) #16
  br label %64

64:                                               ; preds = %55, %60, %62
  %65 = phi ptr [ %61, %60 ], [ %3, %62 ], [ %56, %55 ]
  %66 = phi ptr [ %1, %60 ], [ %1, %62 ], [ %56, %55 ]
  %67 = tail call ptr @gen_label_rtx() #16
  %68 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !184
  tail call void @emit_cmp_and_jump_insns(ptr noundef %53, ptr noundef %68, i32 noundef 81, ptr noundef null, i32 noundef %52, i32 noundef 1, ptr noundef %67) #17
  %69 = load i32, ptr %66, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = tail call ptr @simplify_unary_operation(i32 noundef 51, i32 noundef %0, ptr noundef nonnull %66, i32 noundef %0) #16
  br label %76

74:                                               ; preds = %64
  %75 = tail call ptr @expand_unop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), ptr noundef nonnull %66, ptr noundef %65, i32 noundef 0) #17
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi ptr [ %73, %72 ], [ %75, %74 ]
  %78 = icmp eq ptr %77, %65
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = tail call ptr @emit_move_insn(ptr noundef %65, ptr noundef %77) #16
  br label %81

81:                                               ; preds = %79, %76
  %82 = tail call ptr @emit_label(ptr noundef %67) #16
  br label %83

83:                                               ; preds = %25, %55, %81
  %84 = phi ptr [ %65, %81 ], [ null, %55 ], [ null, %25 ]
  ret ptr %84
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_copysign_bit(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5) unnamed_addr #0 !prof !174 !PGOFuncName !325 {
  %7 = zext nneg i32 %0 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !195
  %10 = icmp ult i8 %9, 5
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = tail call i32 @int_mode_for_mode(i32 noundef %0) #16
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %96, label %22

14:                                               ; preds = %6
  %15 = zext i8 %9 to i32
  %16 = load i32, ptr @word_mode, align 4, !tbaa !213
  %17 = lshr i32 %4, 5
  %18 = and i32 %4, 31
  %19 = shl nuw nsw i32 %15, 3
  %20 = add nuw nsw i32 %19, 31
  %21 = lshr i32 %20, 5
  br label %22

22:                                               ; preds = %11, %14
  %23 = phi i32 [ %18, %14 ], [ %4, %11 ]
  %24 = phi i32 [ %16, %14 ], [ %12, %11 ]
  %25 = phi i32 [ %17, %14 ], [ 0, %11 ]
  %26 = phi i32 [ %21, %14 ], [ 1, %11 ]
  %27 = icmp slt i32 %23, 64
  %28 = zext nneg i32 %23 to i64
  %29 = shl nuw i64 1, %28
  %30 = add nsw i32 %23, -64
  %31 = zext nneg i32 %30 to i64
  %32 = shl nuw i64 1, %31
  %33 = select i1 %27, i64 0, i64 %32
  %34 = select i1 %27, i64 %29, i64 0
  %35 = icmp eq ptr %3, null
  %36 = icmp eq ptr %3, %1
  %37 = or i1 %35, %36
  %38 = icmp eq ptr %3, %2
  %39 = or i1 %38, %37
  br i1 %39, label %40, label %42

40:                                               ; preds = %22
  %41 = tail call ptr @gen_reg_rtx(i32 noundef %0) #16
  br label %42

42:                                               ; preds = %22, %40
  %43 = phi ptr [ %41, %40 ], [ %3, %22 ]
  %44 = icmp ugt i32 %26, 1
  br i1 %44, label %45, label %77

45:                                               ; preds = %42
  tail call void @start_sequence() #16
  %46 = icmp eq i8 %5, 0
  %47 = xor i64 %34, -1
  %48 = xor i64 %33, -1
  br label %49

49:                                               ; preds = %45, %70
  %50 = phi i32 [ 0, %45 ], [ %72, %70 ]
  %51 = phi ptr [ %2, %45 ], [ %71, %70 ]
  %52 = tail call ptr @operand_subword(ptr noundef %43, i32 noundef %50, i32 noundef 1, i32 noundef %0) #16
  %53 = tail call ptr @operand_subword_force(ptr noundef %1, i32 noundef %50, i32 noundef %0) #16
  %54 = icmp eq i32 %50, %25
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  br i1 %46, label %56, label %59

56:                                               ; preds = %55
  %57 = tail call ptr @immed_double_const(i64 noundef %47, i64 noundef %48, i32 noundef %24) #16
  %58 = tail call ptr @expand_binop(i32 noundef %24, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %53, ptr noundef %57, ptr noundef null, i32 noundef 1, i32 noundef 3) #17
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi ptr [ %53, %55 ], [ %58, %56 ]
  %61 = tail call ptr @operand_subword_force(ptr noundef %51, i32 noundef %25, i32 noundef %0) #16
  %62 = tail call ptr @immed_double_const(i64 noundef %34, i64 noundef %33, i32 noundef %24) #16
  %63 = tail call ptr @expand_binop(i32 noundef %24, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %61, ptr noundef %62, ptr noundef null, i32 noundef 1, i32 noundef 3) #17
  %64 = tail call ptr @expand_binop(i32 noundef %24, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %60, ptr noundef %63, ptr noundef %52, i32 noundef 1, i32 noundef 3) #17
  %65 = icmp eq ptr %64, %52
  br i1 %65, label %70, label %66

66:                                               ; preds = %49, %59
  %67 = phi ptr [ %64, %59 ], [ %53, %49 ]
  %68 = phi ptr [ %63, %59 ], [ %51, %49 ]
  %69 = tail call ptr @emit_move_insn(ptr noundef %52, ptr noundef %67) #16
  br label %70

70:                                               ; preds = %66, %59
  %71 = phi ptr [ %63, %59 ], [ %68, %66 ]
  %72 = add nuw nsw i32 %50, 1
  %73 = icmp eq i32 %72, %26
  br i1 %73, label %74, label %49, !llvm.loop !326

74:                                               ; preds = %70
  %75 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %76 = tail call ptr @emit_insn(ptr noundef %75) #16
  br label %96

77:                                               ; preds = %42
  %78 = load ptr, ptr @rtl_hooks, align 8, !tbaa !236
  %79 = tail call ptr %78(i32 noundef %24, ptr noundef %2) #16
  %80 = tail call ptr @immed_double_const(i64 noundef %34, i64 noundef %33, i32 noundef %24) #16
  %81 = tail call ptr @expand_binop(i32 noundef %24, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %79, ptr noundef %80, ptr noundef null, i32 noundef 1, i32 noundef 3) #17
  %82 = load ptr, ptr @rtl_hooks, align 8, !tbaa !236
  %83 = tail call ptr %82(i32 noundef %24, ptr noundef %1) #16
  %84 = icmp eq i8 %5, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = xor i64 %34, -1
  %87 = xor i64 %33, -1
  %88 = tail call ptr @immed_double_const(i64 noundef %86, i64 noundef %87, i32 noundef %24) #16
  %89 = tail call ptr @expand_binop(i32 noundef %24, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %83, ptr noundef %88, ptr noundef null, i32 noundef 1, i32 noundef 3) #17
  br label %90

90:                                               ; preds = %85, %77
  %91 = phi ptr [ %83, %77 ], [ %89, %85 ]
  %92 = load ptr, ptr @rtl_hooks, align 8, !tbaa !236
  %93 = tail call ptr %92(i32 noundef %24, ptr noundef %43) #16
  %94 = tail call ptr @expand_binop(i32 noundef %24, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %91, ptr noundef %81, ptr noundef %93, i32 noundef 1, i32 noundef 3) #17
  %95 = tail call fastcc ptr @lowpart_subreg_maybe_copy(i32 noundef %0, ptr noundef %94, i32 noundef %24) #17
  br label %96

96:                                               ; preds = %74, %90, %11
  %97 = phi ptr [ null, %11 ], [ %43, %74 ], [ %95, %90 ]
  ret ptr %97
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @maybe_emit_unop_insn(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !327 {
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %5, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !205
  %8 = getelementptr inbounds %struct.insn_operand_data, ptr %7, i64 1, i32 2
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  %11 = tail call ptr @get_last_insn() #16
  %12 = getelementptr inbounds %struct.insn_operand_data, ptr %7, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !209
  %14 = tail call i32 %13(ptr noundef %2, i32 noundef %10) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !328

16:                                               ; preds = %4
  %17 = tail call ptr @copy_to_mode_reg(i32 noundef %10, ptr noundef %2) #16
  br label %18

18:                                               ; preds = %16, %4
  %19 = phi ptr [ %2, %4 ], [ %17, %16 ]
  %20 = load ptr, ptr %7, align 8, !tbaa !209
  %21 = load i32, ptr %1, align 8
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  %24 = tail call i32 %20(ptr noundef nonnull %1, i32 noundef %23) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31, !prof !328

26:                                               ; preds = %18
  %27 = load i32, ptr %1, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = tail call ptr @gen_reg_rtx(i32 noundef %29) #16
  br label %31

31:                                               ; preds = %26, %18
  %32 = phi ptr [ %1, %18 ], [ %30, %26 ]
  %33 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %5, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !211
  %35 = tail call ptr (ptr, ...) %34(ptr noundef %32, ptr noundef %19) #16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38, !prof !328

37:                                               ; preds = %31
  tail call void @delete_insns_since(ptr noundef %11) #16
  br label %56

38:                                               ; preds = %31
  %39 = load i32, ptr %35, align 8
  %40 = and i32 %39, 65535
  %41 = add nsw i32 %40, -7
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %43, label %51, !prof !329

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !195
  %46 = icmp ne ptr %45, null
  %47 = icmp ne i32 %3, 0
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = tail call fastcc i32 @add_equal_note(ptr noundef nonnull %35, ptr noundef %32, i32 noundef %3, ptr noundef %19, ptr noundef null) #17, !range !257
  br label %51

51:                                               ; preds = %38, %49, %43
  %52 = tail call ptr @emit_insn(ptr noundef nonnull %35) #16
  %53 = icmp eq ptr %32, %1
  br i1 %53, label %56, label %54, !prof !330

54:                                               ; preds = %51
  %55 = tail call ptr @emit_move_insn(ptr noundef nonnull %1, ptr noundef %32) #16
  br label %56

56:                                               ; preds = %51, %54, %37
  %57 = phi i8 [ 0, %37 ], [ 1, %54 ], [ 1, %51 ]
  ret i8 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @add_equal_note(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !331 !PGOFuncName !332 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %16, label %7, !prof !258

7:                                                ; preds = %5
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %16, !prof !333

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !195
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !258

16:                                               ; preds = %7, %12, %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 225, ptr noundef nonnull @.str.1) #16
  br label %17

17:                                               ; preds = %12, %16
  %18 = sext i32 %2 to i64
  %19 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !213
  %21 = icmp ult i32 %20, 5
  br i1 %21, label %22, label %92, !prof !334

22:                                               ; preds = %17
  %23 = load i32, ptr %1, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 120
  br i1 %25, label %92, label %26, !prof !258

26:                                               ; preds = %22, %26
  %27 = phi ptr [ %29, %26 ], [ %0, %22 ]
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !195
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26, !prof !335, !llvm.loop !336

31:                                               ; preds = %26
  %32 = load i32, ptr %27, align 8
  %33 = and i32 %32, 65535
  %34 = add nsw i32 %33, -7
  %35 = icmp ult i32 %34, 4
  br i1 %35, label %36, label %92, !prof !333

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !195
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 23
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = tail call ptr @single_set_2(ptr noundef nonnull %27, ptr noundef nonnull %38) #16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %92, label %45, !prof !337

45:                                               ; preds = %36, %42
  %46 = phi ptr [ %43, %42 ], [ %38, %36 ]
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !195
  %49 = tail call i32 @rtx_equal_p(ptr noundef %48, ptr noundef nonnull %1) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %61, !prof !258

51:                                               ; preds = %45
  %52 = load ptr, ptr %47, align 8, !tbaa !195
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 40
  br i1 %55, label %56, label %92

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !195
  %59 = tail call i32 @rtx_equal_p(ptr noundef %58, ptr noundef nonnull %1) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %92, label %61

61:                                               ; preds = %56, %45
  %62 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %1, ptr noundef %3) #16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69, !prof !338

64:                                               ; preds = %61
  %65 = icmp eq ptr %4, null
  br i1 %65, label %78, label %66, !prof !258

66:                                               ; preds = %64
  %67 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %1, ptr noundef nonnull %4) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69, !prof !338

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %69, %75
  %71 = phi ptr [ %73, %75 ], [ %27, %69 ]
  %72 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !195
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = tail call i32 @reg_set_p(ptr noundef nonnull %1, ptr noundef nonnull %73) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %70, label %92, !llvm.loop !339

78:                                               ; preds = %70, %66, %64
  %79 = icmp eq i32 %20, 4
  %80 = load i32, ptr %1, align 8
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = tail call ptr @copy_rtx(ptr noundef %3) #16
  br i1 %79, label %84, label %86, !prof !258

84:                                               ; preds = %78
  %85 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %2, i32 noundef %82, ptr noundef %83) #16
  br label %89

86:                                               ; preds = %78
  %87 = tail call ptr @copy_rtx(ptr noundef %4) #16
  %88 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef %82, ptr noundef %83, ptr noundef %87) #16
  br label %89

89:                                               ; preds = %86, %84
  %90 = phi ptr [ %85, %84 ], [ %88, %86 ]
  %91 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %27, i32 noundef 4, ptr noundef %90) #16
  br label %92

92:                                               ; preds = %75, %31, %17, %51, %56, %42, %22, %89
  %93 = phi i32 [ 1, %89 ], [ 1, %17 ], [ 1, %22 ], [ 1, %42 ], [ 1, %56 ], [ 1, %51 ], [ 1, %31 ], [ 0, %75 ]
  ret i32 %93
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_unop_insn(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !327 {
  %5 = tail call zeroext i8 @maybe_emit_unop_insn(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #17, !range !240
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8, !prof !328

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3839, ptr noundef nonnull @.str.1) #16
  br label %8

8:                                                ; preds = %4, %7
  ret void
}

; Function Attrs: optsize
declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @make_reg_eh_region_note_nothrow_nononlocal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @no_conflict_move_test(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 !prof !174 !PGOFuncName !340 {
  %4 = load ptr, ptr %2, align 8, !tbaa !289
  %5 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %4, ptr noundef %0) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %61

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.no_conflict_data, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !292
  %10 = getelementptr inbounds %struct.no_conflict_data, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !291
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %63, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !195
  %16 = tail call i32 @reg_overlap_mentioned_p(ptr noundef %0, ptr noundef %15) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %13
  %19 = load ptr, ptr %10, align 8, !tbaa !291
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = tail call i32 @find_reg_fusage(ptr noundef nonnull %19, i32 noundef 24, ptr noundef %0) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %23
  %27 = load ptr, ptr %10, align 8, !tbaa !291
  br label %28

28:                                               ; preds = %26, %18
  %29 = phi ptr [ %27, %26 ], [ %19, %18 ]
  %30 = load ptr, ptr %8, align 8, !tbaa !292
  %31 = tail call i32 @reg_used_between_p(ptr noundef %0, ptr noundef %29, ptr noundef %30) #16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = load i32, ptr %1, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 23
  br i1 %36, label %37, label %63

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !195
  %41 = load ptr, ptr %10, align 8, !tbaa !291
  %42 = tail call i32 @modified_in_p(ptr noundef %40, ptr noundef %41) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = load ptr, ptr %38, align 8, !tbaa !195
  %46 = load ptr, ptr %10, align 8, !tbaa !291
  %47 = tail call i32 @modified_in_p(ptr noundef %45, ptr noundef %46) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load ptr, ptr %39, align 8, !tbaa !195
  %51 = load ptr, ptr %10, align 8, !tbaa !291
  %52 = load ptr, ptr %8, align 8, !tbaa !292
  %53 = tail call i32 @modified_between_p(ptr noundef %50, ptr noundef %51, ptr noundef %52) #16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load ptr, ptr %38, align 8, !tbaa !195
  %57 = load ptr, ptr %10, align 8, !tbaa !291
  %58 = load ptr, ptr %8, align 8, !tbaa !292
  %59 = tail call i32 @modified_between_p(ptr noundef %56, ptr noundef %57, ptr noundef %58) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %13, %23, %28, %37, %44, %49, %55, %3
  %62 = getelementptr inbounds %struct.no_conflict_data, ptr %2, i64 0, i32 3
  store i8 1, ptr %62, align 8, !tbaa !293
  br label %63

63:                                               ; preds = %61, %33, %55, %7
  ret void
}

; Function Attrs: optsize
declare void @add_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @can_compare_p(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !341 {
  %4 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !184
  %5 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %4) #16
  br label %6

6:                                                ; preds = %38, %3
  %7 = phi i32 [ %1, %3 ], [ %42, %38 ]
  switch i32 %2, label %38 [
    i32 0, label %8
    i32 2, label %20
    i32 1, label %33
  ], !prof !342

8:                                                ; preds = %6
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !203
  %12 = icmp eq i32 %11, 2956
  br i1 %12, label %38, label %13, !prof !343

13:                                               ; preds = %8
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %14, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !205
  %17 = load ptr, ptr %16, align 8, !tbaa !209
  %18 = tail call i32 %17(ptr noundef %5, i32 noundef %7) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %38, label %48, !prof !343

20:                                               ; preds = %6
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117, i32 4, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !203
  %24 = icmp eq i32 %23, 2956
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %26, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !205
  %29 = getelementptr inbounds %struct.insn_operand_data, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !209
  %31 = tail call i32 %30(ptr noundef %5, i32 noundef %7) #16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %48

33:                                               ; preds = %6
  %34 = sext i32 %7 to i64
  %35 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 116, i32 4, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !203
  %37 = icmp eq i32 %36, 2956
  br i1 %37, label %38, label %48

38:                                               ; preds = %20, %25, %8, %13, %6, %33
  %39 = zext i32 %7 to i64
  %40 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !195
  %42 = zext i8 %41 to i32
  %43 = load i32, ptr %5, align 8
  %44 = shl nuw nsw i32 %42, 16
  %45 = and i32 %43, -16711681
  %46 = or disjoint i32 %45, %44
  store i32 %46, ptr %5, align 8
  %47 = icmp eq i8 %41, 0
  br i1 %47, label %48, label %6, !llvm.loop !344

48:                                               ; preds = %33, %25, %13, %38
  %49 = phi i32 [ 0, %38 ], [ 1, %13 ], [ 1, %25 ], [ 1, %33 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @prepare_operand(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !345 {
  %7 = icmp eq i32 %3, %4
  br i1 %7, label %10, label %8, !prof !346

8:                                                ; preds = %6
  %9 = tail call ptr @convert_modes(i32 noundef %4, i32 noundef %3, ptr noundef %1, i32 noundef %5) #16
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ %1, %6 ]
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %12, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !205
  %15 = sext i32 %2 to i64
  %16 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !209
  %18 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 %15, i32 2
  %19 = load i16, ptr %18, align 8
  %20 = zext i16 %19 to i32
  %21 = tail call i32 %17(ptr noundef %11, i32 noundef %20) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30, !prof !347

23:                                               ; preds = %10
  %24 = load i32, ptr @reload_completed, align 4, !tbaa !213
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i16, ptr %18, align 8
  %28 = zext i16 %27 to i32
  %29 = tail call ptr @copy_to_mode_reg(i32 noundef %28, ptr noundef %11) #16
  br label %30

30:                                               ; preds = %10, %26, %23
  %31 = phi ptr [ null, %23 ], [ %11, %10 ], [ %29, %26 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_cmp_and_jump_insns(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 !prof !348 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store i32 %4, ptr %8, align 4, !tbaa !213
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  %10 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %0, ptr noundef %1) #16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12, !prof !349

12:                                               ; preds = %7
  %13 = tail call i32 @swap_condition(i32 noundef %2) #16
  %14 = tail call i32 @can_compare_p(i32 noundef %13, i32 noundef %4, i32 noundef 0) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @swap_condition(i32 noundef %2) #16
  br label %18

18:                                               ; preds = %16, %12, %7
  %19 = phi i32 [ %17, %16 ], [ %2, %12 ], [ %2, %7 ]
  %20 = phi ptr [ %1, %16 ], [ %0, %12 ], [ %0, %7 ]
  %21 = phi ptr [ %0, %16 ], [ %1, %12 ], [ %1, %7 ]
  %22 = load i32, ptr %20, align 8
  %23 = and i32 %22, 65535
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !213
  %27 = icmp eq i32 %26, 9
  br i1 %27, label %28, label %30, !prof !350

28:                                               ; preds = %18
  %29 = tail call ptr @force_reg(i32 noundef %4, ptr noundef nonnull %20) #16
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi ptr [ %29, %28 ], [ %20, %18 ]
  %32 = icmp eq i32 %5, 0
  br i1 %32, label %35, label %33, !prof !351

33:                                               ; preds = %30
  %34 = tail call i32 @unsigned_condition(i32 noundef %19) #16
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %34, %33 ], [ %19, %30 ]
  call fastcc void @prepare_cmp_insn(ptr noundef %31, ptr noundef %21, i32 noundef %36, ptr noundef %3, i32 noundef %5, i32 noundef 3, ptr noundef nonnull %9, ptr noundef nonnull %8) #17
  %37 = load ptr, ptr %9, align 8, !tbaa !184
  %38 = load i32, ptr %8, align 4, !tbaa !213
  tail call fastcc void @emit_cmp_and_jump_insn_1(ptr noundef %37, i32 noundef %38, ptr noundef %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @swap_commutative_operands_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @swap_condition(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @unsigned_condition(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_cmp_insn(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef %7) unnamed_addr #0 !prof !352 !PGOFuncName !353 {
  %9 = load i32, ptr %7, align 4, !tbaa !213
  br label %10

10:                                               ; preds = %324, %8
  %11 = phi i32 [ %9, %8 ], [ %330, %324 ]
  %12 = phi ptr [ %0, %8 ], [ %328, %324 ]
  %13 = phi ptr [ %1, %8 ], [ %329, %324 ]
  %14 = phi ptr [ %3, %8 ], [ null, %324 ]
  %15 = phi i32 [ %5, %8 ], [ 3, %324 ]
  %16 = icmp eq i32 %15, 0
  switch i32 %15, label %17 [
    i32 3, label %18
    i32 2, label %18
    i32 0, label %18
  ]

17:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4060, ptr noundef nonnull @.str.1) #16
  br label %18

18:                                               ; preds = %10, %10, %10, %17
  %19 = load i32, ptr %12, align 8
  %20 = and i32 %19, 65535
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !213
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %25, label %34, !prof !354

25:                                               ; preds = %18
  %26 = load i32, ptr @optimize, align 4, !tbaa !213
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = tail call zeroext i8 @optimize_insn_for_speed_p() #16
  %30 = tail call i32 @rtx_cost(ptr noundef nonnull %12, i32 noundef 48, i8 noundef zeroext %29) #16
  %31 = icmp sgt i32 %30, 4
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = tail call ptr @force_reg(i32 noundef %11, ptr noundef nonnull %12) #16
  br label %34

34:                                               ; preds = %32, %28, %25, %18
  %35 = phi ptr [ %33, %32 ], [ %12, %28 ], [ %12, %25 ], [ %12, %18 ]
  %36 = load i32, ptr %13, align 8
  %37 = and i32 %36, 65535
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !213
  %41 = icmp eq i32 %40, 9
  %42 = load i32, ptr @optimize, align 4
  %43 = icmp ne i32 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %51, !prof !355

45:                                               ; preds = %34
  %46 = tail call zeroext i8 @optimize_insn_for_speed_p() #16
  %47 = tail call i32 @rtx_cost(ptr noundef nonnull %13, i32 noundef 48, i8 noundef zeroext %46) #16
  %48 = icmp sgt i32 %47, 4
  br i1 %48, label %49, label %51, !prof !354

49:                                               ; preds = %45
  %50 = tail call ptr @force_reg(i32 noundef %11, ptr noundef nonnull %13) #16
  br label %51

51:                                               ; preds = %49, %45, %34
  %52 = phi ptr [ %50, %49 ], [ %13, %45 ], [ %13, %34 ]
  %53 = load i32, ptr %35, align 8
  %54 = and i32 %53, 16711680
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62, !prof !354

56:                                               ; preds = %51
  %57 = load i32, ptr %52, align 8
  %58 = and i32 %57, 16711680
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = tail call ptr @force_reg(i32 noundef %11, ptr noundef nonnull %35) #16
  br label %62

62:                                               ; preds = %60, %56, %51
  %63 = phi ptr [ %61, %60 ], [ %35, %56 ], [ %35, %51 ]
  %64 = icmp eq i32 %11, 0
  br i1 %64, label %65, label %74, !prof !354

65:                                               ; preds = %62
  %66 = load i32, ptr %63, align 8
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 255
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, ptr %52, align 8
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  br label %74

74:                                               ; preds = %70, %65, %62
  %75 = phi i32 [ %11, %62 ], [ %73, %70 ], [ %68, %65 ]
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %232, !prof !354

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %79 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !195
  %81 = icmp eq ptr %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.mem_attrs, ptr %80, i64 0, i32 4
  %84 = load i32, ptr %83, align 4, !tbaa !356
  %85 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !195
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %98

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1, i32 0, i32 0, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !195
  %91 = icmp eq ptr %90, null
  br i1 %91, label %105, label %94

92:                                               ; preds = %82
  %93 = icmp ult i32 %84, 8
  br i1 %93, label %102, label %105

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.mem_attrs, ptr %90, i64 0, i32 4
  %96 = load i32, ptr %95, align 4, !tbaa !356
  %97 = tail call i32 @llvm.umin.i32(i32 %96, i32 8)
  br label %105

98:                                               ; preds = %82
  %99 = getelementptr inbounds %struct.mem_attrs, ptr %86, i64 0, i32 4
  %100 = load i32, ptr %99, align 4, !tbaa !356
  %101 = icmp ult i32 %84, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98, %92
  %103 = getelementptr inbounds %struct.mem_attrs, ptr %80, i64 0, i32 4
  %104 = load i32, ptr %103, align 4, !tbaa !356
  br label %105

105:                                              ; preds = %94, %98, %88, %92, %102
  %106 = phi i32 [ %104, %102 ], [ 8, %92 ], [ 8, %88 ], [ %100, %98 ], [ %97, %94 ]
  %107 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %108 = lshr i32 %106, 3
  %109 = zext nneg i32 %108 to i64
  %110 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %109) #16
  %111 = icmp eq ptr %14, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4098, ptr noundef nonnull @.str.1) #16
  br label %113

113:                                              ; preds = %105, %112
  %114 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !195
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %177, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  br label %118

118:                                              ; preds = %116, %173
  %119 = phi i8 [ %114, %116 ], [ %175, %173 ]
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds [87 x i32], ptr @cmpmem_optab, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !213
  %123 = icmp eq i32 %122, 2956
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = getelementptr inbounds [87 x i32], ptr @cmpstr_optab, i64 0, i64 %120
  %126 = load i32, ptr %125, align 4, !tbaa !213
  %127 = icmp eq i32 %126, 2956
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = getelementptr inbounds [87 x i32], ptr @cmpstrn_optab, i64 0, i64 %120
  %130 = load i32, ptr %129, align 4, !tbaa !213
  %131 = icmp eq i32 %130, 2956
  br i1 %131, label %173, label %132

132:                                              ; preds = %118, %124, %128
  %133 = phi i32 [ %130, %128 ], [ %126, %124 ], [ %122, %118 ]
  %134 = load i32, ptr %14, align 8
  %135 = and i32 %134, 65535
  %136 = icmp eq i32 %135, 30
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %120
  %139 = load i8, ptr %138, align 1, !tbaa !195
  br label %149

140:                                              ; preds = %132
  %141 = load i64, ptr %117, align 8, !tbaa !195
  %142 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %120
  %143 = load i8, ptr %142, align 1, !tbaa !195
  %144 = zext i8 %143 to i32
  %145 = shl nuw nsw i32 %144, 3
  %146 = shl nuw i32 1, %145
  %147 = zext nneg i32 %146 to i64
  %148 = icmp slt i64 %141, %147
  br i1 %148, label %149, label %173

149:                                              ; preds = %137, %140
  %150 = phi i8 [ %139, %137 ], [ %143, %140 ]
  %151 = lshr i32 %134, 16
  %152 = and i32 %151, 255
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !195
  %156 = icmp ugt i8 %155, %150
  br i1 %156, label %173, label %157

157:                                              ; preds = %149
  %158 = zext i8 %119 to i32
  %159 = zext i32 %133 to i64
  %160 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %159, i32 3
  %161 = load ptr, ptr %160, align 8, !tbaa !205
  %162 = getelementptr inbounds %struct.insn_operand_data, ptr %161, i64 0, i32 2
  %163 = load i16, ptr %162, align 8
  %164 = zext i16 %163 to i32
  %165 = tail call ptr @gen_reg_rtx(i32 noundef %164) #16
  %166 = tail call ptr @convert_to_mode(i32 noundef %158, ptr noundef nonnull %14, i32 noundef 1) #16
  %167 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %159, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !211
  %169 = tail call ptr (ptr, ...) %168(ptr noundef %165, ptr noundef %63, ptr noundef %52, ptr noundef %166, ptr noundef %110) #16
  %170 = tail call ptr @emit_insn(ptr noundef %169) #16
  %171 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !184
  %172 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef 0, ptr noundef %165, ptr noundef %171) #16
  store ptr %172, ptr %6, align 8, !tbaa !184
  store i32 %164, ptr %7, align 4, !tbaa !213
  br label %333

173:                                              ; preds = %140, %149, %128
  %174 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %120
  %175 = load i8, ptr %174, align 1, !tbaa !195
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %118, !llvm.loop !358

177:                                              ; preds = %173, %113
  %178 = and i32 %15, -3
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %332

180:                                              ; preds = %177
  %181 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 3), align 8, !tbaa !184
  %182 = load ptr, ptr @sizetype_tab, align 16, !tbaa !184
  %183 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !184
  %184 = load i64, ptr %183, align 8
  %185 = and i64 %184, 65535
  %186 = icmp eq i64 %185, 14
  br i1 %186, label %187, label %189

187:                                              ; preds = %180
  %188 = tail call i32 @vector_type_mode(ptr noundef nonnull %183) #16
  br label %194

189:                                              ; preds = %180
  %190 = getelementptr inbounds %struct.tree_type, ptr %183, i64 0, i32 6
  %191 = load i32, ptr %190, align 4
  %192 = lshr i32 %191, 16
  %193 = and i32 %192, 255
  br label %194

194:                                              ; preds = %189, %187
  %195 = phi i32 [ %188, %187 ], [ %193, %189 ]
  %196 = load i64, ptr %182, align 8
  %197 = and i64 %196, 65535
  %198 = icmp eq i64 %197, 14
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = tail call i32 @vector_type_mode(ptr noundef nonnull %182) #16
  %201 = load i64, ptr %182, align 8
  br label %207

202:                                              ; preds = %194
  %203 = getelementptr inbounds %struct.tree_type, ptr %182, i64 0, i32 6
  %204 = load i32, ptr %203, align 4
  %205 = lshr i32 %204, 16
  %206 = and i32 %205, 255
  br label %207

207:                                              ; preds = %202, %199
  %208 = phi i64 [ %201, %199 ], [ %196, %202 ]
  %209 = phi i32 [ %200, %199 ], [ %206, %202 ]
  %210 = and i64 %208, 65535
  %211 = icmp eq i64 %210, 14
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = tail call i32 @vector_type_mode(ptr noundef nonnull %182) #16
  %214 = load i64, ptr %182, align 8
  br label %220

215:                                              ; preds = %207
  %216 = getelementptr inbounds %struct.tree_type, ptr %182, i64 0, i32 6
  %217 = load i32, ptr %216, align 4
  %218 = lshr i32 %217, 16
  %219 = and i32 %218, 255
  br label %220

220:                                              ; preds = %215, %212
  %221 = phi i64 [ %214, %212 ], [ %208, %215 ]
  %222 = phi i32 [ %213, %212 ], [ %219, %215 ]
  %223 = trunc i64 %221 to i32
  %224 = lshr i32 %223, 21
  %225 = and i32 %224, 1
  %226 = tail call ptr @convert_to_mode(i32 noundef %222, ptr noundef %14, i32 noundef %225) #16
  %227 = load ptr, ptr %78, align 8, !tbaa !195
  %228 = load ptr, ptr %107, align 8, !tbaa !195
  %229 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef %181, ptr noundef null, i32 noundef 2, i32 noundef %195, i32 noundef 3, ptr noundef %227, i32 noundef 16, ptr noundef %228, i32 noundef 16, ptr noundef %226, i32 noundef %209) #16
  %230 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !184
  %231 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef 0, ptr noundef %229, ptr noundef %230) #16
  store ptr %231, ptr %6, align 8, !tbaa !184
  store i32 %195, ptr %7, align 4, !tbaa !213
  br label %333

232:                                              ; preds = %74
  %233 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !213
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %246, label %235, !prof !359

235:                                              ; preds = %232
  %236 = tail call i32 @may_trap_p(ptr noundef %63) #16
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %235
  %239 = tail call ptr @force_reg(i32 noundef %75, ptr noundef %63) #16
  br label %240

240:                                              ; preds = %238, %235
  %241 = phi ptr [ %239, %238 ], [ %63, %235 ]
  %242 = tail call i32 @may_trap_p(ptr noundef %52) #16
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %240
  %245 = tail call ptr @force_reg(i32 noundef %75, ptr noundef %52) #16
  br label %246

246:                                              ; preds = %240, %244, %232
  %247 = phi ptr [ %245, %244 ], [ %52, %240 ], [ %52, %232 ]
  %248 = phi ptr [ %241, %244 ], [ %241, %240 ], [ %63, %232 ]
  %249 = zext i32 %75 to i64
  %250 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !195
  %252 = icmp eq i8 %251, 1
  br i1 %252, label %253, label %259, !prof !354

253:                                              ; preds = %246
  %254 = tail call i32 @can_compare_p(i32 noundef %2, i32 noundef 2, i32 noundef 0) #17
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4165, ptr noundef nonnull @.str.1) #16
  br label %257

257:                                              ; preds = %253, %256
  %258 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef 0, ptr noundef %248, ptr noundef %247) #16
  store ptr %258, ptr %6, align 8, !tbaa !184
  br label %333

259:                                              ; preds = %246
  %260 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %2, i32 noundef 0, ptr noundef %248, ptr noundef %247) #16
  br label %261

261:                                              ; preds = %303, %259
  %262 = phi i32 [ %75, %259 ], [ %307, %303 ]
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !203
  %266 = icmp eq i32 %265, 2956
  br i1 %266, label %301, label %267, !prof !354

267:                                              ; preds = %261
  %268 = zext i32 %265 to i64
  %269 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %268, i32 3
  %270 = load ptr, ptr %269, align 8, !tbaa !205
  %271 = load ptr, ptr %270, align 8, !tbaa !209
  %272 = tail call i32 %271(ptr noundef %260, i32 noundef 0) #16
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %301, label %274, !prof !354

274:                                              ; preds = %267
  %275 = tail call ptr @get_last_insn() #16
  %276 = tail call ptr @prepare_operand(i32 noundef %265, ptr noundef %248, i32 noundef 1, i32 noundef %75, i32 noundef %262, i32 noundef %4) #17
  %277 = tail call ptr @prepare_operand(i32 noundef %265, ptr noundef %247, i32 noundef 2, i32 noundef %75, i32 noundef %262, i32 noundef %4) #17
  %278 = icmp ne ptr %276, null
  %279 = icmp ne ptr %277, null
  %280 = select i1 %278, i1 %279, i1 false
  br i1 %280, label %281, label %300, !prof !355

281:                                              ; preds = %274
  %282 = getelementptr inbounds %struct.insn_operand_data, ptr %270, i64 1
  %283 = load ptr, ptr %282, align 8, !tbaa !209
  %284 = getelementptr inbounds %struct.insn_operand_data, ptr %270, i64 1, i32 2
  %285 = load i16, ptr %284, align 8
  %286 = zext i16 %285 to i32
  %287 = tail call i32 %283(ptr noundef nonnull %276, i32 noundef %286) #16
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %300, label %289, !prof !354

289:                                              ; preds = %281
  %290 = getelementptr inbounds %struct.insn_operand_data, ptr %270, i64 2
  %291 = load ptr, ptr %290, align 8, !tbaa !209
  %292 = getelementptr inbounds %struct.insn_operand_data, ptr %270, i64 2, i32 2
  %293 = load i16, ptr %292, align 8
  %294 = zext i16 %293 to i32
  %295 = tail call i32 %291(ptr noundef nonnull %277, i32 noundef %294) #16
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %300, label %297, !prof !354

297:                                              ; preds = %289
  %298 = getelementptr inbounds %struct.rtx_def, ptr %260, i64 0, i32 1
  store ptr %276, ptr %298, align 8, !tbaa !195
  %299 = getelementptr inbounds %struct.rtx_def, ptr %260, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %277, ptr %299, align 8, !tbaa !195
  store ptr %260, ptr %6, align 8, !tbaa !184
  store i32 %262, ptr %7, align 4, !tbaa !213
  br label %333

300:                                              ; preds = %289, %281, %274
  tail call void @delete_insns_since(ptr noundef %275) #16
  br label %301

301:                                              ; preds = %300, %267, %261
  br i1 %16, label %332, label %302

302:                                              ; preds = %301
  switch i8 %251, label %309 [
    i8 11, label %303
    i8 9, label %303
    i8 8, label %303
    i8 7, label %303
    i8 6, label %303
    i8 5, label %303
    i8 4, label %303
    i8 2, label %303
  ]

303:                                              ; preds = %302, %302, %302, %302, %302, %302, %302, %302
  %304 = zext i32 %262 to i64
  %305 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !195
  %307 = zext i8 %306 to i32
  %308 = icmp eq i8 %306, 0
  br i1 %308, label %309, label %261, !llvm.loop !360

309:                                              ; preds = %302, %303
  %310 = icmp eq i32 %15, 3
  br i1 %310, label %311, label %332

311:                                              ; preds = %309
  %312 = and i8 %251, -2
  %313 = icmp eq i8 %312, 8
  br i1 %313, label %331, label %314

314:                                              ; preds = %311
  %315 = tail call ptr @optab_libfunc(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 105), i32 noundef %75) #17
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %318

317:                                              ; preds = %314
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4213, ptr noundef nonnull @.str.1) #16
  br label %318

318:                                              ; preds = %314, %317
  %319 = icmp eq i32 %4, 0
  br i1 %319, label %324, label %320

320:                                              ; preds = %318
  %321 = tail call ptr @optab_libfunc(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 106), i32 noundef %75) #17
  %322 = icmp eq ptr %321, null
  %323 = select i1 %322, ptr %315, ptr %321
  br label %324

324:                                              ; preds = %320, %318
  %325 = phi ptr [ %323, %320 ], [ %315, %318 ]
  %326 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 8), align 8, !tbaa !361
  %327 = tail call i32 %326() #16
  %328 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef %325, ptr noundef null, i32 noundef 1, i32 noundef %327, i32 noundef 2, ptr noundef %248, i32 noundef %75, ptr noundef %247, i32 noundef %75) #16
  %329 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !184
  %330 = load i32, ptr @word_mode, align 4, !tbaa !213
  store i32 %330, ptr %7, align 4, !tbaa !213
  br label %10

331:                                              ; preds = %311
  tail call fastcc void @prepare_float_lib_cmp(ptr noundef %248, ptr noundef %247, i32 noundef %2, ptr noundef %6, ptr noundef nonnull %7) #17
  br label %333

332:                                              ; preds = %309, %301, %177
  store ptr null, ptr %6, align 8, !tbaa !184
  br label %333

333:                                              ; preds = %297, %157, %220, %331, %332, %257
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_cmp_and_jump_insn_1(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !348 !PGOFuncName !362 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !195
  %7 = icmp eq i8 %6, 1
  %8 = sext i32 %1 to i64
  %9 = select i1 %7, i64 2, i64 %8, !prof !350
  %10 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115, i32 4, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !203
  %12 = icmp eq i32 %11, 2956
  br i1 %12, label %13, label %14, !prof !350

13:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4297, ptr noundef nonnull @.str.1) #16
  br label %14

14:                                               ; preds = %3, %13
  %15 = zext i32 %11 to i64
  %16 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %15, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !205
  %18 = load ptr, ptr %17, align 8, !tbaa !209
  %19 = tail call i32 %18(ptr noundef %0, i32 noundef 0) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22, !prof !350

21:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4298, ptr noundef nonnull @.str.1) #16
  br label %22

22:                                               ; preds = %14, %21
  %23 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %15, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !211
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !195
  %27 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !195
  %29 = tail call ptr (ptr, ...) %24(ptr noundef %0, ptr noundef %26, ptr noundef %28, ptr noundef %2) #16
  %30 = tail call ptr @emit_jump_insn(ptr noundef %29) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_indirect_jump(ptr noundef %0) local_unnamed_addr #0 !prof !174 {
  %2 = load ptr, ptr getelementptr inbounds ([0 x %struct.insn_data], ptr @insn_data, i64 0, i64 2200, i32 3), align 8, !tbaa !205
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  %4 = tail call i32 %3(ptr noundef %0, i32 noundef 16) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @copy_to_mode_reg(i32 noundef 16, ptr noundef %0) #16
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %0, %1 ], [ %7, %6 ]
  %10 = tail call ptr @gen_indirect_jump(ptr noundef %9) #16
  %11 = tail call ptr @emit_jump_insn(ptr noundef %10) #16
  %12 = tail call ptr @emit_barrier() #16
  ret void
}

; Function Attrs: optsize
declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_indirect_jump(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_barrier() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_conditional_move(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 !prof !363 {
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store i32 %4, ptr %10, align 4, !tbaa !213
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  %12 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %2, ptr noundef %3) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14, !prof !364

14:                                               ; preds = %9
  %15 = tail call i32 @swap_condition(i32 noundef %1) #16
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi ptr [ %3, %14 ], [ %2, %9 ]
  %18 = phi ptr [ %2, %14 ], [ %3, %9 ]
  %19 = phi i32 [ %15, %14 ], [ %1, %9 ]
  switch i32 %19, label %32 [
    i32 85, label %20
    i32 83, label %26
  ], !prof !365

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !184
  %22 = icmp eq ptr %18, %21
  %23 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %24 = select i1 %22, ptr %23, ptr %18, !prof !366
  %25 = select i1 %22, i32 84, i32 85, !prof !366
  br label %32

26:                                               ; preds = %16
  %27 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !184
  %28 = icmp eq ptr %18, %27
  %29 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %30 = select i1 %28, ptr %29, ptr %18
  %31 = select i1 %28, i32 82, i32 83
  br label %32

32:                                               ; preds = %20, %26, %16
  %33 = phi ptr [ %18, %16 ], [ %30, %26 ], [ %24, %20 ]
  %34 = phi i32 [ %19, %16 ], [ %31, %26 ], [ %25, %20 ]
  %35 = icmp eq i32 %4, 0
  br i1 %35, label %36, label %40, !prof !364

36:                                               ; preds = %32
  %37 = load i32, ptr %17, align 8
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  store i32 %39, ptr %10, align 4, !tbaa !213
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %39, %36 ], [ %4, %32 ]
  %42 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %5, ptr noundef %6) #16
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44, !prof !364

44:                                               ; preds = %40
  %45 = tail call i32 @reversed_comparison_code_parts(i32 noundef %34, ptr noundef %17, ptr noundef %33, ptr noundef null) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47, %44, %40
  %49 = phi ptr [ %6, %47 ], [ %5, %44 ], [ %5, %40 ]
  %50 = phi ptr [ %5, %47 ], [ %6, %44 ], [ %6, %40 ]
  %51 = phi i32 [ %45, %47 ], [ %34, %44 ], [ %34, %40 ]
  %52 = icmp eq i32 %7, 0
  br i1 %52, label %53, label %57, !prof !367

53:                                               ; preds = %48
  %54 = load i32, ptr %49, align 8
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 255
  br label %57

57:                                               ; preds = %53, %48
  %58 = phi i32 [ %56, %53 ], [ %7, %48 ]
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [87 x i32], ptr @movcc_gen_code, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !213
  %62 = icmp eq i32 %61, 2956
  br i1 %62, label %143, label %63, !prof !367

63:                                               ; preds = %57
  %64 = icmp eq ptr %0, null
  br i1 %64, label %65, label %67, !prof !367

65:                                               ; preds = %63
  %66 = tail call ptr @gen_reg_rtx(i32 noundef %58) #16
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi ptr [ %0, %63 ], [ %66, %65 ]
  %69 = zext i32 %61 to i64
  %70 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %69, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !205
  %72 = load ptr, ptr %71, align 8, !tbaa !209
  %73 = getelementptr inbounds %struct.insn_operand_data, ptr %71, i64 0, i32 2
  %74 = load i16, ptr %73, align 8
  %75 = zext i16 %74 to i32
  %76 = tail call i32 %72(ptr noundef %68, i32 noundef %75) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82, !prof !367

78:                                               ; preds = %67
  %79 = load i16, ptr %73, align 8
  %80 = zext i16 %79 to i32
  %81 = tail call ptr @gen_reg_rtx(i32 noundef %80) #16
  br label %82

82:                                               ; preds = %78, %67
  %83 = phi ptr [ %68, %67 ], [ %81, %78 ]
  %84 = getelementptr inbounds %struct.insn_operand_data, ptr %71, i64 2
  %85 = load ptr, ptr %84, align 8, !tbaa !209
  %86 = getelementptr inbounds %struct.insn_operand_data, ptr %71, i64 2, i32 2
  %87 = load i16, ptr %86, align 8
  %88 = zext i16 %87 to i32
  %89 = tail call i32 %85(ptr noundef %49, i32 noundef %88) #16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95, !prof !367

91:                                               ; preds = %82
  %92 = load i16, ptr %86, align 8
  %93 = zext i16 %92 to i32
  %94 = tail call ptr @copy_to_mode_reg(i32 noundef %93, ptr noundef %49) #16
  br label %95

95:                                               ; preds = %91, %82
  %96 = phi ptr [ %49, %82 ], [ %94, %91 ]
  %97 = getelementptr inbounds %struct.insn_operand_data, ptr %71, i64 3
  %98 = load ptr, ptr %97, align 8, !tbaa !209
  %99 = getelementptr inbounds %struct.insn_operand_data, ptr %71, i64 3, i32 2
  %100 = load i16, ptr %99, align 8
  %101 = zext i16 %100 to i32
  %102 = tail call i32 %98(ptr noundef %50, i32 noundef %101) #16
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108, !prof !367

104:                                              ; preds = %95
  %105 = load i16, ptr %99, align 8
  %106 = zext i16 %105 to i32
  %107 = tail call ptr @copy_to_mode_reg(i32 noundef %106, ptr noundef %50) #16
  br label %108

108:                                              ; preds = %104, %95
  %109 = phi ptr [ %50, %95 ], [ %107, %104 ]
  %110 = icmp eq i32 %8, 0
  br i1 %110, label %113, label %111, !prof !364

111:                                              ; preds = %108
  %112 = tail call i32 @unsigned_condition(i32 noundef %51) #16
  br label %113

113:                                              ; preds = %108, %111
  %114 = phi i32 [ %112, %111 ], [ %51, %108 ]
  %115 = tail call ptr @simplify_gen_relational(i32 noundef %114, i32 noundef 0, i32 noundef %41, ptr noundef %17, ptr noundef %33) #16
  store ptr %115, ptr %11, align 8, !tbaa !184
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 65535
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !213
  %121 = icmp ult i32 %120, 2
  br i1 %121, label %122, label %143, !prof !364

122:                                              ; preds = %113
  tail call void @do_pending_stack_adjust() #16
  tail call void @start_sequence() #16
  %123 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !195
  %125 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1, i32 0, i32 0, i64 1
  %126 = load ptr, ptr %125, align 8, !tbaa !195
  %127 = load i32, ptr %115, align 8
  %128 = and i32 %127, 65535
  call fastcc void @prepare_cmp_insn(ptr noundef %124, ptr noundef %126, i32 noundef %128, ptr noundef null, i32 noundef %8, i32 noundef 2, ptr noundef nonnull %11, ptr noundef nonnull %10) #17
  %129 = load ptr, ptr %11, align 8, !tbaa !184
  %130 = icmp eq ptr %129, null
  br i1 %130, label %136, label %131, !prof !367

131:                                              ; preds = %122
  %132 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %69, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !211
  %134 = tail call ptr (ptr, ...) %133(ptr noundef %83, ptr noundef nonnull %129, ptr noundef %96, ptr noundef %109) #16
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %137, !prof !368

136:                                              ; preds = %122, %131
  tail call void @end_sequence() #16
  br label %143

137:                                              ; preds = %131
  %138 = tail call ptr @emit_insn(ptr noundef nonnull %134) #16
  %139 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %140 = tail call ptr @emit_insn(ptr noundef %139) #16
  %141 = icmp eq ptr %83, %68
  br i1 %141, label %143, label %142, !prof !364

142:                                              ; preds = %137
  tail call void @convert_move(ptr noundef %68, ptr noundef %83, i32 noundef 0) #16
  br label %143

143:                                              ; preds = %137, %142, %113, %57, %136
  %144 = phi ptr [ null, %136 ], [ null, %57 ], [ null, %113 ], [ %68, %142 ], [ %68, %137 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  ret ptr %144
}

; Function Attrs: optsize
declare i32 @reversed_comparison_code_parts(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_relational(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @do_pending_stack_adjust() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @can_conditionally_move_p(i32 noundef %0) local_unnamed_addr #5 !prof !174 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [87 x i32], ptr @movcc_gen_code, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !213
  %5 = icmp ne i32 %4, 2956
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @emit_conditional_add(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 !prof !174 {
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store i32 %4, ptr %10, align 4, !tbaa !213
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  %12 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %2, ptr noundef %3) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @swap_condition(i32 noundef %1) #16
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
  %25 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !184
  br label %34

26:                                               ; preds = %16
  %27 = icmp eq i32 %19, 83
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !184
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
  store i32 %41, ptr %10, align 4, !tbaa !213
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ %41, %38 ], [ %4, %34 ]
  %44 = tail call zeroext i8 @swap_commutative_operands_p(ptr noundef %5, ptr noundef %6) #16
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @reversed_comparison_code_parts(i32 noundef %36, ptr noundef %17, ptr noundef %35, ptr noundef null) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %49, %46, %42
  %51 = phi ptr [ %6, %49 ], [ %5, %46 ], [ %5, %42 ]
  %52 = phi ptr [ %5, %49 ], [ %6, %46 ], [ %6, %42 ]
  %53 = phi i32 [ %47, %49 ], [ %36, %46 ], [ %36, %42 ]
  %54 = icmp eq i32 %7, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, ptr %51, align 8
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  br label %59

59:                                               ; preds = %55, %50
  %60 = phi i32 [ %58, %55 ], [ %7, %50 ]
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 120, i32 4, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !203
  %64 = icmp eq i32 %63, 2956
  br i1 %64, label %145, label %65

65:                                               ; preds = %59
  %66 = icmp eq ptr %0, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  %68 = tail call ptr @gen_reg_rtx(i32 noundef %60) #16
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi ptr [ %0, %65 ], [ %68, %67 ]
  %71 = zext i32 %63 to i64
  %72 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %71, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !205
  %74 = load ptr, ptr %73, align 8, !tbaa !209
  %75 = getelementptr inbounds %struct.insn_operand_data, ptr %73, i64 0, i32 2
  %76 = load i16, ptr %75, align 8
  %77 = zext i16 %76 to i32
  %78 = tail call i32 %74(ptr noundef %70, i32 noundef %77) #16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %69
  %81 = load i16, ptr %75, align 8
  %82 = zext i16 %81 to i32
  %83 = tail call ptr @gen_reg_rtx(i32 noundef %82) #16
  br label %84

84:                                               ; preds = %69, %80
  %85 = phi ptr [ %83, %80 ], [ %70, %69 ]
  %86 = getelementptr inbounds %struct.insn_operand_data, ptr %73, i64 2
  %87 = load ptr, ptr %86, align 8, !tbaa !209
  %88 = getelementptr inbounds %struct.insn_operand_data, ptr %73, i64 2, i32 2
  %89 = load i16, ptr %88, align 8
  %90 = zext i16 %89 to i32
  %91 = tail call i32 %87(ptr noundef %51, i32 noundef %90) #16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load i16, ptr %88, align 8
  %95 = zext i16 %94 to i32
  %96 = tail call ptr @copy_to_mode_reg(i32 noundef %95, ptr noundef %51) #16
  br label %97

97:                                               ; preds = %93, %84
  %98 = phi ptr [ %51, %84 ], [ %96, %93 ]
  %99 = getelementptr inbounds %struct.insn_operand_data, ptr %73, i64 3
  %100 = load ptr, ptr %99, align 8, !tbaa !209
  %101 = getelementptr inbounds %struct.insn_operand_data, ptr %73, i64 3, i32 2
  %102 = load i16, ptr %101, align 8
  %103 = zext i16 %102 to i32
  %104 = tail call i32 %100(ptr noundef %52, i32 noundef %103) #16
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %97
  %107 = load i16, ptr %101, align 8
  %108 = zext i16 %107 to i32
  %109 = tail call ptr @copy_to_mode_reg(i32 noundef %108, ptr noundef %52) #16
  br label %110

110:                                              ; preds = %106, %97
  %111 = phi ptr [ %52, %97 ], [ %109, %106 ]
  %112 = icmp eq i32 %8, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = tail call i32 @unsigned_condition(i32 noundef %53) #16
  br label %115

115:                                              ; preds = %110, %113
  %116 = phi i32 [ %114, %113 ], [ %53, %110 ]
  %117 = tail call ptr @simplify_gen_relational(i32 noundef %116, i32 noundef 0, i32 noundef %43, ptr noundef %17, ptr noundef %35) #16
  store ptr %117, ptr %11, align 8, !tbaa !184
  %118 = load i32, ptr %117, align 8
  %119 = and i32 %118, 65535
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !213
  %123 = icmp ult i32 %122, 2
  br i1 %123, label %124, label %145

124:                                              ; preds = %115
  tail call void @do_pending_stack_adjust() #16
  tail call void @start_sequence() #16
  %125 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !195
  %127 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !195
  %129 = load i32, ptr %117, align 8
  %130 = and i32 %129, 65535
  call fastcc void @prepare_cmp_insn(ptr noundef %126, ptr noundef %128, i32 noundef %130, ptr noundef null, i32 noundef %8, i32 noundef 2, ptr noundef nonnull %11, ptr noundef nonnull %10) #17
  %131 = load ptr, ptr %11, align 8, !tbaa !184
  %132 = icmp eq ptr %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %124
  %134 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %71, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !211
  %136 = tail call ptr (ptr, ...) %135(ptr noundef %85, ptr noundef nonnull %131, ptr noundef %98, ptr noundef %111) #16
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %124, %133
  tail call void @end_sequence() #16
  br label %145

139:                                              ; preds = %133
  %140 = tail call ptr @emit_insn(ptr noundef nonnull %136) #16
  %141 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %142 = tail call ptr @emit_insn(ptr noundef %141) #16
  %143 = icmp eq ptr %85, %70
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  tail call void @convert_move(ptr noundef %70, ptr noundef %85, i32 noundef 0) #16
  br label %145

145:                                              ; preds = %139, %144, %115, %59, %138
  %146 = phi ptr [ null, %138 ], [ null, %59 ], [ null, %115 ], [ %70, %144 ], [ %70, %139 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  ret ptr %146
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_add2_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !174 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !203
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %9, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !205
  %12 = load ptr, ptr %11, align 8, !tbaa !209
  %13 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 0, i32 2
  %14 = load i16, ptr %13, align 8
  %15 = zext i16 %14 to i32
  %16 = tail call i32 %12(ptr noundef nonnull %0, i32 noundef %15) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4760, ptr noundef nonnull @.str.1) #16
  br label %19

19:                                               ; preds = %2, %18
  %20 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !209
  %22 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 1, i32 2
  %23 = load i16, ptr %22, align 8
  %24 = zext i16 %23 to i32
  %25 = tail call i32 %21(ptr noundef nonnull %0, i32 noundef %24) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4762, ptr noundef nonnull @.str.1) #16
  br label %28

28:                                               ; preds = %19, %27
  %29 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !209
  %31 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 2, i32 2
  %32 = load i16, ptr %31, align 8
  %33 = zext i16 %32 to i32
  %34 = tail call i32 %30(ptr noundef %1, i32 noundef %33) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4764, ptr noundef nonnull @.str.1) #16
  br label %37

37:                                               ; preds = %28, %36
  %38 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %9, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !211
  %40 = tail call ptr (ptr, ...) %39(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %1) #16
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_add3_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !174 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !203
  %10 = icmp eq i32 %9, 2956
  br i1 %10, label %41, label %11

11:                                               ; preds = %3
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %12, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !205
  %15 = load ptr, ptr %14, align 8, !tbaa !209
  %16 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 0, i32 2
  %17 = load i16, ptr %16, align 8
  %18 = zext i16 %17 to i32
  %19 = tail call i32 %15(ptr noundef nonnull %0, i32 noundef %18) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !209
  %24 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 1, i32 2
  %25 = load i16, ptr %24, align 8
  %26 = zext i16 %25 to i32
  %27 = tail call i32 %23(ptr noundef %1, i32 noundef %26) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !209
  %32 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 2, i32 2
  %33 = load i16, ptr %32, align 8
  %34 = zext i16 %33 to i32
  %35 = tail call i32 %31(ptr noundef %2, i32 noundef %34) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %12, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !211
  %40 = tail call ptr (ptr, ...) %39(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #16
  br label %41

41:                                               ; preds = %3, %11, %21, %29, %37
  %42 = phi ptr [ %40, %37 ], [ null, %29 ], [ null, %21 ], [ null, %11 ], [ null, %3 ]
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @have_add2_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !174 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 16711680
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4794, ptr noundef nonnull @.str.1) #16
  %7 = load i32, ptr %0, align 8
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %3, %2 ], [ %7, %6 ]
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 4, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !203
  %15 = icmp eq i32 %14, 2956
  br i1 %15, label %43, label %16

16:                                               ; preds = %8
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %17, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !205
  %20 = load ptr, ptr %19, align 8, !tbaa !209
  %21 = getelementptr inbounds %struct.insn_operand_data, ptr %19, i64 0, i32 2
  %22 = load i16, ptr %21, align 8
  %23 = zext i16 %22 to i32
  %24 = tail call i32 %20(ptr noundef nonnull %0, i32 noundef %23) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.insn_operand_data, ptr %19, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !209
  %29 = getelementptr inbounds %struct.insn_operand_data, ptr %19, i64 1, i32 2
  %30 = load i16, ptr %29, align 8
  %31 = zext i16 %30 to i32
  %32 = tail call i32 %28(ptr noundef nonnull %0, i32 noundef %31) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.insn_operand_data, ptr %19, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !209
  %37 = getelementptr inbounds %struct.insn_operand_data, ptr %19, i64 2, i32 2
  %38 = load i16, ptr %37, align 8
  %39 = zext i16 %38 to i32
  %40 = tail call i32 %36(ptr noundef %1, i32 noundef %39) #16
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %34, %16, %26, %8
  %44 = phi i32 [ 0, %8 ], [ 0, %26 ], [ 0, %16 ], [ %42, %34 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_sub2_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !174 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !203
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %9, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !205
  %12 = load ptr, ptr %11, align 8, !tbaa !209
  %13 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 0, i32 2
  %14 = load i16, ptr %13, align 8
  %15 = zext i16 %14 to i32
  %16 = tail call i32 %12(ptr noundef nonnull %0, i32 noundef %15) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4820, ptr noundef nonnull @.str.1) #16
  br label %19

19:                                               ; preds = %2, %18
  %20 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !209
  %22 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 1, i32 2
  %23 = load i16, ptr %22, align 8
  %24 = zext i16 %23 to i32
  %25 = tail call i32 %21(ptr noundef nonnull %0, i32 noundef %24) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4822, ptr noundef nonnull @.str.1) #16
  br label %28

28:                                               ; preds = %19, %27
  %29 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !209
  %31 = getelementptr inbounds %struct.insn_operand_data, ptr %11, i64 2, i32 2
  %32 = load i16, ptr %31, align 8
  %33 = zext i16 %32 to i32
  %34 = tail call i32 %30(ptr noundef %1, i32 noundef %33) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4824, ptr noundef nonnull @.str.1) #16
  br label %37

37:                                               ; preds = %28, %36
  %38 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %9, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !211
  %40 = tail call ptr (ptr, ...) %39(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %1) #16
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_sub3_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !174 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !203
  %10 = icmp eq i32 %9, 2956
  br i1 %10, label %41, label %11

11:                                               ; preds = %3
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %12, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !205
  %15 = load ptr, ptr %14, align 8, !tbaa !209
  %16 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 0, i32 2
  %17 = load i16, ptr %16, align 8
  %18 = zext i16 %17 to i32
  %19 = tail call i32 %15(ptr noundef nonnull %0, i32 noundef %18) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !209
  %24 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 1, i32 2
  %25 = load i16, ptr %24, align 8
  %26 = zext i16 %25 to i32
  %27 = tail call i32 %23(ptr noundef %1, i32 noundef %26) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !209
  %32 = getelementptr inbounds %struct.insn_operand_data, ptr %14, i64 2, i32 2
  %33 = load i16, ptr %32, align 8
  %34 = zext i16 %33 to i32
  %35 = tail call i32 %31(ptr noundef %2, i32 noundef %34) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %12, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !211
  %40 = tail call ptr (ptr, ...) %39(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #16
  br label %41

41:                                               ; preds = %3, %11, %21, %29, %37
  %42 = phi ptr [ %40, %37 ], [ null, %29 ], [ null, %21 ], [ null, %11 ], [ null, %3 ]
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @have_sub2_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !174 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 16711680
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4854, ptr noundef nonnull @.str.1) #16
  %7 = load i32, ptr %0, align 8
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %3, %2 ], [ %7, %6 ]
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 4, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !203
  %15 = icmp eq i32 %14, 2956
  br i1 %15, label %43, label %16

16:                                               ; preds = %8
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %17, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !205
  %20 = load ptr, ptr %19, align 8, !tbaa !209
  %21 = getelementptr inbounds %struct.insn_operand_data, ptr %19, i64 0, i32 2
  %22 = load i16, ptr %21, align 8
  %23 = zext i16 %22 to i32
  %24 = tail call i32 %20(ptr noundef nonnull %0, i32 noundef %23) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.insn_operand_data, ptr %19, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !209
  %29 = getelementptr inbounds %struct.insn_operand_data, ptr %19, i64 1, i32 2
  %30 = load i16, ptr %29, align 8
  %31 = zext i16 %30 to i32
  %32 = tail call i32 %28(ptr noundef nonnull %0, i32 noundef %31) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.insn_operand_data, ptr %19, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !209
  %37 = getelementptr inbounds %struct.insn_operand_data, ptr %19, i64 2, i32 2
  %38 = load i16, ptr %37, align 8
  %39 = zext i16 %38 to i32
  %40 = tail call i32 %36(ptr noundef %1, i32 noundef %39) #16
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %34, %16, %26, %8
  %44 = phi i32 [ 0, %8 ], [ 0, %26 ], [ 0, %16 ], [ %42, %34 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_move_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !369 {
  tail call void @start_sequence() #16
  %3 = tail call ptr @emit_move_insn_1(ptr noundef %0, ptr noundef %1) #16
  %4 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @emit_move_insn_1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @can_extend_p(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 !prof !370 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1, i32 3)
  %6 = sext i32 %0 to i64
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [87 x [87 x %struct.optab_handlers]], ptr %5, i64 0, i64 %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !203
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_extend_insn(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !174 {
  %6 = tail call i32 @can_extend_p(i32 noundef %2, i32 noundef %3, i32 noundef %4) #17
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %7, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !211
  %10 = tail call ptr (ptr, ...) %9(ptr noundef %0, ptr noundef %1) #16
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_float(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !174 {
  %4 = alloca %struct.real_value, align 8
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 16711680
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4981, ptr noundef nonnull @.str.1) #16
  br label %9

9:                                                ; preds = %3, %8
  %10 = load i32, ptr %0, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 0
  %14 = icmp ne i32 %2, 0
  br i1 %13, label %218, label %15

15:                                               ; preds = %9
  %16 = load i32, ptr %1, align 8
  br label %17

17:                                               ; preds = %15, %93
  %18 = phi i32 [ %16, %15 ], [ %94, %93 ]
  %19 = phi i32 [ %16, %15 ], [ %95, %93 ]
  %20 = phi i32 [ %12, %15 ], [ %100, %93 ]
  %21 = phi i8 [ 0, %15 ], [ %96, %93 ]
  %22 = lshr i32 %19, 16
  %23 = and i32 %22, 255
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %93, label %25

25:                                               ; preds = %17, %84
  %26 = phi i32 [ %85, %84 ], [ %18, %17 ]
  %27 = phi i32 [ %86, %84 ], [ %19, %17 ]
  %28 = phi i32 [ %91, %84 ], [ %23, %17 ]
  %29 = phi i8 [ %87, %84 ], [ %21, %17 ]
  %30 = load i32, ptr %0, align 8
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %20, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %25
  %35 = tail call i32 @significand_size(i32 noundef %20) #16
  %36 = load i32, ptr %1, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !195
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 3
  %44 = icmp slt i32 %35, %43
  br i1 %44, label %84, label %45

45:                                               ; preds = %34, %25
  %46 = phi i32 [ %36, %34 ], [ %26, %25 ]
  %47 = phi i32 [ %36, %34 ], [ %27, %25 ]
  %48 = tail call fastcc i32 @can_float_p(i32 noundef %20, i32 noundef %28, i32 noundef %2) #17
  %49 = icmp eq i32 %48, 2956
  %50 = and i1 %14, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = tail call fastcc i32 @can_float_p(i32 noundef %20, i32 noundef %28, i32 noundef 0) #17
  %53 = icmp eq i32 %52, 2956
  %54 = select i1 %53, i8 %29, i8 1
  %55 = lshr i32 %46, 16
  %56 = and i32 %55, 255
  %57 = icmp eq i32 %28, %56
  br i1 %57, label %84, label %58

58:                                               ; preds = %51, %45
  %59 = phi i32 [ %46, %51 ], [ %47, %45 ]
  %60 = phi i32 [ 0, %51 ], [ %2, %45 ]
  %61 = phi i8 [ %54, %51 ], [ %29, %45 ]
  %62 = phi i32 [ %52, %51 ], [ %48, %45 ]
  %63 = icmp eq i32 %62, 2956
  br i1 %63, label %84, label %64

64:                                               ; preds = %58
  %65 = lshr i32 %46, 16
  %66 = and i32 %65, 255
  %67 = icmp eq i32 %28, %66
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = tail call ptr @convert_to_mode(i32 noundef %28, ptr noundef nonnull %1, i32 noundef %2) #16
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi ptr [ %69, %68 ], [ %1, %64 ]
  %72 = load i32, ptr %0, align 8
  %73 = lshr i32 %72, 16
  %74 = and i32 %73, 255
  %75 = icmp eq i32 %20, %74
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = tail call ptr @gen_reg_rtx(i32 noundef %20) #16
  br label %78

78:                                               ; preds = %76, %70
  %79 = phi ptr [ %77, %76 ], [ %0, %70 ]
  %80 = icmp eq i32 %60, 0
  %81 = select i1 %80, i32 103, i32 105
  tail call void @emit_unop_insn(i32 noundef %62, ptr noundef %79, ptr noundef %71, i32 noundef %81) #17
  %82 = icmp eq ptr %79, %0
  br i1 %82, label %269, label %83

83:                                               ; preds = %78
  tail call void @convert_move(ptr noundef nonnull %0, ptr noundef %79, i32 noundef 0) #16
  br label %269

84:                                               ; preds = %51, %34, %58
  %85 = phi i32 [ %46, %58 ], [ %36, %34 ], [ %46, %51 ]
  %86 = phi i32 [ %59, %58 ], [ %36, %34 ], [ %46, %51 ]
  %87 = phi i8 [ %61, %58 ], [ %29, %34 ], [ %54, %51 ]
  %88 = zext nneg i32 %28 to i64
  %89 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !195
  %91 = zext i8 %90 to i32
  %92 = icmp eq i8 %90, 0
  br i1 %92, label %93, label %25, !llvm.loop !371

93:                                               ; preds = %84, %17
  %94 = phi i32 [ %18, %17 ], [ %85, %84 ]
  %95 = phi i32 [ %19, %17 ], [ %86, %84 ]
  %96 = phi i8 [ %21, %17 ], [ %87, %84 ]
  %97 = zext nneg i32 %20 to i64
  %98 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !195
  %100 = zext i8 %99 to i32
  %101 = icmp eq i8 %99, 0
  br i1 %101, label %102, label %17, !llvm.loop !372

102:                                              ; preds = %93
  %103 = icmp ne i32 %2, 0
  %104 = icmp ne i8 %96, 0
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %106, label %218

106:                                              ; preds = %102
  %107 = tail call ptr @gen_label_rtx() #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  %108 = load i32, ptr %0, align 8
  %109 = lshr i32 %108, 16
  %110 = and i32 %109, 255
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %133, label %112

112:                                              ; preds = %106
  %113 = load i32, ptr %1, align 8
  %114 = lshr i32 %113, 16
  %115 = and i32 %114, 255
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !195
  br label %119

119:                                              ; preds = %112, %128
  %120 = phi i32 [ %110, %112 ], [ %131, %128 ]
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !195
  %124 = icmp ult i8 %118, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = tail call fastcc i32 @can_float_p(i32 noundef %120, i32 noundef %115, i32 noundef 0) #17
  %127 = icmp eq i32 %126, 2956
  br i1 %127, label %128, label %184

128:                                              ; preds = %119, %125
  %129 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %121
  %130 = load i8, ptr %129, align 1, !tbaa !195
  %131 = zext i8 %130 to i32
  %132 = icmp eq i8 %130, 0
  br i1 %132, label %133, label %119, !llvm.loop !373

133:                                              ; preds = %128, %106
  %134 = tail call i32 @significand_size(i32 noundef %110) #16
  %135 = add nsw i32 %134, 1
  %136 = load i32, ptr %1, align 8
  %137 = lshr i32 %136, 16
  %138 = and i32 %137, 255
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !195
  %142 = zext i8 %141 to i32
  %143 = shl nuw nsw i32 %142, 3
  %144 = icmp slt i32 %135, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %133
  %146 = load i32, ptr %0, align 8
  %147 = lshr i32 %146, 16
  %148 = and i32 %147, 255
  br label %184

149:                                              ; preds = %133
  %150 = tail call ptr @gen_label_rtx() #16
  %151 = load i32, ptr %0, align 8
  %152 = and i32 %151, 65535
  %153 = icmp eq i32 %152, 37
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #17
  %156 = icmp ult i32 %155, 53
  br i1 %156, label %161, label %157

157:                                              ; preds = %154
  %158 = lshr i32 %151, 16
  %159 = and i32 %158, 255
  %160 = icmp eq i32 %159, %110
  br i1 %160, label %163, label %161

161:                                              ; preds = %157, %154, %149
  %162 = tail call ptr @gen_reg_rtx(i32 noundef %110) #16
  br label %163

163:                                              ; preds = %161, %157
  %164 = phi ptr [ %162, %161 ], [ %0, %157 ]
  %165 = load i32, ptr %1, align 8
  %166 = lshr i32 %165, 16
  %167 = and i32 %166, 255
  tail call void @do_pending_stack_adjust() #16
  %168 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !184
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %1, ptr noundef %168, i32 noundef 85, ptr noundef null, i32 noundef %167, i32 noundef 0, ptr noundef %150) #17
  tail call void @expand_float(ptr noundef %164, ptr noundef nonnull %1, i32 noundef 0) #17
  %169 = tail call ptr @gen_jump(ptr noundef %107) #16
  %170 = tail call ptr @emit_jump_insn(ptr noundef %169) #16
  %171 = tail call ptr @emit_barrier() #16
  %172 = tail call ptr @emit_label(ptr noundef %150) #16
  %173 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !184
  %174 = tail call ptr @expand_binop(i32 noundef %167, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef nonnull %1, ptr noundef %173, ptr noundef null, i32 noundef 1, i32 noundef 3) #17
  %175 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !184
  %176 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %167, ptr noundef nonnull %1, ptr noundef %175, ptr noundef null, i32 noundef 1) #16
  %177 = tail call ptr @expand_binop(i32 noundef %167, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef %174, ptr noundef %176, ptr noundef %174, i32 noundef 1, i32 noundef 3) #17
  tail call void @expand_float(ptr noundef %164, ptr noundef %177, i32 noundef 0) #17
  %178 = tail call ptr @expand_binop(i32 noundef %110, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %164, ptr noundef %164, ptr noundef %164, i32 noundef 0, i32 noundef 3) #17
  %179 = icmp eq ptr %178, %164
  br i1 %179, label %182, label %180

180:                                              ; preds = %163
  %181 = tail call ptr @emit_move_insn(ptr noundef %164, ptr noundef %178) #16
  br label %182

182:                                              ; preds = %180, %163
  tail call void @do_pending_stack_adjust() #16
  %183 = tail call ptr @emit_label(ptr noundef %107) #16
  br label %257

184:                                              ; preds = %125, %145
  %185 = phi i32 [ %148, %145 ], [ %110, %125 ]
  %186 = phi i32 [ %146, %145 ], [ %108, %125 ]
  %187 = phi i32 [ %110, %145 ], [ %120, %125 ]
  %188 = icmp eq i32 %185, %187
  %189 = and i32 %186, 65535
  %190 = icmp eq i32 %189, 37
  %191 = and i1 %190, %188
  br i1 %191, label %192, label %195

192:                                              ; preds = %184
  %193 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #17
  %194 = icmp ult i32 %193, 53
  br i1 %194, label %195, label %197

195:                                              ; preds = %192, %184
  %196 = tail call ptr @gen_reg_rtx(i32 noundef %187) #16
  br label %197

197:                                              ; preds = %195, %192
  %198 = phi ptr [ %196, %195 ], [ %0, %192 ]
  tail call void @expand_float(ptr noundef %198, ptr noundef nonnull %1, i32 noundef 0) #17
  tail call void @do_pending_stack_adjust() #16
  %199 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !184
  %200 = load i32, ptr %1, align 8
  %201 = lshr i32 %200, 16
  %202 = and i32 %201, 255
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %1, ptr noundef %199, i32 noundef 82, ptr noundef null, i32 noundef %202, i32 noundef 0, ptr noundef %107) #17
  %203 = load i32, ptr %1, align 8
  %204 = lshr i32 %203, 16
  %205 = and i32 %204, 255
  %206 = zext nneg i32 %205 to i64
  %207 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !195
  %209 = zext i8 %208 to i32
  %210 = shl nuw nsw i32 %209, 3
  call void @real_2expN(ptr noundef nonnull %4, i32 noundef %210, i32 noundef %187) #16
  %211 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %4, i32 noundef %187) #16
  %212 = call ptr @expand_binop(i32 noundef %187, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %198, ptr noundef %211, ptr noundef %198, i32 noundef 0, i32 noundef 3) #17
  %213 = icmp eq ptr %212, %198
  br i1 %213, label %216, label %214

214:                                              ; preds = %197
  %215 = call ptr @emit_move_insn(ptr noundef %198, ptr noundef %212) #16
  br label %216

216:                                              ; preds = %214, %197
  call void @do_pending_stack_adjust() #16
  %217 = call ptr @emit_label(ptr noundef %107) #16
  br label %257

218:                                              ; preds = %9, %102
  %219 = phi i1 [ %103, %102 ], [ %14, %9 ]
  %220 = select i1 %219, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 8), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7)
  %221 = load i32, ptr %1, align 8
  %222 = lshr i32 %221, 16
  %223 = and i32 %222, 255
  %224 = zext nneg i32 %223 to i64
  %225 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !195
  %227 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !195
  %228 = icmp ult i8 %226, %227
  br i1 %228, label %229, label %234

229:                                              ; preds = %218
  %230 = tail call ptr @convert_to_mode(i32 noundef 16, ptr noundef nonnull %1, i32 noundef %2) #16
  %231 = load i32, ptr %230, align 8
  %232 = lshr i32 %231, 16
  %233 = and i32 %232, 255
  br label %234

234:                                              ; preds = %229, %218
  %235 = phi i32 [ %233, %229 ], [ %223, %218 ]
  %236 = phi ptr [ %230, %229 ], [ %1, %218 ]
  %237 = load i32, ptr %0, align 8
  %238 = lshr i32 %237, 16
  %239 = and i32 %238, 255
  %240 = tail call ptr @convert_optab_libfunc(ptr noundef nonnull %220, i32 noundef %239, i32 noundef %235) #17
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %243

242:                                              ; preds = %234
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5142, ptr noundef nonnull @.str.1) #16
  br label %243

243:                                              ; preds = %242, %234
  tail call void @start_sequence() #16
  %244 = load i32, ptr %0, align 8
  %245 = lshr i32 %244, 16
  %246 = and i32 %245, 255
  %247 = load i32, ptr %236, align 8
  %248 = lshr i32 %247, 16
  %249 = and i32 %248, 255
  %250 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef %240, ptr noundef null, i32 noundef 1, i32 noundef %246, i32 noundef 1, ptr noundef nonnull %236, i32 noundef %249) #16
  %251 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %252 = select i1 %219, i32 105, i32 103
  %253 = load i32, ptr %0, align 8
  %254 = lshr i32 %253, 16
  %255 = and i32 %254, 255
  %256 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %252, i32 noundef %255, ptr noundef nonnull %236) #16
  tail call void @emit_libcall_block(ptr noundef %251, ptr noundef nonnull %0, ptr noundef %250, ptr noundef %256) #17
  br label %269

257:                                              ; preds = %182, %216
  %258 = phi ptr [ %164, %182 ], [ %198, %216 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  %259 = icmp eq ptr %258, %0
  br i1 %259, label %269, label %260

260:                                              ; preds = %257
  %261 = load i32, ptr %258, align 8
  %262 = load i32, ptr %0, align 8
  %263 = xor i32 %262, %261
  %264 = and i32 %263, 16711680
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %260
  %267 = call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %258) #16
  br label %269

268:                                              ; preds = %260
  call void @convert_move(ptr noundef nonnull %0, ptr noundef nonnull %258, i32 noundef 0) #16
  br label %269

269:                                              ; preds = %243, %83, %78, %257, %268, %266
  ret void
}

; Function Attrs: optsize
declare i32 @significand_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @can_float_p(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !prof !174 !PGOFuncName !374 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 3), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 8, i32 3)
  %6 = zext nneg i32 %0 to i64
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds [87 x [87 x %struct.optab_handlers]], ptr %5, i64 0, i64 %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !203
  ret i32 %9
}

; Function Attrs: optsize
declare ptr @gen_jump(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @real_2expN(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @const_double_from_real_value(ptr noundef byval(%struct.real_value) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_fix(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !174 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !tbaa !213
  %6 = load i32, ptr %1, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %92, label %10

10:                                               ; preds = %3
  %11 = icmp ne i32 %2, 0
  br label %12

12:                                               ; preds = %10, %84
  %13 = phi ptr [ %1, %10 ], [ %86, %84 ]
  %14 = phi ptr [ %0, %10 ], [ %85, %84 ]
  %15 = phi i32 [ %8, %10 ], [ %90, %84 ]
  %16 = load i32, ptr %0, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %84, label %20

20:                                               ; preds = %12, %76
  %21 = phi ptr [ %78, %76 ], [ %13, %12 ]
  %22 = phi ptr [ %77, %76 ], [ %14, %12 ]
  %23 = phi i32 [ %82, %76 ], [ %18, %12 ]
  %24 = call fastcc i32 @can_fix_p(i32 noundef %23, i32 noundef %15, i32 noundef %2, ptr noundef nonnull %4) #17
  %25 = icmp eq i32 %24, 2956
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load i32, ptr %0, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = icmp ne i32 %23, %29
  %31 = and i1 %11, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %26
  %33 = call fastcc i32 @can_fix_p(i32 noundef %23, i32 noundef %15, i32 noundef 0, ptr noundef nonnull %4) #17
  %34 = icmp eq i32 %33, 2956
  br i1 %34, label %76, label %35

35:                                               ; preds = %20, %32
  %36 = phi i32 [ %33, %32 ], [ %24, %20 ]
  %37 = phi i32 [ 0, %32 ], [ %2, %20 ]
  %38 = tail call ptr @get_last_insn() #16
  %39 = load i32, ptr %21, align 8
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %15, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %35
  %44 = tail call ptr @convert_to_mode(i32 noundef %15, ptr noundef nonnull %21, i32 noundef 0) #16
  br label %45

45:                                               ; preds = %43, %35
  %46 = phi ptr [ %44, %43 ], [ %21, %35 ]
  %47 = load i32, ptr %4, align 4, !tbaa !213
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %46, align 8
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = tail call ptr @gen_reg_rtx(i32 noundef %52) #16
  %54 = load i32, ptr %46, align 8
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 255
  %57 = tail call ptr @expand_unop(i32 noundef %56, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 40), ptr noundef nonnull %46, ptr noundef %53, i32 noundef 0) #17
  br label %58

58:                                               ; preds = %49, %45
  %59 = phi ptr [ %57, %49 ], [ %46, %45 ]
  %60 = load i32, ptr %0, align 8
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = icmp eq i32 %23, %62
  br i1 %63, label %66, label %64

64:                                               ; preds = %58
  %65 = tail call ptr @gen_reg_rtx(i32 noundef %23) #16
  br label %66

66:                                               ; preds = %64, %58
  %67 = phi ptr [ %65, %64 ], [ %22, %58 ]
  %68 = icmp eq i32 %37, 0
  %69 = select i1 %68, i32 104, i32 106
  %70 = tail call zeroext i8 @maybe_emit_unop_insn(i32 noundef %36, ptr noundef %67, ptr noundef %59, i32 noundef %69) #17, !range !240
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = icmp eq ptr %67, %0
  br i1 %73, label %222, label %74

74:                                               ; preds = %72
  tail call void @convert_move(ptr noundef nonnull %0, ptr noundef %67, i32 noundef %2) #16
  br label %222

75:                                               ; preds = %66
  tail call void @delete_insns_since(ptr noundef %38) #16
  br label %76

76:                                               ; preds = %26, %32, %75
  %77 = phi ptr [ %67, %75 ], [ %22, %32 ], [ %22, %26 ]
  %78 = phi ptr [ %59, %75 ], [ %21, %32 ], [ %21, %26 ]
  %79 = zext nneg i32 %23 to i64
  %80 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !195
  %82 = zext i8 %81 to i32
  %83 = icmp eq i8 %81, 0
  br i1 %83, label %84, label %20, !llvm.loop !375

84:                                               ; preds = %76, %12
  %85 = phi ptr [ %14, %12 ], [ %77, %76 ]
  %86 = phi ptr [ %13, %12 ], [ %78, %76 ]
  %87 = zext nneg i32 %15 to i64
  %88 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !195
  %90 = zext i8 %89 to i32
  %91 = icmp eq i8 %89, 0
  br i1 %91, label %92, label %12, !llvm.loop !376

92:                                               ; preds = %84, %3
  %93 = phi ptr [ %0, %3 ], [ %85, %84 ]
  %94 = phi ptr [ %1, %3 ], [ %86, %84 ]
  %95 = icmp eq i32 %2, 0
  %96 = load i32, ptr %0, align 8
  %97 = lshr i32 %96, 16
  %98 = and i32 %97, 255
  %99 = zext nneg i32 %98 to i64
  br i1 %95, label %181, label %100

100:                                              ; preds = %92
  %101 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %99
  %102 = load i8, ptr %101, align 1, !tbaa !195
  %103 = icmp ult i8 %102, 9
  br i1 %103, label %104, label %181

104:                                              ; preds = %100
  %105 = load i32, ptr %94, align 8
  %106 = lshr i32 %105, 16
  %107 = and i32 %106, 255
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %181, label %109

109:                                              ; preds = %104, %176
  %110 = phi i32 [ %179, %176 ], [ %107, %104 ]
  %111 = call fastcc i32 @can_fix_p(i32 noundef %98, i32 noundef %110, i32 noundef 0, ptr noundef nonnull %4) #17
  %112 = icmp eq i32 %111, 2956
  %113 = zext nneg i32 %110 to i64
  br i1 %112, label %176, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %113
  %116 = load i8, ptr %115, align 1, !tbaa !195
  %117 = icmp eq i8 %116, 9
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %113
  %120 = load i8, ptr %119, align 1, !tbaa !195
  %121 = icmp ugt i8 %120, %102
  br i1 %121, label %122, label %176

122:                                              ; preds = %118, %114
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %123 = shl nuw nsw i8 %102, 3
  %124 = zext nneg i8 %123 to i32
  %125 = add nsw i32 %124, -1
  call void @real_2expN(ptr noundef nonnull %5, i32 noundef %125, i32 noundef %110) #16
  %126 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %5, i32 noundef %110) #16
  %127 = call ptr @gen_label_rtx() #16
  %128 = call ptr @gen_label_rtx() #16
  %129 = load i32, ptr %94, align 8
  %130 = lshr i32 %129, 16
  %131 = and i32 %130, 255
  %132 = icmp eq i32 %110, %131
  br i1 %132, label %135, label %133

133:                                              ; preds = %122
  %134 = call ptr @convert_to_mode(i32 noundef %110, ptr noundef nonnull %94, i32 noundef 0) #16
  br label %135

135:                                              ; preds = %133, %122
  %136 = phi ptr [ %134, %133 ], [ %94, %122 ]
  call void @do_pending_stack_adjust() #16
  %137 = load i32, ptr %136, align 8
  %138 = lshr i32 %137, 16
  %139 = and i32 %138, 255
  call void @emit_cmp_and_jump_insns(ptr noundef nonnull %136, ptr noundef %126, i32 noundef 82, ptr noundef null, i32 noundef %139, i32 noundef 0, ptr noundef %127) #17
  call void @expand_fix(ptr noundef nonnull %0, ptr noundef nonnull %136, i32 noundef 0) #17
  %140 = call ptr @gen_jump(ptr noundef %128) #16
  %141 = call ptr @emit_jump_insn(ptr noundef %140) #16
  %142 = call ptr @emit_barrier() #16
  %143 = call ptr @emit_label(ptr noundef %127) #16
  %144 = load i32, ptr %136, align 8
  %145 = lshr i32 %144, 16
  %146 = and i32 %145, 255
  %147 = call ptr @expand_binop(i32 noundef %146, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %136, ptr noundef %126, ptr noundef null, i32 noundef 0, i32 noundef 3) #17
  call void @expand_fix(ptr noundef nonnull %0, ptr noundef %147, i32 noundef 0) #17
  %148 = load i32, ptr %0, align 8
  %149 = lshr i32 %148, 16
  %150 = and i32 %149, 255
  %151 = zext nneg i32 %125 to i64
  %152 = shl nuw i64 1, %151
  %153 = call ptr @gen_int_mode(i64 noundef %152, i32 noundef %150) #16
  %154 = call ptr @expand_binop(i32 noundef %150, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef nonnull %0, ptr noundef %153, ptr noundef nonnull %0, i32 noundef 1, i32 noundef 3) #17
  %155 = icmp eq ptr %154, %0
  br i1 %155, label %158, label %156

156:                                              ; preds = %135
  %157 = call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef %154) #16
  br label %158

158:                                              ; preds = %156, %135
  %159 = call ptr @emit_label(ptr noundef %128) #16
  %160 = load i32, ptr %0, align 8
  %161 = lshr i32 %160, 16
  %162 = and i32 %161, 255
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %163
  %165 = load i32, ptr %164, align 4, !tbaa !203
  %166 = icmp eq i32 %165, 2956
  br i1 %166, label %175, label %167

167:                                              ; preds = %158
  %168 = call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %0) #16
  %169 = load i32, ptr %0, align 8
  %170 = lshr i32 %169, 16
  %171 = and i32 %170, 255
  %172 = call ptr @copy_rtx(ptr noundef nonnull %136) #16
  %173 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 106, i32 noundef %171, ptr noundef %172) #16
  %174 = call ptr @set_unique_reg_note(ptr noundef %168, i32 noundef 4, ptr noundef %173) #16
  br label %175

175:                                              ; preds = %167, %158
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %222

176:                                              ; preds = %109, %118
  %177 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %113
  %178 = load i8, ptr %177, align 1, !tbaa !195
  %179 = zext i8 %178 to i32
  %180 = icmp eq i8 %178, 0
  br i1 %180, label %181, label %109, !llvm.loop !377

181:                                              ; preds = %176, %92, %104, %100
  %182 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %99
  %183 = load i8, ptr %182, align 1, !tbaa !195
  %184 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !195
  %185 = icmp ult i8 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = tail call ptr @gen_reg_rtx(i32 noundef 16) #16
  tail call void @expand_fix(ptr noundef %187, ptr noundef %94, i32 noundef %2) #17
  br label %210

188:                                              ; preds = %181
  %189 = select i1 %95, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 3), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 4)
  %190 = load i32, ptr %94, align 8
  %191 = lshr i32 %190, 16
  %192 = and i32 %191, 255
  %193 = tail call ptr @convert_optab_libfunc(ptr noundef nonnull %189, i32 noundef %98, i32 noundef %192) #17
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5330, ptr noundef nonnull @.str.1) #16
  br label %196

196:                                              ; preds = %188, %195
  tail call void @start_sequence() #16
  %197 = load i32, ptr %0, align 8
  %198 = lshr i32 %197, 16
  %199 = and i32 %198, 255
  %200 = load i32, ptr %94, align 8
  %201 = lshr i32 %200, 16
  %202 = and i32 %201, 255
  %203 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef %193, ptr noundef null, i32 noundef 1, i32 noundef %199, i32 noundef 1, ptr noundef nonnull %94, i32 noundef %202) #16
  %204 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %205 = select i1 %95, i32 104, i32 106
  %206 = load i32, ptr %0, align 8
  %207 = lshr i32 %206, 16
  %208 = and i32 %207, 255
  %209 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %205, i32 noundef %208, ptr noundef nonnull %94) #16
  tail call void @emit_libcall_block(ptr noundef %204, ptr noundef %93, ptr noundef %203, ptr noundef %209) #17
  br label %210

210:                                              ; preds = %196, %186
  %211 = phi ptr [ %187, %186 ], [ %93, %196 ]
  %212 = icmp eq ptr %211, %0
  br i1 %212, label %222, label %213

213:                                              ; preds = %210
  %214 = load i32, ptr %0, align 8
  %215 = load i32, ptr %211, align 8
  %216 = xor i32 %215, %214
  %217 = and i32 %216, 16711680
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %213
  %220 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %211) #16
  br label %222

221:                                              ; preds = %213
  tail call void @convert_move(ptr noundef nonnull %0, ptr noundef nonnull %211, i32 noundef 0) #16
  br label %222

222:                                              ; preds = %72, %74, %210, %221, %219, %175
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @can_fix_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #7 !prof !174 !PGOFuncName !378 {
  %5 = icmp eq i32 %2, 0
  %6 = select i1 %5, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5, i32 3), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 6, i32 3)
  %7 = zext nneg i32 %0 to i64
  %8 = zext nneg i32 %1 to i64
  %9 = getelementptr inbounds [87 x [87 x %struct.optab_handlers]], ptr %6, i64 0, i64 %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !203
  %11 = icmp eq i32 %10, 2956
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = select i1 %5, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 3, i32 3), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 4, i32 3)
  %14 = getelementptr inbounds [87 x [87 x %struct.optab_handlers]], ptr %13, i64 0, i64 %7, i64 %8
  %15 = load i32, ptr %14, align 4, !tbaa !203
  %16 = icmp eq i32 %15, 2956
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 40, i32 4, i64 %8
  %19 = load i32, ptr %18, align 4, !tbaa !203
  %20 = icmp eq i32 %19, 2956
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %12
  br label %22

22:                                               ; preds = %17, %4, %21
  %23 = phi i32 [ 0, %21 ], [ 0, %4 ], [ 1, %17 ]
  %24 = phi i32 [ 2956, %21 ], [ %10, %4 ], [ %15, %17 ]
  store i32 %23, ptr %3, align 4, !tbaa !213
  ret i32 %24
}

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_fixed_convert(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !174 {
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = load i32, ptr %1, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %1) #16
  br label %38

14:                                               ; preds = %4
  %15 = icmp eq i32 %2, 0
  %16 = icmp eq i32 %3, 0
  %17 = select i1 %16, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 14), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 16)
  %18 = select i1 %16, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 13), ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 15)
  %19 = select i1 %15, ptr %18, ptr %17
  %20 = zext nneg i32 %7 to i64
  %21 = zext nneg i32 %10 to i64
  %22 = getelementptr inbounds %struct.convert_optab_d, ptr %19, i64 0, i32 3, i64 %20, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !203
  %24 = icmp eq i32 %23, 2956
  br i1 %24, label %29, label %25

25:                                               ; preds = %14
  %26 = select i1 %16, i32 107, i32 109
  %27 = select i1 %16, i32 108, i32 110
  %28 = select i1 %15, i32 %26, i32 %27
  tail call void @emit_unop_insn(i32 noundef %23, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %28) #17
  br label %38

29:                                               ; preds = %14
  %30 = tail call ptr @convert_optab_libfunc(ptr noundef nonnull %19, i32 noundef %7, i32 noundef %10) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5393, ptr noundef nonnull @.str.1) #16
  br label %33

33:                                               ; preds = %29, %32
  tail call void @start_sequence() #16
  %34 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef %30, ptr noundef null, i32 noundef 1, i32 noundef %7, i32 noundef 1, ptr noundef nonnull %1, i32 noundef %10) #16
  %35 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %36 = load i32, ptr %19, align 16, !tbaa !379
  %37 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %36, i32 noundef %7, ptr noundef nonnull %1) #16
  tail call void @emit_libcall_block(ptr noundef %35, ptr noundef nonnull %0, ptr noundef %34, ptr noundef %37) #17
  br label %38

38:                                               ; preds = %33, %25, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @expand_sfix_optab(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !174 {
  %4 = load i32, ptr %1, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %63, label %8

8:                                                ; preds = %3, %56
  %9 = phi i32 [ %61, %56 ], [ %6, %3 ]
  %10 = phi ptr [ %58, %56 ], [ %0, %3 ]
  %11 = phi ptr [ %57, %56 ], [ %1, %3 ]
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, 0
  %16 = zext nneg i32 %9 to i64
  br i1 %15, label %56, label %17

17:                                               ; preds = %8, %49
  %18 = phi i32 [ %54, %49 ], [ %14, %8 ]
  %19 = phi ptr [ %51, %49 ], [ %10, %8 ]
  %20 = phi ptr [ %50, %49 ], [ %11, %8 ]
  %21 = zext nneg i32 %18 to i64
  %22 = getelementptr inbounds %struct.convert_optab_d, ptr %2, i64 0, i32 3, i64 %21, i64 %16
  %23 = load i32, ptr %22, align 4, !tbaa !203
  %24 = icmp eq i32 %23, 2956
  br i1 %24, label %49, label %25

25:                                               ; preds = %17
  %26 = tail call ptr @get_last_insn() #16
  %27 = load i32, ptr %20, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %9, %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = tail call ptr @convert_to_mode(i32 noundef %9, ptr noundef nonnull %20, i32 noundef 0) #16
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi ptr [ %32, %31 ], [ %20, %25 ]
  %35 = load i32, ptr %0, align 8
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %18, %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = tail call ptr @gen_reg_rtx(i32 noundef %18) #16
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi ptr [ %40, %39 ], [ %19, %33 ]
  %43 = tail call zeroext i8 @maybe_emit_unop_insn(i32 noundef %23, ptr noundef %42, ptr noundef %34, i32 noundef 0) #17, !range !240
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = icmp eq ptr %42, %0
  br i1 %46, label %63, label %47

47:                                               ; preds = %45
  tail call void @convert_move(ptr noundef nonnull %0, ptr noundef %42, i32 noundef 0) #16
  br label %63

48:                                               ; preds = %41
  tail call void @delete_insns_since(ptr noundef %26) #16
  br label %49

49:                                               ; preds = %48, %17
  %50 = phi ptr [ %34, %48 ], [ %20, %17 ]
  %51 = phi ptr [ %42, %48 ], [ %19, %17 ]
  %52 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %21
  %53 = load i8, ptr %52, align 1, !tbaa !195
  %54 = zext i8 %53 to i32
  %55 = icmp eq i8 %53, 0
  br i1 %55, label %56, label %17, !llvm.loop !380

56:                                               ; preds = %49, %8
  %57 = phi ptr [ %11, %8 ], [ %50, %49 ]
  %58 = phi ptr [ %10, %8 ], [ %51, %49 ]
  %59 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %16
  %60 = load i8, ptr %59, align 1, !tbaa !195
  %61 = zext i8 %60 to i32
  %62 = icmp eq i8 %60, 0
  br i1 %62, label %63, label %8, !llvm.loop !381

63:                                               ; preds = %56, %3, %47, %45
  %64 = phi i8 [ 1, %45 ], [ 1, %47 ], [ 0, %3 ], [ 0, %56 ]
  ret i8 %64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @have_insn_for(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 !prof !382 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !184
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7, !prof !383

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.optab_d, ptr %5, i64 0, i32 4, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !203
  %11 = icmp ne i32 %10, 2956
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %7 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_libfunc_function(ptr noundef %0) local_unnamed_addr #0 !prof !384 {
  %2 = tail call ptr @get_identifier(ptr noundef %0) #16
  %3 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !184
  %4 = tail call ptr @build_function_type(ptr noundef %3, ptr noundef null) #16
  %5 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %2, ptr noundef %4) #16
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = or i64 %7, 33558528
  store i64 %8, ptr %6, align 8
  %9 = load i64, ptr %5, align 8
  %10 = or i64 %9, 134217728
  store i64 %10, ptr %5, align 8
  %11 = tail call ptr @decl_assembler_name(ptr noundef nonnull %5) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !385

13:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6082, ptr noundef nonnull @.str.1) #16
  br label %14

14:                                               ; preds = %1, %13
  %15 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %5, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !195
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20, !prof !386

18:                                               ; preds = %14
  tail call void @make_decl_rtl(ptr noundef nonnull %5) #16
  %19 = load ptr, ptr %15, align 8, !tbaa !195
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi ptr [ %19, %18 ], [ %16, %14 ]
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !195
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 67108864
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27, !prof !386

27:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6086, ptr noundef nonnull @.str.1) #16
  %28 = load ptr, ptr %15, align 8, !tbaa !195
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32, !prof !387

30:                                               ; preds = %27
  tail call void @make_decl_rtl(ptr noundef nonnull %5) #16
  %31 = load ptr, ptr %15, align 8, !tbaa !195
  br label %32

32:                                               ; preds = %20, %27, %30
  %33 = phi ptr [ %31, %30 ], [ %28, %27 ], [ %21, %20 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !195
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %36, align 8, !tbaa !195
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_function_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @init_one_libfunc(ptr noundef %0) local_unnamed_addr #0 !prof !384 {
  %2 = load ptr, ptr @libfunc_decls, align 8, !tbaa !184
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6, !prof !388

4:                                                ; preds = %1
  %5 = tail call ptr @htab_create_alloc(i64 noundef 37, ptr noundef nonnull @libfunc_decl_hash, ptr noundef nonnull @libfunc_decl_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #16
  store ptr %5, ptr @libfunc_decls, align 8, !tbaa !184
  br label %6

6:                                                ; preds = %4, %1
  %7 = tail call ptr @get_identifier(ptr noundef %0) #16
  %8 = tail call i32 @htab_hash_string(ptr noundef %0) #16
  %9 = load ptr, ptr @libfunc_decls, align 8, !tbaa !184
  %10 = tail call ptr @htab_find_slot_with_hash(ptr noundef %9, ptr noundef %7, i32 noundef %8, i32 noundef 1) #16
  %11 = load ptr, ptr %10, align 8, !tbaa !184
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15, !prof !386

13:                                               ; preds = %6
  %14 = tail call ptr @build_libfunc_function(ptr noundef %0) #17
  store ptr %14, ptr %10, align 8, !tbaa !184
  br label %15

15:                                               ; preds = %13, %6
  %16 = phi ptr [ %14, %13 ], [ %11, %6 ]
  %17 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !195
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22, !prof !385

20:                                               ; preds = %15
  tail call void @make_decl_rtl(ptr noundef nonnull %16) #16
  %21 = load ptr, ptr %17, align 8, !tbaa !195
  br label %22

22:                                               ; preds = %15, %20
  %23 = phi ptr [ %21, %20 ], [ %18, %15 ]
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !195
  ret ptr %25
}

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @libfunc_decl_hash(ptr nocapture noundef readonly %0) #0 !prof !174 !PGOFuncName !389 {
  %2 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !195
  %4 = getelementptr inbounds %struct.tree_identifier, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !195
  %6 = tail call i32 @htab_hash_string(ptr noundef %5) #16
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @libfunc_decl_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #3 !prof !390 !PGOFuncName !391 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #2

; Function Attrs: optsize
declare i32 @htab_hash_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @set_user_assembler_libfunc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !174 {
  %3 = tail call ptr @get_identifier(ptr noundef %0) #16
  %4 = tail call i32 @htab_hash_string(ptr noundef %0) #16
  %5 = load ptr, ptr @libfunc_decls, align 8, !tbaa !184
  %6 = tail call ptr @htab_find_slot_with_hash(ptr noundef %5, ptr noundef %3, i32 noundef %4, i32 noundef 0) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6129, ptr noundef nonnull @.str.1) #16
  br label %9

9:                                                ; preds = %2, %8
  %10 = load ptr, ptr %6, align 8, !tbaa !184
  tail call void @set_user_assembler_name(ptr noundef %10, ptr noundef %1) #16
  %11 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !195
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  tail call void @make_decl_rtl(ptr noundef nonnull %10) #16
  %15 = load ptr, ptr %11, align 8, !tbaa !195
  br label %16

16:                                               ; preds = %9, %14
  %17 = phi ptr [ %15, %14 ], [ %12, %9 ]
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !195
  ret ptr %19
}

; Function Attrs: optsize
declare void @set_user_assembler_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_optab_libfunc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !392 {
  %4 = alloca %struct.libfunc_entry, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %5, ptrtoint (ptr @optab_table to i64)
  %7 = sdiv exact i64 %6, 384
  store i64 %7, ptr %4, align 8, !tbaa !175
  %8 = getelementptr inbounds %struct.libfunc_entry, ptr %4, i64 0, i32 1
  store i32 %1, ptr %8, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.libfunc_entry, ptr %4, i64 0, i32 2
  store i32 0, ptr %9, align 4, !tbaa !183
  %10 = icmp eq ptr %2, null
  br i1 %10, label %13, label %11, !prof !366

11:                                               ; preds = %3
  %12 = tail call ptr @init_one_libfunc(ptr noundef nonnull %2) #17
  br label %13

13:                                               ; preds = %3, %11
  %14 = phi ptr [ %12, %11 ], [ null, %3 ]
  %15 = load ptr, ptr @libfunc_hash, align 8, !tbaa !184
  %16 = call ptr @htab_find_slot(ptr noundef %15, ptr noundef nonnull %4, i32 noundef 1) #16
  %17 = load ptr, ptr %16, align 8, !tbaa !184
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21, !prof !393

19:                                               ; preds = %13
  %20 = call ptr @ggc_alloc_stat(i64 noundef 24) #16
  store ptr %20, ptr %16, align 8, !tbaa !184
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi ptr [ %20, %19 ], [ %17, %13 ]
  store i64 %7, ptr %22, align 8, !tbaa !175
  %23 = getelementptr inbounds %struct.libfunc_entry, ptr %22, i64 0, i32 1
  store i32 %1, ptr %23, align 8, !tbaa !182
  %24 = getelementptr inbounds %struct.libfunc_entry, ptr %22, i64 0, i32 2
  store i32 0, ptr %24, align 4, !tbaa !183
  %25 = getelementptr inbounds %struct.libfunc_entry, ptr %22, i64 0, i32 3
  store ptr %14, ptr %25, align 8, !tbaa !188
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_conv_libfunc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !174 {
  %5 = alloca %struct.libfunc_entry, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %6, ptrtoint (ptr @convert_optab_table to i64)
  %8 = sdiv exact i64 %7, 30304
  store i64 %8, ptr %5, align 8, !tbaa !175
  %9 = getelementptr inbounds %struct.libfunc_entry, ptr %5, i64 0, i32 1
  store i32 %1, ptr %9, align 8, !tbaa !182
  %10 = getelementptr inbounds %struct.libfunc_entry, ptr %5, i64 0, i32 2
  store i32 %2, ptr %10, align 4, !tbaa !183
  %11 = icmp eq ptr %3, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = tail call ptr @init_one_libfunc(ptr noundef nonnull %3) #17
  br label %14

14:                                               ; preds = %4, %12
  %15 = phi ptr [ %13, %12 ], [ null, %4 ]
  %16 = load ptr, ptr @libfunc_hash, align 8, !tbaa !184
  %17 = call ptr @htab_find_slot(ptr noundef %16, ptr noundef nonnull %5, i32 noundef 1) #16
  %18 = load ptr, ptr %17, align 8, !tbaa !184
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call ptr @ggc_alloc_stat(i64 noundef 24) #16
  store ptr %21, ptr %17, align 8, !tbaa !184
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi ptr [ %21, %20 ], [ %18, %14 ]
  store i64 %8, ptr %23, align 8, !tbaa !175
  %24 = getelementptr inbounds %struct.libfunc_entry, ptr %23, i64 0, i32 1
  store i32 %1, ptr %24, align 8, !tbaa !182
  %25 = getelementptr inbounds %struct.libfunc_entry, ptr %23, i64 0, i32 2
  store i32 %2, ptr %25, align 4, !tbaa !183
  %26 = getelementptr inbounds %struct.libfunc_entry, ptr %23, i64 0, i32 3
  store ptr %15, ptr %26, align 8, !tbaa !188
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_optabs() local_unnamed_addr #0 !prof !394 {
  %1 = tail call ptr @htab_create_alloc(i64 noundef 10, ptr noundef nonnull @hash_libfunc, ptr noundef nonnull @eq_libfunc, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #16
  store ptr %1, ptr @libfunc_hash, align 8, !tbaa !184
  br label %2

2:                                                ; preds = %24, %0
  %3 = phi i64 [ 0, %0 ], [ %25, %24 ]
  %4 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %0 ], [ %26, %24 ]
  %5 = icmp ult <4 x i64> %4, <i64 87, i64 87, i64 87, i64 87>
  %6 = extractelement <4 x i1> %5, i64 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds [87 x i32], ptr @movcc_gen_code, i64 0, i64 %3
  store i32 2956, ptr %8, align 16, !tbaa !213
  br label %9

9:                                                ; preds = %7, %2
  %10 = extractelement <4 x i1> %5, i64 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = or disjoint i64 %3, 1
  %13 = getelementptr inbounds [87 x i32], ptr @movcc_gen_code, i64 0, i64 %12
  store i32 2956, ptr %13, align 4, !tbaa !213
  br label %14

14:                                               ; preds = %11, %9
  %15 = extractelement <4 x i1> %5, i64 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = or disjoint i64 %3, 2
  %18 = getelementptr inbounds [87 x i32], ptr @movcc_gen_code, i64 0, i64 %17
  store i32 2956, ptr %18, align 8, !tbaa !213
  br label %19

19:                                               ; preds = %16, %14
  %20 = extractelement <4 x i1> %5, i64 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = or disjoint i64 %3, 3
  %23 = getelementptr inbounds [87 x i32], ptr @movcc_gen_code, i64 0, i64 %22
  store i32 2956, ptr %23, align 4, !tbaa !213
  br label %24

24:                                               ; preds = %21, %19
  %25 = add i64 %3, 4
  %26 = add <4 x i64> %4, <i64 4, i64 4, i64 4, i64 4>
  %27 = icmp eq i64 %25, 88
  br i1 %27, label %28, label %2, !prof !395, !llvm.loop !396

28:                                               ; preds = %24, %28
  %29 = phi i64 [ %32, %28 ], [ 0, %24 ]
  %30 = getelementptr inbounds [87 x i32], ptr @vcond_gen_code, i64 0, i64 %29
  store i32 2956, ptr %30, align 4, !tbaa !213
  %31 = getelementptr inbounds [87 x i32], ptr @vcondu_gen_code, i64 0, i64 %29
  store i32 2956, ptr %31, align 4, !tbaa !213
  %32 = add nuw nsw i64 %29, 1
  %33 = icmp eq i64 %32, 87
  br i1 %33, label %34, label %28, !prof !399, !llvm.loop !400

34:                                               ; preds = %28
  tail call fastcc void @init_insn_codes() #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), i32 noundef 49) #17
  tail call fastcc void @init_optabv(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13), i32 noundef 49) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), i32 noundef 50) #17
  tail call fastcc void @init_optabv(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15), i32 noundef 50) #17
  tail call fastcc void @init_optab(ptr noundef nonnull @optab_table, i32 noundef 127) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 1), i32 noundef 128) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 2), i32 noundef 129) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 3), i32 noundef 135) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16), i32 noundef 52) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 4), i32 noundef 53) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 5), i32 noundef 54) #17
  tail call fastcc void @init_optabv(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17), i32 noundef 52) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 18), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 19), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 22), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 23), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 24), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 25), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 26), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 27), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 28), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 29), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 30), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31), i32 noundef 55) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 6), i32 noundef 56) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 7), i32 noundef 57) #17
  tail call fastcc void @init_optabv(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 32), i32 noundef 55) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34), i32 noundef 59) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36), i32 noundef 58) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 37), i32 noundef 60) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 38), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 39), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 40), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), i32 noundef 61) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), i32 noundef 62) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), i32 noundef 63) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44), i32 noundef 65) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 10), i32 noundef 133) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 11), i32 noundef 134) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), i32 noundef 67) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), i32 noundef 68) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 47), i32 noundef 66) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 48), i32 noundef 69) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54), i32 noundef 70) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55), i32 noundef 71) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56), i32 noundef 72) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57), i32 noundef 73) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 58), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 59), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60), i32 noundef 23) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 61), i32 noundef 40) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 115), i32 noundef 48) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 116), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 117), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 118), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 105), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 106), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 107), i32 noundef 81) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 108), i32 noundef 80) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 109), i32 noundef 83) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 110), i32 noundef 82) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 111), i32 noundef 85) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 112), i32 noundef 84) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 113), i32 noundef 90) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64), i32 noundef 51) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 8), i32 noundef 130) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 9), i32 noundef 131) #17
  tail call fastcc void @init_optabv(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65), i32 noundef 51) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66), i32 noundef 111) #17
  tail call fastcc void @init_optabv(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 67), i32 noundef 111) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 120), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), i32 noundef 64) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68), i32 noundef 113) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70), i32 noundef 114) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71), i32 noundef 115) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72), i32 noundef 116) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73), i32 noundef 117) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74), i32 noundef 118) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 75), i32 noundef 112) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 94), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 95), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 97), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 96), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 98), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 99), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 76), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 77), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 78), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 79), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 80), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 81), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 82), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 83), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 84), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 85), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 86), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 87), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 88), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 89), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 90), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 91), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 92), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 93), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 100), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 101), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 102), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 103), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 104), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 114), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 121), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 122), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 123), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 124), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 125), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 126), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 127), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 128), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 129), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 130), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 132), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 133), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 134), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 135), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 136), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 131), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 138), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 139), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 140), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 141), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 142), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 143), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 144), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 145), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 146), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 147), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 148), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 149), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 150), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 151), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 152), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 153), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 154), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 155), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 157), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 156), i32 noundef 0) #17
  tail call fastcc void @init_optab(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 158), i32 noundef 0) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull @convert_optab_table, i32 noundef 98) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 1), i32 noundef 99) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2), i32 noundef 100) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 3), i32 noundef 104) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 4), i32 noundef 106) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 5), i32 noundef 0) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 6), i32 noundef 0) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7), i32 noundef 103) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 8), i32 noundef 105) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 9), i32 noundef 0) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 10), i32 noundef 0) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11), i32 noundef 0) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12), i32 noundef 0) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 13), i32 noundef 107) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 14), i32 noundef 108) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 15), i32 noundef 109) #17
  tail call fastcc void @init_convert_optab(ptr noundef nonnull getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 16), i32 noundef 110) #17
  br label %35

35:                                               ; preds = %34, %35
  %36 = phi i64 [ 0, %34 ], [ %65, %35 ]
  %37 = getelementptr inbounds [87 x i32], ptr @movmem_optab, i64 0, i64 %36
  store i32 2956, ptr %37, align 4, !tbaa !213
  %38 = getelementptr inbounds [87 x i32], ptr @cmpstr_optab, i64 0, i64 %36
  store i32 2956, ptr %38, align 4, !tbaa !213
  %39 = getelementptr inbounds [87 x i32], ptr @cmpstrn_optab, i64 0, i64 %36
  store i32 2956, ptr %39, align 4, !tbaa !213
  %40 = getelementptr inbounds [87 x i32], ptr @cmpmem_optab, i64 0, i64 %36
  store i32 2956, ptr %40, align 4, !tbaa !213
  %41 = getelementptr inbounds [87 x i32], ptr @setmem_optab, i64 0, i64 %36
  store i32 2956, ptr %41, align 4, !tbaa !213
  %42 = getelementptr inbounds [87 x i32], ptr @sync_add_optab, i64 0, i64 %36
  store i32 2956, ptr %42, align 4, !tbaa !213
  %43 = getelementptr inbounds [87 x i32], ptr @sync_sub_optab, i64 0, i64 %36
  store i32 2956, ptr %43, align 4, !tbaa !213
  %44 = getelementptr inbounds [87 x i32], ptr @sync_ior_optab, i64 0, i64 %36
  store i32 2956, ptr %44, align 4, !tbaa !213
  %45 = getelementptr inbounds [87 x i32], ptr @sync_and_optab, i64 0, i64 %36
  store i32 2956, ptr %45, align 4, !tbaa !213
  %46 = getelementptr inbounds [87 x i32], ptr @sync_xor_optab, i64 0, i64 %36
  store i32 2956, ptr %46, align 4, !tbaa !213
  %47 = getelementptr inbounds [87 x i32], ptr @sync_nand_optab, i64 0, i64 %36
  store i32 2956, ptr %47, align 4, !tbaa !213
  %48 = getelementptr inbounds [87 x i32], ptr @sync_old_add_optab, i64 0, i64 %36
  store i32 2956, ptr %48, align 4, !tbaa !213
  %49 = getelementptr inbounds [87 x i32], ptr @sync_old_sub_optab, i64 0, i64 %36
  store i32 2956, ptr %49, align 4, !tbaa !213
  %50 = getelementptr inbounds [87 x i32], ptr @sync_old_ior_optab, i64 0, i64 %36
  store i32 2956, ptr %50, align 4, !tbaa !213
  %51 = getelementptr inbounds [87 x i32], ptr @sync_old_and_optab, i64 0, i64 %36
  store i32 2956, ptr %51, align 4, !tbaa !213
  %52 = getelementptr inbounds [87 x i32], ptr @sync_old_xor_optab, i64 0, i64 %36
  store i32 2956, ptr %52, align 4, !tbaa !213
  %53 = getelementptr inbounds [87 x i32], ptr @sync_old_nand_optab, i64 0, i64 %36
  store i32 2956, ptr %53, align 4, !tbaa !213
  %54 = getelementptr inbounds [87 x i32], ptr @sync_new_add_optab, i64 0, i64 %36
  store i32 2956, ptr %54, align 4, !tbaa !213
  %55 = getelementptr inbounds [87 x i32], ptr @sync_new_sub_optab, i64 0, i64 %36
  store i32 2956, ptr %55, align 4, !tbaa !213
  %56 = getelementptr inbounds [87 x i32], ptr @sync_new_ior_optab, i64 0, i64 %36
  store i32 2956, ptr %56, align 4, !tbaa !213
  %57 = getelementptr inbounds [87 x i32], ptr @sync_new_and_optab, i64 0, i64 %36
  store i32 2956, ptr %57, align 4, !tbaa !213
  %58 = getelementptr inbounds [87 x i32], ptr @sync_new_xor_optab, i64 0, i64 %36
  store i32 2956, ptr %58, align 4, !tbaa !213
  %59 = getelementptr inbounds [87 x i32], ptr @sync_new_nand_optab, i64 0, i64 %36
  store i32 2956, ptr %59, align 4, !tbaa !213
  %60 = getelementptr inbounds [87 x i32], ptr @sync_compare_and_swap, i64 0, i64 %36
  store i32 2956, ptr %60, align 4, !tbaa !213
  %61 = getelementptr inbounds [87 x i32], ptr @sync_lock_test_and_set, i64 0, i64 %36
  store i32 2956, ptr %61, align 4, !tbaa !213
  %62 = getelementptr inbounds [87 x i32], ptr @sync_lock_release, i64 0, i64 %36
  store i32 2956, ptr %62, align 4, !tbaa !213
  %63 = getelementptr inbounds [87 x i32], ptr @reload_out_optab, i64 0, i64 %36
  store i32 2956, ptr %63, align 4, !tbaa !213
  %64 = getelementptr inbounds [87 x i32], ptr @reload_in_optab, i64 0, i64 %36
  store i32 2956, ptr %64, align 4, !tbaa !213
  %65 = add nuw nsw i64 %36, 1
  %66 = icmp eq i64 %65, 87
  br i1 %66, label %67, label %35, !prof !399, !llvm.loop !401

67:                                               ; preds = %35
  tail call void @init_all_optabs() #16
  store ptr @.str.2, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 2), align 16, !tbaa !192
  store ptr @gen_int_fp_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12, i32 3), align 8, !tbaa !189
  store ptr @.str.2, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 2), align 16, !tbaa !192
  store ptr @gen_intv_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 13, i32 3), align 8, !tbaa !189
  store ptr @.str.3, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 0, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 0, i32 2), align 16, !tbaa !192
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 0, i32 3), align 8, !tbaa !189
  store ptr @.str.4, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 1, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 1, i32 2), align 16, !tbaa !192
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 1, i32 3), align 8, !tbaa !189
  store ptr @.str.5, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 2), align 16, !tbaa !192
  store ptr @gen_int_fp_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14, i32 3), align 8, !tbaa !189
  store ptr @.str.5, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 2), align 16, !tbaa !192
  store ptr @gen_intv_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 15, i32 3), align 8, !tbaa !189
  store ptr @.str.6, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 2, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 2, i32 2), align 16, !tbaa !192
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 2, i32 3), align 8, !tbaa !189
  store ptr @.str.7, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 3, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 3, i32 2), align 16, !tbaa !192
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 3, i32 3), align 8, !tbaa !189
  store ptr @.str.8, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 2), align 16, !tbaa !192
  store ptr @gen_int_fp_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 16, i32 3), align 8, !tbaa !189
  store ptr @.str.8, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 2), align 16, !tbaa !192
  store ptr @gen_intv_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 17, i32 3), align 8, !tbaa !189
  store ptr @.str.9, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 4, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 4, i32 2), align 16, !tbaa !192
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 4, i32 3), align 8, !tbaa !189
  store ptr @.str.10, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 5, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 5, i32 2), align 16, !tbaa !192
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 5, i32 3), align 8, !tbaa !189
  store ptr @.str.11, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 2), align 16, !tbaa !192
  store ptr @gen_int_fp_signed_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 31, i32 3), align 8, !tbaa !189
  store ptr @.str.12, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 32, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 32, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 32, i32 3), align 8, !tbaa !189
  store ptr @.str.13, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 6, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 6, i32 2), align 16, !tbaa !192
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 6, i32 3), align 8, !tbaa !189
  store ptr @.str.14, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34, i32 2), align 16, !tbaa !192
  store ptr @gen_int_unsigned_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 34, i32 3), align 8, !tbaa !189
  store ptr @.str.15, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 7, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 7, i32 2), align 16, !tbaa !192
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 7, i32 3), align 8, !tbaa !189
  store ptr @.str.16, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 1), align 8, !tbaa !191
  store i8 52, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 33, i32 3), align 8, !tbaa !189
  store ptr @.str.17, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35, i32 1), align 8, !tbaa !191
  store i8 52, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 35, i32 3), align 8, !tbaa !189
  store ptr @.str.18, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 36, i32 3), align 8, !tbaa !189
  store ptr @.str.19, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 37, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 37, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 37, i32 3), align 8, !tbaa !189
  store ptr @.str.20, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 40, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 40, i32 2), align 16, !tbaa !192
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 40, i32 3), align 8, !tbaa !189
  store ptr @.str.21, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41, i32 3), align 8, !tbaa !189
  store ptr @.str.22, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42, i32 3), align 8, !tbaa !189
  store ptr @.str.23, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43, i32 3), align 8, !tbaa !189
  store ptr @.str.24, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 2), align 16, !tbaa !192
  store ptr @gen_int_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 3), align 8, !tbaa !189
  store ptr @.str.25, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 10, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 10, i32 2), align 16, !tbaa !192
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 10, i32 3), align 8, !tbaa !189
  store ptr @.str.26, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 11, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 11, i32 2), align 16, !tbaa !192
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 11, i32 3), align 8, !tbaa !189
  store ptr @.str.27, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 2), align 16, !tbaa !192
  store ptr @gen_int_signed_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46, i32 3), align 8, !tbaa !189
  store ptr @.str.28, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 2), align 16, !tbaa !192
  store ptr @gen_int_unsigned_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45, i32 3), align 8, !tbaa !189
  store ptr @.str.29, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 2), align 16, !tbaa !192
  store ptr @gen_int_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 54, i32 3), align 8, !tbaa !189
  store ptr @.str.30, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 2), align 16, !tbaa !192
  store ptr @gen_int_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 55, i32 3), align 8, !tbaa !189
  store ptr @.str.31, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 56, i32 3), align 8, !tbaa !189
  store ptr @.str.32, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57, i32 1), align 8, !tbaa !191
  store i8 51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 57, i32 3), align 8, !tbaa !189
  store ptr @.str.33, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 2), align 16, !tbaa !192
  store ptr @gen_int_fp_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 64, i32 3), align 8, !tbaa !189
  store ptr @.str.34, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 8, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 8, i32 2), align 16, !tbaa !192
  store ptr @gen_signed_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 8, i32 3), align 8, !tbaa !189
  store ptr @.str.35, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 9, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 9, i32 2), align 16, !tbaa !192
  store ptr @gen_unsigned_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 9, i32 3), align 8, !tbaa !189
  store ptr @.str.33, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 2), align 16, !tbaa !192
  store ptr @gen_intv_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 65, i32 3), align 8, !tbaa !189
  store ptr @.str.36, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69, i32 3), align 8, !tbaa !189
  store ptr @.str.37, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 70, i32 3), align 8, !tbaa !189
  store ptr @.str.38, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 71, i32 3), align 8, !tbaa !189
  store ptr @.str.39, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 72, i32 3), align 8, !tbaa !189
  store ptr @.str.40, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 73, i32 3), align 8, !tbaa !189
  store ptr @.str.41, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 74, i32 3), align 8, !tbaa !189
  store ptr @.str.42, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 105, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 105, i32 2), align 16, !tbaa !192
  store ptr @gen_int_fp_fixed_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 105, i32 3), align 8, !tbaa !189
  store ptr @.str.43, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 106, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 106, i32 2), align 16, !tbaa !192
  store ptr @gen_int_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 106, i32 3), align 8, !tbaa !189
  store ptr @.str.44, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 107, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 107, i32 2), align 16, !tbaa !192
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 107, i32 3), align 8, !tbaa !189
  store ptr @.str.45, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 108, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 108, i32 2), align 16, !tbaa !192
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 108, i32 3), align 8, !tbaa !189
  store ptr @.str.46, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 109, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 109, i32 2), align 16, !tbaa !192
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 109, i32 3), align 8, !tbaa !189
  store ptr @.str.47, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 110, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 110, i32 2), align 16, !tbaa !192
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 110, i32 3), align 8, !tbaa !189
  store ptr @.str.48, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 111, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 111, i32 2), align 16, !tbaa !192
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 111, i32 3), align 8, !tbaa !189
  store ptr @.str.49, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 112, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 112, i32 2), align 16, !tbaa !192
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 112, i32 3), align 8, !tbaa !189
  store ptr @.str.50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 113, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 113, i32 2), align 16, !tbaa !192
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 113, i32 3), align 8, !tbaa !189
  store ptr @.str.51, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 158, i32 1), align 8, !tbaa !191
  store i8 50, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 158, i32 2), align 16, !tbaa !192
  store ptr @gen_fp_libfunc, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 158, i32 3), align 8, !tbaa !189
  store ptr @.str.52, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 1), align 8, !tbaa !187
  store ptr @gen_int_to_fp_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 7, i32 2), align 16, !tbaa !185
  store ptr @gen_ufloat_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 8, i32 2), align 16, !tbaa !185
  store ptr @.str.53, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 3, i32 1), align 8, !tbaa !187
  store ptr @gen_fp_to_int_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 3, i32 2), align 16, !tbaa !185
  store ptr @.str.54, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 4, i32 1), align 8, !tbaa !187
  store ptr @gen_fp_to_int_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 4, i32 2), align 16, !tbaa !185
  store ptr @.str.55, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 9, i32 1), align 8, !tbaa !187
  store ptr @gen_int_to_fp_nondecimal_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 9, i32 2), align 16, !tbaa !185
  store ptr @.str.56, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 10, i32 1), align 8, !tbaa !187
  store ptr @gen_int_to_fp_nondecimal_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 10, i32 2), align 16, !tbaa !185
  store ptr @.str.57, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11, i32 1), align 8, !tbaa !187
  store ptr @gen_int_to_fp_nondecimal_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 11, i32 2), align 16, !tbaa !185
  store ptr @.str.58, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12, i32 1), align 8, !tbaa !187
  store ptr @gen_int_to_fp_nondecimal_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 12, i32 2), align 16, !tbaa !185
  store ptr @.str.59, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 1), align 8, !tbaa !187
  store ptr @gen_extend_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 2), align 16, !tbaa !185
  store ptr @.str.60, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 1), align 8, !tbaa !187
  store ptr @gen_trunc_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 2), align 16, !tbaa !185
  store ptr @.str.61, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 13, i32 1), align 8, !tbaa !187
  store ptr @gen_fract_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 13, i32 2), align 16, !tbaa !185
  store ptr @.str.62, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 15, i32 1), align 8, !tbaa !187
  store ptr @gen_satfract_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 15, i32 2), align 16, !tbaa !185
  store ptr @.str.63, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 14, i32 1), align 8, !tbaa !187
  store ptr @gen_fractuns_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 14, i32 2), align 16, !tbaa !185
  store ptr @.str.64, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 16, i32 1), align 8, !tbaa !187
  store ptr @gen_satfractuns_conv_libfunc, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 16, i32 2), align 16, !tbaa !185
  tail call void @set_optab_libfunc(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68), i32 noundef 16, ptr noundef nonnull @.str.65) #17
  tail call void @set_optab_libfunc(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68), i32 noundef 17, ptr noundef nonnull @.str.66) #17
  %68 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 29), align 8, !tbaa !184
  %69 = icmp eq ptr %68, null
  br i1 %69, label %83, label %70, !prof !402

70:                                               ; preds = %67
  %71 = load i64, ptr %68, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 14
  br i1 %73, label %74, label %76, !prof !402

74:                                               ; preds = %70
  %75 = tail call i32 @vector_type_mode(ptr noundef nonnull %68) #16
  br label %81

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = lshr i32 %78, 16
  %80 = and i32 %79, 255
  br label %81

81:                                               ; preds = %76, %74
  %82 = phi i32 [ %75, %74 ], [ %80, %76 ]
  tail call void @set_optab_libfunc(ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 66), i32 noundef %82, ptr noundef nonnull @.str.67) #17
  br label %83

83:                                               ; preds = %81, %67
  %84 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.68) #17
  store ptr %84, ptr @libfunc_table, align 16, !tbaa !184
  %85 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.69) #17
  store ptr %85, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 1), align 8, !tbaa !184
  %86 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.70) #17
  store ptr %86, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 2), align 16, !tbaa !184
  %87 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.71) #17
  store ptr %87, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 3), align 8, !tbaa !184
  %88 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.72) #17
  store ptr %88, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 4), align 16, !tbaa !184
  %89 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.73) #17
  store ptr %89, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 5), align 8, !tbaa !184
  %90 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.74) #17
  store ptr %90, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 6), align 16, !tbaa !184
  %91 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.75) #17
  store ptr %91, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 7), align 8, !tbaa !184
  %92 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.76) #17
  store ptr %92, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 8), align 16, !tbaa !184
  %93 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.77) #17
  store ptr %93, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 9), align 8, !tbaa !184
  %94 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.78) #17
  store ptr %94, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 10), align 16, !tbaa !184
  %95 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.79) #17
  store ptr %95, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 11), align 8, !tbaa !184
  %96 = tail call ptr @init_one_libfunc(ptr noundef nonnull @.str.80) #17
  store ptr %96, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 13), align 8, !tbaa !184
  %97 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 30), align 8, !tbaa !403
  tail call void %97() #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @hash_libfunc(ptr nocapture noundef readonly %0) #3 !prof !392 !PGOFuncName !404 {
  %2 = getelementptr inbounds %struct.libfunc_entry, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !182
  %4 = getelementptr inbounds %struct.libfunc_entry, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !183
  %6 = mul nsw i32 %5, 87
  %7 = add nsw i32 %6, %3
  %8 = load i64, ptr %0, align 8, !tbaa !175
  %9 = trunc i64 %8 to i32
  %10 = xor i32 %7, %9
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @eq_libfunc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !174 !PGOFuncName !405 {
  %3 = load i64, ptr %0, align 8, !tbaa !175
  %4 = load i64, ptr %1, align 8, !tbaa !175
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.libfunc_entry, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !182
  %9 = getelementptr inbounds %struct.libfunc_entry, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !182
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.libfunc_entry, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !183
  %15 = getelementptr inbounds %struct.libfunc_entry, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !183
  %17 = icmp eq i32 %14, %16
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i32 [ 0, %6 ], [ 0, %2 ], [ %18, %12 ]
  ret i32 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @init_insn_codes() unnamed_addr #8 !prof !394 !PGOFuncName !406 {
  br label %1

1:                                                ; preds = %29, %0
  %2 = phi i64 [ 0, %0 ], [ %30, %29 ]
  br label %3

3:                                                ; preds = %25, %1
  %4 = phi i64 [ 0, %1 ], [ %26, %25 ]
  %5 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %1 ], [ %27, %25 ]
  %6 = icmp ult <4 x i64> %5, <i64 87, i64 87, i64 87, i64 87>
  %7 = extractelement <4 x i1> %6, i64 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 %2, i32 4, i64 %4
  store i32 2956, ptr %9, align 16, !tbaa !203
  br label %10

10:                                               ; preds = %8, %3
  %11 = extractelement <4 x i1> %6, i64 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = or disjoint i64 %4, 1
  %14 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 %2, i32 4, i64 %13
  store i32 2956, ptr %14, align 4, !tbaa !203
  br label %15

15:                                               ; preds = %12, %10
  %16 = extractelement <4 x i1> %6, i64 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = or disjoint i64 %4, 2
  %19 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 %2, i32 4, i64 %18
  store i32 2956, ptr %19, align 8, !tbaa !203
  br label %20

20:                                               ; preds = %17, %15
  %21 = extractelement <4 x i1> %6, i64 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = or disjoint i64 %4, 3
  %24 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 %2, i32 4, i64 %23
  store i32 2956, ptr %24, align 4, !tbaa !203
  br label %25

25:                                               ; preds = %22, %20
  %26 = add i64 %4, 4
  %27 = add <4 x i64> %5, <i64 4, i64 4, i64 4, i64 4>
  %28 = icmp eq i64 %26, 88
  br i1 %28, label %29, label %3, !prof !407, !llvm.loop !408

29:                                               ; preds = %25
  %30 = add nuw nsw i64 %2, 1
  %31 = icmp eq i64 %30, 159
  br i1 %31, label %32, label %1, !prof !409, !llvm.loop !410

32:                                               ; preds = %29, %65
  %33 = phi i64 [ %66, %65 ], [ 0, %29 ]
  br label %34

34:                                               ; preds = %62, %32
  %35 = phi i64 [ 0, %32 ], [ %63, %62 ]
  br label %36

36:                                               ; preds = %58, %34
  %37 = phi i64 [ 0, %34 ], [ %59, %58 ]
  %38 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %34 ], [ %60, %58 ]
  %39 = icmp ult <4 x i64> %38, <i64 87, i64 87, i64 87, i64 87>
  %40 = extractelement <4 x i1> %39, i64 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 %33, i32 3, i64 %35, i64 %37
  store i32 2956, ptr %42, align 4, !tbaa !203
  br label %43

43:                                               ; preds = %41, %36
  %44 = extractelement <4 x i1> %39, i64 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = or disjoint i64 %37, 1
  %47 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 %33, i32 3, i64 %35, i64 %46
  store i32 2956, ptr %47, align 4, !tbaa !203
  br label %48

48:                                               ; preds = %45, %43
  %49 = extractelement <4 x i1> %39, i64 2
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = or disjoint i64 %37, 2
  %52 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 %33, i32 3, i64 %35, i64 %51
  store i32 2956, ptr %52, align 4, !tbaa !203
  br label %53

53:                                               ; preds = %50, %48
  %54 = extractelement <4 x i1> %39, i64 3
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = or disjoint i64 %37, 3
  %57 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 %33, i32 3, i64 %35, i64 %56
  store i32 2956, ptr %57, align 4, !tbaa !203
  br label %58

58:                                               ; preds = %55, %53
  %59 = add i64 %37, 4
  %60 = add <4 x i64> %38, <i64 4, i64 4, i64 4, i64 4>
  %61 = icmp eq i64 %59, 88
  br i1 %61, label %62, label %36, !prof !411, !llvm.loop !412

62:                                               ; preds = %58
  %63 = add nuw nsw i64 %35, 1
  %64 = icmp eq i64 %63, 87
  br i1 %64, label %65, label %34, !prof !413, !llvm.loop !414

65:                                               ; preds = %62
  %66 = add nuw nsw i64 %33, 1
  %67 = icmp eq i64 %66, 17
  br i1 %67, label %68, label %32, !prof !388, !llvm.loop !415

68:                                               ; preds = %65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable
define internal fastcc void @init_optab(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !416 !PGOFuncName !417 {
  store i32 %1, ptr %0, align 8, !tbaa !214
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %3
  store ptr %0, ptr %4, align 8, !tbaa !184
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @init_optabv(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #10 !prof !418 !PGOFuncName !419 {
  store i32 %1, ptr %0, align 8, !tbaa !214
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @init_convert_optab(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #10 !prof !420 !PGOFuncName !421 {
  store i32 %1, ptr %0, align 8, !tbaa !379
  ret void
}

; Function Attrs: optsize
declare void @init_all_optabs() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_int_fp_fixed_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !422 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 8
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @gen_fp_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3) #17
  br label %11

11:                                               ; preds = %4, %10
  switch i8 %7, label %16 [
    i8 2, label %12
    i8 3, label %12
    i8 10, label %12
    i8 12, label %12
    i8 4, label %15
    i8 13, label %15
    i8 6, label %15
    i8 15, label %15
    i8 5, label %15
    i8 14, label %15
    i8 7, label %15
    i8 16, label %15
  ]

12:                                               ; preds = %11, %11, %11, %11
  tail call void @gen_int_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3) #17
  %13 = and i8 %7, -4
  %14 = icmp eq i8 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %11, %11, %11, %11, %11, %11, %11, %11
  tail call fastcc void @gen_fixed_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3) #17
  br label %16

16:                                               ; preds = %12, %11, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_intv_fp_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !423 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 8
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @gen_fp_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3) #17
  br label %25

11:                                               ; preds = %4
  %12 = icmp eq i8 %7, 2
  br i1 %12, label %13, label %25

13:                                               ; preds = %11
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %15 = shl i64 %14, 32
  %16 = add i64 %15, 8589934592
  %17 = ashr exact i64 %16, 32
  %18 = alloca i8, i64 %17, align 16
  %19 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) %1) #17
  %20 = ashr exact i64 %15, 32
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  store i8 118, ptr %21, align 1, !tbaa !195
  %22 = add i64 %15, 4294967296
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds i8, ptr %18, i64 %23
  store i8 0, ptr %24, align 1, !tbaa !195
  call void @gen_int_libfunc(ptr noundef %0, ptr noundef nonnull %18, i8 noundef signext %2, i32 noundef %3) #17
  br label %25

25:                                               ; preds = %10, %13, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_signed_fixed_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !424 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  switch i8 %7, label %10 [
    i8 4, label %8
    i8 13, label %8
    i8 6, label %8
    i8 15, label %8
  ]

8:                                                ; preds = %4, %4, %4, %4
  %9 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %9, i32 noundef %3) #17
  br label %10

10:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_unsigned_fixed_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !425 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  switch i8 %7, label %10 [
    i8 5, label %8
    i8 14, label %8
    i8 7, label %8
    i8 16, label %8
  ]

8:                                                ; preds = %4, %4, %4, %4
  %9 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %9, i32 noundef %3) #17
  br label %10

10:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_int_fp_signed_fixed_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !426 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 8
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @gen_fp_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3) #17
  br label %11

11:                                               ; preds = %4, %10
  switch i8 %7, label %14 [
    i8 2, label %12
    i8 3, label %12
    i8 10, label %12
    i8 12, label %12
    i8 4, label %13
    i8 13, label %13
    i8 6, label %13
    i8 15, label %13
  ]

12:                                               ; preds = %11, %11, %11, %11
  tail call void @gen_int_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3) #17
  switch i8 %7, label %14 [
    i8 4, label %13
    i8 6, label %13
  ]

13:                                               ; preds = %12, %11, %11, %11, %11, %12
  tail call void @gen_signed_fixed_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3) #17
  br label %14

14:                                               ; preds = %11, %12, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_int_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !427 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  %8 = icmp ne i8 %7, 2
  %9 = load i32, ptr @word_mode, align 4
  %10 = icmp ugt i32 %9, %3
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %5
  %14 = load i8, ptr %13, align 1, !tbaa !195
  %15 = icmp ugt i8 %14, 8
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %17, i32 noundef %3) #17
  br label %18

18:                                               ; preds = %12, %4, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_int_unsigned_fixed_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !428 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  switch i8 %7, label %10 [
    i8 2, label %8
    i8 3, label %8
    i8 10, label %8
    i8 12, label %8
    i8 5, label %9
    i8 14, label %9
    i8 7, label %9
    i8 16, label %9
  ]

8:                                                ; preds = %4, %4, %4, %4
  tail call void @gen_int_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3) #17
  switch i8 %7, label %10 [
    i8 5, label %9
    i8 7, label %9
  ]

9:                                                ; preds = %8, %4, %4, %4, %4, %8
  tail call void @gen_unsigned_fixed_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3) #17
  br label %10

10:                                               ; preds = %4, %8, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_fp_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !429 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  switch i8 %7, label %17 [
    i8 8, label %8
    i8 9, label %10
  ]

8:                                                ; preds = %4
  %9 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %9, i32 noundef %3) #17
  br label %17

10:                                               ; preds = %4
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %12 = add i64 %11, 5
  %13 = alloca i8, i64 %12, align 16
  store i32 1600416098, ptr %13, align 16
  %14 = getelementptr inbounds i8, ptr %13, i64 4
  %15 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %1) #17
  %16 = sext i8 %2 to i32
  call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef nonnull %13, i32 noundef %16, i32 noundef %3) #17
  br label %17

17:                                               ; preds = %4, %8, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_int_fixed_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !430 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  switch i8 %7, label %12 [
    i8 2, label %8
    i8 3, label %8
    i8 10, label %8
    i8 12, label %8
    i8 4, label %11
    i8 13, label %11
    i8 6, label %11
    i8 15, label %11
    i8 5, label %11
    i8 14, label %11
    i8 7, label %11
    i8 16, label %11
  ]

8:                                                ; preds = %4, %4, %4, %4
  tail call void @gen_int_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3) #17
  %9 = and i8 %7, -4
  %10 = icmp eq i8 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %4, %4, %4, %4, %4, %4, %4, %4
  tail call fastcc void @gen_fixed_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3) #17
  br label %12

12:                                               ; preds = %8, %4, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_int_signed_fixed_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !431 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  switch i8 %7, label %10 [
    i8 2, label %8
    i8 3, label %8
    i8 10, label %8
    i8 12, label %8
    i8 4, label %9
    i8 13, label %9
    i8 6, label %9
    i8 15, label %9
  ]

8:                                                ; preds = %4, %4, %4, %4
  tail call void @gen_int_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3) #17
  switch i8 %7, label %10 [
    i8 4, label %9
    i8 6, label %9
  ]

9:                                                ; preds = %8, %4, %4, %4, %4, %8
  tail call void @gen_signed_fixed_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3) #17
  br label %10

10:                                               ; preds = %4, %8, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_int_fp_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !432 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 8
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @gen_fp_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3) #17
  br label %11

11:                                               ; preds = %4, %10
  switch i8 %7, label %13 [
    i8 2, label %12
    i8 3, label %12
    i8 10, label %12
    i8 12, label %12
  ]

12:                                               ; preds = %11, %11, %11, %11
  tail call void @gen_int_libfunc(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i32 noundef %3) #17
  br label %13

13:                                               ; preds = %11, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_int_to_fp_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !433 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = zext i32 %2 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !195
  %13 = and i8 %12, -2
  %14 = icmp eq i8 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17
  br label %16

16:                                               ; preds = %9, %4, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_ufloat_conv_libfunc(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !434 {
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  %8 = icmp eq i8 %7, 9
  %9 = select i1 %8, ptr @.str.84, ptr @.str.85
  tail call void @gen_int_to_fp_conv_libfunc(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %2, i32 noundef %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_fp_to_int_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !435 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 8
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = zext i32 %2 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !195
  %14 = icmp eq i8 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17
  br label %16

16:                                               ; preds = %4, %10, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_int_to_fp_nondecimal_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !436 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = zext i32 %2 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !195
  %13 = icmp eq i8 %12, 8
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17
  br label %15

15:                                               ; preds = %9, %4, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_extend_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !437 {
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 8
  br i1 %9, label %10, label %48

10:                                               ; preds = %4
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !195
  %14 = and i8 %13, -2
  %15 = icmp ne i8 %14, 8
  %16 = icmp eq i32 %2, %3
  %17 = or i1 %16, %15
  br i1 %17, label %48, label %18

18:                                               ; preds = %10
  %19 = icmp eq i8 %7, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = icmp eq i8 %13, 9
  br i1 %21, label %24, label %30

22:                                               ; preds = %18
  %23 = icmp eq i8 %13, 8
  br i1 %23, label %24, label %36

24:                                               ; preds = %20, %22
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17
  %25 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %11
  %26 = load i16, ptr %25, align 2, !tbaa !438
  %27 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %5
  %28 = load i16, ptr %27, align 2, !tbaa !438
  %29 = icmp ugt i16 %26, %28
  br i1 %29, label %48, label %42

30:                                               ; preds = %20
  %31 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %11
  %32 = load i16, ptr %31, align 2, !tbaa !438
  %33 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %5
  %34 = load i16, ptr %33, align 2, !tbaa !438
  %35 = icmp ugt i16 %32, %34
  br i1 %35, label %48, label %47

36:                                               ; preds = %22
  %37 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %11
  %38 = load i16, ptr %37, align 2, !tbaa !438
  %39 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %5
  %40 = load i16, ptr %39, align 2, !tbaa !438
  %41 = icmp ugt i16 %38, %40
  br i1 %41, label %48, label %47

42:                                               ; preds = %24
  br i1 %19, label %43, label %45

43:                                               ; preds = %42
  %44 = icmp eq i8 %13, 8
  br i1 %44, label %47, label %48

45:                                               ; preds = %42
  %46 = icmp eq i8 %13, 9
  br i1 %46, label %47, label %48

47:                                               ; preds = %45, %36, %30, %43
  tail call fastcc void @gen_intraclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17
  br label %48

48:                                               ; preds = %43, %30, %36, %10, %4, %24, %47, %45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_trunc_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !440 {
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  %8 = and i8 %7, -2
  %9 = icmp eq i8 %8, 8
  br i1 %9, label %10, label %48

10:                                               ; preds = %4
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !195
  %14 = and i8 %13, -2
  %15 = icmp ne i8 %14, 8
  %16 = icmp eq i32 %2, %3
  %17 = or i1 %16, %15
  br i1 %17, label %48, label %18

18:                                               ; preds = %10
  %19 = icmp eq i8 %7, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = icmp eq i8 %13, 9
  br i1 %21, label %24, label %30

22:                                               ; preds = %18
  %23 = icmp eq i8 %13, 8
  br i1 %23, label %24, label %36

24:                                               ; preds = %20, %22
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17
  %25 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %11
  %26 = load i16, ptr %25, align 2, !tbaa !438
  %27 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %5
  %28 = load i16, ptr %27, align 2, !tbaa !438
  %29 = icmp ugt i16 %26, %28
  br i1 %29, label %42, label %48

30:                                               ; preds = %20
  %31 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %11
  %32 = load i16, ptr %31, align 2, !tbaa !438
  %33 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %5
  %34 = load i16, ptr %33, align 2, !tbaa !438
  %35 = icmp ugt i16 %32, %34
  br i1 %35, label %47, label %48

36:                                               ; preds = %22
  %37 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %11
  %38 = load i16, ptr %37, align 2, !tbaa !438
  %39 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %5
  %40 = load i16, ptr %39, align 2, !tbaa !438
  %41 = icmp ugt i16 %38, %40
  br i1 %41, label %47, label %48

42:                                               ; preds = %24
  br i1 %19, label %43, label %45

43:                                               ; preds = %42
  %44 = icmp eq i8 %13, 8
  br i1 %44, label %47, label %48

45:                                               ; preds = %42
  %46 = icmp eq i8 %13, 9
  br i1 %46, label %47, label %48

47:                                               ; preds = %45, %36, %30, %43
  tail call fastcc void @gen_intraclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17
  br label %48

48:                                               ; preds = %43, %30, %36, %10, %4, %24, %47, %45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_fract_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !441 {
  %5 = icmp eq i32 %2, %3
  br i1 %5, label %21, label %6

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !195
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
  %13 = load i8, ptr %12, align 1, !tbaa !195
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

14:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10, %6, %6, %6, %6, %6, %6, %6, %6
  %15 = zext i32 %3 to i64
  %16 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !195
  %18 = icmp eq i8 %9, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call fastcc void @gen_intraclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17
  br label %21

20:                                               ; preds = %14
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17
  br label %21

21:                                               ; preds = %10, %4, %20, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_satfract_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !442 {
  %5 = icmp eq i32 %2, %3
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !195
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
  %13 = load i8, ptr %12, align 1, !tbaa !195
  %14 = icmp eq i8 %9, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call fastcc void @gen_intraclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17
  br label %17

16:                                               ; preds = %10
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17
  br label %17

17:                                               ; preds = %6, %4, %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_fractuns_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !443 {
  %5 = icmp eq i32 %2, %3
  br i1 %5, label %24, label %6

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !195
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
  %13 = load i8, ptr %12, align 1, !tbaa !195
  br label %19

14:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  %15 = zext i32 %3 to i64
  %16 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !195
  %18 = icmp eq i8 %17, 2
  br i1 %18, label %23, label %19

19:                                               ; preds = %10, %14
  %20 = phi i8 [ %13, %10 ], [ %17, %14 ]
  switch i8 %20, label %24 [
    i8 4, label %21
    i8 13, label %21
    i8 6, label %21
    i8 15, label %21
    i8 5, label %21
    i8 14, label %21
    i8 7, label %21
    i8 16, label %21
  ]

21:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19
  %22 = icmp eq i8 %9, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %21, %14
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17
  br label %24

24:                                               ; preds = %19, %21, %4, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gen_satfractuns_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 !prof !174 !PGOFuncName !444 {
  %5 = icmp eq i32 %2, %3
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !195
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
  %13 = load i8, ptr %12, align 1, !tbaa !195
  %14 = icmp eq i8 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #17
  br label %16

16:                                               ; preds = %6, %10, %4, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_optab_libfuncs() local_unnamed_addr #0 !prof !174 {
  br label %1

1:                                                ; preds = %0, %28
  %2 = phi i64 [ 0, %0 ], [ %29, %28 ]
  %3 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 %2
  br label %4

4:                                                ; preds = %1, %25
  %5 = phi i64 [ 0, %1 ], [ %26, %25 ]
  %6 = trunc i64 %5 to i32
  %7 = tail call ptr @optab_libfunc(ptr noundef nonnull %3, i32 noundef %6) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %7, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 45
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6715, ptr noundef nonnull @.str.1) #16
  br label %14

14:                                               ; preds = %9, %13
  %15 = load ptr, ptr @stderr, align 8, !tbaa !184
  %16 = load i32, ptr %3, align 16, !tbaa !214
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !184
  %20 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %5
  %21 = load ptr, ptr %20, align 8, !tbaa !184
  %22 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !195
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.81, ptr noundef %19, ptr noundef %21, ptr noundef %23) #18
  br label %25

25:                                               ; preds = %14, %4
  %26 = add nuw nsw i64 %5, 1
  %27 = icmp eq i64 %26, 87
  br i1 %27, label %28, label %4, !llvm.loop !445

28:                                               ; preds = %25
  %29 = add nuw nsw i64 %2, 1
  %30 = icmp eq i64 %29, 159
  br i1 %30, label %31, label %1, !llvm.loop !446

31:                                               ; preds = %28, %66
  %32 = phi i64 [ %67, %66 ], [ 0, %28 ]
  %33 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 %32
  br label %34

34:                                               ; preds = %31, %63
  %35 = phi i64 [ 0, %31 ], [ %64, %63 ]
  %36 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %35
  %37 = trunc i64 %35 to i32
  br label %38

38:                                               ; preds = %34, %60
  %39 = phi i64 [ 0, %34 ], [ %61, %60 ]
  %40 = trunc i64 %39 to i32
  %41 = tail call ptr @convert_optab_libfunc(ptr noundef nonnull %33, i32 noundef %37, i32 noundef %40) #17
  %42 = icmp eq ptr %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %38
  %44 = load i32, ptr %41, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 45
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6736, ptr noundef nonnull @.str.1) #16
  br label %48

48:                                               ; preds = %43, %47
  %49 = load ptr, ptr @stderr, align 8, !tbaa !184
  %50 = load i32, ptr %33, align 16, !tbaa !379
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !184
  %54 = load ptr, ptr %36, align 8, !tbaa !184
  %55 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %39
  %56 = load ptr, ptr %55, align 8, !tbaa !184
  %57 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !195
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.82, ptr noundef %53, ptr noundef %54, ptr noundef %56, ptr noundef %58) #18
  br label %60

60:                                               ; preds = %48, %38
  %61 = add nuw nsw i64 %39, 1
  %62 = icmp eq i64 %61, 87
  br i1 %62, label %63, label %38, !llvm.loop !447

63:                                               ; preds = %60
  %64 = add nuw nsw i64 %35, 1
  %65 = icmp eq i64 %64, 87
  br i1 %65, label %66, label %34, !llvm.loop !448

66:                                               ; preds = %63
  %67 = add nuw nsw i64 %32, 1
  %68 = icmp eq i64 %67, 17
  br i1 %68, label %69, label %31, !llvm.loop !449

69:                                               ; preds = %66
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_cond_trap(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !174 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %7 = load i32, ptr %1, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  store i32 %9, ptr %5, align 4, !tbaa !213
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %4
  %12 = zext nneg i32 %9 to i64
  %13 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 118, i32 4, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !203
  %15 = icmp eq i32 %14, 2956
  br i1 %15, label %43, label %16

16:                                               ; preds = %11
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %17, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !205
  %20 = getelementptr inbounds %struct.insn_operand_data, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8, !tbaa !209
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = tail call i32 %21(ptr noundef %3, i32 noundef 0) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %23, %16
  tail call void @do_pending_stack_adjust() #16
  tail call void @start_sequence() #16
  call fastcc void @prepare_cmp_insn(ptr noundef nonnull %1, ptr noundef %2, i32 noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %5) #17
  %27 = load ptr, ptr %6, align 8, !tbaa !184
  %28 = icmp eq ptr %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %17, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !211
  %32 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !195
  %34 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !195
  %36 = tail call ptr (ptr, ...) %31(ptr noundef nonnull %27, ptr noundef %33, ptr noundef %35, ptr noundef %3) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = tail call ptr @emit_insn(ptr noundef nonnull %36) #16
  %40 = tail call ptr @get_insns() #16
  br label %41

41:                                               ; preds = %29, %26, %38
  %42 = phi ptr [ %40, %38 ], [ null, %26 ], [ null, %29 ]
  tail call void @end_sequence() #16
  br label %43

43:                                               ; preds = %41, %23, %11, %4
  %44 = phi ptr [ null, %4 ], [ null, %11 ], [ null, %23 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret ptr %44
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @expand_vec_cond_expr_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 !prof !174 {
  %3 = tail call fastcc i32 @get_vcond_icode(ptr noundef %0, i32 noundef %1) #17
  %4 = icmp ne i32 %3, 2956
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_vcond_icode(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !174 !PGOFuncName !450 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 2097152
  %5 = icmp eq i64 %4, 0
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [87 x i32], ptr @vcondu_gen_code, i64 0, i64 %6
  %8 = getelementptr inbounds [87 x i32], ptr @vcond_gen_code, i64 0, i64 %6
  %9 = select i1 %5, ptr %8, ptr %7
  %10 = load i32, ptr %9, align 4, !tbaa !213
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_vec_cond_expr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !174 {
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #16
  %11 = load i64, ptr %0, align 8
  br label %17

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi i64 [ %11, %9 ], [ %6, %12 ]
  %19 = phi i32 [ %10, %9 ], [ %16, %12 ]
  %20 = lshr i64 %18, 21
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = tail call fastcc i32 @get_vcond_icode(ptr noundef nonnull %0, i32 noundef %19) #17
  %24 = icmp eq i32 %23, 2956
  br i1 %24, label %70, label %25

25:                                               ; preds = %17
  %26 = icmp eq ptr %4, null
  %27 = zext i32 %23 to i64
  br i1 %26, label %34, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %27, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !205
  %31 = load ptr, ptr %30, align 8, !tbaa !209
  %32 = tail call i32 %31(ptr noundef nonnull %4, i32 noundef %19) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25, %28
  %35 = tail call ptr @gen_reg_rtx(i32 noundef %19) #16
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi ptr [ %35, %34 ], [ %4, %28 ]
  %38 = tail call fastcc ptr @vector_compare_rtx(ptr noundef %1, i8 noundef zeroext %22, i32 noundef %23) #17
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !195
  %41 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !195
  %43 = tail call fastcc ptr @expand_normal(ptr noundef %2) #17
  %44 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %27, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !205
  %46 = getelementptr inbounds %struct.insn_operand_data, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !209
  %48 = tail call i32 %47(ptr noundef %43, i32 noundef %19) #16
  %49 = icmp eq i32 %48, 0
  %50 = icmp ne i32 %19, 0
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = tail call ptr @force_reg(i32 noundef %19, ptr noundef %43) #16
  br label %54

54:                                               ; preds = %52, %36
  %55 = phi ptr [ %53, %52 ], [ %43, %36 ]
  %56 = tail call fastcc ptr @expand_normal(ptr noundef %3) #17
  %57 = getelementptr inbounds %struct.insn_operand_data, ptr %45, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !209
  %59 = tail call i32 %58(ptr noundef %56, i32 noundef %19) #16
  %60 = icmp eq i32 %59, 0
  %61 = and i1 %50, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = tail call ptr @force_reg(i32 noundef %19, ptr noundef %56) #16
  br label %64

64:                                               ; preds = %62, %54
  %65 = phi ptr [ %63, %62 ], [ %56, %54 ]
  %66 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %27, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !211
  %68 = tail call ptr (ptr, ...) %67(ptr noundef %37, ptr noundef %55, ptr noundef %65, ptr noundef nonnull %38, ptr noundef %40, ptr noundef %42) #16
  %69 = tail call ptr @emit_insn(ptr noundef %68) #16
  br label %70

70:                                               ; preds = %17, %64
  %71 = phi ptr [ %37, %64 ], [ null, %17 ]
  ret ptr %71
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vector_compare_rtx(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 !prof !174 !PGOFuncName !451 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !213
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6864, ptr noundef nonnull @.str.1) #16
  %10 = load i64, ptr %0, align 8
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi i64 [ %4, %3 ], [ %10, %9 ]
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = tail call fastcc i32 @get_rtx_code(i32 noundef %14, i8 noundef zeroext %1) #17
  %16 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !195
  %18 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !195
  %20 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !195
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 14
  br i1 %24, label %25, label %27

25:                                               ; preds = %11
  %26 = tail call i32 @vector_type_mode(ptr noundef nonnull %21) #16
  br label %32

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  br label %32

32:                                               ; preds = %27, %25
  %33 = phi i32 [ %26, %25 ], [ %31, %27 ]
  %34 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %17, i32 noundef %33) #17
  %35 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !195
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 14
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = tail call i32 @vector_type_mode(ptr noundef nonnull %36) #16
  br label %47

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  br label %47

47:                                               ; preds = %42, %40
  %48 = phi i32 [ %41, %40 ], [ %46, %42 ]
  %49 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %19, i32 noundef %48) #17
  %50 = zext i32 %2 to i64
  %51 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %50, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !205
  %53 = getelementptr inbounds %struct.insn_operand_data, ptr %52, i64 4
  %54 = load ptr, ptr %53, align 8, !tbaa !209
  %55 = load i32, ptr %34, align 8
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = tail call i32 %54(ptr noundef nonnull %34, i32 noundef %57) #16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %47
  %61 = load i32, ptr %34, align 8
  %62 = lshr i32 %61, 16
  %63 = and i32 %62, 255
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = tail call ptr @force_reg(i32 noundef %63, ptr noundef nonnull %34) #16
  br label %67

67:                                               ; preds = %65, %60, %47
  %68 = phi ptr [ %34, %47 ], [ %66, %65 ], [ %34, %60 ]
  %69 = getelementptr inbounds %struct.insn_operand_data, ptr %52, i64 5
  %70 = load ptr, ptr %69, align 8, !tbaa !209
  %71 = load i32, ptr %49, align 8
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = tail call i32 %70(ptr noundef nonnull %49, i32 noundef %73) #16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load i32, ptr %49, align 8
  %78 = lshr i32 %77, 16
  %79 = and i32 %78, 255
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = tail call ptr @force_reg(i32 noundef %79, ptr noundef nonnull %49) #16
  br label %83

83:                                               ; preds = %81, %76, %67
  %84 = phi ptr [ %49, %67 ], [ %82, %81 ], [ %49, %76 ]
  %85 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %15, i32 noundef 0, ptr noundef %68, ptr noundef %84) #16
  ret ptr %85
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_val_compare_and_swap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !174 {
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [87 x i32], ptr @sync_compare_and_swap, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !213
  %11 = icmp eq i32 %10, 2956
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = tail call fastcc ptr @expand_val_compare_and_swap_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %10) #17
  br label %14

14:                                               ; preds = %4, %12
  %15 = phi ptr [ %13, %12 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_val_compare_and_swap_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !174 !PGOFuncName !452 {
  %6 = load i32, ptr %0, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = icmp eq ptr %3, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = zext i32 %4 to i64
  %12 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !205
  %14 = load ptr, ptr %13, align 8, !tbaa !209
  %15 = tail call i32 %14(ptr noundef nonnull %3, i32 noundef %8) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10, %5
  %18 = tail call ptr @gen_reg_rtx(i32 noundef %8) #16
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
  %28 = tail call ptr @convert_modes(i32 noundef %8, i32 noundef %23, ptr noundef nonnull %1, i32 noundef 1) #16
  br label %29

29:                                               ; preds = %27, %19
  %30 = phi ptr [ %28, %27 ], [ %1, %19 ]
  %31 = zext i32 %4 to i64
  %32 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %31, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !205
  %34 = getelementptr inbounds %struct.insn_operand_data, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !209
  %36 = tail call i32 %35(ptr noundef %30, i32 noundef %8) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = tail call ptr @force_reg(i32 noundef %8, ptr noundef %30) #16
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
  %49 = tail call ptr @convert_modes(i32 noundef %8, i32 noundef %44, ptr noundef nonnull %2, i32 noundef 1) #16
  br label %50

50:                                               ; preds = %48, %40
  %51 = phi ptr [ %49, %48 ], [ %2, %40 ]
  %52 = getelementptr inbounds %struct.insn_operand_data, ptr %33, i64 3
  %53 = load ptr, ptr %52, align 8, !tbaa !209
  %54 = tail call i32 %53(ptr noundef %51, i32 noundef %8) #16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = tail call ptr @force_reg(i32 noundef %8, ptr noundef %51) #16
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi ptr [ %51, %50 ], [ %57, %56 ]
  %60 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %31, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !211
  %62 = tail call ptr (ptr, ...) %61(ptr noundef %20, ptr noundef nonnull %0, ptr noundef %41, ptr noundef %59) #16
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %58
  %65 = tail call ptr @emit_insn(ptr noundef nonnull %62) #16
  br label %66

66:                                               ; preds = %58, %64
  %67 = phi ptr [ %20, %64 ], [ null, %58 ]
  ret ptr %67
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_bool_compare_and_swap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !174 {
  %5 = alloca ptr, align 8
  %6 = load i32, ptr %0, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [87 x i32], ptr @sync_compare_and_swap, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !213
  %12 = icmp eq i32 %11, 2956
  br i1 %12, label %48, label %13

13:                                               ; preds = %4, %35
  %14 = phi ptr [ %36, %35 ], [ %1, %4 ]
  call void @start_sequence() #16
  %15 = call fastcc ptr @expand_val_compare_and_swap_1(ptr noundef nonnull %0, ptr noundef %14, ptr noundef %2, ptr noundef null, i32 noundef %11) #17
  store ptr null, ptr %5, align 8, !tbaa !184
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  call void @end_sequence() #16
  br label %48

18:                                               ; preds = %13
  %19 = call i32 @have_insn_for(i32 noundef 48, i32 noundef 2) #17, !range !257
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = call ptr @get_last_insn() #16
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !195
  call void @note_stores(ptr noundef %24, ptr noundef nonnull @find_cc_set, ptr noundef nonnull %5) #16
  br label %25

25:                                               ; preds = %21, %18
  %26 = call ptr @get_insns() #16
  call void @end_sequence() #16
  %27 = load ptr, ptr %5, align 8, !tbaa !184
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, ptr %14, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 43
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call ptr @force_reg(i32 noundef %8, ptr noundef nonnull %14) #16
  br label %35

35:                                               ; preds = %25, %29, %33
  %36 = phi ptr [ %14, %25 ], [ %34, %33 ], [ %14, %29 ]
  %37 = phi ptr [ %26, %25 ], [ null, %33 ], [ %26, %29 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %13, label %39, !llvm.loop !453

39:                                               ; preds = %35
  %40 = call ptr @emit_insn(ptr noundef nonnull %37) #16
  %41 = load ptr, ptr %5, align 8, !tbaa !184
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !184
  %45 = call ptr @emit_store_flag_force(ptr noundef %3, i32 noundef 81, ptr noundef nonnull %41, ptr noundef %44, i32 noundef 0, i32 noundef 0, i32 noundef 1) #16
  br label %48

46:                                               ; preds = %39
  %47 = call ptr @emit_store_flag_force(ptr noundef %3, i32 noundef 81, ptr noundef nonnull %15, ptr noundef %36, i32 noundef 0, i32 noundef 1, i32 noundef 1) #16
  br label %48

48:                                               ; preds = %4, %46, %43, %17
  %49 = phi ptr [ null, %17 ], [ %45, %43 ], [ %47, %46 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @find_cc_set(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 !prof !174 !PGOFuncName !454 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = lshr i32 %4, 16
  %9 = and i32 %8, 255
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !195
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = load i32, ptr %1, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 23
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 8, !tbaa !184
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7013, ptr noundef nonnull @.str.1) #16
  br label %22

22:                                               ; preds = %18, %21
  store ptr %0, ptr %2, align 8, !tbaa !184
  br label %23

23:                                               ; preds = %22, %14, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_sync_operation(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !174 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  switch i32 %2, label %26 [
    i32 49, label %27
    i32 62, label %7
    i32 63, label %8
    i32 61, label %9
    i32 64, label %10
    i32 50, label %11
  ]

7:                                                ; preds = %3
  br label %27

8:                                                ; preds = %3
  br label %27

9:                                                ; preds = %3
  br label %27

10:                                               ; preds = %3
  br label %27

11:                                               ; preds = %3
  %12 = zext nneg i32 %6 to i64
  %13 = getelementptr inbounds [87 x i32], ptr @sync_sub_optab, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !213
  %15 = icmp eq i32 %14, 2956
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %1, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 30
  br i1 %19, label %20, label %33

20:                                               ; preds = %16, %11
  %21 = getelementptr inbounds [87 x i32], ptr @sync_add_optab, i64 0, i64 %12
  %22 = load i32, ptr %21, align 4, !tbaa !213
  %23 = icmp eq i32 %22, 2956
  br i1 %23, label %65, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @expand_simple_unop(i32 noundef %6, i32 noundef 51, ptr noundef %1, ptr noundef null, i32 noundef 1) #17
  br label %33

26:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7183, ptr noundef nonnull @.str.1) #16
  br label %33

27:                                               ; preds = %3, %10, %9, %8, %7
  %28 = phi ptr [ @sync_nand_optab, %10 ], [ @sync_and_optab, %9 ], [ @sync_xor_optab, %8 ], [ @sync_ior_optab, %7 ], [ @sync_add_optab, %3 ]
  %29 = zext nneg i32 %6 to i64
  %30 = getelementptr inbounds [87 x i32], ptr %28, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !213
  %32 = icmp eq i32 %31, 2956
  br i1 %32, label %65, label %33

33:                                               ; preds = %16, %24, %26, %27
  %34 = phi i32 [ %31, %27 ], [ undef, %26 ], [ %14, %16 ], [ %22, %24 ]
  %35 = phi ptr [ %1, %27 ], [ %1, %26 ], [ %1, %16 ], [ %25, %24 ]
  %36 = phi i32 [ %2, %27 ], [ %2, %26 ], [ 50, %16 ], [ 49, %24 ]
  %37 = load i32, ptr %35, align 8
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 0
  %41 = icmp eq i32 %39, %6
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = tail call ptr @convert_modes(i32 noundef %6, i32 noundef %39, ptr noundef nonnull %35, i32 noundef 1) #16
  br label %45

45:                                               ; preds = %43, %33
  %46 = phi ptr [ %44, %43 ], [ %35, %33 ]
  %47 = zext i32 %34 to i64
  %48 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %47, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !205
  %50 = getelementptr inbounds %struct.insn_operand_data, ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !209
  %52 = tail call i32 %51(ptr noundef %46, i32 noundef %6) #16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = tail call ptr @force_reg(i32 noundef %6, ptr noundef %46) #16
  br label %56

56:                                               ; preds = %54, %45
  %57 = phi ptr [ %46, %45 ], [ %55, %54 ]
  %58 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %47, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !211
  %60 = tail call ptr (ptr, ...) %59(ptr noundef nonnull %0, ptr noundef %57) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = tail call ptr @emit_insn(ptr noundef nonnull %60) #16
  %64 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !184
  br label %89

65:                                               ; preds = %20, %56, %27
  %66 = phi i32 [ %36, %56 ], [ %2, %27 ], [ 50, %20 ]
  %67 = phi ptr [ %57, %56 ], [ %1, %27 ], [ %1, %20 ]
  %68 = zext nneg i32 %6 to i64
  %69 = getelementptr inbounds [87 x i32], ptr @sync_compare_and_swap, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !213
  %71 = icmp eq i32 %70, 2956
  br i1 %71, label %88, label %72

72:                                               ; preds = %65
  %73 = tail call ptr @gen_reg_rtx(i32 noundef %6) #16
  tail call void @start_sequence() #16
  %74 = icmp eq i32 %66, 64
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = tail call ptr @expand_simple_binop(i32 noundef %6, i32 noundef 61, ptr noundef %73, ptr noundef %67, ptr noundef null, i32 noundef 1, i32 noundef 3) #17
  %77 = tail call ptr @expand_simple_unop(i32 noundef %6, i32 noundef 64, ptr noundef %76, ptr noundef null, i32 noundef 1) #17
  br label %80

78:                                               ; preds = %72
  %79 = tail call ptr @expand_simple_binop(i32 noundef %6, i32 noundef %66, ptr noundef %73, ptr noundef %67, ptr noundef null, i32 noundef 1, i32 noundef 3) #17
  br label %80

80:                                               ; preds = %78, %75
  %81 = phi ptr [ %77, %75 ], [ %79, %78 ]
  %82 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %83 = icmp eq ptr %81, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = tail call fastcc zeroext i8 @expand_compare_and_swap_loop(ptr noundef nonnull %0, ptr noundef %73, ptr noundef nonnull %81, ptr noundef %82) #17, !range !240
  %86 = icmp eq i8 %85, 0
  %87 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  br i1 %86, label %88, label %89

88:                                               ; preds = %80, %84, %65
  br label %89

89:                                               ; preds = %84, %88, %62
  %90 = phi ptr [ %64, %62 ], [ null, %88 ], [ %87, %84 ]
  ret ptr %90
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @expand_compare_and_swap_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !174 !PGOFuncName !455 {
  %5 = alloca ptr, align 8
  %6 = load i32, ptr %0, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %9 = tail call ptr @gen_label_rtx() #16
  %10 = tail call ptr @gen_reg_rtx(i32 noundef %8) #16
  %11 = tail call ptr @emit_move_insn(ptr noundef %10, ptr noundef nonnull %0) #16
  %12 = tail call ptr @emit_label(ptr noundef %9) #16
  %13 = tail call ptr @emit_move_insn(ptr noundef %1, ptr noundef %10) #16
  %14 = icmp eq ptr %3, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = tail call ptr @emit_insn(ptr noundef nonnull %3) #16
  br label %17

17:                                               ; preds = %15, %4
  %18 = zext nneg i32 %8 to i64
  %19 = getelementptr inbounds [87 x i32], ptr @sync_compare_and_swap, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !213
  %21 = icmp eq i32 %20, 2956
  br i1 %21, label %47, label %22

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @expand_val_compare_and_swap_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %10, i32 noundef %20) #17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %47, label %25

25:                                               ; preds = %22
  store ptr null, ptr %5, align 8, !tbaa !184
  %26 = tail call i32 @have_insn_for(i32 noundef 48, i32 noundef 2) #17, !range !257
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @get_last_insn() #16
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !195
  call void @note_stores(ptr noundef %31, ptr noundef nonnull @find_cc_set, ptr noundef nonnull %5) #16
  %32 = load ptr, ptr %5, align 8, !tbaa !184
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !184
  br label %40

36:                                               ; preds = %25, %28
  %37 = icmp eq ptr %23, %10
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = call ptr @emit_move_insn(ptr noundef %10, ptr noundef nonnull %23) #16
  br label %40

40:                                               ; preds = %36, %38, %34
  %41 = phi ptr [ %35, %34 ], [ %1, %38 ], [ %1, %36 ]
  %42 = phi ptr [ %32, %34 ], [ %10, %38 ], [ %10, %36 ]
  %43 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !184
  %44 = load i32, ptr %42, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  call void @emit_cmp_and_jump_insns(ptr noundef nonnull %42, ptr noundef %41, i32 noundef 80, ptr noundef %43, i32 noundef %46, i32 noundef 1, ptr noundef %9) #17
  br label %47

47:                                               ; preds = %22, %17, %40
  %48 = phi i8 [ 1, %40 ], [ 0, %17 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret i8 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_sync_fetch_operation(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 !prof !174 {
  %6 = load i32, ptr %0, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  switch i32 %2, label %62 [
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
  %12 = load i32, ptr %11, align 4, !tbaa !213
  %13 = getelementptr inbounds [87 x i32], ptr @sync_new_add_optab, i64 0, i64 %10
  %14 = load i32, ptr %13, align 4, !tbaa !213
  br label %63

15:                                               ; preds = %5
  %16 = zext nneg i32 %8 to i64
  %17 = getelementptr inbounds [87 x i32], ptr @sync_old_ior_optab, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !213
  %19 = getelementptr inbounds [87 x i32], ptr @sync_new_ior_optab, i64 0, i64 %16
  %20 = load i32, ptr %19, align 4, !tbaa !213
  br label %63

21:                                               ; preds = %5
  %22 = zext nneg i32 %8 to i64
  %23 = getelementptr inbounds [87 x i32], ptr @sync_old_xor_optab, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !213
  %25 = getelementptr inbounds [87 x i32], ptr @sync_new_xor_optab, i64 0, i64 %22
  %26 = load i32, ptr %25, align 4, !tbaa !213
  br label %63

27:                                               ; preds = %5
  %28 = zext nneg i32 %8 to i64
  %29 = getelementptr inbounds [87 x i32], ptr @sync_old_and_optab, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !213
  %31 = getelementptr inbounds [87 x i32], ptr @sync_new_and_optab, i64 0, i64 %28
  %32 = load i32, ptr %31, align 4, !tbaa !213
  br label %63

33:                                               ; preds = %5
  %34 = zext nneg i32 %8 to i64
  %35 = getelementptr inbounds [87 x i32], ptr @sync_old_nand_optab, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !213
  %37 = getelementptr inbounds [87 x i32], ptr @sync_new_nand_optab, i64 0, i64 %34
  %38 = load i32, ptr %37, align 4, !tbaa !213
  br label %63

39:                                               ; preds = %5
  %40 = zext nneg i32 %8 to i64
  %41 = getelementptr inbounds [87 x i32], ptr @sync_old_sub_optab, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !213
  %43 = getelementptr inbounds [87 x i32], ptr @sync_new_sub_optab, i64 0, i64 %40
  %44 = load i32, ptr %43, align 4, !tbaa !213
  %45 = icmp eq i32 %42, 2956
  %46 = icmp eq i32 %44, 2956
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load i32, ptr %1, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 30
  br i1 %51, label %52, label %63

52:                                               ; preds = %39, %48
  %53 = getelementptr inbounds [87 x i32], ptr @sync_old_add_optab, i64 0, i64 %40
  %54 = load i32, ptr %53, align 4, !tbaa !213
  %55 = getelementptr inbounds [87 x i32], ptr @sync_new_add_optab, i64 0, i64 %40
  %56 = load i32, ptr %55, align 4, !tbaa !213
  %57 = icmp ne i32 %54, 2956
  %58 = icmp ne i32 %56, 2956
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = tail call ptr @expand_simple_unop(i32 noundef %8, i32 noundef 51, ptr noundef %1, ptr noundef null, i32 noundef 1) #17
  br label %63

62:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7286, ptr noundef nonnull @.str.1) #16
  br label %63

63:                                               ; preds = %48, %60, %62, %33, %27, %21, %15, %9
  %64 = phi i32 [ %2, %62 ], [ 49, %60 ], [ 50, %48 ], [ 64, %33 ], [ 61, %27 ], [ 63, %21 ], [ 62, %15 ], [ 49, %9 ]
  %65 = phi ptr [ %1, %62 ], [ %61, %60 ], [ %1, %48 ], [ %1, %33 ], [ %1, %27 ], [ %1, %21 ], [ %1, %15 ], [ %1, %9 ]
  %66 = phi i32 [ undef, %62 ], [ %54, %60 ], [ %42, %48 ], [ %36, %33 ], [ %30, %27 ], [ %24, %21 ], [ %18, %15 ], [ %12, %9 ]
  %67 = phi i32 [ undef, %62 ], [ %56, %60 ], [ %44, %48 ], [ %38, %33 ], [ %32, %27 ], [ %26, %21 ], [ %20, %15 ], [ %14, %9 ]
  %68 = icmp eq i8 %3, 0
  br i1 %68, label %73, label %71

69:                                               ; preds = %52
  %70 = icmp eq i8 %3, 0
  br label %134

71:                                               ; preds = %63
  %72 = icmp eq i32 %67, 2956
  br i1 %72, label %76, label %79

73:                                               ; preds = %63
  %74 = icmp eq i32 %66, 2956
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  switch i32 %64, label %134 [
    i32 63, label %76
    i32 50, label %76
    i32 49, label %76
  ]

76:                                               ; preds = %75, %75, %75, %71
  %77 = phi i32 [ %66, %71 ], [ %67, %75 ], [ %67, %75 ], [ %67, %75 ]
  %78 = icmp eq i32 %77, 2956
  br i1 %78, label %134, label %79

79:                                               ; preds = %73, %71, %76
  %80 = phi i1 [ false, %76 ], [ true, %71 ], [ true, %73 ]
  %81 = phi i32 [ %77, %76 ], [ %67, %71 ], [ %66, %73 ]
  %82 = phi i1 [ %68, %76 ], [ false, %71 ], [ true, %73 ]
  %83 = icmp eq ptr %4, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = zext i32 %81 to i64
  %86 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %85, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !205
  %88 = load ptr, ptr %87, align 8, !tbaa !209
  %89 = tail call i32 %88(ptr noundef nonnull %4, i32 noundef %8) #16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84, %79
  %92 = tail call ptr @gen_reg_rtx(i32 noundef %8) #16
  br label %93

93:                                               ; preds = %91, %84
  %94 = phi ptr [ %4, %84 ], [ %92, %91 ]
  %95 = load i32, ptr %65, align 8
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 255
  %98 = icmp eq i32 %97, 0
  %99 = icmp eq i32 %97, %8
  %100 = select i1 %98, i1 true, i1 %99
  br i1 %100, label %103, label %101

101:                                              ; preds = %93
  %102 = tail call ptr @convert_modes(i32 noundef %8, i32 noundef %97, ptr noundef nonnull %65, i32 noundef 1) #16
  br label %103

103:                                              ; preds = %101, %93
  %104 = phi ptr [ %102, %101 ], [ %65, %93 ]
  %105 = zext i32 %81 to i64
  %106 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %105, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !205
  %108 = getelementptr inbounds %struct.insn_operand_data, ptr %107, i64 2
  %109 = load ptr, ptr %108, align 8, !tbaa !209
  %110 = tail call i32 %109(ptr noundef %104, i32 noundef %8) #16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = tail call ptr @force_reg(i32 noundef %8, ptr noundef %104) #16
  br label %114

114:                                              ; preds = %112, %103
  %115 = phi ptr [ %104, %103 ], [ %113, %112 ]
  %116 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %105, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !211
  %118 = tail call ptr (ptr, ...) %117(ptr noundef %94, ptr noundef nonnull %0, ptr noundef %115) #16
  %119 = icmp eq ptr %118, null
  br i1 %119, label %134, label %120

120:                                              ; preds = %114
  %121 = tail call ptr @emit_insn(ptr noundef nonnull %118) #16
  br i1 %80, label %173, label %122

122:                                              ; preds = %120
  br i1 %82, label %123, label %124

123:                                              ; preds = %122
  switch i32 %64, label %130 [
    i32 49, label %131
    i32 50, label %129
    i32 64, label %126
  ]

124:                                              ; preds = %122
  %125 = icmp eq i32 %64, 64
  br i1 %125, label %126, label %130

126:                                              ; preds = %123, %124
  %127 = tail call ptr @expand_simple_binop(i32 noundef %8, i32 noundef 61, ptr noundef %94, ptr noundef %115, ptr noundef null, i32 noundef 1, i32 noundef 3) #17
  %128 = tail call ptr @expand_simple_unop(i32 noundef %8, i32 noundef 64, ptr noundef %127, ptr noundef null, i32 noundef 1) #17
  br label %173

129:                                              ; preds = %123
  br label %131

130:                                              ; preds = %123, %124
  br label %131

131:                                              ; preds = %123, %130, %129
  %132 = phi i32 [ 50, %123 ], [ 49, %129 ], [ %64, %130 ]
  %133 = tail call ptr @expand_simple_binop(i32 noundef %8, i32 noundef %132, ptr noundef %94, ptr noundef %115, ptr noundef null, i32 noundef 1, i32 noundef 3) #17
  br label %173

134:                                              ; preds = %69, %75, %114, %76
  %135 = phi i32 [ %64, %114 ], [ %64, %76 ], [ %64, %75 ], [ 50, %69 ]
  %136 = phi i1 [ %82, %114 ], [ %68, %76 ], [ true, %75 ], [ %70, %69 ]
  %137 = phi ptr [ %94, %114 ], [ %4, %76 ], [ %4, %75 ], [ %4, %69 ]
  %138 = phi ptr [ %115, %114 ], [ %65, %76 ], [ %65, %75 ], [ %1, %69 ]
  %139 = zext nneg i32 %8 to i64
  %140 = getelementptr inbounds [87 x i32], ptr @sync_compare_and_swap, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !213
  %142 = icmp eq i32 %141, 2956
  br i1 %142, label %173, label %143

143:                                              ; preds = %134
  %144 = tail call ptr @gen_reg_rtx(i32 noundef %8) #16
  %145 = icmp eq ptr %137, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = tail call i32 @register_operand(ptr noundef nonnull %137, i32 noundef %8) #16
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146, %143
  %150 = tail call ptr @gen_reg_rtx(i32 noundef %8) #16
  br label %151

151:                                              ; preds = %149, %146
  %152 = phi ptr [ %137, %146 ], [ %150, %149 ]
  tail call void @start_sequence() #16
  br i1 %136, label %153, label %155

153:                                              ; preds = %151
  %154 = tail call ptr @emit_move_insn(ptr noundef %152, ptr noundef %144) #16
  br label %155

155:                                              ; preds = %153, %151
  %156 = icmp eq i32 %135, 64
  br i1 %156, label %157, label %160

157:                                              ; preds = %155
  %158 = tail call ptr @expand_simple_binop(i32 noundef %8, i32 noundef 61, ptr noundef %144, ptr noundef %138, ptr noundef null, i32 noundef 1, i32 noundef 3) #17
  %159 = tail call ptr @expand_simple_unop(i32 noundef %8, i32 noundef 64, ptr noundef %158, ptr noundef null, i32 noundef 1) #17
  br label %162

160:                                              ; preds = %155
  %161 = tail call ptr @expand_simple_binop(i32 noundef %8, i32 noundef %135, ptr noundef %144, ptr noundef %138, ptr noundef null, i32 noundef 1, i32 noundef 3) #17
  br label %162

162:                                              ; preds = %160, %157
  %163 = phi ptr [ %159, %157 ], [ %161, %160 ]
  br i1 %136, label %166, label %164

164:                                              ; preds = %162
  %165 = tail call ptr @emit_move_insn(ptr noundef %152, ptr noundef %163) #16
  br label %166

166:                                              ; preds = %164, %162
  %167 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %168 = icmp eq ptr %163, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = tail call fastcc zeroext i8 @expand_compare_and_swap_loop(ptr noundef nonnull %0, ptr noundef %144, ptr noundef nonnull %163, ptr noundef %167) #17, !range !240
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169, %166
  br label %173

173:                                              ; preds = %134, %172, %169, %120, %131, %126
  %174 = phi ptr [ %128, %126 ], [ %133, %131 ], [ %94, %120 ], [ %152, %169 ], [ null, %172 ], [ null, %134 ]
  ret ptr %174
}

; Function Attrs: optsize
declare i32 @register_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_sync_lock_test_and_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !174 {
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [87 x i32], ptr @sync_lock_test_and_set, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !213
  %10 = icmp eq i32 %9, 2956
  br i1 %10, label %51, label %11

11:                                               ; preds = %3
  %12 = icmp eq ptr %2, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = zext i32 %9 to i64
  %15 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %14, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !205
  %17 = load ptr, ptr %16, align 8, !tbaa !209
  %18 = tail call i32 %17(ptr noundef nonnull %2, i32 noundef %6) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13, %11
  %21 = tail call ptr @gen_reg_rtx(i32 noundef %6) #16
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
  %31 = tail call ptr @convert_modes(i32 noundef %6, i32 noundef %26, ptr noundef nonnull %1, i32 noundef 1) #16
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi ptr [ %31, %30 ], [ %1, %22 ]
  %34 = zext i32 %9 to i64
  %35 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %34, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !205
  %37 = getelementptr inbounds %struct.insn_operand_data, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !209
  %39 = tail call i32 %38(ptr noundef %33, i32 noundef %6) #16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = tail call ptr @force_reg(i32 noundef %6, ptr noundef %33) #16
  br label %43

43:                                               ; preds = %41, %32
  %44 = phi ptr [ %33, %32 ], [ %42, %41 ]
  %45 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %34, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !211
  %47 = tail call ptr (ptr, ...) %46(ptr noundef %23, ptr noundef nonnull %0, ptr noundef %44) #16
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = tail call ptr @emit_insn(ptr noundef nonnull %47) #16
  br label %79

51:                                               ; preds = %43, %3
  %52 = phi ptr [ %23, %43 ], [ %2, %3 ]
  %53 = phi ptr [ %44, %43 ], [ %1, %3 ]
  %54 = getelementptr inbounds [87 x i32], ptr @sync_compare_and_swap, i64 0, i64 %7
  %55 = load i32, ptr %54, align 4, !tbaa !213
  %56 = icmp eq i32 %55, 2956
  br i1 %56, label %78, label %57

57:                                               ; preds = %51
  %58 = icmp eq ptr %52, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %57
  %60 = tail call i32 @register_operand(ptr noundef nonnull %52, i32 noundef %6) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %57
  %63 = tail call ptr @gen_reg_rtx(i32 noundef %6) #16
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
  %73 = tail call ptr @convert_modes(i32 noundef %6, i32 noundef %68, ptr noundef nonnull %53, i32 noundef 1) #16
  br label %74

74:                                               ; preds = %72, %64
  %75 = phi ptr [ %73, %72 ], [ %53, %64 ]
  %76 = tail call fastcc zeroext i8 @expand_compare_and_swap_loop(ptr noundef nonnull %0, ptr noundef %65, ptr noundef %75, ptr noundef null) #17, !range !240
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %51
  br label %79

79:                                               ; preds = %74, %78, %49
  %80 = phi ptr [ %23, %49 ], [ null, %78 ], [ %65, %74 ]
  ret ptr %80
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_libfunc_entry(ptr noundef %0) local_unnamed_addr #0 !prof !174 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.libfunc_entry, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !188
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_ggc_mx_rtx_def(ptr noundef nonnull %8) #16
  br label %11

11:                                               ; preds = %1, %6, %10, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P13libfunc_entry4htab(ptr noundef %0) #0 !prof !174 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !456
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !458
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !456
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !184
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_libfunc_entry(ptr noundef nonnull %19) #17
  %22 = load i64, ptr %11, align 8, !tbaa !458
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !459

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !456
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #16
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_libfunc_entry(ptr noundef %0) local_unnamed_addr #0 !prof !174 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_13libfunc_entry, i32 noundef 62) #16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.libfunc_entry, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !188
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @gt_pch_nx_rtx_def(ptr noundef nonnull %6) #16
  br label %9

9:                                                ; preds = %4, %8, %1
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_13libfunc_entry(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !174 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.libfunc_entry, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #16
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P13libfunc_entry4htab(ptr noundef %0) #0 !prof !174 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P13libfunc_entry4htab, i32 noundef 198) #16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !456
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !458
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !456
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !184
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_libfunc_entry(ptr noundef nonnull %17) #17
  %20 = load i64, ptr %9, align 8, !tbaa !458
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !460

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !456
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P13libfunc_entry4htab, i32 noundef 217) #16
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P13libfunc_entry4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !174 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !456
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !458
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !456
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #16
  %19 = load i64, ptr %9, align 8, !tbaa !458
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !461

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #16
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_m_P9tree_node4htab(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_n_P9tree_node4htab(ptr noundef) #2

; Function Attrs: optsize
declare ptr @simplify_binary_operation(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_SUBREG(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @commutative_operand_precedence(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_relational_operation(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @expand_superword_shift(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !prof !174 !PGOFuncName !462 {
  %8 = icmp eq ptr %4, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = load i32, ptr @word_mode, align 4, !tbaa !213
  %11 = tail call zeroext i8 @force_expand_binop(i32 noundef %10, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, i32 noundef %5, i32 noundef %6) #17, !range !240
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %9, %7
  %14 = icmp eq ptr %3, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  %16 = icmp eq ptr %0, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46)
  %17 = load i32, ptr @word_mode, align 4, !tbaa !213
  br i1 %16, label %23, label %18

18:                                               ; preds = %15
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !184
  %22 = tail call ptr @emit_move_insn(ptr noundef nonnull %3, ptr noundef %21) #16
  br label %27

23:                                               ; preds = %15
  %24 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef 31) #16
  %25 = tail call zeroext i8 @force_expand_binop(i32 noundef %17, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), ptr noundef %1, ptr noundef %24, ptr noundef nonnull %3, i32 noundef %5, i32 noundef %6) #17, !range !240
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18, %23, %13
  br label %28

28:                                               ; preds = %23, %9, %27
  %29 = phi i8 [ 1, %27 ], [ 0, %9 ], [ 0, %23 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @expand_subword_shift(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9) unnamed_addr #0 !prof !174 !PGOFuncName !463 {
  %11 = icmp eq ptr %1, getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44)
  %12 = select i1 %11, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44)
  %13 = select i1 %11, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 45)
  %14 = load i32, ptr %4, align 8
  %15 = and i32 %14, 65535
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !213
  %19 = icmp eq i32 %18, 9
  %20 = icmp ugt i64 %9, 31
  %21 = or i1 %20, %19
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = tail call ptr @immed_double_const(i64 noundef 32, i64 noundef 0, i32 noundef %0) #16
  %24 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %23, ptr noundef nonnull %4, ptr noundef null, i32 noundef 1, i32 noundef %8) #17
  br label %36

25:                                               ; preds = %10
  %26 = load i32, ptr @word_mode, align 4, !tbaa !213
  %27 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !184
  %28 = tail call ptr @expand_binop(i32 noundef %26, ptr noundef nonnull %12, ptr noundef %2, ptr noundef %27, ptr noundef null, i32 noundef %7, i32 noundef %8) #17
  %29 = icmp eq i64 %9, 31
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = tail call ptr @immed_double_const(i64 noundef -1, i64 noundef -1, i32 noundef %0) #16
  %32 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef nonnull %4, ptr noundef %31, ptr noundef null, i32 noundef 1, i32 noundef %8) #17
  br label %36

33:                                               ; preds = %25
  %34 = tail call ptr @immed_double_const(i64 noundef 31, i64 noundef 0, i32 noundef %0) #16
  %35 = tail call fastcc ptr @simplify_expand_binop(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef %34, ptr noundef nonnull %4, ptr noundef null, i32 noundef 1, i32 noundef %8) #17
  br label %36

36:                                               ; preds = %30, %33, %22
  %37 = phi ptr [ %24, %22 ], [ %32, %30 ], [ %35, %33 ]
  %38 = phi ptr [ %2, %22 ], [ %28, %30 ], [ %28, %33 ]
  %39 = icmp eq ptr %37, null
  %40 = icmp eq ptr %38, null
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %61, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr @word_mode, align 4, !tbaa !213
  %44 = tail call ptr @expand_binop(i32 noundef %43, ptr noundef nonnull %12, ptr noundef nonnull %38, ptr noundef nonnull %37, ptr noundef null, i32 noundef %7, i32 noundef %8) #17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %61, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr @word_mode, align 4, !tbaa !213
  %48 = tail call ptr @expand_binop(i32 noundef %47, ptr noundef nonnull %13, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %6, i32 noundef %7, i32 noundef %8) #17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr @word_mode, align 4, !tbaa !213
  %52 = tail call zeroext i8 @force_expand_binop(i32 noundef %51, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr noundef nonnull %48, ptr noundef nonnull %44, ptr noundef %6, i32 noundef %7, i32 noundef %8) #17, !range !240
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = icmp eq ptr %5, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %54
  %57 = load i32, ptr @word_mode, align 4, !tbaa !213
  %58 = tail call zeroext i8 @force_expand_binop(i32 noundef %57, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %7, i32 noundef %8) #17, !range !240
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56, %54
  br label %61

61:                                               ; preds = %56, %50, %46, %42, %36, %60
  %62 = phi i8 [ 1, %60 ], [ 0, %36 ], [ 0, %42 ], [ 0, %46 ], [ 0, %50 ], [ 0, %56 ]
  ret i8 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @expand_doubleword_shift_condmove(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12, i64 noundef %13) unnamed_addr #0 !prof !174 !PGOFuncName !464 {
  %15 = icmp eq ptr %9, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %14
  %17 = load i32, ptr @word_mode, align 4, !tbaa !213
  %18 = tail call ptr @gen_reg_rtx(i32 noundef %17) #16
  %19 = icmp eq ptr %7, %8
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call fastcc zeroext i8 @expand_superword_shift(ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %18, ptr noundef null, i32 noundef %11, i32 noundef %12) #17, !range !240
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %44, label %29

23:                                               ; preds = %14, %16
  %24 = phi ptr [ %18, %16 ], [ null, %14 ]
  %25 = load i32, ptr @word_mode, align 4, !tbaa !213
  %26 = tail call ptr @gen_reg_rtx(i32 noundef %25) #16
  %27 = tail call fastcc zeroext i8 @expand_superword_shift(ptr noundef %1, ptr noundef %5, ptr noundef %8, ptr noundef %24, ptr noundef %26, i32 noundef %11, i32 noundef %12) #17, !range !240
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %23, %20
  %30 = phi ptr [ %18, %20 ], [ %24, %23 ]
  %31 = phi ptr [ %9, %20 ], [ %26, %23 ]
  %32 = tail call fastcc zeroext i8 @expand_subword_shift(i32 noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %9, ptr noundef %10, i32 noundef %11, i32 noundef %12, i64 noundef %13) #17, !range !240
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr @word_mode, align 4, !tbaa !213
  %36 = tail call ptr @emit_conditional_move(ptr noundef %10, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %0, ptr noundef %10, ptr noundef %31, i32 noundef %35, i32 noundef 0) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  br i1 %15, label %43, label %39

39:                                               ; preds = %38
  %40 = load i32, ptr @word_mode, align 4, !tbaa !213
  %41 = tail call ptr @emit_conditional_move(ptr noundef nonnull %9, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %0, ptr noundef nonnull %9, ptr noundef %30, i32 noundef %40, i32 noundef 0) #17
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %38
  br label %44

44:                                               ; preds = %39, %34, %29, %23, %20, %43
  %45 = phi i8 [ 1, %43 ], [ 0, %20 ], [ 0, %23 ], [ 0, %29 ], [ 0, %34 ], [ 0, %39 ]
  ret i8 %45
}

; Function Attrs: optsize
declare ptr @gen_highpart(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @int_mode_for_mode(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lowpart_subreg_maybe_copy(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !174 !PGOFuncName !465 {
  %4 = tail call ptr @lowpart_subreg(i32 noundef %0, ptr noundef %1, i32 noundef %2) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @force_reg(i32 noundef %2, ptr noundef %1) #16
  %8 = tail call ptr @lowpart_subreg(i32 noundef %0, ptr noundef %7, i32 noundef %2) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2916, ptr noundef nonnull @.str.1) #16
  br label %11

11:                                               ; preds = %10, %6, %3
  %12 = phi ptr [ %8, %6 ], [ null, %10 ], [ %4, %3 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @lowpart_subreg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @find_reg_fusage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_used_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @modified_in_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @modified_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_float_lib_cmp(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !174 !PGOFuncName !466 {
  %6 = tail call i32 @swap_condition(i32 noundef %2) #16
  %7 = tail call i32 @reverse_condition_maybe_unordered(i32 noundef %2) #16
  %8 = load i32, ptr %0, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 8), align 8, !tbaa !361
  %12 = tail call i32 %11() #16
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %49, label %14

14:                                               ; preds = %5
  %15 = zext i32 %2 to i64
  %16 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %15
  %17 = zext i32 %6 to i64
  %18 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %17
  %19 = zext i32 %7 to i64
  %20 = getelementptr inbounds [140 x ptr], ptr @code_to_optab, i64 0, i64 %19
  br label %21

21:                                               ; preds = %14, %42
  %22 = phi ptr [ null, %14 ], [ %43, %42 ]
  %23 = phi i32 [ %10, %14 ], [ %47, %42 ]
  %24 = load ptr, ptr %16, align 8, !tbaa !184
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @optab_libfunc(ptr noundef nonnull %24, i32 noundef %23) #17
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %26, %21
  %30 = phi ptr [ null, %26 ], [ %22, %21 ]
  %31 = load ptr, ptr %18, align 8, !tbaa !184
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @optab_libfunc(ptr noundef nonnull %31, i32 noundef %23) #17
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %33, %29
  %37 = phi ptr [ null, %33 ], [ %30, %29 ]
  %38 = load ptr, ptr %20, align 8, !tbaa !184
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @optab_libfunc(ptr noundef nonnull %38, i32 noundef %23) #17
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi ptr [ %41, %40 ], [ %37, %36 ]
  %44 = zext nneg i32 %23 to i64
  %45 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !195
  %47 = zext i8 %46 to i32
  %48 = icmp eq i8 %46, 0
  br i1 %48, label %49, label %21, !llvm.loop !467

49:                                               ; preds = %42, %5
  %50 = phi ptr [ null, %5 ], [ %43, %42 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4392, ptr noundef nonnull @.str.1) #16
  br label %51

51:                                               ; preds = %26, %33, %49
  %52 = phi i32 [ 0, %49 ], [ %23, %33 ], [ %23, %26 ]
  %53 = phi ptr [ %0, %49 ], [ %0, %26 ], [ %1, %33 ]
  %54 = phi ptr [ %1, %49 ], [ %1, %26 ], [ %0, %33 ]
  %55 = phi i32 [ %2, %49 ], [ %2, %26 ], [ %6, %33 ]
  %56 = phi ptr [ %50, %49 ], [ %27, %26 ], [ %34, %33 ]
  %57 = icmp eq i32 %52, %10
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = tail call ptr @convert_to_mode(i32 noundef %52, ptr noundef %53, i32 noundef 0) #16
  %60 = tail call ptr @convert_to_mode(i32 noundef %52, ptr noundef %54, i32 noundef 0) #16
  br label %61

61:                                               ; preds = %58, %51
  %62 = phi ptr [ %60, %58 ], [ %54, %51 ]
  %63 = phi ptr [ %59, %58 ], [ %53, %51 ]
  %64 = icmp eq i32 %55, 90
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = tail call ptr @simplify_gen_relational(i32 noundef 80, i32 noundef %12, i32 noundef %52, ptr noundef %63, ptr noundef %63) #16
  %67 = tail call ptr @simplify_gen_relational(i32 noundef 80, i32 noundef %12, i32 noundef %52, ptr noundef %62, ptr noundef %62) #16
  %68 = load ptr, ptr @const_true_rtx, align 8, !tbaa !184
  %69 = tail call ptr @simplify_gen_ternary(i32 noundef 47, i32 noundef %12, i32 noundef %12, ptr noundef %66, ptr noundef %68, ptr noundef %67) #16
  br label %85

70:                                               ; preds = %61
  %71 = tail call ptr @simplify_gen_relational(i32 noundef %55, i32 noundef %12, i32 noundef %52, ptr noundef %63, ptr noundef %62) #16
  %72 = add i32 %55, -80
  %73 = icmp ult i32 %72, 6
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4450, ptr noundef nonnull @.str.1) #16
  unreachable

75:                                               ; preds = %70
  %76 = zext nneg i32 %72 to i64
  %77 = getelementptr inbounds [6 x ptr], ptr @switch.table.prepare_float_lib_cmp, i64 0, i64 %76
  %78 = load ptr, ptr %77, align 8
  %79 = zext nneg i32 %72 to i64
  %80 = getelementptr inbounds [6 x ptr], ptr @switch.table.prepare_float_lib_cmp.86, i64 0, i64 %79
  %81 = load ptr, ptr %80, align 8
  %82 = load ptr, ptr %81, align 8, !tbaa !184
  %83 = load ptr, ptr %78, align 8, !tbaa !184
  %84 = tail call ptr @simplify_gen_ternary(i32 noundef 47, i32 noundef %12, i32 noundef %12, ptr noundef %71, ptr noundef %83, ptr noundef %82) #16
  br label %85

85:                                               ; preds = %75, %65
  %86 = phi i32 [ 80, %65 ], [ %55, %75 ]
  %87 = phi ptr [ %69, %65 ], [ %84, %75 ]
  tail call void @start_sequence() #16
  %88 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef %56, ptr noundef null, i32 noundef 1, i32 noundef %12, i32 noundef 2, ptr noundef %63, i32 noundef %52, ptr noundef %62, i32 noundef %52) #16
  %89 = tail call ptr @get_insns() #16
  tail call void @end_sequence() #16
  %90 = tail call ptr @gen_reg_rtx(i32 noundef %12) #16
  tail call void @emit_libcall_block(ptr noundef %89, ptr noundef %90, ptr noundef %88, ptr noundef %87) #17
  %91 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !184
  %92 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef %86, i32 noundef 0, ptr noundef %90, ptr noundef %91) #16
  store ptr %92, ptr %3, align 8, !tbaa !184
  store i32 %12, ptr %4, align 4, !tbaa !213
  ret void
}

; Function Attrs: optsize
declare i32 @reverse_condition_maybe_unordered(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_ternary(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_fixed_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) unnamed_addr #0 !prof !174 !PGOFuncName !468 {
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !195
  switch i8 %7, label %10 [
    i8 4, label %8
    i8 13, label %8
    i8 6, label %8
    i8 15, label %8
    i8 5, label %8
    i8 14, label %8
    i8 7, label %8
    i8 16, label %8
  ]

8:                                                ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %9 = sext i8 %2 to i32
  tail call fastcc void @gen_libfunc(ptr noundef %0, ptr noundef %1, i32 noundef %9, i32 noundef %3) #17
  br label %10

10:                                               ; preds = %4, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !174 !PGOFuncName !469 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %6 = zext i32 %3 to i64
  %7 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !184
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #17
  %10 = add i64 %5, 4
  %11 = add i64 %10, %9
  %12 = and i64 %11, 4294967295
  %13 = alloca i8, i64 %12, align 16
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 95, ptr %13, align 16, !tbaa !195
  %15 = getelementptr inbounds i8, ptr %13, i64 2
  store i8 95, ptr %14, align 1, !tbaa !195
  %16 = load i8, ptr %1, align 1, !tbaa !195
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %22, %4
  %19 = phi ptr [ %15, %4 ], [ %27, %22 ]
  %20 = load i8, ptr %8, align 1, !tbaa !195
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %41, label %30

22:                                               ; preds = %4, %22
  %23 = phi i8 [ %28, %22 ], [ %16, %4 ]
  %24 = phi ptr [ %26, %22 ], [ %1, %4 ]
  %25 = phi ptr [ %27, %22 ], [ %15, %4 ]
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  %27 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %23, ptr %25, align 1, !tbaa !195
  %28 = load i8, ptr %26, align 1, !tbaa !195
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %18, label %22, !llvm.loop !470

30:                                               ; preds = %18, %30
  %31 = phi i8 [ %39, %30 ], [ %20, %18 ]
  %32 = phi ptr [ %38, %30 ], [ %8, %18 ]
  %33 = phi ptr [ %37, %30 ], [ %19, %18 ]
  %34 = zext i8 %31 to i64
  %35 = getelementptr inbounds [256 x i8], ptr @_sch_tolower, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !195
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 %36, ptr %33, align 1, !tbaa !195
  %38 = getelementptr inbounds i8, ptr %32, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !195
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %30, !llvm.loop !471

41:                                               ; preds = %30, %18
  %42 = phi ptr [ %19, %18 ], [ %37, %30 ]
  %43 = trunc i32 %2 to i8
  %44 = getelementptr inbounds i8, ptr %42, i64 1
  store i8 %43, ptr %42, align 1, !tbaa !195
  store i8 0, ptr %44, align 1, !tbaa !195
  %45 = ptrtoint ptr %44 to i64
  %46 = ptrtoint ptr %13 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call ptr @ggc_alloc_string(ptr noundef nonnull %13, i32 noundef %48) #16
  call void @set_optab_libfunc(ptr noundef %0, i32 noundef %3, ptr noundef %49) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_interclass_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !174 !PGOFuncName !472 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !184
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #17
  %10 = zext i32 %3 to i64
  %11 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !184
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #17
  %14 = add i64 %13, %9
  %15 = add i64 %14, %5
  %16 = add i64 %15, 4
  %17 = alloca i8, i64 %16, align 16
  store i8 95, ptr %17, align 16, !tbaa !195
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 95, ptr %18, align 1, !tbaa !195
  %19 = getelementptr inbounds i8, ptr %17, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %19, ptr align 1 %1, i64 %5, i1 false)
  %20 = add i64 %15, 8
  %21 = alloca i8, i64 %20, align 16
  store i8 95, ptr %21, align 16, !tbaa !195
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 95, ptr %22, align 1, !tbaa !195
  %23 = getelementptr inbounds i8, ptr %21, i64 2
  store i32 1600416098, ptr %23, align 2
  %24 = getelementptr inbounds i8, ptr %21, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %24, ptr align 1 %1, i64 %5, i1 false)
  %25 = getelementptr inbounds i8, ptr %21, i64 4
  %26 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %27 = load i8, ptr %26, align 1, !tbaa !195
  %28 = icmp eq i8 %27, 9
  br i1 %28, label %35, label %29

29:                                               ; preds = %4
  %30 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %31 = load i8, ptr %30, align 1, !tbaa !195
  %32 = icmp eq i8 %31, 9
  %33 = select i1 %32, ptr %25, ptr %17
  %34 = select i1 %32, ptr %21, ptr %17
  br label %35

35:                                               ; preds = %29, %4
  %36 = phi ptr [ %25, %4 ], [ %33, %29 ]
  %37 = phi ptr [ %21, %4 ], [ %34, %29 ]
  %38 = getelementptr inbounds i8, ptr %36, i64 %5
  %39 = getelementptr inbounds i8, ptr %38, i64 2
  %40 = load i8, ptr %12, align 1, !tbaa !195
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %46, %35
  %43 = phi ptr [ %39, %35 ], [ %53, %46 ]
  %44 = load i8, ptr %8, align 1, !tbaa !195
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %68, label %57

46:                                               ; preds = %35, %46
  %47 = phi i8 [ %55, %46 ], [ %40, %35 ]
  %48 = phi ptr [ %54, %46 ], [ %12, %35 ]
  %49 = phi ptr [ %53, %46 ], [ %39, %35 ]
  %50 = zext i8 %47 to i64
  %51 = getelementptr inbounds [256 x i8], ptr @_sch_tolower, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !195
  store i8 %52, ptr %49, align 1, !tbaa !195
  %53 = getelementptr inbounds i8, ptr %49, i64 1
  %54 = getelementptr inbounds i8, ptr %48, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !195
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %42, label %46, !llvm.loop !473

57:                                               ; preds = %42, %57
  %58 = phi i8 [ %66, %57 ], [ %44, %42 ]
  %59 = phi ptr [ %65, %57 ], [ %8, %42 ]
  %60 = phi ptr [ %64, %57 ], [ %43, %42 ]
  %61 = zext i8 %58 to i64
  %62 = getelementptr inbounds [256 x i8], ptr @_sch_tolower, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !195
  store i8 %63, ptr %60, align 1, !tbaa !195
  %64 = getelementptr inbounds i8, ptr %60, i64 1
  %65 = getelementptr inbounds i8, ptr %59, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !195
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %57, !llvm.loop !474

68:                                               ; preds = %57, %42
  %69 = phi ptr [ %43, %42 ], [ %64, %57 ]
  store i8 0, ptr %69, align 1, !tbaa !195
  %70 = ptrtoint ptr %69 to i64
  %71 = ptrtoint ptr %37 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  %74 = call ptr @ggc_alloc_string(ptr noundef nonnull %37, i32 noundef %73) #16
  call void @set_conv_libfunc(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef %74) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_intraclass_conv_libfunc(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !174 !PGOFuncName !475 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !184
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #17
  %10 = zext i32 %3 to i64
  %11 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !184
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #17
  %14 = add i64 %13, %9
  %15 = add i64 %14, %5
  %16 = add i64 %15, 4
  %17 = alloca i8, i64 %16, align 16
  store i8 95, ptr %17, align 16, !tbaa !195
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 95, ptr %18, align 1, !tbaa !195
  %19 = getelementptr inbounds i8, ptr %17, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %19, ptr align 1 %1, i64 %5, i1 false)
  %20 = add i64 %15, 8
  %21 = alloca i8, i64 %20, align 16
  store i8 95, ptr %21, align 16, !tbaa !195
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 95, ptr %22, align 1, !tbaa !195
  %23 = getelementptr inbounds i8, ptr %21, i64 2
  store i32 1600416098, ptr %23, align 2
  %24 = getelementptr inbounds i8, ptr %21, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %24, ptr align 1 %1, i64 %5, i1 false)
  %25 = getelementptr inbounds i8, ptr %21, i64 4
  %26 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %27 = load i8, ptr %26, align 1, !tbaa !195
  %28 = icmp eq i8 %27, 9
  br i1 %28, label %35, label %29

29:                                               ; preds = %4
  %30 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %6
  %31 = load i8, ptr %30, align 1, !tbaa !195
  %32 = icmp eq i8 %31, 9
  %33 = select i1 %32, ptr %21, ptr %17
  %34 = select i1 %32, ptr %25, ptr %17
  br label %35

35:                                               ; preds = %29, %4
  %36 = phi ptr [ %21, %4 ], [ %33, %29 ]
  %37 = phi ptr [ %25, %4 ], [ %34, %29 ]
  %38 = getelementptr inbounds i8, ptr %37, i64 %5
  %39 = getelementptr inbounds i8, ptr %38, i64 2
  %40 = load i8, ptr %12, align 1, !tbaa !195
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %46, %35
  %43 = phi ptr [ %39, %35 ], [ %53, %46 ]
  %44 = load i8, ptr %8, align 1, !tbaa !195
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %68, label %57

46:                                               ; preds = %35, %46
  %47 = phi i8 [ %55, %46 ], [ %40, %35 ]
  %48 = phi ptr [ %54, %46 ], [ %12, %35 ]
  %49 = phi ptr [ %53, %46 ], [ %39, %35 ]
  %50 = zext i8 %47 to i64
  %51 = getelementptr inbounds [256 x i8], ptr @_sch_tolower, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !195
  store i8 %52, ptr %49, align 1, !tbaa !195
  %53 = getelementptr inbounds i8, ptr %49, i64 1
  %54 = getelementptr inbounds i8, ptr %48, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !195
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %42, label %46, !llvm.loop !476

57:                                               ; preds = %42, %57
  %58 = phi i8 [ %66, %57 ], [ %44, %42 ]
  %59 = phi ptr [ %65, %57 ], [ %8, %42 ]
  %60 = phi ptr [ %64, %57 ], [ %43, %42 ]
  %61 = zext i8 %58 to i64
  %62 = getelementptr inbounds [256 x i8], ptr @_sch_tolower, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !195
  store i8 %63, ptr %60, align 1, !tbaa !195
  %64 = getelementptr inbounds i8, ptr %60, i64 1
  %65 = getelementptr inbounds i8, ptr %59, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !195
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %57, !llvm.loop !477

68:                                               ; preds = %57, %42
  %69 = phi ptr [ %43, %42 ], [ %64, %57 ]
  %70 = getelementptr inbounds i8, ptr %69, i64 1
  store i8 50, ptr %69, align 1, !tbaa !195
  store i8 0, ptr %70, align 1, !tbaa !195
  %71 = ptrtoint ptr %70 to i64
  %72 = ptrtoint ptr %36 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = call ptr @ggc_alloc_string(ptr noundef nonnull %36, i32 noundef %74) #16
  call void @set_conv_libfunc(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef %75) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_rtx_code(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !174 !PGOFuncName !478 {
  switch i32 %0, label %24 [
    i32 101, label %25
    i32 102, label %3
    i32 97, label %4
    i32 98, label %7
    i32 99, label %10
    i32 100, label %13
    i32 103, label %16
    i32 104, label %17
    i32 105, label %18
    i32 106, label %19
    i32 107, label %20
    i32 108, label %21
    i32 109, label %22
    i32 110, label %23
  ]

3:                                                ; preds = %2
  br label %25

4:                                                ; preds = %2
  %5 = icmp eq i8 %1, 0
  %6 = select i1 %5, i32 85, i32 89
  br label %25

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0
  %9 = select i1 %8, i32 84, i32 88
  br label %25

10:                                               ; preds = %2
  %11 = icmp eq i8 %1, 0
  %12 = select i1 %11, i32 83, i32 87
  br label %25

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0
  %15 = select i1 %14, i32 82, i32 86
  br label %25

16:                                               ; preds = %2
  br label %25

17:                                               ; preds = %2
  br label %25

18:                                               ; preds = %2
  br label %25

19:                                               ; preds = %2
  br label %25

20:                                               ; preds = %2
  br label %25

21:                                               ; preds = %2
  br label %25

22:                                               ; preds = %2
  br label %25

23:                                               ; preds = %2
  br label %25

24:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6847, ptr noundef nonnull @.str.1) #16
  br label %25

25:                                               ; preds = %2, %24, %23, %22, %21, %20, %19, %18, %17, %16, %13, %10, %7, %4, %3
  %26 = phi i32 [ undef, %24 ], [ 97, %23 ], [ 92, %22 ], [ 93, %21 ], [ 94, %20 ], [ 95, %19 ], [ 96, %18 ], [ 91, %17 ], [ 90, %16 ], [ %15, %13 ], [ %12, %10 ], [ %9, %7 ], [ %6, %4 ], [ 80, %3 ], [ 81, %2 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !174 !PGOFuncName !479 {
  %3 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef %1, i32 noundef 1, ptr noundef null) #16
  ret ptr %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { cold optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!173}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!35 = !{ptr @expand_simple_binop, ptr @fancy_abort, i64 1}
!36 = !{ptr @expand_simple_binop, ptr @expand_binop, i64 3186}
!37 = !{ptr @expand_binop, ptr @get_last_insn, i64 44340}
!38 = !{ptr @expand_binop, ptr @negate_rtx, i64 53}
!39 = !{ptr @expand_binop, ptr @expand_binop_directly, i64 22169}
!40 = !{ptr @expand_binop, ptr @avoid_expensive_constant, i64 7}
!41 = !{ptr @expand_binop, ptr @widen_operand, i64 24}
!42 = !{ptr @expand_binop, ptr @expand_binop, i64 20}
!43 = !{ptr @expand_binop, ptr @delete_insns_since, i64 12}
!44 = !{ptr @expand_binop, ptr @commutative_optab_p, i64 2}
!45 = !{ptr @expand_binop, ptr @swap_commutative_operands_with_target, i64 1}
!46 = !{ptr @expand_binop, ptr @operand_subword, i64 5}
!47 = !{ptr @expand_binop, ptr @operand_subword_force, i64 10}
!48 = !{ptr @expand_binop, ptr @emit_move_insn, i64 4}
!49 = !{ptr @expand_binop, ptr @gen_reg_rtx, i64 4}
!50 = !{ptr @expand_binop, ptr @emit_store_flag_force, i64 3}
!51 = !{ptr @expand_binop, ptr @optab_libfunc, i64 3}
!52 = !{ptr @expand_binop, ptr @start_sequence, i64 1}
!53 = !{ptr @expand_binop, ptr @shift_optab_p, i64 1}
!54 = !{ptr @expand_binop, ptr @emit_library_call_value, i64 1}
!55 = !{ptr @expand_binop, ptr @get_insns, i64 1}
!56 = !{ptr @expand_binop, ptr @end_sequence, i64 1}
!57 = !{ptr @expand_binop, ptr @gen_rtx_fmt_ee_stat, i64 1}
!58 = !{ptr @expand_binop, ptr @emit_libcall_block, i64 1}
!59 = !{ptr @expand_binop_directly, ptr @gen_reg_rtx, i64 18541}
!60 = !{ptr @expand_binop_directly, ptr @commutative_optab_p, i64 22170}
!61 = !{ptr @expand_binop_directly, ptr @avoid_expensive_constant, i64 37230}
!62 = !{ptr @expand_binop_directly, ptr @shift_optab_p, i64 22170}
!63 = !{ptr @expand_binop_directly, ptr @convert_modes, i64 28271}
!64 = !{ptr @expand_binop_directly, ptr @swap_commutative_operands_with_target, i64 15054}
!65 = !{ptr @expand_binop_directly, ptr @copy_to_mode_reg, i64 7043}
!66 = !{ptr @expand_binop_directly, ptr @add_equal_note, i64 1207}
!67 = !{ptr @expand_binop_directly, ptr @delete_insns_since, i64 2}
!68 = !{ptr @expand_binop_directly, ptr @expand_binop, i64 1}
!69 = !{ptr @expand_binop_directly, ptr @emit_insn, i64 22166}
!70 = !{ptr @avoid_expensive_constant, ptr @optimize_insn_for_speed_p, i64 37230}
!71 = !{ptr @avoid_expensive_constant, ptr @rtx_cost, i64 42326}
!72 = !{ptr @avoid_expensive_constant, ptr @force_reg, i64 1}
!73 = !{ptr @swap_commutative_operands_with_target, ptr @commutative_operand_precedence, i64 30108}
!74 = !{ptr @swap_commutative_operands_with_target, ptr @rtx_equal_p, i64 1}
!75 = !{ptr @expand_simple_unop, ptr @fancy_abort, i64 1}
!76 = !{ptr @expand_simple_unop, ptr @expand_unop, i64 272}
!77 = !{ptr @expand_unop, ptr @expand_unop_direct, i64 272}
!78 = !{ptr @expand_unop, ptr @get_last_insn, i64 3}
!79 = !{ptr @expand_unop, ptr @widen_operand, i64 3}
!80 = !{ptr @expand_unop, ptr @expand_unop, i64 4}
!81 = !{ptr @expand_unop, ptr @delete_insns_since, i64 3}
!82 = !{ptr @expand_unop, ptr @operand_subword, i64 1}
!83 = !{ptr @expand_unop, ptr @operand_subword_force, i64 1}
!84 = !{ptr @expand_unop, ptr @optab_libfunc, i64 1}
!85 = !{ptr @expand_unop_direct, ptr @get_last_insn, i64 271}
!86 = !{ptr @expand_unop_direct, ptr @gen_reg_rtx, i64 2}
!87 = !{ptr @expand_unop_direct, ptr @convert_to_mode, i64 1}
!88 = !{ptr @expand_unop_direct, ptr @copy_to_mode_reg, i64 1}
!89 = !{ptr @expand_unop_direct, ptr @add_equal_note, i64 1}
!90 = !{ptr @expand_unop_direct, ptr @emit_insn, i64 270}
!91 = !{ptr @expand_unop_direct, ptr @delete_insns_since, i64 1}
!92 = !{ptr @maybe_emit_unop_insn, ptr @get_last_insn, i64 1409}
!93 = !{ptr @maybe_emit_unop_insn, ptr @copy_to_mode_reg, i64 1}
!94 = !{ptr @maybe_emit_unop_insn, ptr @gen_reg_rtx, i64 1}
!95 = !{ptr @maybe_emit_unop_insn, ptr @delete_insns_since, i64 1}
!96 = !{ptr @maybe_emit_unop_insn, ptr @add_equal_note, i64 2}
!97 = !{ptr @maybe_emit_unop_insn, ptr @emit_insn, i64 1408}
!98 = !{ptr @maybe_emit_unop_insn, ptr @emit_move_insn, i64 1}
!99 = !{ptr @add_equal_note, ptr @fancy_abort, i64 2}
!100 = !{ptr @add_equal_note, ptr @single_set_2, i64 602}
!101 = !{ptr @add_equal_note, ptr @rtx_equal_p, i64 1204}
!102 = !{ptr @add_equal_note, ptr @reg_overlap_mentioned_p, i64 2404}
!103 = !{ptr @add_equal_note, ptr @reg_set_p, i64 31}
!104 = !{ptr @add_equal_note, ptr @copy_rtx, i64 2403}
!105 = !{ptr @add_equal_note, ptr @gen_rtx_fmt_e_stat, i64 1}
!106 = !{ptr @add_equal_note, ptr @gen_rtx_fmt_ee_stat, i64 1201}
!107 = !{ptr @add_equal_note, ptr @set_unique_reg_note, i64 1202}
!108 = !{ptr @emit_unop_insn, ptr @maybe_emit_unop_insn, i64 1409}
!109 = !{ptr @emit_unop_insn, ptr @fancy_abort, i64 1}
!110 = !{ptr @can_compare_p, ptr @gen_rtx_fmt_ee_stat, i64 388767}
!111 = !{ptr @prepare_operand, ptr @convert_modes, i64 1}
!112 = !{ptr @emit_cmp_and_jump_insns, ptr @swap_commutative_operands_p, i64 150023}
!113 = !{ptr @emit_cmp_and_jump_insns, ptr @swap_condition, i64 2}
!114 = !{ptr @emit_cmp_and_jump_insns, ptr @can_compare_p, i64 1}
!115 = !{ptr @emit_cmp_and_jump_insns, ptr @force_reg, i64 1}
!116 = !{ptr @emit_cmp_and_jump_insns, ptr @unsigned_condition, i64 112917}
!117 = !{ptr @emit_cmp_and_jump_insns, ptr @prepare_cmp_insn, i64 150023}
!118 = !{ptr @emit_cmp_and_jump_insns, ptr @emit_cmp_and_jump_insn_1, i64 150023}
!119 = !{ptr @prepare_cmp_insn, ptr @fancy_abort, i64 37967}
!120 = !{ptr @prepare_cmp_insn, ptr @optimize_insn_for_speed_p, i64 151866}
!121 = !{ptr @prepare_cmp_insn, ptr @rtx_cost, i64 151866}
!122 = !{ptr @prepare_cmp_insn, ptr @force_reg, i64 3}
!123 = !{ptr @prepare_cmp_insn, ptr @gen_rtx_CONST_INT, i64 1}
!124 = !{ptr @prepare_cmp_insn, ptr @may_trap_p, i64 2}
!125 = !{ptr @prepare_cmp_insn, ptr @can_compare_p, i64 1}
!126 = !{ptr @prepare_cmp_insn, ptr @gen_rtx_fmt_ee_stat, i64 151866}
!127 = !{ptr @prepare_cmp_insn, ptr @get_last_insn, i64 151869}
!128 = !{ptr @prepare_cmp_insn, ptr @prepare_operand, i64 303738}
!129 = !{ptr @prepare_cmp_insn, ptr @delete_insns_since, i64 4}
!130 = !{ptr @emit_cmp_and_jump_insn_1, ptr @fancy_abort, i64 2}
!131 = !{ptr @emit_cmp_and_jump_insn_1, ptr @emit_jump_insn, i64 150023}
!132 = !{ptr @emit_conditional_move, ptr @swap_commutative_operands_p, i64 3688}
!133 = !{ptr @emit_conditional_move, ptr @swap_condition, i64 1}
!134 = !{ptr @emit_conditional_move, ptr @reversed_comparison_code_parts, i64 1}
!135 = !{ptr @emit_conditional_move, ptr @gen_reg_rtx, i64 2}
!136 = !{ptr @emit_conditional_move, ptr @copy_to_mode_reg, i64 2}
!137 = !{ptr @emit_conditional_move, ptr @unsigned_condition, i64 1}
!138 = !{ptr @emit_conditional_move, ptr @simplify_gen_relational, i64 1843}
!139 = !{ptr @emit_conditional_move, ptr @do_pending_stack_adjust, i64 1842}
!140 = !{ptr @emit_conditional_move, ptr @start_sequence, i64 1842}
!141 = !{ptr @emit_conditional_move, ptr @prepare_cmp_insn, i64 1842}
!142 = !{ptr @emit_conditional_move, ptr @end_sequence, i64 1842}
!143 = !{ptr @emit_conditional_move, ptr @emit_insn, i64 3682}
!144 = !{ptr @emit_conditional_move, ptr @get_insns, i64 1841}
!145 = !{ptr @emit_conditional_move, ptr @convert_move, i64 1}
!146 = !{ptr @gen_move_insn, ptr @start_sequence, i64 115}
!147 = !{ptr @gen_move_insn, ptr @emit_move_insn_1, i64 115}
!148 = !{ptr @gen_move_insn, ptr @get_insns, i64 115}
!149 = !{ptr @gen_move_insn, ptr @end_sequence, i64 115}
!150 = !{ptr @build_libfunc_function, ptr @get_identifier, i64 16}
!151 = !{ptr @build_libfunc_function, ptr @build_function_type, i64 16}
!152 = !{ptr @build_libfunc_function, ptr @build_decl_stat, i64 16}
!153 = !{ptr @build_libfunc_function, ptr @decl_assembler_name, i64 16}
!154 = !{ptr @build_libfunc_function, ptr @fancy_abort, i64 2}
!155 = !{ptr @build_libfunc_function, ptr @make_decl_rtl, i64 16}
!156 = !{ptr @init_one_libfunc, ptr @htab_create_alloc, i64 2}
!157 = !{ptr @init_one_libfunc, ptr @get_identifier, i64 16}
!158 = !{ptr @init_one_libfunc, ptr @htab_hash_string, i64 16}
!159 = !{ptr @init_one_libfunc, ptr @htab_find_slot_with_hash, i64 16}
!160 = !{ptr @init_one_libfunc, ptr @build_libfunc_function, i64 15}
!161 = !{ptr @init_one_libfunc, ptr @make_decl_rtl, i64 1}
!162 = !{ptr @set_optab_libfunc, ptr @init_one_libfunc, i64 2}
!163 = !{ptr @set_optab_libfunc, ptr @htab_find_slot, i64 3}
!164 = !{ptr @set_optab_libfunc, ptr @ggc_alloc_stat, i64 2}
!165 = !{ptr @init_optabs, ptr @htab_create_alloc, i64 1}
!166 = !{ptr @init_optabs, ptr @init_insn_codes, i64 1}
!167 = !{ptr @init_optabs, ptr @init_optab, i64 148}
!168 = !{ptr @init_optabs, ptr @init_optabv, i64 6}
!169 = !{ptr @init_optabs, ptr @init_convert_optab, i64 17}
!170 = !{ptr @init_optabs, ptr @init_all_optabs, i64 1}
!171 = !{ptr @init_optabs, ptr @set_optab_libfunc, i64 3}
!172 = !{ptr @init_optabs, ptr @init_one_libfunc, i64 13}
!173 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!174 = !{!"function_entry_count", i64 0}
!175 = !{!176, !177, i64 0}
!176 = !{!"libfunc_entry", !177, i64 0, !180, i64 8, !180, i64 12, !181, i64 16}
!177 = !{!"long", !178, i64 0}
!178 = !{!"omnipotent char", !179, i64 0}
!179 = !{!"Simple C/C++ TBAA"}
!180 = !{!"int", !178, i64 0}
!181 = !{!"any pointer", !178, i64 0}
!182 = !{!176, !180, i64 8}
!183 = !{!176, !180, i64 12}
!184 = !{!181, !181, i64 0}
!185 = !{!186, !181, i64 16}
!186 = !{!"convert_optab_d", !180, i64 0, !181, i64 8, !181, i64 16, !178, i64 24}
!187 = !{!186, !181, i64 8}
!188 = !{!176, !181, i64 16}
!189 = !{!190, !181, i64 24}
!190 = !{!"optab_d", !180, i64 0, !181, i64 8, !178, i64 16, !181, i64 24, !178, i64 32}
!191 = !{!190, !181, i64 8}
!192 = !{!190, !178, i64 16}
!193 = !{!"function_entry_count", i64 11874}
!194 = !{!"branch_weights", i32 3384, i32 8177, i32 304, i32 1, i32 13, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!195 = !{!178, !178, i64 0}
!196 = !{!"branch_weights", i32 -1871552286, i32 715716}
!197 = !{!"branch_weights", i32 1, i32 1, i32 3378, i32 7, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!198 = !{!"branch_weights", i32 3378, i32 1}
!199 = !{!"branch_weights", i32 7, i32 1}
!200 = !{!201, !180, i64 0}
!201 = !{!"separate_ops", !180, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !180, i64 40}
!202 = !{!201, !181, i64 16}
!203 = !{!204, !180, i64 0}
!204 = !{!"optab_handlers", !180, i64 0}
!205 = !{!206, !181, i64 24}
!206 = !{!"insn_data", !181, i64 0, !178, i64 8, !181, i64 16, !181, i64 24, !178, i64 32, !178, i64 33, !178, i64 34, !178, i64 35}
!207 = !{!201, !181, i64 24}
!208 = !{!201, !181, i64 32}
!209 = !{!210, !181, i64 0}
!210 = !{!"insn_operand_data", !181, i64 0, !181, i64 8, !180, i64 16, !178, i64 18, !178, i64 19}
!211 = !{!206, !181, i64 16}
!212 = !{!"optabs.c:simplify_expand_binop"}
!213 = !{!180, !180, i64 0}
!214 = !{!190, !180, i64 0}
!215 = !{!201, !181, i64 8}
!216 = !{!"optabs.c:expand_normal"}
!217 = !{!"function_entry_count", i64 3186}
!218 = !{!"branch_weights", i32 1, i32 3187}
!219 = !{!"function_entry_count", i64 22170}
!220 = !{!"branch_weights", i32 263657533, i32 227940051}
!221 = !{!"branch_weights", i32 60, i32 22112}
!222 = !{!"branch_weights", i32 54, i32 7}
!223 = !{!"branch_weights", i32 1, i32 22171}
!224 = !{!225, !181, i64 1144}
!225 = !{!"gcc_target", !226, i64 0, !228, i64 368, !229, i64 664, !180, i64 744, !181, i64 752, !181, i64 760, !181, i64 768, !181, i64 776, !181, i64 784, !181, i64 792, !181, i64 800, !181, i64 808, !181, i64 816, !181, i64 824, !181, i64 832, !181, i64 840, !181, i64 848, !181, i64 856, !181, i64 864, !181, i64 872, !181, i64 880, !181, i64 888, !181, i64 896, !181, i64 904, !181, i64 912, !181, i64 920, !181, i64 928, !181, i64 936, !181, i64 944, !181, i64 952, !181, i64 960, !181, i64 968, !181, i64 976, !181, i64 984, !181, i64 992, !181, i64 1000, !181, i64 1008, !181, i64 1016, !181, i64 1024, !181, i64 1032, !181, i64 1040, !181, i64 1048, !181, i64 1056, !177, i64 1064, !177, i64 1072, !181, i64 1080, !181, i64 1088, !181, i64 1096, !181, i64 1104, !181, i64 1112, !181, i64 1120, !181, i64 1128, !181, i64 1136, !181, i64 1144, !181, i64 1152, !181, i64 1160, !181, i64 1168, !230, i64 1176, !181, i64 1232, !181, i64 1240, !181, i64 1248, !181, i64 1256, !181, i64 1264, !181, i64 1272, !181, i64 1280, !181, i64 1288, !181, i64 1296, !181, i64 1304, !181, i64 1312, !181, i64 1320, !181, i64 1328, !181, i64 1336, !181, i64 1344, !181, i64 1352, !181, i64 1360, !181, i64 1368, !181, i64 1376, !181, i64 1384, !181, i64 1392, !181, i64 1400, !181, i64 1408, !181, i64 1416, !181, i64 1424, !181, i64 1432, !181, i64 1440, !181, i64 1448, !181, i64 1456, !177, i64 1464, !231, i64 1472, !181, i64 1664, !181, i64 1672, !181, i64 1680, !181, i64 1688, !181, i64 1696, !181, i64 1704, !181, i64 1712, !181, i64 1720, !181, i64 1728, !181, i64 1736, !181, i64 1744, !181, i64 1752, !181, i64 1760, !181, i64 1768, !181, i64 1776, !232, i64 1784, !233, i64 1792, !234, i64 1896, !235, i64 1968, !181, i64 2016, !178, i64 2024, !178, i64 2025, !178, i64 2026, !178, i64 2027, !178, i64 2028, !178, i64 2029, !178, i64 2030, !178, i64 2031, !178, i64 2032, !178, i64 2033, !178, i64 2034, !178, i64 2035}
!226 = !{!"asm_out", !181, i64 0, !181, i64 8, !181, i64 16, !227, i64 24, !227, i64 56, !181, i64 88, !181, i64 96, !181, i64 104, !181, i64 112, !181, i64 120, !181, i64 128, !181, i64 136, !181, i64 144, !181, i64 152, !181, i64 160, !181, i64 168, !181, i64 176, !181, i64 184, !181, i64 192, !181, i64 200, !181, i64 208, !181, i64 216, !181, i64 224, !181, i64 232, !181, i64 240, !181, i64 248, !181, i64 256, !181, i64 264, !181, i64 272, !181, i64 280, !181, i64 288, !181, i64 296, !181, i64 304, !181, i64 312, !181, i64 320, !181, i64 328, !181, i64 336, !181, i64 344, !181, i64 352, !181, i64 360}
!227 = !{!"asm_int_op", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24}
!228 = !{!"sched", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !181, i64 40, !181, i64 48, !181, i64 56, !181, i64 64, !181, i64 72, !181, i64 80, !181, i64 88, !181, i64 96, !181, i64 104, !181, i64 112, !181, i64 120, !181, i64 128, !181, i64 136, !181, i64 144, !181, i64 152, !181, i64 160, !181, i64 168, !181, i64 176, !181, i64 184, !181, i64 192, !181, i64 200, !181, i64 208, !181, i64 216, !181, i64 224, !181, i64 232, !181, i64 240, !181, i64 248, !181, i64 256, !181, i64 264, !181, i64 272, !181, i64 280, !181, i64 288}
!229 = !{!"vectorize", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !181, i64 40, !181, i64 48, !181, i64 56, !181, i64 64, !181, i64 72}
!230 = !{!"addr_space", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !181, i64 40, !181, i64 48}
!231 = !{!"calls", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !181, i64 40, !181, i64 48, !181, i64 56, !181, i64 64, !181, i64 72, !181, i64 80, !181, i64 88, !181, i64 96, !181, i64 104, !181, i64 112, !181, i64 120, !181, i64 128, !181, i64 136, !181, i64 144, !181, i64 152, !181, i64 160, !181, i64 168, !181, i64 176, !181, i64 184}
!232 = !{!"c", !181, i64 0}
!233 = !{!"cxx", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !181, i64 40, !181, i64 48, !181, i64 56, !181, i64 64, !181, i64 72, !181, i64 80, !181, i64 88, !181, i64 96}
!234 = !{!"emutls", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !181, i64 40, !181, i64 48, !181, i64 56, !178, i64 64, !178, i64 65}
!235 = !{!"target_option_hooks", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !181, i64 40}
!236 = !{!237, !181, i64 0}
!237 = !{!"rtl_hooks", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32}
!238 = distinct !{!238, !239}
!239 = !{!"llvm.loop.mustprogress"}
!240 = !{i8 0, i8 2}
!241 = distinct !{!241, !239}
!242 = distinct !{!242, !239}
!243 = !{!225, !181, i64 792}
!244 = distinct !{!244, !239}
!245 = !{!"optabs.c:expand_binop_directly"}
!246 = !{!"branch_weights", i32 18542, i32 3630}
!247 = !{!"branch_weights", i32 15061, i32 7111}
!248 = !{!"branch_weights", i32 49617936, i32 106583804}
!249 = !{!"branch_weights", i32 7044, i32 1}
!250 = !{!"branch_weights", i32 450797824, i32 19980252}
!251 = !{!"branch_weights", i32 14189, i32 7044}
!252 = !{!"branch_weights", i32 7117, i32 15055}
!253 = !{!"branch_weights", i32 15055, i32 1}
!254 = !{!"branch_weights", i32 549439, i32 -1858859019}
!255 = !{!"branch_weights", i32 177375, i32 1}
!256 = !{!"branch_weights", i32 20965, i32 1207}
!257 = !{i32 0, i32 2}
!258 = !{!"branch_weights", i32 1, i32 1207}
!259 = !{!"function_entry_count", i64 37230}
!260 = !{!"optabs.c:avoid_expensive_constant"}
!261 = !{!"branch_weights", i32 1386147361, i32 74463}
!262 = !{!"branch_weights", i32 21165, i32 16067}
!263 = !{!"branch_weights", i32 1, i32 21165}
!264 = !{!"optabs.c:widen_operand"}
!265 = !{!"optabs.c:commutative_optab_p"}
!266 = !{!"branch_weights", i32 -1705494753, i32 1223370359}
!267 = !{!"function_entry_count", i64 15054}
!268 = !{!"optabs.c:swap_commutative_operands_with_target"}
!269 = !{!"branch_weights", i32 1, i32 15055}
!270 = !{!"branch_weights", i32 14122, i32 934}
!271 = !{!"branch_weights", i32 616, i32 319}
!272 = !{!"branch_weights", i32 319, i32 1}
!273 = !{!"branch_weights", i32 934, i32 1}
!274 = !{!"optabs.c:expand_doubleword_shift"}
!275 = !{!276, !180, i64 4}
!276 = !{!"rtl_data", !277, i64 0, !278, i64 40, !279, i64 96, !280, i64 112, !282, i64 208, !283, i64 248, !180, i64 312, !181, i64 320, !181, i64 328, !181, i64 336, !181, i64 344, !181, i64 352, !181, i64 360, !181, i64 368, !181, i64 376, !181, i64 384, !181, i64 392, !177, i64 400, !181, i64 408, !181, i64 416, !181, i64 424, !180, i64 432, !180, i64 436, !180, i64 440, !180, i64 444, !180, i64 448, !180, i64 452, !181, i64 456, !178, i64 464, !178, i64 465, !178, i64 466, !178, i64 467, !178, i64 468, !178, i64 469, !178, i64 470, !178, i64 471, !178, i64 472, !178, i64 473, !178, i64 474, !178, i64 475, !178, i64 476, !178, i64 477, !178, i64 478, !178, i64 479, !178, i64 480, !178, i64 481, !178, i64 482, !178, i64 483, !178, i64 484, !178, i64 485}
!277 = !{!"expr_status", !180, i64 0, !180, i64 4, !180, i64 8, !181, i64 16, !181, i64 24, !181, i64 32}
!278 = !{!"emit_status", !180, i64 0, !180, i64 4, !181, i64 8, !181, i64 16, !181, i64 24, !180, i64 32, !180, i64 36, !180, i64 40, !180, i64 44, !181, i64 48}
!279 = !{!"varasm_status", !181, i64 0, !180, i64 8}
!280 = !{!"incoming_args", !180, i64 0, !180, i64 4, !180, i64 8, !181, i64 16, !281, i64 24, !181, i64 88}
!281 = !{!"ix86_args", !180, i64 0, !180, i64 4, !180, i64 8, !180, i64 12, !180, i64 16, !180, i64 20, !180, i64 24, !180, i64 28, !180, i64 32, !180, i64 36, !180, i64 40, !180, i64 44, !180, i64 48, !180, i64 52, !180, i64 56, !180, i64 60}
!282 = !{!"function_subsections", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32}
!283 = !{!"rtl_eh", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !181, i64 32, !181, i64 40, !178, i64 48}
!284 = !{!"optabs.c:expand_doubleword_mult"}
!285 = !{!"optabs.c:shift_optab_p"}
!286 = !{!"branch_weights", i32 15061, i32 68, i32 1, i32 1, i32 7044, i32 1, i32 1, i32 1}
!287 = distinct !{!287, !239}
!288 = distinct !{!288, !239}
!289 = !{!290, !181, i64 0}
!290 = !{!"no_conflict_data", !181, i64 0, !181, i64 8, !181, i64 16, !178, i64 24}
!291 = !{!290, !181, i64 8}
!292 = !{!290, !181, i64 16}
!293 = !{!290, !178, i64 24}
!294 = distinct !{!294, !239}
!295 = !{i64 0, i64 4, !213, i64 8, i64 8, !184, i64 16, i64 1, !195, i64 24, i64 8, !184, i64 32, i64 348, !195}
!296 = distinct !{!296, !239}
!297 = distinct !{!297, !239}
!298 = !{!"function_entry_count", i64 272}
!299 = !{!"branch_weights", i32 1, i32 273}
!300 = distinct !{!300, !239}
!301 = distinct !{!301, !239}
!302 = !{!303, !178, i64 49}
!303 = !{!"real_format", !181, i64 0, !181, i64 8, !180, i64 16, !180, i64 20, !180, i64 24, !180, i64 28, !180, i64 32, !180, i64 36, !180, i64 40, !178, i64 44, !178, i64 45, !178, i64 46, !178, i64 47, !178, i64 48, !178, i64 49, !178, i64 50, !178, i64 51}
!304 = distinct !{!304, !239}
!305 = !{!"optabs.c:expand_unop_direct"}
!306 = !{!"branch_weights", i32 74803, i32 273}
!307 = !{!"branch_weights", i32 2191, i32 1}
!308 = !{!"branch_weights", i32 273, i32 1}
!309 = !{!"optabs.c:widen_clz"}
!310 = distinct !{!310, !239}
!311 = !{!"optabs.c:expand_doubleword_clz"}
!312 = !{!"optabs.c:widen_bswap"}
!313 = distinct !{!313, !239}
!314 = !{!"optabs.c:expand_doubleword_bswap"}
!315 = !{!"optabs.c:expand_absneg_bit"}
!316 = !{!303, !180, i64 40}
!317 = distinct !{!317, !239}
!318 = !{!"optabs.c:expand_parity"}
!319 = distinct !{!319, !239}
!320 = !{!"optabs.c:expand_ffs"}
!321 = !{!"optabs.c:expand_ctz"}
!322 = !{!"optabs.c:rhs_regno"}
!323 = !{!303, !180, i64 36}
!324 = !{!"optabs.c:expand_copysign_absneg"}
!325 = !{!"optabs.c:expand_copysign_bit"}
!326 = distinct !{!326, !239}
!327 = !{!"function_entry_count", i64 1409}
!328 = !{!"branch_weights", i32 1, i32 1410}
!329 = !{!"branch_weights", i32 10961735, i32 -435063380}
!330 = !{!"branch_weights", i32 1410, i32 1}
!331 = !{!"function_entry_count", i64 1206}
!332 = !{!"optabs.c:add_equal_note"}
!333 = !{!"branch_weights", i32 9663, i32 1}
!334 = !{!"branch_weights", i32 19327, i32 1}
!335 = !{!"branch_weights", i32 1207, i32 1207}
!336 = distinct !{!336, !239}
!337 = !{!"branch_weights", i32 3111328, i32 2144372320}
!338 = !{!"branch_weights", i32 1207, i32 1}
!339 = distinct !{!339, !239}
!340 = !{!"optabs.c:no_conflict_move_test"}
!341 = !{!"function_entry_count", i64 388767}
!342 = !{!"branch_weights", i32 1, i32 1555072, i32 2, i32 1}
!343 = !{!"branch_weights", i32 1, i32 388768}
!344 = distinct !{!344, !239}
!345 = !{!"function_entry_count", i64 344192}
!346 = !{!"branch_weights", i32 344193, i32 1}
!347 = !{!"branch_weights", i32 1, i32 344193}
!348 = !{!"function_entry_count", i64 150023}
!349 = !{!"branch_weights", i32 150024, i32 1}
!350 = !{!"branch_weights", i32 1, i32 150024}
!351 = !{!"branch_weights", i32 37106, i32 112919}
!352 = !{!"function_entry_count", i64 151867}
!353 = !{!"optabs.c:prepare_cmp_insn"}
!354 = !{!"branch_weights", i32 1, i32 151868}
!355 = !{!"branch_weights", i32 -1411981118, i32 37967}
!356 = !{!357, !180, i64 28}
!357 = !{!"mem_attrs", !181, i64 0, !181, i64 8, !181, i64 16, !180, i64 24, !180, i64 28, !178, i64 32}
!358 = distinct !{!358, !239}
!359 = !{!"branch_weights", i32 151868, i32 1}
!360 = distinct !{!360, !239}
!361 = !{!225, !181, i64 784}
!362 = !{!"optabs.c:emit_cmp_and_jump_insn_1"}
!363 = !{!"function_entry_count", i64 1844}
!364 = !{!"branch_weights", i32 1845, i32 1}
!365 = !{!"branch_weights", i32 3398490, i32 7384, i32 1842}
!366 = !{!"branch_weights", i32 1, i32 4}
!367 = !{!"branch_weights", i32 1, i32 1845}
!368 = !{!"branch_weights", i32 0, i32 -2147483648}
!369 = !{!"function_entry_count", i64 115}
!370 = !{!"function_entry_count", i64 1415}
!371 = distinct !{!371, !239}
!372 = distinct !{!372, !239}
!373 = distinct !{!373, !239}
!374 = !{!"optabs.c:can_float_p"}
!375 = distinct !{!375, !239}
!376 = distinct !{!376, !239}
!377 = distinct !{!377, !239}
!378 = !{!"optabs.c:can_fix_p"}
!379 = !{!186, !180, i64 0}
!380 = distinct !{!380, !239}
!381 = distinct !{!381, !239}
!382 = !{!"function_entry_count", i64 588052}
!383 = !{!"branch_weights", i32 315890, i32 272164}
!384 = !{!"function_entry_count", i64 16}
!385 = !{!"branch_weights", i32 1, i32 17}
!386 = !{!"branch_weights", i32 17, i32 1}
!387 = !{!"branch_weights", i32 -2147483648, i32 0}
!388 = !{!"branch_weights", i32 2, i32 16}
!389 = !{!"optabs.c:libfunc_decl_hash"}
!390 = !{!"function_entry_count", i64 2}
!391 = !{!"optabs.c:libfunc_decl_eq"}
!392 = !{!"function_entry_count", i64 3}
!393 = !{!"branch_weights", i32 4, i32 1}
!394 = !{!"function_entry_count", i64 1}
!395 = !{!"branch_weights", i32 2, i32 20}
!396 = distinct !{!396, !239, !397, !398}
!397 = !{!"llvm.loop.isvectorized", i32 1}
!398 = !{!"llvm.loop.unroll.runtime.disable"}
!399 = !{!"branch_weights", i32 2, i32 86}
!400 = distinct !{!400, !239}
!401 = distinct !{!401, !239}
!402 = !{!"branch_weights", i32 1, i32 2}
!403 = !{!225, !181, i64 960}
!404 = !{!"optabs.c:hash_libfunc"}
!405 = !{!"optabs.c:eq_libfunc"}
!406 = !{!"optabs.c:init_insn_codes"}
!407 = !{!"branch_weights", i32 160, i32 3200}
!408 = distinct !{!408, !239, !397, !398}
!409 = !{!"branch_weights", i32 2, i32 158}
!410 = distinct !{!410, !239}
!411 = !{!"branch_weights", i32 1480, i32 29600}
!412 = distinct !{!412, !239, !397, !398}
!413 = !{!"branch_weights", i32 18, i32 1462}
!414 = distinct !{!414, !239}
!415 = distinct !{!415, !239}
!416 = !{!"function_entry_count", i64 148}
!417 = !{!"optabs.c:init_optab"}
!418 = !{!"function_entry_count", i64 6}
!419 = !{!"optabs.c:init_optabv"}
!420 = !{!"function_entry_count", i64 17}
!421 = !{!"optabs.c:init_convert_optab"}
!422 = !{!"optabs.c:gen_int_fp_fixed_libfunc"}
!423 = !{!"optabs.c:gen_intv_fp_libfunc"}
!424 = !{!"optabs.c:gen_signed_fixed_libfunc"}
!425 = !{!"optabs.c:gen_unsigned_fixed_libfunc"}
!426 = !{!"optabs.c:gen_int_fp_signed_fixed_libfunc"}
!427 = !{!"optabs.c:gen_int_libfunc"}
!428 = !{!"optabs.c:gen_int_unsigned_fixed_libfunc"}
!429 = !{!"optabs.c:gen_fp_libfunc"}
!430 = !{!"optabs.c:gen_int_fixed_libfunc"}
!431 = !{!"optabs.c:gen_int_signed_fixed_libfunc"}
!432 = !{!"optabs.c:gen_int_fp_libfunc"}
!433 = !{!"optabs.c:gen_int_to_fp_conv_libfunc"}
!434 = !{!"optabs.c:gen_ufloat_conv_libfunc"}
!435 = !{!"optabs.c:gen_fp_to_int_conv_libfunc"}
!436 = !{!"optabs.c:gen_int_to_fp_nondecimal_conv_libfunc"}
!437 = !{!"optabs.c:gen_extend_conv_libfunc"}
!438 = !{!439, !439, i64 0}
!439 = !{!"short", !178, i64 0}
!440 = !{!"optabs.c:gen_trunc_conv_libfunc"}
!441 = !{!"optabs.c:gen_fract_conv_libfunc"}
!442 = !{!"optabs.c:gen_satfract_conv_libfunc"}
!443 = !{!"optabs.c:gen_fractuns_conv_libfunc"}
!444 = !{!"optabs.c:gen_satfractuns_conv_libfunc"}
!445 = distinct !{!445, !239}
!446 = distinct !{!446, !239}
!447 = distinct !{!447, !239}
!448 = distinct !{!448, !239}
!449 = distinct !{!449, !239}
!450 = !{!"optabs.c:get_vcond_icode"}
!451 = !{!"optabs.c:vector_compare_rtx"}
!452 = !{!"optabs.c:expand_val_compare_and_swap_1"}
!453 = distinct !{!453, !239}
!454 = !{!"optabs.c:find_cc_set"}
!455 = !{!"optabs.c:expand_compare_and_swap_loop"}
!456 = !{!457, !181, i64 24}
!457 = !{!"htab", !181, i64 0, !181, i64 8, !181, i64 16, !181, i64 24, !177, i64 32, !177, i64 40, !177, i64 48, !180, i64 56, !180, i64 60, !181, i64 64, !181, i64 72, !181, i64 80, !181, i64 88, !181, i64 96, !180, i64 104}
!458 = !{!457, !177, i64 32}
!459 = distinct !{!459, !239}
!460 = distinct !{!460, !239}
!461 = distinct !{!461, !239}
!462 = !{!"optabs.c:expand_superword_shift"}
!463 = !{!"optabs.c:expand_subword_shift"}
!464 = !{!"optabs.c:expand_doubleword_shift_condmove"}
!465 = !{!"optabs.c:lowpart_subreg_maybe_copy"}
!466 = !{!"optabs.c:prepare_float_lib_cmp"}
!467 = distinct !{!467, !239}
!468 = !{!"optabs.c:gen_fixed_libfunc"}
!469 = !{!"optabs.c:gen_libfunc"}
!470 = distinct !{!470, !239}
!471 = distinct !{!471, !239}
!472 = !{!"optabs.c:gen_interclass_conv_libfunc"}
!473 = distinct !{!473, !239}
!474 = distinct !{!474, !239}
!475 = !{!"optabs.c:gen_intraclass_conv_libfunc"}
!476 = distinct !{!476, !239}
!477 = distinct !{!477, !239}
!478 = !{!"optabs.c:get_rtx_code"}
!479 = !{!"optabs.c:expand_expr"}
