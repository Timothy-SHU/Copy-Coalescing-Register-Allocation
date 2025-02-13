; ModuleID = 'expr.c'
source_filename = "expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.insn_data = type { ptr, %union.anon, ptr, ptr, i8, i8, i8, i8 }
%union.anon = type { ptr }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.rtl_hooks = type { ptr, ptr, ptr, ptr, ptr }
%struct.convert_optab_d = type { i32, ptr, ptr, [87 x [87 x %struct.optab_handlers]] }
%struct.optab_handlers = type { i32 }
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
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.ssaexpand = type { ptr, ptr, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.processor_costs = type { i32, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, [3 x i32], [3 x i32], i32, [2 x i32], [2 x i32], i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.stringop_algs], [2 x %struct.stringop_algs], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stringop_algs = type { i32, [4 x %struct.stringop_strategy] }
%struct.stringop_strategy = type { i32, i32 }
%struct.move_by_pieces_d = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, i64, i64, i32 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.store_by_pieces_d = type { ptr, ptr, i32, i32, i64, i64, ptr, ptr, i32 }
%struct.tree_complex = type { %struct.tree_common, ptr, ptr }
%struct.real_value = type { i32, [3 x i64] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_vector = type { %struct.tree_common, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.separate_ops = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.mem_address = type { ptr, ptr, ptr, ptr, ptr }
%struct.tree_stmt_iterator = type { ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon.0, ptr }
%union.anon.0 = type { ptr }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_fixed_cst = type { %struct.tree_common, ptr }
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, ptr, i32 }
%struct._var_map = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }

@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@direct_store = internal unnamed_addr global [87 x i8] zeroinitializer, align 16
@direct_load = internal unnamed_addr global [87 x i8] zeroinitializer, align 16
@class_narrowest_mode = external local_unnamed_addr constant [18 x i8], align 16
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@float_extend_from_mem = internal unnamed_addr global [87 x [87 x i8]] zeroinitializer, align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str = private unnamed_addr constant [7 x i8] c"expr.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@rtl_hooks = external local_unnamed_addr global %struct.rtl_hooks, align 8
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@mode_precision = external local_unnamed_addr constant [87 x i16], align 16
@convert_optab_table = external global [17 x %struct.convert_optab_d], align 16
@optimize = external local_unnamed_addr global i32, align 4
@word_mode = external local_unnamed_addr global i32, align 4
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@ix86_cost = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@optab_table = external global [159 x %struct.optab_d], align 16
@ptr_mode = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@block_move_fn = internal global ptr null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"memcpy\00", align 1
@const_tiny_rtx = external local_unnamed_addr global [3 x [87 x ptr]], align 16
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@block_clear_fn = dso_local local_unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"memset\00", align 1
@setmem_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@reload_completed = external local_unnamed_addr global i32, align 4
@reload_in_progress = external local_unnamed_addr global i32, align 4
@target_flags = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@libfunc_table = external local_unnamed_addr global [14 x ptr], align 16
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@pic_offset_table_rtx = external local_unnamed_addr global ptr, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@input_location = external local_unnamed_addr global i32, align 4
@mode_2xwider = external local_unnamed_addr constant [87 x i8], align 16
@flag_trapv = external local_unnamed_addr global i32, align 4
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@currently_expanding_to_rtl = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"%Kinvalid use of %<__builtin_va_arg_pack ()%>\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"%Kcall to %qs declared with attribute error: %s\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"%Kcall to %qs declared with attribute warning: %s\00", align 1
@gt_ggc_r_gt_expr_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @block_move_fn, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16
@cse_not_expected = dso_local local_unnamed_addr global i32 0, align 4
@movmem_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@cmpstr_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@cmpstrn_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@cmpmem_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_add_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_sub_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_ior_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_and_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_xor_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_nand_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_old_add_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_old_sub_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_old_ior_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_old_and_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_old_xor_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_old_nand_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_new_add_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_new_sub_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_new_ior_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_new_and_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_new_xor_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_new_nand_optab = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_compare_and_swap = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_lock_test_and_set = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@sync_lock_release = dso_local local_unnamed_addr global [87 x i32] zeroinitializer, align 16
@volatile_ok = external local_unnamed_addr global i32, align 4
@emit_block_move_libcall_fn.emitted_extern = internal unnamed_addr global i1 false, align 1
@clear_storage_libcall_fn.emitted_extern = internal unnamed_addr global i1 false, align 1
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@flag_optimize_sibling_calls = external local_unnamed_addr global i32, align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@flag_evaluation_order = external local_unnamed_addr global i32, align 4
@SA = external local_unnamed_addr global %struct.ssaexpand, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"./ssaexpand.h\00", align 1
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@flag_pic = external local_unnamed_addr global i32, align 4
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_expr_target() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #16
  %2 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !5
  %3 = tail call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %2) #17
  %4 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !5
  %5 = tail call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %4) #17
  %6 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef -1) #17
  %7 = tail call ptr @rtx_alloc_stat(i32 noundef 8) #17
  %8 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef null, ptr noundef null) #17
  %9 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  store ptr %8, ptr %9, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %12 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %13

13:                                               ; preds = %0, %61
  %14 = phi i64 [ 0, %0 ], [ %62, %61 ]
  %15 = getelementptr inbounds [87 x i8], ptr @direct_store, i64 0, i64 %14
  store i8 0, ptr %15, align 1, !tbaa !9
  %16 = getelementptr inbounds [87 x i8], ptr @direct_load, i64 0, i64 %14
  store i8 0, ptr %16, align 1, !tbaa !9
  %17 = load i32, ptr %3, align 8
  %18 = and i32 %17, -16711681
  %19 = trunc i64 %14 to i32
  %20 = shl i32 %19, 16
  %21 = or disjoint i32 %18, %20
  store i32 %21, ptr %3, align 8
  %22 = load i32, ptr %5, align 8
  %23 = and i32 %22, -16711681
  %24 = or disjoint i32 %23, %20
  store i32 %24, ptr %5, align 8
  %25 = load i32, ptr %6, align 8
  %26 = and i32 %25, -16711681
  %27 = or disjoint i32 %26, %20
  store i32 %27, ptr %6, align 8
  %28 = icmp ugt i64 %14, 1
  br i1 %28, label %29, label %61

29:                                               ; preds = %13
  %30 = trunc i64 %14 to i32
  br label %31

31:                                               ; preds = %29, %58
  %32 = phi i32 [ %59, %58 ], [ 0, %29 ]
  %33 = load i8, ptr %16, align 1, !tbaa !9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i8, ptr %15, align 1, !tbaa !9
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %31, %35
  %39 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %32, i32 noundef %30) #17
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %38
  %42 = call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #18
  call void @df_ref_change_reg_with_loc(i32 noundef %42, i32 noundef %32, ptr noundef nonnull %6) #17
  store i32 %32, ptr %10, align 8, !tbaa !9
  store ptr %3, ptr %12, align 8, !tbaa !9
  store ptr %6, ptr %11, align 8, !tbaa !9
  %43 = call i32 @recog(ptr noundef %8, ptr noundef %7, ptr noundef nonnull %1) #17
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i8 1, ptr %16, align 1, !tbaa !9
  br label %46

46:                                               ; preds = %45, %41
  store ptr %5, ptr %12, align 8, !tbaa !9
  store ptr %6, ptr %11, align 8, !tbaa !9
  %47 = call i32 @recog(ptr noundef nonnull %8, ptr noundef %7, ptr noundef nonnull %1) #17
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i8 1, ptr %16, align 1, !tbaa !9
  br label %50

50:                                               ; preds = %49, %46
  store ptr %6, ptr %12, align 8, !tbaa !9
  store ptr %3, ptr %11, align 8, !tbaa !9
  %51 = call i32 @recog(ptr noundef nonnull %8, ptr noundef %7, ptr noundef nonnull %1) #17
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i8 1, ptr %15, align 1, !tbaa !9
  br label %54

54:                                               ; preds = %53, %50
  store ptr %6, ptr %12, align 8, !tbaa !9
  store ptr %5, ptr %11, align 8, !tbaa !9
  %55 = call i32 @recog(ptr noundef nonnull %8, ptr noundef %7, ptr noundef nonnull %1) #17
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i8 1, ptr %15, align 1, !tbaa !9
  br label %58

58:                                               ; preds = %54, %57, %38
  %59 = add nuw nsw i32 %32, 1
  %60 = icmp eq i32 %59, 53
  br i1 %60, label %61, label %31, !llvm.loop !10

61:                                               ; preds = %35, %58, %13
  %62 = add nuw nsw i64 %14, 1
  %63 = icmp eq i64 %62, 87
  br i1 %63, label %64, label %13, !llvm.loop !12

64:                                               ; preds = %61
  %65 = call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef 16, i32 noundef 10000) #17
  %66 = call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %65) #17
  %67 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 8), align 8, !tbaa !9
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %103, label %69

69:                                               ; preds = %64, %99
  %70 = phi i8 [ %101, %99 ], [ %67, %64 ]
  %71 = zext i8 %70 to i32
  %72 = icmp eq i8 %67, %70
  %73 = zext i8 %70 to i64
  br i1 %72, label %99, label %74

74:                                               ; preds = %69, %94
  %75 = phi i8 [ %97, %94 ], [ %67, %69 ]
  %76 = zext i8 %75 to i32
  %77 = call i32 @can_extend_p(i32 noundef %71, i32 noundef %76, i32 noundef 0) #17
  %78 = icmp eq i32 %77, 2956
  br i1 %78, label %94, label %79

79:                                               ; preds = %74
  %80 = load i32, ptr %66, align 8
  %81 = shl nuw nsw i32 %76, 16
  %82 = and i32 %80, -16711681
  %83 = or disjoint i32 %82, %81
  store i32 %83, ptr %66, align 8
  %84 = zext i32 %77 to i64
  %85 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %84, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !13
  %87 = getelementptr inbounds %struct.insn_operand_data, ptr %86, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !15
  %89 = call i32 %88(ptr noundef nonnull %66, i32 noundef %76) #17
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %79
  %92 = zext i8 %75 to i64
  %93 = getelementptr inbounds [87 x [87 x i8]], ptr @float_extend_from_mem, i64 0, i64 %73, i64 %92
  store i8 1, ptr %93, align 1, !tbaa !9
  br label %94

94:                                               ; preds = %79, %91, %74
  %95 = zext i8 %75 to i64
  %96 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !9
  %98 = icmp eq i8 %97, %70
  br i1 %98, label %99, label %74, !llvm.loop !18

99:                                               ; preds = %94, %69
  %100 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %73
  %101 = load i8, ptr %100, align 1, !tbaa !9
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %69, !llvm.loop !19

103:                                              ; preds = %99, %64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @rtx_alloc_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_ref_change_reg_with_loc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !9
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_i00_stat(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @can_extend_p(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_expr() local_unnamed_addr #4 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @x_rtl, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @convert_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %124, %3
  %5 = phi ptr [ %130, %124 ], [ %0, %3 ]
  %6 = phi ptr [ %132, %124 ], [ %1, %3 ]
  %7 = phi i32 [ %10, %124 ], [ %2, %3 ]
  br label %8

8:                                                ; preds = %4, %355
  %9 = phi ptr [ %6, %4 ], [ %359, %355 ]
  %10 = phi i32 [ %7, %4 ], [ 0, %355 ]
  br label %11

11:                                               ; preds = %8, %430
  %12 = phi ptr [ %431, %430 ], [ %9, %8 ]
  %13 = load i32, ptr %5, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = load i32, ptr %12, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = zext nneg i32 %15 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !9
  %22 = and i8 %21, -2
  %23 = icmp eq i8 %22, 8
  %24 = zext nneg i32 %18 to i64
  %25 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = and i8 %26, -2
  %28 = icmp eq i8 %27, 8
  %29 = xor i1 %23, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 371, ptr noundef nonnull @.str.1) #17
  br label %31

31:                                               ; preds = %11, %30
  %32 = icmp eq i32 %15, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 372, ptr noundef nonnull @.str.1) #17
  br label %34

34:                                               ; preds = %31, %33
  %35 = icmp eq i32 %18, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 373, ptr noundef nonnull @.str.1) #17
  br label %37

37:                                               ; preds = %34, %36
  %38 = icmp eq ptr %5, %12
  br i1 %38, label %283, label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %12, align 8
  %41 = and i32 %40, 268500991
  %42 = icmp eq i32 %41, 268435495
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !9
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !9
  %52 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %53 = load i8, ptr %52, align 1, !tbaa !9
  %54 = icmp ult i8 %51, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %43
  %56 = and i32 %40, 134217728
  %57 = icmp eq i32 %56, 0
  %58 = lshr i32 %40, 26
  %59 = and i32 %58, 1
  %60 = select i1 %57, i32 %59, i32 -1
  %61 = icmp eq i32 %60, %10
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load ptr, ptr @rtl_hooks, align 8, !tbaa !20
  %64 = tail call ptr %63(i32 noundef %15, ptr noundef nonnull %12) #17
  br label %65

65:                                               ; preds = %62, %55, %43, %39
  %66 = phi i32 [ %15, %62 ], [ %18, %55 ], [ %18, %43 ], [ %18, %39 ]
  %67 = phi ptr [ %64, %62 ], [ %12, %55 ], [ %12, %43 ], [ %12, %39 ]
  %68 = load i32, ptr %5, align 8
  %69 = and i32 %68, 268500991
  %70 = icmp eq i32 %69, 268435495
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 390, ptr noundef nonnull @.str.1) #17
  br label %72

72:                                               ; preds = %65, %71
  %73 = icmp eq i32 %15, %66
  br i1 %73, label %83, label %74

74:                                               ; preds = %72
  %75 = icmp eq i32 %66, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %74
  %77 = load i32, ptr %67, align 8
  %78 = and i32 %77, 65535
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !22
  %82 = icmp eq i32 %81, 9
  br i1 %82, label %83, label %85

83:                                               ; preds = %76, %72
  %84 = tail call ptr @emit_move_insn(ptr noundef nonnull %5, ptr noundef %67) #18
  br label %283

85:                                               ; preds = %76, %74
  %86 = add i8 %21, -12
  %87 = icmp ult i8 %86, 6
  %88 = zext nneg i32 %66 to i64
  br i1 %87, label %94, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %88
  %91 = load i8, ptr %90, align 1, !tbaa !9
  %92 = add i8 %91, -12
  %93 = icmp ult i8 %92, 6
  br i1 %93, label %94, label %116

94:                                               ; preds = %89, %85
  %95 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %88
  %96 = load i8, ptr %95, align 1, !tbaa !9
  %97 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %98 = load i8, ptr %97, align 1, !tbaa !9
  %99 = icmp eq i8 %96, %98
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 401, ptr noundef nonnull @.str.1) #17
  br label %101

101:                                              ; preds = %94, %100
  br i1 %87, label %102, label %107

102:                                              ; preds = %101
  %103 = load i32, ptr %67, align 8
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  %106 = tail call ptr @simplify_gen_subreg(i32 noundef %15, ptr noundef nonnull %67, i32 noundef %105, i32 noundef 0) #17
  br label %112

107:                                              ; preds = %101
  %108 = load i32, ptr %5, align 8
  %109 = lshr i32 %108, 16
  %110 = and i32 %109, 255
  %111 = tail call ptr @simplify_gen_subreg(i32 noundef %66, ptr noundef nonnull %5, i32 noundef %110, i32 noundef 0) #17
  br label %112

112:                                              ; preds = %107, %102
  %113 = phi ptr [ %106, %102 ], [ %67, %107 ]
  %114 = phi ptr [ %5, %102 ], [ %111, %107 ]
  %115 = tail call ptr @emit_move_insn(ptr noundef %114, ptr noundef %113) #18
  br label %283

116:                                              ; preds = %89
  %117 = load i32, ptr %5, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 41
  br i1 %119, label %120, label %133

120:                                              ; preds = %116
  %121 = load i32, ptr %67, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 41
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !9
  %127 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !9
  tail call void @convert_move(ptr noundef %126, ptr noundef %128, i32 noundef %10) #18
  %129 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !9
  %131 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !9
  br label %4

133:                                              ; preds = %120, %116
  br i1 %23, label %134, label %168

134:                                              ; preds = %133
  %135 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %88
  %136 = load i16, ptr %135, align 2, !tbaa !23
  %137 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %19
  %138 = load i16, ptr %137, align 2, !tbaa !23
  %139 = icmp eq i16 %136, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = icmp eq i8 %91, 9
  %142 = icmp ne i8 %21, 9
  %143 = xor i1 %142, %141
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 427, ptr noundef nonnull @.str.1) #17
  br label %145

145:                                              ; preds = %140, %144
  %146 = select i1 %141, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2), ptr @convert_optab_table
  br label %150

147:                                              ; preds = %134
  %148 = icmp ult i16 %136, %138
  %149 = select i1 %148, ptr @convert_optab_table, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2)
  br label %150

150:                                              ; preds = %147, %145
  %151 = phi ptr [ %146, %145 ], [ %149, %147 ]
  %152 = getelementptr inbounds %struct.convert_optab_d, ptr %151, i64 0, i32 3, i64 %19, i64 %88
  %153 = load i32, ptr %152, align 4, !tbaa !25
  %154 = icmp eq i32 %153, 2956
  br i1 %154, label %158, label %155

155:                                              ; preds = %150
  %156 = icmp eq ptr %151, @convert_optab_table
  %157 = select i1 %156, i32 101, i32 102
  tail call void @emit_unop_insn(i32 noundef %153, ptr noundef nonnull %5, ptr noundef %67, i32 noundef %157) #17
  br label %283

158:                                              ; preds = %150
  %159 = tail call ptr @convert_optab_libfunc(ptr noundef nonnull %151, i32 noundef %15, i32 noundef %66) #17
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 451, ptr noundef nonnull @.str.1) #17
  br label %162

162:                                              ; preds = %158, %161
  tail call void @start_sequence() #17
  %163 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef %159, ptr noundef null, i32 noundef 1, i32 noundef %15, i32 noundef 1, ptr noundef %67, i32 noundef %66) #17
  %164 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  %165 = icmp eq ptr %151, getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2)
  %166 = select i1 %165, i32 102, i32 101
  %167 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %166, i32 noundef %15, ptr noundef %67) #17
  tail call void @emit_libcall_block(ptr noundef %164, ptr noundef nonnull %5, ptr noundef %163, ptr noundef %167) #17
  br label %283

168:                                              ; preds = %133
  %169 = icmp eq i8 %21, 3
  br i1 %169, label %170, label %188

170:                                              ; preds = %168
  %171 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %172 = load i8, ptr %171, align 1, !tbaa !9
  %173 = zext i8 %172 to i32
  %174 = shl nuw nsw i32 %173, 3
  %175 = tail call i32 @smallest_mode_for_size(i32 noundef %174, i32 noundef 2) #17
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 3, i64 %19, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !25
  %179 = icmp eq i32 %178, 2956
  br i1 %179, label %180, label %181

180:                                              ; preds = %170
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 474, ptr noundef nonnull @.str.1) #17
  br label %181

181:                                              ; preds = %170, %180
  %182 = icmp eq i32 %175, %66
  br i1 %182, label %185, label %183

183:                                              ; preds = %181
  %184 = tail call ptr @convert_to_mode(i32 noundef %175, ptr noundef %67, i32 noundef %10) #18
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi ptr [ %184, %183 ], [ %67, %181 ]
  %187 = load i32, ptr %177, align 4, !tbaa !25
  tail call void @emit_unop_insn(i32 noundef %187, ptr noundef nonnull %5, ptr noundef %186, i32 noundef 0) #17
  br label %283

188:                                              ; preds = %168
  %189 = icmp eq i8 %91, 3
  br i1 %189, label %190, label %211

190:                                              ; preds = %188
  %191 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %88
  %192 = load i8, ptr %191, align 1, !tbaa !9
  %193 = zext i8 %192 to i32
  %194 = shl nuw nsw i32 %193, 3
  %195 = tail call i32 @smallest_mode_for_size(i32 noundef %194, i32 noundef 2) #17
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 %196, i64 %88
  %198 = load i32, ptr %197, align 4, !tbaa !25
  %199 = icmp eq i32 %198, 2956
  br i1 %199, label %200, label %201

200:                                              ; preds = %190
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 489, ptr noundef nonnull @.str.1) #17
  br label %201

201:                                              ; preds = %190, %200
  %202 = icmp eq i32 %15, %195
  br i1 %202, label %203, label %205

203:                                              ; preds = %201
  %204 = load i32, ptr %197, align 4, !tbaa !25
  tail call void @emit_unop_insn(i32 noundef %204, ptr noundef nonnull %5, ptr noundef %67, i32 noundef 0) #17
  br label %283

205:                                              ; preds = %201
  %206 = tail call ptr @gen_reg_rtx(i32 noundef %195) #17
  %207 = load i32, ptr %197, align 4, !tbaa !25
  tail call void @emit_unop_insn(i32 noundef %207, ptr noundef %206, ptr noundef %67, i32 noundef 0) #17
  %208 = zext i32 %195 to i64
  %209 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !9
  br label %211

211:                                              ; preds = %205, %188
  %212 = phi i8 [ %210, %205 ], [ %91, %188 ]
  %213 = phi i64 [ %208, %205 ], [ %88, %188 ]
  %214 = phi i32 [ %195, %205 ], [ %66, %188 ]
  %215 = phi ptr [ %206, %205 ], [ %67, %188 ]
  %216 = and i8 %212, -4
  %217 = icmp eq i8 %216, 4
  %218 = and i8 %21, -4
  %219 = icmp eq i8 %218, 4
  %220 = xor i1 %219, %217
  br i1 %220, label %221, label %222

221:                                              ; preds = %211
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 509, ptr noundef nonnull @.str.1) #17
  br label %222

222:                                              ; preds = %211, %221
  br i1 %217, label %223, label %233

223:                                              ; preds = %222
  %224 = icmp eq i8 %212, %21
  br i1 %224, label %225, label %232

225:                                              ; preds = %223
  %226 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %213
  %227 = load i8, ptr %226, align 1, !tbaa !9
  %228 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %229 = load i8, ptr %228, align 1, !tbaa !9
  %230 = icmp ult i8 %227, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %225
  tail call void @expand_fixed_convert(ptr noundef nonnull %5, ptr noundef %215, i32 noundef 0, i32 noundef 0) #17
  br label %283

232:                                              ; preds = %225, %223
  tail call void @expand_fixed_convert(ptr noundef nonnull %5, ptr noundef %215, i32 noundef 0, i32 noundef 1) #17
  br label %283

233:                                              ; preds = %222
  %234 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %213
  %235 = load i8, ptr %234, align 1, !tbaa !9
  %236 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %237 = load i8, ptr %236, align 1, !tbaa !9
  %238 = zext i8 %237 to i32
  %239 = icmp ult i8 %235, %237
  %240 = icmp ugt i8 %237, 4
  %241 = and i1 %239, %240
  br i1 %241, label %242, label %331

242:                                              ; preds = %233
  %243 = icmp slt i32 %10, 0
  %244 = icmp eq i32 %10, 0
  %245 = select i1 %244, i32 98, i32 99
  %246 = select i1 %243, i32 0, i32 %245
  %247 = add nuw nsw i32 %238, 3
  %248 = lshr i32 %247, 2
  %249 = tail call i32 @can_extend_p(i32 noundef %15, i32 noundef %214, i32 noundef %10) #17
  %250 = icmp eq i32 %249, 2956
  br i1 %250, label %262, label %251

251:                                              ; preds = %242
  %252 = load i32, ptr @optimize, align 4, !tbaa !22
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %251
  %255 = load i32, ptr %215, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 39
  br i1 %257, label %258, label %260

258:                                              ; preds = %254
  %259 = tail call ptr @force_reg(i32 noundef %214, ptr noundef nonnull %215) #17
  br label %260

260:                                              ; preds = %258, %254, %251
  %261 = phi ptr [ %259, %258 ], [ %215, %254 ], [ %215, %251 ]
  tail call void @emit_unop_insn(i32 noundef %249, ptr noundef nonnull %5, ptr noundef %261, i32 noundef %246) #17
  br label %283

262:                                              ; preds = %242
  %263 = load i8, ptr %234, align 1, !tbaa !9
  %264 = icmp ult i8 %263, 4
  br i1 %264, label %265, label %286

265:                                              ; preds = %262
  %266 = load i32, ptr @word_mode, align 4, !tbaa !22
  %267 = tail call i32 @can_extend_p(i32 noundef %15, i32 noundef %266, i32 noundef %10) #17
  %268 = icmp eq i32 %267, 2956
  br i1 %268, label %286, label %269

269:                                              ; preds = %265
  %270 = load i32, ptr @word_mode, align 4, !tbaa !22
  %271 = tail call ptr @gen_reg_rtx(i32 noundef %270) #17
  %272 = load i32, ptr %5, align 8
  %273 = and i32 %272, 65535
  %274 = icmp eq i32 %273, 37
  br i1 %274, label %275, label %284

275:                                              ; preds = %269
  %276 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %5, ptr noundef %215) #17
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %275
  %279 = tail call ptr @force_reg(i32 noundef %214, ptr noundef %215) #17
  br label %280

280:                                              ; preds = %278, %275
  %281 = phi ptr [ %279, %278 ], [ %215, %275 ]
  %282 = tail call ptr @emit_clobber(ptr noundef nonnull %5) #17
  br label %284

283:                                              ; preds = %203, %453, %438, %260, %328, %231, %232, %155, %162, %461, %460, %410, %398, %185, %112, %83, %37, %284
  ret void

284:                                              ; preds = %280, %269
  %285 = phi ptr [ %281, %280 ], [ %215, %269 ]
  tail call void @convert_move(ptr noundef %271, ptr noundef %285, i32 noundef %10) #18
  tail call void @emit_unop_insn(i32 noundef %267, ptr noundef nonnull %5, ptr noundef %271, i32 noundef %246) #17
  br label %283

286:                                              ; preds = %262, %265
  tail call void @start_sequence() #17
  %287 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %5, ptr noundef %215) #17
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %291, label %289

289:                                              ; preds = %286
  %290 = tail call ptr @force_reg(i32 noundef %214, ptr noundef %215) #17
  br label %291

291:                                              ; preds = %289, %286
  %292 = phi ptr [ %290, %289 ], [ %215, %286 ]
  %293 = load i8, ptr %234, align 1, !tbaa !9
  %294 = icmp ult i8 %293, 4
  %295 = load i32, ptr @word_mode, align 4
  %296 = select i1 %294, i32 %295, i32 %214
  %297 = tail call ptr @convert_to_mode(i32 noundef %296, ptr noundef %292, i32 noundef %10) #18
  %298 = load ptr, ptr @rtl_hooks, align 8, !tbaa !20
  %299 = tail call ptr %298(i32 noundef %296, ptr noundef nonnull %5) #17
  %300 = tail call ptr @emit_move_insn(ptr noundef %299, ptr noundef %297) #18
  br i1 %244, label %303, label %301

301:                                              ; preds = %291
  %302 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  br label %308

303:                                              ; preds = %291
  %304 = load i32, ptr @word_mode, align 4, !tbaa !22
  %305 = tail call ptr @gen_reg_rtx(i32 noundef %304) #17
  %306 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %307 = tail call ptr @emit_store_flag(ptr noundef %305, i32 noundef 85, ptr noundef %297, ptr noundef %306, i32 noundef 0, i32 noundef 0, i32 noundef -1) #17
  br label %308

308:                                              ; preds = %303, %301
  %309 = phi ptr [ %302, %301 ], [ %307, %303 ]
  %310 = zext i32 %296 to i64
  %311 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %310
  %312 = load i8, ptr %311, align 1, !tbaa !9
  %313 = lshr i8 %312, 2
  %314 = zext nneg i8 %313 to i32
  %315 = icmp ugt i32 %248, %314
  br i1 %315, label %316, label %328

316:                                              ; preds = %308, %325
  %317 = phi i32 [ %326, %325 ], [ %314, %308 ]
  %318 = tail call ptr @operand_subword(ptr noundef nonnull %5, i32 noundef %317, i32 noundef 1, i32 noundef %15) #17
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %321

320:                                              ; preds = %316
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 601, ptr noundef nonnull @.str.1) #17
  br label %321

321:                                              ; preds = %316, %320
  %322 = icmp eq ptr %309, %318
  br i1 %322, label %325, label %323

323:                                              ; preds = %321
  %324 = tail call ptr @emit_move_insn(ptr noundef %318, ptr noundef %309) #18
  br label %325

325:                                              ; preds = %323, %321
  %326 = add nuw nsw i32 %317, 1
  %327 = icmp eq i32 %326, %248
  br i1 %327, label %328, label %316, !llvm.loop !27

328:                                              ; preds = %325, %308
  %329 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  %330 = tail call ptr @emit_insn(ptr noundef %329) #17
  br label %283

331:                                              ; preds = %233
  %332 = icmp ugt i8 %235, 4
  %333 = icmp ult i8 %237, 5
  %334 = and i1 %332, %333
  br i1 %334, label %335, label %360

335:                                              ; preds = %331
  %336 = load i32, ptr %215, align 8
  %337 = and i32 %336, 134283263
  %338 = icmp eq i32 %337, 43
  br i1 %338, label %339, label %350

339:                                              ; preds = %335
  %340 = getelementptr inbounds [87 x i8], ptr @direct_load, i64 0, i64 %19
  %341 = load i8, ptr %340, align 1, !tbaa !9
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %350, label %343

343:                                              ; preds = %339
  %344 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !9
  %346 = tail call i32 @mode_dependent_address_p(ptr noundef %345) #17
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %355, label %348

348:                                              ; preds = %343
  %349 = load i32, ptr %215, align 8
  br label %350

350:                                              ; preds = %348, %339, %335
  %351 = phi i32 [ %349, %348 ], [ %336, %339 ], [ %336, %335 ]
  %352 = trunc i32 %351 to i16
  switch i16 %352, label %353 [
    i16 37, label %355
    i16 39, label %355
  ]

353:                                              ; preds = %350
  %354 = tail call ptr @force_reg(i32 noundef %214, ptr noundef nonnull %215) #17
  br label %355

355:                                              ; preds = %350, %350, %353, %343
  %356 = phi ptr [ %215, %350 ], [ %354, %353 ], [ %215, %343 ], [ %215, %350 ]
  %357 = load ptr, ptr @rtl_hooks, align 8, !tbaa !20
  %358 = load i32, ptr @word_mode, align 4, !tbaa !22
  %359 = tail call ptr %357(i32 noundef %358, ptr noundef %356) #17
  br label %8

360:                                              ; preds = %331
  %361 = shl nuw nsw i32 %238, 3
  %362 = zext i8 %235 to i32
  %363 = shl nuw nsw i32 %362, 3
  %364 = icmp ult i32 %361, %363
  br i1 %364, label %365, label %403

365:                                              ; preds = %360
  %366 = load i32, ptr %215, align 8
  %367 = and i32 %366, 134283263
  %368 = icmp eq i32 %367, 43
  br i1 %368, label %369, label %380

369:                                              ; preds = %365
  %370 = getelementptr inbounds [87 x i8], ptr @direct_load, i64 0, i64 %19
  %371 = load i8, ptr %370, align 1, !tbaa !9
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %380, label %373

373:                                              ; preds = %369
  %374 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !9
  %376 = tail call i32 @mode_dependent_address_p(ptr noundef %375) #17
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %385, label %378

378:                                              ; preds = %373
  %379 = load i32, ptr %215, align 8
  br label %380

380:                                              ; preds = %378, %369, %365
  %381 = phi i32 [ %379, %378 ], [ %366, %369 ], [ %366, %365 ]
  %382 = trunc i32 %381 to i16
  switch i16 %382, label %383 [
    i16 37, label %385
    i16 39, label %385
  ]

383:                                              ; preds = %380
  %384 = tail call ptr @force_reg(i32 noundef %214, ptr noundef nonnull %215) #17
  br label %385

385:                                              ; preds = %380, %380, %383, %373
  %386 = phi ptr [ %215, %380 ], [ %384, %383 ], [ %215, %373 ], [ %215, %380 ]
  %387 = load i32, ptr %386, align 8
  %388 = and i32 %387, 65535
  %389 = icmp eq i32 %388, 37
  br i1 %389, label %390, label %398

390:                                              ; preds = %385
  %391 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %386) #18
  %392 = icmp ult i32 %391, 53
  br i1 %392, label %393, label %398

393:                                              ; preds = %390
  %394 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %391, i32 noundef %15) #17
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %393
  %397 = tail call ptr @copy_to_reg(ptr noundef nonnull %386) #17
  br label %398

398:                                              ; preds = %396, %393, %390, %385
  %399 = phi ptr [ %386, %393 ], [ %397, %396 ], [ %386, %390 ], [ %386, %385 ]
  %400 = load ptr, ptr @rtl_hooks, align 8, !tbaa !20
  %401 = tail call ptr %400(i32 noundef %15, ptr noundef %399) #17
  %402 = tail call ptr @emit_move_insn(ptr noundef nonnull %5, ptr noundef %401) #18
  br label %283

403:                                              ; preds = %360
  %404 = icmp ugt i32 %361, %363
  br i1 %404, label %405, label %455

405:                                              ; preds = %403
  %406 = tail call i32 @can_extend_p(i32 noundef %15, i32 noundef %214, i32 noundef %10) #17
  %407 = icmp eq i32 %406, 2956
  br i1 %407, label %408, label %410

408:                                              ; preds = %405
  %409 = icmp eq i32 %214, 0
  br i1 %409, label %438, label %415

410:                                              ; preds = %405
  %411 = icmp slt i32 %10, 0
  %412 = icmp eq i32 %10, 0
  %413 = select i1 %412, i32 98, i32 99
  %414 = select i1 %411, i32 0, i32 %413
  tail call void @emit_unop_insn(i32 noundef %406, ptr noundef nonnull %5, ptr noundef %215, i32 noundef %414) #17
  br label %283

415:                                              ; preds = %408, %432
  %416 = phi i32 [ %436, %432 ], [ %214, %408 ]
  %417 = tail call i32 @can_extend_p(i32 noundef %15, i32 noundef %416, i32 noundef %10) #17
  %418 = icmp eq i32 %417, 2956
  br i1 %418, label %419, label %425

419:                                              ; preds = %415
  %420 = load i8, ptr %236, align 1, !tbaa !9
  %421 = zext i32 %416 to i64
  %422 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %421
  %423 = load i8, ptr %422, align 1, !tbaa !9
  %424 = icmp ult i8 %420, %423
  br i1 %424, label %425, label %432

425:                                              ; preds = %419, %415
  %426 = tail call i32 @can_extend_p(i32 noundef %416, i32 noundef %214, i32 noundef %10) #17
  %427 = icmp eq i32 %426, 2956
  br i1 %427, label %428, label %430

428:                                              ; preds = %425
  %429 = zext i32 %416 to i64
  br label %432

430:                                              ; preds = %425
  %431 = tail call ptr @convert_to_mode(i32 noundef %416, ptr noundef %215, i32 noundef %10) #18
  br label %11

432:                                              ; preds = %428, %419
  %433 = phi i64 [ %429, %428 ], [ %421, %419 ]
  %434 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %433
  %435 = load i8, ptr %434, align 1, !tbaa !9
  %436 = zext i8 %435 to i32
  %437 = icmp eq i8 %435, 0
  br i1 %437, label %438, label %415, !llvm.loop !28

438:                                              ; preds = %408, %432
  %439 = load i8, ptr %236, align 1, !tbaa !9
  %440 = zext i8 %439 to i32
  %441 = load i8, ptr %234, align 1, !tbaa !9
  %442 = zext i8 %441 to i32
  %443 = sub nsw i32 %440, %442
  %444 = shl nsw i32 %443, 3
  %445 = sext i32 %444 to i64
  %446 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %445) #17
  %447 = load ptr, ptr @rtl_hooks, align 8, !tbaa !20
  %448 = tail call ptr @force_reg(i32 noundef %214, ptr noundef %215) #17
  %449 = tail call ptr %447(i32 noundef %15, ptr noundef %448) #17
  %450 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %15, ptr noundef %449, ptr noundef %446, ptr noundef nonnull %5, i32 noundef %10) #17
  %451 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %15, ptr noundef %450, ptr noundef %446, ptr noundef nonnull %5, i32 noundef %10) #17
  %452 = icmp eq ptr %451, %5
  br i1 %452, label %283, label %453

453:                                              ; preds = %438
  %454 = tail call ptr @emit_move_insn(ptr noundef nonnull %5, ptr noundef %451) #18
  br label %283

455:                                              ; preds = %403
  %456 = sext i32 %214 to i64
  %457 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 3, i64 %19, i64 %456
  %458 = load i32, ptr %457, align 4, !tbaa !25
  %459 = icmp eq i32 %458, 2956
  br i1 %459, label %461, label %460

460:                                              ; preds = %455
  tail call void @emit_unop_insn(i32 noundef %458, ptr noundef nonnull %5, ptr noundef %215, i32 noundef 0) #17
  br label %283

461:                                              ; preds = %455
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 722, ptr noundef nonnull @.str.1) #17
  br label %283
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_move_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, %5
  %12 = icmp eq i32 %10, 0
  %13 = or i1 %11, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %7, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3432, ptr noundef nonnull @.str.1) #17
  %15 = load i32, ptr %1, align 8
  br label %16

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %8, %7 ], [ %15, %14 ]
  %18 = and i32 %17, 65535
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !22
  %22 = icmp eq i32 %21, 9
  br i1 %22, label %23, label %46

23:                                               ; preds = %16
  %24 = load i32, ptr @optimize, align 4, !tbaa !22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %0, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !9
  %33 = and i8 %32, -2
  %34 = icmp eq i8 %33, 8
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = tail call fastcc ptr @compress_float_constant(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %133

38:                                               ; preds = %26, %35, %23
  %39 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %1) #17
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = tail call ptr @force_const_mem(i32 noundef %5, ptr noundef nonnull %1) #17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call ptr @use_anchored_address(ptr noundef nonnull %42) #17
  br label %46

46:                                               ; preds = %41, %38, %44, %16
  %47 = phi ptr [ %1, %38 ], [ %45, %44 ], [ %1, %16 ], [ %1, %41 ]
  %48 = phi ptr [ %1, %38 ], [ %1, %44 ], [ null, %16 ], [ %1, %41 ]
  %49 = load i32, ptr %0, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 43
  br i1 %51, label %52, label %75

52:                                               ; preds = %46
  %53 = lshr i32 %49, 16
  %54 = and i32 %53, 255
  %55 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !9
  %57 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !9
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.mem_attrs, ptr %58, i64 0, i32 5
  %62 = load i8, ptr %61, align 8, !tbaa !29
  br label %63

63:                                               ; preds = %52, %60
  %64 = phi i8 [ %62, %60 ], [ 0, %52 ]
  %65 = tail call i32 @memory_address_addr_space_p(i32 noundef %54, ptr noundef %56, i8 noundef zeroext %64) #17
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32, ptr %0, align 8
  %69 = lshr i32 %68, 16
  %70 = and i32 %69, 255
  %71 = tail call i32 @push_operand(ptr noundef nonnull %0, i32 noundef %70) #17
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = tail call ptr @validize_mem(ptr noundef nonnull %0) #17
  br label %75

75:                                               ; preds = %73, %67, %63, %46
  %76 = phi ptr [ %0, %63 ], [ %0, %67 ], [ %74, %73 ], [ %0, %46 ]
  %77 = load i32, ptr %47, align 8
  %78 = and i32 %77, 65535
  %79 = icmp eq i32 %78, 43
  br i1 %79, label %80, label %97

80:                                               ; preds = %75
  %81 = lshr i32 %77, 16
  %82 = and i32 %81, 255
  %83 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !9
  %85 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !9
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.mem_attrs, ptr %86, i64 0, i32 5
  %90 = load i8, ptr %89, align 8, !tbaa !29
  br label %91

91:                                               ; preds = %80, %88
  %92 = phi i8 [ %90, %88 ], [ 0, %80 ]
  %93 = tail call i32 @memory_address_addr_space_p(i32 noundef %82, ptr noundef %84, i8 noundef zeroext %92) #17
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = tail call ptr @validize_mem(ptr noundef nonnull %47) #17
  br label %97

97:                                               ; preds = %95, %91, %75
  %98 = phi ptr [ %47, %91 ], [ %96, %95 ], [ %47, %75 ]
  br i1 %6, label %99, label %100

99:                                               ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3470, ptr noundef nonnull @.str.1) #17
  br label %100

100:                                              ; preds = %97, %99
  %101 = tail call ptr @emit_move_insn_1(ptr noundef %76, ptr noundef %98) #18
  %102 = icmp eq ptr %48, null
  br i1 %102, label %133, label %103

103:                                              ; preds = %100
  %104 = load i32, ptr %76, align 8
  %105 = and i32 %104, 65535
  %106 = icmp eq i32 %105, 37
  br i1 %106, label %107, label %133

107:                                              ; preds = %103
  %108 = load i32, ptr %101, align 8
  %109 = and i32 %108, 65535
  %110 = add nsw i32 %109, -7
  %111 = icmp ult i32 %110, 4
  br i1 %111, label %112, label %133

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !9
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 23
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = tail call ptr @single_set_2(ptr noundef nonnull %101, ptr noundef nonnull %114) #17
  %120 = icmp eq ptr %119, null
  br i1 %120, label %133, label %121

121:                                              ; preds = %112, %118
  %122 = phi ptr [ %119, %118 ], [ %114, %112 ]
  %123 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !9
  %125 = icmp eq ptr %124, %76
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !9
  %129 = tail call i32 @rtx_equal_p(ptr noundef nonnull %48, ptr noundef %128) #17
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %101, i32 noundef 4, ptr noundef nonnull %48) #17
  br label %133

133:                                              ; preds = %107, %100, %103, %118, %121, %126, %131, %35
  %134 = phi ptr [ %36, %35 ], [ %101, %131 ], [ %101, %126 ], [ %101, %121 ], [ %101, %118 ], [ %101, %103 ], [ %101, %100 ], [ %101, %107 ]
  ret ptr %134
}

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @emit_unop_insn(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @convert_optab_libfunc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_library_call_value(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare void @emit_libcall_block(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @smallest_mode_for_size(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @convert_to_mode(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @convert_modes(i32 noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef %2) #18
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @expand_fixed_convert(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_store_flag(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @operand_subword(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @mode_dependent_address_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_shift(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @convert_modes(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 268500991
  %7 = icmp eq i32 %6, 268435495
  br i1 %7, label %8, label %32

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = zext i32 %0 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !9
  %20 = icmp ult i8 %16, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %8
  %22 = and i32 %5, 134217728
  %23 = icmp eq i32 %22, 0
  %24 = lshr i32 %5, 26
  %25 = and i32 %24, 1
  %26 = select i1 %23, i32 %25, i32 -1
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load ptr, ptr @rtl_hooks, align 8, !tbaa !20
  %30 = tail call ptr %29(i32 noundef %0, ptr noundef nonnull %2) #17
  %31 = load i32, ptr %30, align 8
  br label %32

32:                                               ; preds = %28, %21, %8, %4
  %33 = phi i32 [ %31, %28 ], [ %5, %21 ], [ %5, %8 ], [ %5, %4 ]
  %34 = phi ptr [ %30, %28 ], [ %2, %21 ], [ %2, %8 ], [ %2, %4 ]
  %35 = lshr i32 %33, 16
  %36 = and i32 %35, 255
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 %1, i32 %36
  %39 = icmp eq i32 %38, %0
  br i1 %39, label %172, label %40

40:                                               ; preds = %32
  %41 = icmp eq i32 %3, 0
  br i1 %41, label %74, label %42

42:                                               ; preds = %40
  %43 = zext i32 %0 to i64
  %44 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !9
  %46 = icmp eq i8 %45, 2
  br i1 %46, label %47, label %74

47:                                               ; preds = %42
  %48 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %43
  %49 = load i8, ptr %48, align 1, !tbaa !9
  %50 = icmp eq i8 %49, 16
  %51 = and i32 %33, 65535
  %52 = icmp eq i32 %51, 30
  %53 = and i1 %52, %50
  br i1 %53, label %54, label %74

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !9
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = icmp eq i32 %38, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %58
  %61 = zext i32 %38 to i64
  %62 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = icmp ult i8 %63, 8
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = shl nuw nsw i8 %63, 3
  %67 = zext nneg i8 %66 to i64
  %68 = shl nsw i64 -1, %67
  %69 = xor i64 %68, -1
  %70 = and i64 %56, %69
  br label %71

71:                                               ; preds = %65, %60, %58
  %72 = phi i64 [ %70, %65 ], [ %56, %60 ], [ %56, %58 ]
  %73 = tail call ptr @immed_double_const(i64 noundef %72, i64 noundef 0, i32 noundef %0) #17
  br label %172

74:                                               ; preds = %54, %47, %42, %40
  %75 = and i32 %33, 65535
  %76 = icmp eq i32 %75, 30
  %77 = zext i32 %0 to i64
  br i1 %76, label %78, label %82

78:                                               ; preds = %74
  %79 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %77
  %80 = load i8, ptr %79, align 1, !tbaa !9
  %81 = icmp ult i8 %80, 9
  br i1 %81, label %117, label %82

82:                                               ; preds = %74, %78
  %83 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %77
  %84 = load i8, ptr %83, align 1, !tbaa !9
  %85 = icmp eq i8 %84, 2
  br i1 %85, label %86, label %154

86:                                               ; preds = %82
  %87 = zext i32 %38 to i64
  %88 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !9
  %90 = icmp eq i8 %89, 2
  br i1 %90, label %91, label %170

91:                                               ; preds = %86
  %92 = icmp eq i32 %75, 32
  br i1 %92, label %117, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %77
  %95 = load i8, ptr %94, align 1, !tbaa !9
  %96 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %87
  %97 = load i8, ptr %96, align 1, !tbaa !9
  %98 = icmp ugt i8 %95, %97
  br i1 %98, label %170, label %99

99:                                               ; preds = %93
  %100 = and i32 %33, 134283263
  %101 = icmp eq i32 %100, 43
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = sext i32 %0 to i64
  %104 = getelementptr inbounds [87 x i8], ptr @direct_load, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !9
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %170, label %117

107:                                              ; preds = %99
  %108 = icmp eq i32 %75, 37
  br i1 %108, label %109, label %170

109:                                              ; preds = %107
  %110 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %34) #18
  %111 = icmp ult i32 %110, 53
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %110, i32 noundef %0) #17
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %170, label %115

115:                                              ; preds = %112
  %116 = load i32, ptr %34, align 8
  br label %117

117:                                              ; preds = %115, %109, %102, %91, %78
  %118 = phi i32 [ %116, %115 ], [ %33, %109 ], [ %33, %102 ], [ %33, %91 ], [ %33, %78 ]
  %119 = and i32 %118, 65535
  %120 = icmp eq i32 %119, 30
  %121 = icmp ne i32 %38, 0
  %122 = and i1 %121, %120
  br i1 %122, label %123, label %151

123:                                              ; preds = %117
  %124 = zext i32 %0 to i64
  %125 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !9
  %127 = zext i32 %38 to i64
  %128 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !9
  %130 = icmp ugt i8 %126, %129
  br i1 %130, label %131, label %151

131:                                              ; preds = %123
  %132 = zext i8 %129 to i32
  %133 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %134 = load i64, ptr %133, align 8, !tbaa !9
  %135 = shl nuw nsw i32 %132, 3
  %136 = zext nneg i32 %135 to i64
  %137 = shl nsw i64 -1, %136
  %138 = xor i64 %137, -1
  %139 = and i64 %134, %138
  br i1 %41, label %140, label %148

140:                                              ; preds = %131
  %141 = add nsw i32 %135, -1
  %142 = zext nneg i32 %141 to i64
  %143 = shl nuw i64 1, %142
  %144 = and i64 %139, %143
  %145 = icmp eq i64 %144, 0
  %146 = or i64 %134, %137
  %147 = select i1 %145, i64 %139, i64 %146
  br label %148

148:                                              ; preds = %140, %131
  %149 = phi i64 [ %139, %131 ], [ %147, %140 ]
  %150 = tail call ptr @gen_int_mode(i64 noundef %149, i32 noundef %0) #17
  br label %172

151:                                              ; preds = %123, %117
  %152 = load ptr, ptr @rtl_hooks, align 8, !tbaa !20
  %153 = tail call ptr %152(i32 noundef %0, ptr noundef nonnull %34) #17
  br label %172

154:                                              ; preds = %82
  %155 = add i8 %84, -12
  %156 = icmp ult i8 %155, 6
  %157 = and i32 %33, 16711680
  %158 = icmp eq i32 %157, 0
  %159 = and i1 %156, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %154
  %161 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %77
  %162 = load i8, ptr %161, align 1, !tbaa !9
  %163 = zext i32 %38 to i64
  %164 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !9
  %166 = icmp eq i8 %162, %165
  br i1 %166, label %168, label %167

167:                                              ; preds = %160
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 836, ptr noundef nonnull @.str.1) #17
  br label %168

168:                                              ; preds = %160, %167
  %169 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %34, i32 noundef %38, i32 noundef 0) #17
  br label %172

170:                                              ; preds = %102, %86, %93, %107, %112, %154
  %171 = tail call ptr @gen_reg_rtx(i32 noundef %0) #17
  tail call void @convert_move(ptr noundef %171, ptr noundef nonnull %34, i32 noundef %3) #18
  br label %172

172:                                              ; preds = %32, %170, %168, %151, %148, %71
  %173 = phi ptr [ %73, %71 ], [ %150, %148 ], [ %153, %151 ], [ %169, %168 ], [ %171, %170 ], [ %34, %32 ]
  ret ptr %173
}

; Function Attrs: optsize
declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @can_move_by_pieces(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %0, i32 noundef %1) #18
  %4 = tail call zeroext i8 @optimize_insn_for_speed_p() #17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @ix86_cost, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.processor_costs, ptr %7, i64 0, i32 10
  %9 = load i32, ptr %8, align 4, !tbaa !31
  %10 = zext i32 %9 to i64
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi i64 [ %10, %6 ], [ 3, %2 ]
  %13 = icmp ult i64 %3, %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @move_by_pieces_ninsns(i64 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 1) #17
  %4 = tail call i32 @get_mode_alignment(i32 noundef %3) #17
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @get_mode_alignment(i32 noundef %3) #17
  %8 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !9
  br label %36

9:                                                ; preds = %2
  %10 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %9
  %13 = zext i8 %10 to i32
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = icmp ugt i8 %16, 4
  br i1 %17, label %30, label %24

18:                                               ; preds = %24
  %19 = zext i8 %28 to i32
  %20 = zext i8 %28 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !9
  %23 = icmp ugt i8 %22, 4
  br i1 %23, label %30, label %24, !llvm.loop !33

24:                                               ; preds = %12, %18
  %25 = phi i64 [ %20, %18 ], [ %14, %12 ]
  %26 = phi i32 [ %19, %18 ], [ %13, %12 ]
  %27 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %25
  %28 = load i8, ptr %27, align 1, !tbaa !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %18, !llvm.loop !33

30:                                               ; preds = %18, %24, %12, %9
  %31 = phi i32 [ 0, %9 ], [ %13, %12 ], [ %26, %24 ], [ %26, %18 ]
  %32 = tail call i32 @get_mode_alignment(i32 noundef %31) #17
  %33 = icmp ult i32 %32, %1
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @get_mode_alignment(i32 noundef %31) #17
  br label %36

36:                                               ; preds = %34, %30, %6
  %37 = phi i8 [ %8, %6 ], [ %10, %34 ], [ %10, %30 ]
  %38 = phi i32 [ %7, %6 ], [ %35, %34 ], [ %1, %30 ]
  %39 = icmp eq i8 %37, 0
  br label %40

40:                                               ; preds = %36, %74
  %41 = phi i64 [ %0, %36 ], [ %76, %74 ]
  %42 = phi i64 [ 0, %36 ], [ %75, %74 ]
  %43 = phi i32 [ 5, %36 ], [ %79, %74 ]
  br i1 %39, label %81, label %44

44:                                               ; preds = %40, %44
  %45 = phi i8 [ %55, %44 ], [ %37, %40 ]
  %46 = phi i32 [ %53, %44 ], [ 0, %40 ]
  %47 = zext i8 %45 to i32
  %48 = zext i8 %45 to i64
  %49 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !9
  %51 = zext i8 %50 to i32
  %52 = icmp ugt i32 %43, %51
  %53 = select i1 %52, i32 %47, i32 %46
  %54 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %48
  %55 = load i8, ptr %54, align 1, !tbaa !9
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %44, !llvm.loop !34

57:                                               ; preds = %44
  %58 = icmp eq i32 %53, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %57
  %60 = zext nneg i32 %53 to i64
  %61 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !25
  %63 = icmp eq i32 %62, 2956
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = tail call i32 @get_mode_alignment(i32 noundef %53) #17
  %66 = icmp ult i32 %38, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %60
  %69 = load i8, ptr %68, align 1, !tbaa !9
  %70 = zext i8 %69 to i64
  %71 = udiv i64 %41, %70
  %72 = add i64 %71, %42
  %73 = urem i64 %41, %70
  br label %74

74:                                               ; preds = %59, %64, %67
  %75 = phi i64 [ %72, %67 ], [ %42, %64 ], [ %42, %59 ]
  %76 = phi i64 [ %73, %67 ], [ %41, %64 ], [ %41, %59 ]
  %77 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %60
  %78 = load i8, ptr %77, align 1, !tbaa !9
  %79 = zext i8 %78 to i32
  %80 = icmp ugt i8 %78, 1
  br i1 %80, label %40, label %81

81:                                               ; preds = %40, %57, %74
  %82 = phi i64 [ %42, %57 ], [ %75, %74 ], [ %42, %40 ]
  %83 = phi i64 [ %41, %57 ], [ %76, %74 ], [ %41, %40 ]
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1088, ptr noundef nonnull @.str.1) #17
  br label %86

86:                                               ; preds = %81, %85
  ret i64 %82
}

; Function Attrs: optsize
declare zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @move_by_pieces(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.move_by_pieces_d, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #16
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.mem_attrs, ptr %10, i64 0, i32 5
  %14 = load i8, ptr %13, align 8, !tbaa !29
  br label %15

15:                                               ; preds = %5, %12
  %16 = phi i8 [ %14, %12 ], [ 0, %5 ]
  %17 = tail call i32 %7(i8 noundef zeroext %16) #17
  %18 = load ptr, ptr %8, align 8, !tbaa !9
  %19 = icmp eq ptr %0, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mem_attrs, ptr %22, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !48
  br label %27

27:                                               ; preds = %15, %24
  %28 = phi i32 [ %26, %24 ], [ %3, %15 ]
  %29 = load ptr, ptr %9, align 8, !tbaa !9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %40

31:                                               ; preds = %20
  %32 = load ptr, ptr %9, align 8, !tbaa !9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 9
  store i64 0, ptr %35, align 8, !tbaa !49
  %36 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 5
  store ptr %18, ptr %36, align 8, !tbaa !51
  %37 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !35
  br label %78

38:                                               ; preds = %27
  %39 = icmp ult i32 %28, 8
  br i1 %39, label %46, label %61

40:                                               ; preds = %27, %31
  %41 = phi ptr [ %32, %31 ], [ %29, %27 ]
  %42 = phi i32 [ 8, %31 ], [ %28, %27 ]
  %43 = getelementptr inbounds %struct.mem_attrs, ptr %41, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !48
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %40, %38
  br i1 %19, label %47, label %50

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 9
  store i64 0, ptr %48, align 8, !tbaa !49
  %49 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 5
  store ptr %18, ptr %49, align 8, !tbaa !51
  br label %97

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.mem_attrs, ptr %52, i64 0, i32 4
  %56 = load i32, ptr %55, align 4, !tbaa !48
  br label %57

57:                                               ; preds = %50, %54
  %58 = phi i32 [ 8, %50 ], [ %56, %54 ]
  %59 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 9
  store i64 0, ptr %59, align 8, !tbaa !49
  %60 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 5
  store ptr %18, ptr %60, align 8, !tbaa !51
  br label %68

61:                                               ; preds = %40, %38
  %62 = phi i32 [ 8, %38 ], [ %44, %40 ]
  %63 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 9
  store i64 0, ptr %63, align 8, !tbaa !49
  %64 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 5
  store ptr %18, ptr %64, align 8, !tbaa !51
  br i1 %19, label %97, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !9
  br label %68

68:                                               ; preds = %65, %57
  %69 = phi ptr [ %52, %57 ], [ %67, %65 ]
  %70 = phi ptr [ %60, %57 ], [ %64, %65 ]
  %71 = phi ptr [ %59, %57 ], [ %63, %65 ]
  %72 = phi i32 [ %58, %57 ], [ %62, %65 ]
  %73 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !35
  %74 = icmp eq ptr %69, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.mem_attrs, ptr %69, i64 0, i32 5
  %77 = load i8, ptr %76, align 8, !tbaa !29
  br label %78

78:                                               ; preds = %34, %68, %75
  %79 = phi ptr [ %73, %75 ], [ %73, %68 ], [ %37, %34 ]
  %80 = phi i32 [ %72, %75 ], [ %72, %68 ], [ 8, %34 ]
  %81 = phi ptr [ %71, %75 ], [ %71, %68 ], [ %35, %34 ]
  %82 = phi ptr [ %70, %75 ], [ %70, %68 ], [ %36, %34 ]
  %83 = phi i8 [ %77, %75 ], [ 0, %68 ], [ 0, %34 ]
  %84 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %85 = tail call i32 %79(i8 noundef zeroext %83) #17
  %86 = load ptr, ptr %84, align 8, !tbaa !9
  store ptr %0, ptr %6, align 8, !tbaa !52
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 65535
  %89 = add nsw i32 %88, -74
  %90 = icmp ult i32 %89, 4
  %91 = zext i1 %90 to i32
  %92 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 2
  store i32 %91, ptr %92, align 8, !tbaa !53
  %93 = icmp eq i32 %88, 74
  %94 = icmp eq i32 %88, 76
  %95 = or i1 %93, %94
  %96 = zext i1 %95 to i32
  br label %102

97:                                               ; preds = %47, %61
  %98 = phi ptr [ %49, %47 ], [ %64, %61 ]
  %99 = phi ptr [ %48, %47 ], [ %63, %61 ]
  %100 = phi i32 [ %3, %47 ], [ %62, %61 ]
  store ptr null, ptr %6, align 8, !tbaa !52
  %101 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 2
  store i32 1, ptr %101, align 8, !tbaa !53
  br label %102

102:                                              ; preds = %97, %78
  %103 = phi i32 [ 1, %97 ], [ %96, %78 ]
  %104 = phi i32 [ 1, %97 ], [ %91, %78 ]
  %105 = phi ptr [ %98, %97 ], [ %82, %78 ]
  %106 = phi ptr [ %99, %97 ], [ %81, %78 ]
  %107 = phi i32 [ %100, %97 ], [ %80, %78 ]
  %108 = phi i32 [ 0, %97 ], [ %85, %78 ]
  %109 = phi ptr [ null, %97 ], [ %86, %78 ]
  %110 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 10
  store i32 %103, ptr %110, align 8, !tbaa !54
  %111 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 1
  store ptr %109, ptr %111, align 8, !tbaa !55
  %112 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 4
  store ptr %1, ptr %112, align 8, !tbaa !56
  %113 = load i32, ptr %18, align 8
  %114 = and i32 %113, 65534
  %115 = add nsw i32 %114, -74
  %116 = icmp ult i32 %115, 4
  %117 = zext i1 %116 to i32
  %118 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 6
  store i32 %117, ptr %118, align 8, !tbaa !57
  %119 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 7
  store i32 0, ptr %119, align 4, !tbaa !58
  %120 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 3
  store i32 0, ptr %120, align 4, !tbaa !59
  %121 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 10
  %122 = icmp eq i32 %103, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %102
  store i64 %2, ptr %106, align 8, !tbaa !49
  %124 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 2
  %125 = load i32, ptr %124, align 8
  br label %126

126:                                              ; preds = %123, %102
  %127 = phi i32 [ %125, %123 ], [ %104, %102 ]
  %128 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 8
  store i64 %2, ptr %128, align 8, !tbaa !60
  %129 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 2
  %130 = icmp ne i32 %127, 0
  %131 = select i1 %116, i1 %130, i1 false
  br i1 %131, label %172, label %132

132:                                              ; preds = %126
  %133 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %2, i32 noundef %107) #18
  %134 = icmp ugt i64 %133, 2
  br i1 %134, label %135, label %172

135:                                              ; preds = %132
  %136 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !9
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %135, %138
  %139 = phi i8 [ %148, %138 ], [ %136, %135 ]
  %140 = phi i32 [ %146, %138 ], [ 0, %135 ]
  %141 = zext i8 %139 to i32
  %142 = zext i8 %139 to i64
  %143 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !9
  %145 = icmp ult i8 %144, 5
  %146 = select i1 %145, i32 %141, i32 %140
  %147 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %142
  %148 = load i8, ptr %147, align 1, !tbaa !9
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %138, !llvm.loop !61

150:                                              ; preds = %138, %135
  %151 = phi i32 [ 0, %135 ], [ %146, %138 ]
  br i1 %116, label %161, label %152

152:                                              ; preds = %150
  %153 = load i32, ptr %18, align 8
  %154 = and i32 %153, 65535
  %155 = zext nneg i32 %154 to i64
  %156 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !22
  %158 = icmp eq i32 %157, 9
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = tail call ptr @copy_to_mode_reg(i32 noundef %17, ptr noundef nonnull %18) #17
  store ptr %160, ptr %105, align 8, !tbaa !51
  br label %161

161:                                              ; preds = %159, %152, %150
  %162 = icmp eq i32 %127, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %161
  %164 = load i32, ptr %109, align 8
  %165 = and i32 %164, 65535
  %166 = zext nneg i32 %165 to i64
  %167 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !22
  %169 = icmp eq i32 %168, 9
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = tail call ptr @copy_to_mode_reg(i32 noundef %108, ptr noundef nonnull %109) #17
  store ptr %171, ptr %111, align 8, !tbaa !55
  br label %172

172:                                              ; preds = %161, %163, %170, %126, %132
  %173 = phi i32 [ 0, %126 ], [ %151, %161 ], [ %151, %170 ], [ %151, %163 ], [ 0, %132 ]
  %174 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 1) #17
  %175 = tail call i32 @get_mode_alignment(i32 noundef %174) #17
  %176 = icmp ult i32 %107, %175
  br i1 %176, label %180, label %177

177:                                              ; preds = %172
  %178 = tail call i32 @get_mode_alignment(i32 noundef %174) #17
  %179 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !9
  br label %207

180:                                              ; preds = %172
  %181 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !9
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %201, label %183

183:                                              ; preds = %180
  %184 = zext i8 %181 to i32
  %185 = zext i8 %181 to i64
  %186 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !9
  %188 = icmp ugt i8 %187, 4
  br i1 %188, label %201, label %195

189:                                              ; preds = %195
  %190 = zext i8 %199 to i32
  %191 = zext i8 %199 to i64
  %192 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !9
  %194 = icmp ugt i8 %193, 4
  br i1 %194, label %201, label %195, !llvm.loop !62

195:                                              ; preds = %183, %189
  %196 = phi i64 [ %191, %189 ], [ %185, %183 ]
  %197 = phi i32 [ %190, %189 ], [ %184, %183 ]
  %198 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %196
  %199 = load i8, ptr %198, align 1, !tbaa !9
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %189, !llvm.loop !62

201:                                              ; preds = %189, %195, %183, %180
  %202 = phi i32 [ 0, %180 ], [ %184, %183 ], [ %197, %195 ], [ %197, %189 ]
  %203 = tail call i32 @get_mode_alignment(i32 noundef %202) #17
  %204 = icmp ugt i32 %107, %203
  br i1 %204, label %207, label %205

205:                                              ; preds = %201
  %206 = tail call i32 @get_mode_alignment(i32 noundef %202) #17
  br label %207

207:                                              ; preds = %205, %201, %177
  %208 = phi i8 [ %179, %177 ], [ %181, %205 ], [ %181, %201 ]
  %209 = phi i32 [ %178, %177 ], [ %206, %205 ], [ %107, %201 ]
  %210 = icmp eq i8 %208, 0
  br label %211

211:                                              ; preds = %207, %242
  %212 = phi i32 [ %173, %207 ], [ %228, %242 ]
  %213 = phi i32 [ 5, %207 ], [ %246, %242 ]
  br i1 %210, label %227, label %214

214:                                              ; preds = %211, %214
  %215 = phi i8 [ %225, %214 ], [ %208, %211 ]
  %216 = phi i32 [ %223, %214 ], [ %212, %211 ]
  %217 = zext i8 %215 to i32
  %218 = zext i8 %215 to i64
  %219 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !9
  %221 = zext i8 %220 to i32
  %222 = icmp ugt i32 %213, %221
  %223 = select i1 %222, i32 %217, i32 %216
  %224 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %218
  %225 = load i8, ptr %224, align 1, !tbaa !9
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %214, !llvm.loop !63

227:                                              ; preds = %214, %211
  %228 = phi i32 [ %212, %211 ], [ %223, %214 ]
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %248, label %230

230:                                              ; preds = %227
  %231 = zext nneg i32 %228 to i64
  %232 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !25
  %234 = icmp eq i32 %233, 2956
  br i1 %234, label %242, label %235

235:                                              ; preds = %230
  %236 = tail call i32 @get_mode_alignment(i32 noundef %228) #17
  %237 = icmp ult i32 %209, %236
  br i1 %237, label %242, label %238

238:                                              ; preds = %235
  %239 = zext i32 %233 to i64
  %240 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %239, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !64
  call fastcc void @move_by_pieces_1(ptr noundef %241, i32 noundef %228, ptr noundef nonnull %6) #18
  br label %242

242:                                              ; preds = %238, %235, %230
  %243 = zext nneg i32 %228 to i64
  %244 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !9
  %246 = zext i8 %245 to i32
  %247 = icmp ugt i8 %245, 1
  br i1 %247, label %211, label %248, !llvm.loop !65

248:                                              ; preds = %227, %242
  %249 = load i64, ptr %128, align 8, !tbaa !60
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %248
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1008, ptr noundef nonnull @.str.1) #17
  br label %252

252:                                              ; preds = %248, %251
  %253 = icmp eq i32 %4, 0
  br i1 %253, label %280, label %254

254:                                              ; preds = %252
  %255 = load i32, ptr %121, align 8, !tbaa !54
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %254
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1014, ptr noundef nonnull @.str.1) #17
  br label %258

258:                                              ; preds = %254, %257
  %259 = load i32, ptr %129, align 8, !tbaa !53
  %260 = icmp eq i32 %259, 0
  %261 = icmp eq i32 %4, 2
  br i1 %260, label %272, label %262

262:                                              ; preds = %258
  %263 = load ptr, ptr %111, align 8, !tbaa !55
  br i1 %261, label %264, label %267

264:                                              ; preds = %262
  %265 = tail call ptr @plus_constant(ptr noundef %263, i64 noundef -1) #17
  %266 = tail call ptr @copy_to_mode_reg(i32 noundef %108, ptr noundef %265) #17
  br label %267

267:                                              ; preds = %264, %262
  %268 = phi ptr [ %266, %264 ], [ %263, %262 ]
  %269 = load ptr, ptr %6, align 8, !tbaa !52
  %270 = load i64, ptr %106, align 8, !tbaa !49
  %271 = tail call ptr @adjust_automodify_address_1(ptr noundef %269, i32 noundef 14, ptr noundef %268, i64 noundef %270, i32 noundef 1) #17
  br label %282

272:                                              ; preds = %258
  %273 = load i64, ptr %106, align 8, !tbaa !49
  br i1 %261, label %274, label %276

274:                                              ; preds = %272
  %275 = add nsw i64 %273, -1
  store i64 %275, ptr %106, align 8, !tbaa !49
  br label %276

276:                                              ; preds = %274, %272
  %277 = phi i64 [ %275, %274 ], [ %273, %272 ]
  %278 = load ptr, ptr %6, align 8, !tbaa !52
  %279 = tail call ptr @adjust_address_1(ptr noundef %278, i32 noundef 14, i64 noundef %277, i32 noundef 1, i32 noundef 1) #17
  br label %282

280:                                              ; preds = %252
  %281 = load ptr, ptr %6, align 8, !tbaa !52
  br label %282

282:                                              ; preds = %267, %276, %280
  %283 = phi ptr [ %281, %280 ], [ %271, %267 ], [ %279, %276 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #16
  ret ptr %283
}

; Function Attrs: optsize
declare ptr @copy_to_mode_reg(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_mode_alignment(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_by_pieces_1(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !9
  %7 = getelementptr inbounds %struct.move_by_pieces_d, ptr %2, i64 0, i32 8
  %8 = zext i8 %6 to i64
  %9 = load i64, ptr %7, align 8, !tbaa !60
  %10 = icmp ult i64 %9, %8
  br i1 %10, label %70, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.move_by_pieces_d, ptr %2, i64 0, i32 10
  %13 = getelementptr inbounds %struct.move_by_pieces_d, ptr %2, i64 0, i32 9
  %14 = getelementptr inbounds %struct.move_by_pieces_d, ptr %2, i64 0, i32 2
  %15 = getelementptr inbounds %struct.move_by_pieces_d, ptr %2, i64 0, i32 1
  %16 = getelementptr inbounds %struct.move_by_pieces_d, ptr %2, i64 0, i32 6
  %17 = getelementptr inbounds %struct.move_by_pieces_d, ptr %2, i64 0, i32 4
  %18 = getelementptr inbounds %struct.move_by_pieces_d, ptr %2, i64 0, i32 5
  %19 = load i32, ptr %12, align 8, !tbaa !54
  br label %20

20:                                               ; preds = %11, %66
  %21 = phi i32 [ %19, %11 ], [ %61, %66 ]
  %22 = phi ptr [ null, %11 ], [ %41, %66 ]
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i64, ptr %13, align 8, !tbaa !49
  %26 = sub nsw i64 %25, %8
  store i64 %26, ptr %13, align 8, !tbaa !49
  br label %27

27:                                               ; preds = %24, %20
  %28 = load ptr, ptr %2, align 8, !tbaa !52
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %14, align 8, !tbaa !53
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %15, align 8, !tbaa !55
  %35 = load i64, ptr %13, align 8, !tbaa !49
  %36 = tail call ptr @adjust_automodify_address_1(ptr noundef nonnull %28, i32 noundef %1, ptr noundef %34, i64 noundef %35, i32 noundef 1) #17
  br label %40

37:                                               ; preds = %30
  %38 = load i64, ptr %13, align 8, !tbaa !49
  %39 = tail call ptr @adjust_address_1(ptr noundef nonnull %28, i32 noundef %1, i64 noundef %38, i32 noundef 1, i32 noundef 1) #17
  br label %40

40:                                               ; preds = %33, %37, %27
  %41 = phi ptr [ %36, %33 ], [ %39, %37 ], [ %22, %27 ]
  %42 = load i32, ptr %16, align 8, !tbaa !57
  %43 = icmp eq i32 %42, 0
  %44 = load ptr, ptr %17, align 8, !tbaa !56
  br i1 %43, label %49, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %18, align 8, !tbaa !51
  %47 = load i64, ptr %13, align 8, !tbaa !49
  %48 = tail call ptr @adjust_automodify_address_1(ptr noundef %44, i32 noundef %1, ptr noundef %46, i64 noundef %47, i32 noundef 1) #17
  br label %52

49:                                               ; preds = %40
  %50 = load i64, ptr %13, align 8, !tbaa !49
  %51 = tail call ptr @adjust_address_1(ptr noundef %44, i32 noundef %1, i64 noundef %50, i32 noundef 1, i32 noundef 1) #17
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi ptr [ %48, %45 ], [ %51, %49 ]
  %54 = load ptr, ptr %2, align 8, !tbaa !52
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = tail call ptr (ptr, ...) %0(ptr noundef %41, ptr noundef %53) #17
  %58 = tail call ptr @emit_insn(ptr noundef %57) #17
  br label %60

59:                                               ; preds = %52
  tail call fastcc void @emit_single_push_insn(i32 noundef %1, ptr noundef %53, ptr noundef null) #18
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, ptr %12, align 8, !tbaa !54
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i64, ptr %13, align 8, !tbaa !49
  %65 = add nsw i64 %64, %8
  store i64 %65, ptr %13, align 8, !tbaa !49
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i64, ptr %7, align 8, !tbaa !60
  %68 = sub i64 %67, %8
  store i64 %68, ptr %7, align 8, !tbaa !60
  %69 = icmp ult i64 %68, %8
  br i1 %69, label %70, label %20, !llvm.loop !66

70:                                               ; preds = %66, %3
  ret void
}

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @adjust_automodify_address_1(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_block_move_hints(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  switch i32 %3, label %12 [
    i32 0, label %13
    i32 3, label %13
    i32 2, label %7
    i32 1, label %11
  ]

7:                                                ; preds = %6
  %8 = tail call fastcc zeroext i8 @block_move_libcall_safe_for_call_parm() #18
  %9 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !67
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !67
  br label %13

11:                                               ; preds = %6
  br label %13

12:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1193, ptr noundef nonnull @.str.1) #17
  br label %13

13:                                               ; preds = %6, %6, %12, %11, %7
  %14 = phi i8 [ undef, %12 ], [ 0, %11 ], [ %8, %7 ], [ 1, %6 ], [ 1, %6 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.mem_attrs, ptr %16, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !48
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.mem_attrs, ptr %22, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !48
  %27 = icmp uge i32 %20, %26
  br label %39

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %34

32:                                               ; preds = %18
  %33 = icmp ugt i32 %20, 7
  br i1 %33, label %48, label %46

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.mem_attrs, ptr %30, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !48
  %37 = icmp ult i32 %36, 9
  %38 = or i1 %17, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %34, %24
  %40 = phi i1 [ %27, %24 ], [ %37, %34 ]
  %41 = phi ptr [ %22, %24 ], [ %30, %34 ]
  %42 = select i1 %40, ptr %41, ptr %16
  %43 = getelementptr inbounds %struct.mem_attrs, ptr %42, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !48
  %45 = icmp ugt i32 %44, 7
  br i1 %45, label %48, label %46

46:                                               ; preds = %32, %39
  %47 = phi i32 [ %44, %39 ], [ %20, %32 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1197, ptr noundef nonnull @.str.1) #17
  br label %48

48:                                               ; preds = %34, %32, %28, %39, %46
  %49 = phi i32 [ %44, %39 ], [ %47, %46 ], [ 8, %32 ], [ 8, %28 ], [ 8, %34 ]
  %50 = load i32, ptr %0, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 43
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1199, ptr noundef nonnull @.str.1) #17
  br label %54

54:                                               ; preds = %48, %53
  %55 = load i32, ptr %1, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 43
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1200, ptr noundef nonnull @.str.1) #17
  br label %59

59:                                               ; preds = %54, %58
  %60 = icmp eq ptr %2, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1201, ptr noundef nonnull @.str.1) #17
  br label %62

62:                                               ; preds = %59, %61
  %63 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 0, i32 noundef 1, i32 noundef 1) #17
  %64 = tail call ptr @adjust_address_1(ptr noundef nonnull %1, i32 noundef 1, i64 noundef 0, i32 noundef 1, i32 noundef 1) #17
  %65 = load i32, ptr %2, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 30
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !9
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %131, label %72

72:                                               ; preds = %68
  %73 = tail call ptr @shallow_copy_rtx_stat(ptr noundef %63) #17
  %74 = tail call ptr @shallow_copy_rtx_stat(ptr noundef %64) #17
  tail call void @set_mem_size(ptr noundef %73, ptr noundef nonnull %2) #17
  tail call void @set_mem_size(ptr noundef %74, ptr noundef nonnull %2) #17
  %75 = load i32, ptr %2, align 8
  br label %76

76:                                               ; preds = %72, %62
  %77 = phi i32 [ %75, %72 ], [ %65, %62 ]
  %78 = phi ptr [ %74, %72 ], [ %64, %62 ]
  %79 = phi ptr [ %73, %72 ], [ %63, %62 ]
  %80 = and i32 %77, 65535
  %81 = icmp eq i32 %80, 30
  br i1 %81, label %82, label %99

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !9
  %85 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %84, i32 noundef %49) #18
  %86 = tail call zeroext i8 @optimize_insn_for_speed_p() #17
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = load ptr, ptr @ix86_cost, align 8, !tbaa !5
  %90 = getelementptr inbounds %struct.processor_costs, ptr %89, i64 0, i32 10
  %91 = load i32, ptr %90, align 4, !tbaa !31
  %92 = zext i32 %91 to i64
  br label %93

93:                                               ; preds = %82, %88
  %94 = phi i64 [ %92, %88 ], [ 3, %82 ]
  %95 = icmp ult i64 %85, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i64, ptr %83, align 8, !tbaa !9
  %98 = tail call ptr @move_by_pieces(ptr noundef %79, ptr noundef %78, i64 noundef %97, i32 noundef %49, i32 noundef 0) #18
  br label %125

99:                                               ; preds = %93, %76
  %100 = tail call fastcc zeroext i8 @emit_block_move_via_movmem(ptr noundef %79, ptr noundef %78, ptr noundef nonnull %2, i32 noundef %49, i32 noundef %4, i64 noundef %5) #18
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %99
  %103 = icmp eq i8 %14, 0
  br i1 %103, label %124, label %104

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !9
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.mem_attrs, ptr %106, i64 0, i32 5
  %110 = load i8, ptr %109, align 8, !tbaa !29
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %104, %108
  %113 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !9
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.mem_attrs, ptr %114, i64 0, i32 5
  %118 = load i8, ptr %117, align 8, !tbaa !29
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %112, %116
  %121 = icmp eq i32 %3, 3
  %122 = zext i1 %121 to i8
  %123 = tail call ptr @emit_block_move_via_libcall(ptr noundef nonnull %79, ptr noundef nonnull %78, ptr noundef nonnull %2, i8 noundef zeroext %122) #18
  br label %125

124:                                              ; preds = %116, %108, %102
  tail call fastcc void @emit_block_move_via_loop(ptr noundef %79, ptr noundef %78, ptr noundef nonnull %2) #18
  br label %125

125:                                              ; preds = %99, %124, %120, %96
  %126 = phi ptr [ null, %96 ], [ null, %99 ], [ %123, %120 ], [ null, %124 ]
  %127 = icmp eq i32 %3, 2
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !67
  %130 = add nsw i32 %129, -1
  store i32 %130, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !67
  br label %131

131:                                              ; preds = %125, %128, %68
  %132 = phi ptr [ null, %68 ], [ %126, %128 ], [ %126, %125 ]
  ret ptr %132
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @block_move_libcall_safe_for_call_parm() unnamed_addr #0 {
  %1 = alloca %struct.ix86_args, align 4
  %2 = load i32, ptr @target_flags, align 4, !tbaa !22
  %3 = and i32 %2, 8196
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = tail call i32 @ix86_cfun_abi() #17
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %63

8:                                                ; preds = %5, %0
  %9 = tail call fastcc ptr @emit_block_move_libcall_fn(i32 noundef 0) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  br label %14

14:                                               ; preds = %8, %11
  %15 = phi ptr [ %13, %11 ], [ null, %8 ]
  %16 = tail call i32 @ix86_function_type_abi(ptr noundef %15) #17
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %9) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %18, %14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #16
  %22 = tail call fastcc ptr @emit_block_move_libcall_fn(i32 noundef 0) #18
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  call void @init_cumulative_args(ptr noundef nonnull %1, ptr noundef %24, ptr noundef null, ptr noundef null) #17
  %25 = load ptr, ptr %23, align 8, !tbaa !9
  %26 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !9
  %28 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !5
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %61, label %30

30:                                               ; preds = %21, %56
  %31 = phi ptr [ %58, %56 ], [ %27, %21 ]
  %32 = getelementptr inbounds %struct.tree_list, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !9
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 14
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @vector_type_mode(ptr noundef nonnull %33) #17
  br label %44

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  br label %44

44:                                               ; preds = %39, %37
  %45 = phi i32 [ %38, %37 ], [ %43, %39 ]
  %46 = call ptr @function_arg(ptr noundef nonnull %1, i32 noundef %45, ptr noundef null, i32 noundef 1) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %46, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 37
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !76
  %54 = call i32 %53(ptr noundef nonnull %1, i32 noundef %45, ptr noundef null, i8 noundef zeroext 1) #17
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  call void @function_arg_advance(ptr noundef nonnull %1, i32 noundef %45, ptr noundef null, i32 noundef 1) #17
  %57 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !9
  %59 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !5
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %61, label %30, !llvm.loop !77

61:                                               ; preds = %52, %44, %48, %56, %21
  %62 = phi i8 [ 1, %21 ], [ 1, %56 ], [ 0, %48 ], [ 0, %44 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #16
  br label %63

63:                                               ; preds = %61, %18, %5
  %64 = phi i8 [ 1, %5 ], [ 0, %18 ], [ %62, %61 ]
  ret i8 %64
}

; Function Attrs: optsize
declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @emit_block_move_via_movmem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 {
  %7 = lshr i32 %3, 3
  %8 = zext nneg i32 %7 to i64
  %9 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %8) #17
  %10 = load i32, ptr @volatile_ok, align 4, !tbaa !22
  store i32 1, ptr @volatile_ok, align 4, !tbaa !22
  %11 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %96, label %13

13:                                               ; preds = %6
  %14 = tail call i32 @llvm.umax.i32(i32 %4, i32 %3)
  %15 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %16 = lshr i32 %14, 3
  %17 = zext nneg i32 %16 to i64
  br label %18

18:                                               ; preds = %13, %92
  %19 = phi i8 [ %11, %13 ], [ %94, %92 ]
  %20 = zext i8 %19 to i32
  %21 = zext i8 %19 to i64
  %22 = getelementptr inbounds [87 x i32], ptr @movmem_optab, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !22
  %24 = icmp eq i32 %23, 2956
  br i1 %24, label %92, label %25

25:                                               ; preds = %18
  %26 = load i32, ptr %2, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 30
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i64, ptr %15, align 8, !tbaa !9
  %31 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %21
  %32 = load i64, ptr %31, align 8, !tbaa !78
  %33 = lshr i64 %32, 1
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29, %25
  %36 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %37 = load i8, ptr %36, align 1, !tbaa !9
  %38 = icmp ugt i8 %37, 3
  br i1 %38, label %39, label %92

39:                                               ; preds = %35, %29
  %40 = sext i32 %23 to i64
  %41 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %40, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !13
  %43 = load ptr, ptr %42, align 8, !tbaa !15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = tail call i32 %43(ptr noundef %0, i32 noundef 1) #17
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %92, label %48

48:                                               ; preds = %45, %39
  %49 = getelementptr inbounds %struct.insn_operand_data, ptr %42, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = tail call i32 %50(ptr noundef %1, i32 noundef 1) #17
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %92, label %55

55:                                               ; preds = %52, %48
  %56 = getelementptr inbounds %struct.insn_operand_data, ptr %42, i64 3
  %57 = load ptr, ptr %56, align 8, !tbaa !15
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = tail call i32 %57(ptr noundef %9, i32 noundef 0) #17
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %92, label %62

62:                                               ; preds = %59, %55
  %63 = tail call ptr @get_last_insn() #17
  %64 = tail call ptr @convert_to_mode(i32 noundef %20, ptr noundef nonnull %2, i32 noundef 1) #18
  %65 = getelementptr inbounds %struct.insn_operand_data, ptr %42, i64 2
  %66 = load ptr, ptr %65, align 8, !tbaa !15
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = tail call i32 %66(ptr noundef %64, i32 noundef %20) #17
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = tail call ptr @copy_to_mode_reg(i32 noundef %20, ptr noundef %64) #17
  br label %73

73:                                               ; preds = %71, %68, %62
  %74 = phi ptr [ %64, %68 ], [ %72, %71 ], [ %64, %62 ]
  %75 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %40, i32 4
  %76 = load i8, ptr %75, align 8, !tbaa !79
  %77 = icmp eq i8 %76, 4
  %78 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %40, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !64
  br i1 %77, label %80, label %82

80:                                               ; preds = %73
  %81 = tail call ptr (ptr, ...) %79(ptr noundef %0, ptr noundef %1, ptr noundef %74, ptr noundef %9) #17
  br label %86

82:                                               ; preds = %73
  %83 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %17) #17
  %84 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %5) #17
  %85 = tail call ptr (ptr, ...) %79(ptr noundef %0, ptr noundef %1, ptr noundef %74, ptr noundef %9, ptr noundef %83, ptr noundef %84) #17
  br label %86

86:                                               ; preds = %82, %80
  %87 = phi ptr [ %81, %80 ], [ %85, %82 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  tail call void @delete_insns_since(ptr noundef %63) #17
  br label %92

90:                                               ; preds = %86
  %91 = tail call ptr @emit_insn(ptr noundef nonnull %87) #17
  br label %96

92:                                               ; preds = %89, %59, %52, %45, %35, %18
  %93 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %21
  %94 = load i8, ptr %93, align 1, !tbaa !9
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %18, !llvm.loop !80

96:                                               ; preds = %92, %6, %90
  %97 = phi i8 [ 1, %90 ], [ 0, %6 ], [ 0, %92 ]
  store i32 %10, ptr @volatile_ok, align 4, !tbaa !22
  ret i8 %97
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_block_move_via_libcall(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = tail call ptr @copy_to_mode_reg(i32 noundef 16, ptr noundef %6) #17
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = tail call ptr @copy_to_mode_reg(i32 noundef 16, ptr noundef %9) #17
  %11 = load i32, ptr @ptr_mode, align 4, !tbaa !22
  %12 = tail call ptr @convert_memory_address_addr_space(i32 noundef %11, ptr noundef %7, i8 noundef zeroext 0) #17
  %13 = load i32, ptr @ptr_mode, align 4, !tbaa !22
  %14 = tail call ptr @convert_memory_address_addr_space(i32 noundef %13, ptr noundef %10, i8 noundef zeroext 0) #17
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !5
  %16 = tail call ptr @make_tree(ptr noundef %15, ptr noundef %12) #17
  %17 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !5
  %18 = tail call ptr @make_tree(ptr noundef %17, ptr noundef %14) #17
  %19 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 14
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = tail call i32 @vector_type_mode(ptr noundef nonnull %19) #17
  br label %30

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  br label %30

30:                                               ; preds = %25, %23
  %31 = phi i32 [ %24, %23 ], [ %29, %25 ]
  %32 = tail call ptr @convert_to_mode(i32 noundef %31, ptr noundef %2, i32 noundef 1) #18
  %33 = tail call ptr @copy_to_mode_reg(i32 noundef %31, ptr noundef %32) #17
  %34 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %35 = tail call ptr @make_tree(ptr noundef %34, ptr noundef %33) #17
  %36 = tail call fastcc ptr @emit_block_move_libcall_fn(i32 noundef 1) #18
  %37 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %36, i32 noundef 3, ptr noundef %16, ptr noundef %18, ptr noundef %35) #17
  %38 = load i64, ptr %37, align 8
  %39 = and i8 %3, 1
  %40 = zext nneg i8 %39 to i64
  %41 = shl nuw nsw i64 %40, 18
  %42 = and i64 %38, -262145
  %43 = or disjoint i64 %42, %41
  store i64 %43, ptr %37, align 8
  %44 = tail call fastcc ptr @expand_normal(ptr noundef nonnull %37) #18
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_block_move_via_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %7, i64 0, i32 5
  %11 = load i8, ptr %10, align 8, !tbaa !29
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi i8 [ %11, %9 ], [ 0, %3 ]
  %14 = tail call i32 %4(i8 noundef zeroext %13) #17
  %15 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %17 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.mem_attrs, ptr %18, i64 0, i32 5
  %22 = load i8, ptr %21, align 8, !tbaa !29
  br label %23

23:                                               ; preds = %12, %20
  %24 = phi i8 [ %22, %20 ], [ 0, %12 ]
  %25 = tail call i32 %15(i8 noundef zeroext %24) #17
  %26 = load i32, ptr %2, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 0
  %30 = load i32, ptr @word_mode, align 4
  %31 = select i1 %29, i32 %30, i32 %28
  %32 = tail call ptr @gen_label_rtx() #17
  %33 = tail call ptr @gen_label_rtx() #17
  %34 = tail call ptr @gen_reg_rtx(i32 noundef %31) #17
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %36 = tail call ptr @emit_move_insn(ptr noundef %34, ptr noundef %35) #18
  %37 = load ptr, ptr %5, align 8, !tbaa !9
  %38 = tail call ptr @force_operand(ptr noundef %37, ptr noundef null) #18
  %39 = load ptr, ptr %16, align 8, !tbaa !9
  %40 = tail call ptr @force_operand(ptr noundef %39, ptr noundef null) #18
  tail call void @do_pending_stack_adjust() #17
  tail call void @emit_jump(ptr noundef %33) #17
  %41 = tail call ptr @emit_label(ptr noundef %32) #17
  %42 = tail call ptr @convert_modes(i32 noundef %14, i32 noundef %31, ptr noundef %34, i32 noundef 1) #18
  %43 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %14, ptr noundef %38, ptr noundef %42) #17
  %44 = icmp eq i32 %14, %25
  br i1 %44, label %47, label %45

45:                                               ; preds = %23
  %46 = tail call ptr @convert_modes(i32 noundef %25, i32 noundef %31, ptr noundef %34, i32 noundef 1) #18
  br label %47

47:                                               ; preds = %45, %23
  %48 = phi ptr [ %46, %45 ], [ %42, %23 ]
  %49 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %25, ptr noundef %40, ptr noundef %48) #17
  %50 = tail call ptr @change_address(ptr noundef nonnull %0, i32 noundef 14, ptr noundef %43) #17
  %51 = tail call ptr @change_address(ptr noundef nonnull %1, i32 noundef 14, ptr noundef %49) #17
  %52 = tail call ptr @emit_move_insn(ptr noundef %50, ptr noundef %51) #18
  %53 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !5
  %54 = tail call ptr @expand_simple_binop(i32 noundef %31, i32 noundef 49, ptr noundef %34, ptr noundef %53, ptr noundef %34, i32 noundef 1, i32 noundef 3) #17
  %55 = icmp eq ptr %54, %34
  br i1 %55, label %58, label %56

56:                                               ; preds = %47
  %57 = tail call ptr @emit_move_insn(ptr noundef %34, ptr noundef %54) #18
  br label %58

58:                                               ; preds = %56, %47
  %59 = tail call ptr @emit_label(ptr noundef %33) #17
  tail call void @emit_cmp_and_jump_insns(ptr noundef %34, ptr noundef nonnull %2, i32 noundef 85, ptr noundef null, i32 noundef %31, i32 noundef 1, ptr noundef %32) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_block_move(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @emit_block_move_hints(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0, i64 noundef -1) #18
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_block_move_libcall_fn(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @block_move_fn, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  tail call void @init_block_move_fn(ptr noundef null) #18
  %5 = load ptr, ptr @block_move_fn, align 8, !tbaa !5
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %8 = icmp eq i32 %0, 0
  %9 = load i1, ptr @emit_block_move_libcall_fn.emitted_extern, align 1
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  store i1 true, ptr @emit_block_move_libcall_fn.emitted_extern, align 1
  tail call void @make_decl_rtl(ptr noundef %7) #17
  %12 = load ptr, ptr @block_move_fn, align 8, !tbaa !5
  tail call void @assemble_external(ptr noundef %12) #17
  %13 = load ptr, ptr @block_move_fn, align 8, !tbaa !5
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi ptr [ %13, %11 ], [ %7, %6 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_normal(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_block_move_fn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @block_move_fn, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = tail call ptr @get_identifier(ptr noundef nonnull @.str.2) #17
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !5
  %7 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 40), align 16, !tbaa !5
  %8 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %9 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %6, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef null) #17
  %10 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %5, ptr noundef %9) #17
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = load i64, ptr %10, align 8
  %14 = or i64 %12, 33558528
  store i64 %14, ptr %11, align 8
  %15 = or i64 %13, 167772160
  store i64 %15, ptr %10, align 8
  %16 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %10, i64 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, -7169
  %19 = or disjoint i32 %18, 4096
  store i32 %19, ptr %16, align 8
  store ptr %10, ptr @block_move_fn, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %4, %1
  %21 = phi ptr [ %10, %4 ], [ %2, %1 ]
  %22 = icmp eq ptr %0, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @set_user_assembler_name(ptr noundef nonnull %21, ptr noundef nonnull %0) #17
  br label %24

24:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_function_type_list(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_user_assembler_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @move_block_to_reg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !22
  %12 = icmp eq i32 %11, 9
  br i1 %12, label %13, label %19

13:                                               ; preds = %6
  %14 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %1) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call ptr @force_const_mem(i32 noundef %3, ptr noundef nonnull %1) #17
  %18 = tail call ptr @validize_mem(ptr noundef %17) #17
  br label %19

19:                                               ; preds = %16, %13, %6
  %20 = phi ptr [ %1, %13 ], [ %18, %16 ], [ %1, %6 ]
  %21 = icmp sgt i32 %2, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19, %22
  %23 = phi i32 [ %29, %22 ], [ 0, %19 ]
  %24 = load i32, ptr @word_mode, align 4, !tbaa !22
  %25 = add nsw i32 %23, %0
  %26 = tail call ptr @gen_rtx_REG(i32 noundef %24, i32 noundef %25) #17
  %27 = tail call ptr @operand_subword_force(ptr noundef %20, i32 noundef %23, i32 noundef %3) #17
  %28 = tail call ptr @emit_move_insn(ptr noundef %26, ptr noundef %27) #18
  %29 = add nuw nsw i32 %23, 1
  %30 = icmp eq i32 %29, %2
  br i1 %30, label %31, label %22, !llvm.loop !81

31:                                               ; preds = %22, %19, %4
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @legitimate_constant_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @validize_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @operand_subword_force(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @move_block_from_reg(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %3, %10
  %6 = phi i32 [ %15, %10 ], [ 0, %3 ]
  %7 = tail call ptr @operand_subword(ptr noundef %1, i32 noundef %6, i32 noundef 1, i32 noundef 1) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1597, ptr noundef nonnull @.str.1) #17
  br label %10

10:                                               ; preds = %5, %9
  %11 = load i32, ptr @word_mode, align 4, !tbaa !22
  %12 = add nsw i32 %6, %0
  %13 = tail call ptr @gen_rtx_REG(i32 noundef %11, i32 noundef %12) #17
  %14 = tail call ptr @emit_move_insn(ptr noundef %7, ptr noundef %13) #18
  %15 = add nuw nsw i32 %6, 1
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %5, !llvm.loop !82

17:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_group_rtx(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 15
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1615, ptr noundef nonnull @.str.1) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = load i32, ptr %8, align 8, !tbaa !83
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = alloca i8, i64 %11, align 16
  %13 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = icmp eq ptr %16, null
  %18 = zext i1 %17 to i32
  br i1 %17, label %19, label %20

19:                                               ; preds = %6
  store ptr null, ptr %12, align 16, !tbaa !5
  br label %20

20:                                               ; preds = %19, %6
  %21 = icmp sgt i32 %9, %18
  br i1 %21, label %22, label %42

22:                                               ; preds = %20
  %23 = zext i1 %17 to i64
  %24 = zext nneg i32 %9 to i64
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi i64 [ %23, %22 ], [ %40, %25 ]
  %27 = load ptr, ptr %7, align 8, !tbaa !9
  %28 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !9
  %37 = tail call ptr @gen_reg_rtx(i32 noundef %34) #17
  %38 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %37, ptr noundef %36) #17
  %39 = getelementptr inbounds ptr, ptr %12, i64 %26
  store ptr %38, ptr %39, align 8, !tbaa !5
  %40 = add nuw nsw i64 %26, 1
  %41 = icmp eq i64 %40, %24
  br i1 %41, label %42, label %25, !llvm.loop !85

42:                                               ; preds = %25, %20
  %43 = load i32, ptr %0, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = call ptr @gen_rtvec_v(i32 noundef %9, ptr noundef nonnull %12) #17
  %47 = call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef %45, ptr noundef %46) #17
  ret ptr %47
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtvec_v(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_group_load(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = load i32, ptr %6, align 8, !tbaa !83
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = alloca i8, i64 %9, align 16
  call fastcc void @emit_group_load_1(ptr noundef nonnull %10, ptr noundef %0, ptr noundef %1, i32 noundef %3) #18
  %11 = load ptr, ptr %5, align 8, !tbaa !9
  %12 = load i32, ptr %11, align 8, !tbaa !83
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %4, %29
  %15 = phi i32 [ %30, %29 ], [ %12, %4 ]
  %16 = phi ptr [ %31, %29 ], [ %11, %4 ]
  %17 = phi i64 [ %32, %29 ], [ 0, %4 ]
  %18 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds ptr, ptr %10, i64 %17
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = tail call ptr @emit_move_insn(ptr noundef nonnull %21, ptr noundef %25) #18
  %27 = load ptr, ptr %5, align 8, !tbaa !9
  %28 = load i32, ptr %27, align 8, !tbaa !83
  br label %29

29:                                               ; preds = %14, %23
  %30 = phi i32 [ %15, %14 ], [ %28, %23 ]
  %31 = phi ptr [ %16, %14 ], [ %27, %23 ]
  %32 = add nuw nsw i64 %17, 1
  %33 = sext i32 %30 to i64
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %14, label %35, !llvm.loop !86

35:                                               ; preds = %29, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_group_load_1(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = sext i32 %3 to i64
  br label %8

8:                                                ; preds = %39, %4
  %9 = phi ptr [ %2, %4 ], [ %40, %39 ]
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = load i32, ptr %1, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 15
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1648, ptr noundef nonnull @.str.1) #17
  br label %17

17:                                               ; preds = %8, %16
  %18 = icmp eq i32 %12, 0
  br i1 %18, label %51, label %19

19:                                               ; preds = %17
  %20 = zext nneg i32 %12 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !9
  %23 = and i8 %22, -2
  %24 = icmp eq i8 %23, 2
  br i1 %24, label %51, label %25

25:                                               ; preds = %19
  %26 = load i32, ptr %9, align 8
  %27 = trunc i32 %26 to i16
  switch i16 %27, label %28 [
    i16 43, label %51
    i16 41, label %51
  ]

28:                                               ; preds = %25
  %29 = lshr i32 %26, 16
  %30 = and i32 %29, 255
  %31 = tail call i32 @int_mode_for_mode(i32 noundef %30) #17
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i32, ptr %9, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = tail call ptr @assign_stack_temp(i32 noundef %36, i64 noundef %7, i32 noundef 0) #17
  %38 = tail call ptr @emit_move_insn(ptr noundef %37, ptr noundef nonnull %9) #18
  br label %39

39:                                               ; preds = %33, %41
  %40 = phi ptr [ %50, %41 ], [ %37, %33 ]
  br label %8

41:                                               ; preds = %28
  %42 = tail call ptr @gen_reg_rtx(i32 noundef %31) #17
  %43 = load ptr, ptr @rtl_hooks, align 8, !tbaa !20
  %44 = load i32, ptr %9, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = tail call ptr %43(i32 noundef %46, ptr noundef %42) #17
  %48 = tail call ptr @emit_move_insn(ptr noundef %47, ptr noundef nonnull %9) #18
  %49 = load ptr, ptr @rtl_hooks, align 8, !tbaa !20
  %50 = tail call ptr %49(i32 noundef %31, ptr noundef %47) #17
  br label %39

51:                                               ; preds = %19, %25, %25, %17
  %52 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !9
  %54 = getelementptr inbounds %struct.rtvec_def, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !9
  %58 = icmp eq ptr %57, null
  %59 = zext i1 %58 to i32
  %60 = load i32, ptr %53, align 8, !tbaa !83
  %61 = icmp sgt i32 %60, %59
  br i1 %61, label %62, label %290

62:                                               ; preds = %51
  %63 = icmp sgt i32 %3, -1
  %64 = zext nneg i32 %3 to i64
  %65 = zext i1 %58 to i64
  br label %66

66:                                               ; preds = %62, %284
  %67 = phi i64 [ %65, %62 ], [ %285, %284 ]
  %68 = phi ptr [ %53, %62 ], [ %286, %284 ]
  %69 = getelementptr inbounds %struct.rtvec_def, ptr %68, i64 0, i32 1, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !9
  %73 = load i32, ptr %72, align 8
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 255
  %76 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !9
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !9
  %80 = zext nneg i32 %75 to i64
  %81 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !9
  %83 = zext i8 %82 to i32
  %84 = zext i8 %82 to i64
  %85 = add nsw i64 %79, %84
  %86 = icmp sgt i64 %85, %64
  %87 = select i1 %63, i1 %86, i1 false
  br i1 %87, label %88, label %93

88:                                               ; preds = %66
  %89 = trunc i64 %79 to i32
  %90 = sub i32 %3, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1700, ptr noundef nonnull @.str.1) #17
  br label %93

93:                                               ; preds = %92, %88, %66
  %94 = phi i32 [ %90, %88 ], [ 0, %92 ], [ %83, %66 ]
  %95 = load i32, ptr %9, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 43
  br i1 %97, label %117, label %98

98:                                               ; preds = %93
  %99 = zext nneg i32 %96 to i64
  %100 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !22
  %102 = icmp eq i32 %101, 9
  %103 = lshr i32 %95, 16
  %104 = and i32 %103, 255
  br i1 %102, label %105, label %109

105:                                              ; preds = %98
  %106 = icmp eq i32 %104, %75
  %107 = icmp eq i32 %104, 0
  %108 = or i1 %106, %107
  br i1 %108, label %117, label %112

109:                                              ; preds = %98
  %110 = icmp eq i32 %104, 0
  %111 = select i1 %110, i32 %75, i32 %104
  br label %112

112:                                              ; preds = %109, %105
  %113 = phi i32 [ %104, %105 ], [ %111, %109 ]
  %114 = call ptr @gen_reg_rtx(i32 noundef %113) #17
  %115 = call ptr @emit_move_insn(ptr noundef %114, ptr noundef nonnull %9) #18
  %116 = load i32, ptr %114, align 8
  br label %117

117:                                              ; preds = %112, %105, %93
  %118 = phi i32 [ %95, %93 ], [ %116, %112 ], [ %95, %105 ]
  %119 = phi ptr [ %9, %93 ], [ %114, %112 ], [ %9, %105 ]
  %120 = and i32 %118, 65535
  %121 = icmp eq i32 %120, 43
  br i1 %121, label %122, label %137

122:                                              ; preds = %117
  %123 = shl nsw i64 %79, 3
  %124 = call i32 @get_mode_alignment(i32 noundef %75) #17
  %125 = zext i32 %124 to i64
  %126 = srem i64 %123, %125
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %122
  %129 = load i8, ptr %81, align 1, !tbaa !9
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %94, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = call ptr @gen_reg_rtx(i32 noundef %75) #17
  %134 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %133, ptr %134, align 8, !tbaa !5
  %135 = call ptr @adjust_address_1(ptr noundef nonnull %119, i32 noundef %75, i64 noundef %79, i32 noundef 1, i32 noundef 1) #17
  %136 = call ptr @emit_move_insn(ptr noundef %133, ptr noundef %135) #18
  br label %284

137:                                              ; preds = %128, %122, %117
  %138 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %80
  %139 = load i8, ptr %138, align 1, !tbaa !9
  %140 = and i8 %139, -2
  %141 = icmp eq i8 %140, 10
  %142 = load i32, ptr %119, align 8
  br i1 %141, label %143, label %153

143:                                              ; preds = %137
  %144 = lshr i32 %142, 16
  %145 = and i32 %144, 255
  %146 = icmp eq i32 %145, %75
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load i8, ptr %81, align 1, !tbaa !9
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %94, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %119, ptr %152, align 8, !tbaa !5
  br label %284

153:                                              ; preds = %137, %147, %143
  %154 = and i32 %142, 65535
  %155 = icmp eq i32 %154, 41
  br i1 %155, label %156, label %217

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !9
  %159 = load i32, ptr %158, align 8
  %160 = lshr i32 %159, 16
  %161 = and i32 %160, 255
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !9
  %165 = icmp eq i64 %79, 0
  %166 = zext i8 %164 to i32
  %167 = icmp eq i32 %94, %166
  %168 = select i1 %165, i1 %167, i1 false
  br i1 %168, label %180, label %169

169:                                              ; preds = %156
  %170 = lshr i32 %142, 16
  %171 = and i32 %170, 255
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !9
  %175 = zext i32 %94 to i64
  %176 = add nsw i64 %79, %175
  %177 = zext i8 %174 to i64
  %178 = icmp sgt i64 %176, %177
  %179 = select i1 %165, i1 true, i1 %178
  br i1 %179, label %204, label %180

180:                                              ; preds = %169, %156
  %181 = zext i8 %164 to i64
  %182 = sdiv i64 %79, %181
  %183 = srem i64 %79, %181
  %184 = getelementptr inbounds [1 x %union.rtunion_def], ptr %157, i64 0, i64 %182
  %185 = load ptr, ptr %184, align 8, !tbaa !9
  %186 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %185, ptr %186, align 8, !tbaa !5
  %187 = load i32, ptr %185, align 8
  %188 = and i32 %187, 65535
  %189 = zext nneg i32 %188 to i64
  %190 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !22
  %192 = icmp eq i32 %191, 9
  br i1 %192, label %284, label %193

193:                                              ; preds = %180
  %194 = icmp eq i32 %188, 37
  br i1 %194, label %195, label %199

195:                                              ; preds = %193
  %196 = lshr i32 %187, 16
  %197 = and i32 %196, 255
  %198 = icmp eq i32 %197, %75
  br i1 %198, label %284, label %199

199:                                              ; preds = %195, %193
  %200 = shl i32 %94, 3
  %201 = zext i32 %200 to i64
  %202 = shl nsw i64 %183, 3
  %203 = call ptr @extract_bit_field(ptr noundef nonnull %185, i64 noundef %201, i64 noundef %202, i32 noundef 1, ptr noundef null, i32 noundef %75, i32 noundef %75) #17
  store ptr %203, ptr %186, align 8, !tbaa !5
  br label %284

204:                                              ; preds = %169
  br i1 %165, label %209, label %205

205:                                              ; preds = %204
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1758, ptr noundef nonnull @.str.1) #17
  %206 = load i32, ptr %119, align 8
  %207 = lshr i32 %206, 16
  %208 = and i32 %207, 255
  br label %209

209:                                              ; preds = %204, %205
  %210 = phi i32 [ %171, %204 ], [ %208, %205 ]
  %211 = call ptr @assign_stack_temp(i32 noundef %210, i64 noundef %177, i32 noundef 0) #17
  %212 = call ptr @emit_move_insn(ptr noundef %211, ptr noundef nonnull %119) #18
  %213 = shl i32 %94, 3
  %214 = zext i32 %213 to i64
  %215 = call ptr @extract_bit_field(ptr noundef %211, i64 noundef %214, i64 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %75, i32 noundef %75) #17
  %216 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %215, ptr %216, align 8, !tbaa !5
  br label %284

217:                                              ; preds = %153
  %218 = load i32, ptr %1, align 8
  %219 = lshr i32 %218, 16
  %220 = and i32 %219, 255
  %221 = zext nneg i32 %220 to i64
  %222 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !9
  %224 = add i8 %223, -12
  %225 = icmp ult i8 %224, 6
  %226 = icmp eq i32 %154, 37
  %227 = and i1 %226, %225
  br i1 %227, label %228, label %241

228:                                              ; preds = %217
  %229 = lshr i32 %142, 16
  %230 = and i32 %229, 255
  %231 = zext nneg i32 %230 to i64
  %232 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !9
  %234 = zext i8 %233 to i64
  %235 = call ptr @assign_stack_temp(i32 noundef %230, i64 noundef %234, i32 noundef 0) #17
  %236 = call ptr @emit_move_insn(ptr noundef %235, ptr noundef nonnull %119) #18
  %237 = shl i64 %79, 32
  %238 = ashr exact i64 %237, 32
  %239 = call ptr @adjust_address_1(ptr noundef %235, i32 noundef %75, i64 noundef %238, i32 noundef 1, i32 noundef 1) #17
  %240 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %239, ptr %240, align 8, !tbaa !5
  br label %284

241:                                              ; preds = %217
  %242 = zext nneg i32 %154 to i64
  %243 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !22
  %245 = icmp eq i32 %244, 9
  br i1 %245, label %246, label %271

246:                                              ; preds = %241
  %247 = icmp eq i32 %220, 1
  br i1 %247, label %256, label %248

248:                                              ; preds = %246
  %249 = load ptr, ptr %52, align 8, !tbaa !9
  %250 = load i32, ptr %249, align 8, !tbaa !83
  %251 = icmp sgt i32 %250, 1
  br i1 %251, label %252, label %256

252:                                              ; preds = %248
  %253 = trunc i64 %79 to i32
  %254 = call ptr @simplify_gen_subreg(i32 noundef %75, ptr noundef nonnull %119, i32 noundef %220, i32 noundef %253) #17
  %255 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %254, ptr %255, align 8, !tbaa !5
  br label %284

256:                                              ; preds = %248, %246
  %257 = zext i32 %94 to i64
  %258 = icmp eq i64 %257, %7
  br i1 %258, label %259, label %261

259:                                              ; preds = %256
  %260 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %119, ptr %260, align 8, !tbaa !5
  br label %284

261:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %262 = shl nuw nsw i64 %257, 1
  %263 = icmp eq i64 %262, %7
  br i1 %263, label %265, label %264

264:                                              ; preds = %261
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1791, ptr noundef nonnull @.str.1) #17
  br label %265

265:                                              ; preds = %261, %264
  call void @split_double(ptr noundef nonnull %119, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %266 = icmp eq i64 %67, 0
  %267 = load ptr, ptr %5, align 8
  %268 = load ptr, ptr %6, align 8
  %269 = select i1 %266, ptr %267, ptr %268
  %270 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %269, ptr %270, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %284

271:                                              ; preds = %241
  br i1 %226, label %272, label %278

272:                                              ; preds = %271
  %273 = lshr i32 %142, 16
  %274 = and i32 %273, 255
  %275 = icmp eq i32 %274, %75
  br i1 %275, label %276, label %278

276:                                              ; preds = %272
  %277 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %119, ptr %277, align 8, !tbaa !5
  br label %284

278:                                              ; preds = %272, %271
  %279 = shl i32 %94, 3
  %280 = zext i32 %279 to i64
  %281 = shl nsw i64 %79, 3
  %282 = call ptr @extract_bit_field(ptr noundef nonnull %119, i64 noundef %280, i64 noundef %281, i32 noundef 1, ptr noundef null, i32 noundef %75, i32 noundef %75) #17
  %283 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %282, ptr %283, align 8, !tbaa !5
  br label %284

284:                                              ; preds = %132, %252, %276, %278, %228, %151, %180, %195, %199, %209, %265, %259
  %285 = add nuw nsw i64 %67, 1
  %286 = load ptr, ptr %52, align 8, !tbaa !9
  %287 = load i32, ptr %286, align 8, !tbaa !83
  %288 = trunc i64 %285 to i32
  %289 = icmp sgt i32 %287, %288
  br i1 %289, label %66, label %290, !llvm.loop !87

290:                                              ; preds = %284, %51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_group_load_into_temps(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = load i32, ptr %6, align 8, !tbaa !83
  %8 = tail call ptr @rtvec_alloc(i32 noundef %7) #17
  %9 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1
  tail call fastcc void @emit_group_load_1(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %1, i32 noundef %3) #18
  %10 = load ptr, ptr %5, align 8, !tbaa !9
  %11 = load i32, ptr %10, align 8, !tbaa !83
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %4, %34
  %14 = phi i64 [ %37, %34 ], [ 0, %4 ]
  %15 = phi ptr [ %38, %34 ], [ %10, %4 ]
  %16 = getelementptr inbounds %struct.rtvec_def, ptr %15, i64 0, i32 1, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %13
  %22 = load i32, ptr %19, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1, i64 %14
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = tail call ptr @force_reg(i32 noundef %24, ptr noundef %26) #17
  %28 = load i32, ptr %17, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  %33 = tail call ptr @alloc_EXPR_LIST(i32 noundef %30, ptr noundef %27, ptr noundef %32) #17
  br label %34

34:                                               ; preds = %21, %13
  %35 = phi ptr [ %33, %21 ], [ %17, %13 ]
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1, i64 %14
  store ptr %35, ptr %36, align 8, !tbaa !5
  %37 = add nuw nsw i64 %14, 1
  %38 = load ptr, ptr %5, align 8, !tbaa !9
  %39 = load i32, ptr %38, align 8, !tbaa !83
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %13, label %42, !llvm.loop !88

42:                                               ; preds = %34, %4
  %43 = load i32, ptr %0, align 8
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef %45, ptr noundef %8) #17
  ret ptr %46
}

; Function Attrs: optsize
declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_group_move(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 15
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = load i32, ptr %12, align 8, !tbaa !83
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = load i32, ptr %15, align 8, !tbaa !83
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %10, %6, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1877, ptr noundef nonnull @.str.1) #17
  %19 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = load i32, ptr %20, align 8, !tbaa !83
  br label %22

22:                                               ; preds = %10, %18
  %23 = phi i32 [ %13, %10 ], [ %21, %18 ]
  %24 = phi ptr [ %12, %10 ], [ %20, %18 ]
  %25 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %26 = getelementptr inbounds %struct.rtvec_def, ptr %24, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = icmp eq ptr %29, null
  %31 = zext i1 %30 to i32
  %32 = icmp sgt i32 %23, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = zext i1 %30 to i64
  br label %36

36:                                               ; preds = %33, %36
  %37 = phi i64 [ %35, %33 ], [ %49, %36 ]
  %38 = phi ptr [ %24, %33 ], [ %50, %36 ]
  %39 = load ptr, ptr %34, align 8, !tbaa !9
  %40 = getelementptr inbounds %struct.rtvec_def, ptr %39, i64 0, i32 1, i64 %37
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !9
  %44 = getelementptr inbounds %struct.rtvec_def, ptr %38, i64 0, i32 1, i64 %37
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !9
  %48 = tail call ptr @emit_move_insn(ptr noundef %43, ptr noundef %47) #18
  %49 = add nuw nsw i64 %37, 1
  %50 = load ptr, ptr %25, align 8, !tbaa !9
  %51 = load i32, ptr %50, align 8, !tbaa !83
  %52 = trunc i64 %49 to i32
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %36, label %54, !llvm.loop !89

54:                                               ; preds = %36, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_group_move_into_temps(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = tail call ptr @rtvec_alloc(i32 noundef %4) #17
  %6 = load ptr, ptr %2, align 8, !tbaa !9
  %7 = load i32, ptr %6, align 8, !tbaa !83
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %1, %25
  %10 = phi i64 [ %28, %25 ], [ 0, %1 ]
  %11 = phi ptr [ %29, %25 ], [ %6, %1 ]
  %12 = getelementptr inbounds %struct.rtvec_def, ptr %11, i64 0, i32 1, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %9
  %18 = load i32, ptr %13, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = tail call ptr @copy_to_reg(ptr noundef nonnull %15) #17
  %22 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = tail call ptr @alloc_EXPR_LIST(i32 noundef %20, ptr noundef %21, ptr noundef %23) #17
  br label %25

25:                                               ; preds = %17, %9
  %26 = phi ptr [ %24, %17 ], [ %13, %9 ]
  %27 = getelementptr inbounds %struct.rtvec_def, ptr %5, i64 0, i32 1, i64 %10
  store ptr %26, ptr %27, align 8, !tbaa !5
  %28 = add nuw nsw i64 %10, 1
  %29 = load ptr, ptr %2, align 8, !tbaa !9
  %30 = load i32, ptr %29, align 8, !tbaa !83
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %9, label %33, !llvm.loop !90

33:                                               ; preds = %25, %1
  %34 = load i32, ptr %0, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef %36, ptr noundef %5) #17
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_group_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = load i32, ptr %1, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 15
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1918, ptr noundef nonnull @.str.1) #17
  br label %12

12:                                               ; preds = %4, %11
  %13 = zext nneg i32 %7 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %16 = and i8 %15, -2
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %42, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %0, align 8
  %20 = trunc i32 %19 to i16
  switch i16 %20, label %21 [
    i16 43, label %42
    i16 41, label %42
  ]

21:                                               ; preds = %18
  %22 = lshr i32 %19, 16
  %23 = and i32 %22, 255
  %24 = tail call i32 @int_mode_for_mode(i32 noundef %23) #17
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, ptr %0, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = sext i32 %3 to i64
  %31 = tail call ptr @assign_stack_temp(i32 noundef %29, i64 noundef %30, i32 noundef 0) #17
  tail call void @emit_group_store(ptr noundef %31, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #18
  br label %39

32:                                               ; preds = %21
  %33 = tail call ptr @gen_reg_rtx(i32 noundef %24) #17
  tail call void @emit_group_store(ptr noundef %33, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #18
  %34 = load ptr, ptr @rtl_hooks, align 8, !tbaa !20
  %35 = load i32, ptr %0, align 8
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = tail call ptr %34(i32 noundef %37, ptr noundef %33) #17
  br label %39

39:                                               ; preds = %26, %32
  %40 = phi ptr [ %38, %32 ], [ %31, %26 ]
  %41 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef %40) #18
  br label %279

42:                                               ; preds = %12, %18, %18
  %43 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.rtvec_def, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !9
  %49 = icmp eq ptr %48, null
  %50 = zext i1 %49 to i32
  %51 = load i32, ptr %44, align 8, !tbaa !83
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 3
  %54 = alloca i8, i64 %53, align 16
  %55 = icmp sgt i32 %51, %50
  br i1 %55, label %56, label %83

56:                                               ; preds = %42
  %57 = zext i1 %49 to i64
  %58 = zext nneg i32 %51 to i64
  br label %59

59:                                               ; preds = %56, %80
  %60 = phi i64 [ %57, %56 ], [ %81, %80 ]
  %61 = load ptr, ptr %43, align 8, !tbaa !9
  %62 = getelementptr inbounds %struct.rtvec_def, ptr %61, i64 0, i32 1, i64 %60
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !9
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 37
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %65) #18
  %71 = icmp ult i32 %70, 53
  br i1 %71, label %72, label %78

72:                                               ; preds = %69, %59
  %73 = lshr i32 %66, 16
  %74 = and i32 %73, 255
  %75 = tail call ptr @gen_reg_rtx(i32 noundef %74) #17
  %76 = getelementptr inbounds ptr, ptr %54, i64 %60
  store ptr %75, ptr %76, align 8, !tbaa !5
  %77 = tail call ptr @emit_move_insn(ptr noundef %75, ptr noundef nonnull %65) #18
  br label %80

78:                                               ; preds = %69
  %79 = getelementptr inbounds ptr, ptr %54, i64 %60
  store ptr %65, ptr %79, align 8, !tbaa !5
  br label %80

80:                                               ; preds = %78, %72
  %81 = add nuw nsw i64 %60, 1
  %82 = icmp eq i64 %81, %58
  br i1 %82, label %83, label %59, !llvm.loop !91

83:                                               ; preds = %80, %42
  %84 = load i32, ptr %0, align 8
  %85 = trunc i32 %84 to i16
  switch i16 %85, label %95 [
    i16 15, label %86
    i16 43, label %160
    i16 41, label %160
  ]

86:                                               ; preds = %83
  %87 = tail call i32 @rtx_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %279

89:                                               ; preds = %86
  %90 = load i32, ptr %0, align 8
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 255
  %93 = sext i32 %3 to i64
  %94 = tail call ptr @assign_stack_temp(i32 noundef %92, i64 noundef %93, i32 noundef 0) #17
  tail call void @emit_group_store(ptr noundef %94, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #18
  tail call void @emit_group_load(ptr noundef nonnull %0, ptr noundef %94, ptr poison, i32 noundef %3) #18
  br label %279

95:                                               ; preds = %83
  %96 = and i32 %84, 65535
  %97 = lshr i32 %84, 16
  %98 = and i32 %97, 255
  %99 = icmp eq i32 %96, 37
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #18
  %102 = icmp ult i32 %101, 53
  br i1 %102, label %103, label %105

103:                                              ; preds = %100, %95
  %104 = tail call ptr @gen_reg_rtx(i32 noundef %98) #17
  br label %105

105:                                              ; preds = %103, %100
  %106 = phi ptr [ %104, %103 ], [ %0, %100 ]
  br i1 %55, label %107, label %130

107:                                              ; preds = %105
  %108 = zext i1 %49 to i64
  %109 = getelementptr inbounds ptr, ptr %54, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  %111 = load i32, ptr %110, align 8
  %112 = lshr i32 %111, 16
  %113 = and i32 %112, 255
  %114 = tail call i32 @subreg_lowpart_offset(i32 noundef %113, i32 noundef %98) #17
  %115 = zext i32 %114 to i64
  %116 = load ptr, ptr %43, align 8, !tbaa !9
  %117 = getelementptr inbounds %struct.rtvec_def, ptr %116, i64 0, i32 1, i64 %108
  %118 = load ptr, ptr %117, align 8, !tbaa !5
  %119 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1, i32 0, i32 0, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !9
  %121 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %122 = load i64, ptr %121, align 8, !tbaa !9
  %123 = icmp eq i64 %122, %115
  br i1 %123, label %124, label %130

124:                                              ; preds = %107
  %125 = tail call ptr @simplify_gen_subreg(i32 noundef %98, ptr noundef nonnull %110, i32 noundef %113, i32 noundef 0) #17
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = tail call ptr @emit_move_insn(ptr noundef %106, ptr noundef nonnull %125) #18
  %129 = select i1 %49, i32 2, i32 1
  br label %160

130:                                              ; preds = %124, %107, %105
  %131 = add nsw i32 %51, -1
  %132 = icmp sgt i32 %131, %50
  br i1 %132, label %133, label %155

133:                                              ; preds = %130
  %134 = zext nneg i32 %131 to i64
  %135 = getelementptr inbounds ptr, ptr %54, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !5
  %137 = load i32, ptr %136, align 8
  %138 = lshr i32 %137, 16
  %139 = and i32 %138, 255
  %140 = tail call i32 @subreg_lowpart_offset(i32 noundef %139, i32 noundef %98) #17
  %141 = zext i32 %140 to i64
  %142 = load ptr, ptr %43, align 8, !tbaa !9
  %143 = getelementptr inbounds %struct.rtvec_def, ptr %142, i64 0, i32 1, i64 %134
  %144 = load ptr, ptr %143, align 8, !tbaa !5
  %145 = getelementptr inbounds %struct.rtx_def, ptr %144, i64 0, i32 1, i32 0, i32 0, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !9
  %147 = getelementptr inbounds %struct.rtx_def, ptr %146, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !9
  %149 = icmp eq i64 %148, %141
  br i1 %149, label %150, label %155

150:                                              ; preds = %133
  %151 = tail call ptr @simplify_gen_subreg(i32 noundef %98, ptr noundef nonnull %136, i32 noundef %139, i32 noundef 0) #17
  %152 = icmp eq ptr %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  %154 = tail call ptr @emit_move_insn(ptr noundef %106, ptr noundef nonnull %151) #18
  br label %160

155:                                              ; preds = %150, %133, %130
  %156 = zext nneg i32 %98 to i64
  %157 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !5
  %159 = tail call ptr @emit_move_insn(ptr noundef %106, ptr noundef %158) #18
  br label %160

160:                                              ; preds = %153, %127, %155, %83, %83
  %161 = phi i32 [ %51, %83 ], [ %51, %83 ], [ %51, %155 ], [ %51, %127 ], [ %131, %153 ]
  %162 = phi i32 [ %50, %83 ], [ %50, %83 ], [ %50, %155 ], [ %129, %127 ], [ %50, %153 ]
  %163 = phi ptr [ %0, %83 ], [ %0, %83 ], [ %106, %155 ], [ %106, %127 ], [ %106, %153 ]
  %164 = icmp slt i32 %162, %161
  br i1 %164, label %165, label %274

165:                                              ; preds = %160
  %166 = icmp sgt i32 %3, -1
  %167 = zext nneg i32 %3 to i64
  %168 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1
  %169 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1, i32 0, i32 0, i64 1
  %170 = zext nneg i32 %162 to i64
  %171 = zext i32 %161 to i64
  br label %172

172:                                              ; preds = %165, %271
  %173 = phi i64 [ %170, %165 ], [ %272, %271 ]
  %174 = load ptr, ptr %43, align 8, !tbaa !9
  %175 = getelementptr inbounds %struct.rtvec_def, ptr %174, i64 0, i32 1, i64 %173
  %176 = load ptr, ptr %175, align 8, !tbaa !5
  %177 = getelementptr inbounds %struct.rtx_def, ptr %176, i64 0, i32 1, i32 0, i32 0, i64 1
  %178 = load ptr, ptr %177, align 8, !tbaa !9
  %179 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1
  %180 = load i64, ptr %179, align 8, !tbaa !9
  %181 = getelementptr inbounds ptr, ptr %54, i64 %173
  %182 = load ptr, ptr %181, align 8, !tbaa !5
  %183 = load i32, ptr %182, align 8
  %184 = lshr i32 %183, 16
  %185 = and i32 %184, 255
  %186 = zext nneg i32 %185 to i64
  %187 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !9
  %189 = zext i8 %188 to i32
  %190 = zext i8 %188 to i64
  %191 = add nsw i64 %180, %190
  %192 = icmp sgt i64 %191, %167
  %193 = select i1 %166, i1 %192, i1 false
  %194 = trunc i64 %180 to i32
  %195 = sub i32 %3, %194
  %196 = select i1 %193, i32 %195, i32 %189
  %197 = load i32, ptr %163, align 8
  %198 = and i32 %197, 65535
  %199 = icmp eq i32 %198, 41
  br i1 %199, label %200, label %245

200:                                              ; preds = %172
  %201 = zext i32 %196 to i64
  %202 = add nsw i64 %180, %201
  %203 = load ptr, ptr %168, align 8, !tbaa !9
  %204 = load i32, ptr %203, align 8
  %205 = lshr i32 %204, 16
  %206 = and i32 %205, 255
  %207 = zext nneg i32 %206 to i64
  %208 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !9
  %210 = zext i8 %209 to i64
  %211 = icmp sgt i64 %202, %210
  br i1 %211, label %212, label %245

212:                                              ; preds = %200
  %213 = icmp slt i64 %180, %210
  br i1 %213, label %219, label %214

214:                                              ; preds = %212
  %215 = sub nsw i64 %180, %210
  %216 = load ptr, ptr %169, align 8, !tbaa !9
  %217 = load i32, ptr %216, align 8
  %218 = add nsw i64 %215, %190
  br label %245

219:                                              ; preds = %212
  %220 = lshr i32 %197, 16
  %221 = and i32 %220, 255
  %222 = icmp eq i64 %180, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i32, ptr %174, align 8, !tbaa !83
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %223, %219
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2064, ptr noundef nonnull @.str.1) #17
  br label %227

227:                                              ; preds = %223, %226
  %228 = tail call i32 @get_mode_alignment(i32 noundef %221) #17
  %229 = tail call i32 @get_mode_alignment(i32 noundef %185) #17
  %230 = icmp ult i32 %228, %229
  br i1 %230, label %239, label %231

231:                                              ; preds = %227
  %232 = zext nneg i32 %221 to i64
  %233 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %232
  %234 = load i8, ptr %233, align 1, !tbaa !9
  %235 = zext i8 %234 to i64
  %236 = tail call ptr @assign_stack_temp(i32 noundef %221, i64 noundef %235, i32 noundef 0) #17
  %237 = tail call ptr @adjust_address_1(ptr noundef %236, i32 noundef %185, i64 noundef %180, i32 noundef 1, i32 noundef 1) #17
  %238 = tail call ptr @emit_move_insn(ptr noundef %237, ptr noundef nonnull %182) #18
  br label %274

239:                                              ; preds = %227
  %240 = load i8, ptr %187, align 1, !tbaa !9
  %241 = zext i8 %240 to i64
  %242 = tail call ptr @assign_stack_temp(i32 noundef %185, i64 noundef %241, i32 noundef 0) #17
  %243 = tail call ptr @emit_move_insn(ptr noundef %242, ptr noundef nonnull %182) #18
  %244 = tail call ptr @adjust_address_1(ptr noundef %242, i32 noundef %221, i64 noundef %180, i32 noundef 1, i32 noundef 1) #17
  br label %274

245:                                              ; preds = %200, %214, %172
  %246 = phi i64 [ %191, %200 ], [ %218, %214 ], [ %191, %172 ]
  %247 = phi i32 [ %204, %200 ], [ %217, %214 ], [ %197, %172 ]
  %248 = phi i64 [ %180, %200 ], [ %215, %214 ], [ %180, %172 ]
  %249 = phi ptr [ %203, %200 ], [ %216, %214 ], [ %163, %172 ]
  %250 = icmp sgt i64 %246, %167
  %251 = select i1 %166, i1 %250, i1 false
  %252 = select i1 %251, i32 %196, i32 %189
  %253 = and i32 %247, 65535
  %254 = icmp eq i32 %253, 43
  %255 = shl nsw i64 %248, 3
  br i1 %254, label %256, label %268

256:                                              ; preds = %245
  %257 = tail call i32 @get_mode_alignment(i32 noundef %185) #17
  %258 = zext i32 %257 to i64
  %259 = srem i64 %255, %258
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %256
  %262 = load i8, ptr %187, align 1, !tbaa !9
  %263 = zext i8 %262 to i32
  %264 = icmp eq i32 %252, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %261
  %266 = tail call ptr @adjust_address_1(ptr noundef nonnull %249, i32 noundef %185, i64 noundef %248, i32 noundef 1, i32 noundef 1) #17
  %267 = tail call ptr @emit_move_insn(ptr noundef %266, ptr noundef nonnull %182) #18
  br label %271

268:                                              ; preds = %245, %261, %256
  %269 = shl i32 %252, 3
  %270 = zext i32 %269 to i64
  tail call void @store_bit_field(ptr noundef nonnull %249, i64 noundef %270, i64 noundef %255, i32 noundef %185, ptr noundef nonnull %182) #17
  br label %271

271:                                              ; preds = %268, %265
  %272 = add nuw nsw i64 %173, 1
  %273 = icmp eq i64 %272, %171
  br i1 %273, label %274, label %172, !llvm.loop !92

274:                                              ; preds = %271, %160, %239, %231
  %275 = phi ptr [ %236, %231 ], [ %244, %239 ], [ %163, %160 ], [ %163, %271 ]
  %276 = icmp eq ptr %275, %0
  br i1 %276, label %279, label %277

277:                                              ; preds = %274
  %278 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef %275) #18
  br label %279

279:                                              ; preds = %274, %277, %89, %86, %39
  ret void
}

; Function Attrs: optsize
declare i32 @int_mode_for_mode(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @assign_stack_temp(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @store_bit_field(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copy_blkmode_from_reg(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @int_size_in_bytes(ptr noundef %2) #17
  %5 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !9
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 32)
  %8 = zext nneg i32 %7 to i64
  %9 = icmp eq ptr %0, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = load i64, ptr %2, align 8
  %12 = trunc i64 %11 to i32
  %13 = lshr i32 %12, 18
  %14 = and i32 %13, 2
  %15 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 11
  %18 = and i32 %17, 4
  %19 = lshr i64 %11, 48
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 65280
  %22 = or disjoint i32 %18, %14
  %23 = or disjoint i32 %22, %21
  %24 = or disjoint i32 %23, 1
  %25 = tail call ptr @build_qualified_type(ptr noundef nonnull %2, i32 noundef %24) #17
  %26 = tail call ptr @assign_temp(ptr noundef %25, i32 noundef 0, i32 noundef 1, i32 noundef 1) #17
  tail call void @preserve_temp_slots(ptr noundef %26) #17
  br label %27

27:                                               ; preds = %10, %3
  %28 = phi ptr [ %26, %10 ], [ %0, %3 ]
  %29 = load i32, ptr %1, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = zext nneg i32 %31 to i64
  %35 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !9
  %37 = icmp ult i8 %36, 4
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, ptr @word_mode, align 4, !tbaa !22
  %40 = load i64, ptr %2, align 8
  %41 = trunc i64 %40 to i32
  %42 = lshr i32 %41, 21
  %43 = and i32 %42, 1
  %44 = tail call ptr @convert_to_mode(i32 noundef %39, ptr noundef nonnull %1, i32 noundef %43) #18
  br label %45

45:                                               ; preds = %38, %33, %27
  %46 = phi ptr [ %44, %38 ], [ %1, %33 ], [ %1, %27 ]
  %47 = and i64 %4, 3
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 4), align 8, !tbaa !93
  %51 = tail call zeroext i8 %50(ptr noundef nonnull %2) #17
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = shl nuw nsw i64 %47, 3
  %55 = sub nuw nsw i64 32, %54
  br label %56

56:                                               ; preds = %49, %53, %45
  %57 = phi i64 [ %55, %53 ], [ 0, %49 ], [ 0, %45 ]
  %58 = load i32, ptr @word_mode, align 4, !tbaa !22
  %59 = load i32, ptr %28, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 43
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = tail call i32 @mode_for_size(i32 noundef %7, i32 noundef 2, i32 noundef 1) #17
  %64 = icmp eq i32 %63, 1
  %65 = select i1 %64, i32 %58, i32 %63
  br label %66

66:                                               ; preds = %62, %56
  %67 = phi i32 [ %65, %62 ], [ %58, %56 ]
  %68 = shl i64 %4, 3
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %100, label %70

70:                                               ; preds = %66, %94
  %71 = phi i64 [ %98, %94 ], [ %57, %66 ]
  %72 = phi i64 [ %97, %94 ], [ 0, %66 ]
  %73 = phi ptr [ %95, %94 ], [ null, %66 ]
  %74 = phi ptr [ %87, %94 ], [ null, %66 ]
  %75 = and i64 %71, 31
  %76 = icmp eq i64 %75, 0
  %77 = icmp eq i64 %71, %57
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %70
  %80 = lshr i64 %71, 5
  %81 = trunc i64 %80 to i32
  %82 = load i32, ptr %46, align 8
  %83 = lshr i32 %82, 16
  %84 = and i32 %83, 255
  %85 = tail call ptr @operand_subword_force(ptr noundef nonnull %46, i32 noundef %81, i32 noundef %84) #17
  br label %86

86:                                               ; preds = %70, %79
  %87 = phi ptr [ %85, %79 ], [ %74, %70 ]
  %88 = and i64 %72, 31
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = lshr exact i64 %72, 5
  %92 = trunc i64 %91 to i32
  %93 = tail call ptr @operand_subword(ptr noundef nonnull %28, i32 noundef %92, i32 noundef 1, i32 noundef 1) #17
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi ptr [ %93, %90 ], [ %73, %86 ]
  %96 = tail call ptr @extract_bit_field(ptr noundef %87, i64 noundef %8, i64 noundef %75, i32 noundef 1, ptr noundef null, i32 noundef %67, i32 noundef %67) #17
  tail call void @store_bit_field(ptr noundef %95, i64 noundef %8, i64 noundef %88, i32 noundef %67, ptr noundef %96) #17
  %97 = add i64 %72, %8
  %98 = add i64 %71, %8
  %99 = icmp ult i64 %97, %68
  br i1 %99, label %70, label %100, !llvm.loop !94

100:                                              ; preds = %94, %66
  ret ptr %28
}

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @assign_temp(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @preserve_temp_slots(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @extract_bit_field(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @use_reg(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #18
  %8 = icmp ult i32 %7, 53
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2229, ptr noundef nonnull @.str.1) #17
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %1) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !5
  %13 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %11, ptr noundef %12) #17
  store ptr %13, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @use_regs(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add nsw i32 %2, %1
  %5 = icmp slt i32 %4, 54
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2244, ptr noundef nonnull @.str.1) #17
  br label %7

7:                                                ; preds = %3, %6
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %7
  %10 = sext i32 %1 to i64
  %11 = zext nneg i32 %2 to i64
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %18, %12 ]
  %14 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %15 = getelementptr ptr, ptr %14, i64 %13
  %16 = getelementptr ptr, ptr %15, i64 %10
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  tail call void @use_reg(ptr noundef %0, ptr noundef %17) #18
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp eq i64 %18, %11
  br i1 %19, label %20, label %12, !llvm.loop !95

20:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @use_group_regs(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = load i32, ptr %4, align 8, !tbaa !83
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %2, %23
  %8 = phi i32 [ %24, %23 ], [ %5, %2 ]
  %9 = phi ptr [ %25, %23 ], [ %4, %2 ]
  %10 = phi i64 [ %26, %23 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %7
  %17 = load i32, ptr %14, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 37
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  tail call void @use_reg(ptr noundef %0, ptr noundef nonnull %14) #18
  %21 = load ptr, ptr %3, align 8, !tbaa !9
  %22 = load i32, ptr %21, align 8, !tbaa !83
  br label %23

23:                                               ; preds = %20, %16, %7
  %24 = phi i32 [ %22, %20 ], [ %8, %16 ], [ %8, %7 ]
  %25 = phi ptr [ %21, %20 ], [ %9, %16 ], [ %9, %7 ]
  %26 = add nuw nsw i64 %10, 1
  %27 = sext i32 %24 to i64
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %7, label %29, !llvm.loop !96

29:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @can_store_by_pieces(i64 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq i64 %0, 0
  br i1 %6, label %123, label %7

7:                                                ; preds = %5
  %8 = icmp eq i8 %4, 0
  %9 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %0, i32 noundef %3) #18
  %10 = tail call zeroext i8 @optimize_insn_for_speed_p() #17
  %11 = icmp eq i8 %10, 0
  br i1 %8, label %21, label %12

12:                                               ; preds = %7
  br i1 %11, label %18, label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr @ix86_cost, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.processor_costs, ptr %14, i64 0, i32 10
  %16 = load i32, ptr %15, align 4, !tbaa !31
  %17 = zext i32 %16 to i64
  br label %18

18:                                               ; preds = %12, %13
  %19 = phi i64 [ %17, %13 ], [ 3, %12 ]
  %20 = icmp ult i64 %9, %19
  br i1 %20, label %30, label %123

21:                                               ; preds = %7
  br i1 %11, label %27, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr @ix86_cost, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.processor_costs, ptr %23, i64 0, i32 10
  %25 = load i32, ptr %24, align 4, !tbaa !31
  %26 = zext i32 %25 to i64
  br label %27

27:                                               ; preds = %21, %22
  %28 = phi i64 [ %26, %22 ], [ 3, %21 ]
  %29 = icmp ult i64 %9, %28
  br i1 %29, label %30, label %123

30:                                               ; preds = %27, %18
  %31 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 1) #17
  %32 = tail call i32 @get_mode_alignment(i32 noundef %31) #17
  %33 = icmp ugt i32 %32, %3
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @get_mode_alignment(i32 noundef %31) #17
  %36 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !9
  br label %64

37:                                               ; preds = %30
  %38 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !9
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %37
  %41 = zext i8 %38 to i32
  %42 = zext i8 %38 to i64
  %43 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !9
  %45 = icmp ugt i8 %44, 4
  br i1 %45, label %58, label %52

46:                                               ; preds = %52
  %47 = zext i8 %56 to i32
  %48 = zext i8 %56 to i64
  %49 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !9
  %51 = icmp ugt i8 %50, 4
  br i1 %51, label %58, label %52, !llvm.loop !97

52:                                               ; preds = %40, %46
  %53 = phi i64 [ %48, %46 ], [ %42, %40 ]
  %54 = phi i32 [ %47, %46 ], [ %41, %40 ]
  %55 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %53
  %56 = load i8, ptr %55, align 1, !tbaa !9
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %46, !llvm.loop !97

58:                                               ; preds = %46, %52, %40, %37
  %59 = phi i32 [ 0, %37 ], [ %41, %40 ], [ %54, %52 ], [ %54, %46 ]
  %60 = tail call i32 @get_mode_alignment(i32 noundef %59) #17
  %61 = icmp ult i32 %60, %3
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = tail call i32 @get_mode_alignment(i32 noundef %59) #17
  br label %64

64:                                               ; preds = %62, %58, %34
  %65 = phi i8 [ %36, %34 ], [ %38, %62 ], [ %38, %58 ]
  %66 = phi i32 [ %35, %34 ], [ %63, %62 ], [ %3, %58 ]
  %67 = icmp eq i8 %65, 0
  br label %68

68:                                               ; preds = %64, %112
  %69 = phi i64 [ %0, %64 ], [ %114, %112 ]
  %70 = phi i32 [ 0, %64 ], [ %87, %112 ]
  %71 = phi i64 [ 0, %64 ], [ %113, %112 ]
  %72 = phi i32 [ 5, %64 ], [ %117, %112 ]
  br i1 %67, label %86, label %73

73:                                               ; preds = %68, %73
  %74 = phi i8 [ %84, %73 ], [ %65, %68 ]
  %75 = phi i32 [ %82, %73 ], [ %70, %68 ]
  %76 = zext i8 %74 to i32
  %77 = zext i8 %74 to i64
  %78 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !9
  %80 = zext i8 %79 to i32
  %81 = icmp ugt i32 %72, %80
  %82 = select i1 %81, i32 %76, i32 %75
  %83 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %77
  %84 = load i8, ptr %83, align 1, !tbaa !9
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %73, !llvm.loop !98

86:                                               ; preds = %73, %68
  %87 = phi i32 [ %70, %68 ], [ %82, %73 ]
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %119, label %89

89:                                               ; preds = %86
  %90 = zext nneg i32 %87 to i64
  %91 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !25
  %93 = icmp eq i32 %92, 2956
  br i1 %93, label %112, label %94

94:                                               ; preds = %89
  %95 = tail call i32 @get_mode_alignment(i32 noundef %87) #17
  %96 = icmp ult i32 %66, %95
  br i1 %96, label %112, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %90
  %99 = load i8, ptr %98, align 1, !tbaa !9
  %100 = zext i8 %99 to i64
  %101 = icmp ult i64 %69, %100
  br i1 %101, label %112, label %102

102:                                              ; preds = %97, %108
  %103 = phi i64 [ %110, %108 ], [ %69, %97 ]
  %104 = phi i64 [ %109, %108 ], [ %71, %97 ]
  %105 = tail call ptr %1(ptr noundef %2, i64 noundef %104, i32 noundef %87) #17
  %106 = tail call zeroext i8 @legitimate_constant_p(ptr noundef %105) #17
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %102
  %109 = add nsw i64 %104, %100
  %110 = sub i64 %103, %100
  %111 = icmp ult i64 %110, %100
  br i1 %111, label %112, label %102, !llvm.loop !99

112:                                              ; preds = %108, %97, %94, %89
  %113 = phi i64 [ %71, %94 ], [ %71, %89 ], [ %71, %97 ], [ %109, %108 ]
  %114 = phi i64 [ %69, %94 ], [ %69, %89 ], [ %69, %97 ], [ %110, %108 ]
  %115 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %90
  %116 = load i8, ptr %115, align 1, !tbaa !9
  %117 = zext i8 %116 to i32
  %118 = icmp ugt i8 %116, 1
  br i1 %118, label %68, label %119, !llvm.loop !100

119:                                              ; preds = %86, %112
  %120 = phi i64 [ %69, %86 ], [ %114, %112 ]
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2383, ptr noundef nonnull @.str.1) #17
  br label %123

123:                                              ; preds = %102, %119, %122, %18, %27, %5
  %124 = phi i32 [ 1, %5 ], [ 0, %27 ], [ 0, %18 ], [ 1, %122 ], [ 1, %119 ], [ 0, %102 ]
  ret i32 %124
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @store_by_pieces(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.store_by_pieces_d, align 8
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %11, i64 0, i32 5
  %15 = load i8, ptr %14, align 8, !tbaa !29
  br label %16

16:                                               ; preds = %7, %13
  %17 = phi i8 [ %15, %13 ], [ 0, %7 ]
  %18 = tail call i32 %9(i8 noundef zeroext %17) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #16
  %19 = icmp eq i64 %1, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = icmp eq i32 %6, 2
  br i1 %21, label %22, label %83

22:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2409, ptr noundef nonnull @.str.1) #17
  br label %83

23:                                               ; preds = %16
  %24 = icmp eq i8 %5, 0
  %25 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %1, i32 noundef %4) #18
  %26 = tail call zeroext i8 @optimize_insn_for_speed_p() #17
  %27 = icmp eq i8 %26, 0
  br i1 %24, label %37, label %28

28:                                               ; preds = %23
  br i1 %27, label %34, label %29

29:                                               ; preds = %28
  %30 = load ptr, ptr @ix86_cost, align 8, !tbaa !5
  %31 = getelementptr inbounds %struct.processor_costs, ptr %30, i64 0, i32 10
  %32 = load i32, ptr %31, align 4, !tbaa !31
  %33 = zext i32 %32 to i64
  br label %34

34:                                               ; preds = %28, %29
  %35 = phi i64 [ %33, %29 ], [ 3, %28 ]
  %36 = icmp ult i64 %25, %35
  br i1 %36, label %47, label %46

37:                                               ; preds = %23
  br i1 %27, label %43, label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr @ix86_cost, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.processor_costs, ptr %39, i64 0, i32 10
  %41 = load i32, ptr %40, align 4, !tbaa !31
  %42 = zext i32 %41 to i64
  br label %43

43:                                               ; preds = %37, %38
  %44 = phi i64 [ %42, %38 ], [ 3, %37 ]
  %45 = icmp ult i64 %25, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2415, ptr noundef nonnull @.str.1) #17
  br label %47

47:                                               ; preds = %34, %43, %46
  %48 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 6
  store ptr %2, ptr %48, align 8, !tbaa !101
  %49 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 7
  store ptr %3, ptr %49, align 8, !tbaa !103
  %50 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 4
  store i64 %1, ptr %50, align 8, !tbaa !104
  store ptr %0, ptr %8, align 8, !tbaa !105
  call fastcc void @store_by_pieces_1(ptr noundef nonnull %8, i32 noundef %4) #18
  %51 = icmp eq i32 %6, 0
  br i1 %51, label %81, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 8
  %54 = load i32, ptr %53, align 8, !tbaa !106
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2425, ptr noundef nonnull @.str.1) #17
  br label %57

57:                                               ; preds = %52, %56
  %58 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !107
  %60 = icmp eq i32 %59, 0
  %61 = icmp eq i32 %6, 2
  br i1 %60, label %74, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !108
  br i1 %61, label %65, label %68

65:                                               ; preds = %62
  %66 = tail call ptr @plus_constant(ptr noundef %64, i64 noundef -1) #17
  %67 = tail call ptr @copy_to_mode_reg(i32 noundef %18, ptr noundef %66) #17
  br label %68

68:                                               ; preds = %62, %65
  %69 = phi ptr [ %67, %65 ], [ %64, %62 ]
  %70 = load ptr, ptr %8, align 8, !tbaa !105
  %71 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 5
  %72 = load i64, ptr %71, align 8, !tbaa !109
  %73 = tail call ptr @adjust_automodify_address_1(ptr noundef %70, i32 noundef 14, ptr noundef %69, i64 noundef %72, i32 noundef 1) #17
  br label %83

74:                                               ; preds = %57
  %75 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 5
  %76 = load i64, ptr %75, align 8, !tbaa !109
  %77 = sext i1 %61 to i64
  %78 = add nsw i64 %76, %77
  %79 = load ptr, ptr %8, align 8, !tbaa !105
  %80 = tail call ptr @adjust_address_1(ptr noundef %79, i32 noundef 14, i64 noundef %78, i32 noundef 1, i32 noundef 1) #17
  br label %83

81:                                               ; preds = %47
  %82 = load ptr, ptr %8, align 8, !tbaa !105
  br label %83

83:                                               ; preds = %68, %74, %22, %20, %81
  %84 = phi ptr [ %82, %81 ], [ %0, %20 ], [ %0, %22 ], [ %73, %68 ], [ %80, %74 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #16
  ret ptr %84
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @store_by_pieces_1(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !35
  %4 = load ptr, ptr %0, align 8, !tbaa !105
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 5
  %10 = load i8, ptr %9, align 8, !tbaa !29
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i8 [ %10, %8 ], [ 0, %2 ]
  %13 = tail call i32 %3(i8 noundef zeroext %12) #17
  %14 = load ptr, ptr %0, align 8, !tbaa !105
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 5
  store i64 0, ptr %17, align 8, !tbaa !109
  %18 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !108
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 65534
  %21 = add nsw i32 %20, -74
  %22 = icmp ult i32 %21, 4
  %23 = zext i1 %22 to i32
  %24 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 2
  store i32 %23, ptr %24, align 8, !tbaa !107
  %25 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 3
  store i32 0, ptr %25, align 4, !tbaa !110
  %26 = load i32, ptr %16, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 74
  %29 = icmp eq i32 %27, 76
  %30 = or i1 %28, %29
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 8
  store i32 %31, ptr %32, align 8, !tbaa !106
  %33 = trunc i32 %26 to i16
  switch i16 %33, label %37 [
    i16 76, label %34
    i16 74, label %34
  ]

34:                                               ; preds = %11, %11
  %35 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 4
  %36 = load i64, ptr %35, align 8, !tbaa !104
  store i64 %36, ptr %17, align 8, !tbaa !109
  br label %37

37:                                               ; preds = %11, %34
  br i1 %22, label %71, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 4
  %40 = load i64, ptr %39, align 8, !tbaa !104
  %41 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %40, i32 noundef %1) #18
  %42 = icmp ugt i64 %41, 2
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !9
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %43, %46
  %47 = phi i8 [ %56, %46 ], [ %44, %43 ]
  %48 = phi i32 [ %54, %46 ], [ 0, %43 ]
  %49 = zext i8 %47 to i32
  %50 = zext i8 %47 to i64
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !9
  %53 = icmp ult i8 %52, 5
  %54 = select i1 %53, i32 %49, i32 %48
  %55 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %50
  %56 = load i8, ptr %55, align 1, !tbaa !9
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %46, !llvm.loop !111

58:                                               ; preds = %46, %43
  %59 = phi i32 [ 0, %43 ], [ %54, %46 ]
  %60 = load i32, ptr %24, align 8, !tbaa !107
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32, ptr %16, align 8
  %64 = and i32 %63, 65535
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !22
  %68 = icmp eq i32 %67, 9
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = tail call ptr @copy_to_mode_reg(i32 noundef %13, ptr noundef nonnull %16) #17
  store ptr %70, ptr %18, align 8, !tbaa !108
  br label %71

71:                                               ; preds = %58, %62, %69, %38, %37
  %72 = phi i32 [ 0, %37 ], [ %59, %58 ], [ %59, %69 ], [ %59, %62 ], [ 0, %38 ]
  %73 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 1) #17
  %74 = tail call i32 @get_mode_alignment(i32 noundef %73) #17
  %75 = icmp ugt i32 %74, %1
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = tail call i32 @get_mode_alignment(i32 noundef %73) #17
  %78 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !9
  br label %106

79:                                               ; preds = %71
  %80 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !9
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %79
  %83 = zext i8 %80 to i32
  %84 = zext i8 %80 to i64
  %85 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !9
  %87 = icmp ugt i8 %86, 4
  br i1 %87, label %100, label %94

88:                                               ; preds = %94
  %89 = zext i8 %98 to i32
  %90 = zext i8 %98 to i64
  %91 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !9
  %93 = icmp ugt i8 %92, 4
  br i1 %93, label %100, label %94, !llvm.loop !112

94:                                               ; preds = %82, %88
  %95 = phi i64 [ %90, %88 ], [ %84, %82 ]
  %96 = phi i32 [ %89, %88 ], [ %83, %82 ]
  %97 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %95
  %98 = load i8, ptr %97, align 1, !tbaa !9
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %88, !llvm.loop !112

100:                                              ; preds = %88, %94, %82, %79
  %101 = phi i32 [ 0, %79 ], [ %83, %82 ], [ %96, %94 ], [ %96, %88 ]
  %102 = tail call i32 @get_mode_alignment(i32 noundef %101) #17
  %103 = icmp ult i32 %102, %1
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = tail call i32 @get_mode_alignment(i32 noundef %101) #17
  br label %106

106:                                              ; preds = %104, %100, %76
  %107 = phi i8 [ %78, %76 ], [ %80, %104 ], [ %80, %100 ]
  %108 = phi i32 [ %77, %76 ], [ %105, %104 ], [ %1, %100 ]
  %109 = icmp eq i8 %107, 0
  br label %110

110:                                              ; preds = %106, %141
  %111 = phi i32 [ %72, %106 ], [ %127, %141 ]
  %112 = phi i32 [ 5, %106 ], [ %144, %141 ]
  br i1 %109, label %126, label %113

113:                                              ; preds = %110, %113
  %114 = phi i8 [ %124, %113 ], [ %107, %110 ]
  %115 = phi i32 [ %122, %113 ], [ %111, %110 ]
  %116 = zext i8 %114 to i32
  %117 = zext i8 %114 to i64
  %118 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !9
  %120 = zext i8 %119 to i32
  %121 = icmp ugt i32 %112, %120
  %122 = select i1 %121, i32 %116, i32 %115
  %123 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %117
  %124 = load i8, ptr %123, align 1, !tbaa !9
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %113, !llvm.loop !113

126:                                              ; preds = %113, %110
  %127 = phi i32 [ %111, %110 ], [ %122, %113 ]
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %146, label %129

129:                                              ; preds = %126
  %130 = zext nneg i32 %127 to i64
  %131 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !25
  %133 = icmp eq i32 %132, 2956
  br i1 %133, label %141, label %134

134:                                              ; preds = %129
  %135 = tail call i32 @get_mode_alignment(i32 noundef %127) #17
  %136 = icmp ult i32 %108, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = zext i32 %132 to i64
  %139 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %138, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !64
  tail call fastcc void @store_by_pieces_2(ptr noundef %140, i32 noundef %127, ptr noundef nonnull %0) #18
  br label %141

141:                                              ; preds = %137, %134, %129
  %142 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %130
  %143 = load i8, ptr %142, align 1, !tbaa !9
  %144 = zext i8 %143 to i32
  %145 = icmp ugt i8 %143, 1
  br i1 %145, label %110, label %146, !llvm.loop !114

146:                                              ; preds = %126, %141
  %147 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 4
  %148 = load i64, ptr %147, align 8, !tbaa !104
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2578, ptr noundef nonnull @.str.1) #17
  br label %151

151:                                              ; preds = %146, %150
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @clear_storage_hints(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = load i32, ptr %0, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %2, 3
  switch i32 %2, label %10 [
    i32 3, label %11
    i32 0, label %11
  ]

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2630, ptr noundef nonnull @.str.1) #17
  br label %11

11:                                               ; preds = %5, %5, %10
  %12 = icmp eq i32 %8, 1
  br i1 %12, label %44, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr %1, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 30
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !9
  %20 = zext nneg i32 %8 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !9
  %23 = zext i8 %22 to i64
  %24 = icmp eq i64 %19, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %17
  %26 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %20
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %27) #18
  br label %94

31:                                               ; preds = %25
  %32 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %34 = and i8 %33, -2
  %35 = icmp eq i8 %34, 10
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %20
  %38 = load i8, ptr %37, align 1, !tbaa !9
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  tail call fastcc void @write_complex_part(ptr noundef nonnull %0, ptr noundef nonnull %41, i8 noundef zeroext 0) #18
  tail call fastcc void @write_complex_part(ptr noundef nonnull %0, ptr noundef nonnull %41, i8 noundef zeroext 1) #18
  br label %94

44:                                               ; preds = %31, %36, %17, %13, %11
  %45 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %46 = icmp eq ptr %45, %1
  br i1 %46, label %94, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.mem_attrs, ptr %49, i64 0, i32 4
  %53 = load i32, ptr %52, align 4, !tbaa !48
  br label %54

54:                                               ; preds = %47, %51
  %55 = phi i32 [ %53, %51 ], [ 8, %47 ]
  %56 = load i32, ptr %1, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 30
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !9
  %62 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %61, i32 noundef %55) #18
  %63 = tail call zeroext i8 @optimize_insn_for_speed_p() #17
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr @ix86_cost, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.processor_costs, ptr %66, i64 0, i32 10
  %68 = load i32, ptr %67, align 4, !tbaa !31
  %69 = tail call i32 @llvm.smin.i32(i32 %68, i32 6)
  %70 = zext i32 %69 to i64
  br label %71

71:                                               ; preds = %65, %59
  %72 = phi i64 [ 2, %59 ], [ %70, %65 ]
  %73 = icmp ult i64 %62, %72
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  br label %78

76:                                               ; preds = %71
  %77 = load i64, ptr %60, align 8, !tbaa !9
  tail call fastcc void @clear_by_pieces(ptr noundef nonnull %0, i64 noundef %77, i32 noundef %55) #18
  br label %94

78:                                               ; preds = %74, %54
  %79 = phi ptr [ %75, %74 ], [ %45, %54 ]
  %80 = tail call zeroext i8 @set_storage_via_setmem(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %79, i32 noundef %55, i32 noundef %3, i64 noundef %4) #18
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load ptr, ptr %48, align 8, !tbaa !9
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.mem_attrs, ptr %83, i64 0, i32 5
  %87 = load i8, ptr %86, align 8, !tbaa !29
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82, %85
  %90 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %91 = zext i1 %9 to i8
  %92 = tail call ptr @set_storage_via_libcall(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %90, i8 noundef zeroext %91) #18
  br label %94

93:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2672, ptr noundef nonnull @.str.1) #17
  br label %94

94:                                               ; preds = %29, %43, %76, %78, %93, %44, %89
  %95 = phi ptr [ %92, %89 ], [ null, %44 ], [ null, %93 ], [ null, %78 ], [ null, %76 ], [ null, %43 ], [ null, %29 ]
  ret ptr %95
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_complex_part(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 41
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = zext nneg i8 %2 to i64
  %10 = getelementptr inbounds [1 x %union.rtunion_def], ptr %8, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = tail call ptr @emit_move_insn(ptr noundef %11, ptr noundef %1) #18
  br label %63

13:                                               ; preds = %3
  %14 = lshr i32 %4, 16
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !9
  %19 = zext i8 %18 to i32
  %20 = zext i8 %18 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !9
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 3
  %25 = icmp eq i32 %5, 43
  br i1 %25, label %26, label %32

26:                                               ; preds = %13
  %27 = icmp eq i8 %2, 0
  %28 = select i1 %27, i8 0, i8 %22
  %29 = zext i8 %28 to i64
  %30 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef %19, i64 noundef %29, i32 noundef 0, i32 noundef 1) #17
  %31 = tail call ptr @emit_move_insn(ptr noundef %30, ptr noundef %1) #18
  br label %63

32:                                               ; preds = %13
  %33 = icmp ugt i8 %22, 3
  br i1 %33, label %45, label %34

34:                                               ; preds = %32
  %35 = icmp eq i32 %5, 37
  br i1 %35, label %36, label %59

36:                                               ; preds = %34
  %37 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #18
  %38 = icmp ult i32 %37, 53
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = zext nneg i32 %37 to i64
  %41 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %40, i64 %16
  %42 = load i8, ptr %41, align 1, !tbaa !9
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %39, %32
  %46 = icmp eq i8 %2, 0
  %47 = select i1 %46, i32 0, i32 %23
  %48 = tail call ptr @simplify_gen_subreg(i32 noundef %19, ptr noundef nonnull %0, i32 noundef %15, i32 noundef %47) #17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, ptr %0, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 43
  %54 = icmp ult i8 %22, 4
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2907, ptr noundef nonnull @.str.1) #17
  br label %59

57:                                               ; preds = %45
  %58 = tail call ptr @emit_move_insn(ptr noundef nonnull %48, ptr noundef %1) #18
  br label %63

59:                                               ; preds = %50, %56, %39, %36, %34
  %60 = zext nneg i32 %24 to i64
  %61 = icmp eq i8 %2, 0
  %62 = select i1 %61, i64 0, i64 %60
  tail call void @store_bit_field(ptr noundef nonnull %0, i64 noundef %60, i64 noundef %62, i32 noundef %19, ptr noundef %1) #17
  br label %63

63:                                               ; preds = %57, %59, %26, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_by_pieces(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.store_by_pieces_d, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.store_by_pieces_d, ptr %4, i64 0, i32 6
  store ptr @clear_by_pieces_1, ptr %7, align 8, !tbaa !101
  %8 = getelementptr inbounds %struct.store_by_pieces_d, ptr %4, i64 0, i32 7
  store ptr null, ptr %8, align 8, !tbaa !103
  %9 = getelementptr inbounds %struct.store_by_pieces_d, ptr %4, i64 0, i32 4
  store i64 %1, ptr %9, align 8, !tbaa !104
  store ptr %0, ptr %4, align 8, !tbaa !105
  call fastcc void @store_by_pieces_1(ptr noundef nonnull %4, i32 noundef %2) #18
  br label %10

10:                                               ; preds = %3, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @set_storage_via_setmem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = lshr i32 %3, 3
  %8 = zext nneg i32 %7 to i64
  %9 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %8) #17
  %10 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %104, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @llvm.umax.i32(i32 %4, i32 %3)
  %14 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %15 = lshr i32 %13, 3
  %16 = zext nneg i32 %15 to i64
  br label %17

17:                                               ; preds = %12, %100
  %18 = phi i8 [ %10, %12 ], [ %102, %100 ]
  %19 = zext i8 %18 to i32
  %20 = zext i8 %18 to i64
  %21 = getelementptr inbounds [87 x i32], ptr @setmem_optab, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !22
  %23 = icmp eq i32 %22, 2956
  br i1 %23, label %100, label %24

24:                                               ; preds = %17
  %25 = load i32, ptr %1, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 30
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i64, ptr %14, align 8, !tbaa !9
  %30 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %31 = load i64, ptr %30, align 8, !tbaa !78
  %32 = lshr i64 %31, 1
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %24
  %35 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %36 = load i8, ptr %35, align 1, !tbaa !9
  %37 = icmp ugt i8 %36, 3
  br i1 %37, label %38, label %100

38:                                               ; preds = %34, %28
  %39 = sext i32 %22 to i64
  %40 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %39, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !13
  %42 = load ptr, ptr %41, align 8, !tbaa !15
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = tail call i32 %42(ptr noundef %0, i32 noundef 1) #17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %100, label %47

47:                                               ; preds = %44, %38
  %48 = getelementptr inbounds %struct.insn_operand_data, ptr %41, i64 3
  %49 = load ptr, ptr %48, align 8, !tbaa !15
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = tail call i32 %49(ptr noundef %9, i32 noundef 0) #17
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %100, label %54

54:                                               ; preds = %51, %47
  %55 = tail call ptr @get_last_insn() #17
  %56 = tail call ptr @convert_to_mode(i32 noundef %19, ptr noundef nonnull %1, i32 noundef 1) #18
  %57 = getelementptr inbounds %struct.insn_operand_data, ptr %41, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !15
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = tail call i32 %58(ptr noundef %56, i32 noundef %19) #17
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = tail call ptr @copy_to_mode_reg(i32 noundef %19, ptr noundef %56) #17
  br label %65

65:                                               ; preds = %63, %60, %54
  %66 = phi ptr [ %56, %60 ], [ %64, %63 ], [ %56, %54 ]
  %67 = getelementptr inbounds %struct.insn_operand_data, ptr %41, i64 2, i32 2
  %68 = load i16, ptr %67, align 8
  %69 = zext i16 %68 to i32
  %70 = icmp eq i16 %68, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %65
  %72 = tail call ptr @convert_to_mode(i32 noundef %69, ptr noundef %2, i32 noundef 1) #18
  %73 = getelementptr inbounds %struct.insn_operand_data, ptr %41, i64 2
  %74 = load ptr, ptr %73, align 8, !tbaa !15
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = tail call i32 %74(ptr noundef %72, i32 noundef %69) #17
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = tail call ptr @copy_to_mode_reg(i32 noundef %69, ptr noundef %72) #17
  br label %81

81:                                               ; preds = %71, %76, %79, %65
  %82 = phi ptr [ %72, %76 ], [ %80, %79 ], [ %72, %71 ], [ %2, %65 ]
  %83 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %39, i32 4
  %84 = load i8, ptr %83, align 8, !tbaa !79
  %85 = icmp eq i8 %84, 4
  %86 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %39, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !64
  br i1 %85, label %88, label %90

88:                                               ; preds = %81
  %89 = tail call ptr (ptr, ...) %87(ptr noundef %0, ptr noundef %66, ptr noundef %82, ptr noundef %9) #17
  br label %94

90:                                               ; preds = %81
  %91 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %16) #17
  %92 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %5) #17
  %93 = tail call ptr (ptr, ...) %87(ptr noundef %0, ptr noundef %66, ptr noundef %82, ptr noundef %9, ptr noundef %91, ptr noundef %92) #17
  br label %94

94:                                               ; preds = %90, %88
  %95 = phi ptr [ %89, %88 ], [ %93, %90 ]
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  tail call void @delete_insns_since(ptr noundef %55) #17
  br label %100

98:                                               ; preds = %94
  %99 = tail call ptr @emit_insn(ptr noundef nonnull %95) #17
  br label %104

100:                                              ; preds = %97, %51, %44, %34, %17
  %101 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %20
  %102 = load i8, ptr %101, align 1, !tbaa !9
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %17, !llvm.loop !115

104:                                              ; preds = %100, %6, %98
  %105 = phi i8 [ 1, %98 ], [ 0, %6 ], [ 0, %100 ]
  ret i8 %105
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @set_storage_via_libcall(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = tail call ptr @copy_to_mode_reg(i32 noundef 16, ptr noundef %6) #17
  %8 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 14
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #17
  br label %19

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  br label %19

19:                                               ; preds = %14, %12
  %20 = phi i32 [ %13, %12 ], [ %18, %14 ]
  %21 = tail call ptr @convert_to_mode(i32 noundef %20, ptr noundef %1, i32 noundef 1) #18
  %22 = tail call ptr @copy_to_mode_reg(i32 noundef %20, ptr noundef %21) #17
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !5
  %24 = tail call ptr @make_tree(ptr noundef %23, ptr noundef %7) #17
  %25 = load i32, ptr %2, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 30
  br i1 %27, label %43, label %28

28:                                               ; preds = %19
  %29 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !5
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 14
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = tail call i32 @vector_type_mode(ptr noundef nonnull %29) #17
  br label %40

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi i32 [ %34, %33 ], [ %39, %35 ]
  %42 = tail call ptr @convert_to_mode(i32 noundef %41, ptr noundef nonnull %2, i32 noundef 1) #18
  br label %43

43:                                               ; preds = %40, %19
  %44 = phi ptr [ %2, %19 ], [ %42, %40 ]
  %45 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %46 = tail call ptr @make_tree(ptr noundef %45, ptr noundef %22) #17
  %47 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !5
  %48 = tail call ptr @make_tree(ptr noundef %47, ptr noundef %44) #17
  %49 = tail call fastcc ptr @clear_storage_libcall_fn() #18
  %50 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %49, i32 noundef 3, ptr noundef %24, ptr noundef %48, ptr noundef %46) #17
  %51 = load i64, ptr %50, align 8
  %52 = and i8 %3, 1
  %53 = zext nneg i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 18
  %55 = and i64 %51, -262145
  %56 = or disjoint i64 %55, %54
  store i64 %56, ptr %50, align 8
  %57 = tail call fastcc ptr @expand_normal(ptr noundef nonnull %50) #18
  ret ptr %57
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @clear_storage(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @clear_storage_hints(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i64 noundef -1) #18
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @clear_storage_libcall_fn() unnamed_addr #0 {
  %1 = load ptr, ptr @block_clear_fn, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @init_block_clear_fn(ptr noundef null) #18
  %4 = load ptr, ptr @block_clear_fn, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %7 = load i1, ptr @clear_storage_libcall_fn.emitted_extern, align 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  store i1 true, ptr @clear_storage_libcall_fn.emitted_extern, align 1
  tail call void @make_decl_rtl(ptr noundef %6) #17
  %9 = load ptr, ptr @block_clear_fn, align 8, !tbaa !5
  tail call void @assemble_external(ptr noundef %9) #17
  %10 = load ptr, ptr @block_clear_fn, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi ptr [ %10, %8 ], [ %6, %5 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_block_clear_fn(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @block_clear_fn, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = tail call ptr @get_identifier(ptr noundef nonnull @.str.3) #17
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !5
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !5
  %8 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %9 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %6, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef null) #17
  %10 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %5, ptr noundef %9) #17
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = load i64, ptr %10, align 8
  %14 = or i64 %12, 33558528
  store i64 %14, ptr %11, align 8
  %15 = or i64 %13, 167772160
  store i64 %15, ptr %10, align 8
  %16 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %10, i64 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, -7169
  %19 = or disjoint i32 %18, 4096
  store i32 %19, ptr %16, align 8
  store ptr %10, ptr @block_clear_fn, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %4, %1
  %21 = phi ptr [ %10, %4 ], [ %2, %1 ]
  %22 = icmp eq ptr %0, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @set_user_assembler_name(ptr noundef nonnull %21, ptr noundef nonnull %0) #17
  br label %24

24:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #2

; Function Attrs: optsize
declare void @delete_insns_since(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_move_complex_push(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  %8 = zext i8 %6 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !9
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, 3
  %13 = and i32 %12, 508
  %14 = icmp eq i32 %13, %11
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = tail call fastcc ptr @emit_move_resolve_push(i32 noundef %0, ptr noundef %1) #18
  %17 = tail call ptr @emit_move_insn(ptr noundef %16, ptr noundef %2) #18
  br label %37

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = load i32, ptr %20, align 8
  %22 = trunc i32 %21 to i16
  switch i16 %22, label %24 [
    i16 74, label %26
    i16 76, label %26
    i16 75, label %23
    i16 77, label %23
  ]

23:                                               ; preds = %18, %18
  br label %26

24:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3144, ptr noundef nonnull @.str.1) #17
  %25 = load ptr, ptr %19, align 8, !tbaa !9
  br label %26

26:                                               ; preds = %18, %18, %24, %23
  %27 = phi ptr [ %25, %24 ], [ %20, %23 ], [ %20, %18 ], [ %20, %18 ]
  %28 = phi i8 [ 0, %24 ], [ 1, %23 ], [ 0, %18 ], [ 0, %18 ]
  %29 = phi i8 [ undef, %24 ], [ 0, %23 ], [ 1, %18 ], [ 1, %18 ]
  %30 = tail call ptr @gen_rtx_MEM(i32 noundef %7, ptr noundef %27) #17
  %31 = tail call fastcc ptr @read_complex_part(ptr noundef %2, i8 noundef zeroext %29) #18
  %32 = tail call ptr @emit_move_insn(ptr noundef %30, ptr noundef %31) #18
  %33 = load ptr, ptr %19, align 8, !tbaa !9
  %34 = tail call ptr @gen_rtx_MEM(i32 noundef %7, ptr noundef %33) #17
  %35 = tail call fastcc ptr @read_complex_part(ptr noundef %2, i8 noundef zeroext %28) #18
  %36 = tail call ptr @emit_move_insn(ptr noundef %34, ptr noundef %35) #18
  br label %37

37:                                               ; preds = %26, %15
  %38 = phi ptr [ %17, %15 ], [ %36, %26 ]
  ret ptr %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_move_resolve_push(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = load i32, ptr %4, align 8
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !9
  %9 = zext i8 %8 to i64
  %10 = add nuw nsw i64 %9, 3
  %11 = and i64 %10, 508
  %12 = trunc i32 %5 to i16
  switch i16 %12, label %15 [
    i16 76, label %13
    i16 74, label %13
  ]

13:                                               ; preds = %2, %2
  %14 = sub nsw i64 0, %11
  br label %48

15:                                               ; preds = %2
  %16 = and i32 %5, 65534
  %17 = icmp eq i32 %16, 78
  br i1 %17, label %18, label %48

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = add nsw i32 %22, -49
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3073, ptr noundef nonnull @.str.1) #17
  br label %26

26:                                               ; preds = %18, %25
  %27 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 30
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3074, ptr noundef nonnull @.str.1) #17
  %33 = load ptr, ptr %27, align 8, !tbaa !9
  br label %34

34:                                               ; preds = %26, %32
  %35 = phi ptr [ %28, %26 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !9
  %38 = load i32, ptr %20, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 50
  %41 = sub nsw i64 0, %37
  %42 = select i1 %40, i64 %41, i64 %37
  %43 = icmp eq i64 %11, %42
  %44 = sub nsw i64 0, %42
  %45 = icmp eq i64 %11, %44
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3078, ptr noundef nonnull @.str.1) #17
  br label %48

48:                                               ; preds = %47, %34, %15, %13
  %49 = phi i64 [ %14, %13 ], [ %11, %15 ], [ %42, %34 ], [ %42, %47 ]
  %50 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !5
  %51 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %49) #17
  %52 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !5
  %53 = tail call ptr @expand_simple_binop(i32 noundef 16, i32 noundef 49, ptr noundef %50, ptr noundef %51, ptr noundef %52, i32 noundef 0, i32 noundef 3) #17
  %54 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !5
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = tail call ptr @emit_move_insn(ptr noundef %54, ptr noundef %53) #18
  br label %58

58:                                               ; preds = %56, %48
  switch i16 %12, label %65 [
    i16 75, label %59
    i16 74, label %59
    i16 78, label %59
    i16 77, label %61
    i16 76, label %61
    i16 79, label %61
  ]

59:                                               ; preds = %58, %58, %58
  %60 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !5
  br label %66

61:                                               ; preds = %58, %58, %58
  %62 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !5
  %63 = sub nsw i64 0, %49
  %64 = tail call ptr @plus_constant(ptr noundef %62, i64 noundef %63) #17
  br label %66

65:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3103, ptr noundef nonnull @.str.1) #17
  br label %66

66:                                               ; preds = %65, %61, %59
  %67 = phi ptr [ %53, %65 ], [ %64, %61 ], [ %60, %59 ]
  %68 = tail call ptr @replace_equiv_address(ptr noundef nonnull %1, ptr noundef %67) #17
  ret ptr %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @read_complex_part(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 41
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = zext i8 %1 to i64
  %9 = getelementptr inbounds [1 x %union.rtunion_def], ptr %7, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  br label %85

11:                                               ; preds = %2
  %12 = lshr i32 %3, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = zext i8 %16 to i32
  %18 = zext i8 %16 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !9
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 3
  %23 = icmp eq i32 %4, 43
  br i1 %23, label %24, label %55

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 67174399
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %30
  %35 = load i64, ptr %32, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 26
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = icmp eq i8 %1, 0
  %40 = getelementptr inbounds %struct.tree_complex, ptr %32, i64 0, i32 2
  %41 = getelementptr inbounds %struct.tree_complex, ptr %32, i64 0, i32 1
  %42 = select i1 %39, ptr %41, ptr %40
  %43 = load ptr, ptr %42, align 8, !tbaa !9
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !22
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %43, ptr noundef null, i32 noundef %17, i32 noundef 0) #18
  br label %85

51:                                               ; preds = %30, %34, %38, %24
  %52 = icmp eq i8 %1, 0
  %53 = select i1 %52, i64 0, i64 %21
  %54 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef %17, i64 noundef %53, i32 noundef 0, i32 noundef 1) #17
  br label %85

55:                                               ; preds = %11
  %56 = icmp ugt i8 %20, 3
  br i1 %56, label %68, label %57

57:                                               ; preds = %55
  %58 = icmp eq i32 %4, 37
  br i1 %58, label %59, label %81

59:                                               ; preds = %57
  %60 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #18
  %61 = icmp ult i32 %60, 53
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = zext nneg i32 %60 to i64
  %64 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %63, i64 %14
  %65 = load i8, ptr %64, align 1, !tbaa !9
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %62, %55
  %69 = icmp eq i8 %1, 0
  %70 = select i1 %69, i8 0, i8 %20
  %71 = zext i8 %70 to i32
  %72 = tail call ptr @simplify_gen_subreg(i32 noundef %17, ptr noundef nonnull %0, i32 noundef %13, i32 noundef %71) #17
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load i32, ptr %0, align 8
  %76 = and i32 %75, 65535
  %77 = icmp eq i32 %76, 43
  %78 = icmp ult i8 %20, 4
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2969, ptr noundef nonnull @.str.1) #17
  br label %81

81:                                               ; preds = %74, %80, %62, %59, %57
  %82 = icmp eq i8 %1, 0
  %83 = select i1 %82, i64 0, i64 %22
  %84 = tail call ptr @extract_bit_field(ptr noundef nonnull %0, i64 noundef %22, i64 noundef %83, i32 noundef 1, ptr noundef null, i32 noundef %17, i32 noundef %17) #17
  br label %85

85:                                               ; preds = %68, %49, %81, %51, %6
  %86 = phi ptr [ %10, %6 ], [ %54, %51 ], [ %84, %81 ], [ %50, %49 ], [ %72, %68 ]
  ret ptr %86
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_move_complex_parts(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !22
  %4 = icmp ne i32 %3, 0
  %5 = load i32, ptr @reload_in_progress, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %0, ptr noundef %1) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call ptr @emit_clobber(ptr noundef nonnull %0) #17
  br label %17

17:                                               ; preds = %15, %12, %8, %2
  %18 = tail call fastcc ptr @read_complex_part(ptr noundef %1, i8 noundef zeroext 0) #18
  tail call fastcc void @write_complex_part(ptr noundef %0, ptr noundef %18, i8 noundef zeroext 0) #18
  %19 = tail call fastcc ptr @read_complex_part(ptr noundef %1, i8 noundef zeroext 1) #18
  tail call fastcc void @write_complex_part(ptr noundef %0, ptr noundef %19, i8 noundef zeroext 1) #18
  %20 = tail call ptr @get_last_insn() #17
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_move_insn_1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp ult i32 %5, 87
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3378, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %2, %7
  %9 = zext nneg i32 %5 to i64
  %10 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !25
  %12 = icmp eq i32 %11, 2956
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %14, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = tail call ptr (ptr, ...) %16(ptr noundef nonnull %0, ptr noundef %1) #17
  %18 = tail call ptr @emit_insn(ptr noundef %17) #17
  br label %47

19:                                               ; preds = %8
  %20 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %21 = load i8, ptr %20, align 1, !tbaa !9
  switch i8 %21, label %31 [
    i8 10, label %22
    i8 11, label %22
    i8 9, label %24
    i8 4, label %24
    i8 13, label %24
    i8 6, label %24
    i8 15, label %24
    i8 5, label %24
    i8 14, label %24
    i8 7, label %24
    i8 16, label %24
    i8 1, label %29
  ]

22:                                               ; preds = %19, %19
  %23 = tail call fastcc ptr @emit_move_complex(i32 noundef %5, ptr noundef nonnull %0, ptr noundef %1) #18
  br label %47

24:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19
  %25 = tail call fastcc ptr @emit_move_via_integer(i32 noundef %5, ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext 1) #18
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = tail call fastcc ptr @emit_move_multi_word(i32 noundef %5, ptr noundef nonnull %0, ptr noundef %1) #18
  br label %47

29:                                               ; preds = %19
  %30 = tail call fastcc ptr @emit_move_ccmode(i32 noundef %5, ptr noundef nonnull %0, ptr noundef %1) #18
  br label %47

31:                                               ; preds = %19
  %32 = load i32, ptr %1, align 8
  %33 = and i32 %32, 65535
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !22
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %40 = load i8, ptr %39, align 1, !tbaa !9
  %41 = icmp ult i8 %40, 9
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %31
  %43 = tail call fastcc ptr @emit_move_via_integer(i32 noundef %5, ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %38
  %46 = tail call fastcc ptr @emit_move_multi_word(i32 noundef %5, ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  br label %47

47:                                               ; preds = %27, %24, %42, %45, %29, %22, %13
  %48 = phi ptr [ %18, %13 ], [ %23, %22 ], [ %30, %29 ], [ %46, %45 ], [ %43, %42 ], [ %28, %27 ], [ %25, %24 ]
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_move_complex(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @push_operand(ptr noundef %1, i32 noundef %0) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @emit_move_complex_push(i32 noundef %0, ptr noundef %1, ptr noundef %2) #18
  br label %69

8:                                                ; preds = %3
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !9
  %12 = icmp eq i8 %11, 11
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %9
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !25
  %19 = icmp eq i32 %18, 2956
  br i1 %19, label %20, label %67

20:                                               ; preds = %13, %8
  %21 = load i32, ptr %1, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 41
  br i1 %23, label %67, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %2, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 41
  br i1 %27, label %67, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @register_operand(ptr noundef nonnull %1, i32 noundef %0) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @register_operand(ptr noundef nonnull %2, i32 noundef %0) #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %1, align 8
  br label %49

36:                                               ; preds = %31, %28
  %37 = load i32, ptr %1, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 43
  %40 = load i32, ptr %2, align 8
  %41 = and i32 %40, 65535
  br i1 %39, label %42, label %47

42:                                               ; preds = %36
  %43 = zext nneg i32 %41 to i64
  %44 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !22
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %67, label %49

47:                                               ; preds = %36
  %48 = icmp eq i32 %41, 43
  br i1 %48, label %49, label %67

49:                                               ; preds = %34, %47, %42
  %50 = phi i32 [ %35, %34 ], [ %37, %47 ], [ %37, %42 ]
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 43
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i32, ptr %2, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 43
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %59 = load i8, ptr %58, align 1, !tbaa !9
  %60 = zext i8 %59 to i64
  %61 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %60) #17
  %62 = tail call ptr @emit_block_move(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %61, i32 noundef 1) #18
  %63 = tail call ptr @get_last_insn() #17
  br label %69

64:                                               ; preds = %49, %53
  %65 = tail call fastcc ptr @emit_move_via_integer(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 1) #18
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %42, %47, %13, %24, %20, %64
  %68 = tail call ptr @emit_move_complex_parts(ptr noundef %1, ptr noundef %2) #18
  br label %69

69:                                               ; preds = %57, %64, %67, %6
  %70 = phi ptr [ %7, %6 ], [ %68, %67 ], [ %65, %64 ], [ %63, %57 ]
  ret ptr %70
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_move_via_integer(i32 noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = tail call i32 @int_mode_for_mode(i32 noundef %0) #17
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !25
  %11 = icmp eq i32 %10, 2956
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = tail call fastcc ptr @emit_move_change_mode(i32 noundef %5, i32 noundef %0, ptr noundef %1, i8 noundef zeroext %3) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @emit_move_change_mode(i32 noundef %5, i32 noundef %0, ptr noundef %2, i8 noundef zeroext %3) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = zext i32 %10 to i64
  %20 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %19, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = tail call ptr (ptr, ...) %21(ptr noundef nonnull %13, ptr noundef nonnull %16) #17
  %23 = tail call ptr @emit_insn(ptr noundef %22) #17
  br label %24

24:                                               ; preds = %15, %12, %7, %4, %18
  %25 = phi ptr [ %23, %18 ], [ null, %4 ], [ null, %7 ], [ null, %12 ], [ null, %15 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_move_multi_word(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !9
  %7 = icmp ugt i8 %6, 3
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3300, ptr noundef nonnull @.str.1) #17
  br label %9

9:                                                ; preds = %3, %8
  %10 = tail call i32 @push_operand(ptr noundef %1, i32 noundef %0) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @emit_move_resolve_push(i32 noundef %0, ptr noundef %1) #18
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %13, %12 ], [ %1, %9 ]
  %16 = load i32, ptr @reload_in_progress, align 4, !tbaa !22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %15, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 43
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %24 = tail call ptr @find_replacement(ptr noundef nonnull %23) #17
  %25 = load ptr, ptr %23, align 8, !tbaa !9
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %15, ptr noundef %24) #17
  br label %29

29:                                               ; preds = %27, %22, %18
  %30 = phi ptr [ %15, %18 ], [ %15, %22 ], [ %28, %27 ]
  %31 = load i32, ptr @reload_in_progress, align 4, !tbaa !22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %2, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 43
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %39 = tail call ptr @find_replacement(ptr noundef nonnull %38) #17
  %40 = load ptr, ptr %38, align 8, !tbaa !9
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %2, ptr noundef %39) #17
  br label %44

44:                                               ; preds = %14, %42, %37, %33, %29
  %45 = phi ptr [ %30, %42 ], [ %30, %37 ], [ %30, %33 ], [ %30, %29 ], [ %15, %14 ]
  %46 = phi ptr [ %43, %42 ], [ %2, %37 ], [ %2, %33 ], [ %2, %29 ], [ %2, %14 ]
  tail call void @start_sequence() #17
  %47 = load i8, ptr %5, align 1, !tbaa !9
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %99, label %49

49:                                               ; preds = %44, %87
  %50 = phi i32 [ %91, %87 ], [ 0, %44 ]
  %51 = phi i8 [ %90, %87 ], [ 0, %44 ]
  %52 = phi ptr [ %89, %87 ], [ %46, %44 ]
  %53 = phi ptr [ %88, %87 ], [ null, %44 ]
  %54 = tail call ptr @operand_subword(ptr noundef %45, i32 noundef %50, i32 noundef 1, i32 noundef %0) #17
  %55 = tail call fastcc zeroext i8 @undefined_operand_subword_p(ptr noundef %52, i32 noundef %50) #18, !range !116
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %49
  %58 = tail call ptr @operand_subword(ptr noundef %52, i32 noundef %50, i32 noundef 1, i32 noundef %0) #17
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load i32, ptr %52, align 8
  %62 = and i32 %61, 65535
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !22
  %66 = icmp eq i32 %65, 9
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = tail call ptr @force_const_mem(i32 noundef %0, ptr noundef nonnull %52) #17
  %69 = tail call ptr @use_anchored_address(ptr noundef %68) #17
  %70 = tail call ptr @operand_subword(ptr noundef %69, i32 noundef %50, i32 noundef 1, i32 noundef %0) #17
  br label %73

71:                                               ; preds = %60
  %72 = tail call ptr @operand_subword_force(ptr noundef nonnull %52, i32 noundef %50, i32 noundef %0) #17
  br label %73

73:                                               ; preds = %57, %71, %67
  %74 = phi ptr [ %69, %67 ], [ %52, %71 ], [ %52, %57 ]
  %75 = phi ptr [ %70, %67 ], [ %72, %71 ], [ %58, %57 ]
  %76 = icmp ne ptr %54, null
  %77 = icmp ne ptr %75, null
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3344, ptr noundef nonnull @.str.1) #17
  br label %80

80:                                               ; preds = %73, %79
  %81 = load i32, ptr %54, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 39
  %84 = zext i1 %83 to i8
  %85 = or i8 %51, %84
  %86 = tail call ptr @emit_move_insn(ptr noundef nonnull %54, ptr noundef %75) #18
  br label %87

87:                                               ; preds = %49, %80
  %88 = phi ptr [ %86, %80 ], [ %53, %49 ]
  %89 = phi ptr [ %74, %80 ], [ %52, %49 ]
  %90 = phi i8 [ %85, %80 ], [ %51, %49 ]
  %91 = add nuw nsw i32 %50, 1
  %92 = load i8, ptr %5, align 1, !tbaa !9
  %93 = zext i8 %92 to i32
  %94 = add nuw nsw i32 %93, 3
  %95 = lshr i32 %94, 2
  %96 = icmp ult i32 %91, %95
  br i1 %96, label %49, label %97, !llvm.loop !117

97:                                               ; preds = %87
  %98 = icmp ne i8 %90, 0
  br label %99

99:                                               ; preds = %97, %44
  %100 = phi ptr [ null, %44 ], [ %88, %97 ]
  %101 = phi ptr [ %46, %44 ], [ %89, %97 ]
  %102 = phi i1 [ false, %44 ], [ %98, %97 ]
  %103 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  %104 = icmp ne ptr %45, %101
  %105 = load i32, ptr @reload_in_progress, align 4
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %104, i1 %106, i1 false
  %108 = load i32, ptr @reload_completed, align 4
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %107, i1 %109, i1 false
  %111 = select i1 %110, i1 %102, i1 false
  br i1 %111, label %112, label %114

112:                                              ; preds = %99
  %113 = tail call ptr @emit_clobber(ptr noundef %45) #17
  br label %114

114:                                              ; preds = %112, %99
  %115 = tail call ptr @emit_insn(ptr noundef %103) #17
  ret ptr %100
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_move_ccmode(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %0, 2
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 2), align 8, !tbaa !25
  %7 = icmp eq i32 %6, 2956
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @emit_move_change_mode(i32 noundef 2, i32 noundef %0, ptr noundef %1, i8 noundef zeroext 1) #18
  %10 = tail call fastcc ptr @emit_move_change_mode(i32 noundef 2, i32 noundef %0, ptr noundef %2, i8 noundef zeroext 1) #18
  %11 = zext i32 %6 to i64
  %12 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = tail call ptr (ptr, ...) %13(ptr noundef %9, ptr noundef %10) #17
  %15 = tail call ptr @emit_insn(ptr noundef %14) #17
  br label %20

16:                                               ; preds = %5, %3
  %17 = tail call fastcc ptr @emit_move_via_integer(i32 noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3251, ptr noundef nonnull @.str.1) #17
  br label %20

20:                                               ; preds = %8, %19, %16
  %21 = phi ptr [ %15, %8 ], [ %17, %16 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compress_float_constant(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.real_value, align 8
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = load i32, ptr %1, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %10 = tail call zeroext i8 @optimize_insn_for_speed_p() #17
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !118
  %12 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %1) #17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = tail call i32 @rtx_cost(ptr noundef nonnull %1, i32 noundef 23, i8 noundef zeroext %10) #17
  br label %19

16:                                               ; preds = %2
  %17 = tail call ptr @force_const_mem(i32 noundef %6, ptr noundef nonnull %1) #17
  %18 = tail call i32 @rtx_cost(ptr noundef %17, i32 noundef 23, i8 noundef zeroext %10) #17
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i32 [ %15, %14 ], [ %18, %16 ]
  %21 = zext nneg i32 %9 to i64
  %22 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [18 x i8], ptr @class_narrowest_mode, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %9, %27
  br i1 %28, label %82, label %29

29:                                               ; preds = %19
  %30 = zext nneg i32 %6 to i64
  br label %31

31:                                               ; preds = %29, %76
  %32 = phi i32 [ %27, %29 ], [ %80, %76 ]
  %33 = phi i8 [ %26, %29 ], [ %79, %76 ]
  %34 = call i32 @can_extend_p(i32 noundef %6, i32 noundef %32, i32 noundef 0) #17
  %35 = icmp eq i32 %34, 2956
  br i1 %35, label %76, label %36

36:                                               ; preds = %31
  %37 = call zeroext i8 @exact_real_truncate(i32 noundef %32, ptr noundef nonnull %3) #17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %76, label %39

39:                                               ; preds = %36
  %40 = call ptr @const_double_from_real_value(ptr noundef nonnull byval(%struct.real_value) align 8 %3, i32 noundef %32) #17
  %41 = call zeroext i8 @legitimate_constant_p(ptr noundef %40) #17
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = zext i32 %34 to i64
  %45 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %44, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !13
  %47 = getelementptr inbounds %struct.insn_operand_data, ptr %46, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !15
  %49 = call i32 %48(ptr noundef %40, i32 noundef %32) #17
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %76, label %51

51:                                               ; preds = %43
  %52 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 101, i32 noundef %6, ptr noundef %40) #17
  %53 = call i32 @rtx_cost(ptr noundef %52, i32 noundef 23, i8 noundef zeroext %10) #17
  %54 = icmp slt i32 %20, %53
  br i1 %54, label %76, label %67

55:                                               ; preds = %39
  %56 = zext i8 %33 to i64
  %57 = getelementptr inbounds [87 x [87 x i8]], ptr @float_extend_from_mem, i64 0, i64 %30, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !9
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %55
  %61 = call ptr @force_const_mem(i32 noundef %32, ptr noundef %40) #17
  %62 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 101, i32 noundef %6, ptr noundef %61) #17
  %63 = call i32 @rtx_cost(ptr noundef %62, i32 noundef 23, i8 noundef zeroext %10) #17
  %64 = icmp slt i32 %20, %63
  br i1 %64, label %76, label %65

65:                                               ; preds = %60
  %66 = call ptr @validize_mem(ptr noundef %61) #17
  br label %67

67:                                               ; preds = %51, %65
  %68 = phi ptr [ %66, %65 ], [ %40, %51 ]
  %69 = call ptr @force_reg(i32 noundef %32, ptr noundef %68) #17
  call void @emit_unop_insn(i32 noundef %34, ptr noundef nonnull %0, ptr noundef %69, i32 noundef 0) #17
  %70 = call ptr @get_last_insn() #17
  %71 = load i32, ptr %0, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 37
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = call ptr @set_unique_reg_note(ptr noundef %70, i32 noundef 4, ptr noundef nonnull %1) #17
  br label %82

76:                                               ; preds = %31, %36, %43, %51, %60, %55
  %77 = zext i8 %33 to i64
  %78 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !9
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %9, %80
  br i1 %81, label %82, label %31, !llvm.loop !119

82:                                               ; preds = %76, %19, %74, %67
  %83 = phi ptr [ %70, %74 ], [ %70, %67 ], [ null, %19 ], [ null, %76 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret ptr %83
}

; Function Attrs: optsize
declare ptr @use_anchored_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @memory_address_addr_space_p(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @push_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @push_block(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @ptr_mode, align 4, !tbaa !22
  %5 = tail call ptr @convert_modes(i32 noundef 16, i32 noundef %4, ptr noundef %0, i32 noundef 1) #18
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !22
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = sext i32 %1 to i64
  %14 = tail call ptr @plus_constant(ptr noundef nonnull %5, i64 noundef %13) #17
  br label %27

15:                                               ; preds = %3
  %16 = icmp eq i32 %7, 37
  %17 = icmp eq i32 %1, 0
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  tail call void @anti_adjust_stack(ptr noundef nonnull %5) #17
  %20 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !5
  br label %36

21:                                               ; preds = %15
  %22 = tail call ptr @copy_to_mode_reg(i32 noundef 16, ptr noundef nonnull %5) #17
  br i1 %17, label %27, label %23

23:                                               ; preds = %21
  %24 = sext i32 %1 to i64
  %25 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %24) #17
  %26 = tail call ptr @expand_binop(i32 noundef 16, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr noundef %22, ptr noundef %25, ptr noundef %22, i32 noundef 0, i32 noundef 3) #17
  br label %27

27:                                               ; preds = %21, %23, %12
  %28 = phi ptr [ %14, %12 ], [ %26, %23 ], [ %22, %21 ]
  tail call void @anti_adjust_stack(ptr noundef %28) #17
  %29 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !5
  %30 = icmp ne i32 %1, 0
  %31 = icmp ne i32 %2, 0
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = sext i32 %1 to i64
  %35 = tail call ptr @plus_constant(ptr noundef %29, i64 noundef %34) #17
  br label %36

36:                                               ; preds = %19, %33, %27
  %37 = phi ptr [ %35, %33 ], [ %29, %27 ], [ %20, %19 ]
  %38 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !9
  %39 = zext i8 %38 to i32
  %40 = tail call ptr @memory_address_addr_space(i32 noundef %39, ptr noundef %37, i8 noundef zeroext 0) #17
  ret ptr %40
}

; Function Attrs: optsize
declare void @anti_adjust_stack(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_push_insn(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11) local_unnamed_addr #0 {
  %13 = icmp eq i32 %1, 1
  br i1 %13, label %14, label %143

14:                                               ; preds = %12
  %15 = srem i32 %5, 4
  %16 = sub nsw i32 %5, %15
  %17 = icmp eq ptr %3, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3793, ptr noundef nonnull @.str.1) #17
  br label %19

19:                                               ; preds = %14, %18
  %20 = icmp eq i32 %5, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = sext i32 %16 to i64
  %23 = tail call ptr @adjust_address_1(ptr noundef %0, i32 noundef 1, i64 noundef %22, i32 noundef 1, i32 noundef 1) #17
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi ptr [ %23, %21 ], [ %0, %19 ]
  %26 = icmp eq i32 %10, 0
  %27 = select i1 %26, i32 0, i32 %16
  %28 = icmp eq ptr %8, null
  br i1 %28, label %29, label %85

29:                                               ; preds = %24
  %30 = load i32, ptr @target_flags, align 4, !tbaa !22
  %31 = and i32 %30, 8196
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %85

33:                                               ; preds = %29
  %34 = tail call i32 @ix86_cfun_abi() #17
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %85, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %3, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 30
  %40 = icmp eq i32 %27, 0
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %85

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.mem_attrs, ptr %44, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !48
  br label %49

49:                                               ; preds = %42, %46
  %50 = phi i32 [ %48, %46 ], [ 8, %42 ]
  %51 = icmp ult i32 %50, %4
  br i1 %51, label %85, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !9
  %55 = trunc i64 %54 to i32
  %56 = sub i32 %55, %16
  %57 = zext i32 %56 to i64
  %58 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %57, i32 noundef %4) #18
  %59 = tail call zeroext i8 @optimize_insn_for_speed_p() #17
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = load ptr, ptr @ix86_cost, align 8, !tbaa !5
  %63 = getelementptr inbounds %struct.processor_costs, ptr %62, i64 0, i32 10
  %64 = load i32, ptr %63, align 4, !tbaa !31
  %65 = zext i32 %64 to i64
  br label %66

66:                                               ; preds = %52, %61
  %67 = phi i64 [ %65, %61 ], [ 3, %52 ]
  %68 = icmp ult i64 %58, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load i64, ptr %53, align 8, !tbaa !9
  %71 = add nsw i64 %70, 3
  %72 = and i64 %71, -4
  %73 = icmp eq i64 %72, %70
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = icmp eq i32 %7, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %74
  %77 = sext i32 %7 to i64
  %78 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %77) #17
  tail call void @anti_adjust_stack(ptr noundef %78) #17
  %79 = load i64, ptr %53, align 8, !tbaa !9
  br label %80

80:                                               ; preds = %76, %74
  %81 = phi i64 [ %79, %76 ], [ %70, %74 ]
  %82 = sext i32 %16 to i64
  %83 = sub nsw i64 %81, %82
  %84 = tail call ptr @move_by_pieces(ptr noundef null, ptr noundef nonnull %25, i64 noundef %83, i32 noundef %4, i32 noundef 0) #18
  br label %247

85:                                               ; preds = %69, %66, %49, %36, %33, %29, %24
  br i1 %20, label %101, label %86

86:                                               ; preds = %85
  %87 = load i32, ptr %3, align 8
  %88 = and i32 %87, 65535
  %89 = icmp eq i32 %88, 30
  %90 = sext i32 %16 to i64
  br i1 %89, label %91, label %96

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !9
  %94 = sub nsw i64 %93, %90
  %95 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %94) #17
  br label %101

96:                                               ; preds = %86
  %97 = lshr i32 %87, 16
  %98 = and i32 %97, 255
  %99 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %90) #17
  %100 = tail call ptr @expand_binop(i32 noundef %98, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %3, ptr noundef %99, ptr noundef null, i32 noundef 0, i32 noundef 3) #17
  br label %101

101:                                              ; preds = %91, %96, %85
  %102 = phi ptr [ %95, %91 ], [ %100, %96 ], [ %3, %85 ]
  br i1 %28, label %103, label %105

103:                                              ; preds = %101
  %104 = tail call ptr @push_block(ptr noundef %102, i32 noundef %7, i32 noundef 0) #18
  br label %121

105:                                              ; preds = %101
  %106 = load i32, ptr %9, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 30
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = sext i32 %27 to i64
  %111 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %112 = load i64, ptr %111, align 8, !tbaa !9
  %113 = add nsw i64 %112, %110
  %114 = tail call ptr @plus_constant(ptr noundef nonnull %8, i64 noundef %113) #17
  %115 = tail call ptr @memory_address_addr_space(i32 noundef 1, ptr noundef %114, i8 noundef zeroext 0) #17
  br label %121

116:                                              ; preds = %105
  %117 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef nonnull %8, ptr noundef nonnull %9) #17
  %118 = sext i32 %27 to i64
  %119 = tail call ptr @plus_constant(ptr noundef %117, i64 noundef %118) #17
  %120 = tail call ptr @memory_address_addr_space(i32 noundef 1, ptr noundef %119, i8 noundef zeroext 0) #17
  br label %121

121:                                              ; preds = %109, %116, %103
  %122 = phi ptr [ %115, %109 ], [ %120, %116 ], [ %104, %103 ]
  %123 = load i32, ptr @target_flags, align 4, !tbaa !22
  %124 = and i32 %123, 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = tail call i32 @ix86_cfun_abi() #17
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %139, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !5
  %131 = tail call i32 @reg_mentioned_p(ptr noundef %130, ptr noundef %122) #17
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !5
  %135 = tail call i32 @reg_mentioned_p(ptr noundef %134, ptr noundef %122) #17
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %133, %129
  %138 = tail call ptr @copy_to_reg(ptr noundef %122) #17
  br label %139

139:                                              ; preds = %133, %137, %126, %121
  %140 = phi ptr [ %122, %121 ], [ %122, %126 ], [ %138, %137 ], [ %122, %133 ]
  %141 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %140) #17
  tail call void @set_mem_align(ptr noundef %141, i32 noundef %4) #17
  %142 = tail call ptr @emit_block_move(ptr noundef %141, ptr noundef %25, ptr noundef %102, i32 noundef 2) #18
  br label %247

143:                                              ; preds = %12
  %144 = icmp sgt i32 %5, 0
  br i1 %144, label %145, label %216

145:                                              ; preds = %143
  %146 = zext i32 %1 to i64
  %147 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !9
  %149 = lshr i8 %148, 2
  %150 = zext nneg i8 %149 to i32
  %151 = and i32 %5, 3
  %152 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %153 = load i64, ptr %152, align 8, !tbaa !9
  %154 = trunc i64 %153 to i32
  %155 = icmp ne i32 %7, 0
  %156 = icmp eq ptr %8, null
  %157 = and i1 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %145
  %159 = sext i32 %7 to i64
  %160 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %159) #17
  tail call void @anti_adjust_stack(ptr noundef %160) #17
  br label %161

161:                                              ; preds = %158, %145
  %162 = select i1 %156, i32 0, i32 %151
  %163 = sub nsw i32 %5, %162
  %164 = sdiv i32 %163, 4
  %165 = icmp eq i32 %10, 0
  %166 = load i32, ptr %0, align 8
  %167 = and i32 %166, 65535
  %168 = zext nneg i32 %167 to i64
  %169 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !22
  %171 = icmp eq i32 %170, 9
  br i1 %171, label %172, label %178

172:                                              ; preds = %161
  %173 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %0) #17
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = tail call ptr @force_const_mem(i32 noundef %1, ptr noundef nonnull %0) #17
  %177 = tail call ptr @validize_mem(ptr noundef %176) #17
  br label %178

178:                                              ; preds = %175, %172, %161
  %179 = phi ptr [ %0, %172 ], [ %177, %175 ], [ %0, %161 ]
  %180 = load i32, ptr %179, align 8
  %181 = and i32 %180, 65535
  %182 = icmp eq i32 %181, 37
  br i1 %182, label %183, label %195

183:                                              ; preds = %178
  %184 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %179) #18
  %185 = icmp ult i32 %184, 53
  br i1 %185, label %186, label %195

186:                                              ; preds = %183
  %187 = lshr i32 %180, 16
  %188 = and i32 %187, 255
  %189 = zext nneg i32 %188 to i64
  %190 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !9
  %192 = icmp eq i8 %191, 2
  br i1 %192, label %195, label %193

193:                                              ; preds = %186
  %194 = tail call ptr @copy_to_reg(ptr noundef nonnull %179) #17
  br label %195

195:                                              ; preds = %193, %186, %183, %178
  %196 = phi ptr [ %194, %193 ], [ %179, %186 ], [ %179, %183 ], [ %179, %178 ]
  %197 = icmp ult i32 %164, %150
  br i1 %197, label %198, label %247

198:                                              ; preds = %195
  %199 = select i1 %165, i32 %164, i32 0
  %200 = lshr i8 %148, 2
  %201 = zext nneg i8 %200 to i64
  %202 = zext nneg i32 %164 to i64
  br label %203

203:                                              ; preds = %198, %203
  %204 = phi i64 [ %201, %198 ], [ %205, %203 ]
  %205 = add nsw i64 %204, -1
  %206 = trunc i64 %205 to i32
  %207 = tail call ptr @operand_subword_force(ptr noundef %196, i32 noundef %206, i32 noundef %1) #17
  %208 = load i32, ptr @word_mode, align 4, !tbaa !22
  %209 = trunc i64 %205 to i32
  %210 = sub i32 %209, %199
  %211 = shl nsw i32 %210, 2
  %212 = add nsw i32 %211, %154
  %213 = sext i32 %212 to i64
  %214 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %213) #17
  tail call void @emit_push_insn(ptr noundef %207, i32 noundef %208, ptr noundef null, ptr noundef null, i32 noundef %4, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %8, ptr noundef %214, i32 noundef %10, ptr noundef %11) #18
  %215 = icmp sgt i64 %205, %202
  br i1 %215, label %203, label %247, !llvm.loop !120

216:                                              ; preds = %143
  %217 = icmp ne i32 %7, 0
  %218 = icmp eq ptr %8, null
  %219 = and i1 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = sext i32 %7 to i64
  %222 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %221) #17
  tail call void @anti_adjust_stack(ptr noundef %222) #17
  br label %224

223:                                              ; preds = %216
  br i1 %218, label %224, label %232

224:                                              ; preds = %220, %223
  %225 = load i32, ptr @target_flags, align 4, !tbaa !22
  %226 = and i32 %225, 8196
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = tail call i32 @ix86_cfun_abi() #17
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %232, label %231

231:                                              ; preds = %228
  tail call fastcc void @emit_single_push_insn(i32 noundef %1, ptr noundef %0, ptr noundef %2) #18
  br label %264

232:                                              ; preds = %228, %224, %223
  %233 = load i32, ptr %9, align 8
  %234 = and i32 %233, 65535
  %235 = icmp eq i32 %234, 30
  br i1 %235, label %236, label %240

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %238 = load i64, ptr %237, align 8, !tbaa !9
  %239 = tail call ptr @plus_constant(ptr noundef %8, i64 noundef %238) #17
  br label %242

240:                                              ; preds = %232
  %241 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %8, ptr noundef nonnull %9) #17
  br label %242

242:                                              ; preds = %240, %236
  %243 = phi ptr [ %241, %240 ], [ %239, %236 ]
  %244 = tail call ptr @memory_address_addr_space(i32 noundef %1, ptr noundef %243, i8 noundef zeroext 0) #17
  %245 = tail call ptr @gen_rtx_MEM(i32 noundef %1, ptr noundef %244) #17
  tail call void @set_mem_align(ptr noundef %245, i32 noundef %4) #17
  %246 = tail call ptr @emit_move_insn(ptr noundef %245, ptr noundef %0) #18
  br label %264

247:                                              ; preds = %203, %195, %80, %139
  %248 = phi ptr [ %0, %139 ], [ %0, %80 ], [ %196, %195 ], [ %196, %203 ]
  %249 = icmp sgt i32 %5, 0
  %250 = icmp ne ptr %6, null
  %251 = and i1 %249, %250
  br i1 %251, label %252, label %264

252:                                              ; preds = %247
  %253 = load i32, ptr %6, align 8
  %254 = and i32 %253, 65535
  %255 = icmp eq i32 %254, 15
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  tail call void @emit_group_load(ptr noundef nonnull %6, ptr noundef %248, ptr poison, i32 noundef -1) #18
  br label %264

257:                                              ; preds = %252
  %258 = and i32 %5, 3
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %257
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4012, ptr noundef nonnull @.str.1) #17
  br label %261

261:                                              ; preds = %257, %260
  %262 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #18
  %263 = lshr i32 %5, 2
  tail call void @move_block_to_reg(i32 noundef %262, ptr noundef %248, i32 noundef %263, i32 noundef %1) #18
  br label %264

264:                                              ; preds = %242, %231, %256, %261, %247
  %265 = icmp eq ptr %8, null
  %266 = icmp ne ptr %11, null
  %267 = and i1 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  tail call void @anti_adjust_stack(ptr noundef nonnull %11) #17
  br label %269

269:                                              ; preds = %268, %264
  ret void
}

; Function Attrs: optsize
declare i32 @ix86_cfun_abi() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_align(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_single_push_insn(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  %8 = add nuw nsw i32 %7, 3
  %9 = and i32 %8, 508
  %10 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !121
  %11 = add nsw i32 %9, %10
  store i32 %11, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !121
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !25
  %15 = icmp eq i32 %14, 2956
  br i1 %15, label %34, label %16

16:                                               ; preds = %3
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %17, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = tail call i32 %20(ptr noundef %1, i32 noundef %0) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call ptr @force_reg(i32 noundef %0, ptr noundef %1) #17
  br label %27

27:                                               ; preds = %25, %22, %16
  %28 = phi ptr [ %1, %22 ], [ %26, %25 ], [ %1, %16 ]
  %29 = zext i32 %14 to i64
  %30 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %29, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = tail call ptr (ptr, ...) %31(ptr noundef %28) #17
  %33 = tail call ptr @emit_insn(ptr noundef %32) #17
  br label %56

34:                                               ; preds = %3
  %35 = icmp eq i32 %9, %7
  %36 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !5
  br i1 %35, label %37, label %39

37:                                               ; preds = %34
  %38 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 74, i32 noundef 16, ptr noundef %36) #17
  br label %46

39:                                               ; preds = %34
  %40 = zext nneg i32 %9 to i64
  %41 = sub nsw i64 0, %40
  %42 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %41) #17
  %43 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %36, ptr noundef %42) #17
  %44 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !5
  %45 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 78, i32 noundef 16, ptr noundef %44, ptr noundef %43) #17
  br label %46

46:                                               ; preds = %39, %37
  %47 = phi ptr [ %38, %37 ], [ %45, %39 ]
  %48 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %47) #17
  %49 = icmp eq ptr %2, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  tail call void @set_mem_attributes(ptr noundef %48, ptr noundef nonnull %2, i32 noundef 1) #17
  %51 = load i32, ptr @flag_optimize_sibling_calls, align 4, !tbaa !22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @set_mem_alias_set(ptr noundef %48, i32 noundef 0) #17
  br label %54

54:                                               ; preds = %50, %53, %46
  %55 = tail call ptr @emit_move_insn(ptr noundef %48, ptr noundef %1) #18
  br label %56

56:                                               ; preds = %54, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_assignment(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = tail call fastcc ptr @expand_normal(ptr noundef %1) #18
  br label %426

15:                                               ; preds = %3
  %16 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %426

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %0) #18, !range !116
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 15
  br i1 %26, label %27, label %203

27:                                               ; preds = %21, %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !tbaa !22
  tail call void @push_temp_slots() #17
  %28 = call ptr @get_inner_reference(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 zeroext poison) #18
  %29 = tail call fastcc ptr @expand_normal(ptr noundef %28) #18
  %30 = load ptr, ptr %7, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %104, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr %29, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 43
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i64, ptr %30, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 23
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4245, ptr noundef nonnull @.str.1) #17
  br label %41

41:                                               ; preds = %36, %40
  tail call void @expand_builtin_trap() #17
  %42 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %43 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %42) #17
  br label %44

44:                                               ; preds = %41, %32
  %45 = phi ptr [ %29, %32 ], [ %43, %41 ]
  %46 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %30, ptr noundef null, i32 noundef 0, i32 noundef 2) #18
  %47 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %49 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.mem_attrs, ptr %50, i64 0, i32 5
  %54 = load i8, ptr %53, align 8, !tbaa !29
  br label %55

55:                                               ; preds = %44, %52
  %56 = phi i8 [ %54, %52 ], [ 0, %44 ]
  %57 = tail call i32 %47(i8 noundef zeroext %56) #17
  %58 = load i32, ptr %46, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = icmp eq i32 %60, %57
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = tail call ptr @convert_to_mode(i32 noundef %57, ptr noundef nonnull %46, i32 noundef 0) #18
  br label %64

64:                                               ; preds = %62, %55
  %65 = phi ptr [ %63, %62 ], [ %46, %55 ]
  %66 = load i32, ptr %45, align 8
  %67 = and i32 %66, 16777215
  %68 = icmp eq i32 %67, 65579
  br i1 %68, label %69, label %100

69:                                               ; preds = %64
  %70 = load ptr, ptr %48, align 8, !tbaa !9
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 16711680
  %73 = icmp ne i32 %72, 0
  %74 = load i64, ptr %5, align 8
  %75 = icmp sgt i64 %74, 0
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %100

77:                                               ; preds = %69
  %78 = load i64, ptr %6, align 8, !tbaa !78
  %79 = srem i64 %78, %74
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = load i32, ptr %4, align 4, !tbaa !22
  %83 = tail call i32 @get_mode_alignment(i32 noundef %82) #17
  %84 = zext i32 %83 to i64
  %85 = urem i64 %74, %84
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load ptr, ptr %49, align 8, !tbaa !9
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.mem_attrs, ptr %88, i64 0, i32 4
  %92 = load i32, ptr %91, align 4, !tbaa !48
  br label %93

93:                                               ; preds = %87, %90
  %94 = phi i32 [ %92, %90 ], [ 8, %87 ]
  %95 = tail call i32 @get_mode_alignment(i32 noundef %82) #17
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = sdiv i64 %78, 8
  %99 = tail call ptr @adjust_address_1(ptr noundef nonnull %45, i32 noundef %82, i64 noundef %98, i32 noundef 1, i32 noundef 1) #17
  store i64 0, ptr %6, align 8, !tbaa !78
  br label %100

100:                                              ; preds = %97, %93, %81, %77, %69, %64
  %101 = phi ptr [ %99, %97 ], [ %45, %93 ], [ %45, %81 ], [ %45, %77 ], [ %45, %69 ], [ %45, %64 ]
  %102 = tail call fastcc i64 @highest_pow2_factor_for_target(ptr noundef nonnull %0, ptr noundef nonnull %30) #18
  %103 = tail call ptr @offset_address(ptr noundef %101, ptr noundef %65, i64 noundef %102) #17
  br label %104

104:                                              ; preds = %100, %27
  %105 = phi ptr [ %103, %100 ], [ %29, %27 ]
  %106 = load i32, ptr %105, align 8
  %107 = trunc i32 %106 to i16
  switch i16 %107, label %108 [
    i16 41, label %110
    i16 43, label %174
  ]

108:                                              ; preds = %104
  %109 = load i64, ptr %6, align 8, !tbaa !78
  br label %188

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !9
  %113 = load i64, ptr %112, align 8
  %114 = and i64 %113, 65535
  %115 = icmp eq i64 %114, 14
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = tail call i32 @vector_type_mode(ptr noundef nonnull %112) #17
  br label %123

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.tree_type, ptr %112, i64 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = lshr i32 %120, 16
  %122 = and i32 %121, 255
  br label %123

123:                                              ; preds = %118, %116
  %124 = phi i32 [ %117, %116 ], [ %122, %118 ]
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !9
  %128 = icmp eq i8 %127, 10
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i64, ptr %6, align 8, !tbaa !78
  br label %150

131:                                              ; preds = %123
  %132 = load ptr, ptr %111, align 8, !tbaa !9
  %133 = load i64, ptr %132, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 14
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = tail call i32 @vector_type_mode(ptr noundef nonnull %132) #17
  br label %143

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.tree_type, ptr %132, i64 0, i32 6
  %140 = load i32, ptr %139, align 4
  %141 = lshr i32 %140, 16
  %142 = and i32 %141, 255
  br label %143

143:                                              ; preds = %138, %136
  %144 = phi i32 [ %137, %136 ], [ %142, %138 ]
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !9
  %148 = icmp eq i8 %147, 11
  %149 = load i64, ptr %6, align 8, !tbaa !78
  br i1 %148, label %150, label %156

150:                                              ; preds = %129, %143
  %151 = phi i64 [ %130, %129 ], [ %149, %143 ]
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4280, ptr noundef nonnull @.str.1) #17
  br label %154

154:                                              ; preds = %150, %153
  %155 = tail call ptr @store_expr(ptr noundef nonnull %1, ptr noundef nonnull %105, i32 noundef 0, i8 noundef zeroext %2) #18
  br label %202

156:                                              ; preds = %143
  %157 = icmp eq i64 %149, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %156
  %159 = load i32, ptr %4, align 4, !tbaa !22
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !9
  %163 = zext i8 %162 to i64
  %164 = shl nuw nsw i64 %163, 3
  %165 = icmp eq i64 %149, %164
  br i1 %165, label %167, label %166

166:                                              ; preds = %158
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4285, ptr noundef nonnull @.str.1) #17
  br label %167

167:                                              ; preds = %156, %158, %166
  %168 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %169 = icmp ne i64 %149, 0
  %170 = zext i1 %169 to i64
  %171 = getelementptr inbounds [1 x %union.rtunion_def], ptr %168, i64 0, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !9
  %173 = tail call ptr @store_expr(ptr noundef nonnull %1, ptr noundef %172, i32 noundef 0, i8 noundef zeroext %2) #18
  br label %202

174:                                              ; preds = %104
  %175 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %105) #17
  %176 = load i64, ptr %6, align 8, !tbaa !78
  tail call void @set_mem_attributes_minus_bitpos(ptr noundef %175, ptr noundef nonnull %0, i32 noundef 0, i64 noundef %176) #17
  %177 = load i32, ptr %9, align 4, !tbaa !22
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = load i32, ptr %175, align 8
  %181 = or i32 %180, 134217728
  store i32 %181, ptr %175, align 8
  br label %182

182:                                              ; preds = %179, %174
  %183 = tail call zeroext i8 @component_uses_parent_alias_set(ptr noundef nonnull %0) #17
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  %186 = load i32, ptr %175, align 8
  %187 = or i32 %186, 16777216
  store i32 %187, ptr %175, align 8
  br label %188

188:                                              ; preds = %108, %182, %185
  %189 = phi i64 [ %176, %185 ], [ %176, %182 ], [ %109, %108 ]
  %190 = phi ptr [ %175, %185 ], [ %175, %182 ], [ %105, %108 ]
  %191 = load i64, ptr %5, align 8, !tbaa !78
  %192 = load i32, ptr %4, align 4, !tbaa !22
  %193 = tail call fastcc zeroext i8 @optimize_bitfield_assignment_op(i64 noundef %191, i64 noundef %189, i32 noundef %192, ptr noundef %190, ptr noundef nonnull %0, ptr noundef %1) #18, !range !116
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %188
  %196 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !9
  %198 = tail call i32 @get_alias_set(ptr noundef nonnull %0) #17
  %199 = tail call fastcc ptr @store_field(ptr noundef %190, i64 noundef %191, i64 noundef %189, i32 noundef %192, ptr noundef %1, ptr noundef %197, i32 noundef %198, i8 noundef zeroext %2) #18
  %200 = icmp eq ptr %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %195
  tail call void @preserve_temp_slots(ptr noundef nonnull %199) #17
  br label %202

202:                                              ; preds = %188, %167, %154, %201, %195
  tail call void @free_temp_slots() #17
  tail call void @pop_temp_slots() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %426

203:                                              ; preds = %21
  %204 = load i64, ptr %0, align 8
  %205 = and i64 %204, 65535
  %206 = icmp eq i64 %205, 49
  br i1 %206, label %207, label %267

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !9
  %210 = getelementptr inbounds %struct.tree_common, ptr %209, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !9
  %212 = load i64, ptr %211, align 8
  %213 = trunc i64 %212 to i16
  switch i16 %213, label %220 [
    i16 10, label %214
    i16 12, label %214
  ]

214:                                              ; preds = %207, %207
  %215 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !9
  %217 = load i64, ptr %216, align 8
  %218 = lshr i64 %217, 56
  %219 = trunc i64 %218 to i8
  br label %220

220:                                              ; preds = %207, %214
  %221 = phi i8 [ %219, %214 ], [ 0, %207 ]
  %222 = tail call fastcc ptr @expand_expr(ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0) #18
  %223 = tail call ptr @force_not_mem(ptr noundef %222) #17
  %224 = load ptr, ptr %22, align 8, !tbaa !9
  %225 = load i64, ptr %224, align 8
  %226 = and i64 %225, 65535
  %227 = icmp eq i64 %226, 14
  br i1 %227, label %228, label %230

228:                                              ; preds = %220
  %229 = tail call i32 @vector_type_mode(ptr noundef nonnull %224) #17
  br label %235

230:                                              ; preds = %220
  %231 = getelementptr inbounds %struct.tree_type, ptr %224, i64 0, i32 6
  %232 = load i32, ptr %231, align 4
  %233 = lshr i32 %232, 16
  %234 = and i32 %233, 255
  br label %235

235:                                              ; preds = %230, %228
  %236 = phi i32 [ %229, %228 ], [ %234, %230 ]
  %237 = load ptr, ptr %208, align 8, !tbaa !9
  %238 = tail call fastcc ptr @expand_expr(ptr noundef %237, ptr noundef null, i32 noundef 0, i32 noundef 2) #18
  %239 = tail call ptr @memory_address_addr_space(i32 noundef %236, ptr noundef %238, i8 noundef zeroext %221) #17
  %240 = tail call ptr @gen_rtx_MEM(i32 noundef %236, ptr noundef %239) #17
  tail call void @set_mem_attributes(ptr noundef %240, ptr noundef nonnull %0, i32 noundef 0) #17
  tail call void @set_mem_addr_space(ptr noundef %240, i8 noundef zeroext %221) #17
  %241 = zext i32 %236 to i64
  %242 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !25
  %244 = icmp eq i32 %243, 2956
  br i1 %244, label %245, label %246

245:                                              ; preds = %235
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4347, ptr noundef nonnull @.str.1) #17
  br label %246

246:                                              ; preds = %235, %245
  %247 = zext i32 %243 to i64
  %248 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %247, i32 3
  %249 = load ptr, ptr %248, align 8, !tbaa !13
  %250 = getelementptr inbounds %struct.insn_operand_data, ptr %249, i64 1
  %251 = getelementptr inbounds %struct.insn_operand_data, ptr %249, i64 1, i32 2
  %252 = load i16, ptr %251, align 8
  %253 = zext i16 %252 to i32
  %254 = load ptr, ptr %250, align 8, !tbaa !15
  %255 = tail call i32 %254(ptr noundef %223, i32 noundef %253) #17
  %256 = icmp eq i32 %255, 0
  %257 = icmp ne i16 %252, 0
  %258 = and i1 %257, %256
  br i1 %258, label %259, label %261

259:                                              ; preds = %246
  %260 = tail call ptr @copy_to_mode_reg(i32 noundef %253, ptr noundef %223) #17
  br label %261

261:                                              ; preds = %259, %246
  %262 = phi ptr [ %260, %259 ], [ %223, %246 ]
  %263 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %247, i32 2
  %264 = load ptr, ptr %263, align 8, !tbaa !64
  %265 = tail call ptr (ptr, ...) %264(ptr noundef %240, ptr noundef %262) #17
  %266 = tail call ptr @emit_insn(ptr noundef %265) #17
  br label %426

267:                                              ; preds = %203
  %268 = load i64, ptr %1, align 8
  %269 = and i64 %268, 65535
  %270 = icmp eq i64 %269, 59
  br i1 %270, label %271, label %337

271:                                              ; preds = %267
  %272 = tail call i32 @aggregate_value_p(ptr noundef nonnull %1, ptr noundef nonnull %1) #17
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %337

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %276 = load ptr, ptr %275, align 8, !tbaa !9
  %277 = getelementptr inbounds %struct.tree_type, ptr %276, i64 0, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !9
  %279 = icmp eq ptr %278, null
  br i1 %279, label %337, label %280

280:                                              ; preds = %274
  %281 = load i64, ptr %278, align 8
  %282 = and i64 %281, 65535
  %283 = icmp eq i64 %282, 23
  br i1 %283, label %284, label %337

284:                                              ; preds = %280
  %285 = load i64, ptr %0, align 8
  %286 = trunc i64 %285 to i16
  switch i16 %286, label %300 [
    i16 32, label %287
    i16 34, label %287
  ]

287:                                              ; preds = %284, %284
  %288 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !9
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #17
  %292 = load ptr, ptr %288, align 8, !tbaa !9
  br label %293

293:                                              ; preds = %287, %291
  %294 = phi ptr [ %292, %291 ], [ %289, %287 ]
  %295 = load i32, ptr %294, align 8
  %296 = and i32 %295, 65535
  %297 = icmp eq i32 %296, 37
  br i1 %297, label %337, label %298

298:                                              ; preds = %293
  %299 = load i64, ptr %0, align 8
  br label %300

300:                                              ; preds = %298, %284
  %301 = phi i64 [ %299, %298 ], [ %285, %284 ]
  %302 = and i64 %301, 65535
  %303 = icmp eq i64 %302, 141
  br i1 %303, label %337, label %304

304:                                              ; preds = %300
  tail call void @push_temp_slots() #17
  %305 = tail call fastcc ptr @expand_normal(ptr noundef nonnull %1) #18
  %306 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef 5) #18
  %307 = load i32, ptr %306, align 8
  %308 = and i32 %307, 65535
  %309 = icmp eq i32 %308, 15
  br i1 %309, label %310, label %314

310:                                              ; preds = %304
  %311 = load ptr, ptr %275, align 8, !tbaa !9
  %312 = tail call i64 @int_size_in_bytes(ptr noundef %311) #17
  %313 = trunc i64 %312 to i32
  tail call void @emit_group_load(ptr noundef nonnull %306, ptr noundef %305, ptr poison, i32 noundef %313) #18
  br label %336

314:                                              ; preds = %304
  %315 = and i32 %307, 16711680
  %316 = icmp eq i32 %315, 65536
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = tail call ptr @expr_size(ptr noundef nonnull %1) #17
  %319 = tail call ptr @emit_block_move(ptr noundef nonnull %306, ptr noundef %305, ptr noundef %318, i32 noundef 0) #18
  br label %336

320:                                              ; preds = %314
  %321 = load ptr, ptr %22, align 8, !tbaa !9
  %322 = load i64, ptr %321, align 8
  %323 = trunc i64 %322 to i16
  switch i16 %323, label %333 [
    i16 10, label %324
    i16 12, label %324
  ]

324:                                              ; preds = %320, %320
  %325 = lshr i32 %307, 16
  %326 = and i32 %325, 255
  %327 = getelementptr inbounds %struct.tree_common, ptr %321, i64 0, i32 2
  %328 = load ptr, ptr %327, align 8, !tbaa !9
  %329 = load i64, ptr %328, align 8
  %330 = lshr i64 %329, 56
  %331 = trunc i64 %330 to i8
  %332 = tail call ptr @convert_memory_address_addr_space(i32 noundef %326, ptr noundef %305, i8 noundef zeroext %331) #17
  br label %333

333:                                              ; preds = %320, %324
  %334 = phi ptr [ %332, %324 ], [ %305, %320 ]
  %335 = tail call ptr @emit_move_insn(ptr noundef nonnull %306, ptr noundef %334) #18
  br label %336

336:                                              ; preds = %317, %333, %310
  tail call void @preserve_temp_slots(ptr noundef nonnull %306) #17
  tail call void @free_temp_slots() #17
  tail call void @pop_temp_slots() #17
  br label %426

337:                                              ; preds = %267, %271, %274, %280, %293, %300
  %338 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef 5) #18
  %339 = load i64, ptr %0, align 8
  %340 = and i64 %339, 65535
  %341 = icmp eq i64 %340, 36
  br i1 %341, label %342, label %424

342:                                              ; preds = %337
  %343 = load i32, ptr %338, align 8
  %344 = trunc i32 %343 to i16
  switch i16 %344, label %361 [
    i16 37, label %345
    i16 15, label %345
  ]

345:                                              ; preds = %342, %342
  tail call void @push_temp_slots() #17
  %346 = load i32, ptr %338, align 8
  %347 = lshr i32 %346, 16
  %348 = and i32 %347, 255
  %349 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %1, ptr noundef null, i32 noundef %348, i32 noundef 0) #18
  %350 = load i32, ptr %338, align 8
  %351 = and i32 %350, 65535
  %352 = icmp eq i32 %351, 15
  br i1 %352, label %353, label %358

353:                                              ; preds = %345
  %354 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %355 = load ptr, ptr %354, align 8, !tbaa !9
  %356 = tail call i64 @int_size_in_bytes(ptr noundef %355) #17
  %357 = trunc i64 %356 to i32
  tail call void @emit_group_load(ptr noundef nonnull %338, ptr noundef %349, ptr poison, i32 noundef %357) #18
  br label %360

358:                                              ; preds = %345
  %359 = tail call ptr @emit_move_insn(ptr noundef nonnull %338, ptr noundef %349) #18
  br label %360

360:                                              ; preds = %358, %353
  tail call void @preserve_temp_slots(ptr noundef nonnull %338) #17
  tail call void @free_temp_slots() #17
  tail call void @pop_temp_slots() #17
  br label %426

361:                                              ; preds = %342
  %362 = load i64, ptr %1, align 8
  %363 = and i64 %362, 65535
  %364 = icmp eq i64 %363, 47
  br i1 %364, label %365, label %424

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %367 = load ptr, ptr %366, align 8, !tbaa !9
  %368 = getelementptr inbounds %struct.tree_common, ptr %367, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !9
  %370 = getelementptr inbounds %struct.tree_common, ptr %369, i64 0, i32 2
  %371 = load ptr, ptr %370, align 8, !tbaa !9
  %372 = load i64, ptr %371, align 8
  %373 = icmp ult i64 %372, 72057594037927936
  br i1 %373, label %374, label %424

374:                                              ; preds = %365
  %375 = tail call zeroext i8 @refs_may_alias_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %424, label %377

377:                                              ; preds = %374
  %378 = load ptr, ptr @cfun, align 8, !tbaa !5
  %379 = getelementptr inbounds %struct.function, ptr %378, i64 0, i32 20
  %380 = load i32, ptr %379, align 8
  %381 = and i32 %380, 201326592
  %382 = icmp eq i32 %381, 67108864
  br i1 %382, label %383, label %424

383:                                              ; preds = %377
  tail call void @push_temp_slots() #17
  %384 = tail call ptr @expr_size(ptr noundef nonnull %1) #17
  %385 = tail call fastcc ptr @expand_normal(ptr noundef nonnull %1) #18
  %386 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 2), align 16, !tbaa !5
  %387 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !9
  %389 = getelementptr inbounds %struct.rtx_def, ptr %385, i64 0, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !9
  %391 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %392 = load i64, ptr %391, align 8
  %393 = and i64 %392, 65535
  %394 = icmp eq i64 %393, 14
  br i1 %394, label %395, label %399

395:                                              ; preds = %383
  %396 = tail call i32 @vector_type_mode(ptr noundef nonnull %391) #17
  %397 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %398 = load i64, ptr %397, align 8
  br label %404

399:                                              ; preds = %383
  %400 = getelementptr inbounds %struct.tree_type, ptr %391, i64 0, i32 6
  %401 = load i32, ptr %400, align 4
  %402 = lshr i32 %401, 16
  %403 = and i32 %402, 255
  br label %404

404:                                              ; preds = %399, %395
  %405 = phi i64 [ %398, %395 ], [ %392, %399 ]
  %406 = phi i32 [ %396, %395 ], [ %403, %399 ]
  %407 = trunc i64 %405 to i32
  %408 = lshr i32 %407, 21
  %409 = and i32 %408, 1
  %410 = tail call ptr @convert_to_mode(i32 noundef %406, ptr noundef %384, i32 noundef %409) #18
  %411 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %412 = load i64, ptr %411, align 8
  %413 = and i64 %412, 65535
  %414 = icmp eq i64 %413, 14
  br i1 %414, label %415, label %417

415:                                              ; preds = %404
  %416 = tail call i32 @vector_type_mode(ptr noundef nonnull %411) #17
  br label %422

417:                                              ; preds = %404
  %418 = getelementptr inbounds %struct.tree_type, ptr %411, i64 0, i32 6
  %419 = load i32, ptr %418, align 4
  %420 = lshr i32 %419, 16
  %421 = and i32 %420, 255
  br label %422

422:                                              ; preds = %417, %415
  %423 = phi i32 [ %416, %415 ], [ %421, %417 ]
  tail call void (ptr, i32, i32, i32, ...) @emit_library_call(ptr noundef %386, i32 noundef 0, i32 noundef 0, i32 noundef 3, ptr noundef %388, i32 noundef 16, ptr noundef %390, i32 noundef 16, ptr noundef %410, i32 noundef %423) #17
  tail call void @preserve_temp_slots(ptr noundef nonnull %338) #17
  tail call void @free_temp_slots() #17
  tail call void @pop_temp_slots() #17
  br label %426

424:                                              ; preds = %337, %377, %374, %365, %361
  tail call void @push_temp_slots() #17
  %425 = tail call ptr @store_expr(ptr noundef nonnull %1, ptr noundef %338, i32 noundef 0, i8 noundef zeroext %2) #18
  tail call void @preserve_temp_slots(ptr noundef null) #17
  tail call void @free_temp_slots() #17
  tail call void @pop_temp_slots() #17
  br label %426

426:                                              ; preds = %15, %424, %422, %360, %336, %261, %202, %13
  ret void
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare void @push_temp_slots() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_inner_reference(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, i8 zeroext %7) local_unnamed_addr #0 {
  %9 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !5
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !5
  store i64 -1, ptr %1, align 8, !tbaa !78
  %11 = load i64, ptr %0, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %74 [
    i16 41, label %13
    i16 42, label %31
  ]

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !9
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 33554432
  %21 = icmp eq i64 %20, 0
  %22 = trunc i64 %19 to i32
  %23 = and i32 %22, 255
  %24 = and i64 %19, 33554687
  %25 = icmp eq i64 %24, 33554433
  %26 = select i1 %21, i32 %23, i32 0
  %27 = load i64, ptr %15, align 8
  %28 = trunc i64 %27 to i32
  %29 = lshr i32 %28, 21
  %30 = and i32 %29, 1
  store i32 %30, ptr %5, align 4, !tbaa !22
  br label %106

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %33 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !9
  %35 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !9
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, -9
  %41 = icmp ult i32 %40, -3
  %42 = and i64 %37, 2097152
  %43 = icmp ne i64 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  %45 = zext i1 %44 to i32
  store i32 %45, ptr %5, align 4, !tbaa !22
  %46 = load ptr, ptr %32, align 8, !tbaa !9
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !9
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 14
  br i1 %51, label %52, label %106

52:                                               ; preds = %31
  %53 = load ptr, ptr %35, align 8, !tbaa !9
  %54 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !9
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %57, label %106

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !9
  %60 = tail call i32 @tree_int_cst_equal(ptr noundef %34, ptr noundef %59) #17
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %106, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %35, align 8, !tbaa !9
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 14
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = tail call i32 @vector_type_mode(ptr noundef nonnull %63) #17
  br label %106

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.tree_type, ptr %63, i64 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  br label %106

74:                                               ; preds = %8
  %75 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !9
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 14
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = tail call i32 @vector_type_mode(ptr noundef nonnull %76) #17
  %82 = load ptr, ptr %75, align 8, !tbaa !9
  %83 = load i64, ptr %82, align 8
  br label %89

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.tree_type, ptr %76, i64 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 255
  br label %89

89:                                               ; preds = %84, %80
  %90 = phi i64 [ %83, %80 ], [ %77, %84 ]
  %91 = phi i32 [ %81, %80 ], [ %88, %84 ]
  %92 = trunc i64 %90 to i32
  %93 = lshr i32 %92, 21
  %94 = and i32 %93, 1
  store i32 %94, ptr %5, align 4, !tbaa !22
  %95 = icmp eq i32 %91, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load ptr, ptr %75, align 8, !tbaa !9
  %98 = getelementptr inbounds %struct.tree_type, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !9
  br label %106

100:                                              ; preds = %89
  %101 = zext i32 %91 to i64
  %102 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !9
  %104 = zext i8 %103 to i64
  %105 = shl nuw nsw i64 %104, 3
  br label %116

106:                                              ; preds = %67, %69, %57, %52, %31, %96, %13
  %107 = phi i1 [ %25, %13 ], [ false, %57 ], [ false, %52 ], [ false, %31 ], [ false, %96 ], [ false, %69 ], [ false, %67 ]
  %108 = phi i32 [ %26, %13 ], [ 0, %57 ], [ 0, %52 ], [ 0, %31 ], [ 1, %96 ], [ %73, %69 ], [ %68, %67 ]
  %109 = phi ptr [ %17, %13 ], [ %34, %57 ], [ %34, %52 ], [ %34, %31 ], [ %99, %96 ], [ %34, %69 ], [ %34, %67 ]
  %110 = icmp eq ptr %109, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %106
  %112 = tail call i32 @host_integerp(ptr noundef nonnull %109, i32 noundef 1) #17
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = tail call i64 @tree_low_cst(ptr noundef nonnull %109, i32 noundef 1) #17
  br label %116

116:                                              ; preds = %111, %114, %100
  %117 = phi i64 [ %105, %100 ], [ %115, %114 ], [ -1, %111 ]
  %118 = phi i1 [ false, %100 ], [ %107, %114 ], [ %107, %111 ]
  %119 = phi i32 [ %91, %100 ], [ %108, %114 ], [ 1, %111 ]
  store i64 %117, ptr %1, align 8, !tbaa !78
  br label %120

120:                                              ; preds = %116, %106
  %121 = phi i1 [ %107, %106 ], [ %118, %116 ]
  %122 = phi i32 [ %108, %106 ], [ %119, %116 ]
  br label %123

123:                                              ; preds = %171, %120
  %124 = phi ptr [ %10, %120 ], [ %165, %171 ]
  %125 = phi ptr [ %9, %120 ], [ %166, %171 ]
  %126 = phi ptr [ %0, %120 ], [ %173, %171 ]
  %127 = load i64, ptr %126, align 8
  %128 = trunc i64 %127 to i16
  switch i16 %128, label %174 [
    i16 42, label %129
    i16 41, label %133
    i16 45, label %143
    i16 46, label %143
    i16 43, label %164
    i16 44, label %160
    i16 118, label %164
  ]

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.tree_exp, ptr %126, i64 1, i32 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !9
  %132 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %124, ptr noundef %131) #17
  br label %164

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct.tree_exp, ptr %126, i64 1
  %135 = load ptr, ptr %134, align 8, !tbaa !9
  %136 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %126) #18
  %137 = icmp eq ptr %136, null
  br i1 %137, label %164, label %138

138:                                              ; preds = %133
  %139 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %125, ptr noundef nonnull %136) #17
  %140 = getelementptr inbounds %struct.tree_field_decl, ptr %135, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !9
  %142 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %124, ptr noundef %141) #17
  br label %164

143:                                              ; preds = %123, %123
  %144 = getelementptr inbounds %struct.tree_exp, ptr %126, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !9
  %146 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %126) #18
  %147 = tail call ptr @array_ref_element_size(ptr noundef nonnull %126) #18
  %148 = tail call i32 @integer_zerop(ptr noundef %146) #17
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.tree_common, ptr %145, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !9
  %153 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %152, ptr noundef %145, ptr noundef %146) #17
  br label %154

154:                                              ; preds = %150, %143
  %155 = phi ptr [ %145, %143 ], [ %153, %150 ]
  %156 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %157 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %156, ptr noundef %155) #17
  %158 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %157, ptr noundef %147) #17
  %159 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %125, ptr noundef %158) #17
  br label %164

160:                                              ; preds = %123
  %161 = load i64, ptr %1, align 8, !tbaa !78
  %162 = tail call ptr @size_int_kind(i64 noundef %161, i32 noundef 2) #17
  %163 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %124, ptr noundef %162) #17
  br label %164

164:                                              ; preds = %123, %138, %133, %160, %123, %154, %129
  %165 = phi ptr [ %163, %160 ], [ %124, %123 ], [ %124, %154 ], [ %132, %129 ], [ %142, %138 ], [ %124, %133 ], [ %124, %123 ]
  %166 = phi ptr [ %125, %160 ], [ %125, %123 ], [ %159, %154 ], [ %125, %129 ], [ %139, %138 ], [ %125, %133 ], [ %125, %123 ]
  %167 = load i64, ptr %126, align 8
  %168 = and i64 %167, 524288
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %164
  store i32 1, ptr %6, align 4, !tbaa !22
  br label %171

171:                                              ; preds = %170, %164
  %172 = getelementptr inbounds %struct.tree_exp, ptr %126, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !9
  br label %123

174:                                              ; preds = %123
  %175 = tail call i32 @host_integerp(ptr noundef %125, i32 noundef 0) #17
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %194, label %177

177:                                              ; preds = %174
  %178 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %125) #17
  %179 = extractvalue { i64, i64 } %178, 0
  %180 = extractvalue { i64, i64 } %178, 1
  %181 = tail call { i64, i64 } @double_int_mul(i64 %179, i64 %180, i64 8, i64 0) #17
  %182 = extractvalue { i64, i64 } %181, 0
  %183 = extractvalue { i64, i64 } %181, 1
  %184 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %124) #17
  %185 = extractvalue { i64, i64 } %184, 0
  %186 = extractvalue { i64, i64 } %184, 1
  %187 = tail call { i64, i64 } @double_int_add(i64 %182, i64 %183, i64 %185, i64 %186) #17
  %188 = extractvalue { i64, i64 } %187, 0
  %189 = extractvalue { i64, i64 } %187, 1
  %190 = tail call zeroext i8 @double_int_fits_in_shwi_p(i64 %188, i64 %189) #17
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %177
  %193 = tail call i64 @double_int_to_shwi(i64 %188, i64 %189) #17
  br label %198

194:                                              ; preds = %177, %174
  %195 = icmp eq ptr %125, null
  br i1 %195, label %201, label %196

196:                                              ; preds = %194
  %197 = tail call i64 @tree_low_cst(ptr noundef %124, i32 noundef 0) #17
  br label %198

198:                                              ; preds = %196, %192
  %199 = phi i64 [ %193, %192 ], [ %197, %196 ]
  %200 = phi ptr [ null, %192 ], [ %125, %196 ]
  store i64 %199, ptr %2, align 8, !tbaa !78
  store ptr %200, ptr %3, align 8, !tbaa !5
  br label %201

201:                                              ; preds = %198, %194
  %202 = icmp eq i32 %122, 0
  %203 = and i1 %121, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %201
  %205 = load i64, ptr %2, align 8, !tbaa !78
  %206 = and i64 %205, 7
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = load i64, ptr %1, align 8, !tbaa !78
  %210 = and i64 %209, 7
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %208, %204, %201
  br label %213

213:                                              ; preds = %208, %212
  %214 = phi i32 [ %122, %212 ], [ 1, %208 ]
  store i32 %214, ptr %4, align 4, !tbaa !22
  ret ptr %126
}

; Function Attrs: optsize
declare void @expand_builtin_trap() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null) #18
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @offset_address(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @highest_pow2_factor_for_target(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call fastcc i64 @target_align(ptr noundef %0) #18, !range !122
  %4 = lshr i64 %3, 3
  %5 = tail call i64 @highest_pow2_factor(ptr noundef %1) #18
  %6 = tail call i64 @llvm.umax.i64(i64 %5, i64 %4)
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @store_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store ptr null, ptr %5, align 8, !tbaa !5
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !22
  %10 = add i32 %9, -4
  %11 = icmp ult i32 %10, 7
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %4, %12
  %16 = phi i32 [ %14, %12 ], [ 0, %4 ]
  %17 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 19
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = icmp eq i32 %2, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4532, ptr noundef nonnull @.str.1) #17
  br label %25

25:                                               ; preds = %22, %24
  %26 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %27 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %0, ptr noundef %26, i32 noundef 0, i32 noundef 0) #18
  br label %525

28:                                               ; preds = %15
  %29 = trunc i64 %6 to i16
  switch i16 %29, label %30 [
    i16 52, label %32
    i16 56, label %42
  ]

30:                                               ; preds = %28
  %31 = load i32, ptr %1, align 8
  br label %66

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !9
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %36 = icmp ne i32 %2, 0
  %37 = zext i1 %36 to i32
  %38 = tail call fastcc ptr @expand_expr(ptr noundef %34, ptr noundef %35, i32 noundef 0, i32 noundef %37) #18
  %39 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !9
  %41 = tail call ptr @store_expr(ptr noundef %40, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) #18
  br label %525

42:                                               ; preds = %28
  %43 = load i32, ptr %1, align 8
  %44 = and i32 %43, 16711680
  %45 = icmp eq i32 %44, 65536
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = tail call ptr @gen_label_rtx() #17
  %48 = tail call ptr @gen_label_rtx() #17
  tail call void @do_pending_stack_adjust() #17
  %49 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !67
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !67
  %51 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !9
  tail call void @jumpifnot(ptr noundef %52, ptr noundef %47, i32 noundef -1) #17
  %53 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !9
  %55 = tail call ptr @store_expr(ptr noundef %54, ptr noundef nonnull %1, i32 noundef %2, i8 noundef zeroext %3) #18
  %56 = tail call ptr @gen_jump(ptr noundef %48) #17
  %57 = tail call ptr @emit_jump_insn(ptr noundef %56) #17
  %58 = tail call ptr @emit_barrier() #17
  %59 = tail call ptr @emit_label(ptr noundef %47) #17
  %60 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !9
  %62 = tail call ptr @store_expr(ptr noundef %61, ptr noundef nonnull %1, i32 noundef %2, i8 noundef zeroext %3) #18
  %63 = tail call ptr @emit_label(ptr noundef %48) #17
  %64 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !67
  %65 = add nsw i32 %64, -1
  store i32 %65, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !67
  br label %525

66:                                               ; preds = %30, %42
  %67 = phi i32 [ %31, %30 ], [ %43, %42 ]
  %68 = and i32 %67, 268500991
  %69 = icmp eq i32 %68, 268435495
  br i1 %69, label %70, label %211

70:                                               ; preds = %66
  %71 = trunc i64 %19 to i32
  %72 = and i32 %71, 65535
  %73 = add nsw i32 %72, -6
  %74 = icmp ult i32 %73, 3
  br i1 %74, label %75, label %146

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !9
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %146

79:                                               ; preds = %75
  %80 = lshr i32 %67, 16
  %81 = and i32 %80, 255
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !23
  %85 = zext i16 %84 to i32
  %86 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 1023
  %89 = icmp eq i32 %88, %85
  br i1 %89, label %90, label %146

90:                                               ; preds = %79
  %91 = lshr i32 %71, 21
  %92 = and i32 %91, 1
  %93 = and i32 %67, 134217728
  %94 = icmp eq i32 %93, 0
  %95 = lshr i32 %67, 26
  %96 = and i32 %95, 1
  %97 = select i1 %94, i32 %96, i32 -1
  %98 = icmp eq i32 %92, %97
  br i1 %98, label %131, label %99

99:                                               ; preds = %90
  %100 = tail call ptr @signed_or_unsigned_type_for(i32 noundef %97, ptr noundef nonnull %18) #17
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %124

102:                                              ; preds = %99
  %103 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !123
  %104 = load ptr, ptr %17, align 8, !tbaa !9
  %105 = load i64, ptr %104, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 14
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = tail call i32 @vector_type_mode(ptr noundef nonnull %104) #17
  br label %115

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.tree_type, ptr %104, i64 0, i32 6
  %112 = load i32, ptr %111, align 4
  %113 = lshr i32 %112, 16
  %114 = and i32 %113, 255
  br label %115

115:                                              ; preds = %110, %108
  %116 = phi i32 [ %109, %108 ], [ %114, %110 ]
  %117 = load i32, ptr %1, align 8
  %118 = and i32 %117, 134217728
  %119 = icmp eq i32 %118, 0
  %120 = lshr i32 %117, 26
  %121 = and i32 %120, 1
  %122 = select i1 %119, i32 %121, i32 -1
  %123 = tail call ptr %103(i32 noundef %116, i32 noundef %122) #17
  br label %124

124:                                              ; preds = %115, %99
  %125 = phi ptr [ %123, %115 ], [ %100, %99 ]
  %126 = tail call ptr @fold_convert_loc(i32 noundef %16, ptr noundef %125, ptr noundef nonnull %0) #17
  %127 = load i32, ptr %1, align 8
  %128 = and i32 %127, 134217728
  %129 = lshr i32 %127, 26
  %130 = and i32 %129, 1
  br label %131

131:                                              ; preds = %124, %90
  %132 = phi i32 [ %130, %124 ], [ %96, %90 ]
  %133 = phi i32 [ %128, %124 ], [ %93, %90 ]
  %134 = phi ptr [ %126, %124 ], [ %0, %90 ]
  %135 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !123
  %136 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !9
  %138 = load i32, ptr %137, align 8
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  %141 = icmp eq i32 %133, 0
  %142 = select i1 %141, i32 %132, i32 -1
  %143 = tail call ptr %135(i32 noundef %140, i32 noundef %142) #17
  %144 = tail call ptr @fold_convert_loc(i32 noundef %16, ptr noundef %143, ptr noundef %134) #17
  %145 = load ptr, ptr %136, align 8, !tbaa !9
  br label %146

146:                                              ; preds = %70, %131, %79, %75
  %147 = phi ptr [ %145, %131 ], [ null, %79 ], [ null, %75 ], [ null, %70 ]
  %148 = phi ptr [ %144, %131 ], [ %0, %79 ], [ %0, %75 ], [ %0, %70 ]
  %149 = icmp ne i32 %2, 0
  %150 = zext i1 %149 to i32
  %151 = tail call fastcc ptr @expand_expr(ptr noundef %148, ptr noundef %147, i32 noundef 0, i32 noundef %150) #18
  %152 = load i32, ptr %151, align 8
  %153 = and i32 %152, 65535
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !22
  %157 = icmp eq i32 %156, 9
  %158 = and i32 %152, 16711680
  %159 = icmp eq i32 %158, 0
  %160 = and i1 %157, %159
  br i1 %160, label %161, label %201

161:                                              ; preds = %146
  %162 = load i32, ptr %1, align 8
  %163 = lshr i32 %162, 16
  %164 = and i32 %163, 255
  %165 = getelementptr inbounds %struct.tree_common, ptr %148, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !9
  %167 = load i64, ptr %166, align 8
  %168 = and i64 %167, 65535
  %169 = icmp eq i64 %168, 14
  br i1 %169, label %170, label %173

170:                                              ; preds = %161
  %171 = tail call i32 @vector_type_mode(ptr noundef nonnull %166) #17
  %172 = load i32, ptr %1, align 8
  br label %178

173:                                              ; preds = %161
  %174 = getelementptr inbounds %struct.tree_type, ptr %166, i64 0, i32 6
  %175 = load i32, ptr %174, align 4
  %176 = lshr i32 %175, 16
  %177 = and i32 %176, 255
  br label %178

178:                                              ; preds = %173, %170
  %179 = phi i32 [ %172, %170 ], [ %162, %173 ]
  %180 = phi i32 [ %171, %170 ], [ %177, %173 ]
  %181 = and i32 %179, 134217728
  %182 = icmp eq i32 %181, 0
  %183 = lshr i32 %179, 26
  %184 = and i32 %183, 1
  %185 = select i1 %182, i32 %184, i32 -1
  %186 = tail call ptr @convert_modes(i32 noundef %164, i32 noundef %180, ptr noundef nonnull %151, i32 noundef %185) #18
  %187 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !9
  %189 = load i32, ptr %188, align 8
  %190 = lshr i32 %189, 16
  %191 = and i32 %190, 255
  %192 = load i32, ptr %1, align 8
  %193 = lshr i32 %192, 16
  %194 = and i32 %193, 255
  %195 = and i32 %192, 134217728
  %196 = icmp eq i32 %195, 0
  %197 = lshr i32 %192, 26
  %198 = and i32 %197, 1
  %199 = select i1 %196, i32 %198, i32 -1
  %200 = tail call ptr @convert_modes(i32 noundef %191, i32 noundef %194, ptr noundef %186, i32 noundef %199) #18
  br label %201

201:                                              ; preds = %178, %146
  %202 = phi ptr [ %200, %178 ], [ %151, %146 ]
  %203 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !9
  %205 = load i32, ptr %1, align 8
  %206 = and i32 %205, 134217728
  %207 = icmp eq i32 %206, 0
  %208 = lshr i32 %205, 26
  %209 = and i32 %208, 1
  %210 = select i1 %207, i32 %209, i32 -1
  tail call void @convert_move(ptr noundef %204, ptr noundef %202, i32 noundef %210) #18
  br label %525

211:                                              ; preds = %66
  %212 = icmp ne i64 %7, 28
  %213 = icmp ne i8 %3, 0
  %214 = or i1 %213, %212
  %215 = icmp ne i32 %2, 0
  %216 = or i1 %215, %214
  br i1 %216, label %274, label %217

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %219 = load i32, ptr %218, align 8, !tbaa !9
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %274

221:                                              ; preds = %217
  %222 = icmp eq i64 %20, 14
  br i1 %222, label %223, label %225

223:                                              ; preds = %221
  %224 = tail call i32 @vector_type_mode(ptr noundef nonnull %18) #17
  br label %230

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 6
  %227 = load i32, ptr %226, align 4
  %228 = lshr i32 %227, 16
  %229 = and i32 %228, 255
  br label %230

230:                                              ; preds = %225, %223
  %231 = phi i32 [ %224, %223 ], [ %229, %225 ]
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %274

233:                                              ; preds = %230
  %234 = tail call i64 @int_expr_size(ptr noundef nonnull %0) #17
  %235 = icmp slt i64 %234, 1
  br i1 %235, label %274, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 2
  %238 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %237) #18
  %239 = load i32, ptr %218, align 8, !tbaa !9
  %240 = add nsw i32 %239, -1
  %241 = sext i32 %240 to i64
  %242 = icmp slt i64 %238, %241
  br i1 %242, label %274, label %243

243:                                              ; preds = %236
  %244 = sext i32 %239 to i64
  %245 = add nsw i64 %244, 3
  %246 = and i64 %245, -4
  %247 = icmp slt i64 %246, %234
  %248 = tail call i64 @llvm.smin.i64(i64 %246, i64 %234)
  %249 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %250 = load ptr, ptr %249, align 8, !tbaa !9
  %251 = icmp eq ptr %250, null
  br i1 %251, label %255, label %252

252:                                              ; preds = %243
  %253 = getelementptr inbounds %struct.mem_attrs, ptr %250, i64 0, i32 4
  %254 = load i32, ptr %253, align 4, !tbaa !48
  br label %255

255:                                              ; preds = %243, %252
  %256 = phi i32 [ %254, %252 ], [ 8, %243 ]
  %257 = tail call i32 @can_store_by_pieces(i64 noundef %248, ptr noundef nonnull @builtin_strncpy_read_str, ptr noundef nonnull %237, i32 noundef %256, i8 noundef zeroext 0) #18
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %274, label %259

259:                                              ; preds = %255
  %260 = load ptr, ptr %249, align 8, !tbaa !9
  %261 = icmp eq ptr %260, null
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.mem_attrs, ptr %260, i64 0, i32 4
  %264 = load i32, ptr %263, align 4, !tbaa !48
  br label %265

265:                                              ; preds = %259, %262
  %266 = phi i32 [ %264, %262 ], [ 8, %259 ]
  %267 = zext i1 %247 to i32
  %268 = tail call ptr @store_by_pieces(ptr noundef nonnull %1, i64 noundef %248, ptr noundef nonnull @builtin_strncpy_read_str, ptr noundef nonnull %237, i32 noundef %266, i8 noundef zeroext 0, i32 noundef %267) #18
  br i1 %247, label %269, label %525

269:                                              ; preds = %265
  %270 = tail call ptr @adjust_address_1(ptr noundef %268, i32 noundef 1, i64 noundef 0, i32 noundef 1, i32 noundef 1) #17
  %271 = sub nsw i64 %234, %248
  %272 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %271) #17
  %273 = tail call ptr @clear_storage(ptr noundef %270, ptr noundef %272, i32 noundef 0) #18
  br label %525

274:                                              ; preds = %233, %236, %255, %211, %217, %230
  %275 = icmp eq i8 %3, 0
  %276 = select i1 %275, ptr %1, ptr null
  %277 = load i32, ptr %1, align 8
  %278 = lshr i32 %277, 16
  %279 = and i32 %278, 255
  %280 = zext i1 %215 to i32
  %281 = call ptr @expand_expr_real(ptr noundef nonnull %0, ptr noundef %276, i32 noundef %279, i32 noundef %280, ptr noundef nonnull %5) #18
  %282 = load i32, ptr %281, align 8
  %283 = and i32 %282, 65535
  %284 = zext nneg i32 %283 to i64
  %285 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !22
  %287 = icmp eq i32 %286, 9
  %288 = and i32 %282, 16711680
  %289 = icmp eq i32 %288, 0
  %290 = and i1 %287, %289
  br i1 %290, label %291, label %337

291:                                              ; preds = %274
  %292 = load i64, ptr %0, align 8
  %293 = and i64 %292, 65535
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %337, label %295

295:                                              ; preds = %291
  %296 = load i32, ptr %1, align 8
  %297 = lshr i32 %296, 16
  %298 = and i32 %297, 255
  %299 = load ptr, ptr %17, align 8, !tbaa !9
  %300 = load i64, ptr %299, align 8
  %301 = and i64 %300, 65535
  %302 = icmp eq i64 %301, 14
  br i1 %302, label %303, label %305

303:                                              ; preds = %295
  %304 = call i32 @vector_type_mode(ptr noundef nonnull %299) #17
  br label %310

305:                                              ; preds = %295
  %306 = getelementptr inbounds %struct.tree_type, ptr %299, i64 0, i32 6
  %307 = load i32, ptr %306, align 4
  %308 = lshr i32 %307, 16
  %309 = and i32 %308, 255
  br label %310

310:                                              ; preds = %305, %303
  %311 = phi i32 [ %304, %303 ], [ %309, %305 ]
  %312 = icmp eq i32 %298, %311
  br i1 %312, label %337, label %313

313:                                              ; preds = %310
  %314 = load i32, ptr %1, align 8
  %315 = lshr i32 %314, 16
  %316 = and i32 %315, 255
  %317 = load ptr, ptr %17, align 8, !tbaa !9
  %318 = load i64, ptr %317, align 8
  %319 = and i64 %318, 65535
  %320 = icmp eq i64 %319, 14
  br i1 %320, label %321, label %325

321:                                              ; preds = %313
  %322 = call i32 @vector_type_mode(ptr noundef nonnull %317) #17
  %323 = load ptr, ptr %17, align 8, !tbaa !9
  %324 = load i64, ptr %323, align 8
  br label %330

325:                                              ; preds = %313
  %326 = getelementptr inbounds %struct.tree_type, ptr %317, i64 0, i32 6
  %327 = load i32, ptr %326, align 4
  %328 = lshr i32 %327, 16
  %329 = and i32 %328, 255
  br label %330

330:                                              ; preds = %325, %321
  %331 = phi i64 [ %324, %321 ], [ %318, %325 ]
  %332 = phi i32 [ %322, %321 ], [ %329, %325 ]
  %333 = trunc i64 %331 to i32
  %334 = lshr i32 %333, 21
  %335 = and i32 %334, 1
  %336 = call ptr @convert_modes(i32 noundef %316, i32 noundef %332, ptr noundef nonnull %281, i32 noundef %335) #18
  br label %337

337:                                              ; preds = %330, %310, %291, %274
  %338 = phi ptr [ %336, %330 ], [ %281, %310 ], [ %281, %291 ], [ %281, %274 ]
  %339 = call i32 @rtx_equal_p(ptr noundef %338, ptr noundef nonnull %1) #17
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %349, label %341

341:                                              ; preds = %337
  %342 = icmp eq ptr %338, %1
  br i1 %342, label %525, label %343

343:                                              ; preds = %341
  %344 = call i32 @side_effects_p(ptr noundef %338) #17
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %343
  %347 = call i32 @side_effects_p(ptr noundef nonnull %1) #17
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %525, label %349

349:                                              ; preds = %346, %343, %337
  %350 = load i64, ptr %0, align 8
  %351 = and i64 %350, 65535
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %525, label %353

353:                                              ; preds = %349
  %354 = load ptr, ptr %5, align 8, !tbaa !5
  %355 = icmp eq ptr %354, null
  br i1 %355, label %359, label %356

356:                                              ; preds = %353
  %357 = call i32 @rtx_equal_p(ptr noundef nonnull %354, ptr noundef nonnull %1) #17
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %525

359:                                              ; preds = %356, %353
  %360 = call ptr @expr_size(ptr noundef nonnull %0) #17
  %361 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %362 = icmp eq ptr %360, %361
  br i1 %362, label %525, label %363

363:                                              ; preds = %359
  %364 = load i32, ptr %338, align 8
  %365 = lshr i32 %364, 16
  %366 = and i32 %365, 255
  %367 = load i32, ptr %1, align 8
  %368 = lshr i32 %367, 16
  %369 = and i32 %368, 255
  %370 = icmp eq i32 %366, %369
  %371 = icmp eq i32 %366, 0
  %372 = or i1 %371, %370
  br i1 %372, label %387, label %373

373:                                              ; preds = %363
  %374 = icmp eq i32 %369, 1
  %375 = icmp eq i32 %366, 1
  %376 = or i1 %375, %374
  br i1 %376, label %377, label %381

377:                                              ; preds = %373
  %378 = call ptr @expr_size(ptr noundef nonnull %0) #17
  %379 = select i1 %215, i32 2, i32 0
  %380 = call ptr @emit_block_move(ptr noundef nonnull %1, ptr noundef nonnull %338, ptr noundef %378, i32 noundef %379) #18
  br label %525

381:                                              ; preds = %373
  %382 = load ptr, ptr %17, align 8, !tbaa !9
  %383 = load i64, ptr %382, align 8
  %384 = trunc i64 %383 to i32
  %385 = lshr i32 %384, 21
  %386 = and i32 %385, 1
  call void @convert_move(ptr noundef nonnull %1, ptr noundef nonnull %338, i32 noundef %386) #18
  br label %525

387:                                              ; preds = %363
  %388 = and i32 %364, 16711680
  %389 = icmp eq i32 %388, 65536
  br i1 %389, label %390, label %505

390:                                              ; preds = %387
  %391 = load i64, ptr %0, align 8
  %392 = and i64 %391, 65535
  %393 = icmp eq i64 %392, 28
  br i1 %393, label %394, label %502

394:                                              ; preds = %390
  %395 = call ptr @expr_size(ptr noundef nonnull %0) #17
  %396 = load i32, ptr %395, align 8
  %397 = and i32 %396, 65535
  %398 = icmp eq i32 %397, 30
  br i1 %398, label %399, label %409

399:                                              ; preds = %394
  %400 = getelementptr inbounds %struct.rtx_def, ptr %395, i64 0, i32 1
  %401 = load i64, ptr %400, align 8, !tbaa !9
  %402 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %403 = load i32, ptr %402, align 8, !tbaa !9
  %404 = sext i32 %403 to i64
  %405 = icmp slt i64 %401, %404
  br i1 %405, label %406, label %409

406:                                              ; preds = %399
  %407 = select i1 %215, i32 2, i32 0
  %408 = call ptr @emit_block_move(ptr noundef nonnull %1, ptr noundef nonnull %338, ptr noundef nonnull %395, i32 noundef %407) #18
  br label %525

409:                                              ; preds = %399, %394
  %410 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57), align 8, !tbaa !131
  %411 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %412 = load ptr, ptr %411, align 8, !tbaa !9
  %413 = icmp eq ptr %412, null
  br i1 %413, label %417, label %414

414:                                              ; preds = %409
  %415 = getelementptr inbounds %struct.mem_attrs, ptr %412, i64 0, i32 5
  %416 = load i8, ptr %415, align 8, !tbaa !29
  br label %417

417:                                              ; preds = %409, %414
  %418 = phi i8 [ %416, %414 ], [ 0, %409 ]
  %419 = call i32 %410(i8 noundef zeroext %418) #17
  %420 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !35
  %421 = load ptr, ptr %411, align 8, !tbaa !9
  %422 = icmp eq ptr %421, null
  br i1 %422, label %426, label %423

423:                                              ; preds = %417
  %424 = getelementptr inbounds %struct.mem_attrs, ptr %421, i64 0, i32 5
  %425 = load i8, ptr %424, align 8, !tbaa !29
  br label %426

426:                                              ; preds = %417, %423
  %427 = phi i8 [ %425, %423 ], [ 0, %417 ]
  %428 = call i32 %420(i8 noundef zeroext %427) #17
  %429 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %430 = call ptr @make_tree(ptr noundef %429, ptr noundef nonnull %395) #17
  %431 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %432 = load i32, ptr %431, align 8, !tbaa !9
  %433 = sext i32 %432 to i64
  %434 = call ptr @size_int_kind(i64 noundef %433, i32 noundef 0) #17
  %435 = call ptr @size_binop_loc(i32 noundef %16, i32 noundef 80, ptr noundef %430, ptr noundef %434) #17
  %436 = call fastcc ptr @expand_expr(ptr noundef %435, ptr noundef null, i32 noundef 0, i32 noundef %280) #18
  %437 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %438 = load i64, ptr %437, align 8
  %439 = trunc i64 %438 to i32
  %440 = lshr i32 %439, 21
  %441 = and i32 %440, 1
  %442 = call ptr @convert_to_mode(i32 noundef %419, ptr noundef %436, i32 noundef %441) #18
  %443 = select i1 %215, i32 2, i32 0
  %444 = call ptr @emit_block_move(ptr noundef nonnull %1, ptr noundef nonnull %338, ptr noundef %442, i32 noundef %443) #18
  %445 = load i32, ptr %442, align 8
  %446 = and i32 %445, 65535
  %447 = icmp eq i32 %446, 30
  br i1 %447, label %448, label %455

448:                                              ; preds = %426
  %449 = getelementptr inbounds %struct.rtx_def, ptr %442, i64 0, i32 1
  %450 = load i64, ptr %449, align 8, !tbaa !9
  %451 = sub nsw i64 0, %450
  %452 = call ptr @plus_constant(ptr noundef nonnull %395, i64 noundef %451) #17
  %453 = load i64, ptr %449, align 8, !tbaa !9
  %454 = call ptr @adjust_address_1(ptr noundef nonnull %1, i32 noundef 1, i64 noundef %453, i32 noundef 1, i32 noundef 1) #17
  br label %490

455:                                              ; preds = %426
  %456 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %457 = load i64, ptr %456, align 8
  %458 = and i64 %457, 65535
  %459 = icmp eq i64 %458, 14
  br i1 %459, label %460, label %462

460:                                              ; preds = %455
  %461 = call i32 @vector_type_mode(ptr noundef nonnull %456) #17
  br label %467

462:                                              ; preds = %455
  %463 = getelementptr inbounds %struct.tree_type, ptr %456, i64 0, i32 6
  %464 = load i32, ptr %463, align 4
  %465 = lshr i32 %464, 16
  %466 = and i32 %465, 255
  br label %467

467:                                              ; preds = %462, %460
  %468 = phi i32 [ %461, %460 ], [ %466, %462 ]
  %469 = call ptr @expand_binop(i32 noundef %468, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %395, ptr noundef nonnull %442, ptr noundef null, i32 noundef 0, i32 noundef 3) #17
  %470 = load i32, ptr %442, align 8
  %471 = lshr i32 %470, 16
  %472 = and i32 %471, 255
  %473 = icmp eq i32 %472, %428
  br i1 %473, label %481, label %474

474:                                              ; preds = %467
  %475 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %476 = load i64, ptr %475, align 8
  %477 = trunc i64 %476 to i32
  %478 = lshr i32 %477, 21
  %479 = and i32 %478, 1
  %480 = call ptr @convert_to_mode(i32 noundef %428, ptr noundef nonnull %442, i32 noundef %479) #18
  br label %481

481:                                              ; preds = %474, %467
  %482 = phi ptr [ %480, %474 ], [ %442, %467 ]
  %483 = call i64 @highest_pow2_factor(ptr noundef %435) #18
  %484 = call ptr @offset_address(ptr noundef nonnull %1, ptr noundef %482, i64 noundef %483) #17
  %485 = call ptr @gen_label_rtx() #17
  %486 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %487 = load i32, ptr %469, align 8
  %488 = lshr i32 %487, 16
  %489 = and i32 %488, 255
  call void @emit_cmp_and_jump_insns(ptr noundef nonnull %469, ptr noundef %486, i32 noundef 85, ptr noundef null, i32 noundef %489, i32 noundef 0, ptr noundef %485) #17
  br label %490

490:                                              ; preds = %481, %448
  %491 = phi ptr [ %452, %448 ], [ %469, %481 ]
  %492 = phi ptr [ %454, %448 ], [ %484, %481 ]
  %493 = phi ptr [ null, %448 ], [ %485, %481 ]
  %494 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %495 = icmp eq ptr %491, %494
  br i1 %495, label %498, label %496

496:                                              ; preds = %490
  %497 = call ptr @clear_storage(ptr noundef %492, ptr noundef %491, i32 noundef 0) #18
  br label %498

498:                                              ; preds = %496, %490
  %499 = icmp eq ptr %493, null
  br i1 %499, label %525, label %500

500:                                              ; preds = %498
  %501 = call ptr @emit_label(ptr noundef nonnull %493) #17
  br label %525

502:                                              ; preds = %390
  %503 = and i32 %367, 65535
  %504 = icmp eq i32 %503, 15
  br i1 %504, label %508, label %512

505:                                              ; preds = %387
  %506 = and i32 %367, 65535
  %507 = icmp eq i32 %506, 15
  br i1 %507, label %508, label %516

508:                                              ; preds = %505, %502
  %509 = load ptr, ptr %17, align 8, !tbaa !9
  %510 = call i64 @int_size_in_bytes(ptr noundef %509) #17
  %511 = trunc i64 %510 to i32
  call void @emit_group_load(ptr noundef nonnull %1, ptr noundef nonnull %338, ptr poison, i32 noundef %511) #18
  br label %525

512:                                              ; preds = %502
  %513 = call ptr @expr_size(ptr noundef nonnull %0) #17
  %514 = select i1 %215, i32 2, i32 0
  %515 = call ptr @emit_block_move(ptr noundef nonnull %1, ptr noundef nonnull %338, ptr noundef %513, i32 noundef %514) #18
  br label %525

516:                                              ; preds = %505
  br i1 %275, label %520, label %517

517:                                              ; preds = %516
  %518 = call zeroext i8 @emit_storent_insn(ptr noundef nonnull %1, ptr noundef nonnull %338) #18, !range !116
  %519 = icmp eq i8 %518, 0
  br i1 %519, label %520, label %525

520:                                              ; preds = %517, %516
  %521 = call ptr @force_operand(ptr noundef nonnull %338, ptr noundef nonnull %1) #18
  %522 = icmp eq ptr %521, %1
  br i1 %522, label %525, label %523

523:                                              ; preds = %520
  %524 = call ptr @emit_move_insn(ptr noundef nonnull %1, ptr noundef %521) #18
  br label %525

525:                                              ; preds = %341, %346, %349, %356, %359, %512, %520, %523, %517, %508, %381, %377, %498, %500, %406, %269, %265, %201, %46, %32, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret ptr null
}

; Function Attrs: optsize
declare void @set_mem_attributes_minus_bitpos(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @component_uses_parent_alias_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @optimize_bitfield_assignment_op(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = load i32, ptr %3, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 3
  %15 = icmp ne i32 %2, 0
  %16 = icmp ugt i64 %0, 31
  %17 = or i1 %16, %15
  %18 = icmp ugt i8 %12, 4
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %221, label %20

20:                                               ; preds = %6
  %21 = load i64, ptr %4, align 8
  %22 = and i64 %21, 589824
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %221

24:                                               ; preds = %20
  %25 = tail call ptr @tree_strip_nop_conversions(ptr noundef %5) #17
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !22
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %31, label %221

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !9
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 8
  br i1 %36, label %37, label %221

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.tree_exp, ptr %25, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !9
  %40 = getelementptr inbounds %struct.tree_exp, ptr %25, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  %42 = tail call ptr @tree_strip_nop_conversions(ptr noundef %39) #17
  %43 = tail call i32 @operand_equal_p(ptr noundef nonnull %4, ptr noundef %42, i32 noundef 0) #17
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %221, label %45

45:                                               ; preds = %37
  %46 = load i32, ptr %3, align 8
  %47 = trunc i32 %46 to i16
  switch i16 %47, label %221 [
    i16 43, label %48
    i16 37, label %75
    i16 39, label %75
  ]

48:                                               ; preds = %45
  %49 = icmp eq i8 %12, 0
  %50 = load i32, ptr @word_mode, align 4
  %51 = select i1 %49, i32 %50, i32 %9
  %52 = trunc i64 %0 to i32
  %53 = trunc i64 %1 to i32
  %54 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !9
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.mem_attrs, ptr %55, i64 0, i32 4
  %59 = load i32, ptr %58, align 4, !tbaa !48
  br label %60

60:                                               ; preds = %48, %57
  %61 = phi i32 [ %59, %57 ], [ 8, %48 ]
  %62 = tail call i32 @get_best_mode(i32 noundef %52, i32 noundef %53, i32 noundef %61, i32 noundef %51, i32 noundef 0) #17
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %221, label %64

64:                                               ; preds = %60
  %65 = zext i32 %62 to i64
  %66 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !9
  %68 = zext i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 3
  %70 = zext nneg i32 %69 to i64
  %71 = urem i64 %1, %70
  %72 = sub nuw i64 %1, %71
  %73 = lshr i64 %72, 3
  %74 = tail call ptr @adjust_address_1(ptr noundef nonnull %3, i32 noundef %62, i64 noundef %73, i32 noundef 1, i32 noundef 1) #17
  br label %75

75:                                               ; preds = %64, %45, %45
  %76 = phi i32 [ %62, %64 ], [ %9, %45 ], [ %9, %45 ]
  %77 = phi i32 [ %69, %64 ], [ %14, %45 ], [ %14, %45 ]
  %78 = phi ptr [ %74, %64 ], [ %3, %45 ], [ %3, %45 ]
  %79 = phi i64 [ %71, %64 ], [ %1, %45 ], [ %1, %45 ]
  %80 = zext nneg i32 %77 to i64
  %81 = icmp ugt i64 %80, %0
  br i1 %81, label %82, label %221

82:                                               ; preds = %75
  %83 = add i64 %79, %0
  %84 = icmp ugt i64 %83, %80
  br i1 %84, label %221, label %85

85:                                               ; preds = %82
  %86 = load i64, ptr %25, align 8
  %87 = trunc i64 %86 to i16
  switch i16 %87, label %221 [
    i16 63, label %88
    i16 64, label %88
    i16 87, label %144
    i16 88, label %144
  ]

88:                                               ; preds = %85, %85
  %89 = icmp eq i64 %83, %80
  br i1 %89, label %96, label %90

90:                                               ; preds = %88
  %91 = icmp eq i64 %0, 1
  br i1 %91, label %92, label %221

92:                                               ; preds = %90
  %93 = load i64, ptr %41, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 23
  br i1 %95, label %96, label %221

96:                                               ; preds = %92, %88
  %97 = tail call fastcc ptr @expand_expr(ptr noundef %41, ptr noundef null, i32 noundef %76, i32 noundef 0) #18
  %98 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !9
  %100 = load i64, ptr %99, align 8
  %101 = and i64 %100, 65535
  %102 = icmp eq i64 %101, 14
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = tail call i32 @vector_type_mode(ptr noundef nonnull %99) #17
  %105 = load ptr, ptr %98, align 8, !tbaa !9
  %106 = load i64, ptr %105, align 8
  br label %112

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.tree_type, ptr %99, i64 0, i32 6
  %109 = load i32, ptr %108, align 4
  %110 = lshr i32 %109, 16
  %111 = and i32 %110, 255
  br label %112

112:                                              ; preds = %107, %103
  %113 = phi i64 [ %106, %103 ], [ %100, %107 ]
  %114 = phi i32 [ %104, %103 ], [ %111, %107 ]
  %115 = trunc i64 %113 to i32
  %116 = lshr i32 %115, 21
  %117 = and i32 %116, 1
  %118 = tail call ptr @convert_modes(i32 noundef %76, i32 noundef %114, ptr noundef %97, i32 noundef %117) #18
  %119 = load i32, ptr %78, align 8
  %120 = and i32 %119, 65535
  %121 = icmp eq i32 %120, 43
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %78) #17
  tail call void @set_mem_alias_set(ptr noundef %123, i32 noundef 0) #17
  tail call void @set_mem_expr(ptr noundef %123, ptr noundef null) #17
  br label %124

124:                                              ; preds = %122, %112
  %125 = phi ptr [ %123, %122 ], [ %78, %112 ]
  %126 = load i64, ptr %25, align 8
  %127 = and i64 %126, 65535
  %128 = icmp eq i64 %127, 63
  %129 = select i1 %128, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 12), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14)
  %130 = icmp ne i64 %0, 1
  %131 = or i1 %130, %89
  br i1 %131, label %135, label %132

132:                                              ; preds = %124
  %133 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !5
  %134 = tail call ptr @expand_and(i32 noundef %76, ptr noundef %118, ptr noundef %133, ptr noundef null) #17
  br label %135

135:                                              ; preds = %124, %132
  %136 = phi ptr [ %134, %132 ], [ %118, %124 ]
  %137 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), %132 ], [ %129, %124 ]
  %138 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %79) #17
  %139 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %76, ptr noundef %136, ptr noundef %138, ptr noundef null, i32 noundef 1) #17
  %140 = tail call ptr @expand_binop(i32 noundef %76, ptr noundef %137, ptr noundef %125, ptr noundef %139, ptr noundef %125, i32 noundef 1, i32 noundef 2) #17
  %141 = icmp eq ptr %140, %125
  br i1 %141, label %221, label %142

142:                                              ; preds = %135
  %143 = tail call ptr @emit_move_insn(ptr noundef %125, ptr noundef %140) #18
  br label %221

144:                                              ; preds = %85, %85
  %145 = load i64, ptr %41, align 8
  %146 = and i64 %145, 65535
  %147 = icmp eq i64 %146, 23
  br i1 %147, label %148, label %221

148:                                              ; preds = %144
  %149 = load i32, ptr %78, align 8
  %150 = lshr i32 %149, 16
  %151 = and i32 %150, 255
  %152 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %41, ptr noundef null, i32 noundef %151, i32 noundef 0) #18
  %153 = load i32, ptr %78, align 8
  %154 = lshr i32 %153, 16
  %155 = and i32 %154, 255
  %156 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !9
  %158 = load i64, ptr %157, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 14
  br i1 %160, label %161, label %165

161:                                              ; preds = %148
  %162 = tail call i32 @vector_type_mode(ptr noundef nonnull %157) #17
  %163 = load ptr, ptr %156, align 8, !tbaa !9
  %164 = load i64, ptr %163, align 8
  br label %170

165:                                              ; preds = %148
  %166 = getelementptr inbounds %struct.tree_type, ptr %157, i64 0, i32 6
  %167 = load i32, ptr %166, align 4
  %168 = lshr i32 %167, 16
  %169 = and i32 %168, 255
  br label %170

170:                                              ; preds = %165, %161
  %171 = phi i64 [ %164, %161 ], [ %158, %165 ]
  %172 = phi i32 [ %162, %161 ], [ %169, %165 ]
  %173 = trunc i64 %171 to i32
  %174 = lshr i32 %173, 21
  %175 = and i32 %174, 1
  %176 = tail call ptr @convert_modes(i32 noundef %155, i32 noundef %172, ptr noundef %152, i32 noundef %175) #18
  %177 = load i32, ptr %78, align 8
  %178 = and i32 %177, 65535
  %179 = icmp eq i32 %178, 43
  br i1 %179, label %180, label %183

180:                                              ; preds = %170
  %181 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %78) #17
  tail call void @set_mem_alias_set(ptr noundef %181, i32 noundef 0) #17
  tail call void @set_mem_expr(ptr noundef %181, ptr noundef null) #17
  %182 = load i32, ptr %181, align 8
  br label %183

183:                                              ; preds = %180, %170
  %184 = phi i32 [ %182, %180 ], [ %177, %170 ]
  %185 = phi ptr [ %181, %180 ], [ %78, %170 ]
  %186 = load i64, ptr %25, align 8
  %187 = and i64 %186, 65535
  %188 = icmp eq i64 %187, 87
  %189 = select i1 %188, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 42), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43)
  %190 = lshr i32 %184, 16
  %191 = and i32 %190, 255
  %192 = zext nneg i32 %191 to i64
  %193 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !9
  %195 = zext i8 %194 to i64
  %196 = shl nuw nsw i64 %195, 3
  %197 = icmp eq i64 %83, %196
  br i1 %197, label %209, label %198

198:                                              ; preds = %183
  %199 = shl nsw i64 -1, %0
  %200 = xor i64 %199, -1
  %201 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %200) #17
  %202 = load i32, ptr %185, align 8
  %203 = lshr i32 %202, 16
  %204 = and i32 %203, 255
  %205 = tail call ptr @expand_and(i32 noundef %204, ptr noundef %176, ptr noundef %201, ptr noundef null) #17
  %206 = load i32, ptr %185, align 8
  %207 = lshr i32 %206, 16
  %208 = and i32 %207, 255
  br label %209

209:                                              ; preds = %198, %183
  %210 = phi i32 [ %208, %198 ], [ %191, %183 ]
  %211 = phi ptr [ %205, %198 ], [ %176, %183 ]
  %212 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %79) #17
  %213 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %210, ptr noundef %211, ptr noundef %212, ptr noundef null, i32 noundef 1) #17
  %214 = load i32, ptr %185, align 8
  %215 = lshr i32 %214, 16
  %216 = and i32 %215, 255
  %217 = tail call ptr @expand_binop(i32 noundef %216, ptr noundef nonnull %189, ptr noundef nonnull %185, ptr noundef %213, ptr noundef nonnull %185, i32 noundef 1, i32 noundef 2) #17
  %218 = icmp eq ptr %217, %185
  br i1 %218, label %221, label %219

219:                                              ; preds = %209
  %220 = tail call ptr @emit_move_insn(ptr noundef nonnull %185, ptr noundef %217) #18
  br label %221

221:                                              ; preds = %60, %92, %90, %144, %85, %209, %219, %135, %142, %82, %75, %45, %37, %24, %31, %6, %20
  %222 = phi i8 [ 0, %20 ], [ 0, %6 ], [ 0, %31 ], [ 0, %24 ], [ 0, %37 ], [ 0, %45 ], [ 0, %75 ], [ 0, %82 ], [ 1, %142 ], [ 1, %135 ], [ 1, %219 ], [ 1, %209 ], [ 0, %85 ], [ 0, %144 ], [ 0, %90 ], [ 0, %92 ], [ 0, %60 ]
  ret i8 %222
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @store_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i8 noundef zeroext %7) unnamed_addr #0 {
  %9 = load i64, ptr %4, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  br label %38

14:                                               ; preds = %8
  %15 = icmp eq i64 %1, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %18 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %4, ptr noundef %17, i32 noundef 0, i32 noundef 0) #18
  br label %38

19:                                               ; preds = %14
  %20 = icmp eq i32 %3, 1
  %21 = load i32, ptr %0, align 8
  br i1 %20, label %22, label %43

22:                                               ; preds = %19
  %23 = trunc i32 %21 to i16
  switch i16 %23, label %46 [
    i16 37, label %24
    i16 39, label %24
  ]

24:                                               ; preds = %22, %22
  %25 = tail call ptr @assign_temp(ptr noundef %5, i32 noundef 0, i32 noundef 1, i32 noundef 1) #17
  %26 = tail call ptr @adjust_address_1(ptr noundef %25, i32 noundef 1, i64 noundef 0, i32 noundef 1, i32 noundef 1) #17
  %27 = load i32, ptr %0, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !9
  %33 = zext i8 %32 to i64
  %34 = shl nuw nsw i64 %33, 3
  %35 = icmp eq i64 %34, %1
  br i1 %35, label %40, label %36

36:                                               ; preds = %24
  %37 = tail call ptr @emit_move_insn(ptr noundef %25, ptr noundef nonnull %0) #18
  br label %40

38:                                               ; preds = %248, %224, %52, %16, %12, %40
  %39 = phi ptr [ %26, %40 ], [ %13, %12 ], [ %18, %16 ], [ null, %52 ], [ %225, %224 ], [ null, %248 ]
  ret ptr %39

40:                                               ; preds = %36, %24
  %41 = tail call fastcc ptr @store_field(ptr noundef %26, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef nonnull %4, ptr noundef %5, i32 noundef %6, i8 noundef zeroext %7) #18
  %42 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef %25) #18
  br label %38

43:                                               ; preds = %19
  %44 = and i32 %21, 65535
  %45 = icmp eq i32 %44, 41
  br i1 %45, label %49, label %54

46:                                               ; preds = %22
  %47 = and i32 %21, 65535
  %48 = icmp eq i32 %47, 41
  br i1 %48, label %49, label %67

49:                                               ; preds = %46, %43
  %50 = icmp eq i64 %2, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5812, ptr noundef nonnull @.str.1) #17
  br label %52

52:                                               ; preds = %49, %51
  %53 = tail call ptr @store_expr(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext %7) #18
  br label %38

54:                                               ; preds = %43
  %55 = icmp eq i32 %3, 0
  br i1 %55, label %100, label %56

56:                                               ; preds = %54
  %57 = sext i32 %3 to i64
  %58 = getelementptr inbounds [87 x i8], ptr @direct_store, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = zext i32 %3 to i64
  %63 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !9
  %65 = and i8 %64, -2
  %66 = icmp eq i8 %65, 10
  br i1 %66, label %67, label %100

67:                                               ; preds = %46, %61, %56
  %68 = phi i32 [ %44, %61 ], [ %44, %56 ], [ %47, %46 ]
  %69 = trunc i32 %68 to i16
  switch i16 %69, label %70 [
    i16 37, label %100
    i16 39, label %100
  ]

70:                                               ; preds = %67
  br i1 %20, label %87, label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !9
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.mem_attrs, ptr %73, i64 0, i32 4
  %77 = load i32, ptr %76, align 4, !tbaa !48
  br label %78

78:                                               ; preds = %71, %75
  %79 = phi i32 [ %77, %75 ], [ 8, %71 ]
  %80 = tail call i32 @get_mode_alignment(i32 noundef %3) #17
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = tail call i32 @get_mode_alignment(i32 noundef %3) #17
  br label %84

84:                                               ; preds = %82, %78
  %85 = and i64 %2, 7
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %84, %70
  %88 = icmp sgt i64 %1, -1
  br i1 %88, label %89, label %226

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !9
  %92 = getelementptr inbounds %struct.tree_type, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !9
  %94 = load i64, ptr %93, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 23
  br i1 %96, label %97, label %226

97:                                               ; preds = %89
  %98 = tail call i32 @compare_tree_int(ptr noundef nonnull %93, i64 noundef %1) #17
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %226, label %100

100:                                              ; preds = %61, %67, %67, %97, %84, %54
  %101 = tail call fastcc ptr @get_def_for_expr(ptr noundef nonnull %4, i32 noundef 116) #18
  %102 = icmp eq ptr %101, null
  br i1 %102, label %151, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !9
  %106 = load i64, ptr %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = and i32 %107, 65535
  %109 = add nsw i32 %108, -6
  %110 = icmp ult i32 %109, 3
  br i1 %110, label %111, label %151

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.tree_type, ptr %105, i64 0, i32 6
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, 1023
  %115 = and i64 %106, 65535
  %116 = icmp eq i64 %115, 14
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = tail call i32 @vector_type_mode(ptr noundef nonnull %105) #17
  br label %122

119:                                              ; preds = %111
  %120 = lshr i32 %113, 16
  %121 = and i32 %120, 255
  br label %122

122:                                              ; preds = %119, %117
  %123 = phi i32 [ %118, %117 ], [ %121, %119 ]
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !9
  %127 = zext i8 %126 to i32
  %128 = shl nuw nsw i32 %127, 3
  %129 = icmp ult i32 %114, %128
  br i1 %129, label %130, label %151

130:                                              ; preds = %122
  %131 = load i32, ptr %112, align 4
  %132 = and i32 %131, 1023
  %133 = zext nneg i32 %132 to i64
  %134 = icmp eq i64 %133, %1
  br i1 %134, label %135, label %151

135:                                              ; preds = %130
  %136 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %101) #18
  %137 = getelementptr inbounds %struct.tree_common, ptr %136, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !9
  %139 = load i64, ptr %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = and i32 %140, 65535
  %142 = add nsw i32 %141, -6
  %143 = icmp ult i32 %142, 3
  br i1 %143, label %144, label %151

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.tree_type, ptr %138, i64 0, i32 6
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, 1023
  %148 = zext nneg i32 %147 to i64
  %149 = icmp ult i64 %148, %1
  %150 = select i1 %149, ptr %4, ptr %136
  br label %151

151:                                              ; preds = %144, %135, %103, %122, %130, %100
  %152 = phi ptr [ %4, %100 ], [ %4, %130 ], [ %4, %122 ], [ %4, %103 ], [ %4, %135 ], [ %150, %144 ]
  %153 = tail call fastcc ptr @expand_normal(ptr noundef nonnull %152) #18
  %154 = icmp ugt i32 %3, 1
  br i1 %154, label %155, label %186

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.tree_common, ptr %152, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !9
  %158 = load i64, ptr %157, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 14
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = tail call i32 @vector_type_mode(ptr noundef nonnull %157) #17
  br label %168

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.tree_type, ptr %157, i64 0, i32 6
  %165 = load i32, ptr %164, align 4
  %166 = lshr i32 %165, 16
  %167 = and i32 %166, 255
  br label %168

168:                                              ; preds = %163, %161
  %169 = phi i32 [ %162, %161 ], [ %167, %163 ]
  %170 = icmp eq i32 %169, %3
  br i1 %170, label %186, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr %156, align 8, !tbaa !9
  %173 = load i64, ptr %172, align 8
  %174 = and i64 %173, 65535
  %175 = icmp eq i64 %174, 14
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = tail call i32 @vector_type_mode(ptr noundef nonnull %172) #17
  br label %183

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.tree_type, ptr %172, i64 0, i32 6
  %180 = load i32, ptr %179, align 4
  %181 = lshr i32 %180, 16
  %182 = and i32 %181, 255
  br label %183

183:                                              ; preds = %178, %176
  %184 = phi i32 [ %177, %176 ], [ %182, %178 ]
  %185 = tail call ptr @convert_modes(i32 noundef %3, i32 noundef %184, ptr noundef %153, i32 noundef 1) #18
  br label %186

186:                                              ; preds = %183, %168, %151
  %187 = phi ptr [ %185, %183 ], [ %153, %168 ], [ %153, %151 ]
  %188 = load i32, ptr %187, align 8
  %189 = and i32 %188, 16711680
  %190 = icmp eq i32 %189, 65536
  br i1 %190, label %191, label %223

191:                                              ; preds = %186
  %192 = load i32, ptr %0, align 8
  %193 = lshr i32 %192, 16
  %194 = and i32 %193, 255
  %195 = icmp eq i32 %194, 1
  %196 = and i32 %192, 65535
  %197 = icmp eq i32 %196, 43
  br i1 %195, label %208, label %198

198:                                              ; preds = %191
  br i1 %197, label %199, label %223

199:                                              ; preds = %198
  %200 = zext nneg i32 %194 to i64
  %201 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !9
  %203 = icmp eq i8 %202, 2
  %204 = or i64 %2, %1
  %205 = and i64 %204, 7
  %206 = icmp eq i64 %205, 0
  %207 = and i1 %206, %203
  br i1 %207, label %209, label %223

208:                                              ; preds = %191
  br i1 %197, label %209, label %215

209:                                              ; preds = %199, %208
  %210 = and i32 %188, 65535
  %211 = icmp eq i32 %210, 43
  %212 = and i64 %2, 7
  %213 = icmp eq i64 %212, 0
  %214 = and i1 %213, %211
  br i1 %214, label %216, label %215

215:                                              ; preds = %209, %208
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5895, ptr noundef nonnull @.str.1) #17
  br label %216

216:                                              ; preds = %209, %215
  %217 = sdiv i64 %2, 8
  %218 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %217, i32 noundef 1, i32 noundef 1) #17
  %219 = add nsw i64 %1, 7
  %220 = sdiv i64 %219, 8
  %221 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %220) #17
  %222 = tail call ptr @emit_block_move(ptr noundef %218, ptr noundef nonnull %187, ptr noundef %221, i32 noundef 0) #18
  br label %224

223:                                              ; preds = %199, %198, %186
  tail call void @store_bit_field(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull %187) #17
  br label %224

224:                                              ; preds = %223, %216
  %225 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  br label %38

226:                                              ; preds = %97, %89, %87
  %227 = sdiv i64 %2, 8
  %228 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef %3, i64 noundef %227, i32 noundef 1, i32 noundef 1) #17
  %229 = icmp eq ptr %228, %0
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = tail call ptr @copy_rtx(ptr noundef nonnull %0) #17
  br label %232

232:                                              ; preds = %226, %230
  %233 = phi ptr [ %231, %230 ], [ %228, %226 ]
  %234 = load i32, ptr %233, align 8
  %235 = and i32 %234, 1879048191
  %236 = or disjoint i32 %235, 268435456
  store i32 %236, ptr %233, align 8
  %237 = and i32 %234, 16777216
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %232
  %240 = getelementptr inbounds %struct.rtx_def, ptr %233, i64 0, i32 1, i32 0, i32 0, i64 1
  %241 = load ptr, ptr %240, align 8, !tbaa !9
  %242 = icmp eq ptr %241, null
  br i1 %242, label %248, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.mem_attrs, ptr %241, i64 0, i32 3
  %245 = load i32, ptr %244, align 8, !tbaa !132
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %243
  tail call void @set_mem_alias_set(ptr noundef nonnull %233, i32 noundef %6) #17
  br label %248

248:                                              ; preds = %239, %247, %243, %232
  %249 = tail call ptr @store_expr(ptr noundef nonnull %4, ptr noundef nonnull %233, i32 noundef 0, i8 noundef zeroext %7) #18
  br label %38
}

; Function Attrs: optsize
declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_temp_slots() local_unnamed_addr #2

; Function Attrs: optsize
declare void @pop_temp_slots() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_not_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_addr_space(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @aggregate_value_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expr_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @refs_may_alias_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @emit_library_call(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @emit_storent_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !25
  %9 = icmp eq i32 %8, 2956
  br i1 %9, label %41, label %10

10:                                               ; preds = %2
  %11 = zext i32 %8 to i64
  %12 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 8
  %16 = zext i16 %15 to i32
  %17 = load ptr, ptr %13, align 8, !tbaa !15
  %18 = tail call i32 %17(ptr noundef nonnull %0, i32 noundef %16) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 1
  %22 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 1, i32 2
  %23 = load i16, ptr %22, align 8
  %24 = zext i16 %23 to i32
  %25 = load ptr, ptr %21, align 8, !tbaa !15
  %26 = tail call i32 %25(ptr noundef %1, i32 noundef %24) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = tail call ptr @copy_to_mode_reg(i32 noundef %24, ptr noundef %1) #17
  %30 = load ptr, ptr %21, align 8, !tbaa !15
  %31 = tail call i32 %30(ptr noundef %29, i32 noundef %24) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28, %20
  %34 = phi ptr [ %1, %20 ], [ %29, %28 ]
  %35 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !64
  %37 = tail call ptr (ptr, ...) %36(ptr noundef nonnull %0, ptr noundef %34) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = tail call ptr @emit_insn(ptr noundef nonnull %37) #17
  br label %41

41:                                               ; preds = %33, %28, %10, %2, %39
  %42 = phi i8 [ 1, %39 ], [ 0, %2 ], [ 0, %10 ], [ 0, %28 ], [ 0, %33 ]
  ret i8 %42
}

; Function Attrs: optsize
declare ptr @gen_label_rtx() local_unnamed_addr #2

; Function Attrs: optsize
declare void @do_pending_stack_adjust() local_unnamed_addr #2

; Function Attrs: optsize
declare void @jumpifnot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_jump(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_barrier() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @signed_or_unsigned_type_for(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @int_expr_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @builtin_strncpy_read_str(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_expr_real(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %9, %5
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  %20 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %21 = select i1 %19, ptr %20, ptr %18
  br label %53

22:                                               ; preds = %9
  %23 = load ptr, ptr @cfun, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %51, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %27 = load i32, ptr %26, align 4, !tbaa !22
  %28 = add i32 %27, -4
  %29 = icmp ult i32 %28, 7
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr @input_location, align 4, !tbaa !22
  %36 = tail call i32 @get_curr_insn_source_location() #17
  %37 = tail call ptr @get_curr_insn_block() #17
  %38 = load i64, ptr %0, align 8
  %39 = and i64 %38, 65535
  %40 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !22
  %42 = add i32 %41, -4
  %43 = icmp ult i32 %42, 7
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, ptr %31, align 8, !tbaa !9
  br label %46

46:                                               ; preds = %34, %44
  %47 = phi i32 [ %45, %44 ], [ 0, %34 ]
  store i32 %47, ptr @input_location, align 4, !tbaa !22
  tail call void @set_curr_insn_source_location(i32 noundef %47) #17
  %48 = tail call ptr @tree_block(ptr noundef nonnull %0) #17
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  tail call void @set_curr_insn_block(ptr noundef %49) #17
  %50 = tail call ptr @expand_expr_real_1(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #18
  store i32 %35, ptr @input_location, align 4, !tbaa !22
  tail call void @set_curr_insn_block(ptr noundef %37) #17
  tail call void @set_curr_insn_source_location(i32 noundef %36) #17
  br label %53

51:                                               ; preds = %25, %30, %22
  %52 = tail call ptr @expand_expr_real_1(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #18
  br label %53

53:                                               ; preds = %46, %51, %15
  %54 = phi ptr [ %21, %15 ], [ %50, %46 ], [ %52, %51 ]
  ret ptr %54
}

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @highest_pow2_factor(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %28, %1
  %3 = phi i64 [ %34, %28 ], [ -1, %1 ]
  %4 = phi ptr [ %33, %28 ], [ %0, %1 ]
  br label %5

5:                                                ; preds = %66, %2
  %6 = phi ptr [ %4, %2 ], [ %68, %66 ]
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %35 [
    i16 23, label %9
    i16 63, label %28
    i16 64, label %28
    i16 80, label %28
    i16 81, label %28
    i16 65, label %38
    i16 70, label %46
    i16 67, label %46
    i16 69, label %46
    i16 68, label %46
    i16 89, label %64
    i16 116, label %69
    i16 113, label %69
    i16 120, label %69
    i16 52, label %71
    i16 56, label %73
  ]

9:                                                ; preds = %5
  %10 = and i64 %7, 134217728
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !22
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i64 128, i64 256
  br label %35

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.tree_int_cst, ptr %6, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !9
  %20 = sub i64 0, %19
  %21 = and i64 %19, %20
  %22 = icmp eq i64 %21, 0
  %23 = load i32, ptr @ix86_isa_flags, align 4
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i64 128, i64 256
  %27 = select i1 %22, i64 %26, i64 %21
  br label %35

28:                                               ; preds = %5, %5, %5, %5
  %29 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  %31 = tail call i64 @highest_pow2_factor(ptr noundef %30) #18
  %32 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !9
  %34 = tail call i64 @llvm.umin.i64(i64 %31, i64 %3)
  br label %2

35:                                               ; preds = %5, %12, %17, %56, %62, %46, %52, %73, %38
  %36 = phi i64 [ %80, %73 ], [ %45, %38 ], [ %16, %12 ], [ %27, %17 ], [ %63, %62 ], [ 1, %56 ], [ 1, %46 ], [ 1, %52 ], [ 1, %5 ]
  %37 = tail call i64 @llvm.umin.i64(i64 %36, i64 %3)
  ret i64 %37

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !9
  %41 = tail call i64 @highest_pow2_factor(ptr noundef %40) #18
  %42 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !9
  %44 = tail call i64 @highest_pow2_factor(ptr noundef %43) #18
  %45 = mul i64 %44, %41
  br label %35

46:                                               ; preds = %5, %5, %5, %5
  %47 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %48 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !9
  %50 = tail call i32 @integer_pow2p(ptr noundef %49) #17
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %35, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %48, align 8, !tbaa !9
  %54 = tail call i32 @host_integerp(ptr noundef %53, i32 noundef 1) #17
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %35, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %47, align 8, !tbaa !9
  %58 = tail call i64 @highest_pow2_factor(ptr noundef %57) #18
  %59 = load ptr, ptr %48, align 8, !tbaa !9
  %60 = tail call i64 @tree_low_cst(ptr noundef %59, i32 noundef 1) #17
  %61 = icmp ugt i64 %60, %58
  br i1 %61, label %35, label %62

62:                                               ; preds = %56
  %63 = udiv i64 %58, %60
  br label %35

64:                                               ; preds = %5
  %65 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  br label %66

66:                                               ; preds = %64, %69, %71
  %67 = phi ptr [ %65, %64 ], [ %70, %69 ], [ %72, %71 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !9
  br label %5

69:                                               ; preds = %5, %5, %5
  %70 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  br label %66

71:                                               ; preds = %5
  %72 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  br label %66

73:                                               ; preds = %5
  %74 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !9
  %76 = tail call i64 @highest_pow2_factor(ptr noundef %75) #18
  %77 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !9
  %79 = tail call i64 @highest_pow2_factor(ptr noundef %78) #18
  %80 = tail call i64 @llvm.umin.i64(i64 %76, i64 %79)
  br label %35
}

; Function Attrs: optsize
declare void @emit_cmp_and_jump_insns(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @force_operand(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @get_subtarget(ptr noundef %1) #18
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = load i32, ptr %9, align 8
  %11 = trunc i32 %10 to i16
  switch i16 %11, label %12 [
    i16 37, label %54
    i16 43, label %54
  ]

12:                                               ; preds = %7
  %13 = lshr i32 %4, 16
  %14 = and i32 %13, 255
  %15 = lshr i32 %10, 16
  %16 = and i32 %15, 255
  %17 = tail call ptr @force_operand(ptr noundef nonnull %9, ptr noundef null) #18
  %18 = tail call ptr @force_reg(i32 noundef %16, ptr noundef %17) #17
  %19 = load ptr, ptr %8, align 8, !tbaa !9
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load i32, ptr %23, align 8, !tbaa !9
  %25 = tail call ptr @simplify_gen_subreg(i32 noundef %14, ptr noundef %18, i32 noundef %22, i32 noundef %24) #17
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65535
  br label %28

28:                                               ; preds = %12, %2
  %29 = phi i32 [ %26, %12 ], [ %4, %2 ]
  %30 = phi ptr [ %25, %12 ], [ %0, %2 ]
  %31 = phi i32 [ %27, %12 ], [ %5, %2 ]
  %32 = icmp eq i32 %31, 50
  %33 = add nsw i32 %31, -49
  %34 = icmp ult i32 %33, 2
  br i1 %34, label %35, label %54

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !5
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !9
  %43 = load i32, ptr %42, align 8
  %44 = trunc i32 %43 to i16
  switch i16 %44, label %54 [
    i16 45, label %45
    i16 44, label %45
    i16 35, label %45
  ]

45:                                               ; preds = %40, %40, %40
  %46 = icmp eq ptr %3, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = lshr i32 %29, 16
  %49 = and i32 %48, 255
  %50 = tail call ptr @gen_reg_rtx(i32 noundef %49) #17
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi ptr [ %3, %45 ], [ %50, %47 ]
  %53 = tail call ptr @emit_move_insn(ptr noundef %52, ptr noundef nonnull %30) #18
  br label %113

54:                                               ; preds = %7, %7, %40, %28, %35
  %55 = phi i32 [ %29, %40 ], [ %29, %28 ], [ %29, %35 ], [ %4, %7 ], [ %4, %7 ]
  %56 = phi i1 [ %32, %40 ], [ %32, %28 ], [ %32, %35 ], [ false, %7 ], [ false, %7 ]
  %57 = phi i32 [ %31, %40 ], [ %31, %28 ], [ %31, %35 ], [ 39, %7 ], [ 39, %7 ]
  %58 = phi ptr [ %30, %40 ], [ %30, %28 ], [ %30, %35 ], [ %0, %7 ], [ %0, %7 ]
  %59 = and i32 %55, 65535
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !22
  %63 = and i32 %62, -2
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %181

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %67 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !9
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !22
  %74 = icmp eq i32 %73, 9
  %75 = icmp ne i32 %70, 37
  %76 = icmp eq ptr %68, %3
  %77 = select i1 %75, i1 true, i1 %76
  %78 = select i1 %77, ptr null, ptr %3
  %79 = select i1 %74, ptr %3, ptr %78
  br i1 %56, label %80, label %90

80:                                               ; preds = %65
  %81 = icmp eq i32 %70, 30
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  %83 = load ptr, ptr %66, align 8, !tbaa !9
  br label %128

84:                                               ; preds = %80
  %85 = lshr i32 %55, 16
  %86 = and i32 %85, 255
  %87 = tail call ptr @negate_rtx(i32 noundef %86, ptr noundef nonnull %68) #17
  %88 = load i32, ptr %87, align 8
  %89 = load ptr, ptr %66, align 8, !tbaa !9
  br label %93

90:                                               ; preds = %65
  %91 = icmp eq i32 %57, 49
  %92 = load ptr, ptr %66, align 8, !tbaa !9
  br i1 %91, label %93, label %134

93:                                               ; preds = %84, %90
  %94 = phi ptr [ %89, %84 ], [ %92, %90 ]
  %95 = phi i32 [ %88, %84 ], [ %69, %90 ]
  %96 = phi ptr [ %87, %84 ], [ %68, %90 ]
  %97 = and i32 %95, 65535
  %98 = icmp eq i32 %97, 30
  br i1 %98, label %99, label %128

99:                                               ; preds = %93
  %100 = load i32, ptr %94, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 49
  br i1 %102, label %103, label %128

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !9
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 37
  br i1 %108, label %109, label %128

109:                                              ; preds = %103
  %110 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %105) #18
  %111 = add i32 %110, -53
  %112 = icmp ult i32 %111, 5
  br i1 %112, label %115, label %128

113:                                              ; preds = %209, %211, %217, %204, %201, %198, %195, %173, %168, %163, %158, %153, %151, %149, %137, %51, %229, %115
  %114 = phi ptr [ %127, %115 ], [ %238, %229 ], [ %52, %51 ], [ %180, %173 ], [ %172, %168 ], [ %167, %163 ], [ %162, %158 ], [ %157, %153 ], [ %152, %151 ], [ %150, %149 ], [ %141, %137 ], [ %208, %204 ], [ %190, %201 ], [ %190, %198 ], [ %190, %195 ], [ %58, %217 ], [ %58, %211 ], [ %58, %209 ]
  ret ptr %114

115:                                              ; preds = %109
  %116 = load i32, ptr %58, align 8
  %117 = lshr i32 %116, 16
  %118 = and i32 %117, 255
  %119 = tail call ptr @expand_simple_binop(i32 noundef %118, i32 noundef 49, ptr noundef nonnull %105, ptr noundef nonnull %96, ptr noundef %79, i32 noundef 0, i32 noundef 3) #17
  %120 = load i32, ptr %58, align 8
  %121 = lshr i32 %120, 16
  %122 = and i32 %121, 255
  %123 = load ptr, ptr %66, align 8, !tbaa !9
  %124 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !9
  %126 = tail call ptr @force_operand(ptr noundef %125, ptr noundef null) #18
  %127 = tail call ptr @expand_simple_binop(i32 noundef %122, i32 noundef 49, ptr noundef %119, ptr noundef %126, ptr noundef %1, i32 noundef 0, i32 noundef 3) #17
  br label %113

128:                                              ; preds = %82, %109, %103, %99, %93
  %129 = phi ptr [ %94, %93 ], [ %94, %99 ], [ %94, %103 ], [ %94, %109 ], [ %83, %82 ]
  %130 = phi i32 [ 49, %93 ], [ 49, %99 ], [ 49, %103 ], [ 49, %109 ], [ 50, %82 ]
  %131 = phi ptr [ %96, %93 ], [ %96, %99 ], [ %96, %103 ], [ %96, %109 ], [ %68, %82 ]
  %132 = tail call ptr @force_operand(ptr noundef %129, ptr noundef %79) #18
  %133 = tail call ptr @force_operand(ptr noundef nonnull %131, ptr noundef null) #18
  br label %173

134:                                              ; preds = %90
  %135 = tail call ptr @force_operand(ptr noundef %92, ptr noundef %79) #18
  %136 = tail call ptr @force_operand(ptr noundef nonnull %68, ptr noundef null) #18
  switch i32 %57, label %173 [
    i32 52, label %137
    i32 55, label %142
    i32 58, label %153
    i32 59, label %158
    i32 60, label %163
    i32 67, label %168
  ]

137:                                              ; preds = %134
  %138 = load i32, ptr %58, align 8
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  %141 = tail call ptr @expand_mult(i32 noundef %140, ptr noundef %135, ptr noundef %136, ptr noundef %1, i32 noundef 1) #17
  br label %113

142:                                              ; preds = %134
  %143 = load i32, ptr %58, align 8
  %144 = lshr i32 %143, 16
  %145 = and i32 %144, 255
  %146 = zext nneg i32 %145 to i64
  %147 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !9
  switch i8 %148, label %149 [
    i8 2, label %151
    i8 3, label %151
    i8 10, label %151
    i8 12, label %151
  ]

149:                                              ; preds = %142
  %150 = tail call ptr @expand_simple_binop(i32 noundef %145, i32 noundef 55, ptr noundef %135, ptr noundef %136, ptr noundef %1, i32 noundef 1, i32 noundef 3) #17
  br label %113

151:                                              ; preds = %142, %142, %142, %142
  %152 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef 67, i32 noundef %145, ptr noundef %135, ptr noundef %136, ptr noundef %1, i32 noundef 0) #17
  br label %113

153:                                              ; preds = %134
  %154 = load i32, ptr %58, align 8
  %155 = lshr i32 %154, 16
  %156 = and i32 %155, 255
  %157 = tail call ptr @expand_divmod(i32 noundef 1, i32 noundef 71, i32 noundef %156, ptr noundef %135, ptr noundef %136, ptr noundef %1, i32 noundef 0) #17
  br label %113

158:                                              ; preds = %134
  %159 = load i32, ptr %58, align 8
  %160 = lshr i32 %159, 16
  %161 = and i32 %160, 255
  %162 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef 67, i32 noundef %161, ptr noundef %135, ptr noundef %136, ptr noundef %1, i32 noundef 1) #17
  br label %113

163:                                              ; preds = %134
  %164 = load i32, ptr %58, align 8
  %165 = lshr i32 %164, 16
  %166 = and i32 %165, 255
  %167 = tail call ptr @expand_divmod(i32 noundef 1, i32 noundef 71, i32 noundef %166, ptr noundef %135, ptr noundef %136, ptr noundef %1, i32 noundef 1) #17
  br label %113

168:                                              ; preds = %134
  %169 = load i32, ptr %58, align 8
  %170 = lshr i32 %169, 16
  %171 = and i32 %170, 255
  %172 = tail call ptr @expand_simple_binop(i32 noundef %171, i32 noundef 67, ptr noundef %135, ptr noundef %136, ptr noundef %1, i32 noundef 0, i32 noundef 3) #17
  br label %113

173:                                              ; preds = %128, %134
  %174 = phi ptr [ %133, %128 ], [ %136, %134 ]
  %175 = phi ptr [ %132, %128 ], [ %135, %134 ]
  %176 = phi i32 [ %130, %128 ], [ %57, %134 ]
  %177 = load i32, ptr %58, align 8
  %178 = lshr i32 %177, 16
  %179 = and i32 %178, 255
  %180 = tail call ptr @expand_simple_binop(i32 noundef %179, i32 noundef %176, ptr noundef %175, ptr noundef %174, ptr noundef %1, i32 noundef 1, i32 noundef 3) #17
  br label %113

181:                                              ; preds = %54
  %182 = icmp eq i32 %62, 4
  br i1 %182, label %183, label %209

183:                                              ; preds = %181
  %184 = icmp eq ptr %1, null
  br i1 %184, label %185, label %189

185:                                              ; preds = %183
  %186 = lshr i32 %55, 16
  %187 = and i32 %186, 255
  %188 = tail call ptr @gen_reg_rtx(i32 noundef %187) #17
  br label %189

189:                                              ; preds = %185, %183
  %190 = phi ptr [ %1, %183 ], [ %188, %185 ]
  %191 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !9
  %193 = tail call ptr @force_operand(ptr noundef %192, ptr noundef null) #18
  %194 = trunc i32 %57 to i16
  switch i16 %194, label %204 [
    i16 99, label %195
    i16 98, label %195
    i16 100, label %195
    i16 101, label %195
    i16 102, label %195
    i16 104, label %198
    i16 106, label %198
    i16 103, label %201
    i16 105, label %201
  ]

195:                                              ; preds = %189, %189, %189, %189, %189
  %196 = icmp eq i32 %57, 99
  %197 = zext i1 %196 to i32
  tail call void @convert_move(ptr noundef %190, ptr noundef %193, i32 noundef %197) #18
  br label %113

198:                                              ; preds = %189, %189
  %199 = icmp eq i32 %57, 106
  %200 = zext i1 %199 to i32
  tail call void @expand_fix(ptr noundef %190, ptr noundef %193, i32 noundef %200) #17
  br label %113

201:                                              ; preds = %189, %189
  %202 = icmp eq i32 %57, 105
  %203 = zext i1 %202 to i32
  tail call void @expand_float(ptr noundef %190, ptr noundef %193, i32 noundef %203) #17
  br label %113

204:                                              ; preds = %189
  %205 = load i32, ptr %58, align 8
  %206 = lshr i32 %205, 16
  %207 = and i32 %206, 255
  %208 = tail call ptr @expand_simple_unop(i32 noundef %207, i32 noundef %57, ptr noundef %193, ptr noundef %190, i32 noundef 0) #17
  br label %113

209:                                              ; preds = %181
  %210 = icmp eq i32 %59, 39
  br i1 %210, label %211, label %113

211:                                              ; preds = %209
  %212 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !9
  %214 = load i32, ptr %213, align 8
  %215 = and i32 %214, 65535
  %216 = icmp eq i32 %215, 43
  br i1 %216, label %217, label %113

217:                                              ; preds = %211
  %218 = lshr i32 %55, 16
  %219 = and i32 %218, 255
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !9
  %223 = lshr i32 %214, 16
  %224 = and i32 %223, 255
  %225 = zext nneg i32 %224 to i64
  %226 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !9
  %228 = icmp ugt i8 %222, %227
  br i1 %228, label %229, label %113

229:                                              ; preds = %217
  %230 = tail call ptr @force_operand(ptr noundef nonnull %213, ptr noundef null) #18
  %231 = tail call ptr @force_reg(i32 noundef %224, ptr noundef %230) #17
  %232 = load ptr, ptr %212, align 8, !tbaa !9
  %233 = load i32, ptr %232, align 8
  %234 = lshr i32 %233, 16
  %235 = and i32 %234, 255
  %236 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %237 = load i32, ptr %236, align 8, !tbaa !9
  %238 = tail call ptr @simplify_gen_subreg(i32 noundef %219, ptr noundef %231, i32 noundef %235, i32 noundef %237) #17
  br label %113
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @categorize_ctor_elements(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  store i64 0, ptr %1, align 8, !tbaa !78
  store i64 0, ptr %2, align 8, !tbaa !78
  store i8 0, ptr %3, align 1, !tbaa !9
  %5 = tail call fastcc zeroext i8 @categorize_ctor_elements_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !116
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @categorize_ctor_elements_1(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = tail call zeroext i8 @constructor_static_from_elts_p(ptr noundef %0) #17
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = load i64, ptr %0, align 8
  %11 = trunc i64 %10 to i32
  %12 = lshr i32 %11, 26
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  br label %15

15:                                               ; preds = %4, %9
  %16 = phi i8 [ %14, %9 ], [ 1, %4 ]
  %17 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %18) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %130, label %21

21:                                               ; preds = %15, %121
  %22 = phi ptr [ %126, %121 ], [ %18, %15 ]
  %23 = phi i64 [ %125, %121 ], [ 0, %15 ]
  %24 = phi i64 [ %124, %121 ], [ 0, %15 ]
  %25 = phi i64 [ %123, %121 ], [ 0, %15 ]
  %26 = phi i8 [ %122, %121 ], [ %16, %15 ]
  %27 = trunc i64 %23 to i32
  %28 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %22, i32 noundef %27) #18
  %29 = getelementptr inbounds %struct.constructor_elt_d, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !133
  %31 = load ptr, ptr %28, align 8, !tbaa !135
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 111
  br i1 %34, label %35, label %50

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !9
  %40 = tail call i32 @host_integerp(ptr noundef %37, i32 noundef 1) #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %35
  %43 = tail call i32 @host_integerp(ptr noundef %39, i32 noundef 1) #17
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = tail call i64 @tree_low_cst(ptr noundef %39, i32 noundef 1) #17
  %47 = tail call i64 @tree_low_cst(ptr noundef %37, i32 noundef 1) #17
  %48 = add i64 %46, 1
  %49 = sub i64 %48, %47
  br label %50

50:                                               ; preds = %35, %42, %45, %21
  %51 = phi i64 [ 1, %21 ], [ %49, %45 ], [ 1, %42 ], [ 1, %35 ]
  %52 = load i64, ptr %30, align 8
  %53 = trunc i64 %52 to i16
  switch i16 %53, label %110 [
    i16 51, label %54
    i16 23, label %65
    i16 24, label %65
    i16 25, label %65
    i16 28, label %71
    i16 26, label %78
    i16 27, label %92
  ]

54:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store i64 0, ptr %6, align 8, !tbaa !78
  %55 = call fastcc zeroext i8 @categorize_ctor_elements_1(ptr noundef nonnull %30, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %3) #18, !range !116
  %56 = load i64, ptr %5, align 8, !tbaa !78
  %57 = mul nsw i64 %56, %51
  %58 = add nsw i64 %57, %24
  %59 = load i64, ptr %6, align 8, !tbaa !78
  %60 = mul nsw i64 %59, %51
  %61 = add nsw i64 %60, %25
  %62 = icmp ne i8 %26, 0
  %63 = select i1 %8, i1 %62, i1 false
  %64 = select i1 %63, i8 %55, i8 %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %121

65:                                               ; preds = %50, %50, %50
  %66 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %30) #17
  %67 = icmp eq i8 %66, 0
  %68 = select i1 %67, i64 %51, i64 0
  %69 = add nsw i64 %68, %24
  %70 = add nsw i64 %51, %25
  br label %121

71:                                               ; preds = %50
  %72 = getelementptr inbounds %struct.tree_string, ptr %30, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !9
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %51, %74
  %76 = add nsw i64 %75, %24
  %77 = add nsw i64 %75, %25
  br label %121

78:                                               ; preds = %50
  %79 = getelementptr inbounds %struct.tree_complex, ptr %30, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !9
  %81 = tail call zeroext i8 @initializer_zerop(ptr noundef %80) #17
  %82 = icmp eq i8 %81, 0
  %83 = select i1 %82, i64 %51, i64 0
  %84 = add nsw i64 %83, %24
  %85 = getelementptr inbounds %struct.tree_complex, ptr %30, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !9
  %87 = tail call zeroext i8 @initializer_zerop(ptr noundef %86) #17
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, i64 %51, i64 0
  %90 = add nsw i64 %84, %89
  %91 = add nsw i64 %51, %25
  br label %121

92:                                               ; preds = %50
  %93 = getelementptr inbounds %struct.tree_vector, ptr %30, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !9
  %95 = icmp eq ptr %94, null
  br i1 %95, label %121, label %96

96:                                               ; preds = %92, %96
  %97 = phi ptr [ %108, %96 ], [ %94, %92 ]
  %98 = phi i64 [ %105, %96 ], [ %24, %92 ]
  %99 = phi i64 [ %106, %96 ], [ %25, %92 ]
  %100 = getelementptr inbounds %struct.tree_list, ptr %97, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !9
  %102 = tail call zeroext i8 @initializer_zerop(ptr noundef %101) #17
  %103 = icmp eq i8 %102, 0
  %104 = select i1 %103, i64 %51, i64 0
  %105 = add nsw i64 %104, %98
  %106 = add nsw i64 %99, %51
  %107 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !9
  %109 = icmp eq ptr %108, null
  br i1 %109, label %121, label %96, !llvm.loop !136

110:                                              ; preds = %50
  %111 = add nsw i64 %51, %24
  %112 = add nsw i64 %51, %25
  %113 = icmp ne i8 %26, 0
  %114 = select i1 %8, i1 %113, i1 false
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !9
  %118 = tail call ptr @initializer_constant_valid_p(ptr noundef nonnull %30, ptr noundef %117) #17
  %119 = icmp ne ptr %118, null
  %120 = zext i1 %119 to i8
  br label %121

121:                                              ; preds = %96, %92, %110, %115, %78, %71, %65, %54
  %122 = phi i8 [ %120, %115 ], [ %26, %110 ], [ %26, %78 ], [ %26, %71 ], [ %26, %65 ], [ %64, %54 ], [ %26, %92 ], [ %26, %96 ]
  %123 = phi i64 [ %112, %115 ], [ %112, %110 ], [ %91, %78 ], [ %77, %71 ], [ %70, %65 ], [ %61, %54 ], [ %25, %92 ], [ %106, %96 ]
  %124 = phi i64 [ %111, %115 ], [ %111, %110 ], [ %90, %78 ], [ %76, %71 ], [ %69, %65 ], [ %58, %54 ], [ %24, %92 ], [ %105, %96 ]
  %125 = add nuw nsw i64 %23, 1
  %126 = load ptr, ptr %17, align 8, !tbaa !9
  %127 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %126) #18
  %128 = zext i32 %127 to i64
  %129 = icmp ult i64 %125, %128
  br i1 %129, label %21, label %130, !llvm.loop !137

130:                                              ; preds = %121, %15
  %131 = phi ptr [ %18, %15 ], [ %126, %121 ]
  %132 = phi i8 [ %16, %15 ], [ %122, %121 ]
  %133 = phi i64 [ 0, %15 ], [ %123, %121 ]
  %134 = phi i64 [ 0, %15 ], [ %124, %121 ]
  %135 = phi i32 [ 0, %15 ], [ %127, %121 ]
  %136 = load i8, ptr %3, align 1, !tbaa !9
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %170

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !9
  %141 = load i64, ptr %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = and i32 %142, 65535
  %144 = add nsw i32 %143, -17
  %145 = icmp ult i32 %144, 2
  br i1 %145, label %146, label %170

146:                                              ; preds = %138
  switch i32 %135, label %147 [
    i32 0, label %168
    i32 1, label %150
  ]

147:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4947, ptr noundef nonnull @.str.1) #17
  %148 = load ptr, ptr %17, align 8, !tbaa !9
  %149 = load ptr, ptr %139, align 8, !tbaa !9
  br label %150

150:                                              ; preds = %146, %147
  %151 = phi ptr [ %140, %146 ], [ %149, %147 ]
  %152 = phi ptr [ %131, %146 ], [ %148, %147 ]
  %153 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %152, i32 noundef 0) #18
  %154 = getelementptr inbounds %struct.constructor_elt_d, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !133
  %156 = getelementptr inbounds %struct.tree_common, ptr %155, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !9
  %158 = getelementptr inbounds %struct.tree_type, ptr %151, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !9
  %160 = getelementptr inbounds %struct.tree_type, ptr %157, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !9
  %162 = tail call i32 @simple_cst_equal(ptr noundef %159, ptr noundef %161) #17
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %168

164:                                              ; preds = %150
  %165 = tail call i64 @count_type_elements(ptr noundef nonnull %157, i8 noundef zeroext 0) #18
  %166 = icmp ne i64 %133, %165
  %167 = zext i1 %166 to i8
  br label %168

168:                                              ; preds = %146, %164, %150
  %169 = phi i8 [ 1, %146 ], [ 1, %150 ], [ %167, %164 ]
  store i8 %169, ptr %3, align 1, !tbaa !9
  br label %170

170:                                              ; preds = %138, %168, %130
  %171 = load i64, ptr %1, align 8, !tbaa !78
  %172 = add nsw i64 %171, %134
  store i64 %172, ptr %1, align 8, !tbaa !78
  %173 = load i64, ptr %2, align 8, !tbaa !78
  %174 = add nsw i64 %173, %133
  store i64 %174, ptr %2, align 8, !tbaa !78
  ret i8 %132
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @count_type_elements(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %86 [
    i16 15, label %5
    i16 16, label %23
    i16 17, label %87
    i16 18, label %87
    i16 13, label %77
    i16 14, label %78
    i16 8, label %84
    i16 9, label %84
    i16 11, label %84
    i16 6, label %84
    i16 7, label %84
    i16 10, label %84
    i16 5, label %84
    i16 12, label %84
    i16 0, label %85
  ]

5:                                                ; preds = %2
  %6 = tail call ptr @array_type_nelts(ptr noundef nonnull %0) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @host_integerp(ptr noundef nonnull %6, i32 noundef 1) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8
  %12 = tail call i64 @tree_low_cst(ptr noundef nonnull %6, i32 noundef 1) #17
  %13 = add nsw i64 %12, 1
  %14 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = tail call i64 @count_type_elements(ptr noundef %15, i8 noundef zeroext 0) #18
  %17 = icmp eq i64 %13, 0
  br i1 %17, label %87, label %18

18:                                               ; preds = %11
  %19 = sdiv i64 9223372036854775807, %13
  %20 = icmp sgt i64 %19, %16
  %21 = mul nsw i64 %16, %13
  br i1 %20, label %87, label %22

22:                                               ; preds = %18, %8, %5
  br label %87

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %87, label %27

27:                                               ; preds = %23, %72
  %28 = phi ptr [ %75, %72 ], [ %25, %23 ]
  %29 = phi i64 [ %73, %72 ], [ 0, %23 ]
  %30 = load i64, ptr %28, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 31
  br i1 %32, label %33, label %72

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !9
  %36 = tail call i64 @count_type_elements(ptr noundef %35, i8 noundef zeroext 0) #18
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !9
  %41 = icmp eq i8 %1, 0
  br i1 %41, label %69, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = load i64, ptr %40, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 15
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %69, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 13
  %56 = load ptr, ptr %55, align 8, !tbaa !9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %54
  %59 = tail call i32 @integer_zerop(ptr noundef nonnull %56) #17
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %51, align 8, !tbaa !9
  %63 = getelementptr inbounds %struct.tree_type, ptr %62, i64 0, i32 14
  %64 = load ptr, ptr %63, align 8, !tbaa !9
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %0) #17
  %68 = icmp sgt i64 %67, -1
  br i1 %68, label %87, label %69

69:                                               ; preds = %66, %61, %58, %54, %50, %46, %42, %38
  br label %87

70:                                               ; preds = %33
  %71 = add nsw i64 %36, %29
  br label %72

72:                                               ; preds = %27, %70
  %73 = phi i64 [ %71, %70 ], [ %29, %27 ]
  %74 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !9
  %76 = icmp eq ptr %75, null
  br i1 %76, label %87, label %27, !llvm.loop !138

77:                                               ; preds = %2
  br label %87

78:                                               ; preds = %2
  %79 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 1023
  %82 = zext nneg i32 %81 to i64
  %83 = shl nuw i64 1, %82
  br label %87

84:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  br label %87

85:                                               ; preds = %2
  br label %87

86:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5085, ptr noundef nonnull @.str.1) #17
  br label %87

87:                                               ; preds = %72, %23, %11, %2, %2, %69, %66, %22, %18, %86, %85, %84, %78, %77
  %88 = phi i64 [ 0, %86 ], [ 0, %85 ], [ 1, %84 ], [ %83, %78 ], [ 2, %77 ], [ -1, %22 ], [ %21, %18 ], [ -1, %69 ], [ %29, %66 ], [ -1, %2 ], [ -1, %2 ], [ 0, %11 ], [ 0, %23 ], [ %73, %72 ]
  ret i64 %88
}

; Function Attrs: optsize
declare ptr @array_type_nelts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @component_ref_field_offset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !22
  %10 = add i32 %9, -4
  %11 = icmp ult i32 %10, 7
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !9
  br label %15

15:                                               ; preds = %1, %12
  %16 = phi i32 [ %14, %12 ], [ 0, %1 ]
  %17 = icmp eq ptr %3, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call ptr @fold_convert_loc(i32 noundef %16, ptr noundef %21, ptr noundef nonnull %3) #17
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %24, %23 ], [ %3, %18 ]
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = lshr i64 %28, 32
  %30 = and i64 %29, 255
  %31 = shl nuw i64 1, %30
  %32 = lshr i64 %31, 3
  %33 = tail call ptr @size_int_kind(i64 noundef %32, i32 noundef 0) #17
  %34 = tail call ptr @size_binop_loc(i32 noundef %16, i32 noundef 65, ptr noundef %26, ptr noundef %33) #17
  br label %45

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.tree_field_decl, ptr %5, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load i64, ptr %37, align 8
  %41 = and i64 %40, 131072
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %37, ptr noundef nonnull %0) #17
  br label %45

45:                                               ; preds = %35, %39, %43, %25
  %46 = phi ptr [ %34, %25 ], [ %44, %43 ], [ %37, %39 ], [ null, %35 ]
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @array_ref_low_bound(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = icmp eq ptr %7, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i64, ptr %15, align 8
  %19 = and i64 %18, 131072
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %15, ptr noundef nonnull %0) #17
  br label %29

23:                                               ; preds = %13, %11
  %24 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !9
  %28 = tail call ptr @build_int_cst(ptr noundef %27, i64 noundef 0) #17
  br label %29

29:                                               ; preds = %17, %21, %1, %23
  %30 = phi ptr [ %28, %23 ], [ %9, %1 ], [ %22, %21 ], [ %15, %17 ]
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @array_ref_element_size(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = load ptr, ptr %2, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 65535
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !22
  %14 = add i32 %13, -4
  %15 = icmp ult i32 %14, 7
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !9
  br label %19

19:                                               ; preds = %1, %16
  %20 = phi i32 [ %18, %16 ], [ 0, %1 ]
  %21 = icmp eq ptr %4, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @fold_convert_loc(i32 noundef %20, ptr noundef %25, ptr noundef nonnull %4) #17
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi ptr [ %28, %27 ], [ %4, %22 ]
  %31 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !9
  %33 = lshr i32 %32, 3
  %34 = zext nneg i32 %33 to i64
  %35 = tail call ptr @size_int_kind(i64 noundef %34, i32 noundef 0) #17
  %36 = tail call ptr @size_binop_loc(i32 noundef %20, i32 noundef 65, ptr noundef %30, ptr noundef %35) #17
  br label %47

37:                                               ; preds = %19
  %38 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load i64, ptr %39, align 8
  %43 = and i64 %42, 131072
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %39, ptr noundef nonnull %0) #17
  br label %47

47:                                               ; preds = %37, %41, %45, %29
  %48 = phi ptr [ %36, %29 ], [ %46, %45 ], [ %39, %41 ], [ null, %37 ]
  ret ptr %48
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_mul(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare zeroext i8 @double_int_fits_in_shwi_p(i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @double_int_to_shwi(i64, i64) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @contains_packed_reference(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  br label %2

2:                                                ; preds = %28, %1
  %3 = phi ptr [ %0, %1 ], [ %31, %28 ]
  %4 = phi i8 [ 0, %1 ], [ %29, %28 ]
  %5 = load i64, ptr %3, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %32 [
    i16 41, label %7
    i16 42, label %28
    i16 45, label %28
    i16 46, label %28
    i16 43, label %28
    i16 44, label %28
    i16 118, label %28
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 2199023255552
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 2199023255552
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = load i64, ptr %21, align 8
  %23 = freeze i64 %22
  %24 = and i64 %23, 2199023255552
  %25 = icmp eq i64 %24, 0
  %26 = lshr exact i64 %24, 41
  %27 = trunc i64 %26 to i8
  br i1 %25, label %28, label %32

28:                                               ; preds = %19, %2, %2, %2, %2, %2, %2
  %29 = phi i8 [ %4, %2 ], [ %4, %2 ], [ %4, %2 ], [ %4, %2 ], [ %4, %2 ], [ %4, %2 ], [ %27, %19 ]
  %30 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  br label %2

32:                                               ; preds = %19, %7, %13, %2
  %33 = phi i8 [ %4, %2 ], [ 1, %13 ], [ 1, %7 ], [ %27, %19 ]
  ret i8 %33
}

; Function Attrs: optsize
declare ptr @substitute_placeholder_in_expr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @array_ref_up_bound(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = load i64, ptr %11, align 8
  %15 = and i64 %14, 131072
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %11, ptr noundef nonnull %0) #17
  br label %19

19:                                               ; preds = %13, %1, %9, %17
  %20 = phi ptr [ %18, %17 ], [ null, %9 ], [ null, %1 ], [ %11, %13 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_subtarget(ptr noundef readonly %0) unnamed_addr #9 {
  %2 = load i32, ptr @optimize, align 4, !tbaa !22
  %3 = icmp ne i32 %2, 0
  %4 = icmp eq ptr %0, null
  %5 = or i1 %4, %3
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 37
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #18
  %12 = icmp ult i32 %11, 53
  %13 = select i1 %12, ptr null, ptr %0
  br label %14

14:                                               ; preds = %10, %1, %6
  %15 = phi ptr [ null, %6 ], [ null, %1 ], [ %13, %10 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @negate_rtx(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_simple_binop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_mult(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_divmod(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @expand_fix(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @expand_float(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_simple_unop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @safe_from_p(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %252, label %6

6:                                                ; preds = %3, %138
  %7 = phi i32 [ 0, %138 ], [ %2, %3 ]
  %8 = phi ptr [ %139, %138 ], [ %1, %3 ]
  %9 = phi ptr [ %66, %138 ], [ %0, %3 ]
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %17, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 23
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = load i64, ptr %13, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 15
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 14
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, ptr %29, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 23
  br i1 %34, label %39, label %35

35:                                               ; preds = %31, %27, %23
  %36 = load i32, ptr %9, align 8
  %37 = and i32 %36, 16711680
  %38 = icmp eq i32 %37, 65536
  br i1 %38, label %252, label %39

39:                                               ; preds = %35, %31, %19, %15, %11, %6
  %40 = load i32, ptr %9, align 8
  %41 = trunc i32 %40 to i16
  switch i16 %41, label %64 [
    i16 43, label %42
    i16 39, label %55
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !5
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %252, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %44, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !9
  %54 = icmp eq ptr %53, %45
  br i1 %54, label %252, label %64

55:                                               ; preds = %39
  %56 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !9
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 37
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %57) #18
  %63 = icmp ult i32 %62, 53
  br i1 %63, label %252, label %64

64:                                               ; preds = %39, %47, %51, %55, %61
  %65 = phi i32 [ %58, %61 ], [ %58, %55 ], [ %40, %51 ], [ %40, %47 ], [ %40, %39 ]
  %66 = phi ptr [ %57, %61 ], [ %57, %55 ], [ %9, %51 ], [ %9, %47 ], [ %9, %39 ]
  %67 = load i64, ptr %8, align 8
  %68 = and i64 %67, 65535
  %69 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !22
  switch i32 %70, label %252 [
    i32 3, label %71
    i32 2, label %216
    i32 0, label %75
    i32 8, label %118
    i32 7, label %130
    i32 5, label %130
    i32 6, label %135
    i32 10, label %140
    i32 4, label %140
    i32 9, label %140
  ]

71:                                               ; preds = %64
  %72 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %68, i64 11
  %73 = load i8, ptr %72, align 1, !tbaa !9
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %252, label %217

75:                                               ; preds = %64
  %76 = trunc i64 %67 to i16
  switch i16 %76, label %252 [
    i16 2, label %77
    i16 51, label %93
    i16 0, label %251
  ]

77:                                               ; preds = %75, %89
  %78 = phi ptr [ %87, %89 ], [ %8, %75 ]
  %79 = getelementptr inbounds %struct.tree_list, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !9
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = tail call i32 @safe_from_p(ptr noundef nonnull %66, ptr noundef nonnull %80, i32 noundef 0) #18, !range !139
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %252, label %85

85:                                               ; preds = %82, %77
  %86 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !9
  %88 = icmp eq ptr %87, null
  br i1 %88, label %252, label %89

89:                                               ; preds = %85
  %90 = load i64, ptr %87, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 2
  br i1 %92, label %77, label %138

93:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %94 = getelementptr inbounds %struct.tree_constructor, ptr %8, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !9
  %96 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %95, i32 noundef 0, ptr noundef nonnull %4) #18, !range !139
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %116, label %103

98:                                               ; preds = %111
  %99 = add i32 %104, 1
  %100 = load ptr, ptr %94, align 8, !tbaa !9
  %101 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %100, i32 noundef %99, ptr noundef nonnull %4) #18, !range !139
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %116, label %103, !llvm.loop !140

103:                                              ; preds = %93, %98
  %104 = phi i32 [ %99, %98 ], [ 0, %93 ]
  %105 = load ptr, ptr %4, align 8, !tbaa !5
  %106 = load ptr, ptr %105, align 8, !tbaa !135
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = tail call i32 @safe_from_p(ptr noundef nonnull %66, ptr noundef nonnull %106, i32 noundef 0) #18, !range !139
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108, %103
  %112 = getelementptr inbounds %struct.constructor_elt_d, ptr %105, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !133
  %114 = tail call i32 @safe_from_p(ptr noundef nonnull %66, ptr noundef %113, i32 noundef 0) #18, !range !139
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %98

116:                                              ; preds = %111, %108, %98, %93
  %117 = phi i32 [ 1, %93 ], [ 1, %98 ], [ 0, %108 ], [ 0, %111 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %252

118:                                              ; preds = %64
  %119 = icmp eq i64 %68, 132
  br i1 %119, label %120, label %252

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !9
  %123 = load i64, ptr %122, align 8
  %124 = and i64 %123, 65535
  %125 = icmp eq i64 %124, 32
  br i1 %125, label %126, label %252

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.tree_decl_common, ptr %122, i64 0, i32 5
  %128 = load ptr, ptr %127, align 8, !tbaa !9
  %129 = icmp eq ptr %128, null
  br i1 %129, label %252, label %138

130:                                              ; preds = %64, %64
  %131 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !9
  %133 = tail call i32 @safe_from_p(ptr noundef nonnull %66, ptr noundef %132, i32 noundef 0) #18, !range !139
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %252, label %135

135:                                              ; preds = %64, %130, %194, %140
  %136 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !9
  br label %138

138:                                              ; preds = %89, %135, %126
  %139 = phi ptr [ %137, %135 ], [ %128, %126 ], [ %87, %89 ]
  br label %6

140:                                              ; preds = %64, %64, %64
  %141 = trunc i64 %67 to i16
  switch i16 %141, label %199 [
    i16 121, label %142
    i16 49, label %174
    i16 48, label %174
    i16 47, label %174
    i16 59, label %189
    i16 60, label %194
    i16 61, label %194
    i16 120, label %135
  ]

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !9
  %145 = tail call ptr @staticp(ptr noundef %144) #17
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %252

147:                                              ; preds = %142
  %148 = load i64, ptr %8, align 8
  %149 = and i64 %148, 67108864
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %252

151:                                              ; preds = %147
  %152 = load ptr, ptr %143, align 8, !tbaa !9
  %153 = tail call i32 @safe_from_p(ptr noundef nonnull %66, ptr noundef %152, i32 noundef 0) #18, !range !139
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %252

155:                                              ; preds = %151
  %156 = load ptr, ptr %143, align 8, !tbaa !9
  %157 = load i64, ptr %156, align 8
  %158 = and i64 %157, 65535
  %159 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !22
  %161 = icmp eq i32 %160, 3
  br i1 %161, label %162, label %199

162:                                              ; preds = %155
  %163 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %158, i64 11
  %164 = load i8, ptr %163, align 1, !tbaa !9
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %252, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %156, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !9
  %169 = icmp eq ptr %168, null
  br i1 %169, label %252, label %170

170:                                              ; preds = %166
  %171 = load i32, ptr %168, align 8
  %172 = and i32 %171, 65535
  %173 = icmp eq i32 %172, 43
  br i1 %173, label %195, label %252

174:                                              ; preds = %140, %140, %140
  %175 = and i32 %65, 65535
  %176 = icmp eq i32 %175, 43
  br i1 %176, label %177, label %199

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1, i32 0, i32 0, i64 1
  %179 = load ptr, ptr %178, align 8, !tbaa !9
  %180 = icmp eq ptr %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.mem_attrs, ptr %179, i64 0, i32 3
  %183 = load i32, ptr %182, align 8, !tbaa !132
  br label %184

184:                                              ; preds = %177, %181
  %185 = phi i32 [ %183, %181 ], [ 0, %177 ]
  %186 = tail call i32 @get_alias_set(ptr noundef nonnull %8) #17
  %187 = tail call i32 @alias_sets_conflict_p(i32 noundef %185, i32 noundef %186) #17
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %199, label %252

189:                                              ; preds = %140
  %190 = trunc i32 %65 to i16
  switch i16 %190, label %199 [
    i16 37, label %191
    i16 43, label %252
  ]

191:                                              ; preds = %189
  %192 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %66) #18
  %193 = icmp ult i32 %192, 53
  br i1 %193, label %252, label %199

194:                                              ; preds = %140, %140
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6623, ptr noundef nonnull @.str.1) #17
  br label %135

195:                                              ; preds = %170
  %196 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !9
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %221

199:                                              ; preds = %140, %189, %191, %155, %174, %184, %195
  %200 = phi ptr [ %156, %195 ], [ %156, %155 ], [ %8, %174 ], [ %8, %184 ], [ %8, %191 ], [ %8, %189 ], [ %8, %140 ]
  %201 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %200) #18
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %252

203:                                              ; preds = %199
  %204 = zext nneg i32 %201 to i64
  br label %205

205:                                              ; preds = %203, %213
  %206 = phi i64 [ 0, %203 ], [ %214, %213 ]
  %207 = getelementptr inbounds %struct.tree_exp, ptr %200, i64 0, i32 3, i64 %206
  %208 = load ptr, ptr %207, align 8, !tbaa !9
  %209 = icmp eq ptr %208, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %205
  %211 = tail call i32 @safe_from_p(ptr noundef nonnull %66, ptr noundef nonnull %208, i32 noundef 0) #18, !range !139
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %252, label %213

213:                                              ; preds = %205, %210
  %214 = add nuw nsw i64 %206, 1
  %215 = icmp eq i64 %214, %204
  br i1 %215, label %252, label %205, !llvm.loop !141

216:                                              ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6646, ptr noundef nonnull @.str.1) #17
  br label %252

217:                                              ; preds = %71
  %218 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %8, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !9
  %220 = icmp eq ptr %219, null
  br i1 %220, label %252, label %221

221:                                              ; preds = %195, %217
  %222 = phi ptr [ %219, %217 ], [ %197, %195 ]
  %223 = load i32, ptr %222, align 8
  %224 = and i32 %223, 65535
  %225 = icmp eq i32 %224, 39
  br i1 %225, label %226, label %235

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !9
  %229 = load i32, ptr %228, align 8
  %230 = and i32 %229, 65535
  %231 = icmp eq i32 %230, 37
  br i1 %231, label %232, label %235

232:                                              ; preds = %226
  %233 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %228) #18
  %234 = icmp ult i32 %233, 53
  br i1 %234, label %252, label %235

235:                                              ; preds = %226, %232, %221
  %236 = phi ptr [ %228, %232 ], [ %228, %226 ], [ %222, %221 ]
  %237 = tail call i32 @rtx_equal_p(ptr noundef nonnull %66, ptr noundef nonnull %236) #17
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %252

239:                                              ; preds = %235
  %240 = load i32, ptr %66, align 8
  %241 = and i32 %240, 65535
  %242 = icmp eq i32 %241, 43
  br i1 %242, label %243, label %252

243:                                              ; preds = %239
  %244 = load i32, ptr %236, align 8
  %245 = and i32 %244, 65535
  %246 = icmp eq i32 %245, 43
  br i1 %246, label %247, label %252

247:                                              ; preds = %243
  %248 = tail call i32 @true_dependence(ptr noundef nonnull %236, i32 noundef 0, ptr noundef nonnull %66, ptr noundef nonnull @rtx_addr_varies_p) #17
  %249 = icmp eq i32 %248, 0
  %250 = zext i1 %249 to i32
  br label %252

251:                                              ; preds = %75
  br label %252

252:                                              ; preds = %51, %42, %35, %61, %126, %120, %118, %130, %64, %85, %82, %210, %213, %75, %251, %3, %199, %189, %71, %216, %217, %235, %247, %243, %239, %232, %191, %184, %162, %166, %170, %142, %147, %151, %116
  %253 = phi i32 [ %117, %116 ], [ 1, %151 ], [ 1, %147 ], [ 1, %142 ], [ 0, %170 ], [ 0, %166 ], [ 0, %162 ], [ 0, %184 ], [ 0, %191 ], [ 0, %232 ], [ 0, %235 ], [ 1, %243 ], [ 1, %239 ], [ %250, %247 ], [ 1, %217 ], [ 1, %216 ], [ 1, %71 ], [ 0, %189 ], [ 1, %199 ], [ 1, %3 ], [ 0, %75 ], [ 0, %210 ], [ 1, %213 ], [ 1, %85 ], [ 0, %82 ], [ 1, %64 ], [ 0, %130 ], [ 1, %118 ], [ 1, %120 ], [ 1, %126 ], [ 0, %61 ], [ 1, %35 ], [ 1, %42 ], [ 1, %51 ], [ 1, %251 ]
  ret i32 %253
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_constructor_elt_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !142
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !5
  ret i32 %13
}

; Function Attrs: optsize
declare ptr @staticp(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @alias_sets_conflict_p(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !22
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !9
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @rtx_addr_varies_p(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: optsize
declare i32 @integer_pow2p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_curr_insn_source_location() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_curr_insn_block() local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_curr_insn_source_location(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_curr_insn_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_expr_real_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.separate_ops, align 8
  %10 = alloca %struct.mem_address, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.tree_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  %23 = load i64, ptr %0, align 8
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 65535
  %26 = and i64 %23, 65535
  %27 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !22
  %29 = freeze i32 %28
  %30 = add i32 %29, -4
  %31 = icmp ult i32 %30, 7
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !9
  br label %35

35:                                               ; preds = %5, %32
  %36 = phi i32 [ %34, %32 ], [ 0, %5 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #16
  %37 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !9
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 14
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = tail call i32 @vector_type_mode(ptr noundef nonnull %38) #17
  %44 = load i64, ptr %38, align 8
  %45 = load i64, ptr %0, align 8
  %46 = and i64 %45, 65535
  %47 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !22
  br label %54

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  br label %54

54:                                               ; preds = %49, %42
  %55 = phi i32 [ %29, %49 ], [ %48, %42 ]
  %56 = phi i64 [ %26, %49 ], [ %46, %42 ]
  %57 = phi i64 [ %23, %49 ], [ %45, %42 ]
  %58 = phi i64 [ %39, %49 ], [ %44, %42 ]
  %59 = phi i32 [ %53, %49 ], [ %43, %42 ]
  %60 = trunc i64 %58 to i32
  %61 = lshr i32 %60, 21
  %62 = and i32 %61, 1
  store i32 %62, ptr %8, align 4, !tbaa !22
  %63 = icmp eq i32 %55, 9
  br i1 %63, label %79, label %64

64:                                               ; preds = %54
  %65 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %26
  %66 = load i8, ptr %65, align 1, !tbaa !9
  switch i8 %66, label %67 [
    i8 0, label %79
    i8 2, label %70
    i8 1, label %74
  ]

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !9
  br label %70

70:                                               ; preds = %64, %67
  %71 = phi ptr [ %69, %67 ], [ null, %64 ]
  %72 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !9
  br label %74

74:                                               ; preds = %64, %70
  %75 = phi ptr [ %71, %70 ], [ null, %64 ]
  %76 = phi ptr [ %73, %70 ], [ null, %64 ]
  %77 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !9
  br label %79

79:                                               ; preds = %64, %74, %54
  %80 = phi ptr [ null, %54 ], [ %75, %74 ], [ null, %64 ]
  %81 = phi ptr [ null, %54 ], [ %76, %74 ], [ null, %64 ]
  %82 = phi ptr [ null, %54 ], [ %78, %74 ], [ null, %64 ]
  store i32 %25, ptr %9, align 8, !tbaa !144
  %83 = getelementptr inbounds %struct.separate_ops, ptr %9, i64 0, i32 1
  store ptr %38, ptr %83, align 8, !tbaa !146
  %84 = getelementptr inbounds %struct.separate_ops, ptr %9, i64 0, i32 2
  store ptr %82, ptr %84, align 8, !tbaa !147
  %85 = getelementptr inbounds %struct.separate_ops, ptr %9, i64 0, i32 3
  store ptr %81, ptr %85, align 8, !tbaa !148
  %86 = getelementptr inbounds %struct.separate_ops, ptr %9, i64 0, i32 4
  store ptr %80, ptr %86, align 8, !tbaa !149
  %87 = getelementptr inbounds %struct.separate_ops, ptr %9, i64 0, i32 5
  store i32 %36, ptr %87, align 8, !tbaa !150
  %88 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %89 = icmp eq ptr %88, %1
  br i1 %89, label %111, label %90

90:                                               ; preds = %79
  %91 = trunc i64 %23 to i16
  switch i16 %91, label %92 [
    i16 118, label %94
    i16 116, label %94
    i16 113, label %94
    i16 56, label %94
  ]

92:                                               ; preds = %90
  %93 = load i64, ptr %38, align 8
  br label %98

94:                                               ; preds = %90, %90, %90, %90
  %95 = load i64, ptr %38, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 19
  br i1 %97, label %111, label %98

98:                                               ; preds = %92, %94
  %99 = phi i64 [ %93, %92 ], [ %95, %94 ]
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 8
  br i1 %101, label %102, label %161

102:                                              ; preds = %98
  %103 = zext i32 %59 to i64
  %104 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %103
  %105 = load i16, ptr %104, align 2, !tbaa !23
  %106 = zext i16 %105 to i32
  %107 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 6
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 1023
  %110 = icmp ult i32 %109, %106
  br label %161

111:                                              ; preds = %79, %94
  %112 = and i64 %57, 65536
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %1927, label %114

114:                                              ; preds = %111
  %115 = and i64 %57, 524288
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %134, label %117

117:                                              ; preds = %114
  %118 = icmp ne i64 %56, 29
  %119 = icmp ne i32 %59, 0
  %120 = select i1 %118, i1 %119, i1 false
  %121 = icmp ne i32 %59, 1
  %122 = select i1 %120, i1 %121, i1 false
  %123 = icmp ne i32 %3, 3
  %124 = and i1 %123, %122
  br i1 %124, label %125, label %134

125:                                              ; preds = %117
  %126 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef %3) #18
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, 65535
  %129 = icmp eq i32 %128, 43
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = tail call ptr @copy_to_reg(ptr noundef nonnull %126) #17
  br label %132

132:                                              ; preds = %130, %125
  %133 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  br label %1927

134:                                              ; preds = %117, %114
  %135 = icmp eq i32 %29, 6
  br i1 %135, label %138, label %136

136:                                              ; preds = %134
  %137 = trunc i64 %23 to i16
  switch i16 %137, label %140 [
    i16 47, label %138
    i16 41, label %138
  ]

138:                                              ; preds = %136, %136, %134
  %139 = tail call fastcc ptr @expand_expr(ptr noundef %82, ptr noundef %88, i32 noundef 0, i32 noundef %3) #18
  br label %1927

140:                                              ; preds = %136
  %141 = icmp eq i32 %29, 7
  br i1 %141, label %147, label %142

142:                                              ; preds = %140
  %143 = icmp eq i32 %29, 5
  %144 = add nsw i32 %25, -45
  %145 = icmp ult i32 %144, 2
  %146 = or i1 %143, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %142, %140
  %148 = tail call fastcc ptr @expand_expr(ptr noundef %82, ptr noundef %88, i32 noundef 0, i32 noundef %3) #18
  %149 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %150 = tail call fastcc ptr @expand_expr(ptr noundef %81, ptr noundef %149, i32 noundef 0, i32 noundef %3) #18
  %151 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  br label %1927

152:                                              ; preds = %142
  %153 = icmp eq i32 %25, 42
  br i1 %153, label %154, label %161

154:                                              ; preds = %152
  %155 = tail call fastcc ptr @expand_expr(ptr noundef %82, ptr noundef %88, i32 noundef 0, i32 noundef %3) #18
  %156 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %157 = tail call fastcc ptr @expand_expr(ptr noundef %81, ptr noundef %156, i32 noundef 0, i32 noundef %3) #18
  %158 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %159 = tail call fastcc ptr @expand_expr(ptr noundef %80, ptr noundef %158, i32 noundef 0, i32 noundef %3) #18
  %160 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  br label %1927

161:                                              ; preds = %98, %102, %152
  %162 = phi i16 [ %91, %98 ], [ %91, %102 ], [ %137, %152 ]
  %163 = phi i1 [ false, %98 ], [ %110, %102 ], [ false, %152 ]
  %164 = phi i1 [ false, %98 ], [ false, %102 ], [ true, %152 ]
  %165 = phi i32 [ 0, %98 ], [ 0, %102 ], [ 1, %152 ]
  %166 = phi ptr [ %1, %98 ], [ %1, %102 ], [ null, %152 ]
  %167 = icmp eq i32 %3, 1
  %168 = and i1 %167, %163
  %169 = select i1 %168, ptr null, ptr %166
  %170 = tail call fastcc ptr @get_subtarget(ptr noundef %169) #18
  switch i16 %162, label %1925 [
    i16 30, label %171
    i16 141, label %184
    i16 34, label %201
    i16 32, label %201
    i16 29, label %243
    i16 36, label %243
    i16 23, label %374
    i16 27, label %380
    i16 33, label %402
    i16 24, label %406
    i16 25, label %423
    i16 26, label %440
    i16 28, label %479
    i16 120, label %500
    i16 51, label %541
    i16 49, label %565
    i16 48, label %565
    i16 47, label %565
    i16 152, label %620
    i16 45, label %630
    i16 41, label %787
    i16 42, label %870
    i16 46, label %870
    i16 50, label %1388
    i16 59, label %1392
    i16 118, label %1438
    i16 91, label %1690
    i16 92, label %1690
    i16 147, label %1732
    i16 56, label %1751
    i16 57, label %1811
    i16 53, label %1813
    i16 121, label %1873
    i16 43, label %1875
    i16 44, label %1878
    i16 135, label %1881
    i16 133, label %1881
    i16 134, label %1881
    i16 138, label %1881
    i16 140, label %1881
    i16 130, label %1882
    i16 142, label %1882
    i16 143, label %1882
    i16 131, label %1882
    i16 60, label %1883
    i16 61, label %1883
    i16 55, label %1883
    i16 139, label %1883
    i16 129, label %1883
    i16 58, label %1883
    i16 54, label %1883
    i16 124, label %1883
    i16 52, label %1883
    i16 126, label %1883
    i16 125, label %1883
    i16 128, label %1883
    i16 127, label %1883
    i16 137, label %1883
    i16 136, label %1883
    i16 122, label %1884
    i16 150, label %1885
    i16 151, label %1887
    i16 167, label %1896
    i16 119, label %1902
  ]

171:                                              ; preds = %161
  %172 = tail call ptr @decl_function_context(ptr noundef nonnull %0) #17
  %173 = tail call ptr @label_rtx(ptr noundef nonnull %0) #17
  %174 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %173) #17
  %175 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %176 = icmp ne ptr %172, %175
  %177 = icmp ne ptr %172, null
  %178 = and i1 %177, %176
  br i1 %178, label %179, label %182

179:                                              ; preds = %171
  %180 = load i32, ptr %174, align 8
  %181 = or i32 %180, 134217728
  store i32 %181, ptr %174, align 8
  br label %182

182:                                              ; preds = %179, %171
  %183 = tail call ptr @gen_rtx_MEM(i32 noundef 14, ptr noundef %174) #17
  br label %1927

184:                                              ; preds = %161
  %185 = load i32, ptr @currently_expanding_to_rtl, align 4, !tbaa !22
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !9
  %190 = tail call ptr @expand_expr_real_1(ptr noundef %189, ptr noundef %169, i32 noundef %2, i32 noundef %3, ptr noundef null) #18
  br label %1927

191:                                              ; preds = %184
  %192 = tail call fastcc ptr @get_gimple_for_ssa_name(ptr noundef nonnull %0) #18
  %193 = icmp eq ptr %192, null
  br i1 %193, label %197, label %194

194:                                              ; preds = %191
  %195 = tail call ptr @gimple_assign_rhs_to_tree(ptr noundef nonnull %192) #17
  %196 = tail call ptr @expand_expr_real(ptr noundef %195, ptr noundef %169, i32 noundef %2, i32 noundef %3, ptr noundef null) #18
  br label %1927

197:                                              ; preds = %191
  %198 = tail call fastcc ptr @get_rtx_for_ssa_name(ptr noundef nonnull %0) #18
  %199 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !9
  br label %249

201:                                              ; preds = %161, %161
  %202 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !9
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %227

205:                                              ; preds = %201
  %206 = load ptr, ptr %37, align 8, !tbaa !9
  %207 = load i64, ptr %206, align 8
  %208 = and i64 %207, 65535
  %209 = icmp eq i64 %208, 15
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.tree_common, ptr %206, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !9
  br label %213

213:                                              ; preds = %205, %210
  %214 = phi ptr [ %212, %210 ], [ %206, %205 ]
  %215 = getelementptr inbounds %struct.tree_type, ptr %214, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !9
  %217 = icmp eq ptr %216, null
  br i1 %217, label %227, label %218

218:                                              ; preds = %213
  %219 = and i64 %57, 67108864
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %223 = load i64, ptr %222, align 8
  %224 = and i64 %223, 33554432
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %221, %218
  tail call void @layout_decl(ptr noundef nonnull %0, i32 noundef 0) #17
  br label %227

227:                                              ; preds = %226, %221, %213, %201
  %228 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !151
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %227
  %231 = load i64, ptr %0, align 8
  %232 = and i64 %231, 65535
  %233 = icmp eq i64 %232, 32
  br i1 %233, label %234, label %243

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %236 = load i32, ptr %235, align 8
  %237 = and i32 %236, 49152
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %243, label %239

239:                                              ; preds = %234
  %240 = tail call fastcc ptr @emutls_var_address(ptr noundef nonnull %0) #18
  %241 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %36, ptr noundef %240) #17
  %242 = tail call ptr @expand_expr_real_1(ptr noundef %241, ptr noundef %169, i32 noundef %2, i32 noundef %3, ptr noundef null) #18
  br label %1927

243:                                              ; preds = %227, %230, %234, %161, %161
  %244 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !9
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %254

247:                                              ; preds = %243
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #17
  %248 = load ptr, ptr %244, align 8, !tbaa !9
  br label %249

249:                                              ; preds = %247, %197
  %250 = phi ptr [ %198, %197 ], [ %248, %247 ]
  %251 = phi ptr [ %200, %197 ], [ %0, %247 ]
  %252 = icmp eq ptr %250, null
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8451, ptr noundef nonnull @.str.1) #17
  br label %254

254:                                              ; preds = %243, %249, %253
  %255 = phi ptr [ %251, %249 ], [ %251, %253 ], [ %0, %243 ]
  %256 = phi ptr [ %250, %249 ], [ null, %253 ], [ %245, %243 ]
  %257 = tail call ptr @copy_rtx(ptr noundef %256) #17
  %258 = load i64, ptr %255, align 8
  %259 = and i64 %258, 16777216
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %254
  tail call void @assemble_external(ptr noundef nonnull %255) #17
  %262 = load i64, ptr %255, align 8
  %263 = or i64 %262, 16777216
  store i64 %263, ptr %255, align 8
  br label %264

264:                                              ; preds = %261, %254
  %265 = tail call ptr @decl_function_context(ptr noundef nonnull %255) #17
  %266 = icmp eq ptr %265, null
  %267 = load ptr, ptr @current_function_decl, align 8
  %268 = icmp eq ptr %265, %267
  %269 = select i1 %266, i1 true, i1 %268
  br i1 %269, label %278, label %270

270:                                              ; preds = %264
  %271 = load i64, ptr %255, align 8
  %272 = and i64 %271, 67108864
  %273 = icmp ne i64 %272, 0
  %274 = and i64 %271, 65535
  %275 = icmp eq i64 %274, 29
  %276 = or i1 %273, %275
  br i1 %276, label %278, label %277

277:                                              ; preds = %270
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8473, ptr noundef nonnull @.str.1) #17
  br label %278

278:                                              ; preds = %264, %270, %277
  %279 = load i32, ptr %257, align 8
  %280 = and i32 %279, 65535
  %281 = icmp eq i32 %280, 43
  br i1 %281, label %282, label %337

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.rtx_def, ptr %257, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !9
  %285 = load i32, ptr %284, align 8
  %286 = and i32 %285, 65535
  %287 = icmp eq i32 %286, 37
  br i1 %287, label %288, label %290

288:                                              ; preds = %282
  %289 = tail call ptr @validize_mem(ptr noundef nonnull %257) #17
  br label %320

290:                                              ; preds = %282
  %291 = icmp eq i32 %3, 4
  br i1 %291, label %337, label %292

292:                                              ; preds = %290
  %293 = icmp eq ptr %4, null
  br i1 %293, label %295, label %294

294:                                              ; preds = %292
  store ptr %257, ptr %4, align 8, !tbaa !5
  br label %295

295:                                              ; preds = %294, %292
  %296 = tail call ptr @use_anchored_address(ptr noundef nonnull %257) #17
  %297 = add i32 %3, -4
  %298 = icmp ult i32 %297, -2
  br i1 %298, label %299, label %337

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.tree_decl_common, ptr %255, i64 0, i32 2
  %301 = load i64, ptr %300, align 8
  %302 = trunc i64 %301 to i32
  %303 = and i32 %302, 255
  %304 = getelementptr inbounds %struct.rtx_def, ptr %296, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !9
  %306 = getelementptr inbounds %struct.rtx_def, ptr %296, i64 0, i32 1, i32 0, i32 0, i64 1
  %307 = load ptr, ptr %306, align 8, !tbaa !9
  %308 = icmp eq ptr %307, null
  br i1 %308, label %312, label %309

309:                                              ; preds = %299
  %310 = getelementptr inbounds %struct.mem_attrs, ptr %307, i64 0, i32 5
  %311 = load i8, ptr %310, align 8, !tbaa !29
  br label %312

312:                                              ; preds = %299, %309
  %313 = phi i8 [ %311, %309 ], [ 0, %299 ]
  %314 = tail call i32 @memory_address_addr_space_p(i32 noundef %303, ptr noundef %305, i8 noundef zeroext %313) #17
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %337

316:                                              ; preds = %312
  %317 = load ptr, ptr %304, align 8, !tbaa !9
  %318 = tail call ptr @copy_rtx(ptr noundef %317) #17
  %319 = tail call ptr @replace_equiv_address(ptr noundef nonnull %296, ptr noundef %318) #17
  br label %320

320:                                              ; preds = %316, %288
  %321 = phi ptr [ %257, %288 ], [ %296, %316 ]
  %322 = phi ptr [ %289, %288 ], [ %319, %316 ]
  %323 = icmp eq ptr %322, null
  br i1 %323, label %337, label %324

324:                                              ; preds = %320
  %325 = load i32, ptr %322, align 8
  %326 = and i32 %325, 65535
  %327 = icmp eq i32 %326, 43
  br i1 %327, label %328, label %1927

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.rtx_def, ptr %322, i64 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !9
  %331 = load i32, ptr %330, align 8
  %332 = and i32 %331, 65535
  %333 = icmp eq i32 %332, 37
  br i1 %333, label %334, label %1927

334:                                              ; preds = %328
  %335 = getelementptr inbounds %struct.tree_decl_common, ptr %255, i64 0, i32 3
  %336 = load i32, ptr %335, align 8, !tbaa !9
  tail call void @mark_reg_pointer(ptr noundef nonnull %330, i32 noundef %336) #17
  br label %1927

337:                                              ; preds = %278, %290, %295, %312, %320
  %338 = phi ptr [ %321, %320 ], [ %257, %290 ], [ %296, %295 ], [ %296, %312 ], [ %257, %278 ]
  %339 = load i32, ptr %338, align 8
  %340 = and i32 %339, 65535
  %341 = icmp eq i32 %340, 37
  br i1 %341, label %342, label %1927

342:                                              ; preds = %337
  %343 = lshr i32 %339, 16
  %344 = getelementptr inbounds %struct.tree_decl_common, ptr %255, i64 0, i32 2
  %345 = load i64, ptr %344, align 8
  %346 = trunc i64 %345 to i32
  %347 = xor i32 %343, %346
  %348 = and i32 %347, 255
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %1927, label %350

350:                                              ; preds = %342
  %351 = call i32 @promote_decl_mode(ptr noundef nonnull %255, ptr noundef nonnull %8) #17
  %352 = load i32, ptr %338, align 8
  %353 = lshr i32 %352, 16
  %354 = and i32 %353, 255
  %355 = icmp eq i32 %354, %351
  br i1 %355, label %357, label %356

356:                                              ; preds = %350
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8521, ptr noundef nonnull @.str.1) #17
  br label %357

357:                                              ; preds = %350, %356
  %358 = call ptr @gen_lowpart_SUBREG(i32 noundef %59, ptr noundef nonnull %338) #17
  %359 = load i32, ptr %358, align 8
  %360 = or i32 %359, 268435456
  store i32 %360, ptr %358, align 8
  %361 = load i32, ptr %8, align 4, !tbaa !22
  %362 = icmp slt i32 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %357
  %364 = or i32 %359, 402653184
  br label %372

365:                                              ; preds = %357
  %366 = and i32 %360, -134217729
  store i32 %366, ptr %358, align 8
  %367 = load i32, ptr %8, align 4, !tbaa !22
  %368 = shl i32 %367, 26
  %369 = and i32 %368, 67108864
  %370 = and i32 %360, -201326593
  %371 = or disjoint i32 %369, %370
  br label %372

372:                                              ; preds = %365, %363
  %373 = phi i32 [ %371, %365 ], [ %364, %363 ]
  store i32 %373, ptr %358, align 8
  br label %1927

374:                                              ; preds = %161
  %375 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %376 = load i64, ptr %375, align 8, !tbaa !9
  %377 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %378 = load i64, ptr %377, align 8, !tbaa !9
  %379 = tail call ptr @immed_double_const(i64 noundef %376, i64 noundef %378, i32 noundef %59) #17
  br label %1927

380:                                              ; preds = %161
  %381 = zext i32 %59 to i64
  %382 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %381
  %383 = load i8, ptr %382, align 1, !tbaa !9
  switch i8 %383, label %393 [
    i8 12, label %384
    i8 17, label %384
    i8 13, label %384
    i8 14, label %384
    i8 15, label %384
    i8 16, label %384
    i8 2, label %386
  ]

384:                                              ; preds = %380, %380, %380, %380, %380, %380
  %385 = tail call fastcc ptr @const_vector_from_tree(ptr noundef nonnull %0) #18
  br label %1927

386:                                              ; preds = %380
  %387 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !123
  %388 = tail call ptr %387(i32 noundef %59, i32 noundef 1) #17
  %389 = icmp eq ptr %388, null
  br i1 %389, label %393, label %390

390:                                              ; preds = %386
  %391 = tail call ptr @fold_unary_loc(i32 noundef %36, i32 noundef 118, ptr noundef nonnull %388, ptr noundef nonnull %0) #17
  %392 = icmp eq ptr %391, null
  br i1 %392, label %393, label %397

393:                                              ; preds = %386, %380, %390
  %394 = getelementptr inbounds %struct.tree_vector, ptr %0, i64 0, i32 1
  %395 = load ptr, ptr %394, align 8, !tbaa !9
  %396 = tail call ptr @build_constructor_from_list(ptr noundef nonnull %38, ptr noundef %395) #17
  br label %397

397:                                              ; preds = %393, %390
  %398 = phi ptr [ %391, %390 ], [ %396, %393 ]
  %399 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %400 = select i1 %164, ptr %399, ptr %169
  %401 = tail call fastcc ptr @expand_expr(ptr noundef %398, ptr noundef %400, i32 noundef %2, i32 noundef %3) #18
  br label %1927

402:                                              ; preds = %161
  %403 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %404 = load ptr, ptr %403, align 8, !tbaa !9
  %405 = tail call fastcc ptr @expand_expr(ptr noundef %404, ptr noundef %169, i32 noundef 0, i32 noundef %3) #18
  br label %1927

406:                                              ; preds = %161
  %407 = getelementptr inbounds %struct.tree_real_cst, ptr %0, i64 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !9
  %409 = load ptr, ptr %37, align 8, !tbaa !9
  %410 = load i64, ptr %409, align 8
  %411 = and i64 %410, 65535
  %412 = icmp eq i64 %411, 14
  br i1 %412, label %413, label %415

413:                                              ; preds = %406
  %414 = tail call i32 @vector_type_mode(ptr noundef nonnull %409) #17
  br label %420

415:                                              ; preds = %406
  %416 = getelementptr inbounds %struct.tree_type, ptr %409, i64 0, i32 6
  %417 = load i32, ptr %416, align 4
  %418 = lshr i32 %417, 16
  %419 = and i32 %418, 255
  br label %420

420:                                              ; preds = %415, %413
  %421 = phi i32 [ %414, %413 ], [ %419, %415 ]
  %422 = tail call ptr @const_double_from_real_value(ptr noundef byval(%struct.real_value) align 8 %408, i32 noundef %421) #17
  br label %1927

423:                                              ; preds = %161
  %424 = getelementptr inbounds %struct.tree_fixed_cst, ptr %0, i64 0, i32 1
  %425 = load ptr, ptr %424, align 8, !tbaa !9
  %426 = load ptr, ptr %37, align 8, !tbaa !9
  %427 = load i64, ptr %426, align 8
  %428 = and i64 %427, 65535
  %429 = icmp eq i64 %428, 14
  br i1 %429, label %430, label %432

430:                                              ; preds = %423
  %431 = tail call i32 @vector_type_mode(ptr noundef nonnull %426) #17
  br label %437

432:                                              ; preds = %423
  %433 = getelementptr inbounds %struct.tree_type, ptr %426, i64 0, i32 6
  %434 = load i32, ptr %433, align 4
  %435 = lshr i32 %434, 16
  %436 = and i32 %435, 255
  br label %437

437:                                              ; preds = %432, %430
  %438 = phi i32 [ %431, %430 ], [ %436, %432 ]
  %439 = tail call ptr @const_fixed_from_fixed_value(ptr noundef byval(%struct.fixed_value) align 8 %425, i32 noundef %438) #17
  br label %1927

440:                                              ; preds = %161
  %441 = icmp eq ptr %169, null
  br i1 %441, label %479, label %442

442:                                              ; preds = %440
  %443 = load i32, ptr %169, align 8
  %444 = and i32 %443, 65535
  %445 = icmp eq i32 %444, 41
  br i1 %445, label %446, label %479

446:                                              ; preds = %442
  %447 = load ptr, ptr %37, align 8, !tbaa !9
  %448 = getelementptr inbounds %struct.tree_common, ptr %447, i64 0, i32 2
  %449 = load ptr, ptr %448, align 8, !tbaa !9
  %450 = load i64, ptr %449, align 8
  %451 = and i64 %450, 65535
  %452 = icmp eq i64 %451, 14
  br i1 %452, label %453, label %455

453:                                              ; preds = %446
  %454 = tail call i32 @vector_type_mode(ptr noundef nonnull %449) #17
  br label %460

455:                                              ; preds = %446
  %456 = getelementptr inbounds %struct.tree_type, ptr %449, i64 0, i32 6
  %457 = load i32, ptr %456, align 4
  %458 = lshr i32 %457, 16
  %459 = and i32 %458, 255
  br label %460

460:                                              ; preds = %455, %453
  %461 = phi i32 [ %454, %453 ], [ %459, %455 ]
  %462 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1
  %463 = load ptr, ptr %462, align 8, !tbaa !9
  %464 = getelementptr inbounds %struct.rtx_def, ptr %169, i64 0, i32 1, i32 0, i32 0, i64 1
  %465 = load ptr, ptr %464, align 8, !tbaa !9
  %466 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 1
  %467 = load ptr, ptr %466, align 8, !tbaa !9
  %468 = tail call fastcc ptr @expand_expr(ptr noundef %467, ptr noundef %463, i32 noundef %461, i32 noundef 0) #18
  %469 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 2
  %470 = load ptr, ptr %469, align 8, !tbaa !9
  %471 = tail call fastcc ptr @expand_expr(ptr noundef %470, ptr noundef %465, i32 noundef %461, i32 noundef 0) #18
  %472 = icmp eq ptr %468, %463
  br i1 %472, label %475, label %473

473:                                              ; preds = %460
  %474 = tail call ptr @emit_move_insn(ptr noundef %463, ptr noundef %468) #18
  br label %475

475:                                              ; preds = %473, %460
  %476 = icmp eq ptr %471, %465
  br i1 %476, label %1927, label %477

477:                                              ; preds = %475
  %478 = tail call ptr @emit_move_insn(ptr noundef %465, ptr noundef %471) #18
  br label %1927

479:                                              ; preds = %440, %442, %161
  %480 = tail call fastcc ptr @expand_expr_constant(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %3) #18
  %481 = add i32 %3, -5
  %482 = icmp ult i32 %481, -3
  br i1 %482, label %483, label %1927

483:                                              ; preds = %479
  %484 = getelementptr inbounds %struct.rtx_def, ptr %480, i64 0, i32 1
  %485 = load ptr, ptr %484, align 8, !tbaa !9
  %486 = getelementptr inbounds %struct.rtx_def, ptr %480, i64 0, i32 1, i32 0, i32 0, i64 1
  %487 = load ptr, ptr %486, align 8, !tbaa !9
  %488 = icmp eq ptr %487, null
  br i1 %488, label %492, label %489

489:                                              ; preds = %483
  %490 = getelementptr inbounds %struct.mem_attrs, ptr %487, i64 0, i32 5
  %491 = load i8, ptr %490, align 8, !tbaa !29
  br label %492

492:                                              ; preds = %483, %489
  %493 = phi i8 [ %491, %489 ], [ 0, %483 ]
  %494 = tail call i32 @memory_address_addr_space_p(i32 noundef %59, ptr noundef %485, i8 noundef zeroext %493) #17
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %1927

496:                                              ; preds = %492
  %497 = load ptr, ptr %484, align 8, !tbaa !9
  %498 = tail call ptr @copy_rtx(ptr noundef %497) #17
  %499 = tail call ptr @replace_equiv_address(ptr noundef nonnull %480, ptr noundef %498) #17
  br label %1927

500:                                              ; preds = %161
  %501 = tail call ptr @expand_expr_real_1(ptr noundef %82, ptr noundef %169, i32 noundef %2, i32 noundef %3, ptr noundef %4) #18
  %502 = load i64, ptr %0, align 8
  %503 = and i64 %502, 134217728
  %504 = icmp eq i64 %503, 0
  br i1 %504, label %505, label %1927

505:                                              ; preds = %500
  %506 = load i32, ptr %501, align 8
  %507 = and i32 %506, 16711680
  %508 = icmp eq i32 %507, 65536
  br i1 %508, label %509, label %511

509:                                              ; preds = %505
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8631, ptr noundef nonnull @.str.1) #17
  %510 = load i64, ptr %0, align 8
  br label %511

511:                                              ; preds = %505, %509
  %512 = phi i64 [ %502, %505 ], [ %510, %509 ]
  %513 = and i64 %512, 65535
  %514 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %513
  %515 = load i32, ptr %514, align 4, !tbaa !22
  %516 = add i32 %515, -4
  %517 = icmp ult i32 %516, 7
  br i1 %517, label %518, label %521

518:                                              ; preds = %511
  %519 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %520 = load i32, ptr %519, align 8, !tbaa !9
  br label %521

521:                                              ; preds = %511, %518
  %522 = phi i32 [ %520, %518 ], [ 0, %511 ]
  %523 = load ptr, ptr %37, align 8, !tbaa !9
  %524 = tail call ptr @build_decl_stat(i32 noundef %522, i32 noundef 32, ptr noundef null, ptr noundef %523) #17
  %525 = getelementptr inbounds %struct.tree_decl_common, ptr %524, i64 0, i32 2
  %526 = load i64, ptr %525, align 8
  %527 = or i64 %526, 5120
  store i64 %527, ptr %525, align 8
  %528 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  store ptr %524, ptr %528, align 8, !tbaa !9
  %529 = load i64, ptr %0, align 8
  %530 = or i64 %529, 134217728
  store i64 %530, ptr %0, align 8
  %531 = load i32, ptr %501, align 8
  %532 = and i32 %531, 65535
  %533 = zext nneg i32 %532 to i64
  %534 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %533
  %535 = load i32, ptr %534, align 4, !tbaa !22
  %536 = icmp eq i32 %535, 9
  br i1 %536, label %539, label %537

537:                                              ; preds = %521
  %538 = tail call ptr @copy_to_reg(ptr noundef nonnull %501) #17
  br label %539

539:                                              ; preds = %537, %521
  %540 = phi ptr [ %501, %521 ], [ %538, %537 ]
  tail call void @set_decl_rtl(ptr noundef nonnull %524, ptr noundef %540) #17
  br label %1927

541:                                              ; preds = %161
  br i1 %164, label %542, label %563

542:                                              ; preds = %541
  %543 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %544 = load ptr, ptr %543, align 8, !tbaa !9
  %545 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %544) #18
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %1927, label %547

547:                                              ; preds = %542, %547
  %548 = phi ptr [ %557, %547 ], [ %544, %542 ]
  %549 = phi i64 [ %556, %547 ], [ 0, %542 ]
  %550 = trunc i64 %549 to i32
  %551 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %548, i32 noundef %550) #18
  %552 = getelementptr inbounds %struct.constructor_elt_d, ptr %551, i64 0, i32 1
  %553 = load ptr, ptr %552, align 8, !tbaa !133
  %554 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %555 = tail call fastcc ptr @expand_expr(ptr noundef %553, ptr noundef %554, i32 noundef 0, i32 noundef 0) #18
  %556 = add nuw nsw i64 %549, 1
  %557 = load ptr, ptr %543, align 8, !tbaa !9
  %558 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %557) #18
  %559 = zext i32 %558 to i64
  %560 = icmp ult i64 %556, %559
  br i1 %560, label %547, label %561, !llvm.loop !152

561:                                              ; preds = %547
  %562 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  br label %1927

563:                                              ; preds = %541
  %564 = tail call fastcc ptr @expand_constructor(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %3, i8 noundef zeroext 0) #18
  br label %1927

565:                                              ; preds = %161, %161, %161
  %566 = icmp eq i32 %3, 5
  br i1 %566, label %572, label %567

567:                                              ; preds = %565
  %568 = tail call ptr @fold_read_from_constant_string(ptr noundef nonnull %0) #17
  %569 = icmp eq ptr %568, null
  br i1 %569, label %572, label %570

570:                                              ; preds = %567
  %571 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %568, ptr noundef %169, i32 noundef %2, i32 noundef %3) #18
  br label %1927

572:                                              ; preds = %567, %565
  %573 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %574 = load ptr, ptr %573, align 8, !tbaa !9
  %575 = load i64, ptr %574, align 8
  %576 = trunc i64 %575 to i16
  switch i16 %576, label %585 [
    i16 10, label %577
    i16 12, label %577
  ]

577:                                              ; preds = %572, %572
  %578 = getelementptr inbounds %struct.tree_common, ptr %574, i64 0, i32 2
  %579 = load ptr, ptr %578, align 8, !tbaa !9
  %580 = load i64, ptr %579, align 8
  %581 = lshr i64 %580, 56
  %582 = trunc i64 %581 to i8
  %583 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !35
  %584 = tail call i32 %583(i8 noundef zeroext %582) #17
  br label %585

585:                                              ; preds = %572, %577
  %586 = phi i32 [ %584, %577 ], [ 16, %572 ]
  %587 = phi i8 [ %582, %577 ], [ 0, %572 ]
  %588 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %82, ptr noundef null, i32 noundef 0, i32 noundef 2) #18
  %589 = tail call ptr @memory_address_addr_space(i32 noundef %59, ptr noundef %588, i8 noundef zeroext %587) #17
  %590 = icmp eq i32 %25, 48
  br i1 %590, label %591, label %600

591:                                              ; preds = %585
  %592 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 7
  %593 = load i32, ptr %592, align 8, !tbaa !9
  %594 = lshr i32 %593, 3
  %595 = sub nsw i32 0, %594
  %596 = sext i32 %595 to i64
  %597 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %596) #17
  %598 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %586, ptr noundef %589, ptr noundef %597) #17
  %599 = tail call ptr @memory_address_addr_space(i32 noundef %59, ptr noundef %598, i8 noundef zeroext %587) #17
  br label %600

600:                                              ; preds = %591, %585
  %601 = phi ptr [ %599, %591 ], [ %589, %585 ]
  %602 = tail call ptr @gen_rtx_MEM(i32 noundef %59, ptr noundef %601) #17
  tail call void @set_mem_attributes(ptr noundef %602, ptr noundef nonnull %0, i32 noundef 0) #17
  tail call void @set_mem_addr_space(ptr noundef %602, i8 noundef zeroext %587) #17
  %603 = icmp eq i32 %25, 49
  br i1 %603, label %604, label %1927

604:                                              ; preds = %600
  %605 = icmp ult i32 %3, 2
  br i1 %605, label %607, label %606

606:                                              ; preds = %604
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8712, ptr noundef nonnull @.str.1) #17
  br label %607

607:                                              ; preds = %604, %606
  %608 = sext i32 %59 to i64
  %609 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 %608
  %610 = load i32, ptr %609, align 4, !tbaa !25
  %611 = icmp eq i32 %610, 2956
  br i1 %611, label %612, label %613

612:                                              ; preds = %607
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8716, ptr noundef nonnull @.str.1) #17
  br label %613

613:                                              ; preds = %607, %612
  %614 = tail call ptr @gen_reg_rtx(i32 noundef %59) #17
  %615 = sext i32 %610 to i64
  %616 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %615, i32 2
  %617 = load ptr, ptr %616, align 8, !tbaa !64
  %618 = tail call ptr (ptr, ...) %617(ptr noundef %614, ptr noundef %602) #17
  %619 = tail call ptr @emit_insn(ptr noundef %618) #17
  br label %1927

620:                                              ; preds = %161
  %621 = load ptr, ptr %37, align 8, !tbaa !9
  %622 = load i64, ptr %621, align 8
  %623 = lshr i64 %622, 56
  %624 = trunc i64 %623 to i8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #16
  call void @get_address_description(ptr noundef nonnull %0, ptr noundef nonnull %10) #17
  %625 = call ptr @addr_for_mem_ref(ptr noundef nonnull %10, i8 noundef zeroext %624, i8 noundef zeroext 1) #17
  %626 = call ptr @memory_address_addr_space(i32 noundef %59, ptr noundef %625, i8 noundef zeroext %624) #17
  %627 = call ptr @gen_rtx_MEM(i32 noundef %59, ptr noundef %626) #17
  %628 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 2
  %629 = load ptr, ptr %628, align 8, !tbaa !9
  call void @set_mem_attributes(ptr noundef %627, ptr noundef %629, i32 noundef 0) #17
  call void @set_mem_addr_space(ptr noundef %627, i8 noundef zeroext %624) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #16
  br label %1927

630:                                              ; preds = %161
  switch i32 %3, label %631 [
    i32 6, label %674
    i32 4, label %674
    i32 3, label %674
  ]

631:                                              ; preds = %630
  %632 = tail call ptr @fold_read_from_constant_string(ptr noundef nonnull %0) #17
  %633 = icmp eq ptr %632, null
  br i1 %633, label %636, label %634

634:                                              ; preds = %631
  %635 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %632, ptr noundef %169, i32 noundef %2, i32 noundef %3) #18
  br label %1927

636:                                              ; preds = %631
  %637 = icmp eq i32 %3, 6
  br i1 %637, label %674, label %638

638:                                              ; preds = %636
  %639 = load i64, ptr %82, align 8
  %640 = and i64 %639, 131071
  %641 = icmp eq i64 %640, 51
  br i1 %641, label %642, label %674

642:                                              ; preds = %638
  %643 = load i64, ptr %81, align 8
  %644 = and i64 %643, 65535
  %645 = icmp eq i64 %644, 23
  br i1 %645, label %646, label %674

646:                                              ; preds = %642
  %647 = getelementptr inbounds %struct.tree_constructor, ptr %82, i64 0, i32 1
  %648 = load ptr, ptr %647, align 8, !tbaa !9
  %649 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %648) #18
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %870, label %657

651:                                              ; preds = %657
  %652 = add nuw nsw i64 %659, 1
  %653 = load ptr, ptr %647, align 8, !tbaa !9
  %654 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %653) #18
  %655 = zext i32 %654 to i64
  %656 = icmp ult i64 %652, %655
  br i1 %656, label %657, label %870, !llvm.loop !153

657:                                              ; preds = %646, %651
  %658 = phi ptr [ %653, %651 ], [ %648, %646 ]
  %659 = phi i64 [ %652, %651 ], [ 0, %646 ]
  %660 = trunc i64 %659 to i32
  %661 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %658, i32 noundef %660) #18
  %662 = getelementptr inbounds %struct.constructor_elt_d, ptr %661, i64 0, i32 1
  %663 = load ptr, ptr %662, align 8, !tbaa !133
  %664 = load ptr, ptr %661, align 8, !tbaa !135
  %665 = tail call i32 @tree_int_cst_equal(ptr noundef %664, ptr noundef nonnull %81) #17
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %651, label %667

667:                                              ; preds = %657
  %668 = load i64, ptr %663, align 8
  %669 = and i64 %668, 65536
  %670 = icmp eq i64 %669, 0
  br i1 %670, label %671, label %870

671:                                              ; preds = %667
  %672 = tail call ptr @fold(ptr noundef nonnull %663) #17
  %673 = tail call fastcc ptr @expand_expr(ptr noundef %672, ptr noundef %169, i32 noundef %2, i32 noundef %3) #18
  br label %1927

674:                                              ; preds = %636, %630, %630, %630, %642, %638
  %675 = load i32, ptr @optimize, align 4, !tbaa !22
  %676 = freeze i32 %675
  %677 = icmp sgt i32 %676, 0
  br i1 %677, label %678, label %870

678:                                              ; preds = %674
  switch i32 %3, label %679 [
    i32 6, label %870
    i32 4, label %870
    i32 3, label %870
  ]

679:                                              ; preds = %678
  %680 = load i64, ptr %82, align 8
  %681 = and i64 %680, 1179647
  %682 = icmp eq i64 %681, 1048608
  br i1 %682, label %683, label %870

683:                                              ; preds = %679
  %684 = getelementptr inbounds %struct.tree_decl_common, ptr %82, i64 0, i32 5
  %685 = load ptr, ptr %684, align 8, !tbaa !9
  %686 = icmp eq ptr %685, null
  br i1 %686, label %870, label %687

687:                                              ; preds = %683
  %688 = load i64, ptr %685, align 8
  %689 = and i64 %688, 65535
  %690 = icmp eq i64 %689, 0
  br i1 %690, label %870, label %691

691:                                              ; preds = %687
  %692 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !154
  %693 = tail call zeroext i8 %692(ptr noundef nonnull %82) #17
  %694 = icmp eq i8 %693, 0
  br i1 %694, label %870, label %695

695:                                              ; preds = %691
  %696 = load i64, ptr %81, align 8
  %697 = and i64 %696, 65535
  %698 = icmp eq i64 %697, 23
  br i1 %698, label %699, label %870

699:                                              ; preds = %695
  %700 = load ptr, ptr %684, align 8, !tbaa !9
  %701 = load i64, ptr %700, align 8
  %702 = trunc i64 %701 to i16
  switch i16 %702, label %870 [
    i16 51, label %703
    i16 28, label %737
  ]

703:                                              ; preds = %699
  %704 = getelementptr inbounds %struct.tree_constructor, ptr %700, i64 0, i32 1
  %705 = load ptr, ptr %704, align 8, !tbaa !9
  %706 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %705) #18
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %870, label %714

708:                                              ; preds = %714
  %709 = add nuw nsw i64 %716, 1
  %710 = load ptr, ptr %704, align 8, !tbaa !9
  %711 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %710) #18
  %712 = zext i32 %711 to i64
  %713 = icmp ult i64 %709, %712
  br i1 %713, label %714, label %870, !llvm.loop !155

714:                                              ; preds = %703, %708
  %715 = phi ptr [ %710, %708 ], [ %705, %703 ]
  %716 = phi i64 [ %709, %708 ], [ 0, %703 ]
  %717 = trunc i64 %716 to i32
  %718 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %715, i32 noundef %717) #18
  %719 = getelementptr inbounds %struct.constructor_elt_d, ptr %718, i64 0, i32 1
  %720 = load ptr, ptr %719, align 8, !tbaa !133
  %721 = load ptr, ptr %718, align 8, !tbaa !135
  %722 = tail call i32 @tree_int_cst_equal(ptr noundef %721, ptr noundef nonnull %81) #17
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %708, label %724

724:                                              ; preds = %714
  %725 = load i64, ptr %720, align 8
  %726 = and i64 %725, 65536
  %727 = icmp eq i64 %726, 0
  br i1 %727, label %728, label %870

728:                                              ; preds = %724
  %729 = and i64 %725, 65535
  %730 = icmp eq i64 %729, 51
  br i1 %730, label %731, label %734

731:                                              ; preds = %728
  %732 = tail call fastcc ptr @expand_constructor(ptr noundef nonnull %720, ptr noundef %169, i32 noundef %3, i8 noundef zeroext 1) #18
  %733 = icmp eq ptr %732, null
  br i1 %733, label %870, label %734

734:                                              ; preds = %728, %731
  %735 = tail call ptr @fold(ptr noundef nonnull %720) #17
  %736 = tail call fastcc ptr @expand_expr(ptr noundef %735, ptr noundef %169, i32 noundef %2, i32 noundef %3) #18
  br label %1927

737:                                              ; preds = %699
  %738 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %0) #18
  %739 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %740 = tail call ptr @fold_convert_loc(i32 noundef %36, ptr noundef %739, ptr noundef nonnull %81) #17
  %741 = tail call i32 @integer_zerop(ptr noundef %738) #17
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %743, label %747

743:                                              ; preds = %737
  %744 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %745 = tail call ptr @fold_convert_loc(i32 noundef %36, ptr noundef %744, ptr noundef %738) #17
  %746 = tail call ptr @size_diffop_loc(i32 noundef %36, ptr noundef %740, ptr noundef %745) #17
  br label %747

747:                                              ; preds = %743, %737
  %748 = phi ptr [ %740, %737 ], [ %746, %743 ]
  %749 = getelementptr inbounds %struct.tree_string, ptr %700, i64 0, i32 1
  %750 = load i32, ptr %749, align 8, !tbaa !9
  %751 = sext i32 %750 to i64
  %752 = tail call i32 @compare_tree_int(ptr noundef %748, i64 noundef %751) #17
  %753 = icmp slt i32 %752, 0
  br i1 %753, label %754, label %870

754:                                              ; preds = %747
  %755 = getelementptr inbounds %struct.tree_common, ptr %700, i64 0, i32 2
  %756 = load ptr, ptr %755, align 8, !tbaa !9
  %757 = getelementptr inbounds %struct.tree_common, ptr %756, i64 0, i32 2
  %758 = load ptr, ptr %757, align 8, !tbaa !9
  %759 = load i64, ptr %758, align 8
  %760 = and i64 %759, 65535
  %761 = icmp eq i64 %760, 14
  br i1 %761, label %762, label %764

762:                                              ; preds = %754
  %763 = tail call i32 @vector_type_mode(ptr noundef nonnull %758) #17
  br label %769

764:                                              ; preds = %754
  %765 = getelementptr inbounds %struct.tree_type, ptr %758, i64 0, i32 6
  %766 = load i32, ptr %765, align 4
  %767 = lshr i32 %766, 16
  %768 = and i32 %767, 255
  br label %769

769:                                              ; preds = %764, %762
  %770 = phi i32 [ %763, %762 ], [ %768, %764 ]
  %771 = zext i32 %770 to i64
  %772 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %771
  %773 = load i8, ptr %772, align 1, !tbaa !9
  %774 = icmp eq i8 %773, 2
  br i1 %774, label %775, label %870

775:                                              ; preds = %769
  %776 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %771
  %777 = load i8, ptr %776, align 1, !tbaa !9
  %778 = icmp eq i8 %777, 1
  br i1 %778, label %779, label %870

779:                                              ; preds = %775
  %780 = getelementptr inbounds %struct.tree_string, ptr %700, i64 0, i32 2
  %781 = getelementptr inbounds %struct.tree_int_cst, ptr %748, i64 0, i32 1
  %782 = load i64, ptr %781, align 8, !tbaa !9
  %783 = getelementptr inbounds i8, ptr %780, i64 %782
  %784 = load i8, ptr %783, align 1, !tbaa !9
  %785 = sext i8 %784 to i64
  %786 = tail call ptr @gen_int_mode(i64 noundef %785, i32 noundef %770) #17
  br label %1927

787:                                              ; preds = %161
  %788 = load i64, ptr %82, align 8
  %789 = and i64 %788, 65535
  %790 = icmp eq i64 %789, 51
  br i1 %790, label %791, label %870

791:                                              ; preds = %787
  %792 = getelementptr inbounds %struct.tree_constructor, ptr %82, i64 0, i32 1
  %793 = load ptr, ptr %792, align 8, !tbaa !9
  %794 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %793) #18
  %795 = zext i32 %794 to i64
  %796 = icmp eq i32 %794, 0
  br i1 %796, label %870, label %797

797:                                              ; preds = %791
  %798 = getelementptr inbounds %struct.tree_decl_common, ptr %81, i64 0, i32 2
  br label %799

799:                                              ; preds = %797, %867
  %800 = phi i64 [ %868, %867 ], [ 0, %797 ]
  %801 = trunc i64 %800 to i32
  %802 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %793, i32 noundef %801) #18
  %803 = load ptr, ptr %802, align 8, !tbaa !135
  %804 = icmp eq ptr %803, %81
  br i1 %804, label %805, label %867

805:                                              ; preds = %799
  %806 = load i64, ptr %798, align 8
  %807 = and i64 %806, 33554432
  %808 = icmp ne i64 %807, 0
  br i1 %808, label %809, label %818

809:                                              ; preds = %805
  %810 = and i64 %806, 255
  %811 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %810
  %812 = load i8, ptr %811, align 1, !tbaa !9
  %813 = icmp eq i8 %812, 2
  br i1 %813, label %814, label %867

814:                                              ; preds = %809
  %815 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %810
  %816 = load i8, ptr %815, align 1, !tbaa !9
  %817 = icmp ult i8 %816, 9
  br i1 %817, label %818, label %867

818:                                              ; preds = %814, %805
  %819 = getelementptr inbounds %struct.tree_decl_common, ptr %81, i64 0, i32 2
  %820 = getelementptr inbounds %struct.constructor_elt_d, ptr %802, i64 0, i32 1
  %821 = load ptr, ptr %820, align 8, !tbaa !133
  %822 = and i1 %167, %808
  %823 = select i1 %822, ptr null, ptr %169
  %824 = tail call fastcc ptr @expand_expr(ptr noundef %821, ptr noundef %823, i32 noundef %2, i32 noundef %3) #18
  %825 = load i64, ptr %819, align 8
  %826 = and i64 %825, 33554432
  %827 = icmp eq i64 %826, 0
  br i1 %827, label %1927, label %828

828:                                              ; preds = %818
  %829 = getelementptr inbounds %struct.tree_decl_common, ptr %81, i64 0, i32 1
  %830 = load ptr, ptr %829, align 8, !tbaa !9
  %831 = getelementptr inbounds %struct.tree_int_cst, ptr %830, i64 0, i32 1
  %832 = load i64, ptr %831, align 8, !tbaa !9
  %833 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %834 = load ptr, ptr %833, align 8, !tbaa !9
  %835 = load i64, ptr %834, align 8
  %836 = and i64 %835, 65535
  %837 = icmp eq i64 %836, 14
  br i1 %837, label %838, label %842

838:                                              ; preds = %828
  %839 = tail call i32 @vector_type_mode(ptr noundef nonnull %834) #17
  %840 = load ptr, ptr %833, align 8, !tbaa !9
  %841 = load i64, ptr %840, align 8
  br label %847

842:                                              ; preds = %828
  %843 = getelementptr inbounds %struct.tree_type, ptr %834, i64 0, i32 6
  %844 = load i32, ptr %843, align 4
  %845 = lshr i32 %844, 16
  %846 = and i32 %845, 255
  br label %847

847:                                              ; preds = %842, %838
  %848 = phi i64 [ %841, %838 ], [ %835, %842 ]
  %849 = phi i32 [ %839, %838 ], [ %846, %842 ]
  %850 = and i64 %848, 2097152
  %851 = icmp eq i64 %850, 0
  br i1 %851, label %857, label %852

852:                                              ; preds = %847
  %853 = shl nsw i64 -1, %832
  %854 = xor i64 %853, -1
  %855 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %854) #17
  %856 = tail call ptr @expand_and(i32 noundef %849, ptr noundef %824, ptr noundef %855, ptr noundef %823) #17
  br label %1927

857:                                              ; preds = %847
  %858 = zext i32 %849 to i64
  %859 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %858
  %860 = load i8, ptr %859, align 1, !tbaa !9
  %861 = zext i8 %860 to i64
  %862 = shl nuw nsw i64 %861, 3
  %863 = sub nsw i64 %862, %832
  %864 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %863) #17
  %865 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %849, ptr noundef %824, ptr noundef %864, ptr noundef %823, i32 noundef 0) #17
  %866 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %849, ptr noundef %865, ptr noundef %864, ptr noundef %823, i32 noundef 0) #17
  br label %1927

867:                                              ; preds = %799, %809, %814
  %868 = add nuw nsw i64 %800, 1
  %869 = icmp eq i64 %868, %795
  br i1 %869, label %870, label %799, !llvm.loop !156

870:                                              ; preds = %867, %651, %708, %791, %703, %646, %769, %775, %747, %731, %724, %699, %667, %695, %691, %687, %683, %679, %674, %678, %678, %678, %161, %161, %787
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #16
  store i32 0, ptr %15, align 4, !tbaa !22
  %871 = call ptr @get_inner_reference(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %15, i8 zeroext poison) #18
  %872 = icmp eq ptr %871, %0
  br i1 %872, label %873, label %874

873:                                              ; preds = %870
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8943, ptr noundef nonnull @.str.1) #17
  br label %874

874:                                              ; preds = %870, %873
  %875 = getelementptr inbounds %struct.tree_common, ptr %871, i64 0, i32 2
  %876 = load ptr, ptr %875, align 8, !tbaa !9
  %877 = load i64, ptr %876, align 8
  %878 = and i64 %877, 65535
  %879 = icmp eq i64 %878, 17
  br i1 %879, label %880, label %889

880:                                              ; preds = %874
  %881 = getelementptr inbounds %struct.tree_type, ptr %876, i64 0, i32 2
  %882 = load ptr, ptr %881, align 8, !tbaa !9
  %883 = load i64, ptr %882, align 8
  %884 = and i64 %883, 65535
  %885 = icmp ne i64 %884, 23
  %886 = icmp ne i32 %3, 1
  %887 = and i1 %886, %885
  %888 = select i1 %887, ptr %169, ptr null
  br label %889

889:                                              ; preds = %880, %874
  %890 = phi ptr [ null, %874 ], [ %888, %880 ]
  %891 = add i32 %3, -3
  %892 = icmp ult i32 %891, 2
  %893 = or i1 %167, %892
  %894 = select i1 %893, i32 %3, i32 0
  %895 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %871, ptr noundef %890, i32 noundef 0, i32 noundef %894) #18
  store ptr %895, ptr %6, align 8, !tbaa !5
  %896 = load i32, ptr %895, align 8
  %897 = and i32 %896, 65535
  %898 = zext nneg i32 %897 to i64
  %899 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %898
  %900 = load i32, ptr %899, align 4, !tbaa !22
  %901 = icmp eq i32 %900, 9
  br i1 %901, label %902, label %914

902:                                              ; preds = %889
  %903 = load ptr, ptr %875, align 8, !tbaa !9
  %904 = load i64, ptr %903, align 8
  %905 = and i64 %904, 65535
  %906 = icmp eq i64 %905, 14
  br i1 %906, label %907, label %909

907:                                              ; preds = %902
  %908 = tail call i32 @vector_type_mode(ptr noundef nonnull %903) #17
  br label %917

909:                                              ; preds = %902
  %910 = getelementptr inbounds %struct.tree_type, ptr %903, i64 0, i32 6
  %911 = load i32, ptr %910, align 4
  %912 = lshr i32 %911, 16
  %913 = and i32 %912, 255
  br label %917

914:                                              ; preds = %889
  %915 = lshr i32 %896, 16
  %916 = and i32 %915, 255
  br label %917

917:                                              ; preds = %907, %909, %914
  %918 = phi i32 [ %916, %914 ], [ %908, %907 ], [ %913, %909 ]
  %919 = load ptr, ptr %14, align 8
  %920 = icmp ne ptr %919, null
  %921 = load i32, ptr %11, align 4
  %922 = icmp eq i32 %921, 1
  %923 = select i1 %920, i1 true, i1 %922
  br i1 %923, label %995, label %924

924:                                              ; preds = %917
  %925 = load i64, ptr %13, align 8
  %926 = load i64, ptr %12, align 8
  %927 = add nsw i64 %926, %925
  %928 = zext i32 %918 to i64
  %929 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %928
  %930 = load i8, ptr %929, align 1, !tbaa !9
  %931 = zext i8 %930 to i64
  %932 = shl nuw nsw i64 %931, 3
  %933 = icmp sgt i64 %927, %932
  %934 = load i32, ptr %895, align 8
  %935 = and i32 %934, 65535
  %936 = icmp ne i32 %935, 41
  %937 = select i1 %936, i1 true, i1 %933
  br i1 %937, label %995, label %938

938:                                              ; preds = %924
  %939 = icmp eq i64 %925, 0
  br i1 %939, label %947, label %940

940:                                              ; preds = %938
  %941 = getelementptr inbounds %struct.rtx_def, ptr %895, i64 0, i32 1
  %942 = load ptr, ptr %941, align 8, !tbaa !9
  %943 = load i32, ptr %942, align 8
  %944 = lshr i32 %943, 16
  %945 = and i32 %944, 255
  %946 = zext nneg i32 %945 to i64
  br label %971

947:                                              ; preds = %938
  %948 = lshr i32 %934, 16
  %949 = and i32 %948, 255
  %950 = zext nneg i32 %949 to i64
  %951 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %950
  %952 = load i8, ptr %951, align 1, !tbaa !9
  %953 = zext i8 %952 to i64
  %954 = shl nuw nsw i64 %953, 3
  %955 = icmp eq i64 %926, %954
  br i1 %955, label %1386, label %956

956:                                              ; preds = %947
  %957 = getelementptr inbounds %struct.rtx_def, ptr %895, i64 0, i32 1
  %958 = load ptr, ptr %957, align 8, !tbaa !9
  %959 = load i32, ptr %958, align 8
  %960 = lshr i32 %959, 16
  %961 = and i32 %960, 255
  %962 = zext nneg i32 %961 to i64
  %963 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %962
  %964 = load i8, ptr %963, align 1, !tbaa !9
  %965 = zext i8 %964 to i64
  %966 = shl nuw nsw i64 %965, 3
  %967 = icmp eq i64 %926, %966
  %968 = icmp ne i64 %926, 0
  %969 = and i1 %968, %967
  br i1 %969, label %970, label %971

970:                                              ; preds = %956
  store ptr %958, ptr %6, align 8, !tbaa !5
  br label %995

971:                                              ; preds = %940, %956
  %972 = phi i64 [ %946, %940 ], [ %962, %956 ]
  %973 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %972
  %974 = load i8, ptr %973, align 1, !tbaa !9
  %975 = zext i8 %974 to i64
  %976 = shl nuw nsw i64 %975, 3
  %977 = icmp eq i64 %925, %976
  br i1 %977, label %978, label %995

978:                                              ; preds = %971
  %979 = getelementptr inbounds %struct.rtx_def, ptr %895, i64 0, i32 1, i32 0, i32 0, i64 1
  %980 = load ptr, ptr %979, align 8, !tbaa !9
  %981 = load i32, ptr %980, align 8
  %982 = lshr i32 %981, 16
  %983 = and i32 %982, 255
  %984 = zext nneg i32 %983 to i64
  %985 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %984
  %986 = load i8, ptr %985, align 1, !tbaa !9
  %987 = zext i8 %986 to i64
  %988 = shl nuw nsw i64 %987, 3
  %989 = icmp eq i64 %926, %988
  %990 = icmp ne i64 %925, 0
  %991 = and i1 %990, %989
  %992 = icmp ne i64 %926, 0
  %993 = and i1 %992, %991
  br i1 %993, label %994, label %995

994:                                              ; preds = %978
  store ptr %980, ptr %6, align 8, !tbaa !5
  store i64 0, ptr %13, align 8, !tbaa !78
  br label %995

995:                                              ; preds = %917, %971, %978, %970, %994, %924
  %996 = phi ptr [ %895, %924 ], [ %958, %970 ], [ %980, %994 ], [ %895, %978 ], [ %895, %971 ], [ %895, %917 ]
  %997 = phi i32 [ %918, %924 ], [ %961, %970 ], [ %983, %994 ], [ %918, %978 ], [ %918, %971 ], [ %918, %917 ]
  %998 = phi i1 [ %933, %924 ], [ false, %970 ], [ false, %994 ], [ true, %978 ], [ true, %971 ], [ true, %917 ]
  %999 = load i32, ptr %996, align 8
  %1000 = and i32 %999, 65535
  %1001 = zext nneg i32 %1000 to i64
  %1002 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1001
  %1003 = load i32, ptr %1002, align 4, !tbaa !22
  %1004 = icmp eq i32 %1003, 9
  %1005 = icmp ne i32 %997, 1
  %1006 = select i1 %1004, i1 %1005, i1 false
  br i1 %1006, label %1007, label %1017

1007:                                             ; preds = %995
  %1008 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %996) #17
  %1009 = icmp eq i8 %1008, 0
  %1010 = select i1 %1009, i1 true, i1 %998
  br i1 %1010, label %1011, label %1015

1011:                                             ; preds = %1007
  %1012 = load i32, ptr %996, align 8
  %1013 = and i32 %1012, 65535
  %1014 = zext nneg i32 %1013 to i64
  br label %1017

1015:                                             ; preds = %1007
  %1016 = tail call ptr @force_reg(i32 noundef %997, ptr noundef nonnull %996) #17
  store ptr %1016, ptr %6, align 8, !tbaa !5
  br label %1060

1017:                                             ; preds = %1011, %995
  %1018 = phi i64 [ %1014, %1011 ], [ %1001, %995 ]
  %1019 = phi i32 [ %1013, %1011 ], [ %1000, %995 ]
  %1020 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1018
  %1021 = load i32, ptr %1020, align 4, !tbaa !22
  %1022 = icmp eq i32 %1021, 9
  br i1 %1022, label %1023, label %1032

1023:                                             ; preds = %1017
  %1024 = tail call ptr @force_const_mem(i32 noundef %997, ptr noundef nonnull %996) #17
  %1025 = icmp eq ptr %1024, null
  br i1 %1025, label %1026, label %1030

1026:                                             ; preds = %1023
  %1027 = load i32, ptr %996, align 8
  %1028 = and i32 %1027, 65535
  %1029 = zext nneg i32 %1028 to i64
  br label %1032

1030:                                             ; preds = %1023
  %1031 = tail call ptr @validize_mem(ptr noundef nonnull %1024) #17
  store ptr %1031, ptr %6, align 8, !tbaa !5
  br label %1060

1032:                                             ; preds = %1026, %1017
  %1033 = phi i64 [ %1029, %1026 ], [ %1018, %1017 ]
  %1034 = phi i32 [ %1028, %1026 ], [ %1019, %1017 ]
  %1035 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1033
  %1036 = load i32, ptr %1035, align 4, !tbaa !22
  %1037 = icmp eq i32 %1036, 9
  %1038 = icmp ne i32 %1034, 43
  %1039 = select i1 %1038, i1 %998, i1 false
  %1040 = select i1 %1037, i1 true, i1 %1039
  br i1 %1040, label %1041, label %1060

1041:                                             ; preds = %1032
  %1042 = load ptr, ptr %875, align 8, !tbaa !9
  %1043 = load i64, ptr %1042, align 8
  %1044 = trunc i64 %1043 to i32
  %1045 = lshr i32 %1044, 18
  %1046 = and i32 %1045, 2
  %1047 = getelementptr inbounds %struct.tree_type, ptr %1042, i64 0, i32 6
  %1048 = load i32, ptr %1047, align 4
  %1049 = lshr i32 %1048, 11
  %1050 = and i32 %1049, 4
  %1051 = lshr i64 %1043, 48
  %1052 = trunc i64 %1051 to i32
  %1053 = and i32 %1052, 65280
  %1054 = or disjoint i32 %1050, %1046
  %1055 = or disjoint i32 %1054, %1053
  %1056 = or disjoint i32 %1055, 1
  %1057 = tail call ptr @build_qualified_type(ptr noundef nonnull %1042, i32 noundef %1056) #17
  %1058 = tail call ptr @assign_temp(ptr noundef %1057, i32 noundef 1, i32 noundef 1, i32 noundef 1) #17
  %1059 = tail call ptr @emit_move_insn(ptr noundef %1058, ptr noundef nonnull %996) #18
  store ptr %1058, ptr %6, align 8, !tbaa !5
  br label %1060

1060:                                             ; preds = %1032, %1030, %1041, %1015
  %1061 = phi ptr [ %996, %1032 ], [ %1031, %1030 ], [ %1058, %1041 ], [ %1016, %1015 ]
  %1062 = icmp eq ptr %919, null
  br i1 %1062, label %1126, label %1063

1063:                                             ; preds = %1060
  %1064 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %919, ptr noundef null, i32 noundef 0, i32 noundef 2) #18
  %1065 = load i32, ptr %1061, align 8
  %1066 = and i32 %1065, 65535
  %1067 = icmp eq i32 %1066, 43
  br i1 %1067, label %1069, label %1068

1068:                                             ; preds = %1063
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9034, ptr noundef nonnull @.str.1) #17
  br label %1069

1069:                                             ; preds = %1063, %1068
  %1070 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !35
  %1071 = getelementptr inbounds %struct.rtx_def, ptr %1061, i64 0, i32 1, i32 0, i32 0, i64 1
  %1072 = load ptr, ptr %1071, align 8, !tbaa !9
  %1073 = icmp eq ptr %1072, null
  br i1 %1073, label %1077, label %1074

1074:                                             ; preds = %1069
  %1075 = getelementptr inbounds %struct.mem_attrs, ptr %1072, i64 0, i32 5
  %1076 = load i8, ptr %1075, align 8, !tbaa !29
  br label %1077

1077:                                             ; preds = %1069, %1074
  %1078 = phi i8 [ %1076, %1074 ], [ 0, %1069 ]
  %1079 = tail call i32 %1070(i8 noundef zeroext %1078) #17
  %1080 = load i32, ptr %1064, align 8
  %1081 = lshr i32 %1080, 16
  %1082 = and i32 %1081, 255
  %1083 = icmp eq i32 %1082, %1079
  br i1 %1083, label %1086, label %1084

1084:                                             ; preds = %1077
  %1085 = tail call ptr @convert_to_mode(i32 noundef %1079, ptr noundef nonnull %1064, i32 noundef 0) #18
  br label %1086

1086:                                             ; preds = %1084, %1077
  %1087 = phi ptr [ %1085, %1084 ], [ %1064, %1077 ]
  %1088 = load i32, ptr %1061, align 8
  %1089 = and i32 %1088, 16711680
  %1090 = icmp eq i32 %1089, 65536
  br i1 %1090, label %1091, label %1122

1091:                                             ; preds = %1086
  %1092 = getelementptr inbounds %struct.rtx_def, ptr %1061, i64 0, i32 1
  %1093 = load ptr, ptr %1092, align 8, !tbaa !9
  %1094 = load i32, ptr %1093, align 8
  %1095 = and i32 %1094, 16711680
  %1096 = icmp ne i32 %1095, 0
  %1097 = load i64, ptr %12, align 8
  %1098 = icmp ne i64 %1097, 0
  %1099 = select i1 %1096, i1 %1098, i1 false
  br i1 %1099, label %1100, label %1122

1100:                                             ; preds = %1091
  %1101 = load i64, ptr %13, align 8, !tbaa !78
  %1102 = srem i64 %1101, %1097
  %1103 = icmp eq i64 %1102, 0
  br i1 %1103, label %1104, label %1122

1104:                                             ; preds = %1100
  %1105 = tail call i32 @get_mode_alignment(i32 noundef %921) #17
  %1106 = zext i32 %1105 to i64
  %1107 = srem i64 %1097, %1106
  %1108 = icmp eq i64 %1107, 0
  br i1 %1108, label %1109, label %1122

1109:                                             ; preds = %1104
  %1110 = load ptr, ptr %1071, align 8, !tbaa !9
  %1111 = icmp eq ptr %1110, null
  br i1 %1111, label %1115, label %1112

1112:                                             ; preds = %1109
  %1113 = getelementptr inbounds %struct.mem_attrs, ptr %1110, i64 0, i32 4
  %1114 = load i32, ptr %1113, align 4, !tbaa !48
  br label %1115

1115:                                             ; preds = %1109, %1112
  %1116 = phi i32 [ %1114, %1112 ], [ 8, %1109 ]
  %1117 = tail call i32 @get_mode_alignment(i32 noundef %921) #17
  %1118 = icmp eq i32 %1116, %1117
  br i1 %1118, label %1119, label %1122

1119:                                             ; preds = %1115
  %1120 = sdiv i64 %1101, 8
  %1121 = tail call ptr @adjust_address_1(ptr noundef nonnull %1061, i32 noundef %921, i64 noundef %1120, i32 noundef 1, i32 noundef 1) #17
  store i64 0, ptr %13, align 8, !tbaa !78
  br label %1122

1122:                                             ; preds = %1119, %1115, %1104, %1100, %1091, %1086
  %1123 = phi ptr [ %1121, %1119 ], [ %1061, %1115 ], [ %1061, %1104 ], [ %1061, %1100 ], [ %1061, %1091 ], [ %1061, %1086 ]
  %1124 = tail call i64 @highest_pow2_factor(ptr noundef nonnull %919) #18
  %1125 = tail call ptr @offset_address(ptr noundef %1123, ptr noundef %1087, i64 noundef %1124) #17
  store ptr %1125, ptr %6, align 8, !tbaa !5
  br label %1126

1126:                                             ; preds = %1122, %1060
  %1127 = phi ptr [ %1125, %1122 ], [ %1061, %1060 ]
  %1128 = load i32, ptr %1127, align 8
  %1129 = and i32 %1128, 65535
  %1130 = icmp eq i32 %1129, 43
  %1131 = load i64, ptr %13, align 8
  %1132 = icmp eq i64 %1131, 0
  %1133 = select i1 %1130, i1 %1132, i1 false
  %1134 = and i1 %920, %1133
  br i1 %1134, label %1135, label %1143

1135:                                             ; preds = %1126
  %1136 = tail call fastcc i32 @is_aligning_offset(ptr noundef nonnull %919, ptr noundef nonnull %871) #18, !range !139
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1143, label %1138

1138:                                             ; preds = %1135
  %1139 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !22
  %1140 = and i32 %1139, 32
  %1141 = icmp eq i32 %1140, 0
  %1142 = select i1 %1141, i32 128, i32 256
  tail call void @set_mem_align(ptr noundef nonnull %1127, i32 noundef %1142) #17
  br label %1143

1143:                                             ; preds = %1138, %1135, %1126
  %1144 = load i32, ptr %1127, align 8
  %1145 = load i32, ptr %15, align 4
  %1146 = icmp ne i32 %1145, 0
  %1147 = and i32 %1144, 134283263
  %1148 = icmp eq i32 %1147, 43
  %1149 = select i1 %1148, i1 %1146, i1 false
  br i1 %1149, label %1150, label %1159

1150:                                             ; preds = %1143
  %1151 = icmp eq ptr %1127, %895
  br i1 %1151, label %1152, label %1155

1152:                                             ; preds = %1150
  %1153 = tail call ptr @copy_rtx(ptr noundef nonnull %895) #17
  store ptr %1153, ptr %6, align 8, !tbaa !5
  %1154 = load i32, ptr %1153, align 8
  br label %1155

1155:                                             ; preds = %1152, %1150
  %1156 = phi i32 [ %1154, %1152 ], [ %1144, %1150 ]
  %1157 = phi ptr [ %1153, %1152 ], [ %1127, %1150 ]
  %1158 = or i32 %1156, 134217728
  store i32 %1158, ptr %1157, align 8
  br label %1159

1159:                                             ; preds = %1155, %1143
  %1160 = icmp eq i32 %921, 0
  br i1 %1160, label %1227, label %1161

1161:                                             ; preds = %1159
  %1162 = load ptr, ptr %6, align 8, !tbaa !5
  %1163 = load i32, ptr %1162, align 8
  %1164 = trunc i32 %1163 to i16
  switch i16 %1164, label %1165 [
    i16 37, label %1227
    i16 39, label %1227
  ]

1165:                                             ; preds = %1161
  br i1 %922, label %1212, label %1166

1166:                                             ; preds = %1165
  %1167 = sext i32 %921 to i64
  %1168 = getelementptr inbounds [87 x i8], ptr @direct_load, i64 0, i64 %1167
  %1169 = load i8, ptr %1168, align 1, !tbaa !9
  %1170 = icmp eq i8 %1169, 0
  br i1 %1170, label %1171, label %1181

1171:                                             ; preds = %1166
  %1172 = zext i32 %59 to i64
  %1173 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1172
  %1174 = load i8, ptr %1173, align 1, !tbaa !9
  %1175 = icmp eq i8 %1174, 10
  br i1 %1175, label %1181, label %1176

1176:                                             ; preds = %1171
  %1177 = icmp ne i8 %1174, 11
  %1178 = add i32 %3, -5
  %1179 = icmp ult i32 %1178, -2
  %1180 = and i1 %1179, %1177
  br i1 %1180, label %1227, label %1181

1181:                                             ; preds = %1176, %1171, %1166
  %1182 = load ptr, ptr %875, align 8, !tbaa !9
  %1183 = getelementptr inbounds %struct.tree_type, ptr %1182, i64 0, i32 7
  %1184 = load i32, ptr %1183, align 8, !tbaa !9
  %1185 = tail call i32 @get_mode_alignment(i32 noundef %59) #17
  %1186 = icmp ult i32 %1184, %1185
  br i1 %1186, label %1209, label %1187

1187:                                             ; preds = %1181
  %1188 = tail call i32 @get_mode_alignment(i32 noundef %59) #17
  %1189 = zext i32 %1188 to i64
  %1190 = srem i64 %1131, %1189
  %1191 = icmp eq i64 %1190, 0
  br i1 %1191, label %1192, label %1209

1192:                                             ; preds = %1187
  %1193 = load i32, ptr %1162, align 8
  %1194 = and i32 %1193, 65535
  %1195 = icmp eq i32 %1194, 43
  br i1 %1195, label %1196, label %1209

1196:                                             ; preds = %1192
  %1197 = getelementptr inbounds %struct.rtx_def, ptr %1162, i64 0, i32 1, i32 0, i32 0, i64 1
  %1198 = load ptr, ptr %1197, align 8, !tbaa !9
  %1199 = icmp eq ptr %1198, null
  br i1 %1199, label %1203, label %1200

1200:                                             ; preds = %1196
  %1201 = getelementptr inbounds %struct.mem_attrs, ptr %1198, i64 0, i32 4
  %1202 = load i32, ptr %1201, align 4, !tbaa !48
  br label %1203

1203:                                             ; preds = %1196, %1200
  %1204 = phi i32 [ %1202, %1200 ], [ 8, %1196 ]
  %1205 = tail call i32 @get_mode_alignment(i32 noundef %921) #17
  %1206 = icmp ult i32 %1204, %1205
  br i1 %1206, label %1209, label %1207

1207:                                             ; preds = %1203
  %1208 = tail call i32 @get_mode_alignment(i32 noundef %921) #17
  br label %1209

1209:                                             ; preds = %1207, %1181, %1187, %1203, %1192
  %1210 = and i64 %1131, 7
  %1211 = icmp eq i64 %1210, 0
  br i1 %1211, label %1212, label %1227

1212:                                             ; preds = %1165, %1209
  %1213 = load i64, ptr %12, align 8, !tbaa !78
  %1214 = icmp sgt i64 %1213, -1
  br i1 %1214, label %1215, label %1336

1215:                                             ; preds = %1212
  %1216 = load ptr, ptr %37, align 8, !tbaa !9
  %1217 = getelementptr inbounds %struct.tree_type, ptr %1216, i64 0, i32 2
  %1218 = load ptr, ptr %1217, align 8, !tbaa !9
  %1219 = icmp eq ptr %1218, null
  br i1 %1219, label %1336, label %1220

1220:                                             ; preds = %1215
  %1221 = load i64, ptr %1218, align 8
  %1222 = and i64 %1221, 65535
  %1223 = icmp eq i64 %1222, 23
  br i1 %1223, label %1224, label %1336

1224:                                             ; preds = %1220
  %1225 = tail call i32 @compare_tree_int(ptr noundef nonnull %1218, i64 noundef %1213) #17
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1336, label %1227

1227:                                             ; preds = %1161, %1161, %1176, %1224, %1209, %1159
  %1228 = icmp eq i32 %59, 1
  br i1 %1228, label %1229, label %1289

1229:                                             ; preds = %1227
  %1230 = icmp eq ptr %169, null
  br i1 %1230, label %1250, label %1231

1231:                                             ; preds = %1229
  %1232 = load ptr, ptr %6, align 8, !tbaa !5
  %1233 = load i32, ptr %1232, align 8
  %1234 = and i32 %1233, 65535
  %1235 = icmp eq i32 %1234, 43
  br i1 %1235, label %1236, label %1245

1236:                                             ; preds = %1231
  %1237 = load i32, ptr %169, align 8
  %1238 = and i32 %1237, 65535
  %1239 = icmp eq i32 %1238, 43
  %1240 = and i64 %1131, 7
  %1241 = icmp eq i64 %1240, 0
  %1242 = select i1 %1239, i1 %1241, i1 false
  br i1 %1242, label %1243, label %1245

1243:                                             ; preds = %1236
  %1244 = load i64, ptr %12, align 8, !tbaa !78
  br label %1259

1245:                                             ; preds = %1231, %1236
  %1246 = load i64, ptr %12, align 8, !tbaa !78
  %1247 = trunc i64 %1246 to i32
  %1248 = tail call i32 @mode_for_size(i32 noundef %1247, i32 noundef 2, i32 noundef 1) #17
  %1249 = icmp eq i32 %1248, 1
  br i1 %1249, label %1255, label %1289

1250:                                             ; preds = %1229
  %1251 = load i64, ptr %12, align 8, !tbaa !78
  %1252 = trunc i64 %1251 to i32
  %1253 = tail call i32 @mode_for_size(i32 noundef %1252, i32 noundef 2, i32 noundef 1) #17
  %1254 = icmp eq i32 %1253, 1
  br i1 %1254, label %1256, label %1289

1255:                                             ; preds = %1245
  br i1 %1230, label %1256, label %1259

1256:                                             ; preds = %1250, %1255
  %1257 = phi i64 [ %1246, %1255 ], [ %1251, %1250 ]
  %1258 = tail call ptr @assign_temp(ptr noundef nonnull %38, i32 noundef 0, i32 noundef 1, i32 noundef 1) #17
  br label %1259

1259:                                             ; preds = %1243, %1256, %1255
  %1260 = phi i64 [ %1257, %1256 ], [ %1246, %1255 ], [ %1244, %1243 ]
  %1261 = phi ptr [ %1258, %1256 ], [ %166, %1255 ], [ %166, %1243 ]
  %1262 = icmp eq i64 %1260, 0
  br i1 %1262, label %1386, label %1263

1263:                                             ; preds = %1259
  %1264 = load ptr, ptr %6, align 8, !tbaa !5
  %1265 = load i32, ptr %1264, align 8
  %1266 = and i32 %1265, 65535
  %1267 = icmp eq i32 %1266, 43
  br i1 %1267, label %1268, label %1280

1268:                                             ; preds = %1263
  %1269 = icmp eq ptr %1261, null
  br i1 %1269, label %1277, label %1270

1270:                                             ; preds = %1268
  %1271 = load i32, ptr %1261, align 8
  %1272 = and i32 %1271, 65535
  %1273 = icmp eq i32 %1272, 43
  %1274 = and i64 %1131, 7
  %1275 = icmp eq i64 %1274, 0
  %1276 = select i1 %1273, i1 %1275, i1 false
  br i1 %1276, label %1281, label %1280

1277:                                             ; preds = %1268
  %1278 = and i64 %1131, 7
  %1279 = icmp eq i64 %1278, 0
  br i1 %1279, label %1281, label %1280

1280:                                             ; preds = %1277, %1270, %1263
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9128, ptr noundef nonnull @.str.1) #17
  br label %1281

1281:                                             ; preds = %1270, %1277, %1280
  %1282 = sdiv i64 %1131, 8
  %1283 = tail call ptr @adjust_address_1(ptr noundef nonnull %1264, i32 noundef 0, i64 noundef %1282, i32 noundef 1, i32 noundef 1) #17
  %1284 = add nsw i64 %1260, 7
  %1285 = sdiv i64 %1284, 8
  %1286 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1285) #17
  %1287 = select i1 %167, i32 2, i32 0
  %1288 = tail call ptr @emit_block_move(ptr noundef %1261, ptr noundef %1283, ptr noundef %1286, i32 noundef %1287) #18
  br label %1386

1289:                                             ; preds = %1250, %1227, %1245
  %1290 = phi i32 [ %1248, %1245 ], [ %59, %1227 ], [ %1253, %1250 ]
  %1291 = load ptr, ptr %6, align 8, !tbaa !5
  %1292 = tail call ptr @validize_mem(ptr noundef %1291) #17
  %1293 = load i32, ptr %1292, align 8
  %1294 = and i32 %1293, 65535
  %1295 = icmp eq i32 %1294, 43
  br i1 %1295, label %1296, label %1311

1296:                                             ; preds = %1289
  %1297 = getelementptr inbounds %struct.rtx_def, ptr %1292, i64 0, i32 1
  %1298 = load ptr, ptr %1297, align 8, !tbaa !9
  %1299 = load i32, ptr %1298, align 8
  %1300 = and i32 %1299, 65535
  %1301 = icmp eq i32 %1300, 37
  br i1 %1301, label %1302, label %1311

1302:                                             ; preds = %1296
  %1303 = getelementptr inbounds %struct.rtx_def, ptr %1292, i64 0, i32 1, i32 0, i32 0, i64 1
  %1304 = load ptr, ptr %1303, align 8, !tbaa !9
  %1305 = icmp eq ptr %1304, null
  br i1 %1305, label %1309, label %1306

1306:                                             ; preds = %1302
  %1307 = getelementptr inbounds %struct.mem_attrs, ptr %1304, i64 0, i32 4
  %1308 = load i32, ptr %1307, align 4, !tbaa !48
  br label %1309

1309:                                             ; preds = %1302, %1306
  %1310 = phi i32 [ %1308, %1306 ], [ 8, %1302 ]
  tail call void @mark_reg_pointer(ptr noundef nonnull %1298, i32 noundef %1310) #17
  br label %1311

1311:                                             ; preds = %1309, %1296, %1289
  %1312 = load i64, ptr %12, align 8, !tbaa !78
  %1313 = load i32, ptr %8, align 4, !tbaa !22
  %1314 = select i1 %167, ptr null, ptr %169
  %1315 = tail call ptr @extract_bit_field(ptr noundef nonnull %1292, i64 noundef %1312, i64 noundef %1131, i32 noundef %1313, ptr noundef %1314, i32 noundef %1290, i32 noundef %1290) #17
  br i1 %1228, label %1316, label %1386

1316:                                             ; preds = %1311
  %1317 = zext i32 %1290 to i64
  %1318 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1317
  %1319 = load i8, ptr %1318, align 1, !tbaa !9
  %1320 = zext i8 %1319 to i64
  %1321 = shl nuw nsw i64 %1320, 3
  %1322 = tail call zeroext i8 @component_uses_parent_alias_set(ptr noundef %0) #17
  %1323 = icmp eq i8 %1322, 0
  br i1 %1323, label %1327, label %1324

1324:                                             ; preds = %1316
  %1325 = tail call ptr @assign_stack_local(i32 noundef %1290, i64 noundef %1321, i32 noundef 0) #17
  %1326 = tail call i32 @get_alias_set(ptr noundef %0) #17
  tail call void @set_mem_alias_set(ptr noundef %1325, i32 noundef %1326) #17
  br label %1329

1327:                                             ; preds = %1316
  %1328 = tail call ptr @assign_stack_temp_for_type(i32 noundef %1290, i64 noundef %1321, i32 noundef 0, ptr noundef nonnull %38) #17
  br label %1329

1329:                                             ; preds = %1327, %1324
  %1330 = phi ptr [ %1325, %1324 ], [ %1328, %1327 ]
  %1331 = tail call ptr @emit_move_insn(ptr noundef %1330, ptr noundef %1315) #18
  %1332 = tail call ptr @copy_rtx(ptr noundef %1330) #17
  %1333 = load i32, ptr %1332, align 8
  %1334 = and i32 %1333, -16711681
  %1335 = or disjoint i32 %1334, 65536
  store i32 %1335, ptr %1332, align 8
  tail call void @set_mem_attributes(ptr noundef nonnull %1332, ptr noundef %0, i32 noundef 1) #17
  br label %1386

1336:                                             ; preds = %1224, %1220, %1215, %1212
  %1337 = icmp eq i32 %59, 1
  br i1 %1337, label %1338, label %1339

1338:                                             ; preds = %1336
  store i32 1, ptr %11, align 4, !tbaa !22
  br label %1339

1339:                                             ; preds = %1338, %1336
  %1340 = add i32 %3, -5
  %1341 = icmp ult i32 %1340, -3
  %1342 = load i32, ptr %11, align 4, !tbaa !22
  %1343 = sdiv i64 %1131, 8
  %1344 = zext i1 %1341 to i32
  %1345 = tail call ptr @adjust_address_1(ptr noundef nonnull %1162, i32 noundef %1342, i64 noundef %1343, i32 noundef %1344, i32 noundef 1) #17
  store ptr %1345, ptr %6, align 8, !tbaa !5
  %1346 = icmp eq ptr %1345, %895
  br i1 %1346, label %1347, label %1349

1347:                                             ; preds = %1339
  %1348 = tail call ptr @copy_rtx(ptr noundef nonnull %895) #17
  store ptr %1348, ptr %6, align 8, !tbaa !5
  br label %1349

1349:                                             ; preds = %1347, %1339
  %1350 = phi ptr [ %1348, %1347 ], [ %1345, %1339 ]
  tail call void @set_mem_attributes(ptr noundef %1350, ptr noundef %0, i32 noundef 0) #17
  %1351 = getelementptr inbounds %struct.rtx_def, ptr %1350, i64 0, i32 1
  %1352 = load ptr, ptr %1351, align 8, !tbaa !9
  %1353 = load i32, ptr %1352, align 8
  %1354 = and i32 %1353, 65535
  %1355 = icmp eq i32 %1354, 37
  br i1 %1355, label %1356, label %1365

1356:                                             ; preds = %1349
  %1357 = getelementptr inbounds %struct.rtx_def, ptr %1350, i64 0, i32 1, i32 0, i32 0, i64 1
  %1358 = load ptr, ptr %1357, align 8, !tbaa !9
  %1359 = icmp eq ptr %1358, null
  br i1 %1359, label %1363, label %1360

1360:                                             ; preds = %1356
  %1361 = getelementptr inbounds %struct.mem_attrs, ptr %1358, i64 0, i32 4
  %1362 = load i32, ptr %1361, align 4, !tbaa !48
  br label %1363

1363:                                             ; preds = %1356, %1360
  %1364 = phi i32 [ %1362, %1360 ], [ 8, %1356 ]
  tail call void @mark_reg_pointer(ptr noundef nonnull %1352, i32 noundef %1364) #17
  br label %1365

1365:                                             ; preds = %1363, %1349
  %1366 = load i32, ptr %1350, align 8
  %1367 = shl i32 %1145, 27
  %1368 = and i32 %1367, 134217728
  %1369 = or i32 %1366, %1368
  store i32 %1369, ptr %1350, align 8
  %1370 = load i32, ptr %11, align 4
  %1371 = icmp eq i32 %59, %1370
  %1372 = icmp eq i32 %1370, 1
  %1373 = or i1 %1371, %1372
  %1374 = icmp eq i32 %1370, %2
  %1375 = or i1 %892, %1374
  %1376 = or i1 %1373, %1375
  br i1 %1376, label %1386, label %1377

1377:                                             ; preds = %1365
  %1378 = icmp eq ptr %169, null
  br i1 %1378, label %1379, label %1383

1379:                                             ; preds = %1377
  %1380 = icmp eq i32 %2, 0
  %1381 = select i1 %1380, i32 %59, i32 %2
  %1382 = tail call ptr @gen_reg_rtx(i32 noundef %1381) #17
  br label %1383

1383:                                             ; preds = %1377, %1379
  %1384 = phi ptr [ %1382, %1379 ], [ %166, %1377 ]
  %1385 = load i32, ptr %8, align 4, !tbaa !22
  tail call void @convert_move(ptr noundef %1384, ptr noundef nonnull %1350, i32 noundef %1385) #18
  br label %1386

1386:                                             ; preds = %1311, %1329, %1365, %1281, %1259, %947, %1383
  %1387 = phi ptr [ %1384, %1383 ], [ %895, %947 ], [ %1261, %1281 ], [ %1261, %1259 ], [ %1350, %1365 ], [ %1332, %1329 ], [ %1315, %1311 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  br label %1927

1388:                                             ; preds = %161
  %1389 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %1390 = load ptr, ptr %1389, align 8, !tbaa !9
  %1391 = tail call fastcc ptr @expand_expr(ptr noundef %1390, ptr noundef %169, i32 noundef %2, i32 noundef %3) #18
  br label %1927

1392:                                             ; preds = %161
  %1393 = and i64 %57, 134217728
  %1394 = icmp eq i64 %1393, 0
  br i1 %1394, label %1396, label %1395

1395:                                             ; preds = %1392
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #17
  br label %1396

1396:                                             ; preds = %1395, %1392
  %1397 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %0) #17
  %1398 = icmp eq ptr %1397, null
  br i1 %1398, label %1436, label %1399

1399:                                             ; preds = %1396
  %1400 = getelementptr inbounds %struct.tree_decl_common, ptr %1397, i64 0, i32 6
  %1401 = load ptr, ptr %1400, align 8, !tbaa !9
  %1402 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.5, ptr noundef %1401) #17
  %1403 = icmp eq ptr %1402, null
  br i1 %1403, label %1413, label %1404

1404:                                             ; preds = %1399
  %1405 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !157
  %1406 = tail call ptr %1405(ptr noundef nonnull %1397, i32 noundef 1) #17
  %1407 = tail call ptr @identifier_to_locale(ptr noundef %1406) #17
  %1408 = getelementptr inbounds %struct.tree_list, ptr %1402, i64 0, i32 2
  %1409 = load ptr, ptr %1408, align 8, !tbaa !9
  %1410 = getelementptr inbounds %struct.tree_list, ptr %1409, i64 0, i32 2
  %1411 = load ptr, ptr %1410, align 8, !tbaa !9
  %1412 = getelementptr inbounds %struct.tree_string, ptr %1411, i64 0, i32 2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.6, ptr noundef nonnull %0, ptr noundef %1407, ptr noundef nonnull %1412) #17
  br label %1413

1413:                                             ; preds = %1399, %1404
  %1414 = load ptr, ptr %1400, align 8, !tbaa !9
  %1415 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.7, ptr noundef %1414) #17
  %1416 = icmp eq ptr %1415, null
  br i1 %1416, label %1428, label %1417

1417:                                             ; preds = %1413
  %1418 = tail call i32 @tree_nonartificial_location(ptr noundef nonnull %0) #17
  %1419 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !157
  %1420 = tail call ptr %1419(ptr noundef nonnull %1397, i32 noundef 1) #17
  %1421 = tail call ptr @identifier_to_locale(ptr noundef %1420) #17
  %1422 = getelementptr inbounds %struct.tree_list, ptr %1415, i64 0, i32 2
  %1423 = load ptr, ptr %1422, align 8, !tbaa !9
  %1424 = getelementptr inbounds %struct.tree_list, ptr %1423, i64 0, i32 2
  %1425 = load ptr, ptr %1424, align 8, !tbaa !9
  %1426 = getelementptr inbounds %struct.tree_string, ptr %1425, i64 0, i32 2
  %1427 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %1418, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %0, ptr noundef %1421, ptr noundef nonnull %1426) #17
  br label %1428

1428:                                             ; preds = %1413, %1417
  %1429 = getelementptr inbounds %struct.tree_function_decl, ptr %1397, i64 0, i32 5
  %1430 = load i32, ptr %1429, align 8
  %1431 = lshr i32 %1430, 11
  %1432 = and i32 %1431, 3
  switch i32 %1432, label %1434 [
    i32 0, label %1436
    i32 1, label %1433
  ]

1433:                                             ; preds = %1428
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9253, ptr noundef nonnull @.str.1) #17
  br label %1434

1434:                                             ; preds = %1433, %1428
  %1435 = tail call ptr @expand_builtin(ptr noundef nonnull %0, ptr noundef %169, ptr noundef %170, i32 noundef %2, i32 noundef %165) #17
  br label %1927

1436:                                             ; preds = %1396, %1428
  %1437 = tail call ptr @expand_call(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %165) #17
  br label %1927

1438:                                             ; preds = %161
  %1439 = icmp eq i32 %59, 1
  br i1 %1439, label %1440, label %1542

1440:                                             ; preds = %1438
  %1441 = load ptr, ptr %37, align 8, !tbaa !9
  %1442 = getelementptr inbounds %struct.tree_type, ptr %1441, i64 0, i32 2
  %1443 = load ptr, ptr %1442, align 8, !tbaa !9
  %1444 = load i64, ptr %1443, align 8
  %1445 = and i64 %1444, 65535
  %1446 = icmp eq i64 %1445, 23
  br i1 %1446, label %1447, label %1542

1447:                                             ; preds = %1440
  %1448 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %1449 = load ptr, ptr %1448, align 8, !tbaa !9
  %1450 = load i64, ptr %1449, align 8
  %1451 = and i64 %1450, 65535
  %1452 = icmp eq i64 %1451, 14
  br i1 %1452, label %1453, label %1455

1453:                                             ; preds = %1447
  %1454 = tail call i32 @vector_type_mode(ptr noundef nonnull %1449) #17
  br label %1460

1455:                                             ; preds = %1447
  %1456 = getelementptr inbounds %struct.tree_type, ptr %1449, i64 0, i32 6
  %1457 = load i32, ptr %1456, align 4
  %1458 = lshr i32 %1457, 16
  %1459 = and i32 %1458, 255
  br label %1460

1460:                                             ; preds = %1455, %1453
  %1461 = phi i32 [ %1454, %1453 ], [ %1459, %1455 ]
  %1462 = icmp eq i32 %1461, 1
  br i1 %1462, label %1542, label %1463

1463:                                             ; preds = %1460
  %1464 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %82) #18, !range !116
  %1465 = icmp eq i8 %1464, 0
  br i1 %1465, label %1542, label %1466

1466:                                             ; preds = %1463
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #16
  store i32 0, ptr %21, align 4, !tbaa !22
  %1467 = call ptr @get_inner_reference(ptr noundef nonnull %82, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %16, ptr noundef nonnull %20, ptr noundef nonnull %21, i8 zeroext poison) #18
  %1468 = load ptr, ptr %19, align 8, !tbaa !5
  %1469 = icmp eq ptr %1468, null
  br i1 %1469, label %1470, label %1533

1470:                                             ; preds = %1466
  %1471 = load i64, ptr %18, align 8, !tbaa !78
  %1472 = and i64 %1471, 7
  %1473 = icmp eq i64 %1472, 0
  %1474 = load i64, ptr %17, align 8
  %1475 = icmp sgt i64 %1474, -1
  %1476 = select i1 %1473, i1 %1475, i1 false
  br i1 %1476, label %1477, label %1533

1477:                                             ; preds = %1470
  %1478 = load ptr, ptr %37, align 8, !tbaa !9
  %1479 = getelementptr inbounds %struct.tree_type, ptr %1478, i64 0, i32 2
  %1480 = load ptr, ptr %1479, align 8, !tbaa !9
  %1481 = tail call i32 @compare_tree_int(ptr noundef %1480, i64 noundef %1474) #17
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1483, label %1533

1483:                                             ; preds = %1477
  %1484 = getelementptr inbounds %struct.tree_common, ptr %1467, i64 0, i32 2
  %1485 = load ptr, ptr %1484, align 8, !tbaa !9
  %1486 = load i64, ptr %1485, align 8
  %1487 = and i64 %1486, 65535
  %1488 = icmp eq i64 %1487, 17
  br i1 %1488, label %1489, label %1498

1489:                                             ; preds = %1483
  %1490 = getelementptr inbounds %struct.tree_type, ptr %1485, i64 0, i32 2
  %1491 = load ptr, ptr %1490, align 8, !tbaa !9
  %1492 = load i64, ptr %1491, align 8
  %1493 = and i64 %1492, 65535
  %1494 = icmp ne i64 %1493, 23
  %1495 = icmp ne i32 %3, 1
  %1496 = and i1 %1495, %1494
  %1497 = select i1 %1496, ptr %169, ptr null
  br label %1498

1498:                                             ; preds = %1489, %1483
  %1499 = phi ptr [ null, %1483 ], [ %1497, %1489 ]
  %1500 = add i32 %3, -3
  %1501 = icmp ult i32 %1500, 2
  %1502 = or i1 %167, %1501
  %1503 = select i1 %1502, i32 %3, i32 0
  %1504 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %1467, ptr noundef %1499, i32 noundef 0, i32 noundef %1503) #18
  %1505 = load i32, ptr %1504, align 8
  %1506 = and i32 %1505, 65535
  %1507 = icmp eq i32 %1506, 43
  br i1 %1507, label %1508, label %1533

1508:                                             ; preds = %1498
  %1509 = add i32 %3, -5
  %1510 = icmp ult i32 %1509, -3
  %1511 = sdiv i64 %1471, 8
  %1512 = zext i1 %1510 to i32
  %1513 = tail call ptr @adjust_address_1(ptr noundef nonnull %1504, i32 noundef 1, i64 noundef %1511, i32 noundef %1512, i32 noundef 1) #17
  store ptr %1513, ptr %6, align 8, !tbaa !5
  %1514 = icmp eq ptr %1513, %1504
  br i1 %1514, label %1515, label %1517

1515:                                             ; preds = %1508
  %1516 = tail call ptr @copy_rtx(ptr noundef nonnull %1504) #17
  store ptr %1516, ptr %6, align 8, !tbaa !5
  br label %1517

1517:                                             ; preds = %1515, %1508
  %1518 = phi ptr [ %1516, %1515 ], [ %1513, %1508 ]
  tail call void @set_mem_attributes(ptr noundef %1518, ptr noundef nonnull %82, i32 noundef 0) #17
  %1519 = getelementptr inbounds %struct.rtx_def, ptr %1518, i64 0, i32 1
  %1520 = load ptr, ptr %1519, align 8, !tbaa !9
  %1521 = load i32, ptr %1520, align 8
  %1522 = and i32 %1521, 65535
  %1523 = icmp eq i32 %1522, 37
  br i1 %1523, label %1524, label %1534

1524:                                             ; preds = %1517
  %1525 = getelementptr inbounds %struct.rtx_def, ptr %1518, i64 0, i32 1, i32 0, i32 0, i64 1
  %1526 = load ptr, ptr %1525, align 8, !tbaa !9
  %1527 = icmp eq ptr %1526, null
  br i1 %1527, label %1531, label %1528

1528:                                             ; preds = %1524
  %1529 = getelementptr inbounds %struct.mem_attrs, ptr %1526, i64 0, i32 4
  %1530 = load i32, ptr %1529, align 4, !tbaa !48
  br label %1531

1531:                                             ; preds = %1524, %1528
  %1532 = phi i32 [ %1530, %1528 ], [ 8, %1524 ]
  tail call void @mark_reg_pointer(ptr noundef nonnull %1520, i32 noundef %1532) #17
  br label %1534

1533:                                             ; preds = %1498, %1477, %1470, %1466
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #16
  br label %1542

1534:                                             ; preds = %1517, %1531
  %1535 = load i32, ptr %21, align 4, !tbaa !22
  %1536 = load i32, ptr %1518, align 8
  %1537 = shl i32 %1535, 27
  %1538 = and i32 %1537, 134217728
  %1539 = or i32 %1538, %1536
  store i32 %1539, ptr %1518, align 8
  %1540 = load ptr, ptr %6, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #16
  %1541 = icmp eq ptr %1540, null
  br i1 %1541, label %1542, label %1544

1542:                                             ; preds = %1440, %1460, %1463, %1533, %1438, %1534
  %1543 = tail call fastcc ptr @expand_expr(ptr noundef %82, ptr noundef null, i32 noundef 0, i32 noundef %3) #18
  store ptr %1543, ptr %6, align 8, !tbaa !5
  br label %1544

1544:                                             ; preds = %1542, %1534
  %1545 = phi ptr [ %1543, %1542 ], [ %1540, %1534 ]
  %1546 = load i32, ptr %1545, align 8
  %1547 = lshr i32 %1546, 16
  %1548 = and i32 %1547, 255
  %1549 = icmp eq i32 %59, %1548
  br i1 %1549, label %1662, label %1550

1550:                                             ; preds = %1544
  %1551 = icmp eq i32 %1548, 1
  %1552 = or i1 %1439, %1551
  br i1 %1552, label %1553, label %1555

1553:                                             ; preds = %1550
  %1554 = zext nneg i32 %1548 to i64
  br label %1577

1555:                                             ; preds = %1550
  %1556 = zext i32 %59 to i64
  %1557 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1556
  %1558 = load i8, ptr %1557, align 1, !tbaa !9
  %1559 = zext nneg i32 %1548 to i64
  %1560 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1559
  %1561 = load i8, ptr %1560, align 1, !tbaa !9
  %1562 = icmp eq i8 %1558, %1561
  br i1 %1562, label %1563, label %1577

1563:                                             ; preds = %1555
  %1564 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1559
  %1565 = load i8, ptr %1564, align 1, !tbaa !9
  %1566 = and i8 %1565, -2
  %1567 = icmp eq i8 %1566, 10
  br i1 %1567, label %1577, label %1568

1568:                                             ; preds = %1563
  %1569 = and i32 %1546, 65535
  %1570 = icmp eq i32 %1569, 39
  br i1 %1570, label %1571, label %1573

1571:                                             ; preds = %1568
  %1572 = tail call ptr @force_reg(i32 noundef %1548, ptr noundef nonnull %1545) #17
  br label %1573

1573:                                             ; preds = %1571, %1568
  %1574 = phi ptr [ %1572, %1571 ], [ %1545, %1568 ]
  %1575 = load ptr, ptr @rtl_hooks, align 8, !tbaa !20
  %1576 = tail call ptr %1575(i32 noundef %59, ptr noundef %1574) #17
  store ptr %1576, ptr %6, align 8, !tbaa !5
  br label %1662

1577:                                             ; preds = %1553, %1563, %1555
  %1578 = phi i64 [ %1554, %1553 ], [ %1559, %1563 ], [ %1559, %1555 ]
  %1579 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1578
  %1580 = load i8, ptr %1579, align 1, !tbaa !9
  %1581 = and i8 %1580, -2
  %1582 = icmp eq i8 %1581, 2
  br i1 %1582, label %1583, label %1597

1583:                                             ; preds = %1577
  %1584 = zext i32 %59 to i64
  %1585 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1584
  %1586 = load i8, ptr %1585, align 1, !tbaa !9
  %1587 = and i8 %1586, -2
  %1588 = icmp eq i8 %1587, 2
  br i1 %1588, label %1589, label %1597

1589:                                             ; preds = %1583
  %1590 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %1591 = load ptr, ptr %1590, align 8, !tbaa !9
  %1592 = load i64, ptr %1591, align 8
  %1593 = trunc i64 %1592 to i32
  %1594 = lshr i32 %1593, 21
  %1595 = and i32 %1594, 1
  %1596 = tail call ptr @convert_modes(i32 noundef %59, i32 noundef %1548, ptr noundef nonnull %1545, i32 noundef %1595) #18
  store ptr %1596, ptr %6, align 8, !tbaa !5
  br label %1662

1597:                                             ; preds = %1583, %1577
  %1598 = and i32 %1546, 65535
  %1599 = icmp eq i32 %1598, 43
  br i1 %1599, label %1662, label %1600

1600:                                             ; preds = %1597
  %1601 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %1602 = load ptr, ptr %1601, align 8, !tbaa !9
  %1603 = load i64, ptr %0, align 8
  %1604 = and i64 %1603, 262144
  %1605 = icmp eq i64 %1604, 0
  br i1 %1605, label %1607, label %1606

1606:                                             ; preds = %1600
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9356, ptr noundef nonnull @.str.1) #17
  br label %1607

1607:                                             ; preds = %1600, %1606
  %1608 = icmp eq ptr %169, null
  %1609 = load i64, ptr %1602, align 8
  br i1 %1608, label %1628, label %1610

1610:                                             ; preds = %1607
  %1611 = load i32, ptr %169, align 8
  %1612 = lshr i32 %1611, 16
  %1613 = and i32 %1612, 255
  %1614 = and i64 %1609, 65535
  %1615 = icmp eq i64 %1614, 14
  br i1 %1615, label %1616, label %1618

1616:                                             ; preds = %1610
  %1617 = tail call i32 @vector_type_mode(ptr noundef nonnull %1602) #17
  br label %1623

1618:                                             ; preds = %1610
  %1619 = getelementptr inbounds %struct.tree_type, ptr %1602, i64 0, i32 6
  %1620 = load i32, ptr %1619, align 4
  %1621 = lshr i32 %1620, 16
  %1622 = and i32 %1621, 255
  br label %1623

1623:                                             ; preds = %1618, %1616
  %1624 = phi i32 [ %1617, %1616 ], [ %1622, %1618 ]
  %1625 = icmp eq i32 %1613, %1624
  br i1 %1625, label %1659, label %1626

1626:                                             ; preds = %1623
  %1627 = load i64, ptr %1602, align 8
  br label %1628

1628:                                             ; preds = %1626, %1607
  %1629 = phi i64 [ %1627, %1626 ], [ %1609, %1607 ]
  %1630 = and i64 %1629, 65535
  %1631 = icmp eq i64 %1630, 14
  br i1 %1631, label %1632, label %1635

1632:                                             ; preds = %1628
  %1633 = tail call i32 @vector_type_mode(ptr noundef nonnull %1602) #17
  %1634 = load i64, ptr %1602, align 8
  br label %1640

1635:                                             ; preds = %1628
  %1636 = getelementptr inbounds %struct.tree_type, ptr %1602, i64 0, i32 6
  %1637 = load i32, ptr %1636, align 4
  %1638 = lshr i32 %1637, 16
  %1639 = and i32 %1638, 255
  br label %1640

1640:                                             ; preds = %1635, %1632
  %1641 = phi i64 [ %1634, %1632 ], [ %1629, %1635 ]
  %1642 = phi i32 [ %1633, %1632 ], [ %1639, %1635 ]
  %1643 = and i64 %1641, 65535
  %1644 = icmp eq i64 %1643, 14
  br i1 %1644, label %1645, label %1647

1645:                                             ; preds = %1640
  %1646 = tail call i32 @vector_type_mode(ptr noundef nonnull %1602) #17
  br label %1652

1647:                                             ; preds = %1640
  %1648 = getelementptr inbounds %struct.tree_type, ptr %1602, i64 0, i32 6
  %1649 = load i32, ptr %1648, align 4
  %1650 = lshr i32 %1649, 16
  %1651 = and i32 %1650, 255
  br label %1652

1652:                                             ; preds = %1647, %1645
  %1653 = phi i32 [ %1646, %1645 ], [ %1651, %1647 ]
  %1654 = zext i32 %1653 to i64
  %1655 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1654
  %1656 = load i8, ptr %1655, align 1, !tbaa !9
  %1657 = zext i8 %1656 to i64
  %1658 = tail call ptr @assign_stack_temp_for_type(i32 noundef %1642, i64 noundef %1657, i32 noundef 0, ptr noundef nonnull %1602) #17
  br label %1659

1659:                                             ; preds = %1652, %1623
  %1660 = phi ptr [ %1658, %1652 ], [ %166, %1623 ]
  %1661 = tail call ptr @emit_move_insn(ptr noundef %1660, ptr noundef nonnull %1545) #18
  store ptr %1660, ptr %6, align 8, !tbaa !5
  br label %1662

1662:                                             ; preds = %1573, %1597, %1659, %1589, %1544
  %1663 = phi ptr [ %1576, %1573 ], [ %1545, %1597 ], [ %1660, %1659 ], [ %1596, %1589 ], [ %1545, %1544 ]
  %1664 = load i32, ptr %1663, align 8
  %1665 = and i32 %1664, 65535
  %1666 = icmp eq i32 %1665, 43
  br i1 %1666, label %1667, label %1927

1667:                                             ; preds = %1662
  %1668 = tail call ptr @copy_rtx(ptr noundef nonnull %1663) #17
  %1669 = load i64, ptr %38, align 8
  %1670 = and i64 %1669, 33554432
  %1671 = icmp eq i64 %1670, 0
  br i1 %1671, label %1688, label %1672

1672:                                             ; preds = %1667
  %1673 = getelementptr inbounds %struct.rtx_def, ptr %1668, i64 0, i32 1, i32 0, i32 0, i64 1
  %1674 = load ptr, ptr %1673, align 8, !tbaa !9
  %1675 = icmp eq ptr %1674, null
  br i1 %1675, label %1676, label %1680

1676:                                             ; preds = %1672
  %1677 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 7
  %1678 = load i32, ptr %1677, align 8, !tbaa !9
  %1679 = tail call i32 @llvm.umax.i32(i32 %1678, i32 8)
  br label %1686

1680:                                             ; preds = %1672
  %1681 = getelementptr inbounds %struct.mem_attrs, ptr %1674, i64 0, i32 4
  %1682 = load i32, ptr %1681, align 4, !tbaa !48
  %1683 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 7
  %1684 = load i32, ptr %1683, align 8, !tbaa !9
  %1685 = tail call i32 @llvm.umax.i32(i32 %1682, i32 %1684)
  br label %1686

1686:                                             ; preds = %1680, %1676
  %1687 = phi i32 [ %1679, %1676 ], [ %1685, %1680 ]
  tail call void @set_mem_align(ptr noundef nonnull %1668, i32 noundef %1687) #17
  br label %1688

1688:                                             ; preds = %1667, %1686
  %1689 = tail call ptr @adjust_address_1(ptr noundef %1668, i32 noundef %59, i64 noundef 0, i32 noundef 1, i32 noundef 1) #17
  br label %1927

1690:                                             ; preds = %161, %161
  br i1 %164, label %1714, label %1691

1691:                                             ; preds = %1690
  %1692 = icmp eq ptr %169, null
  %1693 = or i1 %167, %1692
  br i1 %1693, label %1710, label %1694

1694:                                             ; preds = %1691
  %1695 = tail call i32 @safe_from_p(ptr noundef nonnull %169, ptr noundef %82, i32 noundef 1) #18, !range !139
  %1696 = icmp eq i32 %1695, 0
  br i1 %1696, label %1710, label %1697

1697:                                             ; preds = %1694
  %1698 = tail call i32 @safe_from_p(ptr noundef nonnull %169, ptr noundef %81, i32 noundef 1) #18, !range !139
  %1699 = icmp eq i32 %1698, 0
  br i1 %1699, label %1710, label %1700

1700:                                             ; preds = %1697
  %1701 = load i32, ptr @optimize, align 4, !tbaa !22
  %1702 = icmp eq i32 %1701, 0
  br i1 %1702, label %1703, label %1717

1703:                                             ; preds = %1700
  %1704 = load i32, ptr %169, align 8
  %1705 = and i32 %1704, 65535
  %1706 = icmp eq i32 %1705, 37
  br i1 %1706, label %1707, label %1717

1707:                                             ; preds = %1703
  %1708 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %169) #18
  %1709 = icmp ult i32 %1708, 53
  br i1 %1709, label %1710, label %1717

1710:                                             ; preds = %1707, %1697, %1694, %1691
  %1711 = icmp eq i32 %2, 0
  %1712 = select i1 %1711, i32 %59, i32 %2
  %1713 = tail call ptr @gen_reg_rtx(i32 noundef %1712) #17
  br label %1714

1714:                                             ; preds = %1710, %1690
  %1715 = phi ptr [ %169, %1690 ], [ %1713, %1710 ]
  %1716 = icmp eq ptr %1715, null
  br i1 %1716, label %1724, label %1717

1717:                                             ; preds = %1703, %1707, %1700, %1714
  %1718 = phi ptr [ %1715, %1714 ], [ %166, %1700 ], [ %166, %1707 ], [ %166, %1703 ]
  %1719 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %1720 = tail call ptr @emit_move_insn(ptr noundef nonnull %1718, ptr noundef %1719) #18
  %1721 = tail call ptr @gen_label_rtx() #17
  tail call void @jumpifnot_1(i32 noundef %25, ptr noundef %82, ptr noundef %81, ptr noundef %1721, i32 noundef -1) #17
  %1722 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !5
  %1723 = tail call ptr @emit_move_insn(ptr noundef nonnull %1718, ptr noundef %1722) #18
  br label %1726

1724:                                             ; preds = %1714
  %1725 = tail call ptr @gen_label_rtx() #17
  tail call void @jumpifnot_1(i32 noundef %25, ptr noundef %82, ptr noundef %81, ptr noundef %1725, i32 noundef -1) #17
  br label %1726

1726:                                             ; preds = %1724, %1717
  %1727 = phi ptr [ %1725, %1724 ], [ %1721, %1717 ]
  %1728 = phi ptr [ null, %1724 ], [ %1718, %1717 ]
  %1729 = tail call ptr @emit_label(ptr noundef %1727) #17
  %1730 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %1731 = select i1 %164, ptr %1730, ptr %1728
  br label %1927

1732:                                             ; preds = %161
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #16
  br i1 %164, label %1734, label %1733

1733:                                             ; preds = %1732
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9443, ptr noundef nonnull @.str.1) #17
  br label %1734

1734:                                             ; preds = %1732, %1733
  %1735 = tail call fastcc { ptr, ptr } @tsi_start(ptr noundef nonnull %0) #18
  %1736 = extractvalue { ptr, ptr } %1735, 0
  %1737 = extractvalue { ptr, ptr } %1735, 1
  store ptr %1736, ptr %22, align 8, !tbaa.struct !158
  %1738 = getelementptr inbounds i8, ptr %22, i64 8
  store ptr %1737, ptr %1738, align 8, !tbaa.struct !159
  %1739 = tail call fastcc zeroext i8 @tsi_end_p(ptr %1736) #18
  %1740 = icmp eq i8 %1739, 0
  br i1 %1740, label %1741, label %1749

1741:                                             ; preds = %1734, %1741
  %1742 = phi ptr [ %1746, %1741 ], [ %1736, %1734 ]
  %1743 = tail call fastcc ptr @tsi_stmt(ptr %1742) #18
  %1744 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %1745 = tail call fastcc ptr @expand_expr(ptr noundef %1743, ptr noundef %1744, i32 noundef 0, i32 noundef %3) #18
  call fastcc void @tsi_next(ptr noundef nonnull %22) #18
  %1746 = load ptr, ptr %22, align 8
  %1747 = tail call fastcc zeroext i8 @tsi_end_p(ptr %1746) #18
  %1748 = icmp eq i8 %1747, 0
  br i1 %1748, label %1741, label %1749, !llvm.loop !160

1749:                                             ; preds = %1741, %1734
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #16
  %1750 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  br label %1927

1751:                                             ; preds = %161
  %1752 = load i64, ptr %38, align 8
  %1753 = and i64 %1752, 65535
  %1754 = icmp eq i64 %1753, 19
  br i1 %1754, label %1755, label %1757

1755:                                             ; preds = %1751
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9454, ptr noundef nonnull @.str.1) #17
  %1756 = load i64, ptr %38, align 8
  br label %1757

1757:                                             ; preds = %1751, %1755
  %1758 = phi i64 [ %1752, %1751 ], [ %1756, %1755 ]
  %1759 = and i64 %1758, 262144
  %1760 = icmp ne i64 %1759, 0
  %1761 = or i1 %164, %1760
  br i1 %1761, label %1771, label %1762

1762:                                             ; preds = %1757
  %1763 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %1764 = load ptr, ptr %1763, align 8, !tbaa !9
  %1765 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !5
  %1766 = icmp eq ptr %1764, %1765
  br i1 %1766, label %1771, label %1767

1767:                                             ; preds = %1762
  %1768 = getelementptr inbounds %struct.tree_common, ptr %80, i64 0, i32 2
  %1769 = load ptr, ptr %1768, align 8, !tbaa !9
  %1770 = icmp eq ptr %1769, %1765
  br i1 %1770, label %1771, label %1772

1771:                                             ; preds = %1767, %1762, %1757
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9464, ptr noundef nonnull @.str.1) #17
  br label %1772

1772:                                             ; preds = %1767, %1771
  %1773 = icmp ne i32 %3, 1
  %1774 = icmp ne ptr %169, null
  %1775 = and i1 %1773, %1774
  br i1 %1775, label %1776, label %1793

1776:                                             ; preds = %1772
  %1777 = tail call i32 @safe_from_p(ptr noundef nonnull %169, ptr noundef %82, i32 noundef 1) #18, !range !139
  %1778 = icmp eq i32 %1777, 0
  br i1 %1778, label %1793, label %1779

1779:                                             ; preds = %1776
  %1780 = load i32, ptr %169, align 8
  %1781 = lshr i32 %1780, 16
  %1782 = and i32 %1781, 255
  %1783 = icmp eq i32 %1782, %59
  br i1 %1783, label %1784, label %1793

1784:                                             ; preds = %1779
  %1785 = tail call i32 @can_conditionally_move_p(i32 noundef %59) #17
  %1786 = icmp eq i32 %1785, 0
  %1787 = load i32, ptr %169, align 8
  %1788 = and i32 %1787, 65535
  br i1 %1786, label %1791, label %1789

1789:                                             ; preds = %1784
  %1790 = icmp eq i32 %1788, 37
  br i1 %1790, label %1795, label %1793

1791:                                             ; preds = %1784
  %1792 = icmp eq i32 %1788, 43
  br i1 %1792, label %1793, label %1795

1793:                                             ; preds = %1791, %1789, %1779, %1776, %1772
  %1794 = tail call ptr @assign_temp(ptr noundef nonnull %38, i32 noundef 0, i32 noundef 0, i32 noundef 1) #17
  br label %1795

1795:                                             ; preds = %1789, %1791, %1793
  %1796 = phi ptr [ %1794, %1793 ], [ %166, %1791 ], [ %166, %1789 ]
  tail call void @do_pending_stack_adjust() #17
  %1797 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !67
  %1798 = add nsw i32 %1797, 1
  store i32 %1798, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !67
  %1799 = tail call ptr @gen_label_rtx() #17
  %1800 = tail call ptr @gen_label_rtx() #17
  tail call void @jumpifnot(ptr noundef %82, ptr noundef %1799, i32 noundef -1) #17
  %1801 = zext i1 %167 to i32
  %1802 = tail call ptr @store_expr(ptr noundef %81, ptr noundef %1796, i32 noundef %1801, i8 noundef zeroext 0) #18
  %1803 = tail call ptr @gen_jump(ptr noundef %1800) #17
  %1804 = tail call ptr @emit_jump_insn(ptr noundef %1803) #17
  %1805 = tail call ptr @emit_barrier() #17
  %1806 = tail call ptr @emit_label(ptr noundef %1799) #17
  %1807 = tail call ptr @store_expr(ptr noundef %80, ptr noundef %1796, i32 noundef %1801, i8 noundef zeroext 0) #18
  %1808 = tail call ptr @emit_label(ptr noundef %1800) #17
  %1809 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !67
  %1810 = add nsw i32 %1809, -1
  store i32 %1810, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !67
  br label %1927

1811:                                             ; preds = %161
  %1812 = tail call ptr @expand_vec_cond_expr(ptr noundef nonnull %38, ptr noundef %82, ptr noundef %81, ptr noundef %80, ptr noundef %169) #17
  br label %1927

1813:                                             ; preds = %161
  br i1 %164, label %1815, label %1814

1814:                                             ; preds = %1813
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9512, ptr noundef nonnull @.str.1) #17
  br label %1815

1815:                                             ; preds = %1813, %1814
  %1816 = load i64, ptr %82, align 8
  %1817 = and i64 %1816, 65535
  %1818 = icmp eq i64 %1817, 41
  br i1 %1818, label %1819, label %1865

1819:                                             ; preds = %1815
  %1820 = load i64, ptr %81, align 8
  %1821 = trunc i64 %1820 to i16
  switch i16 %1821, label %1865 [
    i16 87, label %1822
    i16 89, label %1822
  ]

1822:                                             ; preds = %1819, %1819
  %1823 = getelementptr inbounds %struct.tree_exp, ptr %81, i64 0, i32 3
  %1824 = load ptr, ptr %1823, align 8, !tbaa !9
  %1825 = icmp eq ptr %1824, %82
  br i1 %1825, label %1826, label %1865

1826:                                             ; preds = %1822
  %1827 = getelementptr inbounds %struct.tree_exp, ptr %81, i64 1
  %1828 = load ptr, ptr %1827, align 8, !tbaa !9
  %1829 = load i64, ptr %1828, align 8
  %1830 = and i64 %1829, 65535
  %1831 = icmp eq i64 %1830, 41
  br i1 %1831, label %1832, label %1865

1832:                                             ; preds = %1826
  %1833 = getelementptr inbounds %struct.tree_exp, ptr %82, i64 1
  %1834 = load ptr, ptr %1833, align 8, !tbaa !9
  %1835 = getelementptr inbounds %struct.tree_decl_common, ptr %1834, i64 0, i32 1
  %1836 = load ptr, ptr %1835, align 8, !tbaa !9
  %1837 = tail call i32 @integer_onep(ptr noundef %1836) #17
  %1838 = icmp eq i32 %1837, 0
  br i1 %1838, label %1865, label %1839

1839:                                             ; preds = %1832
  %1840 = load ptr, ptr %1827, align 8, !tbaa !9
  %1841 = getelementptr inbounds %struct.tree_exp, ptr %1840, i64 1
  %1842 = load ptr, ptr %1841, align 8, !tbaa !9
  %1843 = getelementptr inbounds %struct.tree_decl_common, ptr %1842, i64 0, i32 1
  %1844 = load ptr, ptr %1843, align 8, !tbaa !9
  %1845 = tail call i32 @integer_onep(ptr noundef %1844) #17
  %1846 = icmp eq i32 %1845, 0
  br i1 %1846, label %1865, label %1847

1847:                                             ; preds = %1839
  %1848 = tail call ptr @gen_label_rtx() #17
  %1849 = load i64, ptr %81, align 8
  %1850 = and i64 %1849, 65535
  %1851 = icmp eq i64 %1850, 87
  %1852 = load ptr, ptr %1827, align 8, !tbaa !9
  %1853 = select i1 %1851, ptr %1848, ptr null
  %1854 = select i1 %1851, ptr null, ptr %1848
  tail call void @do_jump(ptr noundef %1852, ptr noundef %1853, ptr noundef %1854, i32 noundef -1) #17
  %1855 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %1856 = load ptr, ptr %1855, align 8, !tbaa !9
  %1857 = zext i1 %1851 to i64
  %1858 = tail call ptr @build_int_cst(ptr noundef %1856, i64 noundef %1857) #17
  %1859 = load i64, ptr %0, align 8
  %1860 = trunc i64 %1859 to i32
  %1861 = lshr i32 %1860, 26
  %1862 = trunc i32 %1861 to i8
  %1863 = and i8 %1862, 1
  tail call void @expand_assignment(ptr noundef nonnull %82, ptr noundef %1858, i8 noundef zeroext %1863) #18
  tail call void @do_pending_stack_adjust() #17
  %1864 = tail call ptr @emit_label(ptr noundef %1848) #17
  br label %1871

1865:                                             ; preds = %1819, %1839, %1832, %1826, %1822, %1815
  %1866 = load i64, ptr %0, align 8
  %1867 = trunc i64 %1866 to i32
  %1868 = lshr i32 %1867, 26
  %1869 = trunc i32 %1868 to i8
  %1870 = and i8 %1869, 1
  tail call void @expand_assignment(ptr noundef nonnull %82, ptr noundef %81, i8 noundef zeroext %1870) #18
  br label %1871

1871:                                             ; preds = %1865, %1847
  %1872 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  br label %1927

1873:                                             ; preds = %161
  %1874 = tail call fastcc ptr @expand_expr_addr_expr(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %2, i32 noundef %3) #18
  br label %1927

1875:                                             ; preds = %161
  %1876 = tail call fastcc ptr @expand_normal(ptr noundef %82) #18
  %1877 = tail call fastcc ptr @read_complex_part(ptr noundef %1876, i8 noundef zeroext 0) #18
  br label %1927

1878:                                             ; preds = %161
  %1879 = tail call fastcc ptr @expand_normal(ptr noundef %82) #18
  %1880 = tail call fastcc ptr @read_complex_part(ptr noundef %1879, i8 noundef zeroext 1) #18
  br label %1927

1881:                                             ; preds = %161, %161, %161, %161, %161
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9563, ptr noundef nonnull @.str.1) #17
  br label %1882

1882:                                             ; preds = %161, %161, %161, %161, %1881
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9570, ptr noundef nonnull @.str.1) #17
  br label %1883

1883:                                             ; preds = %161, %161, %161, %161, %161, %161, %161, %161, %161, %161, %161, %161, %161, %161, %161, %1882
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9588, ptr noundef nonnull @.str.1) #17
  br label %1884

1884:                                             ; preds = %161, %1883
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9593, ptr noundef nonnull @.str.1) #17
  br label %1885

1885:                                             ; preds = %161, %1884
  %1886 = tail call ptr @expand_expr_real(ptr noundef %82, ptr noundef %169, i32 noundef %2, i32 noundef %3, ptr noundef %4) #18
  br label %1927

1887:                                             ; preds = %161
  %1888 = tail call ptr @optab_for_tree_code(i32 noundef 151, ptr noundef nonnull %38, i32 noundef 0) #17
  call fastcc void @expand_operands(ptr noundef %82, ptr noundef %81, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0) #18
  %1889 = tail call fastcc ptr @expand_normal(ptr noundef %80) #18
  %1890 = load ptr, ptr %6, align 8, !tbaa !5
  %1891 = load ptr, ptr %7, align 8, !tbaa !5
  %1892 = load i32, ptr %8, align 4, !tbaa !22
  %1893 = tail call ptr @expand_ternary_op(i32 noundef %59, ptr noundef %1888, ptr noundef %1890, ptr noundef %1891, ptr noundef %1889, ptr noundef %169, i32 noundef %1892) #17
  %1894 = icmp eq ptr %1893, null
  br i1 %1894, label %1895, label %1927

1895:                                             ; preds = %1887
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9613, ptr noundef nonnull @.str.1) #17
  br label %1927

1896:                                             ; preds = %161
  call fastcc void @expand_operands(ptr noundef %82, ptr noundef %81, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0) #18
  %1897 = tail call fastcc ptr @expand_normal(ptr noundef %80) #18
  %1898 = load ptr, ptr %6, align 8, !tbaa !5
  %1899 = load ptr, ptr %7, align 8, !tbaa !5
  %1900 = load i32, ptr %8, align 4, !tbaa !22
  %1901 = call ptr @expand_widen_pattern_expr(ptr noundef nonnull %9, ptr noundef %1898, ptr noundef %1899, ptr noundef %1897, ptr noundef %169, i32 noundef %1900) #17
  br label %1927

1902:                                             ; preds = %161
  %1903 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %1904 = load ptr, ptr %1903, align 8, !tbaa !9
  %1905 = getelementptr inbounds %struct.tree_exp, ptr %1904, i64 0, i32 3
  %1906 = load ptr, ptr %1905, align 8, !tbaa !9
  %1907 = load i64, ptr %1906, align 8
  %1908 = and i64 %1907, 65535
  %1909 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %1908, i64 11
  %1910 = load i8, ptr %1909, align 1, !tbaa !9
  %1911 = icmp eq i8 %1910, 0
  br i1 %1911, label %1916, label %1912

1912:                                             ; preds = %1902
  %1913 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1906, i64 0, i32 1
  %1914 = load ptr, ptr %1913, align 8, !tbaa !9
  %1915 = icmp eq ptr %1914, null
  br i1 %1915, label %1916, label %1923

1916:                                             ; preds = %1912, %1902
  %1917 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1906, i64 0, i32 4
  %1918 = load i32, ptr %1917, align 8
  %1919 = and i32 %1918, 2
  %1920 = icmp eq i32 %1919, 0
  br i1 %1920, label %1922, label %1921

1921:                                             ; preds = %1916
  tail call void @rest_of_decl_compilation(ptr noundef nonnull %1906, i32 noundef 0, i32 noundef 0) #17
  br label %1923

1922:                                             ; preds = %1916
  tail call void @expand_decl(ptr noundef nonnull %1906) #17
  br label %1923

1923:                                             ; preds = %1921, %1922, %1912
  %1924 = tail call ptr @expand_expr_real(ptr noundef nonnull %1906, ptr noundef %169, i32 noundef %2, i32 noundef %3, ptr noundef %4) #18
  br label %1927

1925:                                             ; preds = %161
  %1926 = call ptr @expand_expr_real_2(ptr noundef nonnull %9, ptr noundef %169, i32 noundef %2, i32 noundef %3) #18
  br label %1927

1927:                                             ; preds = %852, %857, %1662, %1688, %818, %542, %561, %1434, %634, %671, %779, %734, %570, %194, %111, %1895, %1887, %613, %600, %500, %539, %479, %492, %475, %477, %384, %397, %337, %342, %324, %328, %334, %1925, %1923, %1896, %1885, %1878, %1875, %1873, %1871, %1811, %1795, %1749, %1726, %1436, %1388, %1386, %620, %563, %496, %437, %420, %402, %374, %372, %239, %187, %182, %154, %147, %138, %132
  %1928 = phi ptr [ %133, %132 ], [ %139, %138 ], [ %151, %147 ], [ %160, %154 ], [ %1926, %1925 ], [ %1924, %1923 ], [ %1901, %1896 ], [ %1886, %1885 ], [ %1880, %1878 ], [ %1877, %1875 ], [ %1874, %1873 ], [ %1872, %1871 ], [ %1812, %1811 ], [ %1796, %1795 ], [ %1750, %1749 ], [ %1731, %1726 ], [ %1437, %1436 ], [ %1435, %1434 ], [ %1391, %1388 ], [ %1387, %1386 ], [ %627, %620 ], [ %564, %563 ], [ %499, %496 ], [ %439, %437 ], [ %422, %420 ], [ %405, %402 ], [ %379, %374 ], [ %358, %372 ], [ %242, %239 ], [ %196, %194 ], [ %190, %187 ], [ %183, %182 ], [ %322, %334 ], [ %322, %328 ], [ %322, %324 ], [ %338, %342 ], [ %338, %337 ], [ %385, %384 ], [ %401, %397 ], [ %166, %477 ], [ %166, %475 ], [ %480, %492 ], [ %480, %479 ], [ %501, %500 ], [ %540, %539 ], [ %614, %613 ], [ %571, %570 ], [ %602, %600 ], [ %1893, %1887 ], [ null, %1895 ], [ %88, %111 ], [ %673, %671 ], [ %635, %634 ], [ %736, %734 ], [ %786, %779 ], [ %562, %561 ], [ %88, %542 ], [ %824, %818 ], [ %1689, %1688 ], [ %1663, %1662 ], [ %866, %857 ], [ %856, %852 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  ret ptr %1928
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_expr_real_2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %7 = load i32, ptr %0, align 8, !tbaa !144
  %8 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !150
  %10 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !146
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 14
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  %17 = load i64, ptr %11, align 8
  br label %23

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i64 [ %17, %15 ], [ %12, %18 ]
  %25 = phi i32 [ %16, %15 ], [ %22, %18 ]
  %26 = trunc i64 %24 to i32
  %27 = lshr i32 %26, 21
  %28 = and i32 %27, 1
  %29 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !147
  %31 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !148
  %33 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %7) #18, !range !161
  %34 = add nsw i32 %33, -1
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7239, ptr noundef nonnull @.str.1) #17
  br label %37

37:                                               ; preds = %23, %36
  %38 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  switch i32 %7, label %46 [
    i32 118, label %41
    i32 116, label %41
    i32 113, label %41
    i32 56, label %41
  ]

41:                                               ; preds = %40, %40, %40, %40
  %42 = load i64, ptr %11, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 19
  br i1 %44, label %45, label %46

45:                                               ; preds = %37, %41
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7247, ptr noundef nonnull @.str.1) #17
  br label %46

46:                                               ; preds = %40, %41, %45
  %47 = load i64, ptr %11, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 8
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = zext i32 %25 to i64
  %52 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !23
  %54 = zext i16 %53 to i32
  %55 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1023
  %58 = icmp ult i32 %57, %54
  br label %59

59:                                               ; preds = %50, %46
  %60 = phi i1 [ false, %46 ], [ %58, %50 ]
  %61 = icmp eq i32 %3, 1
  %62 = and i1 %61, %60
  %63 = select i1 %62, ptr null, ptr %1
  %64 = tail call fastcc ptr @get_subtarget(ptr noundef %63) #18
  switch i32 %7, label %1442 [
    i32 117, label %65
    i32 112, label %65
    i32 116, label %65
    i32 113, label %65
    i32 114, label %262
    i32 66, label %302
    i32 63, label %316
    i32 64, label %576
    i32 65, label %705
    i32 67, label %979
    i32 69, label %979
    i32 68, label %979
    i32 70, label %979
    i32 76, label %979
    i32 75, label %1443
    i32 71, label %988
    i32 73, label %988
    i32 72, label %988
    i32 74, label %988
    i32 115, label %993
    i32 77, label %1014
    i32 78, label %1022
    i32 79, label %1057
    i32 82, label %1067
    i32 81, label %1083
    i32 80, label %1083
    i32 90, label %1169
    i32 93, label %1175
    i32 89, label %1443
    i32 94, label %1176
    i32 87, label %1443
    i32 95, label %1177
    i32 88, label %1443
    i32 85, label %1178
    i32 86, label %1178
    i32 83, label %1301
    i32 84, label %1301
    i32 97, label %1316
    i32 98, label %1316
    i32 99, label %1316
    i32 100, label %1316
    i32 101, label %1316
    i32 102, label %1316
    i32 103, label %1316
    i32 104, label %1316
    i32 105, label %1316
    i32 106, label %1316
    i32 107, label %1316
    i32 108, label %1316
    i32 109, label %1316
    i32 110, label %1316
    i32 96, label %1351
    i32 123, label %1358
    i32 168, label %1378
    i32 164, label %1382
    i32 165, label %1382
    i32 166, label %1382
    i32 181, label %1388
    i32 182, label %1388
    i32 183, label %1395
    i32 184, label %1395
    i32 170, label %1402
    i32 171, label %1402
    i32 174, label %1404
    i32 175, label %1404
    i32 176, label %1410
    i32 177, label %1410
    i32 172, label %1423
    i32 173, label %1423
    i32 178, label %1429
    i32 179, label %1429
    i32 180, label %1429
  ]

65:                                               ; preds = %59, %59, %59, %59
  %66 = load ptr, ptr @global_trees, align 16, !tbaa !5
  %67 = icmp eq ptr %30, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  br label %1464

70:                                               ; preds = %65
  %71 = icmp eq i64 %48, 17
  %72 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !9
  br i1 %71, label %74, label %173

74:                                               ; preds = %70
  %75 = icmp eq i32 %25, 1
  br i1 %75, label %76, label %93

76:                                               ; preds = %74
  %77 = load i64, ptr %73, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 14
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = tail call i32 @vector_type_mode(ptr noundef nonnull %73) #17
  br label %87

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.tree_type, ptr %73, i64 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 255
  br label %87

87:                                               ; preds = %82, %80
  %88 = phi i32 [ %81, %80 ], [ %86, %82 ]
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %30, ptr noundef %63, i32 noundef %2, i32 noundef %3) #18
  %92 = tail call ptr @copy_rtx(ptr noundef %91) #17
  tail call void @set_mem_attributes(ptr noundef %92, ptr noundef nonnull %11, i32 noundef 0) #17
  br label %1464

93:                                               ; preds = %87, %74
  %94 = icmp eq ptr %63, null
  br i1 %94, label %95, label %125

95:                                               ; preds = %93
  %96 = load i64, ptr %11, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 14
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %106

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %103 = load i32, ptr %102, align 4
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  br label %106

106:                                              ; preds = %101, %99
  %107 = phi i32 [ %100, %99 ], [ %105, %101 ]
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %123, label %109

109:                                              ; preds = %106
  %110 = load i64, ptr %11, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 14
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %120

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = lshr i32 %117, 16
  %119 = and i32 %118, 255
  br label %120

120:                                              ; preds = %115, %113
  %121 = phi i32 [ %114, %113 ], [ %119, %115 ]
  %122 = tail call ptr @gen_reg_rtx(i32 noundef %121) #17
  br label %125

123:                                              ; preds = %106
  %124 = tail call ptr @assign_temp(ptr noundef nonnull %11, i32 noundef 0, i32 noundef 1, i32 noundef 1) #17
  br label %125

125:                                              ; preds = %120, %123, %93
  %126 = phi ptr [ %122, %120 ], [ %124, %123 ], [ %1, %93 ]
  %127 = load i32, ptr %126, align 8
  %128 = trunc i32 %127 to i16
  switch i16 %128, label %145 [
    i16 43, label %129
    i16 37, label %146
  ]

129:                                              ; preds = %125
  %130 = load i64, ptr %73, align 8
  %131 = and i64 %130, 65535
  %132 = icmp eq i64 %131, 14
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = tail call i32 @vector_type_mode(ptr noundef nonnull %73) #17
  br label %140

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.tree_type, ptr %73, i64 0, i32 6
  %137 = load i32, ptr %136, align 4
  %138 = lshr i32 %137, 16
  %139 = and i32 %138, 255
  br label %140

140:                                              ; preds = %135, %133
  %141 = phi i32 [ %134, %133 ], [ %139, %135 ]
  %142 = tail call ptr @adjust_address_1(ptr noundef nonnull %126, i32 noundef %141, i64 noundef 0, i32 noundef 1, i32 noundef 1) #17
  %143 = zext i1 %61 to i32
  %144 = tail call ptr @store_expr(ptr noundef nonnull %30, ptr noundef %142, i32 noundef %143, i8 noundef zeroext 0) #18
  br label %1464

145:                                              ; preds = %125
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7303, ptr noundef nonnull @.str.1) #17
  br label %146

146:                                              ; preds = %125, %145
  %147 = load ptr, ptr %72, align 8, !tbaa !9
  %148 = tail call i64 @int_size_in_bytes(ptr noundef %147) #17
  %149 = zext i32 %25 to i64
  %150 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !9
  %152 = zext i8 %151 to i64
  %153 = icmp slt i64 %148, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load ptr, ptr %72, align 8, !tbaa !9
  %156 = tail call i64 @int_size_in_bytes(ptr noundef %155) #17
  br label %157

157:                                              ; preds = %146, %154
  %158 = phi i64 [ %156, %154 ], [ %152, %146 ]
  %159 = shl nsw i64 %158, 3
  %160 = load i64, ptr %73, align 8
  %161 = and i64 %160, 65535
  %162 = icmp eq i64 %161, 14
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = tail call i32 @vector_type_mode(ptr noundef nonnull %73) #17
  br label %170

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.tree_type, ptr %73, i64 0, i32 6
  %167 = load i32, ptr %166, align 4
  %168 = lshr i32 %167, 16
  %169 = and i32 %168, 255
  br label %170

170:                                              ; preds = %165, %163
  %171 = phi i32 [ %164, %163 ], [ %169, %165 ]
  %172 = tail call fastcc ptr @store_field(ptr noundef nonnull %126, i64 noundef %159, i64 noundef 0, i32 noundef %171, ptr noundef nonnull %30, ptr noundef nonnull %11, i32 noundef 0, i8 noundef zeroext 0) #18
  br label %1464

173:                                              ; preds = %70
  %174 = load i64, ptr %73, align 8
  %175 = and i64 %174, 65535
  %176 = icmp eq i64 %175, 14
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = tail call i32 @vector_type_mode(ptr noundef nonnull %73) #17
  br label %184

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.tree_type, ptr %73, i64 0, i32 6
  %181 = load i32, ptr %180, align 4
  %182 = lshr i32 %181, 16
  %183 = and i32 %182, 255
  br label %184

184:                                              ; preds = %179, %177
  %185 = phi i32 [ %178, %177 ], [ %183, %179 ]
  %186 = icmp eq i32 %25, %185
  br i1 %186, label %187, label %205

187:                                              ; preds = %184
  %188 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %30, ptr noundef %63, i32 noundef 0, i32 noundef %3) #18
  store ptr %188, ptr %5, align 8, !tbaa !5
  %189 = load ptr, ptr %72, align 8, !tbaa !9
  %190 = load i64, ptr %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = lshr i32 %191, 21
  %193 = and i32 %192, 1
  %194 = icmp eq i32 %193, %28
  br i1 %194, label %201, label %195

195:                                              ; preds = %187
  %196 = load i32, ptr %188, align 8
  %197 = and i32 %196, 65535
  %198 = icmp eq i32 %197, 39
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = and i32 %196, -268500953
  store i32 %200, ptr %188, align 8
  br label %201

201:                                              ; preds = %199, %195, %187
  %202 = load ptr, ptr %5, align 8, !tbaa !5
  br i1 %60, label %203, label %1464

203:                                              ; preds = %201
  %204 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %202, ptr noundef %63, ptr noundef nonnull %11) #18
  br label %1464

205:                                              ; preds = %184
  %206 = icmp eq i32 %3, 2
  %207 = select i1 %206, i32 0, i32 %3
  %208 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %30, ptr noundef null, i32 noundef %25, i32 noundef %207) #18
  %209 = load i32, ptr %208, align 8
  %210 = lshr i32 %209, 16
  %211 = and i32 %210, 255
  %212 = icmp eq i32 %211, %25
  br i1 %212, label %258, label %213

213:                                              ; preds = %205
  %214 = and i32 %209, 65535
  %215 = zext nneg i32 %214 to i64
  %216 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !22
  %218 = icmp eq i32 %217, 9
  br i1 %218, label %219, label %243

219:                                              ; preds = %213
  %220 = load ptr, ptr %72, align 8, !tbaa !9
  %221 = load i64, ptr %220, align 8
  %222 = and i64 %221, 65535
  %223 = icmp eq i64 %222, 14
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = tail call i32 @vector_type_mode(ptr noundef nonnull %220) #17
  br label %231

226:                                              ; preds = %219
  %227 = getelementptr inbounds %struct.tree_type, ptr %220, i64 0, i32 6
  %228 = load i32, ptr %227, align 4
  %229 = lshr i32 %228, 16
  %230 = and i32 %229, 255
  br label %231

231:                                              ; preds = %226, %224
  %232 = phi i32 [ %225, %224 ], [ %230, %226 ]
  %233 = icmp eq i32 %3, 4
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = tail call i32 @subreg_lowpart_offset(i32 noundef %25, i32 noundef %232) #17
  %236 = tail call ptr @simplify_gen_subreg(i32 noundef %25, ptr noundef nonnull %208, i32 noundef %232, i32 noundef %235) #17
  br label %258

237:                                              ; preds = %231
  %238 = load i64, ptr %220, align 8
  %239 = trunc i64 %238 to i32
  %240 = lshr i32 %239, 21
  %241 = and i32 %240, 1
  %242 = tail call ptr @convert_modes(i32 noundef %25, i32 noundef %232, ptr noundef nonnull %208, i32 noundef %241) #18
  br label %258

243:                                              ; preds = %213
  %244 = icmp eq i32 %3, 4
  br i1 %244, label %245, label %248

245:                                              ; preds = %243
  %246 = or disjoint i32 %28, 98
  %247 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %246, i32 noundef %25, ptr noundef nonnull %208) #17
  br label %258

248:                                              ; preds = %243
  %249 = icmp eq ptr %63, null
  %250 = load ptr, ptr %72, align 8, !tbaa !9
  %251 = load i64, ptr %250, align 8
  %252 = trunc i64 %251 to i32
  %253 = lshr i32 %252, 21
  %254 = and i32 %253, 1
  br i1 %249, label %255, label %257

255:                                              ; preds = %248
  %256 = tail call ptr @convert_to_mode(i32 noundef %25, ptr noundef nonnull %208, i32 noundef %254) #18
  br label %258

257:                                              ; preds = %248
  tail call void @convert_move(ptr noundef nonnull %63, ptr noundef nonnull %208, i32 noundef %254) #18
  br label %258

258:                                              ; preds = %234, %237, %255, %257, %245, %205
  %259 = phi ptr [ %256, %255 ], [ %1, %257 ], [ %247, %245 ], [ %208, %205 ], [ %242, %237 ], [ %236, %234 ]
  br i1 %60, label %260, label %1464

260:                                              ; preds = %258
  %261 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %259, ptr noundef %63, ptr noundef nonnull %11) #18
  br label %1464

262:                                              ; preds = %59
  %263 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %264 = load ptr, ptr %263, align 8, !tbaa !9
  %265 = trunc i64 %47 to i16
  switch i16 %265, label %266 [
    i16 10, label %267
    i16 12, label %267
  ]

266:                                              ; preds = %262
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7376, ptr noundef nonnull @.str.1) #17
  br label %267

267:                                              ; preds = %262, %262, %266
  %268 = load i64, ptr %264, align 8
  %269 = trunc i64 %268 to i16
  switch i16 %269, label %270 [
    i16 10, label %271
    i16 12, label %271
  ]

270:                                              ; preds = %267
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7377, ptr noundef nonnull @.str.1) #17
  br label %271

271:                                              ; preds = %267, %267, %270
  %272 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !9
  %274 = load i64, ptr %273, align 8
  %275 = lshr i64 %274, 56
  %276 = trunc i64 %275 to i8
  %277 = getelementptr inbounds %struct.tree_common, ptr %264, i64 0, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !9
  %279 = load i64, ptr %278, align 8
  %280 = lshr i64 %279, 56
  %281 = trunc i64 %280 to i8
  %282 = icmp eq i64 %275, %280
  br i1 %282, label %283, label %284

283:                                              ; preds = %271
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7384, ptr noundef nonnull @.str.1) #17
  br label %284

284:                                              ; preds = %271, %283
  %285 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 5), align 8, !tbaa !162
  %286 = tail call zeroext i8 %285(i8 noundef zeroext %276, i8 noundef zeroext %281) #17
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  %289 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 5), align 8, !tbaa !162
  %290 = tail call zeroext i8 %289(i8 noundef zeroext %281, i8 noundef zeroext %276) #17
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %298, label %292

292:                                              ; preds = %288, %284
  %293 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %30, ptr noundef null, i32 noundef 0, i32 noundef %3) #18
  %294 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 6), align 8, !tbaa !163
  %295 = tail call ptr %294(ptr noundef %293, ptr noundef nonnull %264, ptr noundef nonnull %11) #17
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %1464

297:                                              ; preds = %292
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7393, ptr noundef nonnull @.str.1) #17
  br label %1464

298:                                              ; preds = %288
  %299 = sext i32 %25 to i64
  %300 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %299
  %301 = load ptr, ptr %300, align 8, !tbaa !5
  br label %1464

302:                                              ; preds = %59
  %303 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %304 = getelementptr inbounds %struct.tree_type, ptr %303, i64 0, i32 6
  %305 = load i32, ptr %304, align 4
  %306 = and i32 %305, 1023
  %307 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %308 = load i32, ptr %307, align 4
  %309 = and i32 %308, 1023
  %310 = icmp ult i32 %306, %309
  br i1 %310, label %311, label %316

311:                                              ; preds = %302
  %312 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !5
  %313 = tail call ptr @fold_convert_loc(i32 noundef %9, ptr noundef %312, ptr noundef %32) #17
  %314 = tail call ptr @fold_convert_loc(i32 noundef %9, ptr noundef nonnull %11, ptr noundef %313) #17
  %315 = load i64, ptr %11, align 8
  br label %316

316:                                              ; preds = %302, %311, %59
  %317 = phi i64 [ %47, %59 ], [ %315, %311 ], [ %47, %302 ]
  %318 = phi ptr [ %32, %59 ], [ %314, %311 ], [ %32, %302 ]
  %319 = trunc i64 %317 to i16
  switch i16 %319, label %408 [
    i16 8, label %320
    i16 11, label %320
  ]

320:                                              ; preds = %316, %316
  %321 = tail call fastcc ptr @get_def_for_expr(ptr noundef %30, i32 noundef 65) #18
  %322 = icmp eq ptr %321, null
  br i1 %322, label %408, label %323

323:                                              ; preds = %320
  %324 = load i64, ptr %11, align 8
  %325 = and i64 %324, 65535
  %326 = icmp eq i64 %325, 8
  %327 = select i1 %326, i32 116, i32 115
  %328 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %321) #18
  %329 = tail call fastcc ptr @get_def_for_expr(ptr noundef %328, i32 noundef %327) #18
  %330 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef nonnull %321) #18
  %331 = tail call fastcc ptr @get_def_for_expr(ptr noundef %330, i32 noundef %327) #18
  %332 = icmp ne ptr %329, null
  %333 = icmp ne ptr %331, null
  %334 = select i1 %332, i1 %333, i1 false
  br i1 %334, label %335, label %408

335:                                              ; preds = %323
  %336 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %329) #18
  %337 = icmp eq ptr %336, null
  br i1 %337, label %408, label %338

338:                                              ; preds = %335
  %339 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %331) #18
  %340 = icmp eq ptr %339, null
  br i1 %340, label %408, label %341

341:                                              ; preds = %338
  %342 = getelementptr inbounds %struct.tree_common, ptr %336, i64 0, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !9
  %344 = getelementptr inbounds %struct.tree_type, ptr %343, i64 0, i32 6
  %345 = load i32, ptr %344, align 4
  %346 = and i32 %345, 1023
  %347 = getelementptr inbounds %struct.tree_common, ptr %328, i64 0, i32 2
  %348 = load ptr, ptr %347, align 8, !tbaa !9
  %349 = getelementptr inbounds %struct.tree_type, ptr %348, i64 0, i32 6
  %350 = load i32, ptr %349, align 4
  %351 = and i32 %350, 1023
  %352 = icmp ult i32 %346, %351
  br i1 %352, label %353, label %408

353:                                              ; preds = %341
  %354 = getelementptr inbounds %struct.tree_common, ptr %339, i64 0, i32 2
  %355 = load ptr, ptr %354, align 8, !tbaa !9
  %356 = getelementptr inbounds %struct.tree_type, ptr %355, i64 0, i32 6
  %357 = load i32, ptr %356, align 4
  %358 = and i32 %357, 1023
  %359 = icmp eq i32 %346, %358
  br i1 %359, label %360, label %408

360:                                              ; preds = %353
  %361 = load i64, ptr %343, align 8
  %362 = load i64, ptr %355, align 8
  %363 = xor i64 %362, %361
  %364 = and i64 %363, 2097152
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %366, label %408

366:                                              ; preds = %360
  %367 = and i64 %361, 65535
  %368 = icmp eq i64 %367, 14
  br i1 %368, label %369, label %373

369:                                              ; preds = %366
  %370 = tail call i32 @vector_type_mode(ptr noundef nonnull %343) #17
  %371 = load i64, ptr %343, align 8
  %372 = load ptr, ptr %347, align 8, !tbaa !9
  br label %376

373:                                              ; preds = %366
  %374 = lshr i32 %345, 16
  %375 = and i32 %374, 255
  br label %376

376:                                              ; preds = %373, %369
  %377 = phi ptr [ %372, %369 ], [ %348, %373 ]
  %378 = phi i64 [ %371, %369 ], [ %361, %373 ]
  %379 = phi i32 [ %370, %369 ], [ %375, %373 ]
  %380 = load i64, ptr %377, align 8
  %381 = and i64 %380, 2147483648
  %382 = icmp eq i64 %381, 0
  %383 = and i64 %378, 2097152
  %384 = icmp eq i64 %383, 0
  %385 = select i1 %384, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 23), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 24)
  %386 = select i1 %384, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 25), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 26)
  %387 = select i1 %382, ptr %385, ptr %386
  %388 = zext i32 %379 to i64
  %389 = getelementptr inbounds [87 x i8], ptr @mode_2xwider, i64 0, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !9
  %391 = zext i8 %390 to i32
  %392 = icmp eq i32 %25, %391
  br i1 %392, label %393, label %408

393:                                              ; preds = %376
  %394 = zext nneg i32 %25 to i64
  %395 = getelementptr inbounds %struct.optab_d, ptr %387, i64 0, i32 4, i64 %394
  %396 = load i32, ptr %395, align 4, !tbaa !25
  %397 = icmp eq i32 %396, 2956
  br i1 %397, label %408, label %398

398:                                              ; preds = %393
  call fastcc void @expand_operands(ptr noundef nonnull %336, ptr noundef nonnull %339, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %399 = tail call fastcc ptr @expand_expr(ptr noundef %318, ptr noundef %64, i32 noundef 0, i32 noundef 0) #18
  %400 = load ptr, ptr %5, align 8, !tbaa !5
  %401 = load ptr, ptr %6, align 8, !tbaa !5
  %402 = tail call ptr @expand_ternary_op(i32 noundef %25, ptr noundef nonnull %387, ptr noundef %400, ptr noundef %401, ptr noundef %399, ptr noundef %63, i32 noundef %28) #17
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %405

404:                                              ; preds = %398
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7460, ptr noundef nonnull @.str.1) #17
  br label %405

405:                                              ; preds = %398, %404
  br i1 %60, label %406, label %1464

406:                                              ; preds = %405
  %407 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %402, ptr noundef %63, ptr noundef nonnull %11) #18
  br label %1464

408:                                              ; preds = %376, %393, %323, %335, %338, %341, %353, %360, %316, %320
  %409 = load i64, ptr %30, align 8
  %410 = and i64 %409, 65535
  %411 = icmp eq i64 %410, 63
  br i1 %411, label %412, label %451

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 0, i32 3
  %414 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 1
  %415 = load ptr, ptr %414, align 8, !tbaa !9
  %416 = load i64, ptr %415, align 8
  %417 = and i64 %416, 65535
  %418 = icmp eq i64 %417, 23
  br i1 %418, label %419, label %451

419:                                              ; preds = %412
  %420 = load i64, ptr %318, align 8
  %421 = and i64 %420, 65535
  %422 = icmp eq i64 %421, 32
  br i1 %422, label %423, label %451

423:                                              ; preds = %419
  %424 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %318, i64 0, i32 1
  %425 = load ptr, ptr %424, align 8, !tbaa !9
  %426 = icmp eq ptr %425, null
  br i1 %426, label %427, label %429

427:                                              ; preds = %423
  tail call void @make_decl_rtl(ptr noundef nonnull %318) #17
  %428 = load ptr, ptr %424, align 8, !tbaa !9
  br label %429

429:                                              ; preds = %423, %427
  %430 = phi ptr [ %428, %427 ], [ %425, %423 ]
  %431 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !5
  %432 = icmp eq ptr %430, %431
  br i1 %432, label %449, label %433

433:                                              ; preds = %429
  %434 = icmp eq ptr %430, null
  br i1 %434, label %435, label %437

435:                                              ; preds = %433
  tail call void @make_decl_rtl(ptr noundef nonnull %318) #17
  %436 = load ptr, ptr %424, align 8, !tbaa !9
  br label %437

437:                                              ; preds = %433, %435
  %438 = phi ptr [ %436, %435 ], [ %430, %433 ]
  %439 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !5
  %440 = icmp eq ptr %438, %439
  br i1 %440, label %449, label %441

441:                                              ; preds = %437
  %442 = icmp eq ptr %438, null
  br i1 %442, label %443, label %445

443:                                              ; preds = %441
  tail call void @make_decl_rtl(ptr noundef nonnull %318) #17
  %444 = load ptr, ptr %424, align 8, !tbaa !9
  br label %445

445:                                              ; preds = %441, %443
  %446 = phi ptr [ %444, %443 ], [ %438, %441 ]
  %447 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !5
  %448 = icmp eq ptr %446, %447
  br i1 %448, label %449, label %451

449:                                              ; preds = %445, %437, %429
  %450 = load ptr, ptr %413, align 8, !tbaa !9
  store ptr %318, ptr %413, align 8, !tbaa !9
  br label %451

451:                                              ; preds = %449, %445, %419, %412, %408
  %452 = phi ptr [ %450, %449 ], [ %318, %445 ], [ %318, %419 ], [ %318, %412 ], [ %318, %408 ]
  %453 = icmp eq i32 %3, 4
  switch i32 %3, label %454 [
    i32 4, label %462
    i32 2, label %462
  ]

454:                                              ; preds = %451
  %455 = load i32, ptr @ptr_mode, align 4, !tbaa !22
  %456 = icmp eq i32 %25, %455
  br i1 %456, label %457, label %558

457:                                              ; preds = %454
  %458 = icmp eq i32 %28, 0
  %459 = load i32, ptr @flag_trapv, align 4
  %460 = icmp ne i32 %459, 0
  %461 = select i1 %458, i1 %460, i1 false
  br i1 %461, label %558, label %462

462:                                              ; preds = %451, %451, %457
  %463 = select i1 %61, ptr null, ptr %63
  %464 = load i64, ptr %30, align 8
  %465 = and i64 %464, 65535
  %466 = icmp eq i64 %465, 23
  br i1 %466, label %469, label %467

467:                                              ; preds = %462
  %468 = load i64, ptr %452, align 8
  br label %506

469:                                              ; preds = %462
  %470 = zext i32 %25 to i64
  %471 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %470
  %472 = load i8, ptr %471, align 1, !tbaa !9
  %473 = icmp ugt i8 %472, 8
  %474 = load i64, ptr %452, align 8
  %475 = and i64 %474, 131072
  %476 = icmp eq i64 %475, 0
  %477 = select i1 %473, i1 true, i1 %476
  br i1 %477, label %506, label %478

478:                                              ; preds = %469
  %479 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %452, ptr noundef %64, i32 noundef 0, i32 noundef 2) #18
  %480 = getelementptr inbounds %struct.tree_int_cst, ptr %30, i64 0, i32 1
  %481 = load i64, ptr %480, align 8, !tbaa !9
  %482 = getelementptr inbounds %struct.tree_common, ptr %452, i64 0, i32 2
  %483 = load ptr, ptr %482, align 8, !tbaa !9
  %484 = load i64, ptr %483, align 8
  %485 = and i64 %484, 65535
  %486 = icmp eq i64 %485, 14
  br i1 %486, label %487, label %489

487:                                              ; preds = %478
  %488 = tail call i32 @vector_type_mode(ptr noundef nonnull %483) #17
  br label %494

489:                                              ; preds = %478
  %490 = getelementptr inbounds %struct.tree_type, ptr %483, i64 0, i32 6
  %491 = load i32, ptr %490, align 4
  %492 = lshr i32 %491, 16
  %493 = and i32 %492, 255
  br label %494

494:                                              ; preds = %489, %487
  %495 = phi i32 [ %488, %487 ], [ %493, %489 ]
  %496 = tail call ptr @immed_double_const(i64 noundef %481, i64 noundef 0, i32 noundef %495) #17
  %497 = getelementptr inbounds %struct.rtx_def, ptr %496, i64 0, i32 1
  %498 = load i64, ptr %497, align 8, !tbaa !9
  %499 = tail call ptr @plus_constant(ptr noundef %479, i64 noundef %498) #17
  switch i32 %3, label %500 [
    i32 4, label %502
    i32 2, label %502
  ]

500:                                              ; preds = %494
  %501 = tail call ptr @force_operand(ptr noundef %499, ptr noundef %463) #18
  br label %502

502:                                              ; preds = %494, %494, %500
  %503 = phi ptr [ %499, %494 ], [ %499, %494 ], [ %501, %500 ]
  br i1 %60, label %504, label %1464

504:                                              ; preds = %502
  %505 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %503, ptr noundef %463, ptr noundef nonnull %11) #18
  br label %1464

506:                                              ; preds = %467, %469
  %507 = phi i64 [ %468, %467 ], [ %474, %469 ]
  %508 = and i64 %507, 65535
  %509 = icmp eq i64 %508, 23
  br i1 %509, label %510, label %558

510:                                              ; preds = %506
  %511 = zext i32 %25 to i64
  %512 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %511
  %513 = load i8, ptr %512, align 1, !tbaa !9
  %514 = icmp ugt i8 %513, 8
  %515 = and i64 %464, 131072
  %516 = icmp eq i64 %515, 0
  %517 = or i1 %516, %514
  br i1 %517, label %558, label %518

518:                                              ; preds = %510
  %519 = select i1 %453, i32 4, i32 2
  %520 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %30, ptr noundef %64, i32 noundef 0, i32 noundef %519) #18
  store ptr %520, ptr %5, align 8, !tbaa !5
  %521 = load i32, ptr %520, align 8
  %522 = and i32 %521, 65535
  %523 = zext nneg i32 %522 to i64
  %524 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %523
  %525 = load i32, ptr %524, align 4, !tbaa !22
  %526 = icmp eq i32 %525, 9
  br i1 %526, label %531, label %527

527:                                              ; preds = %518
  %528 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %452, ptr noundef null, i32 noundef 0, i32 noundef %3) #18
  store ptr %528, ptr %6, align 8, !tbaa !5
  switch i32 %3, label %1446 [
    i32 4, label %529
    i32 2, label %529
  ]

529:                                              ; preds = %527, %527
  %530 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %25, ptr noundef nonnull %520, ptr noundef %528) #17
  br label %1464

531:                                              ; preds = %518
  %532 = getelementptr inbounds %struct.tree_int_cst, ptr %452, i64 0, i32 1
  %533 = load i64, ptr %532, align 8, !tbaa !9
  %534 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %535 = load ptr, ptr %534, align 8, !tbaa !9
  %536 = load i64, ptr %535, align 8
  %537 = and i64 %536, 65535
  %538 = icmp eq i64 %537, 14
  br i1 %538, label %539, label %541

539:                                              ; preds = %531
  %540 = tail call i32 @vector_type_mode(ptr noundef nonnull %535) #17
  br label %546

541:                                              ; preds = %531
  %542 = getelementptr inbounds %struct.tree_type, ptr %535, i64 0, i32 6
  %543 = load i32, ptr %542, align 4
  %544 = lshr i32 %543, 16
  %545 = and i32 %544, 255
  br label %546

546:                                              ; preds = %541, %539
  %547 = phi i32 [ %540, %539 ], [ %545, %541 ]
  %548 = tail call ptr @immed_double_const(i64 noundef %533, i64 noundef 0, i32 noundef %547) #17
  %549 = getelementptr inbounds %struct.rtx_def, ptr %548, i64 0, i32 1
  %550 = load i64, ptr %549, align 8, !tbaa !9
  %551 = tail call ptr @plus_constant(ptr noundef nonnull %520, i64 noundef %550) #17
  switch i32 %3, label %552 [
    i32 4, label %554
    i32 2, label %554
  ]

552:                                              ; preds = %546
  %553 = tail call ptr @force_operand(ptr noundef %551, ptr noundef %463) #18
  br label %554

554:                                              ; preds = %546, %546, %552
  %555 = phi ptr [ %551, %546 ], [ %551, %546 ], [ %553, %552 ]
  br i1 %60, label %556, label %1464

556:                                              ; preds = %554
  %557 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %555, ptr noundef %463, ptr noundef nonnull %11) #18
  br label %1464

558:                                              ; preds = %510, %506, %457, %454
  %559 = phi ptr [ %463, %510 ], [ %463, %506 ], [ %63, %457 ], [ %63, %454 ]
  switch i32 %3, label %563 [
    i32 4, label %560
    i32 2, label %560
  ]

560:                                              ; preds = %558, %558
  %561 = load i32, ptr @ptr_mode, align 4, !tbaa !22
  %562 = icmp eq i32 %25, %561
  br i1 %562, label %570, label %563

563:                                              ; preds = %558, %560
  call fastcc void @expand_operands(ptr noundef nonnull %30, ptr noundef %452, ptr noundef %64, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %564 = load ptr, ptr %5, align 8, !tbaa !5
  %565 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %566 = icmp eq ptr %564, %565
  %567 = load ptr, ptr %6, align 8, !tbaa !5
  br i1 %566, label %1464, label %568

568:                                              ; preds = %563
  %569 = icmp eq ptr %567, %565
  br i1 %569, label %1464, label %1446

570:                                              ; preds = %560
  call fastcc void @expand_operands(ptr noundef nonnull %30, ptr noundef %452, ptr noundef %64, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %3) #18
  %571 = load ptr, ptr %5, align 8, !tbaa !5
  %572 = load ptr, ptr %6, align 8, !tbaa !5
  %573 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %25, ptr noundef %571, ptr noundef %572) #17
  br i1 %60, label %574, label %1464

574:                                              ; preds = %570
  %575 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %573, ptr noundef %559, ptr noundef nonnull %11) #18
  br label %1464

576:                                              ; preds = %59
  %577 = trunc i64 %47 to i16
  switch i16 %577, label %666 [
    i16 8, label %578
    i16 11, label %578
  ]

578:                                              ; preds = %576, %576
  %579 = tail call fastcc ptr @get_def_for_expr(ptr noundef %32, i32 noundef 65) #18
  %580 = icmp eq ptr %579, null
  br i1 %580, label %666, label %581

581:                                              ; preds = %578
  %582 = load i64, ptr %11, align 8
  %583 = and i64 %582, 65535
  %584 = icmp eq i64 %583, 8
  %585 = select i1 %584, i32 116, i32 115
  %586 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %579) #18
  %587 = tail call fastcc ptr @get_def_for_expr(ptr noundef %586, i32 noundef %585) #18
  %588 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef nonnull %579) #18
  %589 = tail call fastcc ptr @get_def_for_expr(ptr noundef %588, i32 noundef %585) #18
  %590 = icmp ne ptr %587, null
  %591 = icmp ne ptr %589, null
  %592 = select i1 %590, i1 %591, i1 false
  br i1 %592, label %593, label %666

593:                                              ; preds = %581
  %594 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %587) #18
  %595 = icmp eq ptr %594, null
  br i1 %595, label %666, label %596

596:                                              ; preds = %593
  %597 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %589) #18
  %598 = icmp eq ptr %597, null
  br i1 %598, label %666, label %599

599:                                              ; preds = %596
  %600 = getelementptr inbounds %struct.tree_common, ptr %594, i64 0, i32 2
  %601 = load ptr, ptr %600, align 8, !tbaa !9
  %602 = getelementptr inbounds %struct.tree_type, ptr %601, i64 0, i32 6
  %603 = load i32, ptr %602, align 4
  %604 = and i32 %603, 1023
  %605 = getelementptr inbounds %struct.tree_common, ptr %586, i64 0, i32 2
  %606 = load ptr, ptr %605, align 8, !tbaa !9
  %607 = getelementptr inbounds %struct.tree_type, ptr %606, i64 0, i32 6
  %608 = load i32, ptr %607, align 4
  %609 = and i32 %608, 1023
  %610 = icmp ult i32 %604, %609
  br i1 %610, label %611, label %666

611:                                              ; preds = %599
  %612 = getelementptr inbounds %struct.tree_common, ptr %597, i64 0, i32 2
  %613 = load ptr, ptr %612, align 8, !tbaa !9
  %614 = getelementptr inbounds %struct.tree_type, ptr %613, i64 0, i32 6
  %615 = load i32, ptr %614, align 4
  %616 = and i32 %615, 1023
  %617 = icmp eq i32 %604, %616
  br i1 %617, label %618, label %666

618:                                              ; preds = %611
  %619 = load i64, ptr %601, align 8
  %620 = load i64, ptr %613, align 8
  %621 = xor i64 %620, %619
  %622 = and i64 %621, 2097152
  %623 = icmp eq i64 %622, 0
  br i1 %623, label %624, label %666

624:                                              ; preds = %618
  %625 = and i64 %619, 65535
  %626 = icmp eq i64 %625, 14
  br i1 %626, label %627, label %631

627:                                              ; preds = %624
  %628 = tail call i32 @vector_type_mode(ptr noundef nonnull %601) #17
  %629 = load i64, ptr %601, align 8
  %630 = load ptr, ptr %605, align 8, !tbaa !9
  br label %634

631:                                              ; preds = %624
  %632 = lshr i32 %603, 16
  %633 = and i32 %632, 255
  br label %634

634:                                              ; preds = %631, %627
  %635 = phi ptr [ %630, %627 ], [ %606, %631 ]
  %636 = phi i64 [ %629, %627 ], [ %619, %631 ]
  %637 = phi i32 [ %628, %627 ], [ %633, %631 ]
  %638 = load i64, ptr %635, align 8
  %639 = and i64 %638, 2147483648
  %640 = icmp eq i64 %639, 0
  %641 = and i64 %636, 2097152
  %642 = icmp eq i64 %641, 0
  %643 = select i1 %642, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 27), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 28)
  %644 = select i1 %642, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 29), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 30)
  %645 = select i1 %640, ptr %643, ptr %644
  %646 = zext i32 %637 to i64
  %647 = getelementptr inbounds [87 x i8], ptr @mode_2xwider, i64 0, i64 %646
  %648 = load i8, ptr %647, align 1, !tbaa !9
  %649 = zext i8 %648 to i32
  %650 = icmp eq i32 %25, %649
  br i1 %650, label %651, label %666

651:                                              ; preds = %634
  %652 = zext nneg i32 %25 to i64
  %653 = getelementptr inbounds %struct.optab_d, ptr %645, i64 0, i32 4, i64 %652
  %654 = load i32, ptr %653, align 4, !tbaa !25
  %655 = icmp eq i32 %654, 2956
  br i1 %655, label %666, label %656

656:                                              ; preds = %651
  call fastcc void @expand_operands(ptr noundef nonnull %594, ptr noundef nonnull %597, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %657 = tail call fastcc ptr @expand_expr(ptr noundef %30, ptr noundef %64, i32 noundef 0, i32 noundef 0) #18
  %658 = load ptr, ptr %5, align 8, !tbaa !5
  %659 = load ptr, ptr %6, align 8, !tbaa !5
  %660 = tail call ptr @expand_ternary_op(i32 noundef %25, ptr noundef nonnull %645, ptr noundef %658, ptr noundef %659, ptr noundef %657, ptr noundef %63, i32 noundef %28) #17
  %661 = icmp eq ptr %660, null
  br i1 %661, label %662, label %663

662:                                              ; preds = %656
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7625, ptr noundef nonnull @.str.1) #17
  br label %663

663:                                              ; preds = %656, %662
  br i1 %60, label %664, label %1464

664:                                              ; preds = %663
  %665 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %660, ptr noundef %63, ptr noundef nonnull %11) #18
  br label %1464

666:                                              ; preds = %634, %651, %581, %593, %596, %599, %611, %618, %576, %578
  switch i32 %3, label %1443 [
    i32 4, label %667
    i32 2, label %667
  ]

667:                                              ; preds = %666, %666
  %668 = tail call i32 @really_constant_p(ptr noundef %30) #17
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %690, label %670

670:                                              ; preds = %667
  %671 = tail call i32 @really_constant_p(ptr noundef %32) #17
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %690, label %673

673:                                              ; preds = %670
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %3) #18
  %674 = load ptr, ptr %6, align 8, !tbaa !5
  %675 = load i32, ptr %674, align 8
  %676 = and i32 %675, 65535
  %677 = icmp eq i32 %676, 30
  %678 = load ptr, ptr %5, align 8, !tbaa !5
  br i1 %677, label %679, label %686

679:                                              ; preds = %673
  %680 = getelementptr inbounds %struct.rtx_def, ptr %674, i64 0, i32 1
  %681 = load i64, ptr %680, align 8, !tbaa !9
  %682 = sub nsw i64 0, %681
  %683 = tail call ptr @plus_constant(ptr noundef %678, i64 noundef %682) #17
  br i1 %60, label %684, label %1464

684:                                              ; preds = %679
  %685 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %683, ptr noundef %63, ptr noundef nonnull %11) #18
  br label %1464

686:                                              ; preds = %673
  %687 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %25, ptr noundef %678, ptr noundef nonnull %674) #17
  br i1 %60, label %688, label %1464

688:                                              ; preds = %686
  %689 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %687, ptr noundef %63, ptr noundef nonnull %11) #18
  br label %1464

690:                                              ; preds = %670, %667
  switch i32 %3, label %1443 [
    i32 4, label %691
    i32 2, label %691
  ]

691:                                              ; preds = %690, %690
  %692 = load i32, ptr @ptr_mode, align 4, !tbaa !22
  %693 = icmp eq i32 %25, %692
  br i1 %693, label %694, label %1443

694:                                              ; preds = %691
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef %64, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %3) #18
  %695 = load ptr, ptr %6, align 8, !tbaa !5
  %696 = load i32, ptr %695, align 8
  %697 = and i32 %696, 65535
  %698 = icmp eq i32 %697, 30
  br i1 %698, label %699, label %1446

699:                                              ; preds = %694
  %700 = tail call ptr @negate_rtx(i32 noundef %25, ptr noundef nonnull %695) #17
  %701 = load ptr, ptr %5, align 8, !tbaa !5
  %702 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %25, ptr noundef %701, ptr noundef %700) #17
  br i1 %60, label %703, label %1464

703:                                              ; preds = %699
  %704 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %702, ptr noundef %63, ptr noundef nonnull %11) #18
  br label %1464

705:                                              ; preds = %59
  %706 = zext i32 %25 to i64
  %707 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %706
  %708 = load i8, ptr %707, align 1, !tbaa !9
  switch i8 %708, label %709 [
    i8 4, label %1443
    i8 13, label %1443
    i8 6, label %1443
    i8 15, label %1443
    i8 5, label %1443
    i8 14, label %1443
    i8 7, label %1443
    i8 16, label %1443
  ]

709:                                              ; preds = %705
  %710 = load i64, ptr %30, align 8
  %711 = and i64 %710, 65535
  %712 = icmp eq i64 %711, 23
  %713 = select i1 %712, ptr %30, ptr %32
  %714 = select i1 %712, ptr %32, ptr %30
  %715 = icmp eq i32 %3, 2
  %716 = load i32, ptr @ptr_mode, align 4
  %717 = icmp eq i32 %25, %716
  %718 = select i1 %715, i1 %717, i1 false
  br i1 %718, label %719, label %767

719:                                              ; preds = %709
  %720 = tail call i32 @host_integerp(ptr noundef %713, i32 noundef 0) #17
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %767, label %722

722:                                              ; preds = %719
  %723 = tail call fastcc ptr @expand_expr(ptr noundef %714, ptr noundef %64, i32 noundef 0, i32 noundef 2) #18
  %724 = load i32, ptr %723, align 8
  %725 = and i32 %724, 65535
  %726 = icmp eq i32 %725, 37
  br i1 %726, label %734, label %727

727:                                              ; preds = %722
  %728 = tail call ptr @force_operand(ptr noundef nonnull %723, ptr noundef null) #18
  %729 = load i32, ptr %728, align 8
  %730 = and i32 %729, 65535
  %731 = icmp eq i32 %730, 37
  br i1 %731, label %734, label %732

732:                                              ; preds = %727
  %733 = tail call ptr @copy_to_mode_reg(i32 noundef %25, ptr noundef nonnull %728) #17
  br label %734

734:                                              ; preds = %722, %732, %727
  %735 = phi ptr [ %733, %732 ], [ %728, %727 ], [ %723, %722 ]
  %736 = tail call i64 @tree_low_cst(ptr noundef %713, i32 noundef 0) #17
  %737 = getelementptr inbounds %struct.tree_common, ptr %713, i64 0, i32 2
  %738 = load ptr, ptr %737, align 8, !tbaa !9
  %739 = load i64, ptr %738, align 8
  %740 = and i64 %739, 65535
  %741 = icmp eq i64 %740, 14
  br i1 %60, label %742, label %755

742:                                              ; preds = %734
  br i1 %741, label %743, label %745

743:                                              ; preds = %742
  %744 = tail call i32 @vector_type_mode(ptr noundef nonnull %738) #17
  br label %750

745:                                              ; preds = %742
  %746 = getelementptr inbounds %struct.tree_type, ptr %738, i64 0, i32 6
  %747 = load i32, ptr %746, align 4
  %748 = lshr i32 %747, 16
  %749 = and i32 %748, 255
  br label %750

750:                                              ; preds = %745, %743
  %751 = phi i32 [ %744, %743 ], [ %749, %745 ]
  %752 = tail call ptr @gen_int_mode(i64 noundef %736, i32 noundef %751) #17
  %753 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %25, ptr noundef %735, ptr noundef %752) #17
  %754 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %753, ptr noundef %63, ptr noundef nonnull %11) #18
  br label %1464

755:                                              ; preds = %734
  br i1 %741, label %756, label %758

756:                                              ; preds = %755
  %757 = tail call i32 @vector_type_mode(ptr noundef nonnull %738) #17
  br label %763

758:                                              ; preds = %755
  %759 = getelementptr inbounds %struct.tree_type, ptr %738, i64 0, i32 6
  %760 = load i32, ptr %759, align 4
  %761 = lshr i32 %760, 16
  %762 = and i32 %761, 255
  br label %763

763:                                              ; preds = %758, %756
  %764 = phi i32 [ %757, %756 ], [ %762, %758 ]
  %765 = tail call ptr @gen_int_mode(i64 noundef %736, i32 noundef %764) #17
  %766 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %25, ptr noundef %735, ptr noundef %765) #17
  br label %1464

767:                                              ; preds = %719, %709
  %768 = select i1 %61, ptr null, ptr %63
  %769 = tail call fastcc ptr @get_def_for_expr(ptr noundef %714, i32 noundef 116) #18
  %770 = tail call fastcc ptr @get_def_for_expr(ptr noundef %713, i32 noundef 116) #18
  %771 = icmp eq ptr %769, null
  br i1 %771, label %973, label %772

772:                                              ; preds = %767
  %773 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %769) #18
  %774 = icmp ne ptr %773, null
  %775 = icmp ne ptr %770, null
  %776 = select i1 %774, i1 %775, i1 false
  br i1 %776, label %777, label %835

777:                                              ; preds = %772
  %778 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %770) #18
  %779 = icmp eq ptr %778, null
  %780 = load i64, ptr %11, align 8
  br i1 %779, label %839, label %781

781:                                              ; preds = %777
  %782 = and i64 %780, 65535
  %783 = icmp eq i64 %782, 8
  br i1 %783, label %784, label %839

784:                                              ; preds = %781
  %785 = getelementptr inbounds %struct.tree_common, ptr %773, i64 0, i32 2
  %786 = load ptr, ptr %785, align 8, !tbaa !9
  %787 = getelementptr inbounds %struct.tree_type, ptr %786, i64 0, i32 6
  %788 = load i32, ptr %787, align 4
  %789 = and i32 %788, 1023
  %790 = getelementptr inbounds %struct.tree_common, ptr %714, i64 0, i32 2
  %791 = load ptr, ptr %790, align 8, !tbaa !9
  %792 = getelementptr inbounds %struct.tree_type, ptr %791, i64 0, i32 6
  %793 = load i32, ptr %792, align 4
  %794 = and i32 %793, 1023
  %795 = icmp ult i32 %789, %794
  br i1 %795, label %796, label %839

796:                                              ; preds = %784
  %797 = getelementptr inbounds %struct.tree_common, ptr %778, i64 0, i32 2
  %798 = load ptr, ptr %797, align 8, !tbaa !9
  %799 = getelementptr inbounds %struct.tree_type, ptr %798, i64 0, i32 6
  %800 = load i32, ptr %799, align 4
  %801 = and i32 %800, 1023
  %802 = icmp eq i32 %789, %801
  br i1 %802, label %803, label %839

803:                                              ; preds = %796
  %804 = load i64, ptr %786, align 8
  %805 = load i64, ptr %798, align 8
  %806 = xor i64 %805, %804
  %807 = and i64 %806, 2097152
  %808 = icmp eq i64 %807, 0
  br i1 %808, label %839, label %809

809:                                              ; preds = %803
  %810 = and i64 %804, 65535
  %811 = icmp eq i64 %810, 14
  br i1 %811, label %812, label %814

812:                                              ; preds = %809
  %813 = tail call i32 @vector_type_mode(ptr noundef nonnull %786) #17
  br label %817

814:                                              ; preds = %809
  %815 = lshr i32 %788, 16
  %816 = and i32 %815, 255
  br label %817

817:                                              ; preds = %814, %812
  %818 = phi i32 [ %813, %812 ], [ %816, %814 ]
  %819 = zext i32 %818 to i64
  %820 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %819
  %821 = load i8, ptr %820, align 1, !tbaa !9
  %822 = zext i8 %821 to i32
  %823 = icmp eq i32 %25, %822
  br i1 %823, label %824, label %973

824:                                              ; preds = %817
  %825 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 22, i32 4, i64 %706
  %826 = load i32, ptr %825, align 4, !tbaa !25
  %827 = icmp eq i32 %826, 2956
  br i1 %827, label %973, label %828

828:                                              ; preds = %824
  %829 = load ptr, ptr %785, align 8, !tbaa !9
  %830 = load i64, ptr %829, align 8
  %831 = and i64 %830, 2097152
  %832 = icmp eq i64 %831, 0
  br i1 %832, label %834, label %833

833:                                              ; preds = %828
  call fastcc void @expand_operands(ptr noundef nonnull %773, ptr noundef nonnull %778, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  br label %1451

834:                                              ; preds = %828
  call fastcc void @expand_operands(ptr noundef nonnull %773, ptr noundef nonnull %778, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 0) #18
  br label %1451

835:                                              ; preds = %772
  %836 = icmp eq ptr %773, null
  br i1 %836, label %973, label %837

837:                                              ; preds = %835
  %838 = load i64, ptr %11, align 8
  br label %839

839:                                              ; preds = %837, %777, %781, %784, %796, %803
  %840 = phi i64 [ %838, %837 ], [ %780, %777 ], [ %780, %781 ], [ %780, %784 ], [ %780, %796 ], [ %780, %803 ]
  %841 = phi ptr [ null, %837 ], [ null, %777 ], [ %778, %781 ], [ %778, %784 ], [ %778, %796 ], [ %778, %803 ]
  %842 = and i64 %840, 65535
  %843 = icmp eq i64 %842, 8
  br i1 %843, label %844, label %973

844:                                              ; preds = %839
  %845 = getelementptr inbounds %struct.tree_common, ptr %773, i64 0, i32 2
  %846 = load ptr, ptr %845, align 8, !tbaa !9
  %847 = getelementptr inbounds %struct.tree_type, ptr %846, i64 0, i32 6
  %848 = load i32, ptr %847, align 4
  %849 = and i32 %848, 1023
  %850 = getelementptr inbounds %struct.tree_common, ptr %714, i64 0, i32 2
  %851 = load ptr, ptr %850, align 8, !tbaa !9
  %852 = getelementptr inbounds %struct.tree_type, ptr %851, i64 0, i32 6
  %853 = load i32, ptr %852, align 4
  %854 = and i32 %853, 1023
  %855 = icmp ult i32 %849, %854
  br i1 %855, label %856, label %973

856:                                              ; preds = %844
  %857 = load i64, ptr %713, align 8
  %858 = and i64 %857, 65535
  %859 = icmp eq i64 %858, 23
  br i1 %859, label %860, label %887

860:                                              ; preds = %856
  %861 = tail call i32 @int_fits_type_p(ptr noundef nonnull %713, ptr noundef nonnull %846) #17
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %887, label %863

863:                                              ; preds = %860
  %864 = getelementptr inbounds %struct.tree_common, ptr %713, i64 0, i32 2
  %865 = load ptr, ptr %864, align 8, !tbaa !9
  %866 = load i64, ptr %865, align 8
  %867 = and i64 %866, 65535
  %868 = icmp eq i64 %867, 14
  br i1 %868, label %869, label %871

869:                                              ; preds = %863
  %870 = tail call i32 @vector_type_mode(ptr noundef nonnull %865) #17
  br label %876

871:                                              ; preds = %863
  %872 = getelementptr inbounds %struct.tree_type, ptr %865, i64 0, i32 6
  %873 = load i32, ptr %872, align 4
  %874 = lshr i32 %873, 16
  %875 = and i32 %874, 255
  br label %876

876:                                              ; preds = %871, %869
  %877 = phi i32 [ %870, %869 ], [ %875, %871 ]
  %878 = zext i32 %877 to i64
  %879 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %878
  %880 = load i8, ptr %879, align 1, !tbaa !9
  %881 = icmp ugt i8 %880, 8
  br i1 %881, label %906, label %882

882:                                              ; preds = %876
  %883 = getelementptr inbounds %struct.tree_int_cst, ptr %713, i64 0, i32 1
  %884 = load i64, ptr %883, align 8, !tbaa !9
  %885 = tail call i32 @exact_log2(i64 noundef %884) #17
  %886 = icmp slt i32 %885, 0
  br i1 %886, label %906, label %887

887:                                              ; preds = %882, %860, %856
  %888 = icmp eq ptr %841, null
  br i1 %888, label %973, label %889

889:                                              ; preds = %887
  %890 = getelementptr inbounds %struct.tree_common, ptr %841, i64 0, i32 2
  %891 = load ptr, ptr %890, align 8, !tbaa !9
  %892 = getelementptr inbounds %struct.tree_type, ptr %891, i64 0, i32 6
  %893 = load i32, ptr %892, align 4
  %894 = load ptr, ptr %845, align 8, !tbaa !9
  %895 = getelementptr inbounds %struct.tree_type, ptr %894, i64 0, i32 6
  %896 = load i32, ptr %895, align 4
  %897 = xor i32 %896, %893
  %898 = and i32 %897, 1023
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %900, label %973

900:                                              ; preds = %889
  %901 = load i64, ptr %891, align 8
  %902 = load i64, ptr %894, align 8
  %903 = xor i64 %902, %901
  %904 = and i64 %903, 2097152
  %905 = icmp eq i64 %904, 0
  br i1 %905, label %906, label %973

906:                                              ; preds = %900, %882, %876
  %907 = load ptr, ptr %845, align 8, !tbaa !9
  %908 = load i64, ptr %907, align 8
  %909 = and i64 %908, 65535
  %910 = icmp eq i64 %909, 14
  br i1 %910, label %911, label %914

911:                                              ; preds = %906
  %912 = tail call i32 @vector_type_mode(ptr noundef nonnull %907) #17
  %913 = load i64, ptr %907, align 8
  br label %919

914:                                              ; preds = %906
  %915 = getelementptr inbounds %struct.tree_type, ptr %907, i64 0, i32 6
  %916 = load i32, ptr %915, align 4
  %917 = lshr i32 %916, 16
  %918 = and i32 %917, 255
  br label %919

919:                                              ; preds = %914, %911
  %920 = phi i64 [ %913, %911 ], [ %908, %914 ]
  %921 = phi i32 [ %912, %911 ], [ %918, %914 ]
  %922 = trunc i64 %920 to i32
  %923 = lshr i32 %922, 21
  %924 = and i32 %923, 1
  %925 = icmp eq i32 %924, 0
  %926 = select i1 %925, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20)
  %927 = select i1 %925, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21)
  %928 = zext i32 %921 to i64
  %929 = getelementptr inbounds [87 x i8], ptr @mode_2xwider, i64 0, i64 %928
  %930 = load i8, ptr %929, align 1, !tbaa !9
  %931 = zext i8 %930 to i32
  %932 = icmp eq i32 %25, %931
  br i1 %932, label %933, label %973

933:                                              ; preds = %919
  %934 = select i1 %925, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4)
  %935 = getelementptr inbounds [87 x %struct.optab_handlers], ptr %934, i64 0, i64 %706
  %936 = load i32, ptr %935, align 4, !tbaa !25
  %937 = icmp eq i32 %936, 2956
  br i1 %937, label %944, label %938

938:                                              ; preds = %933
  %939 = load i64, ptr %713, align 8
  %940 = and i64 %939, 65535
  %941 = icmp eq i64 %940, 23
  br i1 %941, label %942, label %943

942:                                              ; preds = %938
  call fastcc void @expand_operands(ptr noundef nonnull %773, ptr noundef nonnull %713, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  br label %1451

943:                                              ; preds = %938
  call fastcc void @expand_operands(ptr noundef nonnull %773, ptr noundef %841, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  br label %1451

944:                                              ; preds = %933
  %945 = select i1 %925, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4)
  %946 = getelementptr inbounds [87 x %struct.optab_handlers], ptr %945, i64 0, i64 %706
  %947 = load i32, ptr %946, align 4, !tbaa !25
  %948 = icmp ne i32 %947, 2956
  %949 = load i32, ptr @word_mode, align 4
  %950 = icmp eq i32 %921, %949
  %951 = select i1 %948, i1 %950, i1 false
  br i1 %951, label %952, label %973

952:                                              ; preds = %944
  %953 = tail call fastcc ptr @expand_normal(ptr noundef nonnull %773) #18
  %954 = load i64, ptr %713, align 8
  %955 = and i64 %954, 65535
  %956 = icmp eq i64 %955, 23
  br i1 %956, label %957, label %960

957:                                              ; preds = %952
  %958 = tail call fastcc ptr @expand_normal(ptr noundef nonnull %713) #18
  %959 = tail call ptr @convert_modes(i32 noundef %921, i32 noundef %25, ptr noundef %958, i32 noundef %28) #18
  br label %962

960:                                              ; preds = %952
  %961 = tail call fastcc ptr @expand_normal(ptr noundef %841) #18
  br label %962

962:                                              ; preds = %960, %957
  %963 = phi ptr [ %961, %960 ], [ %959, %957 ]
  %964 = tail call ptr @expand_binop(i32 noundef %25, ptr noundef nonnull %926, ptr noundef %953, ptr noundef %963, ptr noundef %768, i32 noundef %28, i32 noundef 3) #17
  %965 = tail call ptr @gen_highpart(i32 noundef %921, ptr noundef %964) #17
  %966 = tail call ptr @expand_mult_highpart_adjust(i32 noundef %921, ptr noundef %965, ptr noundef %953, ptr noundef %963, ptr noundef %965, i32 noundef %924) #17
  %967 = icmp eq ptr %966, %965
  br i1 %967, label %970, label %968

968:                                              ; preds = %962
  %969 = tail call ptr @emit_move_insn(ptr noundef %965, ptr noundef %966) #18
  br label %970

970:                                              ; preds = %968, %962
  br i1 %60, label %971, label %1464

971:                                              ; preds = %970
  %972 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %964, ptr noundef %768, ptr noundef nonnull %11) #18
  br label %1464

973:                                              ; preds = %919, %944, %817, %824, %767, %835, %839, %844, %887, %889, %900
  call fastcc void @expand_operands(ptr noundef %714, ptr noundef %713, ptr noundef %64, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %974 = load ptr, ptr %5, align 8, !tbaa !5
  %975 = load ptr, ptr %6, align 8, !tbaa !5
  %976 = tail call ptr @expand_mult(i32 noundef %25, ptr noundef %974, ptr noundef %975, ptr noundef %768, i32 noundef %28) #17
  br i1 %60, label %977, label %1464

977:                                              ; preds = %973
  %978 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %976, ptr noundef %768, ptr noundef nonnull %11) #18
  br label %1464

979:                                              ; preds = %59, %59, %59, %59, %59
  %980 = zext i32 %25 to i64
  %981 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %980
  %982 = load i8, ptr %981, align 1, !tbaa !9
  switch i8 %982, label %983 [
    i8 4, label %1443
    i8 13, label %1443
    i8 6, label %1443
    i8 15, label %1443
    i8 5, label %1443
    i8 14, label %1443
    i8 7, label %1443
    i8 16, label %1443
  ]

983:                                              ; preds = %979
  %984 = select i1 %61, ptr null, ptr %63
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef %64, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %985 = load ptr, ptr %5, align 8, !tbaa !5
  %986 = load ptr, ptr %6, align 8, !tbaa !5
  %987 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef %7, i32 noundef %25, ptr noundef %985, ptr noundef %986, ptr noundef %984, i32 noundef %28) #17
  br label %1464

988:                                              ; preds = %59, %59, %59, %59
  %989 = select i1 %61, ptr null, ptr %63
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef %64, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %990 = load ptr, ptr %5, align 8, !tbaa !5
  %991 = load ptr, ptr %6, align 8, !tbaa !5
  %992 = tail call ptr @expand_divmod(i32 noundef 1, i32 noundef %7, i32 noundef %25, ptr noundef %990, ptr noundef %991, ptr noundef %989, i32 noundef %28) #17
  br label %1464

993:                                              ; preds = %59
  %994 = tail call fastcc ptr @expand_normal(ptr noundef %30) #18
  %995 = icmp eq ptr %63, null
  %996 = or i1 %61, %995
  br i1 %996, label %997, label %999

997:                                              ; preds = %993
  %998 = tail call ptr @gen_reg_rtx(i32 noundef %25) #17
  br label %999

999:                                              ; preds = %993, %997
  %1000 = phi ptr [ %998, %997 ], [ %1, %993 ]
  %1001 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %1002 = load ptr, ptr %1001, align 8, !tbaa !9
  %1003 = load i64, ptr %1002, align 8
  %1004 = and i64 %1003, 2162687
  %1005 = icmp eq i64 %1004, 2097160
  %1006 = load i64, ptr %11, align 8
  %1007 = and i64 %1006, 2162687
  %1008 = icmp eq i64 %1007, 2097160
  %1009 = select i1 %1005, i1 true, i1 %1008
  %1010 = trunc i64 %1006 to i32
  %1011 = lshr i32 %1010, 31
  br i1 %1009, label %1012, label %1013

1012:                                             ; preds = %999
  tail call void @expand_fixed_convert(ptr noundef %1000, ptr noundef %994, i32 noundef 1, i32 noundef %1011) #17
  br label %1464

1013:                                             ; preds = %999
  tail call void @expand_fixed_convert(ptr noundef %1000, ptr noundef %994, i32 noundef 0, i32 noundef %1011) #17
  br label %1464

1014:                                             ; preds = %59
  %1015 = tail call fastcc ptr @expand_normal(ptr noundef %30) #18
  %1016 = icmp eq ptr %63, null
  %1017 = or i1 %61, %1016
  br i1 %1017, label %1018, label %1020

1018:                                             ; preds = %1014
  %1019 = tail call ptr @gen_reg_rtx(i32 noundef %25) #17
  br label %1020

1020:                                             ; preds = %1014, %1018
  %1021 = phi ptr [ %1019, %1018 ], [ %1, %1014 ]
  tail call void @expand_fix(ptr noundef %1021, ptr noundef %1015, i32 noundef %28) #17
  br label %1464

1022:                                             ; preds = %59
  %1023 = tail call fastcc ptr @expand_normal(ptr noundef %30) #18
  %1024 = icmp eq ptr %63, null
  %1025 = or i1 %61, %1024
  br i1 %1025, label %1026, label %1028

1026:                                             ; preds = %1022
  %1027 = tail call ptr @gen_reg_rtx(i32 noundef %25) #17
  br label %1028

1028:                                             ; preds = %1022, %1026
  %1029 = phi ptr [ %1027, %1026 ], [ %1, %1022 ]
  %1030 = load i32, ptr %1023, align 8
  %1031 = and i32 %1030, 16711680
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1033, label %1049

1033:                                             ; preds = %1028
  %1034 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %1035 = load ptr, ptr %1034, align 8, !tbaa !9
  %1036 = load i64, ptr %1035, align 8
  %1037 = and i64 %1036, 65535
  %1038 = icmp eq i64 %1037, 14
  br i1 %1038, label %1039, label %1041

1039:                                             ; preds = %1033
  %1040 = tail call i32 @vector_type_mode(ptr noundef nonnull %1035) #17
  br label %1046

1041:                                             ; preds = %1033
  %1042 = getelementptr inbounds %struct.tree_type, ptr %1035, i64 0, i32 6
  %1043 = load i32, ptr %1042, align 4
  %1044 = lshr i32 %1043, 16
  %1045 = and i32 %1044, 255
  br label %1046

1046:                                             ; preds = %1041, %1039
  %1047 = phi i32 [ %1040, %1039 ], [ %1045, %1041 ]
  %1048 = tail call ptr @copy_to_mode_reg(i32 noundef %1047, ptr noundef nonnull %1023) #17
  br label %1049

1049:                                             ; preds = %1046, %1028
  %1050 = phi ptr [ %1048, %1046 ], [ %1023, %1028 ]
  %1051 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %1052 = load ptr, ptr %1051, align 8, !tbaa !9
  %1053 = load i64, ptr %1052, align 8
  %1054 = trunc i64 %1053 to i32
  %1055 = lshr i32 %1054, 21
  %1056 = and i32 %1055, 1
  tail call void @expand_float(ptr noundef %1029, ptr noundef %1050, i32 noundef %1056) #17
  br label %1464

1057:                                             ; preds = %59
  %1058 = tail call fastcc ptr @expand_expr(ptr noundef %30, ptr noundef %64, i32 noundef 0, i32 noundef 0) #18
  %1059 = select i1 %61, ptr null, ptr %63
  %1060 = tail call ptr @optab_for_tree_code(i32 noundef 79, ptr noundef nonnull %11, i32 noundef 0) #17
  %1061 = tail call ptr @expand_unop(i32 noundef %25, ptr noundef %1060, ptr noundef %1058, ptr noundef %1059, i32 noundef 0) #17
  %1062 = icmp eq ptr %1061, null
  br i1 %1062, label %1063, label %1064

1063:                                             ; preds = %1057
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7895, ptr noundef nonnull @.str.1) #17
  br label %1064

1064:                                             ; preds = %1057, %1063
  br i1 %60, label %1065, label %1464

1065:                                             ; preds = %1064
  %1066 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %1061, ptr noundef %1059, ptr noundef nonnull %11) #18
  br label %1464

1067:                                             ; preds = %59
  %1068 = tail call fastcc ptr @expand_expr(ptr noundef %30, ptr noundef %64, i32 noundef 0, i32 noundef 0) #18
  %1069 = select i1 %61, ptr null, ptr %63
  %1070 = zext i32 %25 to i64
  %1071 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1070
  %1072 = load i8, ptr %1071, align 1, !tbaa !9
  %1073 = and i8 %1072, -2
  %1074 = icmp eq i8 %1073, 10
  br i1 %1074, label %1075, label %1076

1075:                                             ; preds = %1067
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7906, ptr noundef nonnull @.str.1) #17
  br label %1076

1076:                                             ; preds = %1067, %1075
  %1077 = load i64, ptr %11, align 8
  %1078 = and i64 %1077, 2097152
  %1079 = icmp eq i64 %1078, 0
  br i1 %1079, label %1080, label %1464

1080:                                             ; preds = %1076
  %1081 = tail call i32 @safe_from_p(ptr noundef %1069, ptr noundef %30, i32 noundef 1) #18, !range !139
  %1082 = tail call ptr @expand_abs(i32 noundef %25, ptr noundef %1068, ptr noundef %1069, i32 noundef %28, i32 noundef %1081) #17
  br label %1464

1083:                                             ; preds = %59, %59
  %1084 = icmp eq ptr %63, null
  %1085 = or i1 %61, %1084
  br i1 %1085, label %1100, label %1086

1086:                                             ; preds = %1083
  %1087 = load i32, ptr %63, align 8
  %1088 = and i32 %1087, 65535
  %1089 = and i32 %1087, 134283263
  %1090 = icmp eq i32 %1089, 134217771
  br i1 %1090, label %1100, label %1091

1091:                                             ; preds = %1086
  %1092 = lshr i32 %1087, 16
  %1093 = and i32 %1092, 255
  %1094 = icmp eq i32 %1093, %25
  br i1 %1094, label %1095, label %1100

1095:                                             ; preds = %1091
  %1096 = icmp eq i32 %1088, 37
  br i1 %1096, label %1097, label %1102

1097:                                             ; preds = %1095
  %1098 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %63) #18
  %1099 = icmp ult i32 %1098, 53
  br i1 %1099, label %1100, label %1102

1100:                                             ; preds = %1086, %1097, %1091, %1083
  %1101 = tail call ptr @gen_reg_rtx(i32 noundef %25) #17
  br label %1102

1102:                                             ; preds = %1100, %1097, %1095
  %1103 = phi ptr [ %1101, %1100 ], [ %1, %1097 ], [ %1, %1095 ]
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef %1103, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %1104 = tail call ptr @optab_for_tree_code(i32 noundef %7, ptr noundef nonnull %11, i32 noundef 0) #17
  %1105 = load ptr, ptr %5, align 8, !tbaa !5
  %1106 = load ptr, ptr %6, align 8, !tbaa !5
  %1107 = tail call ptr @expand_binop(i32 noundef %25, ptr noundef %1104, ptr noundef %1105, ptr noundef %1106, ptr noundef %1103, i32 noundef %28, i32 noundef 2) #17
  %1108 = icmp eq ptr %1107, null
  br i1 %1108, label %1109, label %1464

1109:                                             ; preds = %1102
  %1110 = load i32, ptr %1103, align 8
  %1111 = and i32 %1110, 65535
  %1112 = icmp eq i32 %1111, 37
  br i1 %1112, label %1115, label %1113

1113:                                             ; preds = %1109
  %1114 = tail call ptr @gen_reg_rtx(i32 noundef %25) #17
  br label %1115

1115:                                             ; preds = %1113, %1109
  %1116 = phi ptr [ %1103, %1109 ], [ %1114, %1113 ]
  %1117 = icmp ne ptr %1116, %1105
  %1118 = icmp eq ptr %1116, %1106
  %1119 = and i1 %1118, %1117
  %1120 = select i1 %1119, ptr %1106, ptr %1105
  %1121 = select i1 %1119, ptr %1105, ptr %1106
  %1122 = load i32, ptr %1121, align 8
  %1123 = and i32 %1122, 65535
  %1124 = zext nneg i32 %1123 to i64
  %1125 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1124
  %1126 = load i32, ptr %1125, align 4, !tbaa !22
  %1127 = icmp eq i32 %1126, 9
  br i1 %1127, label %1130, label %1128

1128:                                             ; preds = %1115
  %1129 = tail call ptr @force_reg(i32 noundef %25, ptr noundef nonnull %1121) #17
  br label %1130

1130:                                             ; preds = %1128, %1115
  %1131 = phi ptr [ %1129, %1128 ], [ %1121, %1115 ]
  %1132 = icmp eq i32 %7, 81
  %1133 = icmp eq i32 %28, 0
  %1134 = select i1 %1133, i32 82, i32 86
  %1135 = select i1 %1133, i32 84, i32 88
  %1136 = select i1 %1132, i32 %1134, i32 %1135
  %1137 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !5
  %1138 = icmp eq ptr %1131, %1137
  %1139 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %1140 = select i1 %1133, i32 83, i32 80
  %1141 = select i1 %1132, i32 %1140, i32 %1135
  %1142 = select i1 %1138, i32 %1141, i32 %1136
  %1143 = select i1 %1138, ptr %1139, ptr %1131
  %1144 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !5
  %1145 = icmp ne ptr %1131, %1144
  %1146 = icmp ne i32 %28, 0
  %1147 = select i1 %1145, i1 true, i1 %1146
  %1148 = icmp eq i32 %7, 80
  %1149 = select i1 %1148, i32 85, i32 %1142
  %1150 = select i1 %1147, i32 %1142, i32 %1149
  %1151 = select i1 %1147, ptr %1143, ptr %1139
  %1152 = tail call i32 @can_conditionally_move_p(i32 noundef %25) #17
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1158, label %1154

1154:                                             ; preds = %1130
  tail call void @do_pending_stack_adjust() #17
  tail call void @start_sequence() #17
  %1155 = tail call ptr @emit_conditional_move(ptr noundef %1116, i32 noundef %1150, ptr noundef %1120, ptr noundef %1151, i32 noundef %25, ptr noundef %1120, ptr noundef %1131, i32 noundef %25, i32 noundef %28) #17
  %1156 = icmp eq ptr %1155, null
  br i1 %1156, label %1157, label %1162

1157:                                             ; preds = %1154
  tail call void @end_sequence() #17
  br label %1158

1158:                                             ; preds = %1157, %1130
  %1159 = icmp eq ptr %1116, %1120
  br i1 %1159, label %1165, label %1160

1160:                                             ; preds = %1158
  %1161 = tail call ptr @emit_move_insn(ptr noundef %1116, ptr noundef %1120) #18
  br label %1165

1162:                                             ; preds = %1154
  %1163 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  %1164 = tail call ptr @emit_insn(ptr noundef %1163) #17
  br label %1464

1165:                                             ; preds = %1158, %1160
  %1166 = tail call ptr @gen_label_rtx() #17
  tail call void @do_compare_rtx_and_jump(ptr noundef %1116, ptr noundef %1151, i32 noundef %1150, i32 noundef %28, i32 noundef %25, ptr noundef null, ptr noundef null, ptr noundef %1166, i32 noundef -1) #17
  %1167 = tail call ptr @emit_move_insn(ptr noundef %1116, ptr noundef %1131) #18
  %1168 = tail call ptr @emit_label(ptr noundef %1166) #17
  br label %1464

1169:                                             ; preds = %59
  %1170 = tail call fastcc ptr @expand_expr(ptr noundef %30, ptr noundef %64, i32 noundef 0, i32 noundef 0) #18
  %1171 = select i1 %61, ptr null, ptr %63
  %1172 = tail call ptr @expand_unop(i32 noundef %25, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), ptr noundef %1170, ptr noundef %1171, i32 noundef 1) #17
  %1173 = icmp eq ptr %1172, null
  br i1 %1173, label %1174, label %1464

1174:                                             ; preds = %1169
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8038, ptr noundef nonnull @.str.1) #17
  br label %1464

1175:                                             ; preds = %59
  br label %1443

1176:                                             ; preds = %59
  br label %1443

1177:                                             ; preds = %59
  br label %1443

1178:                                             ; preds = %59, %59
  %1179 = icmp eq i64 %48, 14
  br i1 %1179, label %1180, label %1182

1180:                                             ; preds = %1178
  %1181 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %1187

1182:                                             ; preds = %1178
  %1183 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1184 = load i32, ptr %1183, align 4
  %1185 = lshr i32 %1184, 16
  %1186 = and i32 %1185, 255
  br label %1187

1187:                                             ; preds = %1182, %1180
  %1188 = phi i32 [ %1181, %1180 ], [ %1186, %1182 ]
  %1189 = zext i32 %1188 to i64
  %1190 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1189
  %1191 = load i8, ptr %1190, align 1, !tbaa !9
  %1192 = icmp eq i8 %1191, 12
  br i1 %1192, label %1301, label %1193

1193:                                             ; preds = %1187
  %1194 = load i64, ptr %11, align 8
  %1195 = and i64 %1194, 65535
  %1196 = icmp eq i64 %1195, 14
  br i1 %1196, label %1197, label %1199

1197:                                             ; preds = %1193
  %1198 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %1204

1199:                                             ; preds = %1193
  %1200 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1201 = load i32, ptr %1200, align 4
  %1202 = lshr i32 %1201, 16
  %1203 = and i32 %1202, 255
  br label %1204

1204:                                             ; preds = %1199, %1197
  %1205 = phi i32 [ %1198, %1197 ], [ %1203, %1199 ]
  %1206 = zext i32 %1205 to i64
  %1207 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1206
  %1208 = load i8, ptr %1207, align 1, !tbaa !9
  %1209 = icmp eq i8 %1208, 17
  br i1 %1209, label %1301, label %1210

1210:                                             ; preds = %1204
  %1211 = load i64, ptr %11, align 8
  %1212 = and i64 %1211, 65535
  %1213 = icmp eq i64 %1212, 14
  br i1 %1213, label %1214, label %1216

1214:                                             ; preds = %1210
  %1215 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %1221

1216:                                             ; preds = %1210
  %1217 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1218 = load i32, ptr %1217, align 4
  %1219 = lshr i32 %1218, 16
  %1220 = and i32 %1219, 255
  br label %1221

1221:                                             ; preds = %1216, %1214
  %1222 = phi i32 [ %1215, %1214 ], [ %1220, %1216 ]
  %1223 = zext i32 %1222 to i64
  %1224 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1223
  %1225 = load i8, ptr %1224, align 1, !tbaa !9
  %1226 = icmp eq i8 %1225, 13
  br i1 %1226, label %1301, label %1227

1227:                                             ; preds = %1221
  %1228 = load i64, ptr %11, align 8
  %1229 = and i64 %1228, 65535
  %1230 = icmp eq i64 %1229, 14
  br i1 %1230, label %1231, label %1233

1231:                                             ; preds = %1227
  %1232 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %1238

1233:                                             ; preds = %1227
  %1234 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1235 = load i32, ptr %1234, align 4
  %1236 = lshr i32 %1235, 16
  %1237 = and i32 %1236, 255
  br label %1238

1238:                                             ; preds = %1233, %1231
  %1239 = phi i32 [ %1232, %1231 ], [ %1237, %1233 ]
  %1240 = zext i32 %1239 to i64
  %1241 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1240
  %1242 = load i8, ptr %1241, align 1, !tbaa !9
  %1243 = icmp eq i8 %1242, 14
  br i1 %1243, label %1301, label %1244

1244:                                             ; preds = %1238
  %1245 = load i64, ptr %11, align 8
  %1246 = and i64 %1245, 65535
  %1247 = icmp eq i64 %1246, 14
  br i1 %1247, label %1248, label %1250

1248:                                             ; preds = %1244
  %1249 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %1255

1250:                                             ; preds = %1244
  %1251 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1252 = load i32, ptr %1251, align 4
  %1253 = lshr i32 %1252, 16
  %1254 = and i32 %1253, 255
  br label %1255

1255:                                             ; preds = %1250, %1248
  %1256 = phi i32 [ %1249, %1248 ], [ %1254, %1250 ]
  %1257 = zext i32 %1256 to i64
  %1258 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1257
  %1259 = load i8, ptr %1258, align 1, !tbaa !9
  %1260 = icmp eq i8 %1259, 15
  br i1 %1260, label %1301, label %1261

1261:                                             ; preds = %1255
  %1262 = load i64, ptr %11, align 8
  %1263 = and i64 %1262, 65535
  %1264 = icmp eq i64 %1263, 14
  br i1 %1264, label %1265, label %1267

1265:                                             ; preds = %1261
  %1266 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %1272

1267:                                             ; preds = %1261
  %1268 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1269 = load i32, ptr %1268, align 4
  %1270 = lshr i32 %1269, 16
  %1271 = and i32 %1270, 255
  br label %1272

1272:                                             ; preds = %1267, %1265
  %1273 = phi i32 [ %1266, %1265 ], [ %1271, %1267 ]
  %1274 = zext i32 %1273 to i64
  %1275 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1274
  %1276 = load i8, ptr %1275, align 1, !tbaa !9
  %1277 = icmp eq i8 %1276, 16
  br i1 %1277, label %1301, label %1278

1278:                                             ; preds = %1272
  %1279 = load i64, ptr %11, align 8
  %1280 = and i64 %1279, 65535
  %1281 = icmp eq i64 %1280, 14
  br i1 %1281, label %1282, label %1286

1282:                                             ; preds = %1278
  %1283 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  %1284 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1285 = load i32, ptr %1284, align 4
  br label %1291

1286:                                             ; preds = %1278
  %1287 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1288 = load i32, ptr %1287, align 4
  %1289 = lshr i32 %1288, 16
  %1290 = and i32 %1289, 255
  br label %1291

1291:                                             ; preds = %1286, %1282
  %1292 = phi i32 [ %1285, %1282 ], [ %1288, %1286 ]
  %1293 = phi i32 [ %1283, %1282 ], [ %1290, %1286 ]
  %1294 = zext i32 %1293 to i64
  %1295 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %1294
  %1296 = load i16, ptr %1295, align 2, !tbaa !23
  %1297 = zext i16 %1296 to i32
  %1298 = and i32 %1292, 1023
  %1299 = icmp eq i32 %1298, %1297
  br i1 %1299, label %1301, label %1300

1300:                                             ; preds = %1291
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8073, ptr noundef nonnull @.str.1) #17
  br label %1301

1301:                                             ; preds = %1300, %1291, %1272, %1255, %1238, %1221, %1204, %1187, %59, %59
  %1302 = zext i32 %25 to i64
  %1303 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1302
  %1304 = load i8, ptr %1303, align 1, !tbaa !9
  switch i8 %1304, label %1305 [
    i8 4, label %1443
    i8 13, label %1443
    i8 6, label %1443
    i8 15, label %1443
    i8 5, label %1443
    i8 14, label %1443
    i8 7, label %1443
    i8 16, label %1443
  ]

1305:                                             ; preds = %1301
  %1306 = tail call i32 @safe_from_p(ptr noundef %64, ptr noundef %32, i32 noundef 1) #18, !range !139
  %1307 = icmp eq i32 %1306, 0
  %1308 = select i1 %1307, ptr null, ptr %64
  %1309 = select i1 %61, ptr null, ptr %63
  %1310 = tail call fastcc ptr @expand_expr(ptr noundef %30, ptr noundef %1308, i32 noundef 0, i32 noundef 0) #18
  %1311 = tail call ptr @expand_shift(i32 noundef %7, i32 noundef %25, ptr noundef %1310, ptr noundef %32, ptr noundef %1309, i32 noundef %28) #17
  %1312 = icmp eq i32 %7, 83
  %1313 = and i1 %1312, %60
  br i1 %1313, label %1314, label %1464

1314:                                             ; preds = %1305
  %1315 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %1311, ptr noundef %1309, ptr noundef nonnull %11) #18
  br label %1464

1316:                                             ; preds = %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59, %59
  %1317 = select i1 %61, ptr null, ptr %63
  %1318 = icmp eq i32 %2, 0
  %1319 = select i1 %1318, i32 %25, i32 %2
  %1320 = tail call fastcc ptr @do_store_flag(ptr noundef nonnull %0, ptr noundef %1317, i32 noundef %1319) #18
  %1321 = icmp eq ptr %1320, null
  br i1 %1321, label %1322, label %1464

1322:                                             ; preds = %1316
  %1323 = icmp eq ptr %63, null
  %1324 = or i1 %61, %1323
  br i1 %1324, label %1341, label %1325

1325:                                             ; preds = %1322
  %1326 = tail call i32 @safe_from_p(ptr noundef nonnull %63, ptr noundef %30, i32 noundef 1) #18, !range !139
  %1327 = icmp eq i32 %1326, 0
  br i1 %1327, label %1341, label %1328

1328:                                             ; preds = %1325
  %1329 = tail call i32 @safe_from_p(ptr noundef nonnull %63, ptr noundef %32, i32 noundef 1) #18, !range !139
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1341, label %1331

1331:                                             ; preds = %1328
  %1332 = load i32, ptr @optimize, align 4, !tbaa !22
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1334, label %1343

1334:                                             ; preds = %1331
  %1335 = load i32, ptr %63, align 8
  %1336 = and i32 %1335, 65535
  %1337 = icmp eq i32 %1336, 37
  br i1 %1337, label %1338, label %1343

1338:                                             ; preds = %1334
  %1339 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %63) #18
  %1340 = icmp ult i32 %1339, 53
  br i1 %1340, label %1341, label %1343

1341:                                             ; preds = %1338, %1328, %1325, %1322
  %1342 = tail call ptr @gen_reg_rtx(i32 noundef %1319) #17
  br label %1343

1343:                                             ; preds = %1341, %1338, %1334, %1331
  %1344 = phi ptr [ %1342, %1341 ], [ %1, %1331 ], [ %1, %1338 ], [ %1, %1334 ]
  %1345 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %1346 = tail call ptr @emit_move_insn(ptr noundef %1344, ptr noundef %1345) #18
  %1347 = tail call ptr @gen_label_rtx() #17
  tail call void @jumpifnot_1(i32 noundef %7, ptr noundef %30, ptr noundef %32, ptr noundef %1347, i32 noundef -1) #17
  %1348 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !5
  %1349 = tail call ptr @emit_move_insn(ptr noundef %1344, ptr noundef %1348) #18
  %1350 = tail call ptr @emit_label(ptr noundef %1347) #17
  br label %1464

1351:                                             ; preds = %59
  %1352 = select i1 %61, ptr null, ptr %63
  %1353 = tail call fastcc ptr @expand_expr(ptr noundef %30, ptr noundef %1352, i32 noundef 0, i32 noundef 0) #18
  %1354 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !5
  %1355 = tail call ptr @expand_binop(i32 noundef %25, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %1353, ptr noundef %1354, ptr noundef %1352, i32 noundef 1, i32 noundef 3) #17
  %1356 = icmp eq ptr %1355, null
  br i1 %1356, label %1357, label %1464

1357:                                             ; preds = %1351
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8150, ptr noundef nonnull @.str.1) #17
  br label %1464

1358:                                             ; preds = %59
  %1359 = tail call fastcc ptr @expand_normal(ptr noundef %30) #18
  %1360 = tail call fastcc ptr @expand_normal(ptr noundef %32) #18
  %1361 = icmp eq ptr %63, null
  br i1 %1361, label %1362, label %1376

1362:                                             ; preds = %1358
  %1363 = load i64, ptr %11, align 8
  %1364 = and i64 %1363, 65535
  %1365 = icmp eq i64 %1364, 14
  br i1 %1365, label %1366, label %1368

1366:                                             ; preds = %1362
  %1367 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %1373

1368:                                             ; preds = %1362
  %1369 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1370 = load i32, ptr %1369, align 4
  %1371 = lshr i32 %1370, 16
  %1372 = and i32 %1371, 255
  br label %1373

1373:                                             ; preds = %1368, %1366
  %1374 = phi i32 [ %1367, %1366 ], [ %1372, %1368 ]
  %1375 = tail call ptr @gen_reg_rtx(i32 noundef %1374) #17
  br label %1376

1376:                                             ; preds = %1373, %1358
  %1377 = phi ptr [ %1, %1358 ], [ %1375, %1373 ]
  tail call fastcc void @write_complex_part(ptr noundef %1377, ptr noundef %1359, i8 noundef zeroext 0) #18
  tail call fastcc void @write_complex_part(ptr noundef %1377, ptr noundef %1360, i8 noundef zeroext 1) #18
  br label %1464

1378:                                             ; preds = %59
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %1379 = load ptr, ptr %5, align 8, !tbaa !5
  %1380 = load ptr, ptr %6, align 8, !tbaa !5
  %1381 = tail call ptr @expand_widen_pattern_expr(ptr noundef nonnull %0, ptr noundef %1379, ptr noundef null, ptr noundef %1380, ptr noundef %63, i32 noundef %28) #17
  br label %1464

1382:                                             ; preds = %59, %59, %59
  %1383 = tail call fastcc ptr @expand_normal(ptr noundef %30) #18
  %1384 = tail call ptr @optab_for_tree_code(i32 noundef %7, ptr noundef nonnull %11, i32 noundef 0) #17
  %1385 = tail call ptr @expand_unop(i32 noundef %25, ptr noundef %1384, ptr noundef %1383, ptr noundef %63, i32 noundef %28) #17
  %1386 = icmp eq ptr %1385, null
  br i1 %1386, label %1387, label %1464

1387:                                             ; preds = %1382
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8185, ptr noundef nonnull @.str.1) #17
  br label %1464

1388:                                             ; preds = %59, %59
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %1389 = tail call ptr @optab_for_tree_code(i32 noundef %7, ptr noundef nonnull %11, i32 noundef 0) #17
  %1390 = load ptr, ptr %5, align 8, !tbaa !5
  %1391 = load ptr, ptr %6, align 8, !tbaa !5
  %1392 = tail call ptr @expand_binop(i32 noundef %25, ptr noundef %1389, ptr noundef %1390, ptr noundef %1391, ptr noundef %63, i32 noundef %28, i32 noundef 2) #17
  %1393 = icmp eq ptr %1392, null
  br i1 %1393, label %1394, label %1464

1394:                                             ; preds = %1388
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8197, ptr noundef nonnull @.str.1) #17
  br label %1464

1395:                                             ; preds = %59, %59
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %1396 = tail call ptr @optab_for_tree_code(i32 noundef %7, ptr noundef nonnull %11, i32 noundef 0) #17
  %1397 = load ptr, ptr %5, align 8, !tbaa !5
  %1398 = load ptr, ptr %6, align 8, !tbaa !5
  %1399 = tail call ptr @expand_binop(i32 noundef %25, ptr noundef %1396, ptr noundef %1397, ptr noundef %1398, ptr noundef %63, i32 noundef %28, i32 noundef 2) #17
  %1400 = icmp eq ptr %1399, null
  br i1 %1400, label %1401, label %1464

1401:                                             ; preds = %1395
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8209, ptr noundef nonnull @.str.1) #17
  br label %1464

1402:                                             ; preds = %59, %59
  %1403 = tail call ptr @expand_vec_shift_expr(ptr noundef nonnull %0, ptr noundef %63) #17
  br label %1464

1404:                                             ; preds = %59, %59
  %1405 = tail call fastcc ptr @expand_normal(ptr noundef %30) #18
  %1406 = tail call ptr @optab_for_tree_code(i32 noundef %7, ptr noundef nonnull %11, i32 noundef 0) #17
  %1407 = tail call ptr @expand_widen_pattern_expr(ptr noundef nonnull %0, ptr noundef %1405, ptr noundef null, ptr noundef null, ptr noundef %63, i32 noundef %28) #17
  %1408 = icmp eq ptr %1407, null
  br i1 %1408, label %1409, label %1464

1409:                                             ; preds = %1404
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8227, ptr noundef nonnull @.str.1) #17
  br label %1464

1410:                                             ; preds = %59, %59
  %1411 = tail call fastcc ptr @expand_normal(ptr noundef %30) #18
  %1412 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %1413 = load ptr, ptr %1412, align 8, !tbaa !9
  %1414 = tail call ptr @optab_for_tree_code(i32 noundef %7, ptr noundef %1413, i32 noundef 0) #17
  %1415 = load ptr, ptr %1412, align 8, !tbaa !9
  %1416 = load i64, ptr %1415, align 8
  %1417 = trunc i64 %1416 to i32
  %1418 = lshr i32 %1417, 21
  %1419 = and i32 %1418, 1
  %1420 = tail call ptr @expand_widen_pattern_expr(ptr noundef nonnull %0, ptr noundef %1411, ptr noundef null, ptr noundef null, ptr noundef %63, i32 noundef %1419) #17
  %1421 = icmp eq ptr %1420, null
  br i1 %1421, label %1422, label %1464

1422:                                             ; preds = %1410
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8243, ptr noundef nonnull @.str.1) #17
  br label %1464

1423:                                             ; preds = %59, %59
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %1424 = load ptr, ptr %5, align 8, !tbaa !5
  %1425 = load ptr, ptr %6, align 8, !tbaa !5
  %1426 = tail call ptr @expand_widen_pattern_expr(ptr noundef nonnull %0, ptr noundef %1424, ptr noundef %1425, ptr noundef null, ptr noundef %63, i32 noundef %28) #17
  %1427 = icmp eq ptr %1426, null
  br i1 %1427, label %1428, label %1464

1428:                                             ; preds = %1423
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8256, ptr noundef nonnull @.str.1) #17
  br label %1464

1429:                                             ; preds = %59, %59, %59
  %1430 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %1431 = load ptr, ptr %1430, align 8, !tbaa !9
  %1432 = load i64, ptr %1431, align 8
  %1433 = and i64 %1432, 65535
  %1434 = icmp eq i64 %1433, 14
  br i1 %1434, label %1435, label %1437

1435:                                             ; preds = %1429
  %1436 = tail call i32 @vector_type_mode(ptr noundef nonnull %1431) #17
  br label %1443

1437:                                             ; preds = %1429
  %1438 = getelementptr inbounds %struct.tree_type, ptr %1431, i64 0, i32 6
  %1439 = load i32, ptr %1438, align 4
  %1440 = lshr i32 %1439, 16
  %1441 = and i32 %1440, 255
  br label %1443

1442:                                             ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8267, ptr noundef nonnull @.str.1) #17
  br label %1443

1443:                                             ; preds = %666, %1435, %1437, %1301, %1301, %1301, %1301, %1301, %1301, %1301, %1301, %979, %979, %979, %979, %979, %979, %979, %979, %705, %705, %705, %705, %705, %705, %705, %705, %690, %1177, %59, %1176, %59, %1175, %59, %59, %691, %1442
  %1444 = phi i32 [ %7, %1442 ], [ %7, %1301 ], [ 88, %1177 ], [ 87, %1176 ], [ 89, %1175 ], [ %7, %59 ], [ %7, %59 ], [ %7, %59 ], [ %7, %59 ], [ %7, %979 ], [ 65, %705 ], [ 64, %690 ], [ 64, %691 ], [ 65, %705 ], [ 65, %705 ], [ 65, %705 ], [ 65, %705 ], [ 65, %705 ], [ 65, %705 ], [ 65, %705 ], [ %7, %979 ], [ %7, %979 ], [ %7, %979 ], [ %7, %979 ], [ %7, %979 ], [ %7, %979 ], [ %7, %979 ], [ %7, %1301 ], [ %7, %1301 ], [ %7, %1301 ], [ %7, %1301 ], [ %7, %1301 ], [ %7, %1301 ], [ %7, %1301 ], [ %7, %1437 ], [ %7, %1435 ], [ 64, %666 ]
  %1445 = phi i32 [ %25, %1442 ], [ %25, %1301 ], [ %25, %1177 ], [ %25, %1176 ], [ %25, %1175 ], [ %25, %59 ], [ %25, %59 ], [ %25, %59 ], [ %25, %59 ], [ %25, %979 ], [ %25, %705 ], [ %25, %690 ], [ %25, %691 ], [ %25, %705 ], [ %25, %705 ], [ %25, %705 ], [ %25, %705 ], [ %25, %705 ], [ %25, %705 ], [ %25, %705 ], [ %25, %979 ], [ %25, %979 ], [ %25, %979 ], [ %25, %979 ], [ %25, %979 ], [ %25, %979 ], [ %25, %979 ], [ %25, %1301 ], [ %25, %1301 ], [ %25, %1301 ], [ %25, %1301 ], [ %25, %1301 ], [ %25, %1301 ], [ %25, %1301 ], [ %1441, %1437 ], [ %1436, %1435 ], [ %25, %666 ]
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef %64, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  br label %1446

1446:                                             ; preds = %527, %694, %568, %1443
  %1447 = phi i32 [ %1444, %1443 ], [ 64, %694 ], [ %7, %568 ], [ %7, %527 ]
  %1448 = phi i32 [ %1445, %1443 ], [ %25, %694 ], [ %25, %568 ], [ %25, %527 ]
  %1449 = phi ptr [ %63, %1443 ], [ %63, %694 ], [ %559, %568 ], [ %463, %527 ]
  %1450 = tail call ptr @optab_for_tree_code(i32 noundef %1447, ptr noundef nonnull %11, i32 noundef 0) #17
  br label %1451

1451:                                             ; preds = %943, %942, %834, %833, %1446
  %1452 = phi ptr [ %1450, %1446 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 22), %833 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 22), %834 ], [ %927, %942 ], [ %927, %943 ]
  %1453 = phi i32 [ %1448, %1446 ], [ %25, %833 ], [ %25, %834 ], [ %25, %942 ], [ %25, %943 ]
  %1454 = phi ptr [ %1449, %1446 ], [ %768, %833 ], [ %768, %834 ], [ %768, %942 ], [ %768, %943 ]
  %1455 = select i1 %61, ptr null, ptr %1454
  %1456 = load ptr, ptr %5, align 8, !tbaa !5
  %1457 = load ptr, ptr %6, align 8, !tbaa !5
  %1458 = tail call ptr @expand_binop(i32 noundef %1453, ptr noundef %1452, ptr noundef %1456, ptr noundef %1457, ptr noundef %1455, i32 noundef %28, i32 noundef 3) #17
  %1459 = icmp eq ptr %1458, null
  br i1 %1459, label %1460, label %1461

1460:                                             ; preds = %1451
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8281, ptr noundef nonnull @.str.1) #17
  br label %1461

1461:                                             ; preds = %1451, %1460
  br i1 %60, label %1462, label %1464

1462:                                             ; preds = %1461
  %1463 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %1458, ptr noundef %1455, ptr noundef nonnull %11) #18
  br label %1464

1464:                                             ; preds = %973, %699, %686, %679, %570, %563, %201, %1076, %554, %502, %298, %292, %297, %258, %971, %970, %556, %529, %1162, %664, %663, %406, %405, %1305, %1462, %1461, %1428, %1423, %1422, %1410, %1409, %1404, %1401, %1395, %1394, %1388, %1387, %1382, %1357, %1351, %1316, %1314, %1174, %1169, %1102, %1065, %1064, %1012, %1013, %977, %750, %763, %703, %688, %684, %574, %568, %504, %260, %203, %90, %170, %140, %1402, %1378, %1376, %1343, %1165, %1080, %1049, %1020, %988, %983, %68
  %1465 = phi ptr [ %1403, %1402 ], [ %1381, %1378 ], [ %1377, %1376 ], [ %1344, %1343 ], [ %1116, %1165 ], [ %1116, %1162 ], [ %1082, %1080 ], [ %1029, %1049 ], [ %1021, %1020 ], [ %992, %988 ], [ %987, %983 ], [ %69, %68 ], [ %92, %90 ], [ %126, %170 ], [ %126, %140 ], [ %204, %203 ], [ %261, %260 ], [ %505, %504 ], [ %564, %568 ], [ %575, %574 ], [ %685, %684 ], [ %689, %688 ], [ %704, %703 ], [ %754, %750 ], [ %766, %763 ], [ %978, %977 ], [ %1000, %1013 ], [ %1000, %1012 ], [ %1066, %1065 ], [ %1061, %1064 ], [ %1107, %1102 ], [ %1172, %1169 ], [ null, %1174 ], [ %1311, %1305 ], [ %1315, %1314 ], [ %1320, %1316 ], [ %1355, %1351 ], [ null, %1357 ], [ %1385, %1382 ], [ null, %1387 ], [ %1392, %1388 ], [ null, %1394 ], [ %1399, %1395 ], [ null, %1401 ], [ %1407, %1404 ], [ null, %1409 ], [ %1420, %1410 ], [ null, %1422 ], [ %1426, %1423 ], [ null, %1428 ], [ %1463, %1462 ], [ %1458, %1461 ], [ %407, %406 ], [ %402, %405 ], [ %665, %664 ], [ %660, %663 ], [ %557, %556 ], [ %530, %529 ], [ %964, %970 ], [ %972, %971 ], [ %259, %258 ], [ %301, %298 ], [ %295, %292 ], [ null, %297 ], [ %503, %502 ], [ %555, %554 ], [ %1068, %1076 ], [ %202, %201 ], [ %567, %563 ], [ %573, %570 ], [ %683, %679 ], [ %687, %686 ], [ %702, %699 ], [ %976, %973 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret ptr %1465
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #11 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !9
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @reduce_to_bit_field_precision(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1023
  %7 = zext nneg i32 %6 to i64
  %8 = icmp eq ptr %1, null
  %9 = load i32, ptr %0, align 8
  br i1 %8, label %16, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr %1, align 8
  %12 = xor i32 %9, %11
  %13 = and i32 %12, 16711680
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr %1, ptr null
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi ptr [ null, %3 ], [ %15, %10 ]
  %18 = and i32 %9, 65535
  %19 = icmp eq i32 %18, 30
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !9
  %23 = tail call ptr @build_int_cst_type(ptr noundef nonnull %2, i64 noundef %22) #17
  %24 = tail call fastcc ptr @expand_expr(ptr noundef %23, ptr noundef %17, i32 noundef 0, i32 noundef 0) #18
  br label %66

25:                                               ; preds = %16
  %26 = load i64, ptr %2, align 8
  %27 = and i64 %26, 2097152
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = icmp ult i32 %6, 64
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = shl nsw i64 -1, %7
  %33 = xor i64 %32, -1
  br label %38

34:                                               ; preds = %29
  %35 = add nsw i64 %7, -64
  %36 = shl nsw i64 -1, %35
  %37 = xor i64 %36, -1
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i64 [ %37, %34 ], [ 0, %31 ]
  %40 = phi i64 [ -1, %34 ], [ %33, %31 ]
  %41 = lshr i32 %9, 16
  %42 = and i32 %41, 255
  %43 = tail call ptr @immed_double_const(i64 noundef %40, i64 noundef %39, i32 noundef %42) #17
  %44 = load i32, ptr %0, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = tail call ptr @expand_and(i32 noundef %46, ptr noundef nonnull %0, ptr noundef %43, ptr noundef %17) #17
  br label %66

48:                                               ; preds = %25
  %49 = lshr i32 %9, 16
  %50 = and i32 %49, 255
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !9
  %54 = zext i8 %53 to i64
  %55 = shl nuw nsw i64 %54, 3
  %56 = sub nsw i64 %55, %7
  %57 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %56) #17
  %58 = load i32, ptr %0, align 8
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %60, ptr noundef nonnull %0, ptr noundef %57, ptr noundef %17, i32 noundef 0) #17
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 16
  %64 = and i32 %63, 255
  %65 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %64, ptr noundef nonnull %61, ptr noundef %57, ptr noundef %17, i32 noundef 0) #17
  br label %66

66:                                               ; preds = %48, %38, %20
  %67 = phi ptr [ %24, %20 ], [ %47, %38 ], [ %65, %48 ]
  ret ptr %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_def_for_expr(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @get_gimple_for_ssa_name(ptr noundef nonnull %0) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %7) #18, !range !164
  %11 = icmp eq i32 %10, %1
  %12 = select i1 %11, ptr %7, ptr null
  br label %13

13:                                               ; preds = %9, %6, %2
  %14 = phi ptr [ null, %2 ], [ null, %6 ], [ %12, %9 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #18
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #18
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_operands(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @safe_from_p(ptr noundef %2, ptr noundef %1, i32 noundef 1) #18, !range !139
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, ptr null, ptr %2
  %10 = tail call i32 @operand_equal_p(ptr noundef %0, ptr noundef %1, i32 noundef 0) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = tail call fastcc ptr @expand_expr(ptr noundef %0, ptr noundef %9, i32 noundef 0, i32 noundef %5) #18
  store ptr %13, ptr %3, align 8, !tbaa !5
  %14 = tail call ptr @copy_rtx(ptr noundef %13) #17
  br label %28

15:                                               ; preds = %6
  %16 = load i32, ptr @flag_evaluation_order, align 4, !tbaa !22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i64, ptr %1, align 8
  %20 = and i64 %19, 65536
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @save_expr(ptr noundef %0) #17
  br label %24

24:                                               ; preds = %22, %18, %15
  %25 = phi ptr [ %23, %22 ], [ %0, %18 ], [ %0, %15 ]
  %26 = tail call fastcc ptr @expand_expr(ptr noundef %25, ptr noundef %9, i32 noundef 0, i32 noundef %5) #18
  store ptr %26, ptr %3, align 8, !tbaa !5
  %27 = tail call fastcc ptr @expand_expr(ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef %5) #18
  br label %28

28:                                               ; preds = %24, %12
  %29 = phi ptr [ %27, %24 ], [ %14, %12 ]
  store ptr %29, ptr %4, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare ptr @expand_ternary_op(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @really_constant_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @int_fits_type_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_highpart(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_mult_highpart_adjust(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_unop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @optab_for_tree_code(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_abs(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @can_conditionally_move_p(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_conditional_move(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @do_compare_rtx_and_jump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @do_store_flag(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !150
  %8 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !147
  %10 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !148
  %12 = load ptr, ptr @global_trees, align 16, !tbaa !5
  %13 = icmp eq ptr %9, %12
  %14 = icmp eq ptr %11, %12
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  br label %143

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 14
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = tail call i32 @vector_type_mode(ptr noundef nonnull %20) #17
  %26 = load i64, ptr %20, align 8
  br label %32

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i64 [ %26, %24 ], [ %21, %27 ]
  %34 = phi i32 [ %25, %24 ], [ %31, %27 ]
  %35 = trunc i64 %33 to i32
  %36 = lshr i32 %35, 21
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %34, 1
  br i1 %38, label %143, label %39

39:                                               ; preds = %32
  %40 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %9) #17
  %41 = tail call ptr @tree_strip_nop_conversions(ptr noundef %11) #17
  %42 = load i32, ptr %0, align 8, !tbaa !144
  switch i32 %42, label %88 [
    i32 101, label %89
    i32 102, label %43
    i32 97, label %44
    i32 98, label %54
    i32 99, label %62
    i32 100, label %70
    i32 103, label %80
    i32 104, label %81
    i32 105, label %82
    i32 106, label %83
    i32 107, label %84
    i32 108, label %85
    i32 109, label %86
    i32 110, label %87
  ]

43:                                               ; preds = %39
  br label %89

44:                                               ; preds = %39
  %45 = tail call i32 @integer_onep(ptr noundef %41) #17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !5
  %49 = icmp eq i32 %37, 0
  %50 = select i1 %49, i32 84, i32 88
  br label %89

51:                                               ; preds = %44
  %52 = icmp eq i32 %37, 0
  %53 = select i1 %52, i32 85, i32 89
  br label %89

54:                                               ; preds = %39
  %55 = icmp eq i32 %37, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %54
  %57 = tail call i32 @integer_all_onesp(ptr noundef %41) #17
  %58 = icmp eq i32 %57, 0
  %59 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %60 = select i1 %58, ptr %41, ptr %59
  %61 = select i1 %58, i32 84, i32 85
  br label %89

62:                                               ; preds = %39
  %63 = icmp eq i32 %37, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %62
  %65 = tail call i32 @integer_all_onesp(ptr noundef %41) #17
  %66 = icmp eq i32 %65, 0
  %67 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %68 = select i1 %66, ptr %41, ptr %67
  %69 = select i1 %66, i32 83, i32 82
  br label %89

70:                                               ; preds = %39
  %71 = tail call i32 @integer_onep(ptr noundef %41) #17
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !5
  %75 = icmp eq i32 %37, 0
  %76 = select i1 %75, i32 83, i32 87
  br label %89

77:                                               ; preds = %70
  %78 = icmp eq i32 %37, 0
  %79 = select i1 %78, i32 82, i32 86
  br label %89

80:                                               ; preds = %39
  br label %89

81:                                               ; preds = %39
  br label %89

82:                                               ; preds = %39
  br label %89

83:                                               ; preds = %39
  br label %89

84:                                               ; preds = %39
  br label %89

85:                                               ; preds = %39
  br label %89

86:                                               ; preds = %39
  br label %89

87:                                               ; preds = %39
  br label %89

88:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9981, ptr noundef nonnull @.str.1) #17
  br label %89

89:                                               ; preds = %64, %56, %62, %54, %39, %73, %77, %47, %51, %88, %87, %86, %85, %84, %83, %82, %81, %80, %43
  %90 = phi ptr [ %41, %88 ], [ %41, %87 ], [ %41, %86 ], [ %41, %85 ], [ %41, %84 ], [ %41, %83 ], [ %41, %82 ], [ %41, %81 ], [ %41, %80 ], [ %74, %73 ], [ %41, %77 ], [ %48, %47 ], [ %41, %51 ], [ %41, %43 ], [ %41, %39 ], [ %41, %54 ], [ %41, %62 ], [ %60, %56 ], [ %68, %64 ]
  %91 = phi i32 [ undef, %88 ], [ 97, %87 ], [ 92, %86 ], [ 93, %85 ], [ 94, %84 ], [ 95, %83 ], [ 96, %82 ], [ 91, %81 ], [ 90, %80 ], [ %76, %73 ], [ %79, %77 ], [ %50, %47 ], [ %53, %51 ], [ 80, %43 ], [ 81, %39 ], [ 88, %54 ], [ 87, %62 ], [ %61, %56 ], [ %69, %64 ]
  %92 = load i64, ptr %40, align 8
  %93 = trunc i64 %92 to i32
  %94 = and i32 %93, 65535
  %95 = add nsw i32 %94, -23
  %96 = icmp ult i32 %95, 3
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = tail call i32 @swap_condition(i32 noundef %91) #17
  br label %99

99:                                               ; preds = %89, %97
  %100 = phi ptr [ %40, %97 ], [ %90, %89 ]
  %101 = phi ptr [ %90, %97 ], [ %40, %89 ]
  %102 = phi i32 [ %98, %97 ], [ %91, %89 ]
  %103 = icmp eq i32 %102, 80
  %104 = and i32 %102, -2
  %105 = icmp eq i32 %104, 80
  br i1 %105, label %106, label %124

106:                                              ; preds = %99
  %107 = load i64, ptr %101, align 8
  %108 = and i64 %107, 65535
  %109 = icmp eq i64 %108, 89
  br i1 %109, label %110, label %124

110:                                              ; preds = %106
  %111 = tail call i32 @integer_zerop(ptr noundef %100) #17
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.tree_exp, ptr %101, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !9
  %116 = tail call i32 @integer_pow2p(ptr noundef %115) #17
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !123
  %120 = tail call ptr %119(i32 noundef %2, i32 noundef %37) #17
  %121 = select i1 %103, i32 102, i32 101
  %122 = tail call ptr @fold_single_bit_test(i32 noundef %7, i32 noundef %121, ptr noundef nonnull %101, ptr noundef %100, ptr noundef %120) #17
  %123 = tail call fastcc ptr @expand_expr(ptr noundef %122, ptr noundef %1, i32 noundef 0, i32 noundef 0) #18
  br label %143

124:                                              ; preds = %99, %113, %110, %106
  %125 = tail call fastcc ptr @get_subtarget(ptr noundef %1) #18
  %126 = icmp eq ptr %125, null
  br i1 %126, label %134, label %127

127:                                              ; preds = %124
  %128 = load i32, ptr %1, align 8
  %129 = lshr i32 %128, 16
  %130 = and i32 %129, 255
  %131 = icmp eq i32 %130, %34
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  call fastcc void @expand_operands(ptr noundef %101, ptr noundef %100, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #18
  br label %138

133:                                              ; preds = %127
  call fastcc void @expand_operands(ptr noundef %101, ptr noundef %100, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #18
  br label %138

134:                                              ; preds = %124
  call fastcc void @expand_operands(ptr noundef %101, ptr noundef %100, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #18
  %135 = icmp eq ptr %1, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %134
  %137 = tail call ptr @gen_reg_rtx(i32 noundef %2) #17
  br label %138

138:                                              ; preds = %132, %133, %136, %134
  %139 = phi ptr [ %137, %136 ], [ %1, %134 ], [ %1, %133 ], [ %1, %132 ]
  %140 = load ptr, ptr %4, align 8, !tbaa !5
  %141 = load ptr, ptr %5, align 8, !tbaa !5
  %142 = tail call ptr @emit_store_flag_force(ptr noundef %139, i32 noundef %102, ptr noundef %140, ptr noundef %141, i32 noundef %34, i32 noundef %37, i32 noundef 1) #17
  br label %143

143:                                              ; preds = %32, %138, %118, %16
  %144 = phi ptr [ %17, %16 ], [ %123, %118 ], [ %142, %138 ], [ null, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %144
}

; Function Attrs: optsize
declare void @jumpifnot_1(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_widen_pattern_expr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_vec_shift_expr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @label_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_u_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_gimple_for_ssa_name(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 1), align 8, !tbaa !165
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !9
  %7 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %2, i32 noundef %6) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %1, %4, %9
  %13 = phi ptr [ %11, %9 ], [ null, %4 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @gimple_assign_rhs_to_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_rtx_for_ssa_name(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @SA, align 8, !tbaa !167
  %3 = load ptr, ptr %2, align 8, !tbaa !168
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !9
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.partition_def, ptr %3, i64 0, i32 1, i64 %6
  %8 = load i32, ptr %7, align 8, !tbaa !170
  %9 = getelementptr inbounds %struct._var_map, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = sext i32 %8 to i64
  %14 = getelementptr inbounds i32, ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !22
  br label %16

16:                                               ; preds = %12, %1
  %17 = phi i32 [ %15, %12 ], [ %8, %1 ]
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 59, ptr noundef nonnull @.str.1) #17
  br label %20

20:                                               ; preds = %16, %19
  %21 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !173
  %22 = sext i32 %17 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  ret ptr %24
}

; Function Attrs: optsize
declare void @layout_decl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emutls_var_address(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @emutls_decl(ptr noundef %0) #17
  %3 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 548), align 16, !tbaa !5
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !5
  %5 = tail call ptr @build_fold_addr_expr_with_type_loc(i32 noundef 0, ptr noundef %2, ptr noundef %4) #17
  %6 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %5) #17
  %7 = tail call ptr @build_function_call_expr(i32 noundef 0, ptr noundef %3, ptr noundef %6) #17
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = tail call ptr @build_pointer_type(ptr noundef %9) #17
  %11 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %10, ptr noundef %7) #17
  ret ptr %11
}

; Function Attrs: optsize
declare void @assemble_external(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @replace_equiv_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mark_reg_pointer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @promote_decl_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_lowpart_SUBREG(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @const_vector_from_tree(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 14
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #17
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ %8, %7 ], [ %13, %9 ]
  %16 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %0) #17
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = sext i32 %15 to i64
  %20 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  br label %80

22:                                               ; preds = %14
  %23 = zext i32 %15 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !9
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %23
  %28 = load i8, ptr %27, align 1, !tbaa !9
  %29 = zext i8 %28 to i32
  %30 = tail call ptr @rtvec_alloc(i32 noundef %26) #17
  %31 = getelementptr inbounds %struct.tree_vector, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %45

34:                                               ; preds = %66
  %35 = trunc i64 %70 to i32
  br label %36

36:                                               ; preds = %34, %22
  %37 = phi i32 [ 0, %22 ], [ %35, %34 ]
  %38 = icmp ult i32 %37, %26
  br i1 %38, label %39, label %78

39:                                               ; preds = %36
  %40 = zext i8 %28 to i64
  %41 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %40
  %42 = zext i32 %37 to i64
  %43 = zext i8 %25 to i64
  %44 = load ptr, ptr %41, align 8, !tbaa !5
  br label %73

45:                                               ; preds = %22, %66
  %46 = phi i64 [ %70, %66 ], [ 0, %22 ]
  %47 = phi ptr [ %71, %66 ], [ %32, %22 ]
  %48 = getelementptr inbounds %struct.tree_list, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !9
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %60 [
    i16 24, label %52
    i16 25, label %56
  ]

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.tree_real_cst, ptr %49, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !9
  %55 = tail call ptr @const_double_from_real_value(ptr noundef byval(%struct.real_value) align 8 %54, i32 noundef %29) #17
  br label %66

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.tree_fixed_cst, ptr %49, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !9
  %59 = tail call ptr @const_fixed_from_fixed_value(ptr noundef byval(%struct.fixed_value) align 8 %58, i32 noundef %29) #17
  br label %66

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.tree_int_cst, ptr %49, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !9
  %63 = getelementptr inbounds %struct.tree_int_cst, ptr %49, i64 0, i32 1, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !9
  %65 = tail call ptr @immed_double_const(i64 noundef %62, i64 noundef %64, i32 noundef %29) #17
  br label %66

66:                                               ; preds = %52, %60, %56
  %67 = phi ptr [ %55, %52 ], [ %65, %60 ], [ %59, %56 ]
  %68 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %46
  store ptr %67, ptr %68, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 1
  %70 = add nuw i64 %46, 1
  %71 = load ptr, ptr %69, align 8, !tbaa !9
  %72 = icmp eq ptr %71, null
  br i1 %72, label %34, label %45, !llvm.loop !174

73:                                               ; preds = %39, %73
  %74 = phi i64 [ %42, %39 ], [ %76, %73 ]
  %75 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %74
  store ptr %44, ptr %75, align 8, !tbaa !5
  %76 = add nuw nsw i64 %74, 1
  %77 = icmp eq i64 %76, %43
  br i1 %77, label %78, label %73, !llvm.loop !175

78:                                               ; preds = %73, %36
  %79 = tail call ptr @gen_rtx_CONST_VECTOR(i32 noundef %15, ptr noundef %30) #17
  br label %80

80:                                               ; preds = %78, %18
  %81 = phi ptr [ %21, %18 ], [ %79, %78 ]
  ret ptr %81
}

; Function Attrs: optsize
declare ptr @fold_unary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_constructor_from_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @const_double_from_real_value(ptr noundef byval(%struct.real_value) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @const_fixed_from_fixed_value(ptr noundef byval(%struct.fixed_value) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr_constant(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @output_constant_def(ptr noundef %0, i32 noundef %1) #17
  %5 = icmp eq i32 %2, 4
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @use_anchored_address(ptr noundef %4) #17
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi ptr [ %7, %6 ], [ %4, %3 ]
  ret ptr %9
}

; Function Attrs: optsize
declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !142
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #11 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_constructor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 14
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call i32 @vector_type_mode(ptr noundef nonnull %6) #17
  br label %17

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  br label %17

17:                                               ; preds = %12, %10
  %18 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %19 = load i64, ptr %0, align 8
  %20 = and i64 %19, 67108864
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %76, label %22

22:                                               ; preds = %17
  %23 = and i64 %19, 262144
  %24 = icmp eq i64 %23, 0
  %25 = icmp ne ptr %1, null
  %26 = and i1 %25, %24
  %27 = icmp eq i32 %18, 1
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = tail call fastcc i32 @all_zeros_p(ptr noundef nonnull %0) #18, !range !161
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = tail call ptr @expr_size(ptr noundef nonnull %0) #17
  %34 = tail call ptr @clear_storage(ptr noundef nonnull %1, ptr noundef %33, i32 noundef 0) #18
  br label %135

35:                                               ; preds = %29
  %36 = load i64, ptr %0, align 8
  %37 = and i64 %36, 67108864
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %76, label %43

39:                                               ; preds = %22
  %40 = icmp eq i32 %18, 1
  br i1 %40, label %41, label %48

41:                                               ; preds = %39
  %42 = icmp eq ptr %1, null
  br i1 %42, label %83, label %43

43:                                               ; preds = %35, %41
  %44 = tail call i32 @safe_from_p(ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 1) #18, !range !139
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %83, label %46

46:                                               ; preds = %43
  %47 = load i64, ptr %0, align 8
  br label %48

48:                                               ; preds = %46, %39
  %49 = phi i64 [ %47, %46 ], [ %19, %39 ]
  %50 = and i64 %49, 262144
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !9
  %55 = tail call i32 @host_integerp(ptr noundef %54, i32 noundef 1) #17
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %53, align 8, !tbaa !9
  %59 = tail call i64 @tree_low_cst(ptr noundef %58, i32 noundef 1) #17
  %60 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 7
  %61 = load i32, ptr %60, align 8, !tbaa !9
  %62 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %59, i32 noundef %61) #18
  %63 = tail call zeroext i8 @optimize_insn_for_speed_p() #17
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %57
  %66 = load ptr, ptr @ix86_cost, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.processor_costs, ptr %66, i64 0, i32 10
  %68 = load i32, ptr %67, align 4, !tbaa !31
  %69 = zext i32 %68 to i64
  br label %70

70:                                               ; preds = %57, %65
  %71 = phi i64 [ %69, %65 ], [ 3, %57 ]
  %72 = icmp ult i64 %62, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = tail call fastcc i32 @mostly_zeros_p(ptr noundef nonnull %0) #18, !range !161
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %17, %35, %73, %70, %52
  %77 = add i32 %2, -3
  %78 = icmp ult i32 %77, 2
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load i64, ptr %0, align 8
  %81 = and i64 %80, 131072
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %79, %73, %48, %43, %41
  %84 = icmp eq i8 %3, 0
  br i1 %84, label %85, label %135

85:                                               ; preds = %83
  %86 = tail call fastcc ptr @expand_expr_constant(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %2) #18
  %87 = add i32 %2, -5
  %88 = icmp ult i32 %87, -3
  br i1 %88, label %89, label %135

89:                                               ; preds = %85
  %90 = tail call ptr @validize_mem(ptr noundef %86) #17
  br label %135

91:                                               ; preds = %76, %79
  %92 = icmp eq ptr %1, null
  br i1 %92, label %102, label %93

93:                                               ; preds = %91
  %94 = tail call i32 @safe_from_p(ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 1) #18, !range !139
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %1, align 8
  %98 = and i32 %97, 65535
  %99 = icmp eq i32 %98, 15
  %100 = icmp eq i32 %2, 1
  %101 = or i1 %100, %99
  br i1 %101, label %102, label %132

102:                                              ; preds = %96, %93, %91
  %103 = icmp eq i8 %3, 0
  br i1 %103, label %104, label %135

104:                                              ; preds = %102
  %105 = load i64, ptr %6, align 8
  %106 = trunc i64 %105 to i32
  %107 = lshr i32 %106, 20
  %108 = and i32 %107, 1
  %109 = lshr i32 %106, 18
  %110 = and i32 %109, 2
  %111 = or disjoint i32 %108, %110
  %112 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 6
  %113 = load i32, ptr %112, align 4
  %114 = lshr i32 %113, 11
  %115 = and i32 %114, 4
  %116 = or disjoint i32 %111, %115
  %117 = lshr i64 %105, 48
  %118 = trunc i64 %117 to i32
  %119 = and i32 %118, 65280
  %120 = or disjoint i32 %116, %119
  %121 = load i64, ptr %0, align 8
  %122 = trunc i64 %121 to i32
  %123 = lshr i32 %122, 20
  %124 = and i32 %123, 1
  %125 = or i32 %120, %124
  %126 = tail call ptr @build_qualified_type(ptr noundef nonnull %6, i32 noundef %125) #17
  %127 = load i64, ptr %0, align 8
  %128 = trunc i64 %127 to i32
  %129 = lshr i32 %128, 18
  %130 = and i32 %129, 1
  %131 = tail call ptr @assign_temp(ptr noundef %126, i32 noundef 0, i32 noundef %130, i32 noundef 1) #17
  br label %132

132:                                              ; preds = %96, %104
  %133 = phi ptr [ %131, %104 ], [ %1, %96 ]
  %134 = tail call i64 @int_expr_size(ptr noundef nonnull %0) #17
  tail call fastcc void @store_constructor(ptr noundef nonnull %0, ptr noundef %133, i32 noundef 0, i64 noundef %134) #18
  br label %135

135:                                              ; preds = %102, %83, %89, %85, %132, %32
  %136 = phi ptr [ %1, %32 ], [ %133, %132 ], [ null, %83 ], [ %90, %89 ], [ %86, %85 ], [ null, %102 ]
  ret ptr %136
}

; Function Attrs: optsize
declare ptr @fold_read_from_constant_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @get_address_description(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @addr_for_mem_ref(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_diffop_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_and(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @is_aligning_offset(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %9, %7 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %48 [
    i16 116, label %7
    i16 113, label %7
    i16 89, label %10
  ]

7:                                                ; preds = %3, %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  br label %3, !llvm.loop !176

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = tail call i32 @host_integerp(ptr noundef %12, i32 noundef 1) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %11, align 8, !tbaa !9
  %17 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !22
  %18 = and i32 %17, 32
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i64 16, i64 32
  %21 = tail call i32 @compare_tree_int(ptr noundef %16, i64 noundef %20) #17
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %48, label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %11, align 8, !tbaa !9
  %25 = tail call i64 @tree_low_cst(ptr noundef %24, i32 noundef 1) #17
  %26 = add nsw i64 %25, 1
  %27 = tail call i32 @exact_log2(i64 noundef %26) #17
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %23, %35
  %30 = phi ptr [ %32, %35 ], [ %4, %23 ]
  %31 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i16
  switch i16 %34, label %48 [
    i16 116, label %35
    i16 113, label %35
    i16 79, label %36
  ]

35:                                               ; preds = %29, %29
  br label %29, !llvm.loop !177

36:                                               ; preds = %29, %42
  %37 = phi ptr [ %39, %42 ], [ %32, %29 ]
  %38 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !9
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i16
  switch i16 %41, label %48 [
    i16 116, label %42
    i16 113, label %42
    i16 121, label %43
  ]

42:                                               ; preds = %36, %36
  br label %36, !llvm.loop !178

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !9
  %46 = icmp eq ptr %45, %1
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %3, %29, %36, %43, %10, %15, %23
  %49 = phi i32 [ 0, %23 ], [ 0, %15 ], [ 0, %10 ], [ %47, %43 ], [ 0, %36 ], [ 0, %29 ], [ 0, %3 ]
  ret i32 %49
}

; Function Attrs: optsize
declare ptr @assign_stack_local(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @assign_stack_temp_for_type(i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @identifier_to_locale(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_nonartificial_location(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_builtin(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @expand_call(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, ptr } @tsi_start(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %0, 1
  ret { ptr, ptr } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @tsi_end_p(ptr readnone %0) unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @tsi_stmt(ptr nocapture readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.tree_statement_list_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !179
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @tsi_next(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !181
  %3 = getelementptr inbounds %struct.tree_statement_list_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !183
  store ptr %4, ptr %0, align 8, !tbaa !181
  ret void
}

; Function Attrs: optsize
declare ptr @expand_vec_cond_expr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @do_jump(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr_addr_expr(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr @ptr_mode, align 4, !tbaa !22
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 14
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = tail call i32 @vector_type_mode(ptr noundef nonnull %9) #17
  br label %20

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  br label %20

20:                                               ; preds = %13, %15, %4
  %21 = phi i32 [ %2, %4 ], [ %14, %13 ], [ %19, %15 ]
  %22 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i16
  switch i16 %25, label %36 [
    i16 10, label %26
    i16 12, label %26
  ]

26:                                               ; preds = %20, %20
  %27 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = load i64, ptr %28, align 8
  %30 = lshr i64 %29, 56
  %31 = trunc i64 %30 to i8
  %32 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !35
  %33 = tail call i32 %32(i8 noundef zeroext %31) #17
  %34 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57), align 8, !tbaa !131
  %35 = tail call i32 %34(i8 noundef zeroext %31) #17
  br label %36

36:                                               ; preds = %20, %26
  %37 = phi i8 [ %31, %26 ], [ 0, %20 ]
  %38 = phi i32 [ %33, %26 ], [ 16, %20 ]
  %39 = phi i32 [ %35, %26 ], [ %5, %20 ]
  %40 = icmp eq i32 %21, %38
  %41 = icmp eq i32 %21, %39
  %42 = select i1 %40, i1 true, i1 %41
  %43 = select i1 %42, i32 %21, i32 %38
  %44 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !9
  %46 = tail call fastcc ptr @expand_expr_addr_expr_1(ptr noundef %45, ptr noundef %1, i32 noundef %43, i32 noundef %3, i8 noundef zeroext %37) #18
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, 0
  %51 = icmp eq i32 %49, %43
  %52 = or i1 %50, %51
  br i1 %52, label %55, label %53

53:                                               ; preds = %36
  %54 = tail call ptr @convert_memory_address_addr_space(i32 noundef %43, ptr noundef nonnull %46, i8 noundef zeroext %37) #17
  br label %55

55:                                               ; preds = %53, %36
  %56 = phi ptr [ %54, %53 ], [ %46, %36 ]
  ret ptr %56
}

; Function Attrs: optsize
declare void @rest_of_decl_compilation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @expand_decl(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @string_constant(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #17
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %119 [
    i16 121, label %6
    i16 63, label %41
    i16 66, label %41
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %119 [
    i16 28, label %11
    i16 32, label %14
    i16 45, label %16
  ]

11:                                               ; preds = %6
  %12 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !5
  store ptr %12, ptr %1, align 8, !tbaa !5
  %13 = load ptr, ptr %7, align 8, !tbaa !9
  br label %119

14:                                               ; preds = %6
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !5
  br label %65

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = load i64, ptr %18, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %119 [
    i16 28, label %23
    i16 32, label %23
  ]

23:                                               ; preds = %16, %16
  %24 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %8) #18
  %25 = tail call i32 @integer_zerop(ptr noundef %24) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %23
  %28 = load i64, ptr %24, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 23
  br i1 %30, label %31, label %119

31:                                               ; preds = %27
  %32 = load i64, ptr %20, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 23
  br i1 %34, label %35, label %119

35:                                               ; preds = %31
  %36 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %37 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %36, ptr noundef nonnull %20) #17
  %38 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %39 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %38, ptr noundef nonnull %24) #17
  %40 = tail call ptr @size_diffop_loc(i32 noundef 0, ptr noundef %37, ptr noundef %39) #17
  br label %65

41:                                               ; preds = %2, %2
  %42 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !9
  %44 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !9
  %46 = tail call ptr @tree_strip_nop_conversions(ptr noundef %43) #17
  %47 = tail call ptr @tree_strip_nop_conversions(ptr noundef %45) #17
  %48 = load i64, ptr %46, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 121
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !9
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i16
  switch i16 %55, label %56 [
    i16 28, label %65
    i16 32, label %65
  ]

56:                                               ; preds = %51, %41
  %57 = load i64, ptr %47, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 121
  br i1 %59, label %60, label %119

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !9
  %63 = load i64, ptr %62, align 8
  %64 = trunc i64 %63 to i16
  switch i16 %64, label %119 [
    i16 28, label %65
    i16 32, label %65
  ]

65:                                               ; preds = %60, %60, %51, %51, %35, %23, %14
  %66 = phi ptr [ %8, %14 ], [ %18, %23 ], [ %18, %35 ], [ %53, %51 ], [ %53, %51 ], [ %62, %60 ], [ %62, %60 ]
  %67 = phi ptr [ %15, %14 ], [ %20, %23 ], [ %40, %35 ], [ %47, %51 ], [ %47, %51 ], [ %46, %60 ], [ %46, %60 ]
  %68 = load i64, ptr %66, align 8
  %69 = trunc i64 %68 to i16
  switch i16 %69, label %119 [
    i16 28, label %70
    i16 32, label %73
  ]

70:                                               ; preds = %65
  %71 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %72 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %71, ptr noundef %67) #17
  store ptr %72, ptr %1, align 8, !tbaa !5
  br label %119

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.tree_decl_common, ptr %66, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !9
  %76 = icmp eq ptr %75, null
  br i1 %76, label %119, label %77

77:                                               ; preds = %73
  %78 = load i64, ptr %75, align 8
  %79 = and i64 %78, 65535
  %80 = icmp eq i64 %79, 28
  %81 = and i64 %68, 1114112
  %82 = icmp eq i64 %81, 1048576
  %83 = and i1 %82, %80
  br i1 %83, label %84, label %119

84:                                               ; preds = %77
  %85 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !154
  %86 = tail call zeroext i8 %85(ptr noundef nonnull %66) #17
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %119, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.tree_decl_common, ptr %66, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !9
  %91 = icmp eq ptr %90, null
  br i1 %91, label %119, label %92

92:                                               ; preds = %88
  %93 = load i64, ptr %90, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 23
  br i1 %95, label %96, label %119

96:                                               ; preds = %92
  %97 = load ptr, ptr %74, align 8, !tbaa !9
  %98 = getelementptr inbounds %struct.tree_string, ptr %97, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !9
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %119, label %101

101:                                              ; preds = %96
  %102 = zext nneg i32 %99 to i64
  %103 = tail call i32 @compare_tree_int(ptr noundef nonnull %90, i64 noundef %102) #17
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %107 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %106, ptr noundef %67) #17
  %108 = load ptr, ptr %89, align 8, !tbaa !9
  %109 = tail call i32 @compare_tree_int(ptr noundef %108, i64 noundef %102) #17
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = tail call i32 @host_integerp(ptr noundef %107, i32 noundef 1) #17
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = tail call i32 @compare_tree_int(ptr noundef %107, i64 noundef %102) #17
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %119, label %117

117:                                              ; preds = %114, %105
  store ptr %107, ptr %1, align 8, !tbaa !5
  %118 = load ptr, ptr %74, align 8, !tbaa !9
  br label %119

119:                                              ; preds = %56, %60, %65, %117, %77, %73, %84, %101, %96, %92, %88, %114, %111, %2, %6, %31, %27, %16, %70, %11
  %120 = phi ptr [ %13, %11 ], [ %66, %70 ], [ null, %16 ], [ null, %27 ], [ null, %31 ], [ null, %6 ], [ null, %2 ], [ %118, %117 ], [ null, %77 ], [ null, %73 ], [ null, %84 ], [ null, %101 ], [ null, %96 ], [ null, %92 ], [ null, %88 ], [ null, %114 ], [ null, %111 ], [ null, %65 ], [ null, %60 ], [ null, %56 ]
  ret ptr %120
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @try_casesi(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4, ptr nocapture noundef readnone %5, ptr nocapture noundef readnone %6) local_unnamed_addr #11 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @try_tablejump(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %1) #17
  %8 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %2) #17
  %9 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %0, ptr noundef %7, ptr noundef %8) #17
  %10 = tail call fastcc ptr @expand_normal(ptr noundef %9) #18
  tail call void @do_pending_stack_adjust() #17
  %11 = load i64, ptr %0, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 14
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17
  %16 = load i64, ptr %0, align 8
  br label %22

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i64 [ %16, %14 ], [ %11, %17 ]
  %24 = phi i32 [ %15, %14 ], [ %21, %17 ]
  %25 = and i64 %23, 65535
  %26 = icmp eq i64 %25, 14
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #17
  br label %34

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %29 ]
  %36 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 14
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = tail call i32 @vector_type_mode(ptr noundef nonnull %37) #17
  br label %48

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  br label %48

48:                                               ; preds = %43, %41
  %49 = phi i32 [ %42, %41 ], [ %47, %43 ]
  %50 = tail call fastcc ptr @expand_normal(ptr noundef nonnull %3) #18
  %51 = load ptr, ptr %36, align 8, !tbaa !9
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = lshr i32 %53, 21
  %55 = and i32 %54, 1
  %56 = tail call ptr @convert_modes(i32 noundef %35, i32 noundef %49, ptr noundef %50, i32 noundef %55) #18
  tail call fastcc void @do_tablejump(ptr noundef %10, i32 noundef %24, ptr noundef %56, ptr noundef %4, ptr noundef %5) #18
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_tablejump(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !9
  %8 = load ptr, ptr @cfun, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !184
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !186
  %13 = sext i32 %12 to i64
  %14 = icmp sgt i64 %7, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = trunc i64 %7 to i32
  store i32 %16, ptr %11, align 4, !tbaa !186
  br label %17

17:                                               ; preds = %15, %5
  %18 = icmp eq ptr %4, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  tail call void @emit_cmp_and_jump_insns(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 87, ptr noundef null, i32 noundef %1, i32 noundef 1, ptr noundef nonnull %4) #17
  br label %20

20:                                               ; preds = %19, %17
  %21 = icmp eq i32 %1, 16
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = tail call ptr @convert_to_mode(i32 noundef 16, ptr noundef %0, i32 noundef 1) #18
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi ptr [ %23, %22 ], [ %0, %20 ]
  %26 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !9
  %27 = zext i8 %26 to i64
  %28 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %27) #17
  %29 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef 16, ptr noundef %25, ptr noundef %28) #17
  %30 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %3) #17
  %31 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %29, ptr noundef %30) #17
  %32 = tail call ptr @memory_address_addr_space(i32 noundef 16, ptr noundef %31, i8 noundef zeroext 0) #17
  %33 = tail call ptr @gen_reg_rtx(i32 noundef 16) #17
  %34 = tail call ptr @gen_const_mem(i32 noundef 16, ptr noundef %32) #17
  tail call void @convert_move(ptr noundef %33, ptr noundef %34, i32 noundef 0) #18
  %35 = tail call ptr @gen_tablejump(ptr noundef %33, ptr noundef %3) #17
  %36 = tail call ptr @emit_jump_insn(ptr noundef %35) #17
  %37 = load i32, ptr @flag_pic, align 4, !tbaa !22
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = tail call ptr @emit_barrier() #17
  br label %41

41:                                               ; preds = %39, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @vector_mode_valid_p(i32 noundef %0) local_unnamed_addr #0 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !9
  %5 = add i8 %4, -18
  %6 = icmp ult i8 %5, -6
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 59), align 8, !tbaa !188
  %9 = tail call zeroext i8 %8(i32 noundef %0) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = zext i8 %13 to i32
  %15 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 58), align 8, !tbaa !189
  %16 = tail call zeroext i8 %15(i32 noundef %14) #17
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %7, %1, %11
  %19 = phi i32 [ %17, %11 ], [ 0, %1 ], [ 1, %7 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_personality_function(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !5
  %3 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !5
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !5
  %5 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %2, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %4, ptr noundef null) #17
  %6 = tail call ptr @get_identifier(ptr noundef %0) #17
  %7 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %6, ptr noundef %5) #17
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = or i64 %9, 33558528
  store i64 %10, ptr %8, align 8
  %11 = load i64, ptr %7, align 8
  %12 = or i64 %11, 134217728
  store i64 %12, ptr %7, align 8
  %13 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void @make_decl_rtl(ptr noundef nonnull %7) #17
  %17 = load ptr, ptr %13, align 8, !tbaa !9
  br label %18

18:                                               ; preds = %1, %16
  %19 = phi ptr [ %17, %16 ], [ %14, %1 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 67108864
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 10304, ptr noundef nonnull @.str.1) #17
  %26 = load ptr, ptr %13, align 8, !tbaa !9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  tail call void @make_decl_rtl(ptr noundef nonnull %7) #17
  %29 = load ptr, ptr %13, align 8, !tbaa !9
  br label %30

30:                                               ; preds = %18, %25, %28
  %31 = phi ptr [ %29, %28 ], [ %26, %25 ], [ %19, %18 ]
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !9
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %34, align 8, !tbaa !9
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_personality_function(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = tail call i32 @function_needs_eh_personality(ptr noundef %5) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = icmp eq ptr %3, null
  %10 = icmp eq i32 %6, 1
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 45), align 8, !tbaa !190
  %14 = tail call ptr %13() #17
  br label %20

15:                                               ; preds = %8
  %16 = icmp ne i32 %6, 2
  %17 = icmp ne ptr %3, null
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 10327, ptr noundef nonnull @.str.1) #17
  br label %20

20:                                               ; preds = %12, %19, %15
  %21 = phi ptr [ %14, %12 ], [ null, %19 ], [ %3, %15 ]
  %22 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  tail call void @make_decl_rtl(ptr noundef nonnull %21) #17
  %26 = load ptr, ptr %22, align 8, !tbaa !9
  br label %27

27:                                               ; preds = %20, %25
  %28 = phi ptr [ %26, %25 ], [ %23, %20 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  br label %31

31:                                               ; preds = %1, %27
  %32 = phi ptr [ %30, %27 ], [ null, %1 ]
  ret ptr %32
}

; Function Attrs: optsize
declare i32 @function_needs_eh_personality(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #2

; Function Attrs: optsize
declare i32 @ix86_function_type_abi(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ix86_reg_parm_stack_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_cumulative_args(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @function_arg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @function_arg_advance(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @emit_jump(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @change_address(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @split_double(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @store_by_pieces_2(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = zext nneg i32 %1 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !9
  %7 = getelementptr inbounds %struct.store_by_pieces_d, ptr %2, i64 0, i32 4
  %8 = zext i8 %6 to i64
  %9 = load i64, ptr %7, align 8, !tbaa !104
  %10 = icmp ult i64 %9, %8
  br i1 %10, label %53, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.store_by_pieces_d, ptr %2, i64 0, i32 8
  %13 = getelementptr inbounds %struct.store_by_pieces_d, ptr %2, i64 0, i32 5
  %14 = getelementptr inbounds %struct.store_by_pieces_d, ptr %2, i64 0, i32 2
  %15 = getelementptr inbounds %struct.store_by_pieces_d, ptr %2, i64 0, i32 1
  %16 = getelementptr inbounds %struct.store_by_pieces_d, ptr %2, i64 0, i32 6
  %17 = getelementptr inbounds %struct.store_by_pieces_d, ptr %2, i64 0, i32 7
  %18 = load i32, ptr %12, align 8, !tbaa !106
  br label %19

19:                                               ; preds = %11, %49
  %20 = phi i32 [ %18, %11 ], [ %44, %49 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, ptr %13, align 8, !tbaa !109
  %24 = sub nsw i64 %23, %8
  store i64 %24, ptr %13, align 8, !tbaa !109
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, ptr %14, align 8, !tbaa !107
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr %2, align 8, !tbaa !105
  br i1 %27, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %15, align 8, !tbaa !108
  %31 = load i64, ptr %13, align 8, !tbaa !109
  %32 = tail call ptr @adjust_automodify_address_1(ptr noundef %28, i32 noundef %1, ptr noundef %30, i64 noundef %31, i32 noundef 1) #17
  br label %36

33:                                               ; preds = %25
  %34 = load i64, ptr %13, align 8, !tbaa !109
  %35 = tail call ptr @adjust_address_1(ptr noundef %28, i32 noundef %1, i64 noundef %34, i32 noundef 1, i32 noundef 1) #17
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi ptr [ %32, %29 ], [ %35, %33 ]
  %38 = load ptr, ptr %16, align 8, !tbaa !101
  %39 = load ptr, ptr %17, align 8, !tbaa !103
  %40 = load i64, ptr %13, align 8, !tbaa !109
  %41 = tail call ptr %38(ptr noundef %39, i64 noundef %40, i32 noundef %1) #17
  %42 = tail call ptr (ptr, ...) %0(ptr noundef %37, ptr noundef %41) #17
  %43 = tail call ptr @emit_insn(ptr noundef %42) #17
  %44 = load i32, ptr %12, align 8, !tbaa !106
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i64, ptr %13, align 8, !tbaa !109
  %48 = add nsw i64 %47, %8
  store i64 %48, ptr %13, align 8, !tbaa !109
  br label %49

49:                                               ; preds = %46, %36
  %50 = load i64, ptr %7, align 8, !tbaa !104
  %51 = sub i64 %50, %8
  store i64 %51, ptr %7, align 8, !tbaa !104
  %52 = icmp ult i64 %51, %8
  br i1 %52, label %53, label %19, !llvm.loop !191

53:                                               ; preds = %49, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal ptr @clear_by_pieces_1(ptr nocapture readnone %0, i64 %1, i32 %2) #13 {
  %4 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @register_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_move_change_mode(i32 noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = load i32, ptr %2, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = tail call i32 @push_operand(ptr noundef nonnull %2, i32 noundef %7) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %46, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !9
  %13 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %12) #17
  %14 = load i32, ptr %2, align 8
  %15 = and i32 %14, 134217728
  %16 = load i32, ptr %13, align 8
  %17 = and i32 %16, -134217729
  %18 = or disjoint i32 %17, %15
  store i32 %18, ptr %13, align 8
  %19 = load i32, ptr %2, align 8
  %20 = and i32 %19, 268435456
  %21 = and i32 %18, -268435457
  %22 = or disjoint i32 %21, %20
  store i32 %22, ptr %13, align 8
  %23 = load i32, ptr %2, align 8
  %24 = and i32 %23, -2147483648
  %25 = and i32 %22, 2147483647
  %26 = or disjoint i32 %25, %24
  store i32 %26, ptr %13, align 8
  %27 = load i32, ptr %2, align 8
  %28 = and i32 %27, 33554432
  %29 = and i32 %26, -33554433
  %30 = or disjoint i32 %29, %28
  store i32 %30, ptr %13, align 8
  %31 = load i32, ptr %2, align 8
  %32 = and i32 %31, 67108864
  %33 = and i32 %30, -67108865
  %34 = or disjoint i32 %33, %32
  store i32 %34, ptr %13, align 8
  %35 = load i32, ptr %2, align 8
  %36 = and i32 %35, 16777216
  %37 = and i32 %34, -16777217
  %38 = or disjoint i32 %37, %36
  store i32 %38, ptr %13, align 8
  %39 = load i32, ptr %2, align 8
  %40 = and i32 %39, 1073741824
  %41 = and i32 %38, -1073741825
  %42 = or disjoint i32 %41, %40
  store i32 %42, ptr %13, align 8
  %43 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %44, ptr %45, align 8, !tbaa !9
  br label %63

46:                                               ; preds = %4
  %47 = load i32, ptr %2, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 43
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, ptr @reload_in_progress, align 4, !tbaa !22
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = tail call ptr @adjust_address_1(ptr noundef nonnull %2, i32 noundef %0, i64 noundef 0, i32 noundef 0, i32 noundef 1) #17
  tail call void @copy_replacements(ptr noundef nonnull %2, ptr noundef %54) #17
  br label %63

55:                                               ; preds = %50
  %56 = tail call ptr @adjust_address_1(ptr noundef nonnull %2, i32 noundef %0, i64 noundef 0, i32 noundef 1, i32 noundef 1) #17
  br label %63

57:                                               ; preds = %46
  %58 = icmp eq i8 %3, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  %60 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %2, i32 noundef %1, i32 noundef 0) #17
  br label %63

61:                                               ; preds = %57
  %62 = tail call ptr @simplify_subreg(i32 noundef %0, ptr noundef nonnull %2, i32 noundef %1, i32 noundef 0) #17
  br label %63

63:                                               ; preds = %55, %53, %61, %59, %10
  %64 = phi ptr [ %13, %10 ], [ %54, %53 ], [ %56, %55 ], [ %60, %59 ], [ %62, %61 ]
  ret ptr %64
}

; Function Attrs: optsize
declare void @copy_replacements(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_replacement(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @undefined_operand_subword_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = shl nsw i32 %1, 2
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load i32, ptr %13, align 8, !tbaa !9
  %15 = add i32 %14, %12
  %16 = zext nneg i32 %11 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !9
  %19 = zext i8 %18 to i32
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %6
  %22 = load i32, ptr @word_mode, align 4, !tbaa !22
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !9
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 0, %26
  %28 = icmp sle i32 %15, %27
  %29 = zext i1 %28 to i8
  br label %30

30:                                               ; preds = %21, %6, %2
  %31 = phi i8 [ 0, %2 ], [ 1, %6 ], [ %29, %21 ]
  ret i8 %31
}

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @exact_real_truncate(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_best_mode(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_mem_expr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @constructor_static_from_elts_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @initializer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @initializer_constant_valid_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @target_align(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi i64 [ -1, %1 ], [ %15, %7 ]
  %4 = phi ptr [ %0, %1 ], [ %14, %7 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %39 [
    i16 42, label %16
    i16 41, label %7
    i16 45, label %19
    i16 46, label %19
    i16 116, label %29
    i16 113, label %29
    i16 117, label %29
    i16 118, label %29
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !9
  %13 = zext i32 %12 to i64
  %14 = load ptr, ptr %8, align 8, !tbaa !9
  %15 = tail call i64 @llvm.umin.i64(i64 %3, i64 %13)
  br label %2

16:                                               ; preds = %2, %39, %29, %19
  %17 = phi i64 [ %38, %29 ], [ %28, %19 ], [ %44, %39 ], [ 1, %2 ]
  %18 = tail call i64 @llvm.umin.i64(i64 %3, i64 %17)
  ret i64 %18

19:                                               ; preds = %2, %2
  %20 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !9
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !9
  %27 = tail call fastcc i64 @target_align(ptr noundef %26) #18, !range !122
  %28 = tail call i64 @llvm.umin.i64(i64 %27, i64 %24)
  br label %16

29:                                               ; preds = %2, %2, %2, %2
  %30 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !9
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !9
  %37 = tail call fastcc i64 @target_align(ptr noundef %36) #18, !range !122
  %38 = tail call i64 @llvm.umax.i64(i64 %37, i64 %34)
  br label %16

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !9
  %42 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !9
  %44 = zext i32 %43 to i64
  br label %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #18, !range !164
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #18, !range !161
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #18
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !161
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1446, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !116
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !161
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !78
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !161
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #18
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #11 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !22
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !9
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @save_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emutls_decl(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_with_type_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_tree_list_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_function_call_expr(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @output_constant_def(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @all_zeros_p(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 51
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  %9 = call zeroext i8 @categorize_ctor_elements(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !116
  %10 = load i64, ptr %2, align 8, !tbaa !78
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %16

13:                                               ; preds = %1
  %14 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %0) #17
  %15 = zext i8 %14 to i32
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi i32 [ %12, %8 ], [ %15, %13 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @mostly_zeros_p(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 51
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  %9 = call zeroext i8 @categorize_ctor_elements(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !116
  %10 = load i8, ptr %4, align 1, !tbaa !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = tail call i64 @count_type_elements(ptr noundef %14, i8 noundef zeroext 0) #18
  %16 = load i64, ptr %2, align 8, !tbaa !78
  %17 = sdiv i64 %15, 4
  %18 = icmp slt i64 %16, %17
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %8, %12
  %21 = phi i32 [ %19, %12 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %25

22:                                               ; preds = %1
  %23 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %0) #17
  %24 = zext i8 %23 to i32
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i32 [ %21, %20 ], [ %24, %22 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @store_constructor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %793 [
    i16 16, label %10
    i16 17, label %10
    i16 18, label %10
    i16 15, label %193
    i16 14, label %547
  ]

10:                                               ; preds = %4, %4, %4
  %11 = icmp eq i64 %3, 0
  %12 = icmp ne i32 %2, 0
  %13 = or i1 %12, %11
  br i1 %13, label %79, label %14

14:                                               ; preds = %10
  %15 = trunc i64 %8 to i32
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -17
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = tail call ptr @expr_size(ptr noundef nonnull %0) #17
  %25 = tail call ptr @clear_storage(ptr noundef %1, ptr noundef %24, i32 noundef 0) #18
  br label %79

26:                                               ; preds = %14, %19
  %27 = load i32, ptr %1, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 37
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i64, ptr %0, align 8
  %32 = and i64 %31, 67108864
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  %35 = lshr i32 %27, 16
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !9
  %40 = icmp ult i8 %39, 5
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %37
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = tail call ptr @emit_move_insn(ptr noundef nonnull %1, ptr noundef %43) #18
  br label %79

45:                                               ; preds = %34, %30, %26
  %46 = icmp sgt i64 %3, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !9
  %50 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %49) #18
  %51 = tail call i32 @fields_length(ptr noundef nonnull %7) #17
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = tail call fastcc i32 @mostly_zeros_p(ptr noundef nonnull %0) #18, !range !161
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, ptr %1, align 8
  br label %73

58:                                               ; preds = %53, %47
  %59 = load i32, ptr %1, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 37
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = lshr i32 %59, 16
  %64 = and i32 %63, 255
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !9
  %68 = zext i8 %67 to i64
  %69 = icmp eq i64 %68, %3
  br i1 %69, label %70, label %73

70:                                               ; preds = %62, %58
  %71 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %3) #17
  %72 = tail call ptr @clear_storage(ptr noundef nonnull %1, ptr noundef %71, i32 noundef 0) #18
  br label %79

73:                                               ; preds = %56, %45, %62
  %74 = phi i32 [ %57, %56 ], [ %27, %45 ], [ %59, %62 ]
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 37
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = tail call ptr @emit_clobber(ptr noundef nonnull %1) #17
  br label %79

79:                                               ; preds = %10, %23, %70, %41, %77, %73
  %80 = phi i32 [ 0, %77 ], [ 0, %73 ], [ 1, %41 ], [ 1, %70 ], [ 1, %23 ], [ 1, %10 ]
  %81 = phi i1 [ false, %77 ], [ false, %73 ], [ true, %41 ], [ true, %70 ], [ true, %23 ], [ true, %10 ]
  %82 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !9
  %84 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %83) #18
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %794, label %86

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %88

88:                                               ; preds = %86, %187
  %89 = phi ptr [ %83, %86 ], [ %189, %187 ]
  %90 = phi i64 [ 0, %86 ], [ %188, %187 ]
  %91 = trunc i64 %90 to i32
  %92 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %89, i32 noundef %91) #18
  %93 = getelementptr inbounds %struct.constructor_elt_d, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !133
  %95 = load ptr, ptr %92, align 8, !tbaa !135
  %96 = icmp eq ptr %95, null
  br i1 %96, label %187, label %97

97:                                               ; preds = %88
  br i1 %81, label %98, label %101

98:                                               ; preds = %97
  %99 = tail call zeroext i8 @initializer_zerop(ptr noundef %94) #17
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %187

101:                                              ; preds = %98, %97
  %102 = getelementptr inbounds %struct.tree_decl_common, ptr %95, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !9
  %104 = tail call i32 @host_integerp(ptr noundef %103, i32 noundef 1) #17
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load ptr, ptr %102, align 8, !tbaa !9
  %108 = tail call i64 @tree_low_cst(ptr noundef %107, i32 noundef 1) #17
  br label %109

109:                                              ; preds = %101, %106
  %110 = phi i64 [ %108, %106 ], [ -1, %101 ]
  %111 = getelementptr inbounds %struct.tree_decl_common, ptr %95, i64 0, i32 2
  %112 = load i64, ptr %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = and i32 %113, 255
  %115 = and i64 %112, 33554432
  %116 = icmp eq i64 %115, 0
  %117 = select i1 %116, i32 %114, i32 0
  %118 = getelementptr inbounds %struct.tree_field_decl, ptr %95, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !9
  %120 = tail call i32 @host_integerp(ptr noundef %119, i32 noundef 0) #17
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %109
  %123 = tail call ptr @bit_position(ptr noundef nonnull %95) #17
  %124 = tail call i32 @host_integerp(ptr noundef %123, i32 noundef 0) #17
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = tail call i64 @int_bit_position(ptr noundef nonnull %95) #17
  br label %168

128:                                              ; preds = %109, %122
  %129 = getelementptr inbounds %struct.tree_field_decl, ptr %95, i64 0, i32 4
  %130 = load ptr, ptr %129, align 8, !tbaa !9
  %131 = tail call i64 @tree_low_cst(ptr noundef %130, i32 noundef 0) #17
  %132 = icmp eq ptr %119, null
  br i1 %132, label %168, label %133

133:                                              ; preds = %128
  %134 = load i64, ptr %119, align 8
  %135 = and i64 %134, 131072
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load ptr, ptr %6, align 8, !tbaa !9
  %139 = tail call ptr @make_tree(ptr noundef %138, ptr noundef nonnull %1) #17
  %140 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %119, ptr noundef %139) #17
  br label %141

141:                                              ; preds = %133, %137
  %142 = phi ptr [ %140, %137 ], [ %119, %133 ]
  %143 = tail call fastcc ptr @expand_normal(ptr noundef %142) #18
  %144 = load i32, ptr %1, align 8
  %145 = and i32 %144, 65535
  %146 = icmp eq i32 %145, 43
  br i1 %146, label %148, label %147

147:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5300, ptr noundef nonnull @.str.1) #17
  br label %148

148:                                              ; preds = %141, %147
  %149 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !35
  %150 = load ptr, ptr %87, align 8, !tbaa !9
  %151 = icmp eq ptr %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.mem_attrs, ptr %150, i64 0, i32 5
  %154 = load i8, ptr %153, align 8, !tbaa !29
  br label %155

155:                                              ; preds = %148, %152
  %156 = phi i8 [ %154, %152 ], [ 0, %148 ]
  %157 = tail call i32 %149(i8 noundef zeroext %156) #17
  %158 = load i32, ptr %143, align 8
  %159 = lshr i32 %158, 16
  %160 = and i32 %159, 255
  %161 = icmp eq i32 %160, %157
  br i1 %161, label %164, label %162

162:                                              ; preds = %155
  %163 = tail call ptr @convert_to_mode(i32 noundef %157, ptr noundef nonnull %143, i32 noundef 0) #18
  br label %164

164:                                              ; preds = %162, %155
  %165 = phi ptr [ %163, %162 ], [ %143, %155 ]
  %166 = tail call i64 @highest_pow2_factor(ptr noundef %142) #18
  %167 = tail call ptr @offset_address(ptr noundef nonnull %1, ptr noundef %165, i64 noundef %166) #17
  br label %168

168:                                              ; preds = %126, %164, %128
  %169 = phi i64 [ %131, %164 ], [ %131, %128 ], [ %127, %126 ]
  %170 = phi ptr [ %167, %164 ], [ %1, %128 ], [ %1, %126 ]
  %171 = load i32, ptr %170, align 8
  %172 = and i32 %171, 16842751
  %173 = icmp eq i32 %172, 43
  br i1 %173, label %174, label %182

174:                                              ; preds = %168
  %175 = load i64, ptr %111, align 8
  %176 = and i64 %175, 67108864
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = tail call ptr @copy_rtx(ptr noundef nonnull %170) #17
  %180 = load i32, ptr %179, align 8
  %181 = or i32 %180, 16777216
  store i32 %181, ptr %179, align 8
  br label %182

182:                                              ; preds = %178, %174, %168
  %183 = phi ptr [ %179, %178 ], [ %170, %174 ], [ %170, %168 ]
  %184 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !9
  %186 = tail call i32 @get_alias_set(ptr noundef %185) #17
  tail call fastcc void @store_constructor_field(ptr noundef nonnull %183, i64 noundef %110, i64 noundef %169, i32 noundef %117, ptr noundef %94, ptr noundef nonnull %7, i32 noundef %80, i32 noundef %186) #18
  br label %187

187:                                              ; preds = %98, %88, %182
  %188 = add nuw nsw i64 %90, 1
  %189 = load ptr, ptr %82, align 8, !tbaa !9
  %190 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %189) #18
  %191 = zext i32 %190 to i64
  %192 = icmp ult i64 %188, %191
  br i1 %192, label %88, label %794, !llvm.loop !192

193:                                              ; preds = %4
  %194 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !9
  %196 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !9
  %198 = getelementptr inbounds %struct.tree_type, ptr %197, i64 0, i32 13
  %199 = load ptr, ptr %198, align 8, !tbaa !9
  %200 = icmp eq ptr %199, null
  br i1 %200, label %217, label %201

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.tree_type, ptr %197, i64 0, i32 14
  %203 = load ptr, ptr %202, align 8, !tbaa !9
  %204 = icmp eq ptr %203, null
  br i1 %204, label %217, label %205

205:                                              ; preds = %201
  %206 = tail call i32 @host_integerp(ptr noundef nonnull %199, i32 noundef 0) #17
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %217, label %208

208:                                              ; preds = %205
  %209 = load ptr, ptr %202, align 8, !tbaa !9
  %210 = tail call i32 @host_integerp(ptr noundef %209, i32 noundef 0) #17
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %208
  %213 = load ptr, ptr %198, align 8, !tbaa !9
  %214 = tail call i64 @tree_low_cst(ptr noundef %213, i32 noundef 0) #17
  %215 = load ptr, ptr %202, align 8, !tbaa !9
  %216 = tail call i64 @tree_low_cst(ptr noundef %215, i32 noundef 0) #17
  br label %217

217:                                              ; preds = %193, %201, %205, %212, %208
  %218 = phi i1 [ true, %212 ], [ false, %208 ], [ false, %205 ], [ false, %201 ], [ false, %193 ]
  %219 = phi i64 [ %216, %212 ], [ 0, %208 ], [ 0, %205 ], [ 0, %201 ], [ 0, %193 ]
  %220 = phi i64 [ %214, %212 ], [ 0, %208 ], [ 0, %205 ], [ 0, %201 ], [ 0, %193 ]
  %221 = icmp eq i32 %2, 0
  br i1 %221, label %222, label %315

222:                                              ; preds = %217
  %223 = load i32, ptr %1, align 8
  %224 = and i32 %223, 65535
  %225 = icmp eq i32 %224, 37
  br i1 %225, label %226, label %230

226:                                              ; preds = %222
  %227 = load i64, ptr %0, align 8
  %228 = and i64 %227, 67108864
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %293

230:                                              ; preds = %226, %222
  %231 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !9
  %233 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %232) #18
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %281, label %235

235:                                              ; preds = %230, %267
  %236 = phi ptr [ %275, %267 ], [ %232, %230 ]
  %237 = phi i1 [ true, %267 ], [ %218, %230 ]
  %238 = phi i64 [ %274, %267 ], [ 0, %230 ]
  %239 = phi i64 [ %269, %267 ], [ 0, %230 ]
  %240 = phi i64 [ %273, %267 ], [ 0, %230 ]
  %241 = trunc i64 %238 to i32
  %242 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %236, i32 noundef %241) #18
  %243 = getelementptr inbounds %struct.constructor_elt_d, ptr %242, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !133
  %245 = load ptr, ptr %242, align 8, !tbaa !135
  br i1 %237, label %246, label %293

246:                                              ; preds = %235
  %247 = icmp eq ptr %245, null
  br i1 %247, label %267, label %248

248:                                              ; preds = %246
  %249 = load i64, ptr %245, align 8
  %250 = and i64 %249, 65535
  %251 = icmp eq i64 %250, 111
  br i1 %251, label %252, label %267

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.tree_exp, ptr %245, i64 0, i32 3
  %254 = load ptr, ptr %253, align 8, !tbaa !9
  %255 = getelementptr inbounds %struct.tree_exp, ptr %245, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !9
  %257 = tail call i32 @host_integerp(ptr noundef %254, i32 noundef 1) #17
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %293, label %259

259:                                              ; preds = %252
  %260 = tail call i32 @host_integerp(ptr noundef %256, i32 noundef 1) #17
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %293, label %262

262:                                              ; preds = %259
  %263 = tail call i64 @tree_low_cst(ptr noundef %256, i32 noundef 1) #17
  %264 = tail call i64 @tree_low_cst(ptr noundef %254, i32 noundef 1) #17
  %265 = add i64 %263, 1
  %266 = sub i64 %265, %264
  br label %267

267:                                              ; preds = %262, %246, %248
  %268 = phi i64 [ %266, %262 ], [ 1, %248 ], [ 1, %246 ]
  %269 = add nsw i64 %268, %239
  %270 = tail call fastcc i32 @mostly_zeros_p(ptr noundef %244) #18, !range !161
  %271 = icmp eq i32 %270, 0
  %272 = select i1 %271, i64 0, i64 %268
  %273 = add nsw i64 %272, %240
  %274 = add nuw nsw i64 %238, 1
  %275 = load ptr, ptr %231, align 8, !tbaa !9
  %276 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %275) #18
  %277 = zext i32 %276 to i64
  %278 = icmp ult i64 %274, %277
  br i1 %278, label %235, label %279, !llvm.loop !193

279:                                              ; preds = %267
  %280 = shl nsw i64 %273, 2
  br label %281

281:                                              ; preds = %279, %230
  %282 = phi i64 [ 0, %230 ], [ %280, %279 ]
  %283 = phi i64 [ 0, %230 ], [ %269, %279 ]
  %284 = phi i1 [ %218, %230 ], [ true, %279 ]
  %285 = sub nsw i64 %219, %220
  %286 = icmp sgt i64 %283, %285
  %287 = select i1 %284, i1 %286, i1 false
  br i1 %287, label %288, label %293

288:                                              ; preds = %281
  %289 = mul nsw i64 %283, 3
  %290 = icmp sge i64 %282, %289
  %291 = icmp sgt i64 %3, 0
  %292 = and i1 %291, %290
  br i1 %292, label %295, label %309

293:                                              ; preds = %235, %259, %252, %281, %226
  %294 = icmp sgt i64 %3, 0
  br i1 %294, label %295, label %309

295:                                              ; preds = %288, %293
  %296 = load i32, ptr %1, align 8
  %297 = and i32 %296, 65535
  %298 = icmp eq i32 %297, 37
  br i1 %298, label %299, label %306

299:                                              ; preds = %295
  %300 = lshr i32 %296, 16
  %301 = and i32 %300, 255
  %302 = zext nneg i32 %301 to i64
  %303 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !5
  %305 = tail call ptr @emit_move_insn(ptr noundef nonnull %1, ptr noundef %304) #18
  br label %315

306:                                              ; preds = %295
  %307 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %3) #17
  %308 = tail call ptr @clear_storage(ptr noundef nonnull %1, ptr noundef %307, i32 noundef 0) #18
  br label %315

309:                                              ; preds = %293, %288
  %310 = load i32, ptr %1, align 8
  %311 = and i32 %310, 65535
  %312 = icmp eq i32 %311, 37
  br i1 %312, label %313, label %315

313:                                              ; preds = %309
  %314 = tail call ptr @emit_clobber(ptr noundef nonnull %1) #17
  br label %315

315:                                              ; preds = %217, %299, %306, %313, %309
  %316 = phi i1 [ true, %313 ], [ true, %309 ], [ false, %306 ], [ false, %299 ], [ false, %217 ]
  %317 = phi i32 [ 0, %313 ], [ 0, %309 ], [ 1, %306 ], [ 1, %299 ], [ %2, %217 ]
  %318 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !9
  %320 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %319) #18
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %794, label %322

322:                                              ; preds = %315
  %323 = getelementptr inbounds %struct.tree_type, ptr %195, i64 0, i32 6
  %324 = getelementptr inbounds %struct.tree_type, ptr %195, i64 0, i32 2
  %325 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %326 = getelementptr inbounds %struct.tree_type, ptr %195, i64 0, i32 3
  %327 = icmp eq i64 %220, 0
  br label %328

328:                                              ; preds = %322, %540
  %329 = phi ptr [ %319, %322 ], [ %543, %540 ]
  %330 = phi ptr [ %1, %322 ], [ %541, %540 ]
  %331 = phi i64 [ 0, %322 ], [ %542, %540 ]
  %332 = trunc i64 %331 to i32
  %333 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %329, i32 noundef %332) #18
  %334 = getelementptr inbounds %struct.constructor_elt_d, ptr %333, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !133
  %336 = load ptr, ptr %333, align 8, !tbaa !135
  br i1 %316, label %340, label %337

337:                                              ; preds = %328
  %338 = tail call zeroext i8 @initializer_zerop(ptr noundef %335) #17
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %340, label %540

340:                                              ; preds = %337, %328
  %341 = load i64, ptr %195, align 8
  %342 = and i64 %341, 65535
  %343 = icmp eq i64 %342, 14
  br i1 %343, label %344, label %346

344:                                              ; preds = %340
  %345 = tail call i32 @vector_type_mode(ptr noundef nonnull %195) #17
  br label %350

346:                                              ; preds = %340
  %347 = load i32, ptr %323, align 4
  %348 = lshr i32 %347, 16
  %349 = and i32 %348, 255
  br label %350

350:                                              ; preds = %346, %344
  %351 = phi i32 [ %345, %344 ], [ %349, %346 ]
  %352 = icmp eq i32 %351, 1
  br i1 %352, label %353, label %360

353:                                              ; preds = %350
  %354 = load ptr, ptr %324, align 8, !tbaa !9
  %355 = tail call i32 @host_integerp(ptr noundef %354, i32 noundef 1) #17
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %366, label %357

357:                                              ; preds = %353
  %358 = load ptr, ptr %324, align 8, !tbaa !9
  %359 = tail call i64 @tree_low_cst(ptr noundef %358, i32 noundef 1) #17
  br label %366

360:                                              ; preds = %350
  %361 = zext i32 %351 to i64
  %362 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %361
  %363 = load i8, ptr %362, align 1, !tbaa !9
  %364 = zext i8 %363 to i64
  %365 = shl nuw nsw i64 %364, 3
  br label %366

366:                                              ; preds = %357, %353, %360
  %367 = phi i64 [ %365, %360 ], [ %359, %357 ], [ -1, %353 ]
  %368 = icmp eq ptr %336, null
  br i1 %368, label %484, label %369

369:                                              ; preds = %366
  %370 = load i64, ptr %336, align 8
  %371 = and i64 %370, 65535
  %372 = icmp eq i64 %371, 111
  br i1 %372, label %373, label %481

373:                                              ; preds = %369
  %374 = getelementptr inbounds %struct.tree_exp, ptr %336, i64 0, i32 3
  %375 = load ptr, ptr %374, align 8, !tbaa !9
  %376 = getelementptr inbounds %struct.tree_exp, ptr %336, i64 1
  %377 = load ptr, ptr %376, align 8, !tbaa !9
  br i1 %218, label %378, label %434

378:                                              ; preds = %373
  %379 = tail call i32 @host_integerp(ptr noundef %375, i32 noundef 0) #17
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %434, label %381

381:                                              ; preds = %378
  %382 = tail call i32 @host_integerp(ptr noundef %377, i32 noundef 0) #17
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %434, label %384

384:                                              ; preds = %381
  %385 = tail call i64 @tree_low_cst(ptr noundef %375, i32 noundef 0) #17
  %386 = tail call i64 @tree_low_cst(ptr noundef %377, i32 noundef 0) #17
  %387 = sub nsw i64 %386, %385
  %388 = add nsw i64 %387, 1
  %389 = load i32, ptr %330, align 8
  %390 = and i32 %389, 65535
  %391 = icmp ne i32 %390, 43
  %392 = icmp slt i64 %387, 2
  %393 = select i1 %391, i1 true, i1 %392
  br i1 %393, label %403, label %394

394:                                              ; preds = %384
  %395 = load ptr, ptr %324, align 8, !tbaa !9
  %396 = tail call i32 @host_integerp(ptr noundef %395, i32 noundef 1) #17
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %434, label %398

398:                                              ; preds = %394
  %399 = load ptr, ptr %324, align 8, !tbaa !9
  %400 = tail call i64 @tree_low_cst(ptr noundef %399, i32 noundef 1) #17
  %401 = mul nsw i64 %400, %388
  %402 = icmp slt i64 %401, 321
  br i1 %402, label %403, label %434

403:                                              ; preds = %384, %398
  %404 = sub nsw i64 %386, %220
  %405 = icmp sgt i64 %385, %386
  br i1 %405, label %540, label %406

406:                                              ; preds = %403
  %407 = sub nsw i64 %385, %220
  br label %408

408:                                              ; preds = %406, %429
  %409 = phi ptr [ %430, %429 ], [ %330, %406 ]
  %410 = phi i64 [ %432, %429 ], [ %407, %406 ]
  %411 = load ptr, ptr %324, align 8, !tbaa !9
  %412 = tail call i64 @tree_low_cst(ptr noundef %411, i32 noundef 0) #17
  %413 = mul nsw i64 %412, %410
  %414 = load i32, ptr %409, align 8
  %415 = and i32 %414, 16842751
  %416 = icmp eq i32 %415, 43
  br i1 %416, label %417, label %429

417:                                              ; preds = %408
  %418 = load i64, ptr %7, align 8
  %419 = and i64 %418, 65535
  %420 = icmp eq i64 %419, 15
  br i1 %420, label %421, label %429

421:                                              ; preds = %417
  %422 = load i32, ptr %325, align 4
  %423 = and i32 %422, 4096
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %429, label %425

425:                                              ; preds = %421
  %426 = tail call ptr @copy_rtx(ptr noundef nonnull %409) #17
  %427 = load i32, ptr %426, align 8
  %428 = or i32 %427, 16777216
  store i32 %428, ptr %426, align 8
  br label %429

429:                                              ; preds = %425, %421, %417, %408
  %430 = phi ptr [ %426, %425 ], [ %409, %421 ], [ %409, %417 ], [ %409, %408 ]
  %431 = tail call i32 @get_alias_set(ptr noundef nonnull %195) #17
  tail call fastcc void @store_constructor_field(ptr noundef nonnull %430, i64 noundef %367, i64 noundef %413, i32 noundef %351, ptr noundef %335, ptr noundef nonnull %7, i32 noundef %317, i32 noundef %431) #18
  %432 = add nsw i64 %410, 1
  %433 = icmp slt i64 %410, %404
  br i1 %433, label %408, label %540, !llvm.loop !194

434:                                              ; preds = %394, %398, %381, %378, %373
  %435 = tail call ptr @gen_label_rtx() #17
  %436 = tail call ptr @gen_label_rtx() #17
  %437 = tail call fastcc ptr @expand_normal(ptr noundef %377) #18
  %438 = load i64, ptr %0, align 8
  %439 = and i64 %438, 65535
  %440 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !22
  %442 = add i32 %441, -4
  %443 = icmp ult i32 %442, 7
  br i1 %443, label %444, label %446

444:                                              ; preds = %434
  %445 = load i32, ptr %318, align 8, !tbaa !9
  br label %446

446:                                              ; preds = %434, %444
  %447 = phi i32 [ %445, %444 ], [ 0, %434 ]
  %448 = tail call ptr @build_decl_stat(i32 noundef %447, i32 noundef 32, ptr noundef null, ptr noundef %197) #17
  %449 = tail call i32 @promote_decl_mode(ptr noundef %448, ptr noundef null) #17
  %450 = tail call ptr @gen_reg_rtx(i32 noundef %449) #17
  tail call void @set_decl_rtl(ptr noundef %448, ptr noundef %450) #17
  %451 = tail call ptr @store_expr(ptr noundef %375, ptr noundef %450, i32 noundef 0, i8 noundef zeroext 0) #18
  tail call void @do_pending_stack_adjust() #17
  %452 = tail call ptr @emit_label(ptr noundef %435) #17
  %453 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !5
  %454 = getelementptr inbounds %struct.tree_common, ptr %448, i64 0, i32 2
  %455 = load ptr, ptr %454, align 8, !tbaa !9
  %456 = load ptr, ptr %198, align 8, !tbaa !9
  %457 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %455, ptr noundef %448, ptr noundef %456) #17
  %458 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %453, ptr noundef %457) #17
  %459 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !5
  %460 = load ptr, ptr %326, align 8, !tbaa !9
  %461 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %459, ptr noundef %460) #17
  %462 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %458, ptr noundef %461) #17
  %463 = tail call fastcc ptr @expand_normal(ptr noundef %462) #18
  %464 = tail call i64 @highest_pow2_factor(ptr noundef %462) #18
  %465 = tail call ptr @offset_address(ptr noundef %330, ptr noundef %463, i64 noundef %464) #17
  %466 = tail call ptr @adjust_address_1(ptr noundef %465, i32 noundef %351, i64 noundef 0, i32 noundef 1, i32 noundef 1) #17
  %467 = load i64, ptr %335, align 8
  %468 = and i64 %467, 65535
  %469 = icmp eq i64 %468, 51
  br i1 %469, label %470, label %472

470:                                              ; preds = %446
  %471 = sdiv i64 %367, 8
  tail call fastcc void @store_constructor(ptr noundef nonnull %335, ptr noundef %466, i32 noundef %317, i64 noundef %471) #18
  br label %474

472:                                              ; preds = %446
  %473 = tail call ptr @store_expr(ptr noundef nonnull %335, ptr noundef %466, i32 noundef 0, i8 noundef zeroext 0) #18
  br label %474

474:                                              ; preds = %472, %470
  %475 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !5
  %476 = tail call ptr @build2_stat(i32 noundef 97, ptr noundef %475, ptr noundef nonnull %448, ptr noundef %377) #17
  tail call void @jumpif(ptr noundef %476, ptr noundef %436, i32 noundef -1) #17
  %477 = load ptr, ptr %454, align 8, !tbaa !9
  %478 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !5
  %479 = tail call ptr @build2_stat(i32 noundef 63, ptr noundef %477, ptr noundef nonnull %448, ptr noundef %478) #17
  tail call void @expand_assignment(ptr noundef nonnull %448, ptr noundef %479, i8 noundef zeroext 0) #18
  tail call void @emit_jump(ptr noundef %435) #17
  %480 = tail call ptr @emit_label(ptr noundef %436) #17
  br label %540

481:                                              ; preds = %369
  %482 = tail call i32 @host_integerp(ptr noundef nonnull %336, i32 noundef 0) #17
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %494, label %488

484:                                              ; preds = %366
  %485 = load ptr, ptr %324, align 8, !tbaa !9
  %486 = tail call i32 @host_integerp(ptr noundef %485, i32 noundef 1) #17
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %492, label %517

488:                                              ; preds = %481
  %489 = load ptr, ptr %324, align 8, !tbaa !9
  %490 = tail call i32 @host_integerp(ptr noundef %489, i32 noundef 1) #17
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %494, label %514

492:                                              ; preds = %484
  %493 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 1) #17
  br label %494

494:                                              ; preds = %488, %481, %492
  %495 = phi ptr [ %493, %492 ], [ %336, %481 ], [ %336, %488 ]
  br i1 %327, label %503, label %496

496:                                              ; preds = %494
  %497 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !5
  %498 = getelementptr inbounds %struct.tree_common, ptr %495, i64 0, i32 2
  %499 = load ptr, ptr %498, align 8, !tbaa !9
  %500 = load ptr, ptr %198, align 8, !tbaa !9
  %501 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %499, ptr noundef %495, ptr noundef %500) #17
  %502 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %497, ptr noundef %501) #17
  br label %503

503:                                              ; preds = %496, %494
  %504 = phi ptr [ %502, %496 ], [ %495, %494 ]
  %505 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !5
  %506 = load ptr, ptr %326, align 8, !tbaa !9
  %507 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %505, ptr noundef %506) #17
  %508 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %504, ptr noundef %507) #17
  %509 = tail call fastcc ptr @expand_normal(ptr noundef %508) #18
  %510 = tail call i64 @highest_pow2_factor(ptr noundef %508) #18
  %511 = tail call ptr @offset_address(ptr noundef %330, ptr noundef %509, i64 noundef %510) #17
  %512 = tail call ptr @adjust_address_1(ptr noundef %511, i32 noundef %351, i64 noundef 0, i32 noundef 1, i32 noundef 1) #17
  %513 = tail call ptr @store_expr(ptr noundef %335, ptr noundef %512, i32 noundef 0, i8 noundef zeroext 0) #18
  br label %540

514:                                              ; preds = %488
  %515 = tail call i64 @tree_low_cst(ptr noundef nonnull %336, i32 noundef 0) #17
  %516 = sub nsw i64 %515, %220
  br label %517

517:                                              ; preds = %484, %514
  %518 = phi i64 [ %516, %514 ], [ %331, %484 ]
  %519 = load ptr, ptr %324, align 8, !tbaa !9
  %520 = tail call i64 @tree_low_cst(ptr noundef %519, i32 noundef 1) #17
  %521 = mul i64 %520, %518
  %522 = load i32, ptr %330, align 8
  %523 = and i32 %522, 16842751
  %524 = icmp eq i32 %523, 43
  br i1 %524, label %525, label %537

525:                                              ; preds = %517
  %526 = load i64, ptr %7, align 8
  %527 = and i64 %526, 65535
  %528 = icmp eq i64 %527, 15
  br i1 %528, label %529, label %537

529:                                              ; preds = %525
  %530 = load i32, ptr %325, align 4
  %531 = and i32 %530, 4096
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %537, label %533

533:                                              ; preds = %529
  %534 = tail call ptr @copy_rtx(ptr noundef nonnull %330) #17
  %535 = load i32, ptr %534, align 8
  %536 = or i32 %535, 16777216
  store i32 %536, ptr %534, align 8
  br label %537

537:                                              ; preds = %533, %529, %525, %517
  %538 = phi ptr [ %534, %533 ], [ %330, %529 ], [ %330, %525 ], [ %330, %517 ]
  %539 = tail call i32 @get_alias_set(ptr noundef nonnull %195) #17
  tail call fastcc void @store_constructor_field(ptr noundef nonnull %538, i64 noundef %367, i64 noundef %521, i32 noundef %351, ptr noundef %335, ptr noundef nonnull %7, i32 noundef %317, i32 noundef %539) #18
  br label %540

540:                                              ; preds = %429, %403, %537, %503, %474, %337
  %541 = phi ptr [ %330, %337 ], [ %538, %537 ], [ %330, %503 ], [ %330, %474 ], [ %330, %403 ], [ %430, %429 ]
  %542 = add nuw nsw i64 %331, 1
  %543 = load ptr, ptr %318, align 8, !tbaa !9
  %544 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %543) #18
  %545 = zext i32 %544 to i64
  %546 = icmp ult i64 %542, %545
  br i1 %546, label %328, label %794, !llvm.loop !195

547:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %548 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %549 = load ptr, ptr %548, align 8, !tbaa !9
  %550 = getelementptr inbounds %struct.tree_type, ptr %549, i64 0, i32 2
  %551 = load ptr, ptr %550, align 8, !tbaa !9
  %552 = tail call i64 @tree_low_cst(ptr noundef %551, i32 noundef 1) #17
  %553 = load i64, ptr %549, align 8
  %554 = and i64 %553, 65535
  %555 = icmp eq i64 %554, 14
  br i1 %555, label %556, label %558

556:                                              ; preds = %547
  %557 = tail call i32 @vector_type_mode(ptr noundef nonnull %549) #17
  br label %563

558:                                              ; preds = %547
  %559 = getelementptr inbounds %struct.tree_type, ptr %549, i64 0, i32 6
  %560 = load i32, ptr %559, align 4
  %561 = lshr i32 %560, 16
  %562 = and i32 %561, 255
  br label %563

563:                                              ; preds = %558, %556
  %564 = phi i32 [ %557, %556 ], [ %562, %558 ]
  %565 = icmp eq i32 %564, 1
  br i1 %565, label %566, label %567

566:                                              ; preds = %563
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5633, ptr noundef nonnull @.str.1) #17
  br label %567

567:                                              ; preds = %563, %566
  %568 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %569 = load i32, ptr %568, align 4
  %570 = and i32 %569, 1023
  %571 = zext nneg i32 %570 to i64
  %572 = shl nuw i64 1, %571
  %573 = trunc i64 %572 to i32
  %574 = load i32, ptr %1, align 8
  %575 = and i32 %574, 65535
  %576 = icmp eq i32 %575, 37
  br i1 %576, label %577, label %621

577:                                              ; preds = %567
  %578 = lshr i32 %574, 16
  %579 = and i32 %578, 255
  %580 = zext nneg i32 %579 to i64
  %581 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %580
  %582 = load i8, ptr %581, align 1, !tbaa !9
  %583 = add i8 %582, -12
  %584 = icmp ult i8 %583, 6
  br i1 %584, label %585, label %621

585:                                              ; preds = %577
  %586 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 %580
  %587 = load i32, ptr %586, align 4, !tbaa !25
  %588 = icmp eq i32 %587, 2956
  br i1 %588, label %621, label %589

589:                                              ; preds = %585
  %590 = tail call ptr @rtvec_alloc(i32 noundef %573) #17
  %591 = icmp ugt i32 %570, 31
  br i1 %591, label %621, label %592

592:                                              ; preds = %589
  %593 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %580
  %594 = load i8, ptr %593, align 1, !tbaa !9
  %595 = zext i8 %594 to i64
  %596 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %595
  %597 = load ptr, ptr %596, align 8, !tbaa !5
  %598 = tail call i32 @llvm.umax.i32(i32 %573, i32 1)
  %599 = zext i32 %598 to i64
  %600 = add nuw nsw i64 %599, 1
  %601 = and i64 %600, 8589934590
  %602 = add nsw i64 %599, -1
  %603 = insertelement <2 x i64> poison, i64 %602, i64 0
  %604 = shufflevector <2 x i64> %603, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %605

605:                                              ; preds = %617, %592
  %606 = phi i64 [ 0, %592 ], [ %618, %617 ]
  %607 = phi <2 x i64> [ <i64 0, i64 1>, %592 ], [ %619, %617 ]
  %608 = icmp ule <2 x i64> %607, %604
  %609 = extractelement <2 x i1> %608, i64 0
  br i1 %609, label %610, label %612

610:                                              ; preds = %605
  %611 = getelementptr inbounds %struct.rtvec_def, ptr %590, i64 0, i32 1, i64 %606
  store ptr %597, ptr %611, align 8, !tbaa !5
  br label %612

612:                                              ; preds = %610, %605
  %613 = extractelement <2 x i1> %608, i64 1
  br i1 %613, label %614, label %617

614:                                              ; preds = %612
  %615 = or disjoint i64 %606, 1
  %616 = getelementptr inbounds %struct.rtvec_def, ptr %590, i64 0, i32 1, i64 %615
  store ptr %597, ptr %616, align 8, !tbaa !5
  br label %617

617:                                              ; preds = %614, %612
  %618 = add i64 %606, 2
  %619 = add <2 x i64> %607, <i64 2, i64 2>
  %620 = icmp eq i64 %618, %601
  br i1 %620, label %621, label %605, !llvm.loop !196

621:                                              ; preds = %617, %589, %577, %585, %567
  %622 = phi i32 [ 0, %567 ], [ 0, %577 ], [ 2956, %585 ], [ %587, %589 ], [ %587, %617 ]
  %623 = phi ptr [ null, %567 ], [ null, %577 ], [ null, %585 ], [ %590, %589 ], [ %590, %617 ]
  %624 = icmp eq i32 %2, 0
  br i1 %624, label %627, label %625

625:                                              ; preds = %621
  %626 = icmp ne ptr %623, null
  br label %710

627:                                              ; preds = %621
  %628 = load i32, ptr %1, align 8
  %629 = and i32 %628, 65535
  %630 = icmp eq i32 %629, 37
  br i1 %630, label %631, label %635

631:                                              ; preds = %627
  %632 = load i64, ptr %0, align 8
  %633 = and i64 %632, 67108864
  %634 = icmp eq i64 %633, 0
  br i1 %634, label %635, label %678

635:                                              ; preds = %631, %627
  %636 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %637 = load ptr, ptr %636, align 8, !tbaa !9
  %638 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %637) #18
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %670, label %640

640:                                              ; preds = %635, %640
  %641 = phi ptr [ %664, %640 ], [ %637, %635 ]
  %642 = phi i64 [ %662, %640 ], [ 0, %635 ]
  %643 = phi i64 [ %658, %640 ], [ 0, %635 ]
  %644 = phi i64 [ %663, %640 ], [ 0, %635 ]
  %645 = trunc i64 %644 to i32
  %646 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %641, i32 noundef %645) #18
  %647 = getelementptr inbounds %struct.constructor_elt_d, ptr %646, i64 0, i32 1
  %648 = load ptr, ptr %647, align 8, !tbaa !133
  %649 = getelementptr inbounds %struct.tree_common, ptr %648, i64 0, i32 2
  %650 = load ptr, ptr %649, align 8, !tbaa !9
  %651 = getelementptr inbounds %struct.tree_type, ptr %650, i64 0, i32 2
  %652 = load ptr, ptr %651, align 8, !tbaa !9
  %653 = load ptr, ptr %550, align 8, !tbaa !9
  %654 = tail call ptr @int_const_binop(i32 noundef 67, ptr noundef %652, ptr noundef %653, i32 noundef 0) #17
  %655 = tail call i64 @tree_low_cst(ptr noundef %654, i32 noundef 1) #17
  %656 = shl i64 %655, 32
  %657 = ashr exact i64 %656, 32
  %658 = add i64 %657, %643
  %659 = tail call fastcc i32 @mostly_zeros_p(ptr noundef %648) #18, !range !161
  %660 = icmp eq i32 %659, 0
  %661 = select i1 %660, i64 0, i64 %657
  %662 = add i64 %661, %642
  %663 = add nuw nsw i64 %644, 1
  %664 = load ptr, ptr %636, align 8, !tbaa !9
  %665 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %664) #18
  %666 = zext i32 %665 to i64
  %667 = icmp ult i64 %663, %666
  br i1 %667, label %640, label %668, !llvm.loop !199

668:                                              ; preds = %640
  %669 = shl i64 %662, 2
  br label %670

670:                                              ; preds = %668, %635
  %671 = phi i64 [ 0, %635 ], [ %658, %668 ]
  %672 = phi i64 [ 0, %635 ], [ %669, %668 ]
  %673 = and i64 %572, 4294967295
  %674 = icmp ult i64 %671, %673
  %675 = mul i64 %671, 3
  %676 = icmp uge i64 %672, %675
  %677 = select i1 %674, i1 true, i1 %676
  br label %678

678:                                              ; preds = %631, %670
  %679 = phi i1 [ %677, %670 ], [ true, %631 ]
  %680 = icmp sgt i64 %3, 0
  %681 = and i1 %680, %679
  %682 = icmp eq ptr %623, null
  %683 = select i1 %681, i1 %682, i1 false
  br i1 %683, label %684, label %698

684:                                              ; preds = %678
  %685 = load i32, ptr %1, align 8
  %686 = and i32 %685, 65535
  %687 = icmp eq i32 %686, 37
  br i1 %687, label %688, label %695

688:                                              ; preds = %684
  %689 = lshr i32 %685, 16
  %690 = and i32 %689, 255
  %691 = zext nneg i32 %690 to i64
  %692 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %691
  %693 = load ptr, ptr %692, align 8, !tbaa !5
  %694 = tail call ptr @emit_move_insn(ptr noundef nonnull %1, ptr noundef %693) #18
  br label %710

695:                                              ; preds = %684
  %696 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %3) #17
  %697 = tail call ptr @clear_storage(ptr noundef nonnull %1, ptr noundef %696, i32 noundef 0) #18
  br label %710

698:                                              ; preds = %678
  br i1 %682, label %699, label %710

699:                                              ; preds = %698
  %700 = load i32, ptr %1, align 8
  %701 = and i32 %700, 65535
  %702 = icmp eq i32 %701, 37
  br i1 %702, label %703, label %710

703:                                              ; preds = %699
  %704 = lshr i32 %700, 16
  %705 = and i32 %704, 255
  %706 = zext nneg i32 %705 to i64
  %707 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %706
  %708 = load ptr, ptr %707, align 8, !tbaa !5
  %709 = tail call ptr @emit_move_insn(ptr noundef nonnull %1, ptr noundef %708) #18
  br label %710

710:                                              ; preds = %625, %688, %695, %703, %699, %698
  %711 = phi i1 [ false, %703 ], [ false, %699 ], [ false, %698 ], [ true, %695 ], [ true, %688 ], [ true, %625 ]
  %712 = phi i32 [ 0, %703 ], [ 0, %699 ], [ 0, %698 ], [ 1, %695 ], [ 1, %688 ], [ %2, %625 ]
  %713 = phi i1 [ false, %703 ], [ false, %699 ], [ true, %698 ], [ false, %695 ], [ false, %688 ], [ %626, %625 ]
  %714 = load i32, ptr %1, align 8
  %715 = and i32 %714, 65535
  %716 = icmp eq i32 %715, 43
  br i1 %716, label %717, label %724

717:                                              ; preds = %710
  %718 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %719 = load ptr, ptr %718, align 8, !tbaa !9
  %720 = icmp eq ptr %719, null
  br i1 %720, label %726, label %721

721:                                              ; preds = %717
  %722 = getelementptr inbounds %struct.mem_attrs, ptr %719, i64 0, i32 3
  %723 = load i32, ptr %722, align 8, !tbaa !132
  br label %726

724:                                              ; preds = %710
  %725 = tail call i32 @get_alias_set(ptr noundef nonnull %549) #17
  br label %726

726:                                              ; preds = %721, %717, %724
  %727 = phi i32 [ %725, %724 ], [ %723, %721 ], [ 0, %717 ]
  %728 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %729 = load ptr, ptr %728, align 8, !tbaa !9
  %730 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %729, i32 noundef 0, ptr noundef nonnull %5) #18, !range !139
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %781, label %732

732:                                              ; preds = %726
  %733 = shl i64 %552, 32
  %734 = ashr exact i64 %733, 32
  br label %735

735:                                              ; preds = %732, %773
  %736 = phi i32 [ 0, %732 ], [ %777, %773 ]
  %737 = phi i32 [ 0, %732 ], [ %774, %773 ]
  %738 = load ptr, ptr %5, align 8, !tbaa !5
  %739 = getelementptr inbounds %struct.constructor_elt_d, ptr %738, i64 0, i32 1
  %740 = load ptr, ptr %739, align 8, !tbaa !133
  %741 = getelementptr inbounds %struct.tree_common, ptr %740, i64 0, i32 2
  %742 = load ptr, ptr %741, align 8, !tbaa !9
  %743 = getelementptr inbounds %struct.tree_type, ptr %742, i64 0, i32 2
  %744 = load ptr, ptr %743, align 8, !tbaa !9
  %745 = tail call i64 @tree_low_cst(ptr noundef %744, i32 noundef 1) #17
  br i1 %711, label %746, label %749

746:                                              ; preds = %735
  %747 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %740) #17
  %748 = icmp eq i8 %747, 0
  br i1 %748, label %749, label %773

749:                                              ; preds = %746, %735
  %750 = load ptr, ptr %738, align 8, !tbaa !135
  %751 = icmp eq ptr %750, null
  br i1 %751, label %754, label %752

752:                                              ; preds = %749
  %753 = tail call i64 @tree_low_cst(ptr noundef nonnull %750, i32 noundef 1) #17
  br label %756

754:                                              ; preds = %749
  %755 = sext i32 %736 to i64
  br label %756

756:                                              ; preds = %754, %752
  %757 = phi i64 [ %753, %752 ], [ %755, %754 ]
  %758 = load ptr, ptr %741, align 8, !tbaa !9
  %759 = load i64, ptr %758, align 8
  %760 = and i64 %759, 65535
  %761 = icmp eq i64 %760, 14
  br i1 %713, label %762, label %767

762:                                              ; preds = %756
  br i1 %761, label %763, label %764

763:                                              ; preds = %762
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5720, ptr noundef nonnull @.str.1) #17
  br label %764

764:                                              ; preds = %762, %763
  %765 = tail call fastcc ptr @expand_normal(ptr noundef nonnull %740) #18
  %766 = getelementptr inbounds %struct.rtvec_def, ptr %623, i64 0, i32 1, i64 %757
  store ptr %765, ptr %766, align 8, !tbaa !5
  br label %773

767:                                              ; preds = %756
  br i1 %761, label %768, label %770

768:                                              ; preds = %767
  %769 = tail call i32 @vector_type_mode(ptr noundef nonnull %758) #17
  br label %770

770:                                              ; preds = %767, %768
  %771 = phi i32 [ %769, %768 ], [ %564, %767 ]
  %772 = mul nsw i64 %757, %734
  tail call fastcc void @store_constructor_field(ptr noundef %1, i64 noundef %745, i64 noundef %772, i32 noundef %771, ptr noundef nonnull %740, ptr noundef nonnull %7, i32 noundef %712, i32 noundef %727) #18
  br label %773

773:                                              ; preds = %764, %770, %746
  %774 = add i32 %737, 1
  %775 = sdiv i64 %745, %734
  %776 = trunc i64 %775 to i32
  %777 = add i32 %736, %776
  %778 = load ptr, ptr %728, align 8, !tbaa !9
  %779 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %778, i32 noundef %774, ptr noundef nonnull %5) #18, !range !139
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %735, !llvm.loop !200

781:                                              ; preds = %773, %726
  br i1 %713, label %782, label %792

782:                                              ; preds = %781
  %783 = sext i32 %622 to i64
  %784 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %783, i32 2
  %785 = load ptr, ptr %784, align 8, !tbaa !64
  %786 = load i32, ptr %1, align 8
  %787 = lshr i32 %786, 16
  %788 = and i32 %787, 255
  %789 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef %788, ptr noundef nonnull %623) #17
  %790 = tail call ptr (ptr, ...) %785(ptr noundef %1, ptr noundef %789) #17
  %791 = tail call ptr @emit_insn(ptr noundef %790) #17
  br label %792

792:                                              ; preds = %782, %781
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %794

793:                                              ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5745, ptr noundef nonnull @.str.1) #17
  br label %794

794:                                              ; preds = %540, %187, %315, %79, %793, %792
  ret void
}

; Function Attrs: optsize
declare i32 @fields_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bit_position(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @int_bit_position(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @store_constructor_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = load i64, ptr %4, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 51
  br i1 %11, label %12, label %58

12:                                               ; preds = %8
  %13 = icmp ne i64 %1, 0
  %14 = or i64 %2, %1
  %15 = and i64 %14, 7
  %16 = icmp eq i64 %15, 0
  %17 = and i1 %13, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %12
  %19 = icmp eq i64 %2, 0
  %20 = load i32, ptr %0, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 43
  br i1 %19, label %24, label %23

23:                                               ; preds = %18
  br i1 %22, label %25, label %58

24:                                               ; preds = %18
  br i1 %22, label %25, label %40

25:                                               ; preds = %23, %24
  %26 = lshr i32 %20, 16
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @get_mode_alignment(i32 noundef %27) #17
  %31 = zext i32 %30 to i64
  %32 = srem i64 %2, %31
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i32
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i32 [ 1, %25 ], [ %34, %29 ]
  %37 = sdiv i64 %2, 8
  %38 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef %36, i64 noundef %37, i32 noundef 1, i32 noundef 1) #17
  %39 = load i32, ptr %38, align 8
  br label %40

40:                                               ; preds = %35, %24
  %41 = phi i32 [ %39, %35 ], [ %20, %24 ]
  %42 = phi ptr [ %38, %35 ], [ %0, %24 ]
  %43 = and i32 %41, 16842751
  %44 = icmp eq i32 %43, 43
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !9
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.mem_attrs, ptr %47, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !132
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @copy_rtx(ptr noundef nonnull %42) #17
  tail call void @set_mem_alias_set(ptr noundef %54, i32 noundef %7) #17
  br label %55

55:                                               ; preds = %45, %53, %49, %40
  %56 = phi ptr [ %54, %53 ], [ %42, %49 ], [ %42, %40 ], [ %42, %45 ]
  %57 = lshr exact i64 %1, 3
  tail call fastcc void @store_constructor(ptr noundef nonnull %4, ptr noundef %56, i32 noundef %6, i64 noundef %57) #18
  br label %60

58:                                               ; preds = %23, %12, %8
  %59 = tail call fastcc ptr @store_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull %4, ptr noundef %5, i32 noundef %7, i8 noundef zeroext 0) #18
  br label %60

60:                                               ; preds = %58, %55
  ret void
}

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @jumpif(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr_addr_expr_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !22
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = tail call fastcc ptr @expand_expr_constant(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %3) #18
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  br label %185

21:                                               ; preds = %5
  %22 = trunc i64 %12 to i16
  switch i16 %22, label %69 [
    i16 47, label %23
    i16 33, label %27
    i16 43, label %33
    i16 44, label %36
    i16 32, label %58
  ]

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  %26 = tail call fastcc ptr @expand_expr(ptr noundef %25, ptr noundef %1, i32 noundef %2, i32 noundef %3) #18
  br label %185

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = tail call fastcc ptr @expand_expr_constant(ptr noundef %29, i32 noundef 0, i32 noundef %3) #18
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  br label %185

33:                                               ; preds = %21
  store ptr null, ptr %6, align 8, !tbaa !5
  store i64 0, ptr %8, align 8, !tbaa !78
  %34 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !9
  br label %113

36:                                               ; preds = %21
  store ptr null, ptr %6, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !9
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 14
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = tail call i32 @vector_type_mode(ptr noundef nonnull %38) #17
  br label %49

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  br label %49

49:                                               ; preds = %44, %42
  %50 = phi i32 [ %43, %42 ], [ %48, %44 ]
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !9
  %54 = zext i8 %53 to i64
  %55 = shl nuw nsw i64 %54, 3
  store i64 %55, ptr %8, align 8, !tbaa !78
  %56 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !9
  br label %113

58:                                               ; preds = %21
  %59 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !151
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 49152
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = tail call fastcc ptr @emutls_var_address(ptr noundef nonnull %0) #18
  %68 = tail call fastcc ptr @expand_expr(ptr noundef %67, ptr noundef %1, i32 noundef %2, i32 noundef %3) #18
  br label %185

69:                                               ; preds = %58, %61, %21
  %70 = and i64 %12, 65532
  %71 = icmp ult i64 %70, 188
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6889, ptr noundef nonnull @.str.1) #17
  %73 = load i64, ptr %0, align 8
  %74 = and i64 %73, 65535
  %75 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !22
  br label %77

77:                                               ; preds = %69, %72
  %78 = phi i32 [ %15, %69 ], [ %76, %72 ]
  %79 = phi i64 [ %12, %69 ], [ %73, %72 ]
  %80 = freeze i32 %78
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = trunc i64 %79 to i16
  switch i16 %83, label %111 [
    i16 119, label %84
    i16 51, label %84
  ]

84:                                               ; preds = %82, %82, %77
  %85 = icmp eq i32 %3, 4
  %86 = select i1 %85, i32 4, i32 3
  %87 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %86) #18
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 65535
  %90 = icmp eq i32 %89, 43
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6901, ptr noundef nonnull @.str.1) #17
  br label %92

92:                                               ; preds = %84, %91
  %93 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !9
  %95 = load i64, ptr %0, align 8
  %96 = and i64 %95, 65535
  %97 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !22
  %99 = icmp ne i32 %98, 3
  %100 = and i64 %95, 16777216
  %101 = icmp eq i64 %100, 0
  %102 = or i1 %99, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %92
  tail call void @assemble_external(ptr noundef nonnull %0) #17
  %104 = load i64, ptr %0, align 8
  %105 = or i64 %104, 16777216
  store i64 %105, ptr %0, align 8
  br label %106

106:                                              ; preds = %103, %92
  %107 = add i32 %3, -5
  %108 = icmp ult i32 %107, -2
  br i1 %108, label %109, label %185

109:                                              ; preds = %106
  %110 = tail call ptr @force_operand(ptr noundef %94, ptr noundef %1) #18
  br label %185

111:                                              ; preds = %82
  %112 = call ptr @get_inner_reference(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %9, i8 zeroext poison) #18
  br label %113

113:                                              ; preds = %111, %49, %33
  %114 = phi ptr [ %112, %111 ], [ %57, %49 ], [ %35, %33 ]
  %115 = icmp eq ptr %114, %0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6928, ptr noundef nonnull @.str.1) #17
  br label %117

117:                                              ; preds = %113, %116
  %118 = load ptr, ptr %6, align 8, !tbaa !5
  %119 = icmp ne ptr %118, null
  %120 = load i64, ptr %8, align 8
  %121 = icmp ne i64 %120, 0
  %122 = select i1 %119, i1 true, i1 %121
  %123 = select i1 %122, ptr null, ptr %1
  %124 = load i64, ptr %114, align 8
  %125 = and i64 %124, 65535
  %126 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !22
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %151

129:                                              ; preds = %117
  %130 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !9
  %132 = getelementptr inbounds %struct.tree_type, ptr %131, i64 0, i32 7
  %133 = load i32, ptr %132, align 8, !tbaa !9
  %134 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !9
  %136 = getelementptr inbounds %struct.tree_type, ptr %135, i64 0, i32 7
  %137 = load i32, ptr %136, align 8, !tbaa !9
  %138 = icmp ult i32 %133, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %129
  %140 = tail call ptr @copy_node_stat(ptr noundef nonnull %114) #17
  %141 = getelementptr inbounds %struct.tree_common, ptr %140, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !9
  %143 = tail call ptr @copy_node_stat(ptr noundef %142) #17
  store ptr %143, ptr %141, align 8, !tbaa !9
  %144 = load ptr, ptr %134, align 8, !tbaa !9
  %145 = getelementptr inbounds %struct.tree_type, ptr %144, i64 0, i32 7
  %146 = load i32, ptr %145, align 8, !tbaa !9
  %147 = getelementptr inbounds %struct.tree_type, ptr %143, i64 0, i32 7
  store i32 %146, ptr %147, align 8, !tbaa !9
  %148 = load ptr, ptr %141, align 8, !tbaa !9
  %149 = load i64, ptr %148, align 8
  %150 = or i64 %149, 4398046511104
  store i64 %150, ptr %148, align 8
  br label %151

151:                                              ; preds = %139, %129, %117
  %152 = phi ptr [ %140, %139 ], [ %114, %129 ], [ %114, %117 ]
  %153 = tail call fastcc ptr @expand_expr_addr_expr_1(ptr noundef nonnull %152, ptr noundef %123, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) #18
  %154 = icmp eq ptr %118, null
  br i1 %154, label %172, label %155

155:                                              ; preds = %151
  %156 = icmp eq i32 %3, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %155
  %158 = tail call ptr @force_operand(ptr noundef %153, ptr noundef null) #18
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi ptr [ %158, %157 ], [ %153, %155 ]
  %161 = icmp eq i32 %3, 4
  %162 = select i1 %161, i32 4, i32 0
  %163 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %118, ptr noundef null, i32 noundef %2, i32 noundef %162) #18
  %164 = tail call ptr @convert_memory_address_addr_space(i32 noundef %2, ptr noundef %160, i8 noundef zeroext %4) #17
  %165 = tail call ptr @convert_memory_address_addr_space(i32 noundef %2, ptr noundef %163, i8 noundef zeroext %4) #17
  switch i32 %3, label %168 [
    i32 4, label %166
    i32 2, label %166
  ]

166:                                              ; preds = %159, %159
  %167 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %2, ptr noundef %164, ptr noundef %165) #17
  br label %172

168:                                              ; preds = %159
  %169 = icmp eq i64 %120, 0
  %170 = select i1 %169, ptr %1, ptr null
  %171 = tail call ptr @expand_simple_binop(i32 noundef %2, i32 noundef 49, ptr noundef %164, ptr noundef %165, ptr noundef %170, i32 noundef 1, i32 noundef 3) #17
  br label %172

172:                                              ; preds = %166, %151, %168
  %173 = phi ptr [ %171, %168 ], [ %167, %166 ], [ %153, %151 ]
  %174 = icmp eq i64 %120, 0
  br i1 %174, label %185, label %175

175:                                              ; preds = %172
  %176 = and i64 %120, 7
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6970, ptr noundef nonnull @.str.1) #17
  br label %179

179:                                              ; preds = %175, %178
  %180 = sdiv i64 %120, 8
  %181 = tail call ptr @plus_constant(ptr noundef %173, i64 noundef %180) #17
  %182 = icmp ult i32 %3, 2
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = tail call ptr @force_operand(ptr noundef %181, ptr noundef %1) #18
  br label %185

185:                                              ; preds = %172, %183, %179, %106, %109, %66, %27, %23, %17
  %186 = phi ptr [ %20, %17 ], [ %68, %66 ], [ %32, %27 ], [ %26, %23 ], [ %110, %109 ], [ %94, %106 ], [ %184, %183 ], [ %181, %179 ], [ %173, %172 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  ret ptr %186
}

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_all_onesp(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @swap_condition(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_single_bit_test(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_store_flag_force(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_tablejump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_VECTOR(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !6, i64 24}
!14 = !{!"insn_data", !6, i64 0, !7, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 33, !7, i64 34, !7, i64 35}
!15 = !{!16, !6, i64 0}
!16 = !{!"insn_operand_data", !6, i64 0, !6, i64 8, !17, i64 16, !7, i64 18, !7, i64 19}
!17 = !{!"int", !7, i64 0}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = !{!21, !6, i64 0}
!21 = !{!"rtl_hooks", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!22 = !{!17, !17, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"short", !7, i64 0}
!25 = !{!26, !17, i64 0}
!26 = !{!"optab_handlers", !17, i64 0}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = !{!30, !7, i64 32}
!30 = !{!"mem_attrs", !6, i64 0, !6, i64 8, !6, i64 16, !17, i64 24, !17, i64 28, !7, i64 32}
!31 = !{!32, !17, i64 72}
!32 = !{!"processor_costs", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !7, i64 16, !17, i64 36, !7, i64 40, !17, i64 60, !17, i64 64, !17, i64 68, !17, i64 72, !17, i64 76, !7, i64 80, !7, i64 92, !17, i64 104, !7, i64 108, !7, i64 120, !17, i64 132, !7, i64 136, !7, i64 144, !17, i64 152, !7, i64 156, !7, i64 168, !17, i64 180, !17, i64 184, !17, i64 188, !17, i64 192, !17, i64 196, !17, i64 200, !17, i64 204, !17, i64 208, !17, i64 212, !17, i64 216, !17, i64 220, !17, i64 224, !7, i64 228, !7, i64 300, !17, i64 372, !17, i64 376, !17, i64 380, !17, i64 384, !17, i64 388, !17, i64 392, !17, i64 396, !17, i64 400, !17, i64 404, !17, i64 408, !17, i64 412}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = !{!36, !6, i64 1184}
!36 = !{!"gcc_target", !37, i64 0, !39, i64 368, !40, i64 664, !17, i64 744, !6, i64 752, !6, i64 760, !6, i64 768, !6, i64 776, !6, i64 784, !6, i64 792, !6, i64 800, !6, i64 808, !6, i64 816, !6, i64 824, !6, i64 832, !6, i64 840, !6, i64 848, !6, i64 856, !6, i64 864, !6, i64 872, !6, i64 880, !6, i64 888, !6, i64 896, !6, i64 904, !6, i64 912, !6, i64 920, !6, i64 928, !6, i64 936, !6, i64 944, !6, i64 952, !6, i64 960, !6, i64 968, !6, i64 976, !6, i64 984, !6, i64 992, !6, i64 1000, !6, i64 1008, !6, i64 1016, !6, i64 1024, !6, i64 1032, !6, i64 1040, !6, i64 1048, !6, i64 1056, !41, i64 1064, !41, i64 1072, !6, i64 1080, !6, i64 1088, !6, i64 1096, !6, i64 1104, !6, i64 1112, !6, i64 1120, !6, i64 1128, !6, i64 1136, !6, i64 1144, !6, i64 1152, !6, i64 1160, !6, i64 1168, !42, i64 1176, !6, i64 1232, !6, i64 1240, !6, i64 1248, !6, i64 1256, !6, i64 1264, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !6, i64 1304, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !6, i64 1344, !6, i64 1352, !6, i64 1360, !6, i64 1368, !6, i64 1376, !6, i64 1384, !6, i64 1392, !6, i64 1400, !6, i64 1408, !6, i64 1416, !6, i64 1424, !6, i64 1432, !6, i64 1440, !6, i64 1448, !6, i64 1456, !41, i64 1464, !43, i64 1472, !6, i64 1664, !6, i64 1672, !6, i64 1680, !6, i64 1688, !6, i64 1696, !6, i64 1704, !6, i64 1712, !6, i64 1720, !6, i64 1728, !6, i64 1736, !6, i64 1744, !6, i64 1752, !6, i64 1760, !6, i64 1768, !6, i64 1776, !44, i64 1784, !45, i64 1792, !46, i64 1896, !47, i64 1968, !6, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!37 = !{!"asm_out", !6, i64 0, !6, i64 8, !6, i64 16, !38, i64 24, !38, i64 56, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360}
!38 = !{!"asm_int_op", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!39 = !{!"sched", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288}
!40 = !{!"vectorize", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!41 = !{!"long", !7, i64 0}
!42 = !{!"addr_space", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!43 = !{!"calls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184}
!44 = !{!"c", !6, i64 0}
!45 = !{!"cxx", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96}
!46 = !{!"emutls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !7, i64 64, !7, i64 65}
!47 = !{!"target_option_hooks", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!48 = !{!30, !17, i64 28}
!49 = !{!50, !41, i64 56}
!50 = !{!"move_by_pieces_d", !6, i64 0, !6, i64 8, !17, i64 16, !17, i64 20, !6, i64 24, !6, i64 32, !17, i64 40, !17, i64 44, !41, i64 48, !41, i64 56, !17, i64 64}
!51 = !{!50, !6, i64 32}
!52 = !{!50, !6, i64 0}
!53 = !{!50, !17, i64 16}
!54 = !{!50, !17, i64 64}
!55 = !{!50, !6, i64 8}
!56 = !{!50, !6, i64 24}
!57 = !{!50, !17, i64 40}
!58 = !{!50, !17, i64 44}
!59 = !{!50, !17, i64 20}
!60 = !{!50, !41, i64 48}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11}
!64 = !{!14, !6, i64 16}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !11}
!67 = !{!68, !17, i64 4}
!68 = !{!"rtl_data", !69, i64 0, !70, i64 40, !71, i64 96, !72, i64 112, !74, i64 208, !75, i64 248, !17, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !41, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !17, i64 432, !17, i64 436, !17, i64 440, !17, i64 444, !17, i64 448, !17, i64 452, !6, i64 456, !7, i64 464, !7, i64 465, !7, i64 466, !7, i64 467, !7, i64 468, !7, i64 469, !7, i64 470, !7, i64 471, !7, i64 472, !7, i64 473, !7, i64 474, !7, i64 475, !7, i64 476, !7, i64 477, !7, i64 478, !7, i64 479, !7, i64 480, !7, i64 481, !7, i64 482, !7, i64 483, !7, i64 484, !7, i64 485}
!69 = !{!"expr_status", !17, i64 0, !17, i64 4, !17, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!70 = !{!"emit_status", !17, i64 0, !17, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !6, i64 48}
!71 = !{!"varasm_status", !6, i64 0, !17, i64 8}
!72 = !{!"incoming_args", !17, i64 0, !17, i64 4, !17, i64 8, !6, i64 16, !73, i64 24, !6, i64 88}
!73 = !{!"ix86_args", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60}
!74 = !{!"function_subsections", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!75 = !{!"rtl_eh", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !7, i64 48}
!76 = !{!36, !6, i64 1576}
!77 = distinct !{!77, !11}
!78 = !{!41, !41, i64 0}
!79 = !{!14, !7, i64 32}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = !{!84, !17, i64 0}
!84 = !{!"rtvec_def", !17, i64 0, !7, i64 8}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !11}
!93 = !{!36, !6, i64 1504}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = distinct !{!97, !11}
!98 = distinct !{!98, !11}
!99 = distinct !{!99, !11}
!100 = distinct !{!100, !11}
!101 = !{!102, !6, i64 40}
!102 = !{!"store_by_pieces_d", !6, i64 0, !6, i64 8, !17, i64 16, !17, i64 20, !41, i64 24, !41, i64 32, !6, i64 40, !6, i64 48, !17, i64 56}
!103 = !{!102, !6, i64 48}
!104 = !{!102, !41, i64 24}
!105 = !{!102, !6, i64 0}
!106 = !{!102, !17, i64 56}
!107 = !{!102, !17, i64 16}
!108 = !{!102, !6, i64 8}
!109 = !{!102, !41, i64 32}
!110 = !{!102, !17, i64 20}
!111 = distinct !{!111, !11}
!112 = distinct !{!112, !11}
!113 = distinct !{!113, !11}
!114 = distinct !{!114, !11}
!115 = distinct !{!115, !11}
!116 = !{i8 0, i8 2}
!117 = distinct !{!117, !11}
!118 = !{i64 0, i64 4, !22, i64 0, i64 4, !22, i64 0, i64 4, !22, i64 0, i64 4, !22, i64 0, i64 4, !22, i64 0, i64 4, !22, i64 8, i64 24, !9}
!119 = distinct !{!119, !11}
!120 = distinct !{!120, !11}
!121 = !{!68, !17, i64 8}
!122 = !{i64 0, i64 4294967296}
!123 = !{!124, !6, i64 448}
!124 = !{!"lang_hooks", !6, i64 0, !41, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !125, i64 240, !126, i64 248, !127, i64 256, !128, i64 272, !129, i64 432, !130, i64 560, !6, i64 584, !6, i64 592, !6, i64 600, !6, i64 608, !6, i64 616, !6, i64 624, !6, i64 632, !6, i64 640, !6, i64 648, !6, i64 656, !6, i64 664, !7, i64 672}
!125 = !{!"lang_hooks_for_tree_inlining", !6, i64 0}
!126 = !{!"lang_hooks_for_callgraph", !6, i64 0}
!127 = !{!"lang_hooks_for_tree_dump", !6, i64 0, !6, i64 8}
!128 = !{!"lang_hooks_for_decls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!129 = !{!"lang_hooks_for_types", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !7, i64 120}
!130 = !{!"lang_hooks_for_lto", !6, i64 0, !6, i64 8, !6, i64 16}
!131 = !{!36, !6, i64 1176}
!132 = !{!30, !17, i64 24}
!133 = !{!134, !6, i64 8}
!134 = !{!"constructor_elt_d", !6, i64 0, !6, i64 8}
!135 = !{!134, !6, i64 0}
!136 = distinct !{!136, !11}
!137 = distinct !{!137, !11}
!138 = distinct !{!138, !11}
!139 = !{i32 0, i32 2}
!140 = distinct !{!140, !11}
!141 = distinct !{!141, !11}
!142 = !{!143, !17, i64 0}
!143 = !{!"VEC_constructor_elt_base", !17, i64 0, !17, i64 4, !7, i64 8}
!144 = !{!145, !17, i64 0}
!145 = !{!"separate_ops", !17, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !17, i64 40}
!146 = !{!145, !6, i64 8}
!147 = !{!145, !6, i64 16}
!148 = !{!145, !6, i64 24}
!149 = !{!145, !6, i64 32}
!150 = !{!145, !17, i64 40}
!151 = !{!36, !7, i64 2028}
!152 = distinct !{!152, !11}
!153 = distinct !{!153, !11}
!154 = !{!36, !6, i64 1112}
!155 = distinct !{!155, !11}
!156 = distinct !{!156, !11}
!157 = !{!124, !6, i64 176}
!158 = !{i64 0, i64 8, !5, i64 8, i64 8, !5}
!159 = !{i64 0, i64 8, !5}
!160 = distinct !{!160, !11}
!161 = !{i32 0, i32 256}
!162 = !{!36, !6, i64 1216}
!163 = !{!36, !6, i64 1224}
!164 = !{i32 0, i32 65536}
!165 = !{!166, !6, i64 8}
!166 = !{!"ssaexpand", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!167 = !{!166, !6, i64 0}
!168 = !{!169, !6, i64 0}
!169 = !{!"_var_map", !6, i64 0, !6, i64 8, !6, i64 16, !17, i64 24, !17, i64 28, !17, i64 32, !6, i64 40, !6, i64 48}
!170 = !{!171, !17, i64 0}
!171 = !{!"partition_elem", !17, i64 0, !6, i64 8, !17, i64 16}
!172 = !{!169, !6, i64 8}
!173 = !{!166, !6, i64 16}
!174 = distinct !{!174, !11}
!175 = distinct !{!175, !11}
!176 = distinct !{!176, !11}
!177 = distinct !{!177, !11}
!178 = distinct !{!178, !11}
!179 = !{!180, !6, i64 16}
!180 = !{!"tree_statement_list_node", !6, i64 0, !6, i64 8, !6, i64 16}
!181 = !{!182, !6, i64 0}
!182 = !{!"", !6, i64 0, !6, i64 8}
!183 = !{!180, !6, i64 8}
!184 = !{!185, !6, i64 8}
!185 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !17, i64 104, !17, i64 108, !17, i64 112, !17, i64 116, !17, i64 120, !17, i64 124, !6, i64 128, !17, i64 136, !17, i64 137, !17, i64 138, !17, i64 138, !17, i64 138, !17, i64 138, !17, i64 138, !17, i64 138, !17, i64 138, !17, i64 139, !17, i64 139, !17, i64 139, !17, i64 139, !17, i64 139, !17, i64 139, !17, i64 139}
!186 = !{!187, !17, i64 68}
!187 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !17, i64 24, !17, i64 28, !17, i64 32, !6, i64 40, !17, i64 48, !7, i64 52, !7, i64 60, !17, i64 68, !17, i64 72}
!188 = !{!36, !6, i64 1240}
!189 = !{!36, !6, i64 1232}
!190 = !{!124, !6, i64 656}
!191 = distinct !{!191, !11}
!192 = distinct !{!192, !11}
!193 = distinct !{!193, !11}
!194 = distinct !{!194, !11}
!195 = distinct !{!195, !11}
!196 = distinct !{!196, !11, !197, !198}
!197 = !{!"llvm.loop.isvectorized", i32 1}
!198 = !{!"llvm.loop.unroll.runtime.disable"}
!199 = distinct !{!199, !11}
!200 = distinct !{!200, !11}
