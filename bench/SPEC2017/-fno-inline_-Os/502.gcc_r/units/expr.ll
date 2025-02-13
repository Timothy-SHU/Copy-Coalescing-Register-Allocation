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
define dso_local void @init_expr_target() local_unnamed_addr #0 !prof !400 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #16
  %2 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !401
  %3 = tail call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %2) #17
  %4 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !401
  %5 = tail call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %4) #17
  %6 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef -1) #17
  %7 = tail call ptr @rtx_alloc_stat(i32 noundef 8) #17
  %8 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef null, ptr noundef null) #17
  %9 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  store ptr %8, ptr %9, align 8, !tbaa !405
  %10 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %11 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %12 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %13

13:                                               ; preds = %0, %61
  %14 = phi i64 [ 0, %0 ], [ %62, %61 ]
  %15 = getelementptr inbounds [87 x i8], ptr @direct_store, i64 0, i64 %14
  store i8 0, ptr %15, align 1, !tbaa !405
  %16 = getelementptr inbounds [87 x i8], ptr @direct_load, i64 0, i64 %14
  store i8 0, ptr %16, align 1, !tbaa !405
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
  br i1 %28, label %29, label %61, !prof !406

29:                                               ; preds = %13
  %30 = trunc i64 %14 to i32
  br label %31

31:                                               ; preds = %29, %58
  %32 = phi i32 [ %59, %58 ], [ 0, %29 ]
  %33 = load i8, ptr %16, align 1, !tbaa !405
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35, !prof !407

35:                                               ; preds = %31
  %36 = load i8, ptr %15, align 1, !tbaa !405
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %61, !prof !408

38:                                               ; preds = %31, %35
  %39 = call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %32, i32 noundef %30) #17
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %58, label %41, !prof !409

41:                                               ; preds = %38
  %42 = call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #18
  call void @df_ref_change_reg_with_loc(i32 noundef %42, i32 noundef %32, ptr noundef nonnull %6) #17
  store i32 %32, ptr %10, align 8, !tbaa !405
  store ptr %3, ptr %12, align 8, !tbaa !405
  store ptr %6, ptr %11, align 8, !tbaa !405
  %43 = call i32 @recog(ptr noundef %8, ptr noundef %7, ptr noundef nonnull %1) #17
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %46, !prof !410

45:                                               ; preds = %41
  store i8 1, ptr %16, align 1, !tbaa !405
  br label %46

46:                                               ; preds = %45, %41
  store ptr %5, ptr %12, align 8, !tbaa !405
  store ptr %6, ptr %11, align 8, !tbaa !405
  %47 = call i32 @recog(ptr noundef nonnull %8, ptr noundef %7, ptr noundef nonnull %1) #17
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %50, !prof !410

49:                                               ; preds = %46
  store i8 1, ptr %16, align 1, !tbaa !405
  br label %50

50:                                               ; preds = %49, %46
  store ptr %6, ptr %12, align 8, !tbaa !405
  store ptr %3, ptr %11, align 8, !tbaa !405
  %51 = call i32 @recog(ptr noundef nonnull %8, ptr noundef %7, ptr noundef nonnull %1) #17
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %54, !prof !410

53:                                               ; preds = %50
  store i8 1, ptr %15, align 1, !tbaa !405
  br label %54

54:                                               ; preds = %53, %50
  store ptr %6, ptr %12, align 8, !tbaa !405
  store ptr %5, ptr %11, align 8, !tbaa !405
  %55 = call i32 @recog(ptr noundef nonnull %8, ptr noundef %7, ptr noundef nonnull %1) #17
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %57, label %58, !prof !410

57:                                               ; preds = %54
  store i8 1, ptr %15, align 1, !tbaa !405
  br label %58

58:                                               ; preds = %54, %57, %38
  %59 = add nuw nsw i32 %32, 1
  %60 = icmp eq i32 %59, 53
  br i1 %60, label %61, label %31, !prof !411, !llvm.loop !412

61:                                               ; preds = %35, %58, %13
  %62 = add nuw nsw i64 %14, 1
  %63 = icmp eq i64 %62, 87
  br i1 %63, label %64, label %13, !prof !414, !llvm.loop !415

64:                                               ; preds = %61
  %65 = call ptr @gen_rtx_fmt_i00_stat(i32 noundef 37, i32 noundef 16, i32 noundef 10000) #17
  %66 = call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %65) #17
  %67 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 8), align 8, !tbaa !405
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %103, label %69, !prof !416

69:                                               ; preds = %64, %99
  %70 = phi i8 [ %101, %99 ], [ %67, %64 ]
  %71 = zext i8 %70 to i32
  %72 = icmp eq i8 %67, %70
  %73 = zext i8 %70 to i64
  br i1 %72, label %99, label %74, !prof !417

74:                                               ; preds = %69, %94
  %75 = phi i8 [ %97, %94 ], [ %67, %69 ]
  %76 = zext i8 %75 to i32
  %77 = call i32 @can_extend_p(i32 noundef %71, i32 noundef %76, i32 noundef 0) #17
  %78 = icmp eq i32 %77, 2956
  br i1 %78, label %94, label %79, !prof !418

79:                                               ; preds = %74
  %80 = load i32, ptr %66, align 8
  %81 = shl nuw nsw i32 %76, 16
  %82 = and i32 %80, -16711681
  %83 = or disjoint i32 %82, %81
  store i32 %83, ptr %66, align 8
  %84 = zext i32 %77 to i64
  %85 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %84, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !419
  %87 = getelementptr inbounds %struct.insn_operand_data, ptr %86, i64 1
  %88 = load ptr, ptr %87, align 8, !tbaa !421
  %89 = call i32 %88(ptr noundef nonnull %66, i32 noundef %76) #17
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91, !prof !424

91:                                               ; preds = %79
  %92 = zext i8 %75 to i64
  %93 = getelementptr inbounds [87 x [87 x i8]], ptr @float_extend_from_mem, i64 0, i64 %73, i64 %92
  store i8 1, ptr %93, align 1, !tbaa !405
  br label %94

94:                                               ; preds = %79, %91, %74
  %95 = zext i8 %75 to i64
  %96 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !405
  %98 = icmp eq i8 %97, %70
  br i1 %98, label %99, label %74, !prof !425, !llvm.loop !426

99:                                               ; preds = %94, %69
  %100 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %73
  %101 = load i8, ptr %100, align 1, !tbaa !405
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %69, !prof !427, !llvm.loop !428

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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !429 !PGOFuncName !430 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !405
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
define dso_local void @init_expr() local_unnamed_addr #4 !prof !431 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @x_rtl, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @convert_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !432 {
  br label %4

4:                                                ; preds = %130, %3
  %5 = phi ptr [ %136, %130 ], [ %0, %3 ]
  %6 = phi ptr [ %138, %130 ], [ %1, %3 ]
  %7 = phi i32 [ %10, %130 ], [ %2, %3 ]
  br label %8

8:                                                ; preds = %4, %361
  %9 = phi ptr [ %6, %4 ], [ %365, %361 ]
  %10 = phi i32 [ %7, %4 ], [ 0, %361 ]
  br label %11

11:                                               ; preds = %8, %436
  %12 = phi ptr [ %437, %436 ], [ %9, %8 ]
  %13 = load i32, ptr %5, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = load i32, ptr %12, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = zext nneg i32 %15 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !405
  %22 = and i8 %21, -2
  %23 = icmp eq i8 %22, 8
  %24 = zext nneg i32 %18 to i64
  %25 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !405
  %27 = and i8 %26, -2
  %28 = icmp eq i8 %27, 8
  %29 = xor i1 %23, %28
  br i1 %29, label %30, label %31, !prof !433

30:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 371, ptr noundef nonnull @.str.1) #17
  br label %31

31:                                               ; preds = %11, %30
  %32 = icmp eq i32 %15, 1
  br i1 %32, label %33, label %34, !prof !433

33:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 372, ptr noundef nonnull @.str.1) #17
  br label %34

34:                                               ; preds = %31, %33
  %35 = icmp eq i32 %18, 1
  br i1 %35, label %36, label %37, !prof !433

36:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 373, ptr noundef nonnull @.str.1) #17
  br label %37

37:                                               ; preds = %34, %36
  %38 = icmp eq ptr %5, %12
  br i1 %38, label %289, label %39, !prof !433

39:                                               ; preds = %37
  %40 = load i32, ptr %12, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 39
  br i1 %42, label %43, label %68, !prof !433

43:                                               ; preds = %39
  %44 = and i32 %40, 268435456
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !405
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !405
  %55 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %56 = load i8, ptr %55, align 1, !tbaa !405
  %57 = icmp ult i8 %54, %56
  br i1 %57, label %68, label %58

58:                                               ; preds = %46
  %59 = and i32 %40, 134217728
  %60 = icmp eq i32 %59, 0
  %61 = lshr i32 %40, 26
  %62 = and i32 %61, 1
  %63 = select i1 %60, i32 %62, i32 -1
  %64 = icmp eq i32 %63, %10
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load ptr, ptr @rtl_hooks, align 8, !tbaa !434
  %67 = tail call ptr %66(i32 noundef %15, ptr noundef nonnull %12) #17
  br label %68

68:                                               ; preds = %65, %58, %46, %43, %39
  %69 = phi i32 [ %15, %65 ], [ %18, %58 ], [ %18, %46 ], [ %18, %43 ], [ %18, %39 ]
  %70 = phi ptr [ %67, %65 ], [ %12, %58 ], [ %12, %46 ], [ %12, %43 ], [ %12, %39 ]
  %71 = load i32, ptr %5, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 39
  br i1 %73, label %74, label %78, !prof !433

74:                                               ; preds = %68
  %75 = and i32 %71, 268435456
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 390, ptr noundef nonnull @.str.1) #17
  br label %78

78:                                               ; preds = %68, %74, %77
  %79 = icmp eq i32 %15, %69
  br i1 %79, label %89, label %80, !prof !436

80:                                               ; preds = %78
  %81 = icmp eq i32 %69, 0
  br i1 %81, label %82, label %91, !prof !437

82:                                               ; preds = %80
  %83 = load i32, ptr %70, align 8
  %84 = and i32 %83, 65535
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !438
  %88 = icmp eq i32 %87, 9
  br i1 %88, label %89, label %91

89:                                               ; preds = %82, %78
  %90 = tail call ptr @emit_move_insn(ptr noundef nonnull %5, ptr noundef %70) #18
  br label %289

91:                                               ; preds = %82, %80
  %92 = add i8 %21, -12
  %93 = icmp ult i8 %92, 6
  %94 = zext nneg i32 %69 to i64
  br i1 %93, label %100, label %95, !prof !439

95:                                               ; preds = %91
  %96 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %94
  %97 = load i8, ptr %96, align 1, !tbaa !405
  %98 = add i8 %97, -12
  %99 = icmp ult i8 %98, 6
  br i1 %99, label %100, label %122, !prof !439

100:                                              ; preds = %95, %91
  %101 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %94
  %102 = load i8, ptr %101, align 1, !tbaa !405
  %103 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %104 = load i8, ptr %103, align 1, !tbaa !405
  %105 = icmp eq i8 %102, %104
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 401, ptr noundef nonnull @.str.1) #17
  br label %107

107:                                              ; preds = %100, %106
  br i1 %93, label %108, label %113

108:                                              ; preds = %107
  %109 = load i32, ptr %70, align 8
  %110 = lshr i32 %109, 16
  %111 = and i32 %110, 255
  %112 = tail call ptr @simplify_gen_subreg(i32 noundef %15, ptr noundef nonnull %70, i32 noundef %111, i32 noundef 0) #17
  br label %118

113:                                              ; preds = %107
  %114 = load i32, ptr %5, align 8
  %115 = lshr i32 %114, 16
  %116 = and i32 %115, 255
  %117 = tail call ptr @simplify_gen_subreg(i32 noundef %69, ptr noundef nonnull %5, i32 noundef %116, i32 noundef 0) #17
  br label %118

118:                                              ; preds = %113, %108
  %119 = phi ptr [ %112, %108 ], [ %70, %113 ]
  %120 = phi ptr [ %5, %108 ], [ %117, %113 ]
  %121 = tail call ptr @emit_move_insn(ptr noundef %120, ptr noundef %119) #18
  br label %289

122:                                              ; preds = %95
  %123 = load i32, ptr %5, align 8
  %124 = and i32 %123, 65535
  %125 = icmp eq i32 %124, 41
  br i1 %125, label %126, label %139, !prof !437

126:                                              ; preds = %122
  %127 = load i32, ptr %70, align 8
  %128 = and i32 %127, 65535
  %129 = icmp eq i32 %128, 41
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !405
  %133 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !405
  tail call void @convert_move(ptr noundef %132, ptr noundef %134, i32 noundef %10) #18
  %135 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !405
  %137 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !405
  br label %4

139:                                              ; preds = %126, %122
  br i1 %23, label %140, label %174

140:                                              ; preds = %139
  %141 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %94
  %142 = load i16, ptr %141, align 2, !tbaa !440
  %143 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %19
  %144 = load i16, ptr %143, align 2, !tbaa !440
  %145 = icmp eq i16 %142, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %140
  %147 = icmp eq i8 %97, 9
  %148 = icmp ne i8 %21, 9
  %149 = xor i1 %148, %147
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 427, ptr noundef nonnull @.str.1) #17
  br label %151

151:                                              ; preds = %146, %150
  %152 = select i1 %147, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2), ptr @convert_optab_table
  br label %156

153:                                              ; preds = %140
  %154 = icmp ult i16 %142, %144
  %155 = select i1 %154, ptr @convert_optab_table, ptr getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2)
  br label %156

156:                                              ; preds = %153, %151
  %157 = phi ptr [ %152, %151 ], [ %155, %153 ]
  %158 = getelementptr inbounds %struct.convert_optab_d, ptr %157, i64 0, i32 3, i64 %19, i64 %94
  %159 = load i32, ptr %158, align 4, !tbaa !442
  %160 = icmp eq i32 %159, 2956
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = icmp eq ptr %157, @convert_optab_table
  %163 = select i1 %162, i32 101, i32 102
  tail call void @emit_unop_insn(i32 noundef %159, ptr noundef nonnull %5, ptr noundef %70, i32 noundef %163) #17
  br label %289

164:                                              ; preds = %156
  %165 = tail call ptr @convert_optab_libfunc(ptr noundef nonnull %157, i32 noundef %15, i32 noundef %69) #17
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 451, ptr noundef nonnull @.str.1) #17
  br label %168

168:                                              ; preds = %164, %167
  tail call void @start_sequence() #17
  %169 = tail call ptr (ptr, ptr, i32, i32, i32, ...) @emit_library_call_value(ptr noundef %165, ptr noundef null, i32 noundef 1, i32 noundef %15, i32 noundef 1, ptr noundef %70, i32 noundef %69) #17
  %170 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  %171 = icmp eq ptr %157, getelementptr inbounds ([17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2)
  %172 = select i1 %171, i32 102, i32 101
  %173 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %172, i32 noundef %15, ptr noundef %70) #17
  tail call void @emit_libcall_block(ptr noundef %170, ptr noundef nonnull %5, ptr noundef %169, ptr noundef %173) #17
  br label %289

174:                                              ; preds = %139
  %175 = icmp eq i8 %21, 3
  br i1 %175, label %176, label %194, !prof !437

176:                                              ; preds = %174
  %177 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %178 = load i8, ptr %177, align 1, !tbaa !405
  %179 = zext i8 %178 to i32
  %180 = shl nuw nsw i32 %179, 3
  %181 = tail call i32 @smallest_mode_for_size(i32 noundef %180, i32 noundef 2) #17
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 3, i64 %19, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !442
  %185 = icmp eq i32 %184, 2956
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 474, ptr noundef nonnull @.str.1) #17
  br label %187

187:                                              ; preds = %176, %186
  %188 = icmp eq i32 %181, %69
  br i1 %188, label %191, label %189

189:                                              ; preds = %187
  %190 = tail call ptr @convert_to_mode(i32 noundef %181, ptr noundef %70, i32 noundef %10) #18
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi ptr [ %190, %189 ], [ %70, %187 ]
  %193 = load i32, ptr %183, align 4, !tbaa !442
  tail call void @emit_unop_insn(i32 noundef %193, ptr noundef nonnull %5, ptr noundef %192, i32 noundef 0) #17
  br label %289

194:                                              ; preds = %174
  %195 = icmp eq i8 %97, 3
  br i1 %195, label %196, label %217, !prof !437

196:                                              ; preds = %194
  %197 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %94
  %198 = load i8, ptr %197, align 1, !tbaa !405
  %199 = zext i8 %198 to i32
  %200 = shl nuw nsw i32 %199, 3
  %201 = tail call i32 @smallest_mode_for_size(i32 noundef %200, i32 noundef 2) #17
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 0, i32 3, i64 %202, i64 %94
  %204 = load i32, ptr %203, align 4, !tbaa !442
  %205 = icmp eq i32 %204, 2956
  br i1 %205, label %206, label %207

206:                                              ; preds = %196
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 489, ptr noundef nonnull @.str.1) #17
  br label %207

207:                                              ; preds = %196, %206
  %208 = icmp eq i32 %15, %201
  br i1 %208, label %209, label %211

209:                                              ; preds = %207
  %210 = load i32, ptr %203, align 4, !tbaa !442
  tail call void @emit_unop_insn(i32 noundef %210, ptr noundef nonnull %5, ptr noundef %70, i32 noundef 0) #17
  br label %289

211:                                              ; preds = %207
  %212 = tail call ptr @gen_reg_rtx(i32 noundef %201) #17
  %213 = load i32, ptr %203, align 4, !tbaa !442
  tail call void @emit_unop_insn(i32 noundef %213, ptr noundef %212, ptr noundef %70, i32 noundef 0) #17
  %214 = zext i32 %201 to i64
  %215 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !405
  br label %217

217:                                              ; preds = %211, %194
  %218 = phi i8 [ %216, %211 ], [ %97, %194 ]
  %219 = phi i64 [ %214, %211 ], [ %94, %194 ]
  %220 = phi i32 [ %201, %211 ], [ %69, %194 ]
  %221 = phi ptr [ %212, %211 ], [ %70, %194 ]
  %222 = and i8 %218, -4
  %223 = icmp eq i8 %222, 4
  %224 = and i8 %21, -4
  %225 = icmp eq i8 %224, 4
  %226 = xor i1 %225, %223
  br i1 %226, label %227, label %228, !prof !437

227:                                              ; preds = %217
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 509, ptr noundef nonnull @.str.1) #17
  br label %228

228:                                              ; preds = %217, %227
  br i1 %223, label %229, label %239, !prof !444

229:                                              ; preds = %228
  %230 = icmp eq i8 %218, %21
  br i1 %230, label %231, label %238

231:                                              ; preds = %229
  %232 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %219
  %233 = load i8, ptr %232, align 1, !tbaa !405
  %234 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %235 = load i8, ptr %234, align 1, !tbaa !405
  %236 = icmp ult i8 %233, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  tail call void @expand_fixed_convert(ptr noundef nonnull %5, ptr noundef %221, i32 noundef 0, i32 noundef 0) #17
  br label %289

238:                                              ; preds = %231, %229
  tail call void @expand_fixed_convert(ptr noundef nonnull %5, ptr noundef %221, i32 noundef 0, i32 noundef 1) #17
  br label %289

239:                                              ; preds = %228
  %240 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %219
  %241 = load i8, ptr %240, align 1, !tbaa !405
  %242 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %243 = load i8, ptr %242, align 1, !tbaa !405
  %244 = zext i8 %243 to i32
  %245 = icmp ult i8 %241, %243
  %246 = icmp ugt i8 %243, 4
  %247 = and i1 %245, %246
  br i1 %247, label %248, label %337, !prof !445

248:                                              ; preds = %239
  %249 = icmp slt i32 %10, 0
  %250 = icmp eq i32 %10, 0
  %251 = select i1 %250, i32 98, i32 99
  %252 = select i1 %249, i32 0, i32 %251, !prof !433
  %253 = add nuw nsw i32 %244, 3
  %254 = lshr i32 %253, 2
  %255 = tail call i32 @can_extend_p(i32 noundef %15, i32 noundef %220, i32 noundef %10) #17
  %256 = icmp eq i32 %255, 2956
  br i1 %256, label %268, label %257

257:                                              ; preds = %248
  %258 = load i32, ptr @optimize, align 4, !tbaa !438
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %257
  %261 = load i32, ptr %221, align 8
  %262 = and i32 %261, 65535
  %263 = icmp eq i32 %262, 39
  br i1 %263, label %264, label %266

264:                                              ; preds = %260
  %265 = tail call ptr @force_reg(i32 noundef %220, ptr noundef nonnull %221) #17
  br label %266

266:                                              ; preds = %264, %260, %257
  %267 = phi ptr [ %265, %264 ], [ %221, %260 ], [ %221, %257 ]
  tail call void @emit_unop_insn(i32 noundef %255, ptr noundef nonnull %5, ptr noundef %267, i32 noundef %252) #17
  br label %289

268:                                              ; preds = %248
  %269 = load i8, ptr %240, align 1, !tbaa !405
  %270 = icmp ult i8 %269, 4
  br i1 %270, label %271, label %292

271:                                              ; preds = %268
  %272 = load i32, ptr @word_mode, align 4, !tbaa !438
  %273 = tail call i32 @can_extend_p(i32 noundef %15, i32 noundef %272, i32 noundef %10) #17
  %274 = icmp eq i32 %273, 2956
  br i1 %274, label %292, label %275

275:                                              ; preds = %271
  %276 = load i32, ptr @word_mode, align 4, !tbaa !438
  %277 = tail call ptr @gen_reg_rtx(i32 noundef %276) #17
  %278 = load i32, ptr %5, align 8
  %279 = and i32 %278, 65535
  %280 = icmp eq i32 %279, 37
  br i1 %280, label %281, label %290

281:                                              ; preds = %275
  %282 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %5, ptr noundef %221) #17
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %286, label %284

284:                                              ; preds = %281
  %285 = tail call ptr @force_reg(i32 noundef %220, ptr noundef %221) #17
  br label %286

286:                                              ; preds = %284, %281
  %287 = phi ptr [ %285, %284 ], [ %221, %281 ]
  %288 = tail call ptr @emit_clobber(ptr noundef nonnull %5) #17
  br label %290

289:                                              ; preds = %209, %459, %444, %266, %334, %237, %238, %161, %168, %467, %466, %416, %404, %191, %118, %89, %37, %290
  ret void

290:                                              ; preds = %286, %275
  %291 = phi ptr [ %287, %286 ], [ %221, %275 ]
  tail call void @convert_move(ptr noundef %277, ptr noundef %291, i32 noundef %10) #18
  tail call void @emit_unop_insn(i32 noundef %273, ptr noundef nonnull %5, ptr noundef %277, i32 noundef %252) #17
  br label %289

292:                                              ; preds = %268, %271
  tail call void @start_sequence() #17
  %293 = tail call i32 @reg_overlap_mentioned_p(ptr noundef nonnull %5, ptr noundef %221) #17
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %292
  %296 = tail call ptr @force_reg(i32 noundef %220, ptr noundef %221) #17
  br label %297

297:                                              ; preds = %295, %292
  %298 = phi ptr [ %296, %295 ], [ %221, %292 ]
  %299 = load i8, ptr %240, align 1, !tbaa !405
  %300 = icmp ult i8 %299, 4
  %301 = load i32, ptr @word_mode, align 4
  %302 = select i1 %300, i32 %301, i32 %220
  %303 = tail call ptr @convert_to_mode(i32 noundef %302, ptr noundef %298, i32 noundef %10) #18
  %304 = load ptr, ptr @rtl_hooks, align 8, !tbaa !434
  %305 = tail call ptr %304(i32 noundef %302, ptr noundef nonnull %5) #17
  %306 = tail call ptr @emit_move_insn(ptr noundef %305, ptr noundef %303) #18
  br i1 %250, label %309, label %307

307:                                              ; preds = %297
  %308 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  br label %314

309:                                              ; preds = %297
  %310 = load i32, ptr @word_mode, align 4, !tbaa !438
  %311 = tail call ptr @gen_reg_rtx(i32 noundef %310) #17
  %312 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %313 = tail call ptr @emit_store_flag(ptr noundef %311, i32 noundef 85, ptr noundef %303, ptr noundef %312, i32 noundef 0, i32 noundef 0, i32 noundef -1) #17
  br label %314

314:                                              ; preds = %309, %307
  %315 = phi ptr [ %308, %307 ], [ %313, %309 ]
  %316 = zext i32 %302 to i64
  %317 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !405
  %319 = lshr i8 %318, 2
  %320 = zext nneg i8 %319 to i32
  %321 = icmp ugt i32 %254, %320
  br i1 %321, label %322, label %334

322:                                              ; preds = %314, %331
  %323 = phi i32 [ %332, %331 ], [ %320, %314 ]
  %324 = tail call ptr @operand_subword(ptr noundef nonnull %5, i32 noundef %323, i32 noundef 1, i32 noundef %15) #17
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 601, ptr noundef nonnull @.str.1) #17
  br label %327

327:                                              ; preds = %322, %326
  %328 = icmp eq ptr %315, %324
  br i1 %328, label %331, label %329

329:                                              ; preds = %327
  %330 = tail call ptr @emit_move_insn(ptr noundef %324, ptr noundef %315) #18
  br label %331

331:                                              ; preds = %329, %327
  %332 = add nuw nsw i32 %323, 1
  %333 = icmp eq i32 %332, %254
  br i1 %333, label %334, label %322, !llvm.loop !446

334:                                              ; preds = %331, %314
  %335 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  %336 = tail call ptr @emit_insn(ptr noundef %335) #17
  br label %289

337:                                              ; preds = %239
  %338 = icmp ugt i8 %241, 4
  br i1 %338, label %339, label %366, !prof !437

339:                                              ; preds = %337
  %340 = icmp ult i8 %243, 5
  br i1 %340, label %341, label %366

341:                                              ; preds = %339
  %342 = load i32, ptr %221, align 8
  %343 = and i32 %342, 134283263
  %344 = icmp eq i32 %343, 43
  br i1 %344, label %345, label %356

345:                                              ; preds = %341
  %346 = getelementptr inbounds [87 x i8], ptr @direct_load, i64 0, i64 %19
  %347 = load i8, ptr %346, align 1, !tbaa !405
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %356, label %349

349:                                              ; preds = %345
  %350 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1
  %351 = load ptr, ptr %350, align 8, !tbaa !405
  %352 = tail call i32 @mode_dependent_address_p(ptr noundef %351) #17
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %361, label %354

354:                                              ; preds = %349
  %355 = load i32, ptr %221, align 8
  br label %356

356:                                              ; preds = %354, %345, %341
  %357 = phi i32 [ %355, %354 ], [ %342, %345 ], [ %342, %341 ]
  %358 = trunc i32 %357 to i16
  switch i16 %358, label %359 [
    i16 37, label %361
    i16 39, label %361
  ]

359:                                              ; preds = %356
  %360 = tail call ptr @force_reg(i32 noundef %220, ptr noundef nonnull %221) #17
  br label %361

361:                                              ; preds = %356, %356, %359, %349
  %362 = phi ptr [ %221, %356 ], [ %360, %359 ], [ %221, %349 ], [ %221, %356 ]
  %363 = load ptr, ptr @rtl_hooks, align 8, !tbaa !434
  %364 = load i32, ptr @word_mode, align 4, !tbaa !438
  %365 = tail call ptr %363(i32 noundef %364, ptr noundef %362) #17
  br label %8

366:                                              ; preds = %339, %337
  %367 = shl nuw nsw i32 %244, 3
  %368 = zext i8 %241 to i32
  %369 = shl nuw nsw i32 %368, 3
  %370 = icmp ult i32 %367, %369
  br i1 %370, label %371, label %409, !prof !437

371:                                              ; preds = %366
  %372 = load i32, ptr %221, align 8
  %373 = and i32 %372, 134283263
  %374 = icmp eq i32 %373, 43
  br i1 %374, label %375, label %386

375:                                              ; preds = %371
  %376 = getelementptr inbounds [87 x i8], ptr @direct_load, i64 0, i64 %19
  %377 = load i8, ptr %376, align 1, !tbaa !405
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %386, label %379

379:                                              ; preds = %375
  %380 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !405
  %382 = tail call i32 @mode_dependent_address_p(ptr noundef %381) #17
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %391, label %384

384:                                              ; preds = %379
  %385 = load i32, ptr %221, align 8
  br label %386

386:                                              ; preds = %384, %375, %371
  %387 = phi i32 [ %385, %384 ], [ %372, %375 ], [ %372, %371 ]
  %388 = trunc i32 %387 to i16
  switch i16 %388, label %389 [
    i16 37, label %391
    i16 39, label %391
  ]

389:                                              ; preds = %386
  %390 = tail call ptr @force_reg(i32 noundef %220, ptr noundef nonnull %221) #17
  br label %391

391:                                              ; preds = %386, %386, %389, %379
  %392 = phi ptr [ %221, %386 ], [ %390, %389 ], [ %221, %379 ], [ %221, %386 ]
  %393 = load i32, ptr %392, align 8
  %394 = and i32 %393, 65535
  %395 = icmp eq i32 %394, 37
  br i1 %395, label %396, label %404

396:                                              ; preds = %391
  %397 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %392) #18
  %398 = icmp ult i32 %397, 53
  br i1 %398, label %399, label %404

399:                                              ; preds = %396
  %400 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %397, i32 noundef %15) #17
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %399
  %403 = tail call ptr @copy_to_reg(ptr noundef nonnull %392) #17
  br label %404

404:                                              ; preds = %402, %399, %396, %391
  %405 = phi ptr [ %392, %399 ], [ %403, %402 ], [ %392, %396 ], [ %392, %391 ]
  %406 = load ptr, ptr @rtl_hooks, align 8, !tbaa !434
  %407 = tail call ptr %406(i32 noundef %15, ptr noundef %405) #17
  %408 = tail call ptr @emit_move_insn(ptr noundef nonnull %5, ptr noundef %407) #18
  br label %289

409:                                              ; preds = %366
  %410 = icmp ugt i32 %367, %369
  br i1 %410, label %411, label %461, !prof !447

411:                                              ; preds = %409
  %412 = tail call i32 @can_extend_p(i32 noundef %15, i32 noundef %220, i32 noundef %10) #17
  %413 = icmp eq i32 %412, 2956
  br i1 %413, label %414, label %416, !prof !437

414:                                              ; preds = %411
  %415 = icmp eq i32 %220, 0
  br i1 %415, label %444, label %421

416:                                              ; preds = %411
  %417 = icmp slt i32 %10, 0
  %418 = icmp eq i32 %10, 0
  %419 = select i1 %418, i32 98, i32 99
  %420 = select i1 %417, i32 0, i32 %419, !prof !433
  tail call void @emit_unop_insn(i32 noundef %412, ptr noundef nonnull %5, ptr noundef %221, i32 noundef %420) #17
  br label %289

421:                                              ; preds = %414, %438
  %422 = phi i32 [ %442, %438 ], [ %220, %414 ]
  %423 = tail call i32 @can_extend_p(i32 noundef %15, i32 noundef %422, i32 noundef %10) #17
  %424 = icmp eq i32 %423, 2956
  br i1 %424, label %425, label %431

425:                                              ; preds = %421
  %426 = load i8, ptr %242, align 1, !tbaa !405
  %427 = zext i32 %422 to i64
  %428 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %427
  %429 = load i8, ptr %428, align 1, !tbaa !405
  %430 = icmp ult i8 %426, %429
  br i1 %430, label %431, label %438

431:                                              ; preds = %425, %421
  %432 = tail call i32 @can_extend_p(i32 noundef %422, i32 noundef %220, i32 noundef %10) #17
  %433 = icmp eq i32 %432, 2956
  br i1 %433, label %434, label %436

434:                                              ; preds = %431
  %435 = zext i32 %422 to i64
  br label %438

436:                                              ; preds = %431
  %437 = tail call ptr @convert_to_mode(i32 noundef %422, ptr noundef %221, i32 noundef %10) #18
  br label %11

438:                                              ; preds = %434, %425
  %439 = phi i64 [ %435, %434 ], [ %427, %425 ]
  %440 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %439
  %441 = load i8, ptr %440, align 1, !tbaa !405
  %442 = zext i8 %441 to i32
  %443 = icmp eq i8 %441, 0
  br i1 %443, label %444, label %421, !llvm.loop !448

444:                                              ; preds = %414, %438
  %445 = load i8, ptr %242, align 1, !tbaa !405
  %446 = zext i8 %445 to i32
  %447 = load i8, ptr %240, align 1, !tbaa !405
  %448 = zext i8 %447 to i32
  %449 = sub nsw i32 %446, %448
  %450 = shl nsw i32 %449, 3
  %451 = sext i32 %450 to i64
  %452 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %451) #17
  %453 = load ptr, ptr @rtl_hooks, align 8, !tbaa !434
  %454 = tail call ptr @force_reg(i32 noundef %220, ptr noundef %221) #17
  %455 = tail call ptr %453(i32 noundef %15, ptr noundef %454) #17
  %456 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %15, ptr noundef %455, ptr noundef %452, ptr noundef nonnull %5, i32 noundef %10) #17
  %457 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %15, ptr noundef %456, ptr noundef %452, ptr noundef nonnull %5, i32 noundef %10) #17
  %458 = icmp eq ptr %457, %5
  br i1 %458, label %289, label %459

459:                                              ; preds = %444
  %460 = tail call ptr @emit_move_insn(ptr noundef nonnull %5, ptr noundef %457) #18
  br label %289

461:                                              ; preds = %409
  %462 = sext i32 %220 to i64
  %463 = getelementptr inbounds [17 x %struct.convert_optab_d], ptr @convert_optab_table, i64 0, i64 2, i32 3, i64 %19, i64 %462
  %464 = load i32, ptr %463, align 4, !tbaa !442
  %465 = icmp eq i32 %464, 2956
  br i1 %465, label %467, label %466

466:                                              ; preds = %461
  tail call void @emit_unop_insn(i32 noundef %464, ptr noundef nonnull %5, ptr noundef %221, i32 noundef 0) #17
  br label %289

467:                                              ; preds = %461
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 722, ptr noundef nonnull @.str.1) #17
  br label %289
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_move_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !449 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %14, label %7, !prof !450

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, %5
  %12 = icmp eq i32 %10, 0
  %13 = or i1 %11, %12
  br i1 %13, label %16, label %14, !prof !451

14:                                               ; preds = %7, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3432, ptr noundef nonnull @.str.1) #17
  %15 = load i32, ptr %1, align 8
  br label %16

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %8, %7 ], [ %15, %14 ]
  %18 = and i32 %17, 65535
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !438
  %22 = icmp eq i32 %21, 9
  br i1 %22, label %23, label %46, !prof !452

23:                                               ; preds = %16
  %24 = load i32, ptr @optimize, align 4, !tbaa !438
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26, !prof !453

26:                                               ; preds = %23
  %27 = load i32, ptr %0, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !405
  %33 = and i8 %32, -2
  %34 = icmp eq i8 %33, 8
  br i1 %34, label %35, label %38, !prof !454

35:                                               ; preds = %26
  %36 = tail call fastcc ptr @compress_float_constant(ptr noundef nonnull %0, ptr noundef nonnull %1) #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %133

38:                                               ; preds = %26, %35, %23
  %39 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %1) #17
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %46, !prof !453

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
  br i1 %51, label %52, label %75, !prof !455

52:                                               ; preds = %46
  %53 = lshr i32 %49, 16
  %54 = and i32 %53, 255
  %55 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !405
  %57 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !405
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60, !prof !456

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.mem_attrs, ptr %58, i64 0, i32 5
  %62 = load i8, ptr %61, align 8, !tbaa !457
  br label %63

63:                                               ; preds = %52, %60
  %64 = phi i8 [ %62, %60 ], [ 0, %52 ]
  %65 = tail call i32 @memory_address_addr_space_p(i32 noundef %54, ptr noundef %56, i8 noundef zeroext %64) #17
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75, !prof !459

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
  br i1 %79, label %80, label %97, !prof !460

80:                                               ; preds = %75
  %81 = lshr i32 %77, 16
  %82 = and i32 %81, 255
  %83 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !405
  %85 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 0, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !405
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88, !prof !461

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.mem_attrs, ptr %86, i64 0, i32 5
  %90 = load i8, ptr %89, align 8, !tbaa !457
  br label %91

91:                                               ; preds = %80, %88
  %92 = phi i8 [ %90, %88 ], [ 0, %80 ]
  %93 = tail call i32 @memory_address_addr_space_p(i32 noundef %82, ptr noundef %84, i8 noundef zeroext %92) #17
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97, !prof !462

95:                                               ; preds = %91
  %96 = tail call ptr @validize_mem(ptr noundef nonnull %47) #17
  br label %97

97:                                               ; preds = %95, %91, %75
  %98 = phi ptr [ %47, %91 ], [ %96, %95 ], [ %47, %75 ]
  br i1 %6, label %99, label %100, !prof !450

99:                                               ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3470, ptr noundef nonnull @.str.1) #17
  br label %100

100:                                              ; preds = %97, %99
  %101 = tail call ptr @emit_move_insn_1(ptr noundef %76, ptr noundef %98) #18
  %102 = icmp eq ptr %48, null
  br i1 %102, label %133, label %103, !prof !463

103:                                              ; preds = %100
  %104 = load i32, ptr %76, align 8
  %105 = and i32 %104, 65535
  %106 = icmp eq i32 %105, 37
  br i1 %106, label %107, label %133, !prof !464

107:                                              ; preds = %103
  %108 = load i32, ptr %101, align 8
  %109 = and i32 %108, 65535
  %110 = add nsw i32 %109, -7
  %111 = icmp ult i32 %110, 4
  br i1 %111, label %112, label %133, !prof !465

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !405
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 23
  br i1 %117, label %121, label %118, !prof !466

118:                                              ; preds = %112
  %119 = tail call ptr @single_set_2(ptr noundef nonnull %101, ptr noundef nonnull %114) #17
  %120 = icmp eq ptr %119, null
  br i1 %120, label %133, label %121, !prof !467

121:                                              ; preds = %112, %118
  %122 = phi ptr [ %119, %118 ], [ %114, %112 ]
  %123 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !405
  %125 = icmp eq ptr %124, %76
  br i1 %125, label %126, label %133, !prof !466

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1, i32 0, i32 0, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !405
  %129 = tail call i32 @rtx_equal_p(ptr noundef nonnull %48, ptr noundef %128) #17
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133, !prof !468

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
define dso_local ptr @convert_to_mode(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !469 {
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
define dso_local ptr @convert_modes(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !470 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 39
  br i1 %7, label %8, label %35, !prof !471

8:                                                ; preds = %4
  %9 = and i32 %5, 268435456
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !405
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !405
  %20 = zext i32 %0 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !405
  %23 = icmp ult i8 %19, %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %11
  %25 = and i32 %5, 134217728
  %26 = icmp eq i32 %25, 0
  %27 = lshr i32 %5, 26
  %28 = and i32 %27, 1
  %29 = select i1 %26, i32 %28, i32 -1
  %30 = icmp eq i32 %29, %3
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load ptr, ptr @rtl_hooks, align 8, !tbaa !434
  %33 = tail call ptr %32(i32 noundef %0, ptr noundef nonnull %2) #17
  %34 = load i32, ptr %33, align 8
  br label %35

35:                                               ; preds = %31, %24, %11, %8, %4
  %36 = phi i32 [ %34, %31 ], [ %5, %24 ], [ %5, %11 ], [ %5, %8 ], [ %5, %4 ]
  %37 = phi ptr [ %33, %31 ], [ %2, %24 ], [ %2, %11 ], [ %2, %8 ], [ %2, %4 ]
  %38 = lshr i32 %36, 16
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 %1, i32 %39, !prof !472
  %42 = icmp eq i32 %41, %0
  br i1 %42, label %175, label %43, !prof !473

43:                                               ; preds = %35
  %44 = icmp eq i32 %3, 0
  br i1 %44, label %77, label %45, !prof !474

45:                                               ; preds = %43
  %46 = zext i32 %0 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !405
  %49 = icmp eq i8 %48, 2
  br i1 %49, label %50, label %77, !prof !475

50:                                               ; preds = %45
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %46
  %52 = load i8, ptr %51, align 1, !tbaa !405
  %53 = icmp eq i8 %52, 16
  %54 = and i32 %36, 65535
  %55 = icmp eq i32 %54, 30
  %56 = and i1 %55, %53
  br i1 %56, label %57, label %77, !prof !476

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !405
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = icmp eq i32 %41, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %61
  %64 = zext i32 %41 to i64
  %65 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !405
  %67 = icmp ult i8 %66, 8
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = shl nuw nsw i8 %66, 3
  %70 = zext nneg i8 %69 to i64
  %71 = shl nsw i64 -1, %70
  %72 = xor i64 %71, -1
  %73 = and i64 %59, %72
  br label %74

74:                                               ; preds = %68, %63, %61
  %75 = phi i64 [ %73, %68 ], [ %59, %63 ], [ %59, %61 ]
  %76 = tail call ptr @immed_double_const(i64 noundef %75, i64 noundef 0, i32 noundef %0) #17
  br label %175

77:                                               ; preds = %57, %50, %45, %43
  %78 = and i32 %36, 65535
  %79 = icmp eq i32 %78, 30
  %80 = zext i32 %0 to i64
  br i1 %79, label %81, label %85, !prof !477

81:                                               ; preds = %77
  %82 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %80
  %83 = load i8, ptr %82, align 1, !tbaa !405
  %84 = icmp ult i8 %83, 9
  br i1 %84, label %120, label %85, !prof !475

85:                                               ; preds = %77, %81
  %86 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %80
  %87 = load i8, ptr %86, align 1, !tbaa !405
  %88 = icmp eq i8 %87, 2
  br i1 %88, label %89, label %157, !prof !478

89:                                               ; preds = %85
  %90 = zext i32 %41 to i64
  %91 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !405
  %93 = icmp eq i8 %92, 2
  br i1 %93, label %94, label %173, !prof !478

94:                                               ; preds = %89
  %95 = icmp eq i32 %78, 32
  br i1 %95, label %120, label %96, !prof !479

96:                                               ; preds = %94
  %97 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %80
  %98 = load i8, ptr %97, align 1, !tbaa !405
  %99 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %90
  %100 = load i8, ptr %99, align 1, !tbaa !405
  %101 = icmp ugt i8 %98, %100
  br i1 %101, label %173, label %102, !prof !479

102:                                              ; preds = %96
  %103 = and i32 %36, 134283263
  %104 = icmp eq i32 %103, 43
  br i1 %104, label %105, label %110, !prof !480

105:                                              ; preds = %102
  %106 = sext i32 %0 to i64
  %107 = getelementptr inbounds [87 x i8], ptr @direct_load, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !405
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %173, label %120, !prof !481

110:                                              ; preds = %102
  %111 = icmp eq i32 %78, 37
  br i1 %111, label %112, label %173, !prof !482

112:                                              ; preds = %110
  %113 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %37) #18
  %114 = icmp ult i32 %113, 53
  br i1 %114, label %115, label %120, !prof !483

115:                                              ; preds = %112
  %116 = tail call zeroext i8 @ix86_hard_regno_mode_ok(i32 noundef %113, i32 noundef %0) #17
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %173, label %118

118:                                              ; preds = %115
  %119 = load i32, ptr %37, align 8
  br label %120

120:                                              ; preds = %118, %112, %105, %94, %81
  %121 = phi i32 [ %119, %118 ], [ %36, %112 ], [ %36, %105 ], [ %36, %94 ], [ %36, %81 ]
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 30
  br i1 %123, label %124, label %154, !prof !477

124:                                              ; preds = %120
  %125 = icmp eq i32 %41, 0
  br i1 %125, label %154, label %126, !prof !484

126:                                              ; preds = %124
  %127 = zext i32 %0 to i64
  %128 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !405
  %130 = zext i32 %41 to i64
  %131 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !405
  %133 = icmp ugt i8 %129, %132
  br i1 %133, label %134, label %154, !prof !484

134:                                              ; preds = %126
  %135 = zext i8 %132 to i32
  %136 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %137 = load i64, ptr %136, align 8, !tbaa !405
  %138 = shl nuw nsw i32 %135, 3
  %139 = zext nneg i32 %138 to i64
  %140 = shl nsw i64 -1, %139
  %141 = xor i64 %140, -1
  %142 = and i64 %137, %141
  br i1 %44, label %143, label %151

143:                                              ; preds = %134
  %144 = add nsw i32 %138, -1
  %145 = zext nneg i32 %144 to i64
  %146 = shl nuw i64 1, %145
  %147 = and i64 %142, %146
  %148 = icmp eq i64 %147, 0
  %149 = or i64 %137, %140
  %150 = select i1 %148, i64 %142, i64 %149
  br label %151

151:                                              ; preds = %143, %134
  %152 = phi i64 [ %142, %134 ], [ %150, %143 ]
  %153 = tail call ptr @gen_int_mode(i64 noundef %152, i32 noundef %0) #17
  br label %175

154:                                              ; preds = %126, %124, %120
  %155 = load ptr, ptr @rtl_hooks, align 8, !tbaa !434
  %156 = tail call ptr %155(i32 noundef %0, ptr noundef nonnull %37) #17
  br label %175

157:                                              ; preds = %85
  %158 = add i8 %87, -12
  %159 = icmp ult i8 %158, 6
  %160 = and i32 %36, 16711680
  %161 = icmp eq i32 %160, 0
  %162 = and i1 %159, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %157
  %164 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %80
  %165 = load i8, ptr %164, align 1, !tbaa !405
  %166 = zext i32 %41 to i64
  %167 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !405
  %169 = icmp eq i8 %165, %168
  br i1 %169, label %171, label %170

170:                                              ; preds = %163
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 836, ptr noundef nonnull @.str.1) #17
  br label %171

171:                                              ; preds = %163, %170
  %172 = tail call ptr @simplify_gen_subreg(i32 noundef %0, ptr noundef nonnull %37, i32 noundef %41, i32 noundef 0) #17
  br label %175

173:                                              ; preds = %105, %89, %96, %110, %115, %157
  %174 = tail call ptr @gen_reg_rtx(i32 noundef %0) #17
  tail call void @convert_move(ptr noundef %174, ptr noundef nonnull %37, i32 noundef %3) #18
  br label %175

175:                                              ; preds = %35, %173, %171, %154, %151, %74
  %176 = phi ptr [ %76, %74 ], [ %153, %151 ], [ %156, %154 ], [ %172, %171 ], [ %174, %173 ], [ %37, %35 ]
  ret ptr %176
}

; Function Attrs: optsize
declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_int_mode(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @can_move_by_pieces(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !469 {
  %3 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %0, i32 noundef %1) #18
  %4 = tail call zeroext i8 @optimize_insn_for_speed_p() #17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @ix86_cost, align 8, !tbaa !401
  %8 = getelementptr inbounds %struct.processor_costs, ptr %7, i64 0, i32 10
  %9 = load i32, ptr %8, align 4, !tbaa !485
  %10 = zext i32 %9 to i64
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi i64 [ %10, %6 ], [ 3, %2 ]
  %13 = icmp ult i64 %3, %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @move_by_pieces_ninsns(i64 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !469 !PGOFuncName !487 {
  %3 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 1) #17
  %4 = tail call i32 @get_mode_alignment(i32 noundef %3) #17
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @get_mode_alignment(i32 noundef %3) #17
  %8 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !405
  br label %36

9:                                                ; preds = %2
  %10 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !405
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %9
  %13 = zext i8 %10 to i32
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !405
  %17 = icmp ugt i8 %16, 4
  br i1 %17, label %30, label %24

18:                                               ; preds = %24
  %19 = zext i8 %28 to i32
  %20 = zext i8 %28 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !405
  %23 = icmp ugt i8 %22, 4
  br i1 %23, label %30, label %24, !llvm.loop !488

24:                                               ; preds = %12, %18
  %25 = phi i64 [ %20, %18 ], [ %14, %12 ]
  %26 = phi i32 [ %19, %18 ], [ %13, %12 ]
  %27 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %25
  %28 = load i8, ptr %27, align 1, !tbaa !405
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %18, !llvm.loop !488

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
  %50 = load i8, ptr %49, align 1, !tbaa !405
  %51 = zext i8 %50 to i32
  %52 = icmp ugt i32 %43, %51
  %53 = select i1 %52, i32 %47, i32 %46
  %54 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %48
  %55 = load i8, ptr %54, align 1, !tbaa !405
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %44, !llvm.loop !489

57:                                               ; preds = %44
  %58 = icmp eq i32 %53, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %57
  %60 = zext nneg i32 %53 to i64
  %61 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !442
  %63 = icmp eq i32 %62, 2956
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = tail call i32 @get_mode_alignment(i32 noundef %53) #17
  %66 = icmp ult i32 %38, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %60
  %69 = load i8, ptr %68, align 1, !tbaa !405
  %70 = zext i8 %69 to i64
  %71 = udiv i64 %41, %70
  %72 = add i64 %71, %42
  %73 = urem i64 %41, %70
  br label %74

74:                                               ; preds = %59, %64, %67
  %75 = phi i64 [ %72, %67 ], [ %42, %64 ], [ %42, %59 ]
  %76 = phi i64 [ %73, %67 ], [ %41, %64 ], [ %41, %59 ]
  %77 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %60
  %78 = load i8, ptr %77, align 1, !tbaa !405
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
define dso_local ptr @move_by_pieces(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !469 {
  %6 = alloca %struct.move_by_pieces_d, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #16
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !490
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !405
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.mem_attrs, ptr %10, i64 0, i32 5
  %14 = load i8, ptr %13, align 8, !tbaa !457
  br label %15

15:                                               ; preds = %5, %12
  %16 = phi i8 [ %14, %12 ], [ 0, %5 ]
  %17 = tail call i32 %7(i8 noundef zeroext %16) #17
  %18 = load ptr, ptr %8, align 8, !tbaa !405
  %19 = icmp eq ptr %0, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !405
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mem_attrs, ptr %22, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !503
  br label %27

27:                                               ; preds = %15, %24
  %28 = phi i32 [ %26, %24 ], [ %3, %15 ]
  %29 = load ptr, ptr %9, align 8, !tbaa !405
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %40

31:                                               ; preds = %20
  %32 = load ptr, ptr %9, align 8, !tbaa !405
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 9
  store i64 0, ptr %35, align 8, !tbaa !504
  %36 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 5
  store ptr %18, ptr %36, align 8, !tbaa !506
  %37 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !490
  br label %78

38:                                               ; preds = %27
  %39 = icmp ult i32 %28, 8
  br i1 %39, label %46, label %61

40:                                               ; preds = %27, %31
  %41 = phi ptr [ %32, %31 ], [ %29, %27 ]
  %42 = phi i32 [ 8, %31 ], [ %28, %27 ]
  %43 = getelementptr inbounds %struct.mem_attrs, ptr %41, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !503
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %40, %38
  br i1 %19, label %47, label %50

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 9
  store i64 0, ptr %48, align 8, !tbaa !504
  %49 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 5
  store ptr %18, ptr %49, align 8, !tbaa !506
  br label %97

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !405
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.mem_attrs, ptr %52, i64 0, i32 4
  %56 = load i32, ptr %55, align 4, !tbaa !503
  br label %57

57:                                               ; preds = %50, %54
  %58 = phi i32 [ 8, %50 ], [ %56, %54 ]
  %59 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 9
  store i64 0, ptr %59, align 8, !tbaa !504
  %60 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 5
  store ptr %18, ptr %60, align 8, !tbaa !506
  br label %68

61:                                               ; preds = %40, %38
  %62 = phi i32 [ 8, %38 ], [ %44, %40 ]
  %63 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 9
  store i64 0, ptr %63, align 8, !tbaa !504
  %64 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 5
  store ptr %18, ptr %64, align 8, !tbaa !506
  br i1 %19, label %97, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !405
  br label %68

68:                                               ; preds = %65, %57
  %69 = phi ptr [ %52, %57 ], [ %67, %65 ]
  %70 = phi ptr [ %60, %57 ], [ %64, %65 ]
  %71 = phi ptr [ %59, %57 ], [ %63, %65 ]
  %72 = phi i32 [ %58, %57 ], [ %62, %65 ]
  %73 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !490
  %74 = icmp eq ptr %69, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.mem_attrs, ptr %69, i64 0, i32 5
  %77 = load i8, ptr %76, align 8, !tbaa !457
  br label %78

78:                                               ; preds = %34, %68, %75
  %79 = phi ptr [ %73, %75 ], [ %73, %68 ], [ %37, %34 ]
  %80 = phi i32 [ %72, %75 ], [ %72, %68 ], [ 8, %34 ]
  %81 = phi ptr [ %71, %75 ], [ %71, %68 ], [ %35, %34 ]
  %82 = phi ptr [ %70, %75 ], [ %70, %68 ], [ %36, %34 ]
  %83 = phi i8 [ %77, %75 ], [ 0, %68 ], [ 0, %34 ]
  %84 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %85 = tail call i32 %79(i8 noundef zeroext %83) #17
  %86 = load ptr, ptr %84, align 8, !tbaa !405
  store ptr %0, ptr %6, align 8, !tbaa !507
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 65535
  %89 = add nsw i32 %88, -74
  %90 = icmp ult i32 %89, 4
  %91 = zext i1 %90 to i32
  %92 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 2
  store i32 %91, ptr %92, align 8, !tbaa !508
  %93 = icmp eq i32 %88, 74
  %94 = icmp eq i32 %88, 76
  %95 = or i1 %93, %94
  %96 = zext i1 %95 to i32
  br label %102

97:                                               ; preds = %47, %61
  %98 = phi ptr [ %49, %47 ], [ %64, %61 ]
  %99 = phi ptr [ %48, %47 ], [ %63, %61 ]
  %100 = phi i32 [ %3, %47 ], [ %62, %61 ]
  store ptr null, ptr %6, align 8, !tbaa !507
  %101 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 2
  store i32 1, ptr %101, align 8, !tbaa !508
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
  store i32 %103, ptr %110, align 8, !tbaa !509
  %111 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 1
  store ptr %109, ptr %111, align 8, !tbaa !510
  %112 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 4
  store ptr %1, ptr %112, align 8, !tbaa !511
  %113 = load i32, ptr %18, align 8
  %114 = and i32 %113, 65534
  %115 = add nsw i32 %114, -74
  %116 = icmp ult i32 %115, 4
  %117 = zext i1 %116 to i32
  %118 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 6
  store i32 %117, ptr %118, align 8, !tbaa !512
  %119 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 7
  store i32 0, ptr %119, align 4, !tbaa !513
  %120 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 3
  store i32 0, ptr %120, align 4, !tbaa !514
  %121 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 10
  %122 = icmp eq i32 %103, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %102
  store i64 %2, ptr %106, align 8, !tbaa !504
  %124 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 2
  %125 = load i32, ptr %124, align 8
  br label %126

126:                                              ; preds = %123, %102
  %127 = phi i32 [ %125, %123 ], [ %104, %102 ]
  %128 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 8
  store i64 %2, ptr %128, align 8, !tbaa !515
  %129 = getelementptr inbounds %struct.move_by_pieces_d, ptr %6, i64 0, i32 2
  %130 = icmp ne i32 %127, 0
  %131 = select i1 %116, i1 %130, i1 false
  br i1 %131, label %172, label %132

132:                                              ; preds = %126
  %133 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %2, i32 noundef %107) #18
  %134 = icmp ugt i64 %133, 2
  br i1 %134, label %135, label %172

135:                                              ; preds = %132
  %136 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !405
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %135, %138
  %139 = phi i8 [ %148, %138 ], [ %136, %135 ]
  %140 = phi i32 [ %146, %138 ], [ 0, %135 ]
  %141 = zext i8 %139 to i32
  %142 = zext i8 %139 to i64
  %143 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !405
  %145 = icmp ult i8 %144, 5
  %146 = select i1 %145, i32 %141, i32 %140
  %147 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %142
  %148 = load i8, ptr %147, align 1, !tbaa !405
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %138, !llvm.loop !516

150:                                              ; preds = %138, %135
  %151 = phi i32 [ 0, %135 ], [ %146, %138 ]
  br i1 %116, label %161, label %152

152:                                              ; preds = %150
  %153 = load i32, ptr %18, align 8
  %154 = and i32 %153, 65535
  %155 = zext nneg i32 %154 to i64
  %156 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !438
  %158 = icmp eq i32 %157, 9
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = tail call ptr @copy_to_mode_reg(i32 noundef %17, ptr noundef nonnull %18) #17
  store ptr %160, ptr %105, align 8, !tbaa !506
  br label %161

161:                                              ; preds = %159, %152, %150
  %162 = icmp eq i32 %127, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %161
  %164 = load i32, ptr %109, align 8
  %165 = and i32 %164, 65535
  %166 = zext nneg i32 %165 to i64
  %167 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !438
  %169 = icmp eq i32 %168, 9
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = tail call ptr @copy_to_mode_reg(i32 noundef %108, ptr noundef nonnull %109) #17
  store ptr %171, ptr %111, align 8, !tbaa !510
  br label %172

172:                                              ; preds = %161, %163, %170, %126, %132
  %173 = phi i32 [ 0, %126 ], [ %151, %161 ], [ %151, %170 ], [ %151, %163 ], [ 0, %132 ]
  %174 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 1) #17
  %175 = tail call i32 @get_mode_alignment(i32 noundef %174) #17
  %176 = icmp ult i32 %107, %175
  br i1 %176, label %180, label %177

177:                                              ; preds = %172
  %178 = tail call i32 @get_mode_alignment(i32 noundef %174) #17
  %179 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !405
  br label %207

180:                                              ; preds = %172
  %181 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !405
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %201, label %183

183:                                              ; preds = %180
  %184 = zext i8 %181 to i32
  %185 = zext i8 %181 to i64
  %186 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !405
  %188 = icmp ugt i8 %187, 4
  br i1 %188, label %201, label %195

189:                                              ; preds = %195
  %190 = zext i8 %199 to i32
  %191 = zext i8 %199 to i64
  %192 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !405
  %194 = icmp ugt i8 %193, 4
  br i1 %194, label %201, label %195, !llvm.loop !517

195:                                              ; preds = %183, %189
  %196 = phi i64 [ %191, %189 ], [ %185, %183 ]
  %197 = phi i32 [ %190, %189 ], [ %184, %183 ]
  %198 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %196
  %199 = load i8, ptr %198, align 1, !tbaa !405
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %189, !llvm.loop !517

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
  %220 = load i8, ptr %219, align 1, !tbaa !405
  %221 = zext i8 %220 to i32
  %222 = icmp ugt i32 %213, %221
  %223 = select i1 %222, i32 %217, i32 %216
  %224 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %218
  %225 = load i8, ptr %224, align 1, !tbaa !405
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %214, !llvm.loop !518

227:                                              ; preds = %214, %211
  %228 = phi i32 [ %212, %211 ], [ %223, %214 ]
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %248, label %230

230:                                              ; preds = %227
  %231 = zext nneg i32 %228 to i64
  %232 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !442
  %234 = icmp eq i32 %233, 2956
  br i1 %234, label %242, label %235

235:                                              ; preds = %230
  %236 = tail call i32 @get_mode_alignment(i32 noundef %228) #17
  %237 = icmp ult i32 %209, %236
  br i1 %237, label %242, label %238

238:                                              ; preds = %235
  %239 = zext i32 %233 to i64
  %240 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %239, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !519
  call fastcc void @move_by_pieces_1(ptr noundef %241, i32 noundef %228, ptr noundef nonnull %6) #18
  br label %242

242:                                              ; preds = %238, %235, %230
  %243 = zext nneg i32 %228 to i64
  %244 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !405
  %246 = zext i8 %245 to i32
  %247 = icmp ugt i8 %245, 1
  br i1 %247, label %211, label %248, !llvm.loop !520

248:                                              ; preds = %227, %242
  %249 = load i64, ptr %128, align 8, !tbaa !515
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %248
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1008, ptr noundef nonnull @.str.1) #17
  br label %252

252:                                              ; preds = %248, %251
  %253 = icmp eq i32 %4, 0
  br i1 %253, label %280, label %254

254:                                              ; preds = %252
  %255 = load i32, ptr %121, align 8, !tbaa !509
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %254
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1014, ptr noundef nonnull @.str.1) #17
  br label %258

258:                                              ; preds = %254, %257
  %259 = load i32, ptr %129, align 8, !tbaa !508
  %260 = icmp eq i32 %259, 0
  %261 = icmp eq i32 %4, 2
  br i1 %260, label %272, label %262

262:                                              ; preds = %258
  %263 = load ptr, ptr %111, align 8, !tbaa !510
  br i1 %261, label %264, label %267

264:                                              ; preds = %262
  %265 = tail call ptr @plus_constant(ptr noundef %263, i64 noundef -1) #17
  %266 = tail call ptr @copy_to_mode_reg(i32 noundef %108, ptr noundef %265) #17
  br label %267

267:                                              ; preds = %264, %262
  %268 = phi ptr [ %266, %264 ], [ %263, %262 ]
  %269 = load ptr, ptr %6, align 8, !tbaa !507
  %270 = load i64, ptr %106, align 8, !tbaa !504
  %271 = tail call ptr @adjust_automodify_address_1(ptr noundef %269, i32 noundef 14, ptr noundef %268, i64 noundef %270, i32 noundef 1) #17
  br label %282

272:                                              ; preds = %258
  %273 = load i64, ptr %106, align 8, !tbaa !504
  br i1 %261, label %274, label %276

274:                                              ; preds = %272
  %275 = add nsw i64 %273, -1
  store i64 %275, ptr %106, align 8, !tbaa !504
  br label %276

276:                                              ; preds = %274, %272
  %277 = phi i64 [ %275, %274 ], [ %273, %272 ]
  %278 = load ptr, ptr %6, align 8, !tbaa !507
  %279 = tail call ptr @adjust_address_1(ptr noundef %278, i32 noundef 14, i64 noundef %277, i32 noundef 1, i32 noundef 1) #17
  br label %282

280:                                              ; preds = %252
  %281 = load ptr, ptr %6, align 8, !tbaa !507
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
define internal fastcc void @move_by_pieces_1(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !469 !PGOFuncName !521 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !405
  %7 = getelementptr inbounds %struct.move_by_pieces_d, ptr %2, i64 0, i32 8
  %8 = zext i8 %6 to i64
  %9 = load i64, ptr %7, align 8, !tbaa !515
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
  %19 = load i32, ptr %12, align 8, !tbaa !509
  br label %20

20:                                               ; preds = %11, %66
  %21 = phi i32 [ %19, %11 ], [ %61, %66 ]
  %22 = phi ptr [ null, %11 ], [ %41, %66 ]
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i64, ptr %13, align 8, !tbaa !504
  %26 = sub nsw i64 %25, %8
  store i64 %26, ptr %13, align 8, !tbaa !504
  br label %27

27:                                               ; preds = %24, %20
  %28 = load ptr, ptr %2, align 8, !tbaa !507
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %14, align 8, !tbaa !508
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %15, align 8, !tbaa !510
  %35 = load i64, ptr %13, align 8, !tbaa !504
  %36 = tail call ptr @adjust_automodify_address_1(ptr noundef nonnull %28, i32 noundef %1, ptr noundef %34, i64 noundef %35, i32 noundef 1) #17
  br label %40

37:                                               ; preds = %30
  %38 = load i64, ptr %13, align 8, !tbaa !504
  %39 = tail call ptr @adjust_address_1(ptr noundef nonnull %28, i32 noundef %1, i64 noundef %38, i32 noundef 1, i32 noundef 1) #17
  br label %40

40:                                               ; preds = %33, %37, %27
  %41 = phi ptr [ %36, %33 ], [ %39, %37 ], [ %22, %27 ]
  %42 = load i32, ptr %16, align 8, !tbaa !512
  %43 = icmp eq i32 %42, 0
  %44 = load ptr, ptr %17, align 8, !tbaa !511
  br i1 %43, label %49, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %18, align 8, !tbaa !506
  %47 = load i64, ptr %13, align 8, !tbaa !504
  %48 = tail call ptr @adjust_automodify_address_1(ptr noundef %44, i32 noundef %1, ptr noundef %46, i64 noundef %47, i32 noundef 1) #17
  br label %52

49:                                               ; preds = %40
  %50 = load i64, ptr %13, align 8, !tbaa !504
  %51 = tail call ptr @adjust_address_1(ptr noundef %44, i32 noundef %1, i64 noundef %50, i32 noundef 1, i32 noundef 1) #17
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi ptr [ %48, %45 ], [ %51, %49 ]
  %54 = load ptr, ptr %2, align 8, !tbaa !507
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
  %61 = load i32, ptr %12, align 8, !tbaa !509
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i64, ptr %13, align 8, !tbaa !504
  %65 = add nsw i64 %64, %8
  store i64 %65, ptr %13, align 8, !tbaa !504
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i64, ptr %7, align 8, !tbaa !515
  %68 = sub i64 %67, %8
  store i64 %68, ptr %7, align 8, !tbaa !515
  %69 = icmp ult i64 %68, %8
  br i1 %69, label %70, label %20, !llvm.loop !522

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
define dso_local ptr @emit_block_move_hints(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 !prof !469 {
  switch i32 %3, label %12 [
    i32 0, label %13
    i32 3, label %13
    i32 2, label %7
    i32 1, label %11
  ]

7:                                                ; preds = %6
  %8 = tail call fastcc zeroext i8 @block_move_libcall_safe_for_call_parm() #18
  %9 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !523
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !523
  br label %13

11:                                               ; preds = %6
  br label %13

12:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1193, ptr noundef nonnull @.str.1) #17
  br label %13

13:                                               ; preds = %6, %6, %12, %11, %7
  %14 = phi i8 [ undef, %12 ], [ 0, %11 ], [ %8, %7 ], [ 1, %6 ], [ 1, %6 ]
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !405
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.mem_attrs, ptr %16, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !503
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !405
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.mem_attrs, ptr %22, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !503
  %27 = icmp uge i32 %20, %26
  br label %39

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !405
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %34

32:                                               ; preds = %18
  %33 = icmp ugt i32 %20, 7
  br i1 %33, label %48, label %46

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.mem_attrs, ptr %30, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !503
  %37 = icmp ult i32 %36, 9
  %38 = or i1 %17, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %34, %24
  %40 = phi i1 [ %27, %24 ], [ %37, %34 ]
  %41 = phi ptr [ %22, %24 ], [ %30, %34 ]
  %42 = select i1 %40, ptr %41, ptr %16
  %43 = getelementptr inbounds %struct.mem_attrs, ptr %42, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !503
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
  %70 = load i64, ptr %69, align 8, !tbaa !405
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
  %84 = load i64, ptr %83, align 8, !tbaa !405
  %85 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %84, i32 noundef %49) #18
  %86 = tail call zeroext i8 @optimize_insn_for_speed_p() #17
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = load ptr, ptr @ix86_cost, align 8, !tbaa !401
  %90 = getelementptr inbounds %struct.processor_costs, ptr %89, i64 0, i32 10
  %91 = load i32, ptr %90, align 4, !tbaa !485
  %92 = zext i32 %91 to i64
  br label %93

93:                                               ; preds = %82, %88
  %94 = phi i64 [ %92, %88 ], [ 3, %82 ]
  %95 = icmp ult i64 %85, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i64, ptr %83, align 8, !tbaa !405
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
  %106 = load ptr, ptr %105, align 8, !tbaa !405
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.mem_attrs, ptr %106, i64 0, i32 5
  %110 = load i8, ptr %109, align 8, !tbaa !457
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %104, %108
  %113 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !405
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.mem_attrs, ptr %114, i64 0, i32 5
  %118 = load i8, ptr %117, align 8, !tbaa !457
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
  %129 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !523
  %130 = add nsw i32 %129, -1
  store i32 %130, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !523
  br label %131

131:                                              ; preds = %125, %128, %68
  %132 = phi ptr [ null, %68 ], [ %126, %128 ], [ %126, %125 ]
  ret ptr %132
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @block_move_libcall_safe_for_call_parm() unnamed_addr #0 !prof !469 !PGOFuncName !532 {
  %1 = alloca %struct.ix86_args, align 4
  %2 = load i32, ptr @target_flags, align 4, !tbaa !438
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
  %13 = load ptr, ptr %12, align 8, !tbaa !405
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
  %24 = load ptr, ptr %23, align 8, !tbaa !405
  call void @init_cumulative_args(ptr noundef nonnull %1, ptr noundef %24, ptr noundef null, ptr noundef null) #17
  %25 = load ptr, ptr %23, align 8, !tbaa !405
  %26 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !405
  %28 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !401
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %61, label %30

30:                                               ; preds = %21, %56
  %31 = phi ptr [ %58, %56 ], [ %27, %21 ]
  %32 = getelementptr inbounds %struct.tree_list, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !405
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
  %53 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !533
  %54 = call i32 %53(ptr noundef nonnull %1, i32 noundef %45, ptr noundef null, i8 noundef zeroext 1) #17
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  call void @function_arg_advance(ptr noundef nonnull %1, i32 noundef %45, ptr noundef null, i32 noundef 1) #17
  %57 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !405
  %59 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !401
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %61, label %30, !llvm.loop !534

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
define internal fastcc noundef zeroext i8 @emit_block_move_via_movmem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #0 !prof !469 !PGOFuncName !535 {
  %7 = lshr i32 %3, 3
  %8 = zext nneg i32 %7 to i64
  %9 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %8) #17
  %10 = load i32, ptr @volatile_ok, align 4, !tbaa !438
  store i32 1, ptr @volatile_ok, align 4, !tbaa !438
  %11 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !405
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
  %23 = load i32, ptr %22, align 4, !tbaa !438
  %24 = icmp eq i32 %23, 2956
  br i1 %24, label %92, label %25

25:                                               ; preds = %18
  %26 = load i32, ptr %2, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 30
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i64, ptr %15, align 8, !tbaa !405
  %31 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %21
  %32 = load i64, ptr %31, align 8, !tbaa !536
  %33 = lshr i64 %32, 1
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29, %25
  %36 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %21
  %37 = load i8, ptr %36, align 1, !tbaa !405
  %38 = icmp ugt i8 %37, 3
  br i1 %38, label %39, label %92

39:                                               ; preds = %35, %29
  %40 = sext i32 %23 to i64
  %41 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %40, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !419
  %43 = load ptr, ptr %42, align 8, !tbaa !421
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = tail call i32 %43(ptr noundef %0, i32 noundef 1) #17
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %92, label %48

48:                                               ; preds = %45, %39
  %49 = getelementptr inbounds %struct.insn_operand_data, ptr %42, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !421
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = tail call i32 %50(ptr noundef %1, i32 noundef 1) #17
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %92, label %55

55:                                               ; preds = %52, %48
  %56 = getelementptr inbounds %struct.insn_operand_data, ptr %42, i64 3
  %57 = load ptr, ptr %56, align 8, !tbaa !421
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
  %66 = load ptr, ptr %65, align 8, !tbaa !421
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
  %76 = load i8, ptr %75, align 8, !tbaa !537
  %77 = icmp eq i8 %76, 4
  %78 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %40, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !519
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
  %94 = load i8, ptr %93, align 1, !tbaa !405
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %18, !llvm.loop !538

96:                                               ; preds = %92, %6, %90
  %97 = phi i8 [ 1, %90 ], [ 0, %6 ], [ 0, %92 ]
  store i32 %10, ptr @volatile_ok, align 4, !tbaa !438
  ret i8 %97
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_block_move_via_libcall(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !469 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !405
  %7 = tail call ptr @copy_to_mode_reg(i32 noundef 16, ptr noundef %6) #17
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !405
  %10 = tail call ptr @copy_to_mode_reg(i32 noundef 16, ptr noundef %9) #17
  %11 = load i32, ptr @ptr_mode, align 4, !tbaa !438
  %12 = tail call ptr @convert_memory_address_addr_space(i32 noundef %11, ptr noundef %7, i8 noundef zeroext 0) #17
  %13 = load i32, ptr @ptr_mode, align 4, !tbaa !438
  %14 = tail call ptr @convert_memory_address_addr_space(i32 noundef %13, ptr noundef %10, i8 noundef zeroext 0) #17
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !401
  %16 = tail call ptr @make_tree(ptr noundef %15, ptr noundef %12) #17
  %17 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !401
  %18 = tail call ptr @make_tree(ptr noundef %17, ptr noundef %14) #17
  %19 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
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
  %34 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
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
define internal fastcc void @emit_block_move_via_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !469 !PGOFuncName !539 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !490
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !405
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mem_attrs, ptr %7, i64 0, i32 5
  %11 = load i8, ptr %10, align 8, !tbaa !457
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi i8 [ %11, %9 ], [ 0, %3 ]
  %14 = tail call i32 %4(i8 noundef zeroext %13) #17
  %15 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !490
  %16 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %17 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !405
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.mem_attrs, ptr %18, i64 0, i32 5
  %22 = load i8, ptr %21, align 8, !tbaa !457
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
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %36 = tail call ptr @emit_move_insn(ptr noundef %34, ptr noundef %35) #18
  %37 = load ptr, ptr %5, align 8, !tbaa !405
  %38 = tail call ptr @force_operand(ptr noundef %37, ptr noundef null) #18
  %39 = load ptr, ptr %16, align 8, !tbaa !405
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
  %53 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !401
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
define dso_local ptr @emit_block_move(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !469 {
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
define internal fastcc ptr @emit_block_move_libcall_fn(i32 noundef %0) unnamed_addr #0 !prof !469 !PGOFuncName !540 {
  %2 = load ptr, ptr @block_move_fn, align 8, !tbaa !401
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  tail call void @init_block_move_fn(ptr noundef null) #18
  %5 = load ptr, ptr @block_move_fn, align 8, !tbaa !401
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
  %12 = load ptr, ptr @block_move_fn, align 8, !tbaa !401
  tail call void @assemble_external(ptr noundef %12) #17
  %13 = load ptr, ptr @block_move_fn, align 8, !tbaa !401
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi ptr [ %13, %11 ], [ %7, %6 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_normal(ptr noundef %0) unnamed_addr #0 !prof !541 !PGOFuncName !542 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_block_move_fn(ptr noundef %0) local_unnamed_addr #0 !prof !469 {
  %2 = load ptr, ptr @block_move_fn, align 8, !tbaa !401
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = tail call ptr @get_identifier(ptr noundef nonnull @.str.2) #17
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !401
  %7 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 40), align 16, !tbaa !401
  %8 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
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
  store ptr %10, ptr @block_move_fn, align 8, !tbaa !401
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
define dso_local void @move_block_to_reg(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !469 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !438
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
  %24 = load i32, ptr @word_mode, align 4, !tbaa !438
  %25 = add nsw i32 %23, %0
  %26 = tail call ptr @gen_rtx_REG(i32 noundef %24, i32 noundef %25) #17
  %27 = tail call ptr @operand_subword_force(ptr noundef %20, i32 noundef %23, i32 noundef %3) #17
  %28 = tail call ptr @emit_move_insn(ptr noundef %26, ptr noundef %27) #18
  %29 = add nuw nsw i32 %23, 1
  %30 = icmp eq i32 %29, %2
  br i1 %30, label %31, label %22, !llvm.loop !543

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
define dso_local void @move_block_from_reg(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !469 {
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
  %11 = load i32, ptr @word_mode, align 4, !tbaa !438
  %12 = add nsw i32 %6, %0
  %13 = tail call ptr @gen_rtx_REG(i32 noundef %11, i32 noundef %12) #17
  %14 = tail call ptr @emit_move_insn(ptr noundef %7, ptr noundef %13) #18
  %15 = add nuw nsw i32 %6, 1
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %5, !llvm.loop !544

17:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gen_group_rtx(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !469 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 15
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1615, ptr noundef nonnull @.str.1) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !405
  %9 = load i32, ptr %8, align 8, !tbaa !545
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = alloca i8, i64 %11, align 16
  %13 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !401
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !405
  %17 = icmp eq ptr %16, null
  %18 = zext i1 %17 to i32
  br i1 %17, label %19, label %20

19:                                               ; preds = %6
  store ptr null, ptr %12, align 16, !tbaa !401
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
  %27 = load ptr, ptr %7, align 8, !tbaa !405
  %28 = getelementptr inbounds %struct.rtvec_def, ptr %27, i64 0, i32 1, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !401
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !405
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !405
  %37 = tail call ptr @gen_reg_rtx(i32 noundef %34) #17
  %38 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %37, ptr noundef %36) #17
  %39 = getelementptr inbounds ptr, ptr %12, i64 %26
  store ptr %38, ptr %39, align 8, !tbaa !401
  %40 = add nuw nsw i64 %26, 1
  %41 = icmp eq i64 %40, %24
  br i1 %41, label %42, label %25, !llvm.loop !547

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
define dso_local void @emit_group_load(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, i32 noundef %3) local_unnamed_addr #0 !prof !469 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !405
  %7 = load i32, ptr %6, align 8, !tbaa !545
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = alloca i8, i64 %9, align 16
  call fastcc void @emit_group_load_1(ptr noundef nonnull %10, ptr noundef %0, ptr noundef %1, i32 noundef %3) #18
  %11 = load ptr, ptr %5, align 8, !tbaa !405
  %12 = load i32, ptr %11, align 8, !tbaa !545
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %4, %29
  %15 = phi i32 [ %30, %29 ], [ %12, %4 ]
  %16 = phi ptr [ %31, %29 ], [ %11, %4 ]
  %17 = phi i64 [ %32, %29 ], [ 0, %4 ]
  %18 = getelementptr inbounds %struct.rtvec_def, ptr %16, i64 0, i32 1, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !401
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !405
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds ptr, ptr %10, i64 %17
  %25 = load ptr, ptr %24, align 8, !tbaa !401
  %26 = tail call ptr @emit_move_insn(ptr noundef nonnull %21, ptr noundef %25) #18
  %27 = load ptr, ptr %5, align 8, !tbaa !405
  %28 = load i32, ptr %27, align 8, !tbaa !545
  br label %29

29:                                               ; preds = %14, %23
  %30 = phi i32 [ %15, %14 ], [ %28, %23 ]
  %31 = phi ptr [ %16, %14 ], [ %27, %23 ]
  %32 = add nuw nsw i64 %17, 1
  %33 = sext i32 %30 to i64
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %14, label %35, !llvm.loop !548

35:                                               ; preds = %29, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_group_load_1(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !469 !PGOFuncName !549 {
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
  %22 = load i8, ptr %21, align 1, !tbaa !405
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
  %43 = load ptr, ptr @rtl_hooks, align 8, !tbaa !434
  %44 = load i32, ptr %9, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = tail call ptr %43(i32 noundef %46, ptr noundef %42) #17
  %48 = tail call ptr @emit_move_insn(ptr noundef %47, ptr noundef nonnull %9) #18
  %49 = load ptr, ptr @rtl_hooks, align 8, !tbaa !434
  %50 = tail call ptr %49(i32 noundef %31, ptr noundef %47) #17
  br label %39

51:                                               ; preds = %19, %25, %25, %17
  %52 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !405
  %54 = getelementptr inbounds %struct.rtvec_def, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !401
  %56 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !405
  %58 = icmp eq ptr %57, null
  %59 = zext i1 %58 to i32
  %60 = load i32, ptr %53, align 8, !tbaa !545
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
  %70 = load ptr, ptr %69, align 8, !tbaa !401
  %71 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !405
  %73 = load i32, ptr %72, align 8
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 255
  %76 = getelementptr inbounds %struct.rtx_def, ptr %70, i64 0, i32 1, i32 0, i32 0, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !405
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !405
  %80 = zext nneg i32 %75 to i64
  %81 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !405
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
  %101 = load i32, ptr %100, align 4, !tbaa !438
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
  %129 = load i8, ptr %81, align 1, !tbaa !405
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %94, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = call ptr @gen_reg_rtx(i32 noundef %75) #17
  %134 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %133, ptr %134, align 8, !tbaa !401
  %135 = call ptr @adjust_address_1(ptr noundef nonnull %119, i32 noundef %75, i64 noundef %79, i32 noundef 1, i32 noundef 1) #17
  %136 = call ptr @emit_move_insn(ptr noundef %133, ptr noundef %135) #18
  br label %284

137:                                              ; preds = %128, %122, %117
  %138 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %80
  %139 = load i8, ptr %138, align 1, !tbaa !405
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
  %148 = load i8, ptr %81, align 1, !tbaa !405
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %94, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %119, ptr %152, align 8, !tbaa !401
  br label %284

153:                                              ; preds = %137, %147, %143
  %154 = and i32 %142, 65535
  %155 = icmp eq i32 %154, 41
  br i1 %155, label %156, label %217

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !405
  %159 = load i32, ptr %158, align 8
  %160 = lshr i32 %159, 16
  %161 = and i32 %160, 255
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !405
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
  %174 = load i8, ptr %173, align 1, !tbaa !405
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
  %185 = load ptr, ptr %184, align 8, !tbaa !405
  %186 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %185, ptr %186, align 8, !tbaa !401
  %187 = load i32, ptr %185, align 8
  %188 = and i32 %187, 65535
  %189 = zext nneg i32 %188 to i64
  %190 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !438
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
  store ptr %203, ptr %186, align 8, !tbaa !401
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
  store ptr %215, ptr %216, align 8, !tbaa !401
  br label %284

217:                                              ; preds = %153
  %218 = load i32, ptr %1, align 8
  %219 = lshr i32 %218, 16
  %220 = and i32 %219, 255
  %221 = zext nneg i32 %220 to i64
  %222 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !405
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
  %233 = load i8, ptr %232, align 1, !tbaa !405
  %234 = zext i8 %233 to i64
  %235 = call ptr @assign_stack_temp(i32 noundef %230, i64 noundef %234, i32 noundef 0) #17
  %236 = call ptr @emit_move_insn(ptr noundef %235, ptr noundef nonnull %119) #18
  %237 = shl i64 %79, 32
  %238 = ashr exact i64 %237, 32
  %239 = call ptr @adjust_address_1(ptr noundef %235, i32 noundef %75, i64 noundef %238, i32 noundef 1, i32 noundef 1) #17
  %240 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %239, ptr %240, align 8, !tbaa !401
  br label %284

241:                                              ; preds = %217
  %242 = zext nneg i32 %154 to i64
  %243 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !438
  %245 = icmp eq i32 %244, 9
  br i1 %245, label %246, label %271

246:                                              ; preds = %241
  %247 = icmp eq i32 %220, 1
  br i1 %247, label %256, label %248

248:                                              ; preds = %246
  %249 = load ptr, ptr %52, align 8, !tbaa !405
  %250 = load i32, ptr %249, align 8, !tbaa !545
  %251 = icmp sgt i32 %250, 1
  br i1 %251, label %252, label %256

252:                                              ; preds = %248
  %253 = trunc i64 %79 to i32
  %254 = call ptr @simplify_gen_subreg(i32 noundef %75, ptr noundef nonnull %119, i32 noundef %220, i32 noundef %253) #17
  %255 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %254, ptr %255, align 8, !tbaa !401
  br label %284

256:                                              ; preds = %248, %246
  %257 = zext i32 %94 to i64
  %258 = icmp eq i64 %257, %7
  br i1 %258, label %259, label %261

259:                                              ; preds = %256
  %260 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %119, ptr %260, align 8, !tbaa !401
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
  store ptr %119, ptr %277, align 8, !tbaa !401
  br label %284

278:                                              ; preds = %272, %271
  %279 = shl i32 %94, 3
  %280 = zext i32 %279 to i64
  %281 = shl nsw i64 %79, 3
  %282 = call ptr @extract_bit_field(ptr noundef nonnull %119, i64 noundef %280, i64 noundef %281, i32 noundef 1, ptr noundef null, i32 noundef %75, i32 noundef %75) #17
  %283 = getelementptr inbounds ptr, ptr %0, i64 %67
  store ptr %282, ptr %283, align 8, !tbaa !401
  br label %284

284:                                              ; preds = %132, %252, %276, %278, %228, %151, %180, %195, %199, %209, %265, %259
  %285 = add nuw nsw i64 %67, 1
  %286 = load ptr, ptr %52, align 8, !tbaa !405
  %287 = load i32, ptr %286, align 8, !tbaa !545
  %288 = trunc i64 %285 to i32
  %289 = icmp sgt i32 %287, %288
  br i1 %289, label %66, label %290, !llvm.loop !550

290:                                              ; preds = %284, %51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_group_load_into_temps(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) local_unnamed_addr #0 !prof !469 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !405
  %7 = load i32, ptr %6, align 8, !tbaa !545
  %8 = tail call ptr @rtvec_alloc(i32 noundef %7) #17
  %9 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1
  tail call fastcc void @emit_group_load_1(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %1, i32 noundef %3) #18
  %10 = load ptr, ptr %5, align 8, !tbaa !405
  %11 = load i32, ptr %10, align 8, !tbaa !545
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %4, %34
  %14 = phi i64 [ %37, %34 ], [ 0, %4 ]
  %15 = phi ptr [ %38, %34 ], [ %10, %4 ]
  %16 = getelementptr inbounds %struct.rtvec_def, ptr %15, i64 0, i32 1, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !401
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !405
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %13
  %22 = load i32, ptr %19, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1, i64 %14
  %26 = load ptr, ptr %25, align 8, !tbaa !401
  %27 = tail call ptr @force_reg(i32 noundef %24, ptr noundef %26) #17
  %28 = load i32, ptr %17, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !405
  %33 = tail call ptr @alloc_EXPR_LIST(i32 noundef %30, ptr noundef %27, ptr noundef %32) #17
  br label %34

34:                                               ; preds = %21, %13
  %35 = phi ptr [ %33, %21 ], [ %17, %13 ]
  %36 = getelementptr inbounds %struct.rtvec_def, ptr %8, i64 0, i32 1, i64 %14
  store ptr %35, ptr %36, align 8, !tbaa !401
  %37 = add nuw nsw i64 %14, 1
  %38 = load ptr, ptr %5, align 8, !tbaa !405
  %39 = load i32, ptr %38, align 8, !tbaa !545
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %13, label %42, !llvm.loop !551

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
define dso_local void @emit_group_move(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !469 {
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
  %12 = load ptr, ptr %11, align 8, !tbaa !405
  %13 = load i32, ptr %12, align 8, !tbaa !545
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !405
  %16 = load i32, ptr %15, align 8, !tbaa !545
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %10, %6, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1877, ptr noundef nonnull @.str.1) #17
  %19 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !405
  %21 = load i32, ptr %20, align 8, !tbaa !545
  br label %22

22:                                               ; preds = %10, %18
  %23 = phi i32 [ %13, %10 ], [ %21, %18 ]
  %24 = phi ptr [ %12, %10 ], [ %20, %18 ]
  %25 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %26 = getelementptr inbounds %struct.rtvec_def, ptr %24, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !401
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !405
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
  %39 = load ptr, ptr %34, align 8, !tbaa !405
  %40 = getelementptr inbounds %struct.rtvec_def, ptr %39, i64 0, i32 1, i64 %37
  %41 = load ptr, ptr %40, align 8, !tbaa !401
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !405
  %44 = getelementptr inbounds %struct.rtvec_def, ptr %38, i64 0, i32 1, i64 %37
  %45 = load ptr, ptr %44, align 8, !tbaa !401
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !405
  %48 = tail call ptr @emit_move_insn(ptr noundef %43, ptr noundef %47) #18
  %49 = add nuw nsw i64 %37, 1
  %50 = load ptr, ptr %25, align 8, !tbaa !405
  %51 = load i32, ptr %50, align 8, !tbaa !545
  %52 = trunc i64 %49 to i32
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %36, label %54, !llvm.loop !552

54:                                               ; preds = %36, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_group_move_into_temps(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !469 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !405
  %4 = load i32, ptr %3, align 8, !tbaa !545
  %5 = tail call ptr @rtvec_alloc(i32 noundef %4) #17
  %6 = load ptr, ptr %2, align 8, !tbaa !405
  %7 = load i32, ptr %6, align 8, !tbaa !545
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %1, %25
  %10 = phi i64 [ %28, %25 ], [ 0, %1 ]
  %11 = phi ptr [ %29, %25 ], [ %6, %1 ]
  %12 = getelementptr inbounds %struct.rtvec_def, ptr %11, i64 0, i32 1, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !401
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !405
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %9
  %18 = load i32, ptr %13, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = tail call ptr @copy_to_reg(ptr noundef nonnull %15) #17
  %22 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !405
  %24 = tail call ptr @alloc_EXPR_LIST(i32 noundef %20, ptr noundef %21, ptr noundef %23) #17
  br label %25

25:                                               ; preds = %17, %9
  %26 = phi ptr [ %24, %17 ], [ %13, %9 ]
  %27 = getelementptr inbounds %struct.rtvec_def, ptr %5, i64 0, i32 1, i64 %10
  store ptr %26, ptr %27, align 8, !tbaa !401
  %28 = add nuw nsw i64 %10, 1
  %29 = load ptr, ptr %2, align 8, !tbaa !405
  %30 = load i32, ptr %29, align 8, !tbaa !545
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %9, label %33, !llvm.loop !553

33:                                               ; preds = %25, %1
  %34 = load i32, ptr %0, align 8
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef %36, ptr noundef %5) #17
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_group_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !469 {
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
  %15 = load i8, ptr %14, align 1, !tbaa !405
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
  %34 = load ptr, ptr @rtl_hooks, align 8, !tbaa !434
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
  %44 = load ptr, ptr %43, align 8, !tbaa !405
  %45 = getelementptr inbounds %struct.rtvec_def, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !401
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !405
  %49 = icmp eq ptr %48, null
  %50 = zext i1 %49 to i32
  %51 = load i32, ptr %44, align 8, !tbaa !545
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
  %61 = load ptr, ptr %43, align 8, !tbaa !405
  %62 = getelementptr inbounds %struct.rtvec_def, ptr %61, i64 0, i32 1, i64 %60
  %63 = load ptr, ptr %62, align 8, !tbaa !401
  %64 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !405
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
  store ptr %75, ptr %76, align 8, !tbaa !401
  %77 = tail call ptr @emit_move_insn(ptr noundef %75, ptr noundef nonnull %65) #18
  br label %80

78:                                               ; preds = %69
  %79 = getelementptr inbounds ptr, ptr %54, i64 %60
  store ptr %65, ptr %79, align 8, !tbaa !401
  br label %80

80:                                               ; preds = %78, %72
  %81 = add nuw nsw i64 %60, 1
  %82 = icmp eq i64 %81, %58
  br i1 %82, label %83, label %59, !llvm.loop !554

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
  %110 = load ptr, ptr %109, align 8, !tbaa !401
  %111 = load i32, ptr %110, align 8
  %112 = lshr i32 %111, 16
  %113 = and i32 %112, 255
  %114 = tail call i32 @subreg_lowpart_offset(i32 noundef %113, i32 noundef %98) #17
  %115 = zext i32 %114 to i64
  %116 = load ptr, ptr %43, align 8, !tbaa !405
  %117 = getelementptr inbounds %struct.rtvec_def, ptr %116, i64 0, i32 1, i64 %108
  %118 = load ptr, ptr %117, align 8, !tbaa !401
  %119 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1, i32 0, i32 0, i64 1
  %120 = load ptr, ptr %119, align 8, !tbaa !405
  %121 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %122 = load i64, ptr %121, align 8, !tbaa !405
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
  %136 = load ptr, ptr %135, align 8, !tbaa !401
  %137 = load i32, ptr %136, align 8
  %138 = lshr i32 %137, 16
  %139 = and i32 %138, 255
  %140 = tail call i32 @subreg_lowpart_offset(i32 noundef %139, i32 noundef %98) #17
  %141 = zext i32 %140 to i64
  %142 = load ptr, ptr %43, align 8, !tbaa !405
  %143 = getelementptr inbounds %struct.rtvec_def, ptr %142, i64 0, i32 1, i64 %134
  %144 = load ptr, ptr %143, align 8, !tbaa !401
  %145 = getelementptr inbounds %struct.rtx_def, ptr %144, i64 0, i32 1, i32 0, i32 0, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !405
  %147 = getelementptr inbounds %struct.rtx_def, ptr %146, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !405
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
  %158 = load ptr, ptr %157, align 8, !tbaa !401
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
  %174 = load ptr, ptr %43, align 8, !tbaa !405
  %175 = getelementptr inbounds %struct.rtvec_def, ptr %174, i64 0, i32 1, i64 %173
  %176 = load ptr, ptr %175, align 8, !tbaa !401
  %177 = getelementptr inbounds %struct.rtx_def, ptr %176, i64 0, i32 1, i32 0, i32 0, i64 1
  %178 = load ptr, ptr %177, align 8, !tbaa !405
  %179 = getelementptr inbounds %struct.rtx_def, ptr %178, i64 0, i32 1
  %180 = load i64, ptr %179, align 8, !tbaa !405
  %181 = getelementptr inbounds ptr, ptr %54, i64 %173
  %182 = load ptr, ptr %181, align 8, !tbaa !401
  %183 = load i32, ptr %182, align 8
  %184 = lshr i32 %183, 16
  %185 = and i32 %184, 255
  %186 = zext nneg i32 %185 to i64
  %187 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !405
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
  %203 = load ptr, ptr %168, align 8, !tbaa !405
  %204 = load i32, ptr %203, align 8
  %205 = lshr i32 %204, 16
  %206 = and i32 %205, 255
  %207 = zext nneg i32 %206 to i64
  %208 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !405
  %210 = zext i8 %209 to i64
  %211 = icmp sgt i64 %202, %210
  br i1 %211, label %212, label %245

212:                                              ; preds = %200
  %213 = icmp slt i64 %180, %210
  br i1 %213, label %219, label %214

214:                                              ; preds = %212
  %215 = sub nsw i64 %180, %210
  %216 = load ptr, ptr %169, align 8, !tbaa !405
  %217 = load i32, ptr %216, align 8
  %218 = add nsw i64 %215, %190
  br label %245

219:                                              ; preds = %212
  %220 = lshr i32 %197, 16
  %221 = and i32 %220, 255
  %222 = icmp eq i64 %180, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i32, ptr %174, align 8, !tbaa !545
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
  %234 = load i8, ptr %233, align 1, !tbaa !405
  %235 = zext i8 %234 to i64
  %236 = tail call ptr @assign_stack_temp(i32 noundef %221, i64 noundef %235, i32 noundef 0) #17
  %237 = tail call ptr @adjust_address_1(ptr noundef %236, i32 noundef %185, i64 noundef %180, i32 noundef 1, i32 noundef 1) #17
  %238 = tail call ptr @emit_move_insn(ptr noundef %237, ptr noundef nonnull %182) #18
  br label %274

239:                                              ; preds = %227
  %240 = load i8, ptr %187, align 1, !tbaa !405
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
  %262 = load i8, ptr %187, align 1, !tbaa !405
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
  br i1 %273, label %274, label %172, !llvm.loop !555

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
define dso_local noundef ptr @copy_blkmode_from_reg(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !469 {
  %4 = tail call i64 @int_size_in_bytes(ptr noundef %2) #17
  %5 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !405
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
  %36 = load i8, ptr %35, align 1, !tbaa !405
  %37 = icmp ult i8 %36, 4
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, ptr @word_mode, align 4, !tbaa !438
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
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 4), align 8, !tbaa !556
  %51 = tail call zeroext i8 %50(ptr noundef nonnull %2) #17
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = shl nuw nsw i64 %47, 3
  %55 = sub nuw nsw i64 32, %54
  br label %56

56:                                               ; preds = %49, %53, %45
  %57 = phi i64 [ %55, %53 ], [ 0, %49 ], [ 0, %45 ]
  %58 = load i32, ptr @word_mode, align 4, !tbaa !438
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
  br i1 %99, label %70, label %100, !llvm.loop !557

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
define dso_local void @use_reg(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !469 {
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
  %12 = load ptr, ptr %0, align 8, !tbaa !401
  %13 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %11, ptr noundef %12) #17
  store ptr %13, ptr %0, align 8, !tbaa !401
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @use_regs(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !469 {
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
  %14 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !401
  %15 = getelementptr ptr, ptr %14, i64 %13
  %16 = getelementptr ptr, ptr %15, i64 %10
  %17 = load ptr, ptr %16, align 8, !tbaa !401
  tail call void @use_reg(ptr noundef %0, ptr noundef %17) #18
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp eq i64 %18, %11
  br i1 %19, label %20, label %12, !llvm.loop !558

20:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @use_group_regs(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !469 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !405
  %5 = load i32, ptr %4, align 8, !tbaa !545
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %2, %23
  %8 = phi i32 [ %24, %23 ], [ %5, %2 ]
  %9 = phi ptr [ %25, %23 ], [ %4, %2 ]
  %10 = phi i64 [ %26, %23 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.rtvec_def, ptr %9, i64 0, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !401
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !405
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %7
  %17 = load i32, ptr %14, align 8
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 37
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  tail call void @use_reg(ptr noundef %0, ptr noundef nonnull %14) #18
  %21 = load ptr, ptr %3, align 8, !tbaa !405
  %22 = load i32, ptr %21, align 8, !tbaa !545
  br label %23

23:                                               ; preds = %20, %16, %7
  %24 = phi i32 [ %22, %20 ], [ %8, %16 ], [ %8, %7 ]
  %25 = phi ptr [ %21, %20 ], [ %9, %16 ], [ %9, %7 ]
  %26 = add nuw nsw i64 %10, 1
  %27 = sext i32 %24 to i64
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %7, label %29, !llvm.loop !559

29:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @can_store_by_pieces(i64 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 !prof !469 {
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
  %14 = load ptr, ptr @ix86_cost, align 8, !tbaa !401
  %15 = getelementptr inbounds %struct.processor_costs, ptr %14, i64 0, i32 10
  %16 = load i32, ptr %15, align 4, !tbaa !485
  %17 = zext i32 %16 to i64
  br label %18

18:                                               ; preds = %12, %13
  %19 = phi i64 [ %17, %13 ], [ 3, %12 ]
  %20 = icmp ult i64 %9, %19
  br i1 %20, label %30, label %123

21:                                               ; preds = %7
  br i1 %11, label %27, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr @ix86_cost, align 8, !tbaa !401
  %24 = getelementptr inbounds %struct.processor_costs, ptr %23, i64 0, i32 10
  %25 = load i32, ptr %24, align 4, !tbaa !485
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
  %36 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !405
  br label %64

37:                                               ; preds = %30
  %38 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !405
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %37
  %41 = zext i8 %38 to i32
  %42 = zext i8 %38 to i64
  %43 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !405
  %45 = icmp ugt i8 %44, 4
  br i1 %45, label %58, label %52

46:                                               ; preds = %52
  %47 = zext i8 %56 to i32
  %48 = zext i8 %56 to i64
  %49 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !405
  %51 = icmp ugt i8 %50, 4
  br i1 %51, label %58, label %52, !llvm.loop !560

52:                                               ; preds = %40, %46
  %53 = phi i64 [ %48, %46 ], [ %42, %40 ]
  %54 = phi i32 [ %47, %46 ], [ %41, %40 ]
  %55 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %53
  %56 = load i8, ptr %55, align 1, !tbaa !405
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %46, !llvm.loop !560

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
  %79 = load i8, ptr %78, align 1, !tbaa !405
  %80 = zext i8 %79 to i32
  %81 = icmp ugt i32 %72, %80
  %82 = select i1 %81, i32 %76, i32 %75
  %83 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %77
  %84 = load i8, ptr %83, align 1, !tbaa !405
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %73, !llvm.loop !561

86:                                               ; preds = %73, %68
  %87 = phi i32 [ %70, %68 ], [ %82, %73 ]
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %119, label %89

89:                                               ; preds = %86
  %90 = zext nneg i32 %87 to i64
  %91 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !442
  %93 = icmp eq i32 %92, 2956
  br i1 %93, label %112, label %94

94:                                               ; preds = %89
  %95 = tail call i32 @get_mode_alignment(i32 noundef %87) #17
  %96 = icmp ult i32 %66, %95
  br i1 %96, label %112, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %90
  %99 = load i8, ptr %98, align 1, !tbaa !405
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
  br i1 %111, label %112, label %102, !llvm.loop !562

112:                                              ; preds = %108, %97, %94, %89
  %113 = phi i64 [ %71, %94 ], [ %71, %89 ], [ %71, %97 ], [ %109, %108 ]
  %114 = phi i64 [ %69, %94 ], [ %69, %89 ], [ %69, %97 ], [ %110, %108 ]
  %115 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %90
  %116 = load i8, ptr %115, align 1, !tbaa !405
  %117 = zext i8 %116 to i32
  %118 = icmp ugt i8 %116, 1
  br i1 %118, label %68, label %119, !llvm.loop !563

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
define dso_local ptr @store_by_pieces(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #0 !prof !469 {
  %8 = alloca %struct.store_by_pieces_d, align 8
  %9 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !490
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !405
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %11, i64 0, i32 5
  %15 = load i8, ptr %14, align 8, !tbaa !457
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
  %30 = load ptr, ptr @ix86_cost, align 8, !tbaa !401
  %31 = getelementptr inbounds %struct.processor_costs, ptr %30, i64 0, i32 10
  %32 = load i32, ptr %31, align 4, !tbaa !485
  %33 = zext i32 %32 to i64
  br label %34

34:                                               ; preds = %28, %29
  %35 = phi i64 [ %33, %29 ], [ 3, %28 ]
  %36 = icmp ult i64 %25, %35
  br i1 %36, label %47, label %46

37:                                               ; preds = %23
  br i1 %27, label %43, label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr @ix86_cost, align 8, !tbaa !401
  %40 = getelementptr inbounds %struct.processor_costs, ptr %39, i64 0, i32 10
  %41 = load i32, ptr %40, align 4, !tbaa !485
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
  store ptr %2, ptr %48, align 8, !tbaa !564
  %49 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 7
  store ptr %3, ptr %49, align 8, !tbaa !566
  %50 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 4
  store i64 %1, ptr %50, align 8, !tbaa !567
  store ptr %0, ptr %8, align 8, !tbaa !568
  call fastcc void @store_by_pieces_1(ptr noundef nonnull %8, i32 noundef %4) #18
  %51 = icmp eq i32 %6, 0
  br i1 %51, label %81, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 8
  %54 = load i32, ptr %53, align 8, !tbaa !569
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2425, ptr noundef nonnull @.str.1) #17
  br label %57

57:                                               ; preds = %52, %56
  %58 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !570
  %60 = icmp eq i32 %59, 0
  %61 = icmp eq i32 %6, 2
  br i1 %60, label %74, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !571
  br i1 %61, label %65, label %68

65:                                               ; preds = %62
  %66 = tail call ptr @plus_constant(ptr noundef %64, i64 noundef -1) #17
  %67 = tail call ptr @copy_to_mode_reg(i32 noundef %18, ptr noundef %66) #17
  br label %68

68:                                               ; preds = %62, %65
  %69 = phi ptr [ %67, %65 ], [ %64, %62 ]
  %70 = load ptr, ptr %8, align 8, !tbaa !568
  %71 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 5
  %72 = load i64, ptr %71, align 8, !tbaa !572
  %73 = tail call ptr @adjust_automodify_address_1(ptr noundef %70, i32 noundef 14, ptr noundef %69, i64 noundef %72, i32 noundef 1) #17
  br label %83

74:                                               ; preds = %57
  %75 = getelementptr inbounds %struct.store_by_pieces_d, ptr %8, i64 0, i32 5
  %76 = load i64, ptr %75, align 8, !tbaa !572
  %77 = sext i1 %61 to i64
  %78 = add nsw i64 %76, %77
  %79 = load ptr, ptr %8, align 8, !tbaa !568
  %80 = tail call ptr @adjust_address_1(ptr noundef %79, i32 noundef 14, i64 noundef %78, i32 noundef 1, i32 noundef 1) #17
  br label %83

81:                                               ; preds = %47
  %82 = load ptr, ptr %8, align 8, !tbaa !568
  br label %83

83:                                               ; preds = %68, %74, %22, %20, %81
  %84 = phi ptr [ %82, %81 ], [ %0, %20 ], [ %0, %22 ], [ %73, %68 ], [ %80, %74 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #16
  ret ptr %84
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @store_by_pieces_1(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !469 !PGOFuncName !573 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !490
  %4 = load ptr, ptr %0, align 8, !tbaa !568
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !405
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mem_attrs, ptr %6, i64 0, i32 5
  %10 = load i8, ptr %9, align 8, !tbaa !457
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i8 [ %10, %8 ], [ 0, %2 ]
  %13 = tail call i32 %3(i8 noundef zeroext %12) #17
  %14 = load ptr, ptr %0, align 8, !tbaa !568
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !405
  %17 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 5
  store i64 0, ptr %17, align 8, !tbaa !572
  %18 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !571
  %19 = load i32, ptr %16, align 8
  %20 = and i32 %19, 65534
  %21 = add nsw i32 %20, -74
  %22 = icmp ult i32 %21, 4
  %23 = zext i1 %22 to i32
  %24 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 2
  store i32 %23, ptr %24, align 8, !tbaa !570
  %25 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 3
  store i32 0, ptr %25, align 4, !tbaa !574
  %26 = load i32, ptr %16, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 74
  %29 = icmp eq i32 %27, 76
  %30 = or i1 %28, %29
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 8
  store i32 %31, ptr %32, align 8, !tbaa !569
  %33 = trunc i32 %26 to i16
  switch i16 %33, label %37 [
    i16 76, label %34
    i16 74, label %34
  ]

34:                                               ; preds = %11, %11
  %35 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 4
  %36 = load i64, ptr %35, align 8, !tbaa !567
  store i64 %36, ptr %17, align 8, !tbaa !572
  br label %37

37:                                               ; preds = %11, %34
  br i1 %22, label %71, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 4
  %40 = load i64, ptr %39, align 8, !tbaa !567
  %41 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %40, i32 noundef %1) #18
  %42 = icmp ugt i64 %41, 2
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !405
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %43, %46
  %47 = phi i8 [ %56, %46 ], [ %44, %43 ]
  %48 = phi i32 [ %54, %46 ], [ 0, %43 ]
  %49 = zext i8 %47 to i32
  %50 = zext i8 %47 to i64
  %51 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !405
  %53 = icmp ult i8 %52, 5
  %54 = select i1 %53, i32 %49, i32 %48
  %55 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %50
  %56 = load i8, ptr %55, align 1, !tbaa !405
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %46, !llvm.loop !575

58:                                               ; preds = %46, %43
  %59 = phi i32 [ 0, %43 ], [ %54, %46 ]
  %60 = load i32, ptr %24, align 8, !tbaa !570
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32, ptr %16, align 8
  %64 = and i32 %63, 65535
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !438
  %68 = icmp eq i32 %67, 9
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = tail call ptr @copy_to_mode_reg(i32 noundef %13, ptr noundef nonnull %16) #17
  store ptr %70, ptr %18, align 8, !tbaa !571
  br label %71

71:                                               ; preds = %58, %62, %69, %38, %37
  %72 = phi i32 [ 0, %37 ], [ %59, %58 ], [ %59, %69 ], [ %59, %62 ], [ 0, %38 ]
  %73 = tail call i32 @mode_for_size(i32 noundef 32, i32 noundef 2, i32 noundef 1) #17
  %74 = tail call i32 @get_mode_alignment(i32 noundef %73) #17
  %75 = icmp ugt i32 %74, %1
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = tail call i32 @get_mode_alignment(i32 noundef %73) #17
  %78 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !405
  br label %106

79:                                               ; preds = %71
  %80 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !405
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %79
  %83 = zext i8 %80 to i32
  %84 = zext i8 %80 to i64
  %85 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !405
  %87 = icmp ugt i8 %86, 4
  br i1 %87, label %100, label %94

88:                                               ; preds = %94
  %89 = zext i8 %98 to i32
  %90 = zext i8 %98 to i64
  %91 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !405
  %93 = icmp ugt i8 %92, 4
  br i1 %93, label %100, label %94, !llvm.loop !576

94:                                               ; preds = %82, %88
  %95 = phi i64 [ %90, %88 ], [ %84, %82 ]
  %96 = phi i32 [ %89, %88 ], [ %83, %82 ]
  %97 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %95
  %98 = load i8, ptr %97, align 1, !tbaa !405
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %88, !llvm.loop !576

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
  %119 = load i8, ptr %118, align 1, !tbaa !405
  %120 = zext i8 %119 to i32
  %121 = icmp ugt i32 %112, %120
  %122 = select i1 %121, i32 %116, i32 %115
  %123 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %117
  %124 = load i8, ptr %123, align 1, !tbaa !405
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %113, !llvm.loop !577

126:                                              ; preds = %113, %110
  %127 = phi i32 [ %111, %110 ], [ %122, %113 ]
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %146, label %129

129:                                              ; preds = %126
  %130 = zext nneg i32 %127 to i64
  %131 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !442
  %133 = icmp eq i32 %132, 2956
  br i1 %133, label %141, label %134

134:                                              ; preds = %129
  %135 = tail call i32 @get_mode_alignment(i32 noundef %127) #17
  %136 = icmp ult i32 %108, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = zext i32 %132 to i64
  %139 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %138, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !519
  tail call fastcc void @store_by_pieces_2(ptr noundef %140, i32 noundef %127, ptr noundef nonnull %0) #18
  br label %141

141:                                              ; preds = %137, %134, %129
  %142 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %130
  %143 = load i8, ptr %142, align 1, !tbaa !405
  %144 = zext i8 %143 to i32
  %145 = icmp ugt i8 %143, 1
  br i1 %145, label %110, label %146, !llvm.loop !578

146:                                              ; preds = %126, %141
  %147 = getelementptr inbounds %struct.store_by_pieces_d, ptr %0, i64 0, i32 4
  %148 = load i64, ptr %147, align 8, !tbaa !567
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2578, ptr noundef nonnull @.str.1) #17
  br label %151

151:                                              ; preds = %146, %150
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @clear_storage_hints(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 !prof !469 {
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
  %19 = load i64, ptr %18, align 8, !tbaa !405
  %20 = zext nneg i32 %8 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !405
  %23 = zext i8 %22 to i64
  %24 = icmp eq i64 %19, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %17
  %26 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %20
  %27 = load ptr, ptr %26, align 8, !tbaa !401
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @emit_move_insn(ptr noundef nonnull %0, ptr noundef nonnull %27) #18
  br label %94

31:                                               ; preds = %25
  %32 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %20
  %33 = load i8, ptr %32, align 1, !tbaa !405
  %34 = and i8 %33, -2
  %35 = icmp eq i8 %34, 10
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %20
  %38 = load i8, ptr %37, align 1, !tbaa !405
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !401
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  tail call fastcc void @write_complex_part(ptr noundef nonnull %0, ptr noundef nonnull %41, i8 noundef zeroext 0) #18
  tail call fastcc void @write_complex_part(ptr noundef nonnull %0, ptr noundef nonnull %41, i8 noundef zeroext 1) #18
  br label %94

44:                                               ; preds = %31, %36, %17, %13, %11
  %45 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %46 = icmp eq ptr %45, %1
  br i1 %46, label %94, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !405
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.mem_attrs, ptr %49, i64 0, i32 4
  %53 = load i32, ptr %52, align 4, !tbaa !503
  br label %54

54:                                               ; preds = %47, %51
  %55 = phi i32 [ %53, %51 ], [ 8, %47 ]
  %56 = load i32, ptr %1, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 30
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !405
  %62 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %61, i32 noundef %55) #18
  %63 = tail call zeroext i8 @optimize_insn_for_speed_p() #17
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr @ix86_cost, align 8, !tbaa !401
  %67 = getelementptr inbounds %struct.processor_costs, ptr %66, i64 0, i32 10
  %68 = load i32, ptr %67, align 4, !tbaa !485
  %69 = tail call i32 @llvm.smin.i32(i32 %68, i32 6)
  %70 = zext i32 %69 to i64
  br label %71

71:                                               ; preds = %65, %59
  %72 = phi i64 [ 2, %59 ], [ %70, %65 ]
  %73 = icmp ult i64 %62, %72
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  br label %78

76:                                               ; preds = %71
  %77 = load i64, ptr %60, align 8, !tbaa !405
  tail call fastcc void @clear_by_pieces(ptr noundef nonnull %0, i64 noundef %77, i32 noundef %55) #18
  br label %94

78:                                               ; preds = %74, %54
  %79 = phi ptr [ %75, %74 ], [ %45, %54 ]
  %80 = tail call zeroext i8 @set_storage_via_setmem(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %79, i32 noundef %55, i32 noundef %3, i64 noundef %4) #18
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load ptr, ptr %48, align 8, !tbaa !405
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.mem_attrs, ptr %83, i64 0, i32 5
  %87 = load i8, ptr %86, align 8, !tbaa !457
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82, %85
  %90 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
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
define internal fastcc void @write_complex_part(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !469 !PGOFuncName !579 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 41
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = zext nneg i8 %2 to i64
  %10 = getelementptr inbounds [1 x %union.rtunion_def], ptr %8, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !405
  %12 = tail call ptr @emit_move_insn(ptr noundef %11, ptr noundef %1) #18
  br label %63

13:                                               ; preds = %3
  %14 = lshr i32 %4, 16
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !405
  %19 = zext i8 %18 to i32
  %20 = zext i8 %18 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !405
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
  %42 = load i8, ptr %41, align 1, !tbaa !405
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
define internal fastcc void @clear_by_pieces(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !469 !PGOFuncName !580 {
  %4 = alloca %struct.store_by_pieces_d, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.store_by_pieces_d, ptr %4, i64 0, i32 6
  store ptr @clear_by_pieces_1, ptr %7, align 8, !tbaa !564
  %8 = getelementptr inbounds %struct.store_by_pieces_d, ptr %4, i64 0, i32 7
  store ptr null, ptr %8, align 8, !tbaa !566
  %9 = getelementptr inbounds %struct.store_by_pieces_d, ptr %4, i64 0, i32 4
  store i64 %1, ptr %9, align 8, !tbaa !567
  store ptr %0, ptr %4, align 8, !tbaa !568
  call fastcc void @store_by_pieces_1(ptr noundef nonnull %4, i32 noundef %2) #18
  br label %10

10:                                               ; preds = %3, %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @set_storage_via_setmem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 !prof !469 {
  %7 = lshr i32 %3, 3
  %8 = zext nneg i32 %7 to i64
  %9 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %8) #17
  %10 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !405
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
  %22 = load i32, ptr %21, align 4, !tbaa !438
  %23 = icmp eq i32 %22, 2956
  br i1 %23, label %100, label %24

24:                                               ; preds = %17
  %25 = load i32, ptr %1, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 30
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i64, ptr %14, align 8, !tbaa !405
  %30 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %20
  %31 = load i64, ptr %30, align 8, !tbaa !536
  %32 = lshr i64 %31, 1
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %24
  %35 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %36 = load i8, ptr %35, align 1, !tbaa !405
  %37 = icmp ugt i8 %36, 3
  br i1 %37, label %38, label %100

38:                                               ; preds = %34, %28
  %39 = sext i32 %22 to i64
  %40 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %39, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !419
  %42 = load ptr, ptr %41, align 8, !tbaa !421
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = tail call i32 %42(ptr noundef %0, i32 noundef 1) #17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %100, label %47

47:                                               ; preds = %44, %38
  %48 = getelementptr inbounds %struct.insn_operand_data, ptr %41, i64 3
  %49 = load ptr, ptr %48, align 8, !tbaa !421
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
  %58 = load ptr, ptr %57, align 8, !tbaa !421
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
  %74 = load ptr, ptr %73, align 8, !tbaa !421
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
  %84 = load i8, ptr %83, align 8, !tbaa !537
  %85 = icmp eq i8 %84, 4
  %86 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %39, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !519
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
  %102 = load i8, ptr %101, align 1, !tbaa !405
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %17, !llvm.loop !581

104:                                              ; preds = %100, %6, %98
  %105 = phi i8 [ 1, %98 ], [ 0, %6 ], [ 0, %100 ]
  ret i8 %105
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @set_storage_via_libcall(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !469 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !405
  %7 = tail call ptr @copy_to_mode_reg(i32 noundef 16, ptr noundef %6) #17
  %8 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
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
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !401
  %24 = tail call ptr @make_tree(ptr noundef %23, ptr noundef %7) #17
  %25 = load i32, ptr %2, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 30
  br i1 %27, label %43, label %28

28:                                               ; preds = %19
  %29 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !401
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
  %45 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
  %46 = tail call ptr @make_tree(ptr noundef %45, ptr noundef %22) #17
  %47 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !401
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
define dso_local ptr @clear_storage(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !469 {
  %4 = tail call ptr @clear_storage_hints(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i64 noundef -1) #18
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @clear_storage_libcall_fn() unnamed_addr #0 !prof !469 !PGOFuncName !582 {
  %1 = load ptr, ptr @block_clear_fn, align 8, !tbaa !401
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @init_block_clear_fn(ptr noundef null) #18
  %4 = load ptr, ptr @block_clear_fn, align 8, !tbaa !401
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  %7 = load i1, ptr @clear_storage_libcall_fn.emitted_extern, align 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  store i1 true, ptr @clear_storage_libcall_fn.emitted_extern, align 1
  tail call void @make_decl_rtl(ptr noundef %6) #17
  %9 = load ptr, ptr @block_clear_fn, align 8, !tbaa !401
  tail call void @assemble_external(ptr noundef %9) #17
  %10 = load ptr, ptr @block_clear_fn, align 8, !tbaa !401
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi ptr [ %10, %8 ], [ %6, %5 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_block_clear_fn(ptr noundef %0) local_unnamed_addr #0 !prof !469 {
  %2 = load ptr, ptr @block_clear_fn, align 8, !tbaa !401
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = tail call ptr @get_identifier(ptr noundef nonnull @.str.3) #17
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !401
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !401
  %8 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
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
  store ptr %10, ptr @block_clear_fn, align 8, !tbaa !401
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
define dso_local ptr @emit_move_complex_push(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !469 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !405
  %7 = zext i8 %6 to i32
  %8 = zext i8 %6 to i64
  %9 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !405
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
  %20 = load ptr, ptr %19, align 8, !tbaa !405
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
  %25 = load ptr, ptr %19, align 8, !tbaa !405
  br label %26

26:                                               ; preds = %18, %18, %24, %23
  %27 = phi ptr [ %25, %24 ], [ %20, %23 ], [ %20, %18 ], [ %20, %18 ]
  %28 = phi i8 [ 0, %24 ], [ 1, %23 ], [ 0, %18 ], [ 0, %18 ]
  %29 = phi i8 [ undef, %24 ], [ 0, %23 ], [ 1, %18 ], [ 1, %18 ]
  %30 = tail call ptr @gen_rtx_MEM(i32 noundef %7, ptr noundef %27) #17
  %31 = tail call fastcc ptr @read_complex_part(ptr noundef %2, i8 noundef zeroext %29) #18
  %32 = tail call ptr @emit_move_insn(ptr noundef %30, ptr noundef %31) #18
  %33 = load ptr, ptr %19, align 8, !tbaa !405
  %34 = tail call ptr @gen_rtx_MEM(i32 noundef %7, ptr noundef %33) #17
  %35 = tail call fastcc ptr @read_complex_part(ptr noundef %2, i8 noundef zeroext %28) #18
  %36 = tail call ptr @emit_move_insn(ptr noundef %34, ptr noundef %35) #18
  br label %37

37:                                               ; preds = %26, %15
  %38 = phi ptr [ %17, %15 ], [ %36, %26 ]
  ret ptr %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_move_resolve_push(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !469 !PGOFuncName !583 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !405
  %5 = load i32, ptr %4, align 8
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !405
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
  %20 = load ptr, ptr %19, align 8, !tbaa !405
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
  %28 = load ptr, ptr %27, align 8, !tbaa !405
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 30
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3074, ptr noundef nonnull @.str.1) #17
  %33 = load ptr, ptr %27, align 8, !tbaa !405
  br label %34

34:                                               ; preds = %26, %32
  %35 = phi ptr [ %28, %26 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !405
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
  %50 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !401
  %51 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %49) #17
  %52 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !401
  %53 = tail call ptr @expand_simple_binop(i32 noundef 16, i32 noundef 49, ptr noundef %50, ptr noundef %51, ptr noundef %52, i32 noundef 0, i32 noundef 3) #17
  %54 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !401
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
  %60 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !401
  br label %66

61:                                               ; preds = %58, %58, %58
  %62 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !401
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
define internal fastcc ptr @read_complex_part(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !469 !PGOFuncName !584 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 41
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = zext i8 %1 to i64
  %9 = getelementptr inbounds [1 x %union.rtunion_def], ptr %7, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !405
  br label %85

11:                                               ; preds = %2
  %12 = lshr i32 %3, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !405
  %17 = zext i8 %16 to i32
  %18 = zext i8 %16 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !405
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 3
  %23 = icmp eq i32 %4, 43
  br i1 %23, label %24, label %55

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !405
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 67174399
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !405
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
  %43 = load ptr, ptr %42, align 8, !tbaa !405
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !438
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
  %65 = load i8, ptr %64, align 1, !tbaa !405
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
define dso_local ptr @emit_move_complex_parts(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !469 {
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !438
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
define dso_local ptr @emit_move_insn_1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !585 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp ult i32 %5, 87
  br i1 %6, label %8, label %7, !prof !586

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3378, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %2, %7
  %9 = zext nneg i32 %5 to i64
  %10 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !442
  %12 = icmp eq i32 %11, 2956
  br i1 %12, label %19, label %13, !prof !587

13:                                               ; preds = %8
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %14, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !519
  %17 = tail call ptr (ptr, ...) %16(ptr noundef nonnull %0, ptr noundef %1) #17
  %18 = tail call ptr @emit_insn(ptr noundef %17) #17
  br label %47

19:                                               ; preds = %8
  %20 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %21 = load i8, ptr %20, align 1, !tbaa !405
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
  %36 = load i32, ptr %35, align 4, !tbaa !438
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %9
  %40 = load i8, ptr %39, align 1, !tbaa !405
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
define internal fastcc ptr @emit_move_complex(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !469 !PGOFuncName !588 {
  %4 = tail call i32 @push_operand(ptr noundef %1, i32 noundef %0) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @emit_move_complex_push(i32 noundef %0, ptr noundef %1, ptr noundef %2) #18
  br label %69

8:                                                ; preds = %3
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !405
  %12 = icmp eq i8 %11, 11
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %9
  %15 = load i8, ptr %14, align 1, !tbaa !405
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !442
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
  %45 = load i32, ptr %44, align 4, !tbaa !438
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
  %59 = load i8, ptr %58, align 1, !tbaa !405
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
define internal fastcc ptr @emit_move_via_integer(i32 noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !469 !PGOFuncName !589 {
  %5 = tail call i32 @int_mode_for_mode(i32 noundef %0) #17
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !442
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
  %21 = load ptr, ptr %20, align 8, !tbaa !519
  %22 = tail call ptr (ptr, ...) %21(ptr noundef nonnull %13, ptr noundef nonnull %16) #17
  %23 = tail call ptr @emit_insn(ptr noundef %22) #17
  br label %24

24:                                               ; preds = %15, %12, %7, %4, %18
  %25 = phi ptr [ %23, %18 ], [ null, %4 ], [ null, %7 ], [ null, %12 ], [ null, %15 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_move_multi_word(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !469 !PGOFuncName !590 {
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !405
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
  %16 = load i32, ptr @reload_in_progress, align 4, !tbaa !438
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
  %25 = load ptr, ptr %23, align 8, !tbaa !405
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %15, ptr noundef %24) #17
  br label %29

29:                                               ; preds = %27, %22, %18
  %30 = phi ptr [ %15, %18 ], [ %15, %22 ], [ %28, %27 ]
  %31 = load i32, ptr @reload_in_progress, align 4, !tbaa !438
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
  %40 = load ptr, ptr %38, align 8, !tbaa !405
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %2, ptr noundef %39) #17
  br label %44

44:                                               ; preds = %14, %42, %37, %33, %29
  %45 = phi ptr [ %30, %42 ], [ %30, %37 ], [ %30, %33 ], [ %30, %29 ], [ %15, %14 ]
  %46 = phi ptr [ %43, %42 ], [ %2, %37 ], [ %2, %33 ], [ %2, %29 ], [ %2, %14 ]
  tail call void @start_sequence() #17
  %47 = load i8, ptr %5, align 1, !tbaa !405
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %99, label %49

49:                                               ; preds = %44, %87
  %50 = phi i32 [ %91, %87 ], [ 0, %44 ]
  %51 = phi i8 [ %90, %87 ], [ 0, %44 ]
  %52 = phi ptr [ %89, %87 ], [ %46, %44 ]
  %53 = phi ptr [ %88, %87 ], [ null, %44 ]
  %54 = tail call ptr @operand_subword(ptr noundef %45, i32 noundef %50, i32 noundef 1, i32 noundef %0) #17
  %55 = tail call fastcc zeroext i8 @undefined_operand_subword_p(ptr noundef %52, i32 noundef %50) #18, !range !591
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
  %65 = load i32, ptr %64, align 4, !tbaa !438
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
  %92 = load i8, ptr %5, align 1, !tbaa !405
  %93 = zext i8 %92 to i32
  %94 = add nuw nsw i32 %93, 3
  %95 = lshr i32 %94, 2
  %96 = icmp ult i32 %91, %95
  br i1 %96, label %49, label %97, !llvm.loop !592

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
define internal fastcc ptr @emit_move_ccmode(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !469 !PGOFuncName !593 {
  %4 = icmp eq i32 %0, 2
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 60, i32 4, i64 2), align 8, !tbaa !442
  %7 = icmp eq i32 %6, 2956
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @emit_move_change_mode(i32 noundef 2, i32 noundef %0, ptr noundef %1, i8 noundef zeroext 1) #18
  %10 = tail call fastcc ptr @emit_move_change_mode(i32 noundef 2, i32 noundef %0, ptr noundef %2, i8 noundef zeroext 1) #18
  %11 = zext i32 %6 to i64
  %12 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !519
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
define internal fastcc ptr @compress_float_constant(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !469 !PGOFuncName !594 {
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !595
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
  %23 = load i8, ptr %22, align 1, !tbaa !405
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [18 x i8], ptr @class_narrowest_mode, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !405
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
  %46 = load ptr, ptr %45, align 8, !tbaa !419
  %47 = getelementptr inbounds %struct.insn_operand_data, ptr %46, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !421
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
  %58 = load i8, ptr %57, align 1, !tbaa !405
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
  %79 = load i8, ptr %78, align 1, !tbaa !405
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %9, %80
  br i1 %81, label %82, label %31, !llvm.loop !596

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
define dso_local ptr @push_block(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !469 {
  %4 = load i32, ptr @ptr_mode, align 4, !tbaa !438
  %5 = tail call ptr @convert_modes(i32 noundef 16, i32 noundef %4, ptr noundef %0, i32 noundef 1) #18
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 65535
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !438
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
  %20 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !401
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
  %29 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !401
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
  %38 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !405
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
define dso_local void @emit_push_insn(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11) local_unnamed_addr #0 !prof !597 {
  %13 = icmp eq i32 %1, 1
  br i1 %13, label %14, label %143, !prof !598

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
  %30 = load i32, ptr @target_flags, align 4, !tbaa !438
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
  %44 = load ptr, ptr %43, align 8, !tbaa !405
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.mem_attrs, ptr %44, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !503
  br label %49

49:                                               ; preds = %42, %46
  %50 = phi i32 [ %48, %46 ], [ 8, %42 ]
  %51 = icmp ult i32 %50, %4
  br i1 %51, label %85, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !405
  %55 = trunc i64 %54 to i32
  %56 = sub i32 %55, %16
  %57 = zext i32 %56 to i64
  %58 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %57, i32 noundef %4) #18
  %59 = tail call zeroext i8 @optimize_insn_for_speed_p() #17
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = load ptr, ptr @ix86_cost, align 8, !tbaa !401
  %63 = getelementptr inbounds %struct.processor_costs, ptr %62, i64 0, i32 10
  %64 = load i32, ptr %63, align 4, !tbaa !485
  %65 = zext i32 %64 to i64
  br label %66

66:                                               ; preds = %52, %61
  %67 = phi i64 [ %65, %61 ], [ 3, %52 ]
  %68 = icmp ult i64 %58, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load i64, ptr %53, align 8, !tbaa !405
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
  %79 = load i64, ptr %53, align 8, !tbaa !405
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
  %93 = load i64, ptr %92, align 8, !tbaa !405
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
  %112 = load i64, ptr %111, align 8, !tbaa !405
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
  %123 = load i32, ptr @target_flags, align 4, !tbaa !438
  %124 = and i32 %123, 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = tail call i32 @ix86_cfun_abi() #17
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %139, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !401
  %131 = tail call i32 @reg_mentioned_p(ptr noundef %130, ptr noundef %122) #17
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !401
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
  br i1 %144, label %145, label %216, !prof !598

145:                                              ; preds = %143
  %146 = zext i32 %1 to i64
  %147 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !405
  %149 = lshr i8 %148, 2
  %150 = zext nneg i8 %149 to i32
  %151 = and i32 %5, 3
  %152 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %153 = load i64, ptr %152, align 8, !tbaa !405
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
  %170 = load i32, ptr %169, align 4, !tbaa !438
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
  %191 = load i8, ptr %190, align 1, !tbaa !405
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
  %208 = load i32, ptr @word_mode, align 4, !tbaa !438
  %209 = trunc i64 %205 to i32
  %210 = sub i32 %209, %199
  %211 = shl nsw i32 %210, 2
  %212 = add nsw i32 %211, %154
  %213 = sext i32 %212 to i64
  %214 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %213) #17
  tail call void @emit_push_insn(ptr noundef %207, i32 noundef %208, ptr noundef null, ptr noundef null, i32 noundef %4, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %8, ptr noundef %214, i32 noundef %10, ptr noundef %11) #18
  %215 = icmp sgt i64 %205, %202
  br i1 %215, label %203, label %247, !llvm.loop !599

216:                                              ; preds = %143
  %217 = icmp eq i32 %7, 0
  %218 = icmp eq ptr %8, null
  br i1 %217, label %223, label %219, !prof !600

219:                                              ; preds = %216
  br i1 %218, label %220, label %232, !prof !601

220:                                              ; preds = %219
  %221 = sext i32 %7 to i64
  %222 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %221) #17
  tail call void @anti_adjust_stack(ptr noundef %222) #17
  br label %224

223:                                              ; preds = %216
  br i1 %218, label %224, label %232, !prof !602

224:                                              ; preds = %220, %223
  %225 = load i32, ptr @target_flags, align 4, !tbaa !438
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

232:                                              ; preds = %219, %228, %224, %223
  %233 = load i32, ptr %9, align 8
  %234 = and i32 %233, 65535
  %235 = icmp eq i32 %234, 30
  br i1 %235, label %236, label %240, !prof !600

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %238 = load i64, ptr %237, align 8, !tbaa !405
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
  %249 = icmp slt i32 %5, 1
  %250 = icmp eq ptr %6, null
  %251 = or i1 %249, %250
  br i1 %251, label %264, label %252, !prof !603

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
  %265 = icmp ne ptr %11, null
  %266 = icmp eq ptr %8, null
  %267 = and i1 %266, %265
  br i1 %267, label %268, label %269, !prof !604

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
define internal fastcc void @emit_single_push_insn(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !469 !PGOFuncName !605 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !405
  %7 = zext i8 %6 to i32
  %8 = add nuw nsw i32 %7, 3
  %9 = and i32 %8, 508
  %10 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !606
  %11 = add nsw i32 %9, %10
  store i32 %11, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !606
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 119, i32 4, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !442
  %15 = icmp eq i32 %14, 2956
  br i1 %15, label %34, label %16

16:                                               ; preds = %3
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %17, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !419
  %20 = load ptr, ptr %19, align 8, !tbaa !421
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
  %31 = load ptr, ptr %30, align 8, !tbaa !519
  %32 = tail call ptr (ptr, ...) %31(ptr noundef %28) #17
  %33 = tail call ptr @emit_insn(ptr noundef %32) #17
  br label %56

34:                                               ; preds = %3
  %35 = icmp eq i32 %9, %7
  %36 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !401
  br i1 %35, label %37, label %39

37:                                               ; preds = %34
  %38 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 74, i32 noundef 16, ptr noundef %36) #17
  br label %46

39:                                               ; preds = %34
  %40 = zext nneg i32 %9 to i64
  %41 = sub nsw i64 0, %40
  %42 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %41) #17
  %43 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %36, ptr noundef %42) #17
  %44 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !401
  %45 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 78, i32 noundef 16, ptr noundef %44, ptr noundef %43) #17
  br label %46

46:                                               ; preds = %39, %37
  %47 = phi ptr [ %38, %37 ], [ %45, %39 ]
  %48 = tail call ptr @gen_rtx_MEM(i32 noundef %0, ptr noundef %47) #17
  %49 = icmp eq ptr %2, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  tail call void @set_mem_attributes(ptr noundef %48, ptr noundef nonnull %2, i32 noundef 1) #17
  %51 = load i32, ptr @flag_optimize_sibling_calls, align 4, !tbaa !438
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
define dso_local void @expand_assignment(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 !prof !607 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15, !prof !608

13:                                               ; preds = %3
  %14 = tail call fastcc ptr @expand_normal(ptr noundef %1) #18
  br label %426

15:                                               ; preds = %3
  %16 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %426, !prof !609

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %0) #18, !range !591
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %27, !prof !610

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !405
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 15
  br i1 %26, label %27, label %203, !prof !611

27:                                               ; preds = %21, %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !tbaa !438
  tail call void @push_temp_slots() #17
  %28 = call ptr @get_inner_reference(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 zeroext poison) #18
  %29 = tail call fastcc ptr @expand_normal(ptr noundef %28) #18
  %30 = load ptr, ptr %7, align 8, !tbaa !401
  %31 = icmp eq ptr %30, null
  br i1 %31, label %104, label %32, !prof !612

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
  %42 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %43 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %42) #17
  br label %44

44:                                               ; preds = %41, %32
  %45 = phi ptr [ %29, %32 ], [ %43, %41 ]
  %46 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %30, ptr noundef null, i32 noundef 0, i32 noundef 2) #18
  %47 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !490
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %49 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !405
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.mem_attrs, ptr %50, i64 0, i32 5
  %54 = load i8, ptr %53, align 8, !tbaa !457
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
  %70 = load ptr, ptr %48, align 8, !tbaa !405
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 16711680
  %73 = icmp ne i32 %72, 0
  %74 = load i64, ptr %5, align 8
  %75 = icmp sgt i64 %74, 0
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %100

77:                                               ; preds = %69
  %78 = load i64, ptr %6, align 8, !tbaa !536
  %79 = srem i64 %78, %74
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = load i32, ptr %4, align 4, !tbaa !438
  %83 = tail call i32 @get_mode_alignment(i32 noundef %82) #17
  %84 = zext i32 %83 to i64
  %85 = urem i64 %74, %84
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load ptr, ptr %49, align 8, !tbaa !405
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.mem_attrs, ptr %88, i64 0, i32 4
  %92 = load i32, ptr %91, align 4, !tbaa !503
  br label %93

93:                                               ; preds = %87, %90
  %94 = phi i32 [ %92, %90 ], [ 8, %87 ]
  %95 = tail call i32 @get_mode_alignment(i32 noundef %82) #17
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = sdiv i64 %78, 8
  %99 = tail call ptr @adjust_address_1(ptr noundef nonnull %45, i32 noundef %82, i64 noundef %98, i32 noundef 1, i32 noundef 1) #17
  store i64 0, ptr %6, align 8, !tbaa !536
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
  ], !prof !613

108:                                              ; preds = %104
  %109 = load i64, ptr %6, align 8, !tbaa !536
  br label %188

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !405
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
  %127 = load i8, ptr %126, align 1, !tbaa !405
  %128 = icmp eq i8 %127, 10
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i64, ptr %6, align 8, !tbaa !536
  br label %150

131:                                              ; preds = %123
  %132 = load ptr, ptr %111, align 8, !tbaa !405
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
  %147 = load i8, ptr %146, align 1, !tbaa !405
  %148 = icmp eq i8 %147, 11
  %149 = load i64, ptr %6, align 8, !tbaa !536
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
  %159 = load i32, ptr %4, align 4, !tbaa !438
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !405
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
  %172 = load ptr, ptr %171, align 8, !tbaa !405
  %173 = tail call ptr @store_expr(ptr noundef nonnull %1, ptr noundef %172, i32 noundef 0, i8 noundef zeroext %2) #18
  br label %202

174:                                              ; preds = %104
  %175 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %105) #17
  %176 = load i64, ptr %6, align 8, !tbaa !536
  tail call void @set_mem_attributes_minus_bitpos(ptr noundef %175, ptr noundef nonnull %0, i32 noundef 0, i64 noundef %176) #17
  %177 = load i32, ptr %9, align 4, !tbaa !438
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %182, label %179, !prof !612

179:                                              ; preds = %174
  %180 = load i32, ptr %175, align 8
  %181 = or i32 %180, 134217728
  store i32 %181, ptr %175, align 8
  br label %182

182:                                              ; preds = %179, %174
  %183 = tail call zeroext i8 @component_uses_parent_alias_set(ptr noundef nonnull %0) #17
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %188, label %185, !prof !612

185:                                              ; preds = %182
  %186 = load i32, ptr %175, align 8
  %187 = or i32 %186, 16777216
  store i32 %187, ptr %175, align 8
  br label %188

188:                                              ; preds = %108, %182, %185
  %189 = phi i64 [ %176, %185 ], [ %176, %182 ], [ %109, %108 ]
  %190 = phi ptr [ %175, %185 ], [ %175, %182 ], [ %105, %108 ]
  %191 = load i64, ptr %5, align 8, !tbaa !536
  %192 = load i32, ptr %4, align 4, !tbaa !438
  %193 = tail call fastcc zeroext i8 @optimize_bitfield_assignment_op(i64 noundef %191, i64 noundef %189, i32 noundef %192, ptr noundef %190, ptr noundef nonnull %0, ptr noundef %1) #18, !range !591
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %202, !prof !612

195:                                              ; preds = %188
  %196 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !405
  %198 = tail call i32 @get_alias_set(ptr noundef nonnull %0) #17
  %199 = tail call fastcc ptr @store_field(ptr noundef %190, i64 noundef %191, i64 noundef %189, i32 noundef %192, ptr noundef %1, ptr noundef %197, i32 noundef %198, i8 noundef zeroext %2) #18
  %200 = icmp eq ptr %199, null
  br i1 %200, label %202, label %201, !prof !614

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
  br i1 %206, label %207, label %267, !prof !611

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !405
  %210 = getelementptr inbounds %struct.tree_common, ptr %209, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !405
  %212 = load i64, ptr %211, align 8
  %213 = trunc i64 %212 to i16
  switch i16 %213, label %220 [
    i16 10, label %214
    i16 12, label %214
  ]

214:                                              ; preds = %207, %207
  %215 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !405
  %217 = load i64, ptr %216, align 8
  %218 = lshr i64 %217, 56
  %219 = trunc i64 %218 to i8
  br label %220

220:                                              ; preds = %207, %214
  %221 = phi i8 [ %219, %214 ], [ 0, %207 ]
  %222 = tail call fastcc ptr @expand_expr(ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0) #18
  %223 = tail call ptr @force_not_mem(ptr noundef %222) #17
  %224 = load ptr, ptr %22, align 8, !tbaa !405
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
  %237 = load ptr, ptr %208, align 8, !tbaa !405
  %238 = tail call fastcc ptr @expand_expr(ptr noundef %237, ptr noundef null, i32 noundef 0, i32 noundef 2) #18
  %239 = tail call ptr @memory_address_addr_space(i32 noundef %236, ptr noundef %238, i8 noundef zeroext %221) #17
  %240 = tail call ptr @gen_rtx_MEM(i32 noundef %236, ptr noundef %239) #17
  tail call void @set_mem_attributes(ptr noundef %240, ptr noundef nonnull %0, i32 noundef 0) #17
  tail call void @set_mem_addr_space(ptr noundef %240, i8 noundef zeroext %221) #17
  %241 = zext i32 %236 to i64
  %242 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !442
  %244 = icmp eq i32 %243, 2956
  br i1 %244, label %245, label %246

245:                                              ; preds = %235
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4347, ptr noundef nonnull @.str.1) #17
  br label %246

246:                                              ; preds = %235, %245
  %247 = zext i32 %243 to i64
  %248 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %247, i32 3
  %249 = load ptr, ptr %248, align 8, !tbaa !419
  %250 = getelementptr inbounds %struct.insn_operand_data, ptr %249, i64 1
  %251 = getelementptr inbounds %struct.insn_operand_data, ptr %249, i64 1, i32 2
  %252 = load i16, ptr %251, align 8
  %253 = zext i16 %252 to i32
  %254 = load ptr, ptr %250, align 8, !tbaa !421
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
  %264 = load ptr, ptr %263, align 8, !tbaa !519
  %265 = tail call ptr (ptr, ...) %264(ptr noundef %240, ptr noundef %262) #17
  %266 = tail call ptr @emit_insn(ptr noundef %265) #17
  br label %426

267:                                              ; preds = %203
  %268 = load i64, ptr %1, align 8
  %269 = and i64 %268, 65535
  %270 = icmp eq i64 %269, 59
  br i1 %270, label %271, label %337, !prof !615

271:                                              ; preds = %267
  %272 = tail call i32 @aggregate_value_p(ptr noundef nonnull %1, ptr noundef nonnull %1) #17
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %337, !prof !616

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %276 = load ptr, ptr %275, align 8, !tbaa !405
  %277 = getelementptr inbounds %struct.tree_type, ptr %276, i64 0, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !405
  %279 = icmp eq ptr %278, null
  br i1 %279, label %337, label %280, !prof !617

280:                                              ; preds = %274
  %281 = load i64, ptr %278, align 8
  %282 = and i64 %281, 65535
  %283 = icmp eq i64 %282, 23
  br i1 %283, label %284, label %337, !prof !616

284:                                              ; preds = %280
  %285 = load i64, ptr %0, align 8
  %286 = trunc i64 %285 to i16
  switch i16 %286, label %300 [
    i16 32, label %287
    i16 34, label %287
  ], !prof !618

287:                                              ; preds = %284, %284
  %288 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !405
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %293

291:                                              ; preds = %287
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #17
  %292 = load ptr, ptr %288, align 8, !tbaa !405
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
  br i1 %303, label %337, label %304, !prof !616

304:                                              ; preds = %300
  tail call void @push_temp_slots() #17
  %305 = tail call fastcc ptr @expand_normal(ptr noundef nonnull %1) #18
  %306 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef 5) #18
  %307 = load i32, ptr %306, align 8
  %308 = and i32 %307, 65535
  %309 = icmp eq i32 %308, 15
  br i1 %309, label %310, label %314

310:                                              ; preds = %304
  %311 = load ptr, ptr %275, align 8, !tbaa !405
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
  %321 = load ptr, ptr %22, align 8, !tbaa !405
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
  %328 = load ptr, ptr %327, align 8, !tbaa !405
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
  br i1 %341, label %342, label %424, !prof !611

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
  %355 = load ptr, ptr %354, align 8, !tbaa !405
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
  %367 = load ptr, ptr %366, align 8, !tbaa !405
  %368 = getelementptr inbounds %struct.tree_common, ptr %367, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !405
  %370 = getelementptr inbounds %struct.tree_common, ptr %369, i64 0, i32 2
  %371 = load ptr, ptr %370, align 8, !tbaa !405
  %372 = load i64, ptr %371, align 8
  %373 = icmp ult i64 %372, 72057594037927936
  br i1 %373, label %374, label %424

374:                                              ; preds = %365
  %375 = tail call zeroext i8 @refs_may_alias_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #17
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %424, label %377

377:                                              ; preds = %374
  %378 = load ptr, ptr @cfun, align 8, !tbaa !401
  %379 = getelementptr inbounds %struct.function, ptr %378, i64 0, i32 20
  %380 = load i32, ptr %379, align 8
  %381 = and i32 %380, 201326592
  %382 = icmp eq i32 %381, 67108864
  br i1 %382, label %383, label %424

383:                                              ; preds = %377
  tail call void @push_temp_slots() #17
  %384 = tail call ptr @expr_size(ptr noundef nonnull %1) #17
  %385 = tail call fastcc ptr @expand_normal(ptr noundef nonnull %1) #18
  %386 = load ptr, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 2), align 16, !tbaa !401
  %387 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !405
  %389 = getelementptr inbounds %struct.rtx_def, ptr %385, i64 0, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !405
  %391 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
  %392 = load i64, ptr %391, align 8
  %393 = and i64 %392, 65535
  %394 = icmp eq i64 %393, 14
  br i1 %394, label %395, label %399

395:                                              ; preds = %383
  %396 = tail call i32 @vector_type_mode(ptr noundef nonnull %391) #17
  %397 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
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
  %411 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
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
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !607 !PGOFuncName !619 {
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
  ], !prof !620

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare void @push_temp_slots() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_inner_reference(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, i8 zeroext %7) local_unnamed_addr #0 !prof !621 {
  %9 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !401
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !401
  store i64 -1, ptr %1, align 8, !tbaa !536
  %11 = load i64, ptr %0, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %79 [
    i16 41, label %13
    i16 42, label %36
  ], !prof !622

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !405
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !405
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 33554432
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25, !prof !623

22:                                               ; preds = %13
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  br label %29

25:                                               ; preds = %13
  %26 = and i64 %19, 255
  %27 = icmp eq i64 %26, 1
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i32 [ 0, %22 ], [ %28, %25 ]
  %31 = phi i32 [ %24, %22 ], [ 0, %25 ]
  %32 = load i64, ptr %15, align 8
  %33 = trunc i64 %32 to i32
  %34 = lshr i32 %33, 21
  %35 = and i32 %34, 1
  store i32 %35, ptr %5, align 4, !tbaa !438
  br label %111

36:                                               ; preds = %8
  %37 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %38 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !405
  %40 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !405
  %42 = load i64, ptr %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = and i32 %43, 65535
  %45 = add nsw i32 %44, -9
  %46 = icmp ult i32 %45, -3
  %47 = and i64 %42, 2097152
  %48 = icmp ne i64 %47, 0
  %49 = select i1 %46, i1 true, i1 %48
  %50 = zext i1 %49 to i32
  store i32 %50, ptr %5, align 4, !tbaa !438
  %51 = load ptr, ptr %37, align 8, !tbaa !405
  %52 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !405
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 14
  br i1 %56, label %57, label %111

57:                                               ; preds = %36
  %58 = load ptr, ptr %40, align 8, !tbaa !405
  %59 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !405
  %61 = icmp eq ptr %58, %60
  br i1 %61, label %62, label %111

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.tree_type, ptr %58, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !405
  %65 = tail call i32 @tree_int_cst_equal(ptr noundef %39, ptr noundef %64) #17
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %111, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %40, align 8, !tbaa !405
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 14
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = tail call i32 @vector_type_mode(ptr noundef nonnull %68) #17
  br label %111

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = lshr i32 %76, 16
  %78 = and i32 %77, 255
  br label %111

79:                                               ; preds = %8
  %80 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !405
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, 65535
  %84 = icmp eq i64 %83, 14
  br i1 %84, label %85, label %89, !prof !624

85:                                               ; preds = %79
  %86 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #17
  %87 = load ptr, ptr %80, align 8, !tbaa !405
  %88 = load i64, ptr %87, align 8
  br label %94

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = lshr i32 %91, 16
  %93 = and i32 %92, 255
  br label %94

94:                                               ; preds = %89, %85
  %95 = phi i64 [ %88, %85 ], [ %82, %89 ]
  %96 = phi i32 [ %86, %85 ], [ %93, %89 ]
  %97 = trunc i64 %95 to i32
  %98 = lshr i32 %97, 21
  %99 = and i32 %98, 1
  store i32 %99, ptr %5, align 4, !tbaa !438
  %100 = icmp eq i32 %96, 1
  br i1 %100, label %101, label %105, !prof !624

101:                                              ; preds = %94
  %102 = load ptr, ptr %80, align 8, !tbaa !405
  %103 = getelementptr inbounds %struct.tree_type, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !405
  br label %111

105:                                              ; preds = %94
  %106 = zext i32 %96 to i64
  %107 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !405
  %109 = zext i8 %108 to i64
  %110 = shl nuw nsw i64 %109, 3
  br label %121

111:                                              ; preds = %72, %74, %62, %57, %36, %101, %29
  %112 = phi i32 [ %30, %29 ], [ 0, %62 ], [ 0, %57 ], [ 0, %36 ], [ 0, %101 ], [ 0, %74 ], [ 0, %72 ]
  %113 = phi i32 [ %31, %29 ], [ 0, %62 ], [ 0, %57 ], [ 0, %36 ], [ 1, %101 ], [ %78, %74 ], [ %73, %72 ]
  %114 = phi ptr [ %17, %29 ], [ %39, %62 ], [ %39, %57 ], [ %39, %36 ], [ %104, %101 ], [ %39, %74 ], [ %39, %72 ]
  %115 = icmp eq ptr %114, null
  br i1 %115, label %125, label %116, !prof !625

116:                                              ; preds = %111
  %117 = tail call i32 @host_integerp(ptr noundef nonnull %114, i32 noundef 1) #17
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119, !prof !626

119:                                              ; preds = %116
  %120 = tail call i64 @tree_low_cst(ptr noundef nonnull %114, i32 noundef 1) #17
  br label %121

121:                                              ; preds = %116, %119, %105
  %122 = phi i64 [ %110, %105 ], [ %120, %119 ], [ -1, %116 ]
  %123 = phi i32 [ 0, %105 ], [ %112, %119 ], [ %112, %116 ]
  %124 = phi i32 [ %96, %105 ], [ %113, %119 ], [ 1, %116 ]
  store i64 %122, ptr %1, align 8, !tbaa !536
  br label %125

125:                                              ; preds = %121, %111
  %126 = phi i32 [ %112, %111 ], [ %123, %121 ]
  %127 = phi i32 [ %113, %111 ], [ %124, %121 ]
  br label %128

128:                                              ; preds = %176, %125
  %129 = phi ptr [ %10, %125 ], [ %170, %176 ]
  %130 = phi ptr [ %9, %125 ], [ %171, %176 ]
  %131 = phi ptr [ %0, %125 ], [ %178, %176 ]
  %132 = load i64, ptr %131, align 8
  %133 = trunc i64 %132 to i16
  switch i16 %133, label %179 [
    i16 42, label %134
    i16 41, label %138
    i16 45, label %148
    i16 46, label %148
    i16 43, label %169
    i16 44, label %165
    i16 118, label %169
  ], !prof !627

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.tree_exp, ptr %131, i64 1, i32 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !405
  %137 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %129, ptr noundef %136) #17
  br label %169

138:                                              ; preds = %128
  %139 = getelementptr inbounds %struct.tree_exp, ptr %131, i64 1
  %140 = load ptr, ptr %139, align 8, !tbaa !405
  %141 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %131) #18
  %142 = icmp eq ptr %141, null
  br i1 %142, label %169, label %143, !prof !628

143:                                              ; preds = %138
  %144 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %130, ptr noundef nonnull %141) #17
  %145 = getelementptr inbounds %struct.tree_field_decl, ptr %140, i64 0, i32 4
  %146 = load ptr, ptr %145, align 8, !tbaa !405
  %147 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %129, ptr noundef %146) #17
  br label %169

148:                                              ; preds = %128, %128
  %149 = getelementptr inbounds %struct.tree_exp, ptr %131, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !405
  %151 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %131) #18
  %152 = tail call ptr @array_ref_element_size(ptr noundef nonnull %131) #18
  %153 = tail call i32 @integer_zerop(ptr noundef %151) #17
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159, !prof !629

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.tree_common, ptr %150, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !405
  %158 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %157, ptr noundef %150, ptr noundef %151) #17
  br label %159

159:                                              ; preds = %155, %148
  %160 = phi ptr [ %150, %148 ], [ %158, %155 ]
  %161 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
  %162 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %161, ptr noundef %160) #17
  %163 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %162, ptr noundef %152) #17
  %164 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %130, ptr noundef %163) #17
  br label %169

165:                                              ; preds = %128
  %166 = load i64, ptr %1, align 8, !tbaa !536
  %167 = tail call ptr @size_int_kind(i64 noundef %166, i32 noundef 2) #17
  %168 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %129, ptr noundef %167) #17
  br label %169

169:                                              ; preds = %128, %143, %138, %165, %128, %159, %134
  %170 = phi ptr [ %168, %165 ], [ %129, %128 ], [ %129, %159 ], [ %137, %134 ], [ %147, %143 ], [ %129, %138 ], [ %129, %128 ]
  %171 = phi ptr [ %130, %165 ], [ %130, %128 ], [ %164, %159 ], [ %130, %134 ], [ %144, %143 ], [ %130, %138 ], [ %130, %128 ]
  %172 = load i64, ptr %131, align 8
  %173 = and i64 %172, 524288
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %176, label %175, !prof !630

175:                                              ; preds = %169
  store i32 1, ptr %6, align 4, !tbaa !438
  br label %176

176:                                              ; preds = %175, %169
  %177 = getelementptr inbounds %struct.tree_exp, ptr %131, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !405
  br label %128

179:                                              ; preds = %128
  %180 = tail call i32 @host_integerp(ptr noundef %130, i32 noundef 0) #17
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %199, label %182, !prof !631

182:                                              ; preds = %179
  %183 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %130) #17
  %184 = extractvalue { i64, i64 } %183, 0
  %185 = extractvalue { i64, i64 } %183, 1
  %186 = tail call { i64, i64 } @double_int_mul(i64 %184, i64 %185, i64 8, i64 0) #17
  %187 = extractvalue { i64, i64 } %186, 0
  %188 = extractvalue { i64, i64 } %186, 1
  %189 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %129) #17
  %190 = extractvalue { i64, i64 } %189, 0
  %191 = extractvalue { i64, i64 } %189, 1
  %192 = tail call { i64, i64 } @double_int_add(i64 %187, i64 %188, i64 %190, i64 %191) #17
  %193 = extractvalue { i64, i64 } %192, 0
  %194 = extractvalue { i64, i64 } %192, 1
  %195 = tail call zeroext i8 @double_int_fits_in_shwi_p(i64 %193, i64 %194) #17
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %199, label %197, !prof !632

197:                                              ; preds = %182
  %198 = tail call i64 @double_int_to_shwi(i64 %193, i64 %194) #17
  br label %203

199:                                              ; preds = %182, %179
  %200 = icmp eq ptr %130, null
  br i1 %200, label %206, label %201, !prof !633

201:                                              ; preds = %199
  %202 = tail call i64 @tree_low_cst(ptr noundef %129, i32 noundef 0) #17
  br label %203

203:                                              ; preds = %201, %197
  %204 = phi i64 [ %198, %197 ], [ %202, %201 ]
  %205 = phi ptr [ null, %197 ], [ %130, %201 ]
  store i64 %204, ptr %2, align 8, !tbaa !536
  store ptr %205, ptr %3, align 8, !tbaa !401
  br label %206

206:                                              ; preds = %203, %199
  %207 = icmp eq i32 %127, 0
  br i1 %207, label %208, label %219, !prof !634

208:                                              ; preds = %206
  %209 = and i32 %126, 255
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %219, label %211

211:                                              ; preds = %208
  %212 = load i64, ptr %2, align 8, !tbaa !536
  %213 = and i64 %212, 7
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %211
  %216 = load i64, ptr %1, align 8, !tbaa !536
  %217 = and i64 %216, 7
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %215, %211, %208, %206
  br label %220

220:                                              ; preds = %215, %219
  %221 = phi i32 [ %127, %219 ], [ 1, %215 ]
  store i32 %221, ptr %4, align 4, !tbaa !438
  ret ptr %131
}

; Function Attrs: optsize
declare void @expand_builtin_trap() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !635 !PGOFuncName !636 {
  %5 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null) #18
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @offset_address(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @highest_pow2_factor_for_target(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !469 !PGOFuncName !637 {
  %3 = tail call fastcc i64 @target_align(ptr noundef %0) #18, !range !638
  %4 = lshr i64 %3, 3
  %5 = tail call i64 @highest_pow2_factor(ptr noundef %1) #18
  %6 = tail call i64 @llvm.umax.i64(i64 %5, i64 %4)
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @store_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !607 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store ptr null, ptr %5, align 8, !tbaa !401
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !438
  %10 = add i32 %9, -4
  %11 = icmp ult i32 %10, 7
  br i1 %11, label %12, label %15, !prof !639

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !405
  br label %15

15:                                               ; preds = %4, %12
  %16 = phi i32 [ %14, %12 ], [ 0, %4 ]
  %17 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !405
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 19
  br i1 %21, label %22, label %28, !prof !608

22:                                               ; preds = %15
  %23 = icmp eq i32 %2, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4532, ptr noundef nonnull @.str.1) #17
  br label %25

25:                                               ; preds = %22, %24
  %26 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %27 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %0, ptr noundef %26, i32 noundef 0, i32 noundef 0) #18
  br label %529

28:                                               ; preds = %15
  %29 = trunc i64 %6 to i16
  switch i16 %29, label %30 [
    i16 52, label %32
    i16 56, label %42
  ], !prof !640

30:                                               ; preds = %28
  %31 = load i32, ptr %1, align 8
  br label %66

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !405
  %35 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %36 = icmp ne i32 %2, 0
  %37 = zext i1 %36 to i32
  %38 = tail call fastcc ptr @expand_expr(ptr noundef %34, ptr noundef %35, i32 noundef 0, i32 noundef %37) #18
  %39 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !405
  %41 = tail call ptr @store_expr(ptr noundef %40, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) #18
  br label %529

42:                                               ; preds = %28
  %43 = load i32, ptr %1, align 8
  %44 = and i32 %43, 16711680
  %45 = icmp eq i32 %44, 65536
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = tail call ptr @gen_label_rtx() #17
  %48 = tail call ptr @gen_label_rtx() #17
  tail call void @do_pending_stack_adjust() #17
  %49 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !523
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !523
  %51 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !405
  tail call void @jumpifnot(ptr noundef %52, ptr noundef %47, i32 noundef -1) #17
  %53 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !405
  %55 = tail call ptr @store_expr(ptr noundef %54, ptr noundef nonnull %1, i32 noundef %2, i8 noundef zeroext %3) #18
  %56 = tail call ptr @gen_jump(ptr noundef %48) #17
  %57 = tail call ptr @emit_jump_insn(ptr noundef %56) #17
  %58 = tail call ptr @emit_barrier() #17
  %59 = tail call ptr @emit_label(ptr noundef %47) #17
  %60 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !405
  %62 = tail call ptr @store_expr(ptr noundef %61, ptr noundef nonnull %1, i32 noundef %2, i8 noundef zeroext %3) #18
  %63 = tail call ptr @emit_label(ptr noundef %48) #17
  %64 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !523
  %65 = add nsw i32 %64, -1
  store i32 %65, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !523
  br label %529

66:                                               ; preds = %30, %42
  %67 = phi i32 [ %31, %30 ], [ %43, %42 ]
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 39
  br i1 %69, label %70, label %214, !prof !608

70:                                               ; preds = %66
  %71 = and i32 %67, 268435456
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %214, label %73

73:                                               ; preds = %70
  %74 = trunc i64 %19 to i32
  %75 = and i32 %74, 65535
  %76 = add nsw i32 %75, -6
  %77 = icmp ult i32 %76, 3
  br i1 %77, label %78, label %149

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !405
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %149

82:                                               ; preds = %78
  %83 = lshr i32 %67, 16
  %84 = and i32 %83, 255
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !440
  %88 = zext i16 %87 to i32
  %89 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 6
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 1023
  %92 = icmp eq i32 %91, %88
  br i1 %92, label %93, label %149

93:                                               ; preds = %82
  %94 = lshr i32 %74, 21
  %95 = and i32 %94, 1
  %96 = and i32 %67, 134217728
  %97 = icmp eq i32 %96, 0
  %98 = lshr i32 %67, 26
  %99 = and i32 %98, 1
  %100 = select i1 %97, i32 %99, i32 -1
  %101 = icmp eq i32 %95, %100
  br i1 %101, label %134, label %102

102:                                              ; preds = %93
  %103 = tail call ptr @signed_or_unsigned_type_for(i32 noundef %100, ptr noundef nonnull %18) #17
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %127

105:                                              ; preds = %102
  %106 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !641
  %107 = load ptr, ptr %17, align 8, !tbaa !405
  %108 = load i64, ptr %107, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 14
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = tail call i32 @vector_type_mode(ptr noundef nonnull %107) #17
  br label %118

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.tree_type, ptr %107, i64 0, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = lshr i32 %115, 16
  %117 = and i32 %116, 255
  br label %118

118:                                              ; preds = %113, %111
  %119 = phi i32 [ %112, %111 ], [ %117, %113 ]
  %120 = load i32, ptr %1, align 8
  %121 = and i32 %120, 134217728
  %122 = icmp eq i32 %121, 0
  %123 = lshr i32 %120, 26
  %124 = and i32 %123, 1
  %125 = select i1 %122, i32 %124, i32 -1
  %126 = tail call ptr %106(i32 noundef %119, i32 noundef %125) #17
  br label %127

127:                                              ; preds = %118, %102
  %128 = phi ptr [ %126, %118 ], [ %103, %102 ]
  %129 = tail call ptr @fold_convert_loc(i32 noundef %16, ptr noundef %128, ptr noundef nonnull %0) #17
  %130 = load i32, ptr %1, align 8
  %131 = and i32 %130, 134217728
  %132 = lshr i32 %130, 26
  %133 = and i32 %132, 1
  br label %134

134:                                              ; preds = %127, %93
  %135 = phi i32 [ %133, %127 ], [ %99, %93 ]
  %136 = phi i32 [ %131, %127 ], [ %96, %93 ]
  %137 = phi ptr [ %129, %127 ], [ %0, %93 ]
  %138 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !641
  %139 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !405
  %141 = load i32, ptr %140, align 8
  %142 = lshr i32 %141, 16
  %143 = and i32 %142, 255
  %144 = icmp eq i32 %136, 0
  %145 = select i1 %144, i32 %135, i32 -1
  %146 = tail call ptr %138(i32 noundef %143, i32 noundef %145) #17
  %147 = tail call ptr @fold_convert_loc(i32 noundef %16, ptr noundef %146, ptr noundef %137) #17
  %148 = load ptr, ptr %139, align 8, !tbaa !405
  br label %149

149:                                              ; preds = %73, %134, %82, %78
  %150 = phi ptr [ %148, %134 ], [ null, %82 ], [ null, %78 ], [ null, %73 ]
  %151 = phi ptr [ %147, %134 ], [ %0, %82 ], [ %0, %78 ], [ %0, %73 ]
  %152 = icmp ne i32 %2, 0
  %153 = zext i1 %152 to i32
  %154 = tail call fastcc ptr @expand_expr(ptr noundef %151, ptr noundef %150, i32 noundef 0, i32 noundef %153) #18
  %155 = load i32, ptr %154, align 8
  %156 = and i32 %155, 65535
  %157 = zext nneg i32 %156 to i64
  %158 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !438
  %160 = icmp eq i32 %159, 9
  %161 = and i32 %155, 16711680
  %162 = icmp eq i32 %161, 0
  %163 = and i1 %160, %162
  br i1 %163, label %164, label %204

164:                                              ; preds = %149
  %165 = load i32, ptr %1, align 8
  %166 = lshr i32 %165, 16
  %167 = and i32 %166, 255
  %168 = getelementptr inbounds %struct.tree_common, ptr %151, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !405
  %170 = load i64, ptr %169, align 8
  %171 = and i64 %170, 65535
  %172 = icmp eq i64 %171, 14
  br i1 %172, label %173, label %176

173:                                              ; preds = %164
  %174 = tail call i32 @vector_type_mode(ptr noundef nonnull %169) #17
  %175 = load i32, ptr %1, align 8
  br label %181

176:                                              ; preds = %164
  %177 = getelementptr inbounds %struct.tree_type, ptr %169, i64 0, i32 6
  %178 = load i32, ptr %177, align 4
  %179 = lshr i32 %178, 16
  %180 = and i32 %179, 255
  br label %181

181:                                              ; preds = %176, %173
  %182 = phi i32 [ %175, %173 ], [ %165, %176 ]
  %183 = phi i32 [ %174, %173 ], [ %180, %176 ]
  %184 = and i32 %182, 134217728
  %185 = icmp eq i32 %184, 0
  %186 = lshr i32 %182, 26
  %187 = and i32 %186, 1
  %188 = select i1 %185, i32 %187, i32 -1
  %189 = tail call ptr @convert_modes(i32 noundef %167, i32 noundef %183, ptr noundef nonnull %154, i32 noundef %188) #18
  %190 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !405
  %192 = load i32, ptr %191, align 8
  %193 = lshr i32 %192, 16
  %194 = and i32 %193, 255
  %195 = load i32, ptr %1, align 8
  %196 = lshr i32 %195, 16
  %197 = and i32 %196, 255
  %198 = and i32 %195, 134217728
  %199 = icmp eq i32 %198, 0
  %200 = lshr i32 %195, 26
  %201 = and i32 %200, 1
  %202 = select i1 %199, i32 %201, i32 -1
  %203 = tail call ptr @convert_modes(i32 noundef %194, i32 noundef %197, ptr noundef %189, i32 noundef %202) #18
  br label %204

204:                                              ; preds = %181, %149
  %205 = phi ptr [ %203, %181 ], [ %154, %149 ]
  %206 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !405
  %208 = load i32, ptr %1, align 8
  %209 = and i32 %208, 134217728
  %210 = icmp eq i32 %209, 0
  %211 = lshr i32 %208, 26
  %212 = and i32 %211, 1
  %213 = select i1 %210, i32 %212, i32 -1
  tail call void @convert_move(ptr noundef %207, ptr noundef %205, i32 noundef %213) #18
  br label %529

214:                                              ; preds = %70, %66
  %215 = icmp eq i64 %7, 28
  br i1 %215, label %216, label %277, !prof !608

216:                                              ; preds = %214
  %217 = icmp ne i8 %3, 0
  %218 = icmp ne i32 %2, 0
  %219 = or i1 %218, %217
  br i1 %219, label %277, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %222 = load i32, ptr %221, align 8, !tbaa !405
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %277

224:                                              ; preds = %220
  %225 = icmp eq i64 %20, 14
  br i1 %225, label %226, label %228

226:                                              ; preds = %224
  %227 = tail call i32 @vector_type_mode(ptr noundef nonnull %18) #17
  br label %233

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 6
  %230 = load i32, ptr %229, align 4
  %231 = lshr i32 %230, 16
  %232 = and i32 %231, 255
  br label %233

233:                                              ; preds = %228, %226
  %234 = phi i32 [ %227, %226 ], [ %232, %228 ]
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %236, label %277

236:                                              ; preds = %233
  %237 = tail call i64 @int_expr_size(ptr noundef nonnull %0) #17
  %238 = icmp slt i64 %237, 1
  br i1 %238, label %277, label %239

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 2
  %241 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %240) #18
  %242 = load i32, ptr %221, align 8, !tbaa !405
  %243 = add nsw i32 %242, -1
  %244 = sext i32 %243 to i64
  %245 = icmp slt i64 %241, %244
  br i1 %245, label %277, label %246

246:                                              ; preds = %239
  %247 = sext i32 %242 to i64
  %248 = add nsw i64 %247, 3
  %249 = and i64 %248, -4
  %250 = icmp slt i64 %249, %237
  %251 = tail call i64 @llvm.smin.i64(i64 %249, i64 %237)
  %252 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %253 = load ptr, ptr %252, align 8, !tbaa !405
  %254 = icmp eq ptr %253, null
  br i1 %254, label %258, label %255

255:                                              ; preds = %246
  %256 = getelementptr inbounds %struct.mem_attrs, ptr %253, i64 0, i32 4
  %257 = load i32, ptr %256, align 4, !tbaa !503
  br label %258

258:                                              ; preds = %246, %255
  %259 = phi i32 [ %257, %255 ], [ 8, %246 ]
  %260 = tail call i32 @can_store_by_pieces(i64 noundef %251, ptr noundef nonnull @builtin_strncpy_read_str, ptr noundef nonnull %240, i32 noundef %259, i8 noundef zeroext 0) #18
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %277, label %262

262:                                              ; preds = %258
  %263 = load ptr, ptr %252, align 8, !tbaa !405
  %264 = icmp eq ptr %263, null
  br i1 %264, label %268, label %265

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.mem_attrs, ptr %263, i64 0, i32 4
  %267 = load i32, ptr %266, align 4, !tbaa !503
  br label %268

268:                                              ; preds = %262, %265
  %269 = phi i32 [ %267, %265 ], [ 8, %262 ]
  %270 = zext i1 %250 to i32
  %271 = tail call ptr @store_by_pieces(ptr noundef nonnull %1, i64 noundef %251, ptr noundef nonnull @builtin_strncpy_read_str, ptr noundef nonnull %240, i32 noundef %269, i8 noundef zeroext 0, i32 noundef %270) #18
  br i1 %250, label %272, label %529

272:                                              ; preds = %268
  %273 = tail call ptr @adjust_address_1(ptr noundef %271, i32 noundef 1, i64 noundef 0, i32 noundef 1, i32 noundef 1) #17
  %274 = sub nsw i64 %237, %251
  %275 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %274) #17
  %276 = tail call ptr @clear_storage(ptr noundef %273, ptr noundef %275, i32 noundef 0) #18
  br label %529

277:                                              ; preds = %236, %239, %258, %214, %216, %220, %233
  %278 = icmp eq i8 %3, 0
  %279 = select i1 %278, ptr %1, ptr null, !prof !609
  %280 = load i32, ptr %1, align 8
  %281 = lshr i32 %280, 16
  %282 = and i32 %281, 255
  %283 = icmp ne i32 %2, 0
  %284 = zext i1 %283 to i32
  %285 = call ptr @expand_expr_real(ptr noundef nonnull %0, ptr noundef %279, i32 noundef %282, i32 noundef %284, ptr noundef nonnull %5) #18
  %286 = load i32, ptr %285, align 8
  %287 = and i32 %286, 65535
  %288 = zext nneg i32 %287 to i64
  %289 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !438
  %291 = icmp eq i32 %290, 9
  br i1 %291, label %292, label %341, !prof !608

292:                                              ; preds = %277
  %293 = and i32 %286, 16711680
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %341

295:                                              ; preds = %292
  %296 = load i64, ptr %0, align 8
  %297 = and i64 %296, 65535
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %341, label %299

299:                                              ; preds = %295
  %300 = load i32, ptr %1, align 8
  %301 = lshr i32 %300, 16
  %302 = and i32 %301, 255
  %303 = load ptr, ptr %17, align 8, !tbaa !405
  %304 = load i64, ptr %303, align 8
  %305 = and i64 %304, 65535
  %306 = icmp eq i64 %305, 14
  br i1 %306, label %307, label %309

307:                                              ; preds = %299
  %308 = call i32 @vector_type_mode(ptr noundef nonnull %303) #17
  br label %314

309:                                              ; preds = %299
  %310 = getelementptr inbounds %struct.tree_type, ptr %303, i64 0, i32 6
  %311 = load i32, ptr %310, align 4
  %312 = lshr i32 %311, 16
  %313 = and i32 %312, 255
  br label %314

314:                                              ; preds = %309, %307
  %315 = phi i32 [ %308, %307 ], [ %313, %309 ]
  %316 = icmp eq i32 %302, %315
  br i1 %316, label %341, label %317

317:                                              ; preds = %314
  %318 = load i32, ptr %1, align 8
  %319 = lshr i32 %318, 16
  %320 = and i32 %319, 255
  %321 = load ptr, ptr %17, align 8, !tbaa !405
  %322 = load i64, ptr %321, align 8
  %323 = and i64 %322, 65535
  %324 = icmp eq i64 %323, 14
  br i1 %324, label %325, label %329

325:                                              ; preds = %317
  %326 = call i32 @vector_type_mode(ptr noundef nonnull %321) #17
  %327 = load ptr, ptr %17, align 8, !tbaa !405
  %328 = load i64, ptr %327, align 8
  br label %334

329:                                              ; preds = %317
  %330 = getelementptr inbounds %struct.tree_type, ptr %321, i64 0, i32 6
  %331 = load i32, ptr %330, align 4
  %332 = lshr i32 %331, 16
  %333 = and i32 %332, 255
  br label %334

334:                                              ; preds = %329, %325
  %335 = phi i64 [ %328, %325 ], [ %322, %329 ]
  %336 = phi i32 [ %326, %325 ], [ %333, %329 ]
  %337 = trunc i64 %335 to i32
  %338 = lshr i32 %337, 21
  %339 = and i32 %338, 1
  %340 = call ptr @convert_modes(i32 noundef %320, i32 noundef %336, ptr noundef nonnull %285, i32 noundef %339) #18
  br label %341

341:                                              ; preds = %334, %314, %295, %292, %277
  %342 = phi ptr [ %340, %334 ], [ %285, %314 ], [ %285, %295 ], [ %285, %292 ], [ %285, %277 ]
  %343 = call i32 @rtx_equal_p(ptr noundef %342, ptr noundef nonnull %1) #17
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %353, label %345, !prof !649

345:                                              ; preds = %341
  %346 = icmp eq ptr %342, %1
  br i1 %346, label %529, label %347, !prof !616

347:                                              ; preds = %345
  %348 = call i32 @side_effects_p(ptr noundef %342) #17
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %347
  %351 = call i32 @side_effects_p(ptr noundef nonnull %1) #17
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %529, label %353

353:                                              ; preds = %350, %347, %341
  %354 = load i64, ptr %0, align 8
  %355 = and i64 %354, 65535
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %529, label %357, !prof !650

357:                                              ; preds = %353
  %358 = load ptr, ptr %5, align 8, !tbaa !401
  %359 = icmp eq ptr %358, null
  br i1 %359, label %363, label %360, !prof !651

360:                                              ; preds = %357
  %361 = call i32 @rtx_equal_p(ptr noundef nonnull %358, ptr noundef nonnull %1) #17
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %529, !prof !652

363:                                              ; preds = %360, %357
  %364 = call ptr @expr_size(ptr noundef nonnull %0) #17
  %365 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %366 = icmp eq ptr %364, %365
  br i1 %366, label %529, label %367, !prof !650

367:                                              ; preds = %363
  %368 = load i32, ptr %342, align 8
  %369 = lshr i32 %368, 16
  %370 = and i32 %369, 255
  %371 = load i32, ptr %1, align 8
  %372 = lshr i32 %371, 16
  %373 = and i32 %372, 255
  %374 = icmp eq i32 %370, %373
  br i1 %374, label %391, label %375, !prof !653

375:                                              ; preds = %367
  %376 = icmp eq i32 %370, 0
  br i1 %376, label %391, label %377

377:                                              ; preds = %375
  %378 = icmp eq i32 %373, 1
  %379 = icmp eq i32 %370, 1
  %380 = or i1 %379, %378
  br i1 %380, label %381, label %385

381:                                              ; preds = %377
  %382 = call ptr @expr_size(ptr noundef nonnull %0) #17
  %383 = select i1 %283, i32 2, i32 0
  %384 = call ptr @emit_block_move(ptr noundef nonnull %1, ptr noundef nonnull %342, ptr noundef %382, i32 noundef %383) #18
  br label %529

385:                                              ; preds = %377
  %386 = load ptr, ptr %17, align 8, !tbaa !405
  %387 = load i64, ptr %386, align 8
  %388 = trunc i64 %387 to i32
  %389 = lshr i32 %388, 21
  %390 = and i32 %389, 1
  call void @convert_move(ptr noundef nonnull %1, ptr noundef nonnull %342, i32 noundef %390) #18
  br label %529

391:                                              ; preds = %375, %367
  %392 = and i32 %368, 16711680
  %393 = icmp eq i32 %392, 65536
  br i1 %393, label %394, label %509, !prof !650

394:                                              ; preds = %391
  %395 = load i64, ptr %0, align 8
  %396 = and i64 %395, 65535
  %397 = icmp eq i64 %396, 28
  br i1 %397, label %398, label %506

398:                                              ; preds = %394
  %399 = call ptr @expr_size(ptr noundef nonnull %0) #17
  %400 = load i32, ptr %399, align 8
  %401 = and i32 %400, 65535
  %402 = icmp eq i32 %401, 30
  br i1 %402, label %403, label %413

403:                                              ; preds = %398
  %404 = getelementptr inbounds %struct.rtx_def, ptr %399, i64 0, i32 1
  %405 = load i64, ptr %404, align 8, !tbaa !405
  %406 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %407 = load i32, ptr %406, align 8, !tbaa !405
  %408 = sext i32 %407 to i64
  %409 = icmp slt i64 %405, %408
  br i1 %409, label %410, label %413

410:                                              ; preds = %403
  %411 = select i1 %283, i32 2, i32 0
  %412 = call ptr @emit_block_move(ptr noundef nonnull %1, ptr noundef nonnull %342, ptr noundef nonnull %399, i32 noundef %411) #18
  br label %529

413:                                              ; preds = %403, %398
  %414 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57), align 8, !tbaa !654
  %415 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %416 = load ptr, ptr %415, align 8, !tbaa !405
  %417 = icmp eq ptr %416, null
  br i1 %417, label %421, label %418

418:                                              ; preds = %413
  %419 = getelementptr inbounds %struct.mem_attrs, ptr %416, i64 0, i32 5
  %420 = load i8, ptr %419, align 8, !tbaa !457
  br label %421

421:                                              ; preds = %413, %418
  %422 = phi i8 [ %420, %418 ], [ 0, %413 ]
  %423 = call i32 %414(i8 noundef zeroext %422) #17
  %424 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !490
  %425 = load ptr, ptr %415, align 8, !tbaa !405
  %426 = icmp eq ptr %425, null
  br i1 %426, label %430, label %427

427:                                              ; preds = %421
  %428 = getelementptr inbounds %struct.mem_attrs, ptr %425, i64 0, i32 5
  %429 = load i8, ptr %428, align 8, !tbaa !457
  br label %430

430:                                              ; preds = %421, %427
  %431 = phi i8 [ %429, %427 ], [ 0, %421 ]
  %432 = call i32 %424(i8 noundef zeroext %431) #17
  %433 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
  %434 = call ptr @make_tree(ptr noundef %433, ptr noundef nonnull %399) #17
  %435 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %436 = load i32, ptr %435, align 8, !tbaa !405
  %437 = sext i32 %436 to i64
  %438 = call ptr @size_int_kind(i64 noundef %437, i32 noundef 0) #17
  %439 = call ptr @size_binop_loc(i32 noundef %16, i32 noundef 80, ptr noundef %434, ptr noundef %438) #17
  %440 = call fastcc ptr @expand_expr(ptr noundef %439, ptr noundef null, i32 noundef 0, i32 noundef %284) #18
  %441 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
  %442 = load i64, ptr %441, align 8
  %443 = trunc i64 %442 to i32
  %444 = lshr i32 %443, 21
  %445 = and i32 %444, 1
  %446 = call ptr @convert_to_mode(i32 noundef %423, ptr noundef %440, i32 noundef %445) #18
  %447 = select i1 %283, i32 2, i32 0
  %448 = call ptr @emit_block_move(ptr noundef nonnull %1, ptr noundef nonnull %342, ptr noundef %446, i32 noundef %447) #18
  %449 = load i32, ptr %446, align 8
  %450 = and i32 %449, 65535
  %451 = icmp eq i32 %450, 30
  br i1 %451, label %452, label %459

452:                                              ; preds = %430
  %453 = getelementptr inbounds %struct.rtx_def, ptr %446, i64 0, i32 1
  %454 = load i64, ptr %453, align 8, !tbaa !405
  %455 = sub nsw i64 0, %454
  %456 = call ptr @plus_constant(ptr noundef nonnull %399, i64 noundef %455) #17
  %457 = load i64, ptr %453, align 8, !tbaa !405
  %458 = call ptr @adjust_address_1(ptr noundef nonnull %1, i32 noundef 1, i64 noundef %457, i32 noundef 1, i32 noundef 1) #17
  br label %494

459:                                              ; preds = %430
  %460 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
  %461 = load i64, ptr %460, align 8
  %462 = and i64 %461, 65535
  %463 = icmp eq i64 %462, 14
  br i1 %463, label %464, label %466

464:                                              ; preds = %459
  %465 = call i32 @vector_type_mode(ptr noundef nonnull %460) #17
  br label %471

466:                                              ; preds = %459
  %467 = getelementptr inbounds %struct.tree_type, ptr %460, i64 0, i32 6
  %468 = load i32, ptr %467, align 4
  %469 = lshr i32 %468, 16
  %470 = and i32 %469, 255
  br label %471

471:                                              ; preds = %466, %464
  %472 = phi i32 [ %465, %464 ], [ %470, %466 ]
  %473 = call ptr @expand_binop(i32 noundef %472, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 14), ptr noundef nonnull %399, ptr noundef nonnull %446, ptr noundef null, i32 noundef 0, i32 noundef 3) #17
  %474 = load i32, ptr %446, align 8
  %475 = lshr i32 %474, 16
  %476 = and i32 %475, 255
  %477 = icmp eq i32 %476, %432
  br i1 %477, label %485, label %478

478:                                              ; preds = %471
  %479 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
  %480 = load i64, ptr %479, align 8
  %481 = trunc i64 %480 to i32
  %482 = lshr i32 %481, 21
  %483 = and i32 %482, 1
  %484 = call ptr @convert_to_mode(i32 noundef %432, ptr noundef nonnull %446, i32 noundef %483) #18
  br label %485

485:                                              ; preds = %478, %471
  %486 = phi ptr [ %484, %478 ], [ %446, %471 ]
  %487 = call i64 @highest_pow2_factor(ptr noundef %439) #18
  %488 = call ptr @offset_address(ptr noundef nonnull %1, ptr noundef %486, i64 noundef %487) #17
  %489 = call ptr @gen_label_rtx() #17
  %490 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %491 = load i32, ptr %473, align 8
  %492 = lshr i32 %491, 16
  %493 = and i32 %492, 255
  call void @emit_cmp_and_jump_insns(ptr noundef nonnull %473, ptr noundef %490, i32 noundef 85, ptr noundef null, i32 noundef %493, i32 noundef 0, ptr noundef %489) #17
  br label %494

494:                                              ; preds = %485, %452
  %495 = phi ptr [ %456, %452 ], [ %473, %485 ]
  %496 = phi ptr [ %458, %452 ], [ %488, %485 ]
  %497 = phi ptr [ null, %452 ], [ %489, %485 ]
  %498 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %499 = icmp eq ptr %495, %498
  br i1 %499, label %502, label %500

500:                                              ; preds = %494
  %501 = call ptr @clear_storage(ptr noundef %496, ptr noundef %495, i32 noundef 0) #18
  br label %502

502:                                              ; preds = %500, %494
  %503 = icmp eq ptr %497, null
  br i1 %503, label %529, label %504

504:                                              ; preds = %502
  %505 = call ptr @emit_label(ptr noundef nonnull %497) #17
  br label %529

506:                                              ; preds = %394
  %507 = and i32 %371, 65535
  %508 = icmp eq i32 %507, 15
  br i1 %508, label %512, label %516, !prof !650

509:                                              ; preds = %391
  %510 = and i32 %371, 65535
  %511 = icmp eq i32 %510, 15
  br i1 %511, label %512, label %520, !prof !650

512:                                              ; preds = %509, %506
  %513 = load ptr, ptr %17, align 8, !tbaa !405
  %514 = call i64 @int_size_in_bytes(ptr noundef %513) #17
  %515 = trunc i64 %514 to i32
  call void @emit_group_load(ptr noundef nonnull %1, ptr noundef nonnull %342, ptr poison, i32 noundef %515) #18
  br label %529

516:                                              ; preds = %506
  %517 = call ptr @expr_size(ptr noundef nonnull %0) #17
  %518 = select i1 %283, i32 2, i32 0
  %519 = call ptr @emit_block_move(ptr noundef nonnull %1, ptr noundef nonnull %342, ptr noundef %517, i32 noundef %518) #18
  br label %529

520:                                              ; preds = %509
  br i1 %278, label %524, label %521, !prof !653

521:                                              ; preds = %520
  %522 = call zeroext i8 @emit_storent_insn(ptr noundef nonnull %1, ptr noundef nonnull %342) #18, !range !591
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %524, label %529

524:                                              ; preds = %521, %520
  %525 = call ptr @force_operand(ptr noundef nonnull %342, ptr noundef nonnull %1) #18
  %526 = icmp eq ptr %525, %1
  br i1 %526, label %529, label %527, !prof !650

527:                                              ; preds = %524
  %528 = call ptr @emit_move_insn(ptr noundef nonnull %1, ptr noundef %525) #18
  br label %529

529:                                              ; preds = %345, %350, %353, %360, %363, %516, %524, %527, %521, %512, %385, %381, %502, %504, %410, %272, %268, %204, %46, %32, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret ptr null
}

; Function Attrs: optsize
declare void @set_mem_attributes_minus_bitpos(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @component_uses_parent_alias_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @optimize_bitfield_assignment_op(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !prof !431 !PGOFuncName !655 {
  %7 = load i32, ptr %3, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !405
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 3
  %15 = icmp ne i32 %2, 0
  %16 = icmp ugt i64 %0, 31
  %17 = or i1 %16, %15
  %18 = icmp ugt i8 %12, 4
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %221, label %20, !prof !656

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
  %29 = load i32, ptr %28, align 4, !tbaa !438
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %31, label %221

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !405
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 8
  br i1 %36, label %37, label %221

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.tree_exp, ptr %25, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !405
  %40 = getelementptr inbounds %struct.tree_exp, ptr %25, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !405
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
  %55 = load ptr, ptr %54, align 8, !tbaa !405
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.mem_attrs, ptr %55, i64 0, i32 4
  %59 = load i32, ptr %58, align 4, !tbaa !503
  br label %60

60:                                               ; preds = %48, %57
  %61 = phi i32 [ %59, %57 ], [ 8, %48 ]
  %62 = tail call i32 @get_best_mode(i32 noundef %52, i32 noundef %53, i32 noundef %61, i32 noundef %51, i32 noundef 0) #17
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %221, label %64

64:                                               ; preds = %60
  %65 = zext i32 %62 to i64
  %66 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !405
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
  %99 = load ptr, ptr %98, align 8, !tbaa !405
  %100 = load i64, ptr %99, align 8
  %101 = and i64 %100, 65535
  %102 = icmp eq i64 %101, 14
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = tail call i32 @vector_type_mode(ptr noundef nonnull %99) #17
  %105 = load ptr, ptr %98, align 8, !tbaa !405
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
  %133 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !401
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
  %157 = load ptr, ptr %156, align 8, !tbaa !405
  %158 = load i64, ptr %157, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 14
  br i1 %160, label %161, label %165

161:                                              ; preds = %148
  %162 = tail call i32 @vector_type_mode(ptr noundef nonnull %157) #17
  %163 = load ptr, ptr %156, align 8, !tbaa !405
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
  %194 = load i8, ptr %193, align 1, !tbaa !405
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
define internal fastcc ptr @store_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i8 noundef zeroext %7) unnamed_addr #0 !prof !431 !PGOFuncName !657 {
  %9 = load i64, ptr %4, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14, !prof !658

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  br label %38

14:                                               ; preds = %8
  %15 = icmp eq i64 %1, 0
  br i1 %15, label %16, label %19, !prof !658

16:                                               ; preds = %14
  %17 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %18 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %4, ptr noundef %17, i32 noundef 0, i32 noundef 0) #18
  br label %38

19:                                               ; preds = %14
  %20 = icmp eq i32 %3, 1
  %21 = load i32, ptr %0, align 8
  br i1 %20, label %22, label %43, !prof !658

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
  %32 = load i8, ptr %31, align 1, !tbaa !405
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
  br i1 %45, label %49, label %54, !prof !658

46:                                               ; preds = %22
  %47 = and i32 %21, 65535
  %48 = icmp eq i32 %47, 41
  br i1 %48, label %49, label %67, !prof !658

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
  br i1 %55, label %100, label %56, !prof !659

56:                                               ; preds = %54
  %57 = sext i32 %3 to i64
  %58 = getelementptr inbounds [87 x i8], ptr @direct_store, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !405
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %67, !prof !658

61:                                               ; preds = %56
  %62 = zext i32 %3 to i64
  %63 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !405
  %65 = and i8 %64, -2
  %66 = icmp eq i8 %65, 10
  br i1 %66, label %67, label %100

67:                                               ; preds = %46, %61, %56
  %68 = phi i32 [ %44, %61 ], [ %44, %56 ], [ %47, %46 ]
  %69 = trunc i32 %68 to i16
  switch i16 %69, label %70 [
    i16 37, label %100
    i16 39, label %100
  ], !prof !660

70:                                               ; preds = %67
  br i1 %20, label %87, label %71, !prof !658

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !405
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75, !prof !658

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.mem_attrs, ptr %73, i64 0, i32 4
  %77 = load i32, ptr %76, align 4, !tbaa !503
  br label %78

78:                                               ; preds = %71, %75
  %79 = phi i32 [ %77, %75 ], [ 8, %71 ]
  %80 = tail call i32 @get_mode_alignment(i32 noundef %3) #17
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %84, label %82, !prof !658

82:                                               ; preds = %78
  %83 = tail call i32 @get_mode_alignment(i32 noundef %3) #17
  br label %84

84:                                               ; preds = %82, %78
  %85 = and i64 %2, 7
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %100, !prof !612

87:                                               ; preds = %84, %70
  %88 = icmp sgt i64 %1, -1
  br i1 %88, label %89, label %226, !prof !612

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !405
  %92 = getelementptr inbounds %struct.tree_type, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !405
  %94 = load i64, ptr %93, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 23
  br i1 %96, label %97, label %226, !prof !612

97:                                               ; preds = %89
  %98 = tail call i32 @compare_tree_int(ptr noundef nonnull %93, i64 noundef %1) #17
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %226, label %100, !prof !612

100:                                              ; preds = %61, %67, %67, %97, %84, %54
  %101 = tail call fastcc ptr @get_def_for_expr(ptr noundef nonnull %4, i32 noundef 116) #18
  %102 = icmp eq ptr %101, null
  br i1 %102, label %151, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !405
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
  %126 = load i8, ptr %125, align 1, !tbaa !405
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
  %138 = load ptr, ptr %137, align 8, !tbaa !405
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
  %157 = load ptr, ptr %156, align 8, !tbaa !405
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
  %172 = load ptr, ptr %156, align 8, !tbaa !405
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
  %202 = load i8, ptr %201, align 1, !tbaa !405
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
  %225 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  br label %38

226:                                              ; preds = %97, %89, %87
  %227 = sdiv i64 %2, 8
  %228 = tail call ptr @adjust_address_1(ptr noundef nonnull %0, i32 noundef %3, i64 noundef %227, i32 noundef 1, i32 noundef 1) #17
  %229 = icmp eq ptr %228, %0
  br i1 %229, label %230, label %232, !prof !658

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
  br i1 %238, label %239, label %248, !prof !612

239:                                              ; preds = %232
  %240 = getelementptr inbounds %struct.rtx_def, ptr %233, i64 0, i32 1, i32 0, i32 0, i64 1
  %241 = load ptr, ptr %240, align 8, !tbaa !405
  %242 = icmp eq ptr %241, null
  br i1 %242, label %248, label %243, !prof !658

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.mem_attrs, ptr %241, i64 0, i32 3
  %245 = load i32, ptr %244, align 8, !tbaa !661
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %248, label %247, !prof !612

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
define dso_local noundef zeroext i8 @emit_storent_insn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !469 {
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !442
  %9 = icmp eq i32 %8, 2956
  br i1 %9, label %41, label %10

10:                                               ; preds = %2
  %11 = zext i32 %8 to i64
  %12 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !419
  %14 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 0, i32 2
  %15 = load i16, ptr %14, align 8
  %16 = zext i16 %15 to i32
  %17 = load ptr, ptr %13, align 8, !tbaa !421
  %18 = tail call i32 %17(ptr noundef nonnull %0, i32 noundef %16) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 1
  %22 = getelementptr inbounds %struct.insn_operand_data, ptr %13, i64 1, i32 2
  %23 = load i16, ptr %22, align 8
  %24 = zext i16 %23 to i32
  %25 = load ptr, ptr %21, align 8, !tbaa !421
  %26 = tail call i32 %25(ptr noundef %1, i32 noundef %24) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = tail call ptr @copy_to_mode_reg(i32 noundef %24, ptr noundef %1) #17
  %30 = load ptr, ptr %21, align 8, !tbaa !421
  %31 = tail call i32 %30(ptr noundef %29, i32 noundef %24) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28, %20
  %34 = phi ptr [ %1, %20 ], [ %29, %28 ]
  %35 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %11, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !519
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
define dso_local ptr @expand_expr_real(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !662 {
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %15, label %9, !prof !663

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !405
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %22, !prof !663

15:                                               ; preds = %9, %5
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !401
  %19 = icmp eq ptr %18, null
  %20 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %21 = select i1 %19, ptr %20, ptr %18
  br label %53

22:                                               ; preds = %9
  %23 = load ptr, ptr @cfun, align 8, !tbaa !401
  %24 = icmp eq ptr %23, null
  br i1 %24, label %51, label %25, !prof !663

25:                                               ; preds = %22
  %26 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %27 = load i32, ptr %26, align 4, !tbaa !438
  %28 = add i32 %27, -4
  %29 = icmp ult i32 %28, 7
  br i1 %29, label %30, label %51, !prof !664

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !405
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %51, label %34, !prof !665

34:                                               ; preds = %30
  %35 = load i32, ptr @input_location, align 4, !tbaa !438
  %36 = tail call i32 @get_curr_insn_source_location() #17
  %37 = tail call ptr @get_curr_insn_block() #17
  %38 = load i64, ptr %0, align 8
  %39 = and i64 %38, 65535
  %40 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !438
  %42 = add i32 %41, -4
  %43 = icmp ult i32 %42, 7
  br i1 %43, label %44, label %46, !prof !666

44:                                               ; preds = %34
  %45 = load i32, ptr %31, align 8, !tbaa !405
  br label %46

46:                                               ; preds = %34, %44
  %47 = phi i32 [ %45, %44 ], [ 0, %34 ]
  store i32 %47, ptr @input_location, align 4, !tbaa !438
  tail call void @set_curr_insn_source_location(i32 noundef %47) #17
  %48 = tail call ptr @tree_block(ptr noundef nonnull %0) #17
  %49 = load ptr, ptr %48, align 8, !tbaa !401
  tail call void @set_curr_insn_block(ptr noundef %49) #17
  %50 = tail call ptr @expand_expr_real_1(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #18
  store i32 %35, ptr @input_location, align 4, !tbaa !438
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
define dso_local i64 @highest_pow2_factor(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !667 {
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
  ], !prof !668

9:                                                ; preds = %5
  %10 = and i64 %7, 134217728
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12, !prof !669

12:                                               ; preds = %9
  %13 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !438
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i64 128, i64 256
  br label %35

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.tree_int_cst, ptr %6, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !405
  %20 = sub i64 0, %19
  %21 = and i64 %19, %20
  %22 = icmp eq i64 %21, 0
  %23 = load i32, ptr @ix86_isa_flags, align 4
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i64 128, i64 256
  %27 = select i1 %22, i64 %26, i64 %21, !prof !670
  br label %35

28:                                               ; preds = %5, %5, %5, %5
  %29 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !405
  %31 = tail call i64 @highest_pow2_factor(ptr noundef %30) #18
  %32 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !405
  %34 = tail call i64 @llvm.umin.i64(i64 %31, i64 %3)
  br label %2

35:                                               ; preds = %5, %12, %17, %56, %62, %46, %52, %73, %38
  %36 = phi i64 [ %80, %73 ], [ %45, %38 ], [ %16, %12 ], [ %27, %17 ], [ %63, %62 ], [ 1, %56 ], [ 1, %46 ], [ 1, %52 ], [ 1, %5 ]
  %37 = tail call i64 @llvm.umin.i64(i64 %36, i64 %3)
  ret i64 %37

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !405
  %41 = tail call i64 @highest_pow2_factor(ptr noundef %40) #18
  %42 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !405
  %44 = tail call i64 @highest_pow2_factor(ptr noundef %43) #18
  %45 = mul i64 %44, %41
  br label %35

46:                                               ; preds = %5, %5, %5, %5
  %47 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %48 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !405
  %50 = tail call i32 @integer_pow2p(ptr noundef %49) #17
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %35, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %48, align 8, !tbaa !405
  %54 = tail call i32 @host_integerp(ptr noundef %53, i32 noundef 1) #17
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %35, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %47, align 8, !tbaa !405
  %58 = tail call i64 @highest_pow2_factor(ptr noundef %57) #18
  %59 = load ptr, ptr %48, align 8, !tbaa !405
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
  %68 = load ptr, ptr %67, align 8, !tbaa !405
  br label %5

69:                                               ; preds = %5, %5, %5
  %70 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  br label %66

71:                                               ; preds = %5
  %72 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  br label %66

73:                                               ; preds = %5
  %74 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !405
  %76 = tail call i64 @highest_pow2_factor(ptr noundef %75) #18
  %77 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !405
  %79 = tail call i64 @highest_pow2_factor(ptr noundef %78) #18
  %80 = tail call i64 @llvm.umin.i64(i64 %76, i64 %79)
  br label %35
}

; Function Attrs: optsize
declare void @emit_cmp_and_jump_insns(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @force_operand(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !671 {
  %3 = tail call fastcc ptr @get_subtarget(ptr noundef %1) #18
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %28, !prof !672

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !405
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
  %19 = load ptr, ptr %8, align 8, !tbaa !405
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load i32, ptr %23, align 8, !tbaa !405
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
  br i1 %34, label %35, label %54, !prof !673

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !405
  %38 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !401
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %54, !prof !674

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !405
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
  %62 = load i32, ptr %61, align 4, !tbaa !438
  %63 = and i32 %62, -2
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %181, !prof !675

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %67 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !405
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !438
  %74 = icmp eq i32 %73, 9
  %75 = icmp ne i32 %70, 37
  %76 = icmp eq ptr %68, %3
  %77 = select i1 %75, i1 true, i1 %76
  %78 = select i1 %77, ptr null, ptr %3
  %79 = select i1 %74, ptr %3, ptr %78, !prof !676
  br i1 %56, label %80, label %90, !prof !677

80:                                               ; preds = %65
  %81 = icmp eq i32 %70, 30
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  %83 = load ptr, ptr %66, align 8, !tbaa !405
  br label %128

84:                                               ; preds = %80
  %85 = lshr i32 %55, 16
  %86 = and i32 %85, 255
  %87 = tail call ptr @negate_rtx(i32 noundef %86, ptr noundef nonnull %68) #17
  %88 = load i32, ptr %87, align 8
  %89 = load ptr, ptr %66, align 8, !tbaa !405
  br label %93

90:                                               ; preds = %65
  %91 = icmp eq i32 %57, 49
  %92 = load ptr, ptr %66, align 8, !tbaa !405
  br i1 %91, label %93, label %134, !prof !678

93:                                               ; preds = %84, %90
  %94 = phi ptr [ %89, %84 ], [ %92, %90 ]
  %95 = phi i32 [ %88, %84 ], [ %69, %90 ]
  %96 = phi ptr [ %87, %84 ], [ %68, %90 ]
  %97 = and i32 %95, 65535
  %98 = icmp eq i32 %97, 30
  br i1 %98, label %99, label %128, !prof !679

99:                                               ; preds = %93
  %100 = load i32, ptr %94, align 8
  %101 = and i32 %100, 65535
  %102 = icmp eq i32 %101, 49
  br i1 %102, label %103, label %128, !prof !674

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !405
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
  %123 = load ptr, ptr %66, align 8, !tbaa !405
  %124 = getelementptr inbounds %struct.rtx_def, ptr %123, i64 0, i32 1, i32 0, i32 0, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !405
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
  ], !prof !680

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
  %148 = load i8, ptr %147, align 1, !tbaa !405
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
  br i1 %182, label %183, label %209, !prof !681

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
  %192 = load ptr, ptr %191, align 8, !tbaa !405
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
  br i1 %210, label %211, label %113, !prof !681

211:                                              ; preds = %209
  %212 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !405
  %214 = load i32, ptr %213, align 8
  %215 = and i32 %214, 65535
  %216 = icmp eq i32 %215, 43
  br i1 %216, label %217, label %113

217:                                              ; preds = %211
  %218 = lshr i32 %55, 16
  %219 = and i32 %218, 255
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !405
  %223 = lshr i32 %214, 16
  %224 = and i32 %223, 255
  %225 = zext nneg i32 %224 to i64
  %226 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !405
  %228 = icmp ugt i8 %222, %227
  br i1 %228, label %229, label %113

229:                                              ; preds = %217
  %230 = tail call ptr @force_operand(ptr noundef nonnull %213, ptr noundef null) #18
  %231 = tail call ptr @force_reg(i32 noundef %224, ptr noundef %230) #17
  %232 = load ptr, ptr %212, align 8, !tbaa !405
  %233 = load i32, ptr %232, align 8
  %234 = lshr i32 %233, 16
  %235 = and i32 %234, 255
  %236 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 0, i64 1
  %237 = load i32, ptr %236, align 8, !tbaa !405
  %238 = tail call ptr @simplify_gen_subreg(i32 noundef %219, ptr noundef %231, i32 noundef %235, i32 noundef %237) #17
  br label %113
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @categorize_ctor_elements(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !prof !469 {
  store i64 0, ptr %1, align 8, !tbaa !536
  store i64 0, ptr %2, align 8, !tbaa !536
  store i8 0, ptr %3, align 1, !tbaa !405
  %5 = tail call fastcc zeroext i8 @categorize_ctor_elements_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #18, !range !591
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @categorize_ctor_elements_1(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !469 !PGOFuncName !682 {
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
  %18 = load ptr, ptr %17, align 8, !tbaa !405
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
  %30 = load ptr, ptr %29, align 8, !tbaa !683
  %31 = load ptr, ptr %28, align 8, !tbaa !685
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 111
  br i1 %34, label %35, label %50

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !405
  %38 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !405
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
  store i64 0, ptr %5, align 8, !tbaa !536
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store i64 0, ptr %6, align 8, !tbaa !536
  %55 = call fastcc zeroext i8 @categorize_ctor_elements_1(ptr noundef nonnull %30, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %3) #18, !range !591
  %56 = load i64, ptr %5, align 8, !tbaa !536
  %57 = mul nsw i64 %56, %51
  %58 = add nsw i64 %57, %24
  %59 = load i64, ptr %6, align 8, !tbaa !536
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
  %73 = load i32, ptr %72, align 8, !tbaa !405
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %51, %74
  %76 = add nsw i64 %75, %24
  %77 = add nsw i64 %75, %25
  br label %121

78:                                               ; preds = %50
  %79 = getelementptr inbounds %struct.tree_complex, ptr %30, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !405
  %81 = tail call zeroext i8 @initializer_zerop(ptr noundef %80) #17
  %82 = icmp eq i8 %81, 0
  %83 = select i1 %82, i64 %51, i64 0
  %84 = add nsw i64 %83, %24
  %85 = getelementptr inbounds %struct.tree_complex, ptr %30, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !405
  %87 = tail call zeroext i8 @initializer_zerop(ptr noundef %86) #17
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, i64 %51, i64 0
  %90 = add nsw i64 %84, %89
  %91 = add nsw i64 %51, %25
  br label %121

92:                                               ; preds = %50
  %93 = getelementptr inbounds %struct.tree_vector, ptr %30, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !405
  %95 = icmp eq ptr %94, null
  br i1 %95, label %121, label %96

96:                                               ; preds = %92, %96
  %97 = phi ptr [ %108, %96 ], [ %94, %92 ]
  %98 = phi i64 [ %105, %96 ], [ %24, %92 ]
  %99 = phi i64 [ %106, %96 ], [ %25, %92 ]
  %100 = getelementptr inbounds %struct.tree_list, ptr %97, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !405
  %102 = tail call zeroext i8 @initializer_zerop(ptr noundef %101) #17
  %103 = icmp eq i8 %102, 0
  %104 = select i1 %103, i64 %51, i64 0
  %105 = add nsw i64 %104, %98
  %106 = add nsw i64 %99, %51
  %107 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !405
  %109 = icmp eq ptr %108, null
  br i1 %109, label %121, label %96, !llvm.loop !686

110:                                              ; preds = %50
  %111 = add nsw i64 %51, %24
  %112 = add nsw i64 %51, %25
  %113 = icmp ne i8 %26, 0
  %114 = select i1 %8, i1 %113, i1 false
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !405
  %118 = tail call ptr @initializer_constant_valid_p(ptr noundef nonnull %30, ptr noundef %117) #17
  %119 = icmp ne ptr %118, null
  %120 = zext i1 %119 to i8
  br label %121

121:                                              ; preds = %96, %92, %110, %115, %78, %71, %65, %54
  %122 = phi i8 [ %120, %115 ], [ %26, %110 ], [ %26, %78 ], [ %26, %71 ], [ %26, %65 ], [ %64, %54 ], [ %26, %92 ], [ %26, %96 ]
  %123 = phi i64 [ %112, %115 ], [ %112, %110 ], [ %91, %78 ], [ %77, %71 ], [ %70, %65 ], [ %61, %54 ], [ %25, %92 ], [ %106, %96 ]
  %124 = phi i64 [ %111, %115 ], [ %111, %110 ], [ %90, %78 ], [ %76, %71 ], [ %69, %65 ], [ %58, %54 ], [ %24, %92 ], [ %105, %96 ]
  %125 = add nuw nsw i64 %23, 1
  %126 = load ptr, ptr %17, align 8, !tbaa !405
  %127 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %126) #18
  %128 = zext i32 %127 to i64
  %129 = icmp ult i64 %125, %128
  br i1 %129, label %21, label %130, !llvm.loop !687

130:                                              ; preds = %121, %15
  %131 = phi ptr [ %18, %15 ], [ %126, %121 ]
  %132 = phi i8 [ %16, %15 ], [ %122, %121 ]
  %133 = phi i64 [ 0, %15 ], [ %123, %121 ]
  %134 = phi i64 [ 0, %15 ], [ %124, %121 ]
  %135 = phi i32 [ 0, %15 ], [ %127, %121 ]
  %136 = load i8, ptr %3, align 1, !tbaa !405
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %170

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !405
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
  %148 = load ptr, ptr %17, align 8, !tbaa !405
  %149 = load ptr, ptr %139, align 8, !tbaa !405
  br label %150

150:                                              ; preds = %146, %147
  %151 = phi ptr [ %140, %146 ], [ %149, %147 ]
  %152 = phi ptr [ %131, %146 ], [ %148, %147 ]
  %153 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %152, i32 noundef 0) #18
  %154 = getelementptr inbounds %struct.constructor_elt_d, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !683
  %156 = getelementptr inbounds %struct.tree_common, ptr %155, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !405
  %158 = getelementptr inbounds %struct.tree_type, ptr %151, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !405
  %160 = getelementptr inbounds %struct.tree_type, ptr %157, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !405
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
  store i8 %169, ptr %3, align 1, !tbaa !405
  br label %170

170:                                              ; preds = %138, %168, %130
  %171 = load i64, ptr %1, align 8, !tbaa !536
  %172 = add nsw i64 %171, %134
  store i64 %172, ptr %1, align 8, !tbaa !536
  %173 = load i64, ptr %2, align 8, !tbaa !536
  %174 = add nsw i64 %173, %133
  store i64 %174, ptr %2, align 8, !tbaa !536
  ret i8 %132
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @count_type_elements(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !469 {
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
  %15 = load ptr, ptr %14, align 8, !tbaa !405
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
  %25 = load ptr, ptr %24, align 8, !tbaa !405
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
  %35 = load ptr, ptr %34, align 8, !tbaa !405
  %36 = tail call i64 @count_type_elements(ptr noundef %35, i8 noundef zeroext 0) #18
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !405
  %41 = icmp eq i8 %1, 0
  br i1 %41, label %69, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !405
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = load i64, ptr %40, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 15
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !405
  %53 = icmp eq ptr %52, null
  br i1 %53, label %69, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 13
  %56 = load ptr, ptr %55, align 8, !tbaa !405
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %54
  %59 = tail call i32 @integer_zerop(ptr noundef nonnull %56) #17
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %51, align 8, !tbaa !405
  %63 = getelementptr inbounds %struct.tree_type, ptr %62, i64 0, i32 14
  %64 = load ptr, ptr %63, align 8, !tbaa !405
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
  %75 = load ptr, ptr %74, align 8, !tbaa !405
  %76 = icmp eq ptr %75, null
  br i1 %76, label %87, label %27, !llvm.loop !688

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
define dso_local ptr @component_ref_field_offset(ptr noundef %0) local_unnamed_addr #0 !prof !689 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !405
  %4 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !405
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !438
  %10 = add i32 %9, -4
  %11 = icmp ult i32 %10, 7
  br i1 %11, label %12, label %15, !prof !690

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !405
  br label %15

15:                                               ; preds = %1, %12
  %16 = phi i32 [ %14, %12 ], [ 0, %1 ]
  %17 = icmp eq ptr %3, null
  br i1 %17, label %35, label %18, !prof !691

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !405
  %21 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
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
  %37 = load ptr, ptr %36, align 8, !tbaa !405
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39, !prof !692

39:                                               ; preds = %35
  %40 = load i64, ptr %37, align 8
  %41 = and i64 %40, 131072
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45, !prof !692

43:                                               ; preds = %39
  %44 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %37, ptr noundef nonnull %0) #17
  br label %45

45:                                               ; preds = %35, %39, %43, %25
  %46 = phi ptr [ %34, %25 ], [ %44, %43 ], [ %37, %39 ], [ null, %35 ]
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @array_ref_low_bound(ptr noundef %0) local_unnamed_addr #0 !prof !693 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !405
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !405
  %6 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !405
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !405
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %29, !prof !694

11:                                               ; preds = %1
  %12 = icmp eq ptr %7, null
  br i1 %12, label %23, label %13, !prof !695

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !405
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17, !prof !695

17:                                               ; preds = %13
  %18 = load i64, ptr %15, align 8
  %19 = and i64 %18, 131072
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %29, !prof !695

21:                                               ; preds = %17
  %22 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %15, ptr noundef nonnull %0) #17
  br label %29

23:                                               ; preds = %13, %11
  %24 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !405
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !405
  %28 = tail call ptr @build_int_cst(ptr noundef %27, i64 noundef 0) #17
  br label %29

29:                                               ; preds = %17, %21, %1, %23
  %30 = phi ptr [ %28, %23 ], [ %9, %1 ], [ %22, %21 ], [ %15, %17 ]
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @array_ref_element_size(ptr noundef %0) local_unnamed_addr #0 !prof !696 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !405
  %5 = load ptr, ptr %2, align 8, !tbaa !405
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !405
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !405
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 65535
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !438
  %14 = add i32 %13, -4
  %15 = icmp ult i32 %14, 7
  br i1 %15, label %16, label %19, !prof !697

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !405
  br label %19

19:                                               ; preds = %1, %16
  %20 = phi i32 [ %18, %16 ], [ 0, %1 ]
  %21 = icmp eq ptr %4, null
  br i1 %21, label %37, label %22, !prof !698

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !405
  %25 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %29, label %27, !prof !699

27:                                               ; preds = %22
  %28 = tail call ptr @fold_convert_loc(i32 noundef %20, ptr noundef %25, ptr noundef nonnull %4) #17
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi ptr [ %28, %27 ], [ %4, %22 ]
  %31 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !405
  %33 = lshr i32 %32, 3
  %34 = zext nneg i32 %33 to i64
  %35 = tail call ptr @size_int_kind(i64 noundef %34, i32 noundef 0) #17
  %36 = tail call ptr @size_binop_loc(i32 noundef %20, i32 noundef 65, ptr noundef %30, ptr noundef %35) #17
  br label %47

37:                                               ; preds = %19
  %38 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !405
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41, !prof !700

41:                                               ; preds = %37
  %42 = load i64, ptr %39, align 8
  %43 = and i64 %42, 131072
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47, !prof !700

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
define dso_local zeroext i8 @contains_packed_reference(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !469 {
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
  %9 = load ptr, ptr %8, align 8, !tbaa !405
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 2199023255552
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !405
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 2199023255552
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !405
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
  %31 = load ptr, ptr %30, align 8, !tbaa !405
  br label %2

32:                                               ; preds = %19, %7, %13, %2
  %33 = phi i8 [ %4, %2 ], [ 1, %13 ], [ 1, %7 ], [ %27, %19 ]
  ret i8 %33
}

; Function Attrs: optsize
declare ptr @substitute_placeholder_in_expr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @array_ref_up_bound(ptr noundef %0) local_unnamed_addr #0 !prof !469 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !405
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !405
  %6 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !405
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !405
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
define internal fastcc ptr @get_subtarget(ptr noundef readonly %0) unnamed_addr #9 !prof !701 !PGOFuncName !702 {
  %2 = load i32, ptr @optimize, align 4, !tbaa !438
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %14, !prof !703

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 37
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #18
  %12 = icmp ult i32 %11, 53
  %13 = select i1 %12, ptr null, ptr %0
  br label %14

14:                                               ; preds = %10, %1, %4, %6
  %15 = phi ptr [ null, %6 ], [ null, %4 ], [ null, %1 ], [ %13, %10 ]
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
define dso_local i32 @safe_from_p(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !704 {
  %4 = alloca ptr, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %252, label %6, !prof !705

6:                                                ; preds = %3, %138
  %7 = phi i32 [ 0, %138 ], [ %2, %3 ]
  %8 = phi ptr [ %139, %138 ], [ %1, %3 ]
  %9 = phi ptr [ %66, %138 ], [ %0, %3 ]
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !405
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !405
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
  %29 = load ptr, ptr %28, align 8, !tbaa !405
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
  %44 = load ptr, ptr %43, align 8, !tbaa !405
  %45 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !401
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %252, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %44, align 8
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !405
  %54 = icmp eq ptr %53, %45
  br i1 %54, label %252, label %64

55:                                               ; preds = %39
  %56 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !405
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
  %70 = load i32, ptr %69, align 4, !tbaa !438
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
  %73 = load i8, ptr %72, align 1, !tbaa !405
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
  %80 = load ptr, ptr %79, align 8, !tbaa !405
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = tail call i32 @safe_from_p(ptr noundef nonnull %66, ptr noundef nonnull %80, i32 noundef 0) #18, !range !706
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %252, label %85

85:                                               ; preds = %82, %77
  %86 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !405
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
  %95 = load ptr, ptr %94, align 8, !tbaa !405
  %96 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %95, i32 noundef 0, ptr noundef nonnull %4) #18, !range !706
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %116, label %103

98:                                               ; preds = %111
  %99 = add i32 %104, 1
  %100 = load ptr, ptr %94, align 8, !tbaa !405
  %101 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %100, i32 noundef %99, ptr noundef nonnull %4) #18, !range !706
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %116, label %103, !llvm.loop !707

103:                                              ; preds = %93, %98
  %104 = phi i32 [ %99, %98 ], [ 0, %93 ]
  %105 = load ptr, ptr %4, align 8, !tbaa !401
  %106 = load ptr, ptr %105, align 8, !tbaa !685
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = tail call i32 @safe_from_p(ptr noundef nonnull %66, ptr noundef nonnull %106, i32 noundef 0) #18, !range !706
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108, %103
  %112 = getelementptr inbounds %struct.constructor_elt_d, ptr %105, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !683
  %114 = tail call i32 @safe_from_p(ptr noundef nonnull %66, ptr noundef %113, i32 noundef 0) #18, !range !706
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
  %122 = load ptr, ptr %121, align 8, !tbaa !405
  %123 = load i64, ptr %122, align 8
  %124 = and i64 %123, 65535
  %125 = icmp eq i64 %124, 32
  br i1 %125, label %126, label %252

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.tree_decl_common, ptr %122, i64 0, i32 5
  %128 = load ptr, ptr %127, align 8, !tbaa !405
  %129 = icmp eq ptr %128, null
  br i1 %129, label %252, label %138

130:                                              ; preds = %64, %64
  %131 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %132 = load ptr, ptr %131, align 8, !tbaa !405
  %133 = tail call i32 @safe_from_p(ptr noundef nonnull %66, ptr noundef %132, i32 noundef 0) #18, !range !706
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %252, label %135

135:                                              ; preds = %64, %130, %194, %140
  %136 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !405
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
  %144 = load ptr, ptr %143, align 8, !tbaa !405
  %145 = tail call ptr @staticp(ptr noundef %144) #17
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %252

147:                                              ; preds = %142
  %148 = load i64, ptr %8, align 8
  %149 = and i64 %148, 67108864
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %252

151:                                              ; preds = %147
  %152 = load ptr, ptr %143, align 8, !tbaa !405
  %153 = tail call i32 @safe_from_p(ptr noundef nonnull %66, ptr noundef %152, i32 noundef 0) #18, !range !706
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %252

155:                                              ; preds = %151
  %156 = load ptr, ptr %143, align 8, !tbaa !405
  %157 = load i64, ptr %156, align 8
  %158 = and i64 %157, 65535
  %159 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !438
  %161 = icmp eq i32 %160, 3
  br i1 %161, label %162, label %199

162:                                              ; preds = %155
  %163 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %158, i64 11
  %164 = load i8, ptr %163, align 1, !tbaa !405
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %252, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %156, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !405
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
  %179 = load ptr, ptr %178, align 8, !tbaa !405
  %180 = icmp eq ptr %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.mem_attrs, ptr %179, i64 0, i32 3
  %183 = load i32, ptr %182, align 8, !tbaa !661
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
  %197 = load ptr, ptr %196, align 8, !tbaa !405
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
  %208 = load ptr, ptr %207, align 8, !tbaa !405
  %209 = icmp eq ptr %208, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %205
  %211 = tail call i32 @safe_from_p(ptr noundef nonnull %66, ptr noundef nonnull %208, i32 noundef 0) #18, !range !706
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %252, label %213

213:                                              ; preds = %205, %210
  %214 = add nuw nsw i64 %206, 1
  %215 = icmp eq i64 %214, %204
  br i1 %215, label %252, label %205, !llvm.loop !708

216:                                              ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6646, ptr noundef nonnull @.str.1) #17
  br label %252

217:                                              ; preds = %71
  %218 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %8, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !405
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
  %228 = load ptr, ptr %227, align 8, !tbaa !405
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
define internal fastcc noundef i32 @VEC_constructor_elt_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !469 !PGOFuncName !709 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !710
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !401
  ret i32 %13
}

; Function Attrs: optsize
declare ptr @staticp(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @alias_sets_conflict_p(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !469 !PGOFuncName !712 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !438
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !405
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !405
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !405
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
define dso_local ptr @expand_expr_real_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !713 {
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
  %28 = load i32, ptr %27, align 4, !tbaa !438
  %29 = freeze i32 %28
  %30 = add i32 %29, -4
  %31 = icmp ult i32 %30, 7
  br i1 %31, label %32, label %35, !prof !714

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !405
  br label %35

35:                                               ; preds = %5, %32
  %36 = phi i32 [ %34, %32 ], [ 0, %5 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #16
  %37 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !405
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 14
  br i1 %41, label %42, label %49, !prof !715

42:                                               ; preds = %35
  %43 = tail call i32 @vector_type_mode(ptr noundef nonnull %38) #17
  %44 = load i64, ptr %38, align 8
  %45 = load i64, ptr %0, align 8
  %46 = and i64 %45, 65535
  %47 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !438
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
  store i32 %62, ptr %8, align 4, !tbaa !438
  %63 = icmp eq i32 %55, 9
  br i1 %63, label %79, label %64, !prof !716

64:                                               ; preds = %54
  %65 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %26
  %66 = load i8, ptr %65, align 1, !tbaa !405
  switch i8 %66, label %67 [
    i8 0, label %79
    i8 2, label %70
    i8 1, label %74
  ], !prof !717

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !405
  br label %70

70:                                               ; preds = %64, %67
  %71 = phi ptr [ %69, %67 ], [ null, %64 ]
  %72 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !405
  br label %74

74:                                               ; preds = %64, %70
  %75 = phi ptr [ %71, %70 ], [ null, %64 ]
  %76 = phi ptr [ %73, %70 ], [ null, %64 ]
  %77 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !405
  br label %79

79:                                               ; preds = %64, %74, %54
  %80 = phi ptr [ null, %54 ], [ %75, %74 ], [ null, %64 ]
  %81 = phi ptr [ null, %54 ], [ %76, %74 ], [ null, %64 ]
  %82 = phi ptr [ null, %54 ], [ %78, %74 ], [ null, %64 ]
  store i32 %25, ptr %9, align 8, !tbaa !718
  %83 = getelementptr inbounds %struct.separate_ops, ptr %9, i64 0, i32 1
  store ptr %38, ptr %83, align 8, !tbaa !720
  %84 = getelementptr inbounds %struct.separate_ops, ptr %9, i64 0, i32 2
  store ptr %82, ptr %84, align 8, !tbaa !721
  %85 = getelementptr inbounds %struct.separate_ops, ptr %9, i64 0, i32 3
  store ptr %81, ptr %85, align 8, !tbaa !722
  %86 = getelementptr inbounds %struct.separate_ops, ptr %9, i64 0, i32 4
  store ptr %80, ptr %86, align 8, !tbaa !723
  %87 = getelementptr inbounds %struct.separate_ops, ptr %9, i64 0, i32 5
  store i32 %36, ptr %87, align 8, !tbaa !724
  %88 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %89 = icmp eq ptr %88, %1
  br i1 %89, label %102, label %90, !prof !725

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
  br i1 %97, label %102, label %98, !prof !726

98:                                               ; preds = %92, %94
  %99 = phi i64 [ %93, %92 ], [ %95, %94 ]
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 8
  br i1 %101, label %152, label %164, !prof !727

102:                                              ; preds = %79, %94
  %103 = and i64 %57, 65536
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %1946, label %105, !prof !728

105:                                              ; preds = %102
  %106 = and i64 %57, 524288
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %125, label %108, !prof !729

108:                                              ; preds = %105
  %109 = icmp ne i64 %56, 29
  %110 = icmp ne i32 %59, 0
  %111 = select i1 %109, i1 %110, i1 false
  %112 = icmp ne i32 %59, 1
  %113 = select i1 %111, i1 %112, i1 false
  %114 = icmp ne i32 %3, 3
  %115 = and i1 %114, %113
  br i1 %115, label %116, label %125

116:                                              ; preds = %108
  %117 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, i32 noundef %3) #18
  %118 = load i32, ptr %117, align 8
  %119 = and i32 %118, 65535
  %120 = icmp eq i32 %119, 43
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = tail call ptr @copy_to_reg(ptr noundef nonnull %117) #17
  br label %123

123:                                              ; preds = %121, %116
  %124 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  br label %1946

125:                                              ; preds = %108, %105
  %126 = icmp eq i32 %29, 6
  br i1 %126, label %129, label %127

127:                                              ; preds = %125
  %128 = trunc i64 %23 to i16
  switch i16 %128, label %131 [
    i16 47, label %129
    i16 41, label %129
  ]

129:                                              ; preds = %127, %127, %125
  %130 = tail call fastcc ptr @expand_expr(ptr noundef %82, ptr noundef %88, i32 noundef 0, i32 noundef %3) #18
  br label %1946

131:                                              ; preds = %127
  %132 = icmp eq i32 %29, 7
  br i1 %132, label %138, label %133, !prof !728

133:                                              ; preds = %131
  %134 = icmp eq i32 %29, 5
  %135 = add nsw i32 %25, -45
  %136 = icmp ult i32 %135, 2
  %137 = or i1 %134, %136
  br i1 %137, label %138, label %143, !prof !730

138:                                              ; preds = %133, %131
  %139 = tail call fastcc ptr @expand_expr(ptr noundef %82, ptr noundef %88, i32 noundef 0, i32 noundef %3) #18
  %140 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %141 = tail call fastcc ptr @expand_expr(ptr noundef %81, ptr noundef %140, i32 noundef 0, i32 noundef %3) #18
  %142 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  br label %1946

143:                                              ; preds = %133
  %144 = icmp eq i32 %25, 42
  br i1 %144, label %145, label %164, !prof !728

145:                                              ; preds = %143
  %146 = tail call fastcc ptr @expand_expr(ptr noundef %82, ptr noundef %88, i32 noundef 0, i32 noundef %3) #18
  %147 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %148 = tail call fastcc ptr @expand_expr(ptr noundef %81, ptr noundef %147, i32 noundef 0, i32 noundef %3) #18
  %149 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %150 = tail call fastcc ptr @expand_expr(ptr noundef %80, ptr noundef %149, i32 noundef 0, i32 noundef %3) #18
  %151 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  br label %1946

152:                                              ; preds = %98
  %153 = zext i32 %59 to i64
  %154 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %153
  %155 = load i16, ptr %154, align 2, !tbaa !440
  %156 = zext i16 %155 to i32
  %157 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 6
  %158 = load i32, ptr %157, align 4
  %159 = and i32 %158, 1023
  %160 = icmp ult i32 %159, %156
  br i1 %160, label %161, label %164, !prof !731

161:                                              ; preds = %152
  %162 = icmp eq i32 %3, 1
  %163 = select i1 %162, ptr null, ptr %1
  br label %164

164:                                              ; preds = %98, %143, %161, %152
  %165 = phi i16 [ %91, %98 ], [ %128, %143 ], [ %91, %161 ], [ %91, %152 ]
  %166 = phi i32 [ 0, %98 ], [ 1, %143 ], [ 0, %161 ], [ 0, %152 ]
  %167 = phi i1 [ false, %98 ], [ true, %143 ], [ false, %161 ], [ false, %152 ]
  %168 = phi ptr [ %1, %98 ], [ null, %143 ], [ %163, %161 ], [ %1, %152 ]
  %169 = tail call fastcc ptr @get_subtarget(ptr noundef %168) #18
  switch i16 %165, label %1944 [
    i16 30, label %170
    i16 141, label %183
    i16 34, label %200
    i16 32, label %200
    i16 29, label %242
    i16 36, label %242
    i16 23, label %373
    i16 27, label %379
    i16 33, label %401
    i16 24, label %405
    i16 25, label %422
    i16 26, label %439
    i16 28, label %478
    i16 120, label %499
    i16 51, label %540
    i16 49, label %564
    i16 48, label %564
    i16 47, label %564
    i16 152, label %619
    i16 45, label %629
    i16 41, label %792
    i16 42, label %876
    i16 46, label %876
    i16 50, label %1404
    i16 59, label %1408
    i16 118, label %1454
    i16 91, label %1707
    i16 92, label %1707
    i16 147, label %1750
    i16 56, label %1769
    i16 57, label %1830
    i16 53, label %1832
    i16 121, label %1892
    i16 43, label %1894
    i16 44, label %1897
    i16 135, label %1900
    i16 133, label %1900
    i16 134, label %1900
    i16 138, label %1900
    i16 140, label %1900
    i16 130, label %1901
    i16 142, label %1901
    i16 143, label %1901
    i16 131, label %1901
    i16 60, label %1902
    i16 61, label %1902
    i16 55, label %1902
    i16 139, label %1902
    i16 129, label %1902
    i16 58, label %1902
    i16 54, label %1902
    i16 124, label %1902
    i16 52, label %1902
    i16 126, label %1902
    i16 125, label %1902
    i16 128, label %1902
    i16 127, label %1902
    i16 137, label %1902
    i16 136, label %1902
    i16 122, label %1903
    i16 150, label %1904
    i16 151, label %1906
    i16 167, label %1915
    i16 119, label %1921
  ], !prof !732

170:                                              ; preds = %164
  %171 = tail call ptr @decl_function_context(ptr noundef nonnull %0) #17
  %172 = tail call ptr @label_rtx(ptr noundef nonnull %0) #17
  %173 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %172) #17
  %174 = load ptr, ptr @current_function_decl, align 8, !tbaa !401
  %175 = icmp ne ptr %171, %174
  %176 = icmp ne ptr %171, null
  %177 = and i1 %176, %175
  br i1 %177, label %178, label %181

178:                                              ; preds = %170
  %179 = load i32, ptr %173, align 8
  %180 = or i32 %179, 134217728
  store i32 %180, ptr %173, align 8
  br label %181

181:                                              ; preds = %178, %170
  %182 = tail call ptr @gen_rtx_MEM(i32 noundef 14, ptr noundef %173) #17
  br label %1946

183:                                              ; preds = %164
  %184 = load i32, ptr @currently_expanding_to_rtl, align 4, !tbaa !438
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %190, !prof !733

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !405
  %189 = tail call ptr @expand_expr_real_1(ptr noundef %188, ptr noundef %168, i32 noundef %2, i32 noundef %3, ptr noundef null) #18
  br label %1946

190:                                              ; preds = %183
  %191 = tail call fastcc ptr @get_gimple_for_ssa_name(ptr noundef nonnull %0) #18
  %192 = icmp eq ptr %191, null
  br i1 %192, label %196, label %193, !prof !734

193:                                              ; preds = %190
  %194 = tail call ptr @gimple_assign_rhs_to_tree(ptr noundef nonnull %191) #17
  %195 = tail call ptr @expand_expr_real(ptr noundef %194, ptr noundef %168, i32 noundef %2, i32 noundef %3, ptr noundef null) #18
  br label %1946

196:                                              ; preds = %190
  %197 = tail call fastcc ptr @get_rtx_for_ssa_name(ptr noundef nonnull %0) #18
  %198 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !405
  br label %248

200:                                              ; preds = %164, %164
  %201 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !405
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %226, !prof !735

204:                                              ; preds = %200
  %205 = load ptr, ptr %37, align 8, !tbaa !405
  %206 = load i64, ptr %205, align 8
  %207 = and i64 %206, 65535
  %208 = icmp eq i64 %207, 15
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.tree_common, ptr %205, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !405
  br label %212

212:                                              ; preds = %204, %209
  %213 = phi ptr [ %211, %209 ], [ %205, %204 ]
  %214 = getelementptr inbounds %struct.tree_type, ptr %213, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !405
  %216 = icmp eq ptr %215, null
  br i1 %216, label %226, label %217

217:                                              ; preds = %212
  %218 = and i64 %57, 67108864
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %222 = load i64, ptr %221, align 8
  %223 = and i64 %222, 33554432
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %220, %217
  tail call void @layout_decl(ptr noundef nonnull %0, i32 noundef 0) #17
  br label %226

226:                                              ; preds = %225, %220, %212, %200
  %227 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !736
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %229, label %242, !prof !735

229:                                              ; preds = %226
  %230 = load i64, ptr %0, align 8
  %231 = and i64 %230, 65535
  %232 = icmp eq i64 %231, 32
  br i1 %232, label %233, label %242

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %235 = load i32, ptr %234, align 8
  %236 = and i32 %235, 49152
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %233
  %239 = tail call fastcc ptr @emutls_var_address(ptr noundef nonnull %0) #18
  %240 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %36, ptr noundef %239) #17
  %241 = tail call ptr @expand_expr_real_1(ptr noundef %240, ptr noundef %168, i32 noundef %2, i32 noundef %3, ptr noundef null) #18
  br label %1946

242:                                              ; preds = %226, %229, %233, %164, %164
  %243 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !405
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %253, !prof !737

246:                                              ; preds = %242
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #17
  %247 = load ptr, ptr %243, align 8, !tbaa !405
  br label %248

248:                                              ; preds = %246, %196
  %249 = phi ptr [ %197, %196 ], [ %247, %246 ]
  %250 = phi ptr [ %199, %196 ], [ %0, %246 ]
  %251 = icmp eq ptr %249, null
  br i1 %251, label %252, label %253, !prof !738

252:                                              ; preds = %248
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8451, ptr noundef nonnull @.str.1) #17
  br label %253

253:                                              ; preds = %242, %248, %252
  %254 = phi ptr [ %250, %248 ], [ %250, %252 ], [ %0, %242 ]
  %255 = phi ptr [ %249, %248 ], [ null, %252 ], [ %244, %242 ]
  %256 = tail call ptr @copy_rtx(ptr noundef %255) #17
  %257 = load i64, ptr %254, align 8
  %258 = and i64 %257, 16777216
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %263, !prof !739

260:                                              ; preds = %253
  tail call void @assemble_external(ptr noundef nonnull %254) #17
  %261 = load i64, ptr %254, align 8
  %262 = or i64 %261, 16777216
  store i64 %262, ptr %254, align 8
  br label %263

263:                                              ; preds = %260, %253
  %264 = tail call ptr @decl_function_context(ptr noundef nonnull %254) #17
  %265 = icmp eq ptr %264, null
  %266 = load ptr, ptr @current_function_decl, align 8
  %267 = icmp eq ptr %264, %266
  %268 = select i1 %265, i1 true, i1 %267
  br i1 %268, label %277, label %269, !prof !740

269:                                              ; preds = %263
  %270 = load i64, ptr %254, align 8
  %271 = and i64 %270, 67108864
  %272 = icmp ne i64 %271, 0
  %273 = and i64 %270, 65535
  %274 = icmp eq i64 %273, 29
  %275 = or i1 %272, %274
  br i1 %275, label %277, label %276, !prof !741

276:                                              ; preds = %269
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8473, ptr noundef nonnull @.str.1) #17
  br label %277

277:                                              ; preds = %263, %269, %276
  %278 = load i32, ptr %256, align 8
  %279 = and i32 %278, 65535
  %280 = icmp eq i32 %279, 43
  br i1 %280, label %281, label %336, !prof !742

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !405
  %284 = load i32, ptr %283, align 8
  %285 = and i32 %284, 65535
  %286 = icmp eq i32 %285, 37
  br i1 %286, label %287, label %289, !prof !735

287:                                              ; preds = %281
  %288 = tail call ptr @validize_mem(ptr noundef nonnull %256) #17
  br label %319

289:                                              ; preds = %281
  %290 = icmp eq i32 %3, 4
  br i1 %290, label %336, label %291, !prof !743

291:                                              ; preds = %289
  %292 = icmp eq ptr %4, null
  br i1 %292, label %294, label %293, !prof !744

293:                                              ; preds = %291
  store ptr %256, ptr %4, align 8, !tbaa !401
  br label %294

294:                                              ; preds = %293, %291
  %295 = tail call ptr @use_anchored_address(ptr noundef nonnull %256) #17
  %296 = add i32 %3, -4
  %297 = icmp ult i32 %296, -2
  br i1 %297, label %298, label %336, !prof !745

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.tree_decl_common, ptr %254, i64 0, i32 2
  %300 = load i64, ptr %299, align 8
  %301 = trunc i64 %300 to i32
  %302 = and i32 %301, 255
  %303 = getelementptr inbounds %struct.rtx_def, ptr %295, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !405
  %305 = getelementptr inbounds %struct.rtx_def, ptr %295, i64 0, i32 1, i32 0, i32 0, i64 1
  %306 = load ptr, ptr %305, align 8, !tbaa !405
  %307 = icmp eq ptr %306, null
  br i1 %307, label %311, label %308, !prof !746

308:                                              ; preds = %298
  %309 = getelementptr inbounds %struct.mem_attrs, ptr %306, i64 0, i32 5
  %310 = load i8, ptr %309, align 8, !tbaa !457
  br label %311

311:                                              ; preds = %298, %308
  %312 = phi i8 [ %310, %308 ], [ 0, %298 ]
  %313 = tail call i32 @memory_address_addr_space_p(i32 noundef %302, ptr noundef %304, i8 noundef zeroext %312) #17
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %336, !prof !746

315:                                              ; preds = %311
  %316 = load ptr, ptr %303, align 8, !tbaa !405
  %317 = tail call ptr @copy_rtx(ptr noundef %316) #17
  %318 = tail call ptr @replace_equiv_address(ptr noundef nonnull %295, ptr noundef %317) #17
  br label %319

319:                                              ; preds = %315, %287
  %320 = phi ptr [ %256, %287 ], [ %295, %315 ]
  %321 = phi ptr [ %288, %287 ], [ %318, %315 ]
  %322 = icmp eq ptr %321, null
  br i1 %322, label %336, label %323, !prof !747

323:                                              ; preds = %319
  %324 = load i32, ptr %321, align 8
  %325 = and i32 %324, 65535
  %326 = icmp eq i32 %325, 43
  br i1 %326, label %327, label %1946

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.rtx_def, ptr %321, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8, !tbaa !405
  %330 = load i32, ptr %329, align 8
  %331 = and i32 %330, 65535
  %332 = icmp eq i32 %331, 37
  br i1 %332, label %333, label %1946

333:                                              ; preds = %327
  %334 = getelementptr inbounds %struct.tree_decl_common, ptr %254, i64 0, i32 3
  %335 = load i32, ptr %334, align 8, !tbaa !405
  tail call void @mark_reg_pointer(ptr noundef nonnull %329, i32 noundef %335) #17
  br label %1946

336:                                              ; preds = %277, %289, %294, %311, %319
  %337 = phi ptr [ %320, %319 ], [ %256, %289 ], [ %295, %294 ], [ %295, %311 ], [ %256, %277 ]
  %338 = load i32, ptr %337, align 8
  %339 = and i32 %338, 65535
  %340 = icmp eq i32 %339, 37
  br i1 %340, label %341, label %1946, !prof !748

341:                                              ; preds = %336
  %342 = lshr i32 %338, 16
  %343 = getelementptr inbounds %struct.tree_decl_common, ptr %254, i64 0, i32 2
  %344 = load i64, ptr %343, align 8
  %345 = trunc i64 %344 to i32
  %346 = xor i32 %342, %345
  %347 = and i32 %346, 255
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %1946, label %349, !prof !749

349:                                              ; preds = %341
  %350 = call i32 @promote_decl_mode(ptr noundef nonnull %254, ptr noundef nonnull %8) #17
  %351 = load i32, ptr %337, align 8
  %352 = lshr i32 %351, 16
  %353 = and i32 %352, 255
  %354 = icmp eq i32 %353, %350
  br i1 %354, label %356, label %355

355:                                              ; preds = %349
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8521, ptr noundef nonnull @.str.1) #17
  br label %356

356:                                              ; preds = %349, %355
  %357 = call ptr @gen_lowpart_SUBREG(i32 noundef %59, ptr noundef nonnull %337) #17
  %358 = load i32, ptr %357, align 8
  %359 = or i32 %358, 268435456
  store i32 %359, ptr %357, align 8
  %360 = load i32, ptr %8, align 4, !tbaa !438
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %356
  %363 = or i32 %358, 402653184
  br label %371

364:                                              ; preds = %356
  %365 = and i32 %359, -134217729
  store i32 %365, ptr %357, align 8
  %366 = load i32, ptr %8, align 4, !tbaa !438
  %367 = shl i32 %366, 26
  %368 = and i32 %367, 67108864
  %369 = and i32 %359, -201326593
  %370 = or disjoint i32 %368, %369
  br label %371

371:                                              ; preds = %364, %362
  %372 = phi i32 [ %370, %364 ], [ %363, %362 ]
  store i32 %372, ptr %357, align 8
  br label %1946

373:                                              ; preds = %164
  %374 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %375 = load i64, ptr %374, align 8, !tbaa !405
  %376 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %377 = load i64, ptr %376, align 8, !tbaa !405
  %378 = tail call ptr @immed_double_const(i64 noundef %375, i64 noundef %377, i32 noundef %59) #17
  br label %1946

379:                                              ; preds = %164
  %380 = zext i32 %59 to i64
  %381 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %380
  %382 = load i8, ptr %381, align 1, !tbaa !405
  switch i8 %382, label %392 [
    i8 12, label %383
    i8 17, label %383
    i8 13, label %383
    i8 14, label %383
    i8 15, label %383
    i8 16, label %383
    i8 2, label %385
  ]

383:                                              ; preds = %379, %379, %379, %379, %379, %379
  %384 = tail call fastcc ptr @const_vector_from_tree(ptr noundef nonnull %0) #18
  br label %1946

385:                                              ; preds = %379
  %386 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !641
  %387 = tail call ptr %386(i32 noundef %59, i32 noundef 1) #17
  %388 = icmp eq ptr %387, null
  br i1 %388, label %392, label %389

389:                                              ; preds = %385
  %390 = tail call ptr @fold_unary_loc(i32 noundef %36, i32 noundef 118, ptr noundef nonnull %387, ptr noundef nonnull %0) #17
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %396

392:                                              ; preds = %385, %379, %389
  %393 = getelementptr inbounds %struct.tree_vector, ptr %0, i64 0, i32 1
  %394 = load ptr, ptr %393, align 8, !tbaa !405
  %395 = tail call ptr @build_constructor_from_list(ptr noundef nonnull %38, ptr noundef %394) #17
  br label %396

396:                                              ; preds = %392, %389
  %397 = phi ptr [ %390, %389 ], [ %395, %392 ]
  %398 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %399 = select i1 %167, ptr %398, ptr %168
  %400 = tail call fastcc ptr @expand_expr(ptr noundef %397, ptr noundef %399, i32 noundef %2, i32 noundef %3) #18
  br label %1946

401:                                              ; preds = %164
  %402 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %403 = load ptr, ptr %402, align 8, !tbaa !405
  %404 = tail call fastcc ptr @expand_expr(ptr noundef %403, ptr noundef %168, i32 noundef 0, i32 noundef %3) #18
  br label %1946

405:                                              ; preds = %164
  %406 = getelementptr inbounds %struct.tree_real_cst, ptr %0, i64 0, i32 1
  %407 = load ptr, ptr %406, align 8, !tbaa !405
  %408 = load ptr, ptr %37, align 8, !tbaa !405
  %409 = load i64, ptr %408, align 8
  %410 = and i64 %409, 65535
  %411 = icmp eq i64 %410, 14
  br i1 %411, label %412, label %414

412:                                              ; preds = %405
  %413 = tail call i32 @vector_type_mode(ptr noundef nonnull %408) #17
  br label %419

414:                                              ; preds = %405
  %415 = getelementptr inbounds %struct.tree_type, ptr %408, i64 0, i32 6
  %416 = load i32, ptr %415, align 4
  %417 = lshr i32 %416, 16
  %418 = and i32 %417, 255
  br label %419

419:                                              ; preds = %414, %412
  %420 = phi i32 [ %413, %412 ], [ %418, %414 ]
  %421 = tail call ptr @const_double_from_real_value(ptr noundef byval(%struct.real_value) align 8 %407, i32 noundef %420) #17
  br label %1946

422:                                              ; preds = %164
  %423 = getelementptr inbounds %struct.tree_fixed_cst, ptr %0, i64 0, i32 1
  %424 = load ptr, ptr %423, align 8, !tbaa !405
  %425 = load ptr, ptr %37, align 8, !tbaa !405
  %426 = load i64, ptr %425, align 8
  %427 = and i64 %426, 65535
  %428 = icmp eq i64 %427, 14
  br i1 %428, label %429, label %431

429:                                              ; preds = %422
  %430 = tail call i32 @vector_type_mode(ptr noundef nonnull %425) #17
  br label %436

431:                                              ; preds = %422
  %432 = getelementptr inbounds %struct.tree_type, ptr %425, i64 0, i32 6
  %433 = load i32, ptr %432, align 4
  %434 = lshr i32 %433, 16
  %435 = and i32 %434, 255
  br label %436

436:                                              ; preds = %431, %429
  %437 = phi i32 [ %430, %429 ], [ %435, %431 ]
  %438 = tail call ptr @const_fixed_from_fixed_value(ptr noundef byval(%struct.fixed_value) align 8 %424, i32 noundef %437) #17
  br label %1946

439:                                              ; preds = %164
  %440 = icmp eq ptr %168, null
  br i1 %440, label %478, label %441

441:                                              ; preds = %439
  %442 = load i32, ptr %168, align 8
  %443 = and i32 %442, 65535
  %444 = icmp eq i32 %443, 41
  br i1 %444, label %445, label %478

445:                                              ; preds = %441
  %446 = load ptr, ptr %37, align 8, !tbaa !405
  %447 = getelementptr inbounds %struct.tree_common, ptr %446, i64 0, i32 2
  %448 = load ptr, ptr %447, align 8, !tbaa !405
  %449 = load i64, ptr %448, align 8
  %450 = and i64 %449, 65535
  %451 = icmp eq i64 %450, 14
  br i1 %451, label %452, label %454

452:                                              ; preds = %445
  %453 = tail call i32 @vector_type_mode(ptr noundef nonnull %448) #17
  br label %459

454:                                              ; preds = %445
  %455 = getelementptr inbounds %struct.tree_type, ptr %448, i64 0, i32 6
  %456 = load i32, ptr %455, align 4
  %457 = lshr i32 %456, 16
  %458 = and i32 %457, 255
  br label %459

459:                                              ; preds = %454, %452
  %460 = phi i32 [ %453, %452 ], [ %458, %454 ]
  %461 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1
  %462 = load ptr, ptr %461, align 8, !tbaa !405
  %463 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1, i32 0, i32 0, i64 1
  %464 = load ptr, ptr %463, align 8, !tbaa !405
  %465 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 1
  %466 = load ptr, ptr %465, align 8, !tbaa !405
  %467 = tail call fastcc ptr @expand_expr(ptr noundef %466, ptr noundef %462, i32 noundef %460, i32 noundef 0) #18
  %468 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 2
  %469 = load ptr, ptr %468, align 8, !tbaa !405
  %470 = tail call fastcc ptr @expand_expr(ptr noundef %469, ptr noundef %464, i32 noundef %460, i32 noundef 0) #18
  %471 = icmp eq ptr %467, %462
  br i1 %471, label %474, label %472

472:                                              ; preds = %459
  %473 = tail call ptr @emit_move_insn(ptr noundef %462, ptr noundef %467) #18
  br label %474

474:                                              ; preds = %472, %459
  %475 = icmp eq ptr %470, %464
  br i1 %475, label %1946, label %476

476:                                              ; preds = %474
  %477 = tail call ptr @emit_move_insn(ptr noundef %464, ptr noundef %470) #18
  br label %1946

478:                                              ; preds = %439, %441, %164
  %479 = tail call fastcc ptr @expand_expr_constant(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %3) #18
  %480 = add i32 %3, -5
  %481 = icmp ult i32 %480, -3
  br i1 %481, label %482, label %1946

482:                                              ; preds = %478
  %483 = getelementptr inbounds %struct.rtx_def, ptr %479, i64 0, i32 1
  %484 = load ptr, ptr %483, align 8, !tbaa !405
  %485 = getelementptr inbounds %struct.rtx_def, ptr %479, i64 0, i32 1, i32 0, i32 0, i64 1
  %486 = load ptr, ptr %485, align 8, !tbaa !405
  %487 = icmp eq ptr %486, null
  br i1 %487, label %491, label %488

488:                                              ; preds = %482
  %489 = getelementptr inbounds %struct.mem_attrs, ptr %486, i64 0, i32 5
  %490 = load i8, ptr %489, align 8, !tbaa !457
  br label %491

491:                                              ; preds = %482, %488
  %492 = phi i8 [ %490, %488 ], [ 0, %482 ]
  %493 = tail call i32 @memory_address_addr_space_p(i32 noundef %59, ptr noundef %484, i8 noundef zeroext %492) #17
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %1946

495:                                              ; preds = %491
  %496 = load ptr, ptr %483, align 8, !tbaa !405
  %497 = tail call ptr @copy_rtx(ptr noundef %496) #17
  %498 = tail call ptr @replace_equiv_address(ptr noundef nonnull %479, ptr noundef %497) #17
  br label %1946

499:                                              ; preds = %164
  %500 = tail call ptr @expand_expr_real_1(ptr noundef %82, ptr noundef %168, i32 noundef %2, i32 noundef %3, ptr noundef %4) #18
  %501 = load i64, ptr %0, align 8
  %502 = and i64 %501, 134217728
  %503 = icmp eq i64 %502, 0
  br i1 %503, label %504, label %1946

504:                                              ; preds = %499
  %505 = load i32, ptr %500, align 8
  %506 = and i32 %505, 16711680
  %507 = icmp eq i32 %506, 65536
  br i1 %507, label %508, label %510

508:                                              ; preds = %504
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8631, ptr noundef nonnull @.str.1) #17
  %509 = load i64, ptr %0, align 8
  br label %510

510:                                              ; preds = %504, %508
  %511 = phi i64 [ %501, %504 ], [ %509, %508 ]
  %512 = and i64 %511, 65535
  %513 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %512
  %514 = load i32, ptr %513, align 4, !tbaa !438
  %515 = add i32 %514, -4
  %516 = icmp ult i32 %515, 7
  br i1 %516, label %517, label %520

517:                                              ; preds = %510
  %518 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %519 = load i32, ptr %518, align 8, !tbaa !405
  br label %520

520:                                              ; preds = %510, %517
  %521 = phi i32 [ %519, %517 ], [ 0, %510 ]
  %522 = load ptr, ptr %37, align 8, !tbaa !405
  %523 = tail call ptr @build_decl_stat(i32 noundef %521, i32 noundef 32, ptr noundef null, ptr noundef %522) #17
  %524 = getelementptr inbounds %struct.tree_decl_common, ptr %523, i64 0, i32 2
  %525 = load i64, ptr %524, align 8
  %526 = or i64 %525, 5120
  store i64 %526, ptr %524, align 8
  %527 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  store ptr %523, ptr %527, align 8, !tbaa !405
  %528 = load i64, ptr %0, align 8
  %529 = or i64 %528, 134217728
  store i64 %529, ptr %0, align 8
  %530 = load i32, ptr %500, align 8
  %531 = and i32 %530, 65535
  %532 = zext nneg i32 %531 to i64
  %533 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %532
  %534 = load i32, ptr %533, align 4, !tbaa !438
  %535 = icmp eq i32 %534, 9
  br i1 %535, label %538, label %536

536:                                              ; preds = %520
  %537 = tail call ptr @copy_to_reg(ptr noundef nonnull %500) #17
  br label %538

538:                                              ; preds = %536, %520
  %539 = phi ptr [ %500, %520 ], [ %537, %536 ]
  tail call void @set_decl_rtl(ptr noundef nonnull %523, ptr noundef %539) #17
  br label %1946

540:                                              ; preds = %164
  br i1 %167, label %541, label %562

541:                                              ; preds = %540
  %542 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %543 = load ptr, ptr %542, align 8, !tbaa !405
  %544 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %543) #18
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %1946, label %546

546:                                              ; preds = %541, %546
  %547 = phi ptr [ %556, %546 ], [ %543, %541 ]
  %548 = phi i64 [ %555, %546 ], [ 0, %541 ]
  %549 = trunc i64 %548 to i32
  %550 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %547, i32 noundef %549) #18
  %551 = getelementptr inbounds %struct.constructor_elt_d, ptr %550, i64 0, i32 1
  %552 = load ptr, ptr %551, align 8, !tbaa !683
  %553 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %554 = tail call fastcc ptr @expand_expr(ptr noundef %552, ptr noundef %553, i32 noundef 0, i32 noundef 0) #18
  %555 = add nuw nsw i64 %548, 1
  %556 = load ptr, ptr %542, align 8, !tbaa !405
  %557 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %556) #18
  %558 = zext i32 %557 to i64
  %559 = icmp ult i64 %555, %558
  br i1 %559, label %546, label %560, !llvm.loop !750

560:                                              ; preds = %546
  %561 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  br label %1946

562:                                              ; preds = %540
  %563 = tail call fastcc ptr @expand_constructor(ptr noundef nonnull %0, ptr noundef %168, i32 noundef %3, i8 noundef zeroext 0) #18
  br label %1946

564:                                              ; preds = %164, %164, %164
  %565 = icmp eq i32 %3, 5
  br i1 %565, label %571, label %566, !prof !751

566:                                              ; preds = %564
  %567 = tail call ptr @fold_read_from_constant_string(ptr noundef nonnull %0) #17
  %568 = icmp eq ptr %567, null
  br i1 %568, label %571, label %569, !prof !752

569:                                              ; preds = %566
  %570 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %567, ptr noundef %168, i32 noundef %2, i32 noundef %3) #18
  br label %1946

571:                                              ; preds = %566, %564
  %572 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %573 = load ptr, ptr %572, align 8, !tbaa !405
  %574 = load i64, ptr %573, align 8
  %575 = trunc i64 %574 to i16
  switch i16 %575, label %584 [
    i16 10, label %576
    i16 12, label %576
  ], !prof !753

576:                                              ; preds = %571, %571
  %577 = getelementptr inbounds %struct.tree_common, ptr %573, i64 0, i32 2
  %578 = load ptr, ptr %577, align 8, !tbaa !405
  %579 = load i64, ptr %578, align 8
  %580 = lshr i64 %579, 56
  %581 = trunc i64 %580 to i8
  %582 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !490
  %583 = tail call i32 %582(i8 noundef zeroext %581) #17
  br label %584

584:                                              ; preds = %571, %576
  %585 = phi i32 [ %583, %576 ], [ 16, %571 ]
  %586 = phi i8 [ %581, %576 ], [ 0, %571 ]
  %587 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %82, ptr noundef null, i32 noundef 0, i32 noundef 2) #18
  %588 = tail call ptr @memory_address_addr_space(i32 noundef %59, ptr noundef %587, i8 noundef zeroext %586) #17
  %589 = icmp eq i32 %25, 48
  br i1 %589, label %590, label %599, !prof !751

590:                                              ; preds = %584
  %591 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 7
  %592 = load i32, ptr %591, align 8, !tbaa !405
  %593 = lshr i32 %592, 3
  %594 = sub nsw i32 0, %593
  %595 = sext i32 %594 to i64
  %596 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %595) #17
  %597 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %585, ptr noundef %588, ptr noundef %596) #17
  %598 = tail call ptr @memory_address_addr_space(i32 noundef %59, ptr noundef %597, i8 noundef zeroext %586) #17
  br label %599

599:                                              ; preds = %590, %584
  %600 = phi ptr [ %598, %590 ], [ %588, %584 ]
  %601 = tail call ptr @gen_rtx_MEM(i32 noundef %59, ptr noundef %600) #17
  tail call void @set_mem_attributes(ptr noundef %601, ptr noundef nonnull %0, i32 noundef 0) #17
  tail call void @set_mem_addr_space(ptr noundef %601, i8 noundef zeroext %586) #17
  %602 = icmp eq i32 %25, 49
  br i1 %602, label %603, label %1946, !prof !751

603:                                              ; preds = %599
  %604 = icmp ult i32 %3, 2
  br i1 %604, label %606, label %605

605:                                              ; preds = %603
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8712, ptr noundef nonnull @.str.1) #17
  br label %606

606:                                              ; preds = %603, %605
  %607 = sext i32 %59 to i64
  %608 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 62, i32 4, i64 %607
  %609 = load i32, ptr %608, align 4, !tbaa !442
  %610 = icmp eq i32 %609, 2956
  br i1 %610, label %611, label %612

611:                                              ; preds = %606
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8716, ptr noundef nonnull @.str.1) #17
  br label %612

612:                                              ; preds = %606, %611
  %613 = tail call ptr @gen_reg_rtx(i32 noundef %59) #17
  %614 = sext i32 %609 to i64
  %615 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %614, i32 2
  %616 = load ptr, ptr %615, align 8, !tbaa !519
  %617 = tail call ptr (ptr, ...) %616(ptr noundef %613, ptr noundef %601) #17
  %618 = tail call ptr @emit_insn(ptr noundef %617) #17
  br label %1946

619:                                              ; preds = %164
  %620 = load ptr, ptr %37, align 8, !tbaa !405
  %621 = load i64, ptr %620, align 8
  %622 = lshr i64 %621, 56
  %623 = trunc i64 %622 to i8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #16
  call void @get_address_description(ptr noundef nonnull %0, ptr noundef nonnull %10) #17
  %624 = call ptr @addr_for_mem_ref(ptr noundef nonnull %10, i8 noundef zeroext %623, i8 noundef zeroext 1) #17
  %625 = call ptr @memory_address_addr_space(i32 noundef %59, ptr noundef %624, i8 noundef zeroext %623) #17
  %626 = call ptr @gen_rtx_MEM(i32 noundef %59, ptr noundef %625) #17
  %627 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 2
  %628 = load ptr, ptr %627, align 8, !tbaa !405
  call void @set_mem_attributes(ptr noundef %626, ptr noundef %628, i32 noundef 0) #17
  call void @set_mem_addr_space(ptr noundef %626, i8 noundef zeroext %623) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #16
  br label %1946

629:                                              ; preds = %164
  switch i32 %3, label %630 [
    i32 6, label %676
    i32 4, label %676
    i32 3, label %676
  ]

630:                                              ; preds = %629
  %631 = tail call ptr @fold_read_from_constant_string(ptr noundef nonnull %0) #17
  %632 = icmp eq ptr %631, null
  br i1 %632, label %635, label %633, !prof !754

633:                                              ; preds = %630
  %634 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %631, ptr noundef %168, i32 noundef %2, i32 noundef %3) #18
  br label %1946

635:                                              ; preds = %630
  %636 = icmp eq i32 %3, 6
  br i1 %636, label %676, label %637

637:                                              ; preds = %635
  %638 = load i64, ptr %82, align 8
  %639 = and i64 %638, 65535
  %640 = icmp eq i64 %639, 51
  br i1 %640, label %641, label %676, !prof !755

641:                                              ; preds = %637
  %642 = and i64 %638, 65536
  %643 = icmp eq i64 %642, 0
  br i1 %643, label %644, label %676

644:                                              ; preds = %641
  %645 = load i64, ptr %81, align 8
  %646 = and i64 %645, 65535
  %647 = icmp eq i64 %646, 23
  br i1 %647, label %648, label %676

648:                                              ; preds = %644
  %649 = getelementptr inbounds %struct.tree_constructor, ptr %82, i64 0, i32 1
  %650 = load ptr, ptr %649, align 8, !tbaa !405
  %651 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %650) #18
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %876, label %659

653:                                              ; preds = %659
  %654 = add nuw nsw i64 %661, 1
  %655 = load ptr, ptr %649, align 8, !tbaa !405
  %656 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %655) #18
  %657 = zext i32 %656 to i64
  %658 = icmp ult i64 %654, %657
  br i1 %658, label %659, label %876, !llvm.loop !756

659:                                              ; preds = %648, %653
  %660 = phi ptr [ %655, %653 ], [ %650, %648 ]
  %661 = phi i64 [ %654, %653 ], [ 0, %648 ]
  %662 = trunc i64 %661 to i32
  %663 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %660, i32 noundef %662) #18
  %664 = getelementptr inbounds %struct.constructor_elt_d, ptr %663, i64 0, i32 1
  %665 = load ptr, ptr %664, align 8, !tbaa !683
  %666 = load ptr, ptr %663, align 8, !tbaa !685
  %667 = tail call i32 @tree_int_cst_equal(ptr noundef %666, ptr noundef nonnull %81) #17
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %653, label %669

669:                                              ; preds = %659
  %670 = load i64, ptr %665, align 8
  %671 = and i64 %670, 65536
  %672 = icmp eq i64 %671, 0
  br i1 %672, label %673, label %876

673:                                              ; preds = %669
  %674 = tail call ptr @fold(ptr noundef nonnull %665) #17
  %675 = tail call fastcc ptr @expand_expr(ptr noundef %674, ptr noundef %168, i32 noundef %2, i32 noundef %3) #18
  br label %1946

676:                                              ; preds = %635, %629, %629, %629, %644, %641, %637
  %677 = load i32, ptr @optimize, align 4, !tbaa !438
  %678 = freeze i32 %677
  %679 = icmp sgt i32 %678, 0
  br i1 %679, label %680, label %876

680:                                              ; preds = %676
  switch i32 %3, label %681 [
    i32 6, label %876
    i32 4, label %876
    i32 3, label %876
  ]

681:                                              ; preds = %680
  %682 = load i64, ptr %82, align 8
  %683 = and i64 %682, 1048576
  %684 = icmp eq i64 %683, 0
  br i1 %684, label %876, label %685, !prof !754

685:                                              ; preds = %681
  %686 = and i64 %682, 131071
  %687 = icmp eq i64 %686, 32
  br i1 %687, label %688, label %876

688:                                              ; preds = %685
  %689 = getelementptr inbounds %struct.tree_decl_common, ptr %82, i64 0, i32 5
  %690 = load ptr, ptr %689, align 8, !tbaa !405
  %691 = icmp eq ptr %690, null
  br i1 %691, label %876, label %692

692:                                              ; preds = %688
  %693 = load i64, ptr %690, align 8
  %694 = and i64 %693, 65535
  %695 = icmp eq i64 %694, 0
  br i1 %695, label %876, label %696

696:                                              ; preds = %692
  %697 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !757
  %698 = tail call zeroext i8 %697(ptr noundef nonnull %82) #17
  %699 = icmp eq i8 %698, 0
  br i1 %699, label %876, label %700

700:                                              ; preds = %696
  %701 = load i64, ptr %81, align 8
  %702 = and i64 %701, 65535
  %703 = icmp eq i64 %702, 23
  br i1 %703, label %704, label %876

704:                                              ; preds = %700
  %705 = load ptr, ptr %689, align 8, !tbaa !405
  %706 = load i64, ptr %705, align 8
  %707 = trunc i64 %706 to i16
  switch i16 %707, label %876 [
    i16 51, label %708
    i16 28, label %742
  ]

708:                                              ; preds = %704
  %709 = getelementptr inbounds %struct.tree_constructor, ptr %705, i64 0, i32 1
  %710 = load ptr, ptr %709, align 8, !tbaa !405
  %711 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %710) #18
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %876, label %719

713:                                              ; preds = %719
  %714 = add nuw nsw i64 %721, 1
  %715 = load ptr, ptr %709, align 8, !tbaa !405
  %716 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %715) #18
  %717 = zext i32 %716 to i64
  %718 = icmp ult i64 %714, %717
  br i1 %718, label %719, label %876, !llvm.loop !758

719:                                              ; preds = %708, %713
  %720 = phi ptr [ %715, %713 ], [ %710, %708 ]
  %721 = phi i64 [ %714, %713 ], [ 0, %708 ]
  %722 = trunc i64 %721 to i32
  %723 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %720, i32 noundef %722) #18
  %724 = getelementptr inbounds %struct.constructor_elt_d, ptr %723, i64 0, i32 1
  %725 = load ptr, ptr %724, align 8, !tbaa !683
  %726 = load ptr, ptr %723, align 8, !tbaa !685
  %727 = tail call i32 @tree_int_cst_equal(ptr noundef %726, ptr noundef nonnull %81) #17
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %713, label %729

729:                                              ; preds = %719
  %730 = load i64, ptr %725, align 8
  %731 = and i64 %730, 65536
  %732 = icmp eq i64 %731, 0
  br i1 %732, label %733, label %876

733:                                              ; preds = %729
  %734 = and i64 %730, 65535
  %735 = icmp eq i64 %734, 51
  br i1 %735, label %736, label %739

736:                                              ; preds = %733
  %737 = tail call fastcc ptr @expand_constructor(ptr noundef nonnull %725, ptr noundef %168, i32 noundef %3, i8 noundef zeroext 1) #18
  %738 = icmp eq ptr %737, null
  br i1 %738, label %876, label %739

739:                                              ; preds = %733, %736
  %740 = tail call ptr @fold(ptr noundef nonnull %725) #17
  %741 = tail call fastcc ptr @expand_expr(ptr noundef %740, ptr noundef %168, i32 noundef %2, i32 noundef %3) #18
  br label %1946

742:                                              ; preds = %704
  %743 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %0) #18
  %744 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
  %745 = tail call ptr @fold_convert_loc(i32 noundef %36, ptr noundef %744, ptr noundef nonnull %81) #17
  %746 = tail call i32 @integer_zerop(ptr noundef %743) #17
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %748, label %752

748:                                              ; preds = %742
  %749 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
  %750 = tail call ptr @fold_convert_loc(i32 noundef %36, ptr noundef %749, ptr noundef %743) #17
  %751 = tail call ptr @size_diffop_loc(i32 noundef %36, ptr noundef %745, ptr noundef %750) #17
  br label %752

752:                                              ; preds = %748, %742
  %753 = phi ptr [ %745, %742 ], [ %751, %748 ]
  %754 = getelementptr inbounds %struct.tree_string, ptr %705, i64 0, i32 1
  %755 = load i32, ptr %754, align 8, !tbaa !405
  %756 = sext i32 %755 to i64
  %757 = tail call i32 @compare_tree_int(ptr noundef %753, i64 noundef %756) #17
  %758 = icmp slt i32 %757, 0
  br i1 %758, label %759, label %876

759:                                              ; preds = %752
  %760 = getelementptr inbounds %struct.tree_common, ptr %705, i64 0, i32 2
  %761 = load ptr, ptr %760, align 8, !tbaa !405
  %762 = getelementptr inbounds %struct.tree_common, ptr %761, i64 0, i32 2
  %763 = load ptr, ptr %762, align 8, !tbaa !405
  %764 = load i64, ptr %763, align 8
  %765 = and i64 %764, 65535
  %766 = icmp eq i64 %765, 14
  br i1 %766, label %767, label %769

767:                                              ; preds = %759
  %768 = tail call i32 @vector_type_mode(ptr noundef nonnull %763) #17
  br label %774

769:                                              ; preds = %759
  %770 = getelementptr inbounds %struct.tree_type, ptr %763, i64 0, i32 6
  %771 = load i32, ptr %770, align 4
  %772 = lshr i32 %771, 16
  %773 = and i32 %772, 255
  br label %774

774:                                              ; preds = %769, %767
  %775 = phi i32 [ %768, %767 ], [ %773, %769 ]
  %776 = zext i32 %775 to i64
  %777 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %776
  %778 = load i8, ptr %777, align 1, !tbaa !405
  %779 = icmp eq i8 %778, 2
  br i1 %779, label %780, label %876

780:                                              ; preds = %774
  %781 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %776
  %782 = load i8, ptr %781, align 1, !tbaa !405
  %783 = icmp eq i8 %782, 1
  br i1 %783, label %784, label %876

784:                                              ; preds = %780
  %785 = getelementptr inbounds %struct.tree_string, ptr %705, i64 0, i32 2
  %786 = getelementptr inbounds %struct.tree_int_cst, ptr %753, i64 0, i32 1
  %787 = load i64, ptr %786, align 8, !tbaa !405
  %788 = getelementptr inbounds i8, ptr %785, i64 %787
  %789 = load i8, ptr %788, align 1, !tbaa !405
  %790 = sext i8 %789 to i64
  %791 = tail call ptr @gen_int_mode(i64 noundef %790, i32 noundef %775) #17
  br label %1946

792:                                              ; preds = %164
  %793 = load i64, ptr %82, align 8
  %794 = and i64 %793, 65535
  %795 = icmp eq i64 %794, 51
  br i1 %795, label %796, label %876, !prof !759

796:                                              ; preds = %792
  %797 = getelementptr inbounds %struct.tree_constructor, ptr %82, i64 0, i32 1
  %798 = load ptr, ptr %797, align 8, !tbaa !405
  %799 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %798) #18
  %800 = zext i32 %799 to i64
  %801 = icmp eq i32 %799, 0
  br i1 %801, label %876, label %802

802:                                              ; preds = %796
  %803 = getelementptr inbounds %struct.tree_decl_common, ptr %81, i64 0, i32 2
  br label %804

804:                                              ; preds = %802, %873
  %805 = phi i64 [ %874, %873 ], [ 0, %802 ]
  %806 = trunc i64 %805 to i32
  %807 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %798, i32 noundef %806) #18
  %808 = load ptr, ptr %807, align 8, !tbaa !685
  %809 = icmp eq ptr %808, %81
  br i1 %809, label %810, label %873

810:                                              ; preds = %804
  %811 = load i64, ptr %803, align 8
  %812 = and i64 %811, 33554432
  %813 = icmp ne i64 %812, 0
  br i1 %813, label %814, label %823

814:                                              ; preds = %810
  %815 = and i64 %811, 255
  %816 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %815
  %817 = load i8, ptr %816, align 1, !tbaa !405
  %818 = icmp eq i8 %817, 2
  br i1 %818, label %819, label %873

819:                                              ; preds = %814
  %820 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %815
  %821 = load i8, ptr %820, align 1, !tbaa !405
  %822 = icmp ult i8 %821, 9
  br i1 %822, label %823, label %873

823:                                              ; preds = %819, %810
  %824 = getelementptr inbounds %struct.tree_decl_common, ptr %81, i64 0, i32 2
  %825 = getelementptr inbounds %struct.constructor_elt_d, ptr %807, i64 0, i32 1
  %826 = load ptr, ptr %825, align 8, !tbaa !683
  %827 = icmp eq i32 %3, 1
  %828 = and i1 %827, %813
  %829 = select i1 %828, ptr null, ptr %168
  %830 = tail call fastcc ptr @expand_expr(ptr noundef %826, ptr noundef %829, i32 noundef %2, i32 noundef %3) #18
  %831 = load i64, ptr %824, align 8
  %832 = and i64 %831, 33554432
  %833 = icmp eq i64 %832, 0
  br i1 %833, label %1946, label %834

834:                                              ; preds = %823
  %835 = getelementptr inbounds %struct.tree_decl_common, ptr %81, i64 0, i32 1
  %836 = load ptr, ptr %835, align 8, !tbaa !405
  %837 = getelementptr inbounds %struct.tree_int_cst, ptr %836, i64 0, i32 1
  %838 = load i64, ptr %837, align 8, !tbaa !405
  %839 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %840 = load ptr, ptr %839, align 8, !tbaa !405
  %841 = load i64, ptr %840, align 8
  %842 = and i64 %841, 65535
  %843 = icmp eq i64 %842, 14
  br i1 %843, label %844, label %848

844:                                              ; preds = %834
  %845 = tail call i32 @vector_type_mode(ptr noundef nonnull %840) #17
  %846 = load ptr, ptr %839, align 8, !tbaa !405
  %847 = load i64, ptr %846, align 8
  br label %853

848:                                              ; preds = %834
  %849 = getelementptr inbounds %struct.tree_type, ptr %840, i64 0, i32 6
  %850 = load i32, ptr %849, align 4
  %851 = lshr i32 %850, 16
  %852 = and i32 %851, 255
  br label %853

853:                                              ; preds = %848, %844
  %854 = phi i64 [ %847, %844 ], [ %841, %848 ]
  %855 = phi i32 [ %845, %844 ], [ %852, %848 ]
  %856 = and i64 %854, 2097152
  %857 = icmp eq i64 %856, 0
  br i1 %857, label %863, label %858

858:                                              ; preds = %853
  %859 = shl nsw i64 -1, %838
  %860 = xor i64 %859, -1
  %861 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %860) #17
  %862 = tail call ptr @expand_and(i32 noundef %855, ptr noundef %830, ptr noundef %861, ptr noundef %829) #17
  br label %1946

863:                                              ; preds = %853
  %864 = zext i32 %855 to i64
  %865 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %864
  %866 = load i8, ptr %865, align 1, !tbaa !405
  %867 = zext i8 %866 to i64
  %868 = shl nuw nsw i64 %867, 3
  %869 = sub nsw i64 %868, %838
  %870 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %869) #17
  %871 = tail call ptr @expand_shift(i32 noundef 83, i32 noundef %855, ptr noundef %830, ptr noundef %870, ptr noundef %829, i32 noundef 0) #17
  %872 = tail call ptr @expand_shift(i32 noundef 84, i32 noundef %855, ptr noundef %871, ptr noundef %870, ptr noundef %829, i32 noundef 0) #17
  br label %1946

873:                                              ; preds = %804, %814, %819
  %874 = add nuw nsw i64 %805, 1
  %875 = icmp eq i64 %874, %800
  br i1 %875, label %876, label %804, !llvm.loop !760

876:                                              ; preds = %873, %653, %713, %796, %708, %648, %774, %780, %752, %736, %729, %704, %669, %700, %696, %692, %688, %685, %681, %676, %680, %680, %680, %164, %164, %792
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #16
  store i32 0, ptr %15, align 4, !tbaa !438
  %877 = call ptr @get_inner_reference(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %15, i8 zeroext poison) #18
  %878 = icmp eq ptr %877, %0
  br i1 %878, label %879, label %880, !prof !761

879:                                              ; preds = %876
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8943, ptr noundef nonnull @.str.1) #17
  br label %880

880:                                              ; preds = %876, %879
  %881 = getelementptr inbounds %struct.tree_common, ptr %877, i64 0, i32 2
  %882 = load ptr, ptr %881, align 8, !tbaa !405
  %883 = load i64, ptr %882, align 8
  %884 = and i64 %883, 65535
  %885 = icmp eq i64 %884, 17
  br i1 %885, label %886, label %895, !prof !761

886:                                              ; preds = %880
  %887 = getelementptr inbounds %struct.tree_type, ptr %882, i64 0, i32 2
  %888 = load ptr, ptr %887, align 8, !tbaa !405
  %889 = load i64, ptr %888, align 8
  %890 = and i64 %889, 65535
  %891 = icmp ne i64 %890, 23
  %892 = icmp ne i32 %3, 1
  %893 = and i1 %892, %891
  %894 = select i1 %893, ptr %168, ptr null
  br label %895

895:                                              ; preds = %886, %880
  %896 = phi ptr [ null, %880 ], [ %894, %886 ]
  %897 = icmp eq i32 %3, 4
  br i1 %897, label %901, label %898, !prof !762

898:                                              ; preds = %895
  %899 = and i32 %3, -3
  %900 = icmp eq i32 %899, 1
  br i1 %900, label %901, label %902, !prof !763

901:                                              ; preds = %898, %895
  br label %902

902:                                              ; preds = %898, %901
  %903 = phi i32 [ %3, %901 ], [ 0, %898 ]
  %904 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %877, ptr noundef %896, i32 noundef 0, i32 noundef %903) #18
  store ptr %904, ptr %6, align 8, !tbaa !401
  %905 = load i32, ptr %904, align 8
  %906 = and i32 %905, 65535
  %907 = zext nneg i32 %906 to i64
  %908 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %907
  %909 = load i32, ptr %908, align 4, !tbaa !438
  %910 = icmp eq i32 %909, 9
  br i1 %910, label %911, label %923, !prof !761

911:                                              ; preds = %902
  %912 = load ptr, ptr %881, align 8, !tbaa !405
  %913 = load i64, ptr %912, align 8
  %914 = and i64 %913, 65535
  %915 = icmp eq i64 %914, 14
  br i1 %915, label %916, label %918, !prof !761

916:                                              ; preds = %911
  %917 = tail call i32 @vector_type_mode(ptr noundef nonnull %912) #17
  br label %926

918:                                              ; preds = %911
  %919 = getelementptr inbounds %struct.tree_type, ptr %912, i64 0, i32 6
  %920 = load i32, ptr %919, align 4
  %921 = lshr i32 %920, 16
  %922 = and i32 %921, 255
  br label %926

923:                                              ; preds = %902
  %924 = lshr i32 %905, 16
  %925 = and i32 %924, 255
  br label %926

926:                                              ; preds = %916, %918, %923
  %927 = phi i32 [ %925, %923 ], [ %917, %916 ], [ %922, %918 ]
  %928 = load ptr, ptr %14, align 8
  %929 = icmp ne ptr %928, null
  %930 = load i32, ptr %11, align 4
  %931 = icmp eq i32 %930, 1
  %932 = select i1 %929, i1 true, i1 %931
  br i1 %932, label %1004, label %933, !prof !764

933:                                              ; preds = %926
  %934 = load i64, ptr %13, align 8
  %935 = load i64, ptr %12, align 8
  %936 = add nsw i64 %935, %934
  %937 = zext i32 %927 to i64
  %938 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %937
  %939 = load i8, ptr %938, align 1, !tbaa !405
  %940 = zext i8 %939 to i64
  %941 = shl nuw nsw i64 %940, 3
  %942 = icmp sgt i64 %936, %941
  %943 = load i32, ptr %904, align 8
  %944 = and i32 %943, 65535
  %945 = icmp eq i32 %944, 41
  br i1 %945, label %946, label %1004, !prof !761

946:                                              ; preds = %933
  br i1 %942, label %1004, label %947

947:                                              ; preds = %946
  %948 = icmp eq i64 %934, 0
  br i1 %948, label %956, label %949

949:                                              ; preds = %947
  %950 = getelementptr inbounds %struct.rtx_def, ptr %904, i64 0, i32 1
  %951 = load ptr, ptr %950, align 8, !tbaa !405
  %952 = load i32, ptr %951, align 8
  %953 = lshr i32 %952, 16
  %954 = and i32 %953, 255
  %955 = zext nneg i32 %954 to i64
  br label %980

956:                                              ; preds = %947
  %957 = lshr i32 %943, 16
  %958 = and i32 %957, 255
  %959 = zext nneg i32 %958 to i64
  %960 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %959
  %961 = load i8, ptr %960, align 1, !tbaa !405
  %962 = zext i8 %961 to i64
  %963 = shl nuw nsw i64 %962, 3
  %964 = icmp eq i64 %935, %963
  br i1 %964, label %1402, label %965

965:                                              ; preds = %956
  %966 = getelementptr inbounds %struct.rtx_def, ptr %904, i64 0, i32 1
  %967 = load ptr, ptr %966, align 8, !tbaa !405
  %968 = load i32, ptr %967, align 8
  %969 = lshr i32 %968, 16
  %970 = and i32 %969, 255
  %971 = zext nneg i32 %970 to i64
  %972 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %971
  %973 = load i8, ptr %972, align 1, !tbaa !405
  %974 = zext i8 %973 to i64
  %975 = shl nuw nsw i64 %974, 3
  %976 = icmp eq i64 %935, %975
  %977 = icmp ne i64 %935, 0
  %978 = and i1 %977, %976
  br i1 %978, label %979, label %980

979:                                              ; preds = %965
  store ptr %967, ptr %6, align 8, !tbaa !401
  br label %1004

980:                                              ; preds = %949, %965
  %981 = phi i64 [ %955, %949 ], [ %971, %965 ]
  %982 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %981
  %983 = load i8, ptr %982, align 1, !tbaa !405
  %984 = zext i8 %983 to i64
  %985 = shl nuw nsw i64 %984, 3
  %986 = icmp eq i64 %934, %985
  br i1 %986, label %987, label %1004

987:                                              ; preds = %980
  %988 = getelementptr inbounds %struct.rtx_def, ptr %904, i64 0, i32 1, i32 0, i32 0, i64 1
  %989 = load ptr, ptr %988, align 8, !tbaa !405
  %990 = load i32, ptr %989, align 8
  %991 = lshr i32 %990, 16
  %992 = and i32 %991, 255
  %993 = zext nneg i32 %992 to i64
  %994 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %993
  %995 = load i8, ptr %994, align 1, !tbaa !405
  %996 = zext i8 %995 to i64
  %997 = shl nuw nsw i64 %996, 3
  %998 = icmp eq i64 %935, %997
  %999 = icmp ne i64 %934, 0
  %1000 = and i1 %999, %998
  %1001 = icmp ne i64 %935, 0
  %1002 = and i1 %1001, %1000
  br i1 %1002, label %1003, label %1004

1003:                                             ; preds = %987
  store ptr %989, ptr %6, align 8, !tbaa !401
  store i64 0, ptr %13, align 8, !tbaa !536
  br label %1004

1004:                                             ; preds = %926, %980, %987, %979, %1003, %946, %933
  %1005 = phi ptr [ %904, %946 ], [ %967, %979 ], [ %989, %1003 ], [ %904, %933 ], [ %904, %987 ], [ %904, %980 ], [ %904, %926 ]
  %1006 = phi i32 [ %927, %946 ], [ %970, %979 ], [ %992, %1003 ], [ %927, %933 ], [ %927, %987 ], [ %927, %980 ], [ %927, %926 ]
  %1007 = phi i1 [ true, %946 ], [ false, %979 ], [ false, %1003 ], [ %942, %933 ], [ true, %987 ], [ true, %980 ], [ true, %926 ]
  %1008 = load i32, ptr %1005, align 8
  %1009 = and i32 %1008, 65535
  %1010 = zext nneg i32 %1009 to i64
  %1011 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1010
  %1012 = load i32, ptr %1011, align 4, !tbaa !438
  %1013 = icmp eq i32 %1012, 9
  br i1 %1013, label %1014, label %1026, !prof !761

1014:                                             ; preds = %1004
  %1015 = icmp eq i32 %1006, 1
  br i1 %1015, label %1026, label %1016

1016:                                             ; preds = %1014
  %1017 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %1005) #17
  %1018 = icmp eq i8 %1017, 0
  %1019 = select i1 %1018, i1 true, i1 %1007
  br i1 %1019, label %1020, label %1024

1020:                                             ; preds = %1016
  %1021 = load i32, ptr %1005, align 8
  %1022 = and i32 %1021, 65535
  %1023 = zext nneg i32 %1022 to i64
  br label %1026

1024:                                             ; preds = %1016
  %1025 = tail call ptr @force_reg(i32 noundef %1006, ptr noundef nonnull %1005) #17
  store ptr %1025, ptr %6, align 8, !tbaa !401
  br label %1069

1026:                                             ; preds = %1020, %1014, %1004
  %1027 = phi i64 [ %1023, %1020 ], [ %1010, %1014 ], [ %1010, %1004 ]
  %1028 = phi i32 [ %1022, %1020 ], [ %1009, %1014 ], [ %1009, %1004 ]
  %1029 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1027
  %1030 = load i32, ptr %1029, align 4, !tbaa !438
  %1031 = icmp eq i32 %1030, 9
  br i1 %1031, label %1032, label %1041, !prof !761

1032:                                             ; preds = %1026
  %1033 = tail call ptr @force_const_mem(i32 noundef %1006, ptr noundef nonnull %1005) #17
  %1034 = icmp eq ptr %1033, null
  br i1 %1034, label %1035, label %1039

1035:                                             ; preds = %1032
  %1036 = load i32, ptr %1005, align 8
  %1037 = and i32 %1036, 65535
  %1038 = zext nneg i32 %1037 to i64
  br label %1041

1039:                                             ; preds = %1032
  %1040 = tail call ptr @validize_mem(ptr noundef nonnull %1033) #17
  store ptr %1040, ptr %6, align 8, !tbaa !401
  br label %1069

1041:                                             ; preds = %1035, %1026
  %1042 = phi i64 [ %1038, %1035 ], [ %1027, %1026 ]
  %1043 = phi i32 [ %1037, %1035 ], [ %1028, %1026 ]
  %1044 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1042
  %1045 = load i32, ptr %1044, align 4, !tbaa !438
  %1046 = icmp eq i32 %1045, 9
  br i1 %1046, label %1050, label %1047, !prof !761

1047:                                             ; preds = %1041
  %1048 = icmp eq i32 %1043, 43
  br i1 %1048, label %1069, label %1049, !prof !765

1049:                                             ; preds = %1047
  br i1 %1007, label %1050, label %1069

1050:                                             ; preds = %1049, %1041
  %1051 = load ptr, ptr %881, align 8, !tbaa !405
  %1052 = load i64, ptr %1051, align 8
  %1053 = trunc i64 %1052 to i32
  %1054 = lshr i32 %1053, 18
  %1055 = and i32 %1054, 2
  %1056 = getelementptr inbounds %struct.tree_type, ptr %1051, i64 0, i32 6
  %1057 = load i32, ptr %1056, align 4
  %1058 = lshr i32 %1057, 11
  %1059 = and i32 %1058, 4
  %1060 = lshr i64 %1052, 48
  %1061 = trunc i64 %1060 to i32
  %1062 = and i32 %1061, 65280
  %1063 = or disjoint i32 %1059, %1055
  %1064 = or disjoint i32 %1063, %1062
  %1065 = or disjoint i32 %1064, 1
  %1066 = tail call ptr @build_qualified_type(ptr noundef nonnull %1051, i32 noundef %1065) #17
  %1067 = tail call ptr @assign_temp(ptr noundef %1066, i32 noundef 1, i32 noundef 1, i32 noundef 1) #17
  %1068 = tail call ptr @emit_move_insn(ptr noundef %1067, ptr noundef nonnull %1005) #18
  store ptr %1067, ptr %6, align 8, !tbaa !401
  br label %1069

1069:                                             ; preds = %1039, %1050, %1049, %1047, %1024
  %1070 = phi ptr [ %1040, %1039 ], [ %1067, %1050 ], [ %1005, %1049 ], [ %1005, %1047 ], [ %1025, %1024 ]
  %1071 = icmp eq ptr %928, null
  br i1 %1071, label %1135, label %1072, !prof !766

1072:                                             ; preds = %1069
  %1073 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %928, ptr noundef null, i32 noundef 0, i32 noundef 2) #18
  %1074 = load i32, ptr %1070, align 8
  %1075 = and i32 %1074, 65535
  %1076 = icmp eq i32 %1075, 43
  br i1 %1076, label %1078, label %1077, !prof !741

1077:                                             ; preds = %1072
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9034, ptr noundef nonnull @.str.1) #17
  br label %1078

1078:                                             ; preds = %1072, %1077
  %1079 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !490
  %1080 = getelementptr inbounds %struct.rtx_def, ptr %1070, i64 0, i32 1, i32 0, i32 0, i64 1
  %1081 = load ptr, ptr %1080, align 8, !tbaa !405
  %1082 = icmp eq ptr %1081, null
  br i1 %1082, label %1086, label %1083, !prof !767

1083:                                             ; preds = %1078
  %1084 = getelementptr inbounds %struct.mem_attrs, ptr %1081, i64 0, i32 5
  %1085 = load i8, ptr %1084, align 8, !tbaa !457
  br label %1086

1086:                                             ; preds = %1078, %1083
  %1087 = phi i8 [ %1085, %1083 ], [ 0, %1078 ]
  %1088 = tail call i32 %1079(i8 noundef zeroext %1087) #17
  %1089 = load i32, ptr %1073, align 8
  %1090 = lshr i32 %1089, 16
  %1091 = and i32 %1090, 255
  %1092 = icmp eq i32 %1091, %1088
  br i1 %1092, label %1095, label %1093, !prof !741

1093:                                             ; preds = %1086
  %1094 = tail call ptr @convert_to_mode(i32 noundef %1088, ptr noundef nonnull %1073, i32 noundef 0) #18
  br label %1095

1095:                                             ; preds = %1093, %1086
  %1096 = phi ptr [ %1094, %1093 ], [ %1073, %1086 ]
  %1097 = load i32, ptr %1070, align 8
  %1098 = and i32 %1097, 16711680
  %1099 = icmp eq i32 %1098, 65536
  br i1 %1099, label %1100, label %1131, !prof !741

1100:                                             ; preds = %1095
  %1101 = getelementptr inbounds %struct.rtx_def, ptr %1070, i64 0, i32 1
  %1102 = load ptr, ptr %1101, align 8, !tbaa !405
  %1103 = load i32, ptr %1102, align 8
  %1104 = and i32 %1103, 16711680
  %1105 = icmp ne i32 %1104, 0
  %1106 = load i64, ptr %12, align 8
  %1107 = icmp ne i64 %1106, 0
  %1108 = select i1 %1105, i1 %1107, i1 false
  br i1 %1108, label %1109, label %1131, !prof !768

1109:                                             ; preds = %1100
  %1110 = load i64, ptr %13, align 8, !tbaa !536
  %1111 = srem i64 %1110, %1106
  %1112 = icmp eq i64 %1111, 0
  br i1 %1112, label %1113, label %1131, !prof !741

1113:                                             ; preds = %1109
  %1114 = tail call i32 @get_mode_alignment(i32 noundef %930) #17
  %1115 = zext i32 %1114 to i64
  %1116 = srem i64 %1106, %1115
  %1117 = icmp eq i64 %1116, 0
  br i1 %1117, label %1118, label %1131, !prof !741

1118:                                             ; preds = %1113
  %1119 = load ptr, ptr %1080, align 8, !tbaa !405
  %1120 = icmp eq ptr %1119, null
  br i1 %1120, label %1124, label %1121, !prof !767

1121:                                             ; preds = %1118
  %1122 = getelementptr inbounds %struct.mem_attrs, ptr %1119, i64 0, i32 4
  %1123 = load i32, ptr %1122, align 4, !tbaa !503
  br label %1124

1124:                                             ; preds = %1118, %1121
  %1125 = phi i32 [ %1123, %1121 ], [ 8, %1118 ]
  %1126 = tail call i32 @get_mode_alignment(i32 noundef %930) #17
  %1127 = icmp eq i32 %1125, %1126
  br i1 %1127, label %1128, label %1131, !prof !741

1128:                                             ; preds = %1124
  %1129 = sdiv i64 %1110, 8
  %1130 = tail call ptr @adjust_address_1(ptr noundef nonnull %1070, i32 noundef %930, i64 noundef %1129, i32 noundef 1, i32 noundef 1) #17
  store i64 0, ptr %13, align 8, !tbaa !536
  br label %1131

1131:                                             ; preds = %1128, %1124, %1113, %1109, %1100, %1095
  %1132 = phi ptr [ %1130, %1128 ], [ %1070, %1124 ], [ %1070, %1113 ], [ %1070, %1109 ], [ %1070, %1100 ], [ %1070, %1095 ]
  %1133 = tail call i64 @highest_pow2_factor(ptr noundef nonnull %928) #18
  %1134 = tail call ptr @offset_address(ptr noundef %1132, ptr noundef %1096, i64 noundef %1133) #17
  store ptr %1134, ptr %6, align 8, !tbaa !401
  br label %1135

1135:                                             ; preds = %1131, %1069
  %1136 = phi ptr [ %1134, %1131 ], [ %1070, %1069 ]
  %1137 = load i32, ptr %1136, align 8
  %1138 = and i32 %1137, 65535
  %1139 = icmp eq i32 %1138, 43
  %1140 = load i64, ptr %13, align 8
  %1141 = icmp eq i64 %1140, 0
  %1142 = select i1 %1139, i1 %1141, i1 false
  %1143 = and i1 %929, %1142
  br i1 %1143, label %1144, label %1152, !prof !769

1144:                                             ; preds = %1135
  %1145 = tail call fastcc i32 @is_aligning_offset(ptr noundef nonnull %928, ptr noundef nonnull %877) #18, !range !706
  %1146 = icmp eq i32 %1145, 0
  br i1 %1146, label %1152, label %1147, !prof !741

1147:                                             ; preds = %1144
  %1148 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !438
  %1149 = and i32 %1148, 32
  %1150 = icmp eq i32 %1149, 0
  %1151 = select i1 %1150, i32 128, i32 256
  tail call void @set_mem_align(ptr noundef nonnull %1136, i32 noundef %1151) #17
  br label %1152

1152:                                             ; preds = %1147, %1144, %1135
  %1153 = load i32, ptr %1136, align 8
  %1154 = and i32 %1153, 65535
  %1155 = icmp eq i32 %1154, 43
  %1156 = load i32, ptr %15, align 4
  %1157 = icmp ne i32 %1156, 0
  %1158 = select i1 %1155, i1 %1157, i1 false
  br i1 %1158, label %1159, label %1171, !prof !770

1159:                                             ; preds = %1152
  %1160 = and i32 %1153, 134217728
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %1162, label %1171

1162:                                             ; preds = %1159
  %1163 = icmp eq ptr %1136, %904
  br i1 %1163, label %1164, label %1167

1164:                                             ; preds = %1162
  %1165 = tail call ptr @copy_rtx(ptr noundef nonnull %904) #17
  store ptr %1165, ptr %6, align 8, !tbaa !401
  %1166 = load i32, ptr %1165, align 8
  br label %1167

1167:                                             ; preds = %1164, %1162
  %1168 = phi i32 [ %1166, %1164 ], [ %1153, %1162 ]
  %1169 = phi ptr [ %1165, %1164 ], [ %1136, %1162 ]
  %1170 = or i32 %1168, 134217728
  store i32 %1170, ptr %1169, align 8
  br label %1171

1171:                                             ; preds = %1167, %1159, %1152
  %1172 = icmp eq i32 %930, 0
  br i1 %1172, label %1239, label %1173, !prof !761

1173:                                             ; preds = %1171
  %1174 = load ptr, ptr %6, align 8, !tbaa !401
  %1175 = load i32, ptr %1174, align 8
  %1176 = trunc i32 %1175 to i16
  switch i16 %1176, label %1177 [
    i16 37, label %1239
    i16 39, label %1239
  ], !prof !771

1177:                                             ; preds = %1173
  br i1 %931, label %1224, label %1178, !prof !761

1178:                                             ; preds = %1177
  %1179 = sext i32 %930 to i64
  %1180 = getelementptr inbounds [87 x i8], ptr @direct_load, i64 0, i64 %1179
  %1181 = load i8, ptr %1180, align 1, !tbaa !405
  %1182 = icmp eq i8 %1181, 0
  br i1 %1182, label %1183, label %1193, !prof !761

1183:                                             ; preds = %1178
  %1184 = zext i32 %59 to i64
  %1185 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1184
  %1186 = load i8, ptr %1185, align 1, !tbaa !405
  %1187 = icmp eq i8 %1186, 10
  br i1 %1187, label %1193, label %1188

1188:                                             ; preds = %1183
  %1189 = icmp ne i8 %1186, 11
  %1190 = add i32 %3, -5
  %1191 = icmp ult i32 %1190, -2
  %1192 = and i1 %1191, %1189
  br i1 %1192, label %1239, label %1193

1193:                                             ; preds = %1188, %1183, %1178
  %1194 = load ptr, ptr %881, align 8, !tbaa !405
  %1195 = getelementptr inbounds %struct.tree_type, ptr %1194, i64 0, i32 7
  %1196 = load i32, ptr %1195, align 8, !tbaa !405
  %1197 = tail call i32 @get_mode_alignment(i32 noundef %59) #17
  %1198 = icmp ult i32 %1196, %1197
  br i1 %1198, label %1221, label %1199, !prof !761

1199:                                             ; preds = %1193
  %1200 = tail call i32 @get_mode_alignment(i32 noundef %59) #17
  %1201 = zext i32 %1200 to i64
  %1202 = srem i64 %1140, %1201
  %1203 = icmp eq i64 %1202, 0
  br i1 %1203, label %1204, label %1221, !prof !765

1204:                                             ; preds = %1199
  %1205 = load i32, ptr %1174, align 8
  %1206 = and i32 %1205, 65535
  %1207 = icmp eq i32 %1206, 43
  br i1 %1207, label %1208, label %1221, !prof !765

1208:                                             ; preds = %1204
  %1209 = getelementptr inbounds %struct.rtx_def, ptr %1174, i64 0, i32 1, i32 0, i32 0, i64 1
  %1210 = load ptr, ptr %1209, align 8, !tbaa !405
  %1211 = icmp eq ptr %1210, null
  br i1 %1211, label %1215, label %1212, !prof !761

1212:                                             ; preds = %1208
  %1213 = getelementptr inbounds %struct.mem_attrs, ptr %1210, i64 0, i32 4
  %1214 = load i32, ptr %1213, align 4, !tbaa !503
  br label %1215

1215:                                             ; preds = %1208, %1212
  %1216 = phi i32 [ %1214, %1212 ], [ 8, %1208 ]
  %1217 = tail call i32 @get_mode_alignment(i32 noundef %930) #17
  %1218 = icmp ult i32 %1216, %1217
  br i1 %1218, label %1221, label %1219, !prof !761

1219:                                             ; preds = %1215
  %1220 = tail call i32 @get_mode_alignment(i32 noundef %930) #17
  br label %1221

1221:                                             ; preds = %1219, %1193, %1199, %1215, %1204
  %1222 = and i64 %1140, 7
  %1223 = icmp eq i64 %1222, 0
  br i1 %1223, label %1224, label %1239, !prof !765

1224:                                             ; preds = %1177, %1221
  %1225 = load i64, ptr %12, align 8, !tbaa !536
  %1226 = icmp sgt i64 %1225, -1
  br i1 %1226, label %1227, label %1350, !prof !765

1227:                                             ; preds = %1224
  %1228 = load ptr, ptr %37, align 8, !tbaa !405
  %1229 = getelementptr inbounds %struct.tree_type, ptr %1228, i64 0, i32 2
  %1230 = load ptr, ptr %1229, align 8, !tbaa !405
  %1231 = icmp eq ptr %1230, null
  br i1 %1231, label %1350, label %1232, !prof !761

1232:                                             ; preds = %1227
  %1233 = load i64, ptr %1230, align 8
  %1234 = and i64 %1233, 65535
  %1235 = icmp eq i64 %1234, 23
  br i1 %1235, label %1236, label %1350, !prof !765

1236:                                             ; preds = %1232
  %1237 = tail call i32 @compare_tree_int(ptr noundef nonnull %1230, i64 noundef %1225) #17
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1350, label %1239, !prof !765

1239:                                             ; preds = %1173, %1173, %1188, %1236, %1221, %1171
  %1240 = icmp eq i32 %59, 1
  br i1 %1240, label %1241, label %1302

1241:                                             ; preds = %1239
  %1242 = icmp eq ptr %168, null
  br i1 %1242, label %1262, label %1243

1243:                                             ; preds = %1241
  %1244 = load ptr, ptr %6, align 8, !tbaa !401
  %1245 = load i32, ptr %1244, align 8
  %1246 = and i32 %1245, 65535
  %1247 = icmp eq i32 %1246, 43
  br i1 %1247, label %1248, label %1257

1248:                                             ; preds = %1243
  %1249 = load i32, ptr %168, align 8
  %1250 = and i32 %1249, 65535
  %1251 = icmp eq i32 %1250, 43
  %1252 = and i64 %1140, 7
  %1253 = icmp eq i64 %1252, 0
  %1254 = select i1 %1251, i1 %1253, i1 false
  br i1 %1254, label %1255, label %1257

1255:                                             ; preds = %1248
  %1256 = load i64, ptr %12, align 8, !tbaa !536
  br label %1271

1257:                                             ; preds = %1243, %1248
  %1258 = load i64, ptr %12, align 8, !tbaa !536
  %1259 = trunc i64 %1258 to i32
  %1260 = tail call i32 @mode_for_size(i32 noundef %1259, i32 noundef 2, i32 noundef 1) #17
  %1261 = icmp eq i32 %1260, 1
  br i1 %1261, label %1267, label %1302

1262:                                             ; preds = %1241
  %1263 = load i64, ptr %12, align 8, !tbaa !536
  %1264 = trunc i64 %1263 to i32
  %1265 = tail call i32 @mode_for_size(i32 noundef %1264, i32 noundef 2, i32 noundef 1) #17
  %1266 = icmp eq i32 %1265, 1
  br i1 %1266, label %1268, label %1302

1267:                                             ; preds = %1257
  br i1 %1242, label %1268, label %1271

1268:                                             ; preds = %1262, %1267
  %1269 = phi i64 [ %1258, %1267 ], [ %1263, %1262 ]
  %1270 = tail call ptr @assign_temp(ptr noundef nonnull %38, i32 noundef 0, i32 noundef 1, i32 noundef 1) #17
  br label %1271

1271:                                             ; preds = %1255, %1268, %1267
  %1272 = phi i64 [ %1269, %1268 ], [ %1258, %1267 ], [ %1256, %1255 ]
  %1273 = phi ptr [ %1270, %1268 ], [ %168, %1267 ], [ %168, %1255 ]
  %1274 = icmp eq i64 %1272, 0
  br i1 %1274, label %1402, label %1275

1275:                                             ; preds = %1271
  %1276 = load ptr, ptr %6, align 8, !tbaa !401
  %1277 = load i32, ptr %1276, align 8
  %1278 = and i32 %1277, 65535
  %1279 = icmp eq i32 %1278, 43
  br i1 %1279, label %1280, label %1292

1280:                                             ; preds = %1275
  %1281 = icmp eq ptr %1273, null
  br i1 %1281, label %1289, label %1282

1282:                                             ; preds = %1280
  %1283 = load i32, ptr %1273, align 8
  %1284 = and i32 %1283, 65535
  %1285 = icmp eq i32 %1284, 43
  %1286 = and i64 %1140, 7
  %1287 = icmp eq i64 %1286, 0
  %1288 = select i1 %1285, i1 %1287, i1 false
  br i1 %1288, label %1293, label %1292

1289:                                             ; preds = %1280
  %1290 = and i64 %1140, 7
  %1291 = icmp eq i64 %1290, 0
  br i1 %1291, label %1293, label %1292

1292:                                             ; preds = %1289, %1282, %1275
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9128, ptr noundef nonnull @.str.1) #17
  br label %1293

1293:                                             ; preds = %1282, %1289, %1292
  %1294 = sdiv i64 %1140, 8
  %1295 = tail call ptr @adjust_address_1(ptr noundef nonnull %1276, i32 noundef 0, i64 noundef %1294, i32 noundef 1, i32 noundef 1) #17
  %1296 = add nsw i64 %1272, 7
  %1297 = sdiv i64 %1296, 8
  %1298 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1297) #17
  %1299 = icmp eq i32 %3, 1
  %1300 = select i1 %1299, i32 2, i32 0
  %1301 = tail call ptr @emit_block_move(ptr noundef %1273, ptr noundef %1295, ptr noundef %1298, i32 noundef %1300) #18
  br label %1402

1302:                                             ; preds = %1262, %1239, %1257
  %1303 = phi i32 [ %1260, %1257 ], [ %59, %1239 ], [ %1265, %1262 ]
  %1304 = load ptr, ptr %6, align 8, !tbaa !401
  %1305 = tail call ptr @validize_mem(ptr noundef %1304) #17
  %1306 = load i32, ptr %1305, align 8
  %1307 = and i32 %1306, 65535
  %1308 = icmp eq i32 %1307, 43
  br i1 %1308, label %1309, label %1324

1309:                                             ; preds = %1302
  %1310 = getelementptr inbounds %struct.rtx_def, ptr %1305, i64 0, i32 1
  %1311 = load ptr, ptr %1310, align 8, !tbaa !405
  %1312 = load i32, ptr %1311, align 8
  %1313 = and i32 %1312, 65535
  %1314 = icmp eq i32 %1313, 37
  br i1 %1314, label %1315, label %1324

1315:                                             ; preds = %1309
  %1316 = getelementptr inbounds %struct.rtx_def, ptr %1305, i64 0, i32 1, i32 0, i32 0, i64 1
  %1317 = load ptr, ptr %1316, align 8, !tbaa !405
  %1318 = icmp eq ptr %1317, null
  br i1 %1318, label %1322, label %1319

1319:                                             ; preds = %1315
  %1320 = getelementptr inbounds %struct.mem_attrs, ptr %1317, i64 0, i32 4
  %1321 = load i32, ptr %1320, align 4, !tbaa !503
  br label %1322

1322:                                             ; preds = %1315, %1319
  %1323 = phi i32 [ %1321, %1319 ], [ 8, %1315 ]
  tail call void @mark_reg_pointer(ptr noundef nonnull %1311, i32 noundef %1323) #17
  br label %1324

1324:                                             ; preds = %1322, %1309, %1302
  %1325 = load i64, ptr %12, align 8, !tbaa !536
  %1326 = load i32, ptr %8, align 4, !tbaa !438
  %1327 = icmp eq i32 %3, 1
  %1328 = select i1 %1327, ptr null, ptr %168
  %1329 = tail call ptr @extract_bit_field(ptr noundef nonnull %1305, i64 noundef %1325, i64 noundef %1140, i32 noundef %1326, ptr noundef %1328, i32 noundef %1303, i32 noundef %1303) #17
  br i1 %1240, label %1330, label %1402

1330:                                             ; preds = %1324
  %1331 = zext i32 %1303 to i64
  %1332 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1331
  %1333 = load i8, ptr %1332, align 1, !tbaa !405
  %1334 = zext i8 %1333 to i64
  %1335 = shl nuw nsw i64 %1334, 3
  %1336 = tail call zeroext i8 @component_uses_parent_alias_set(ptr noundef %0) #17
  %1337 = icmp eq i8 %1336, 0
  br i1 %1337, label %1341, label %1338

1338:                                             ; preds = %1330
  %1339 = tail call ptr @assign_stack_local(i32 noundef %1303, i64 noundef %1335, i32 noundef 0) #17
  %1340 = tail call i32 @get_alias_set(ptr noundef %0) #17
  tail call void @set_mem_alias_set(ptr noundef %1339, i32 noundef %1340) #17
  br label %1343

1341:                                             ; preds = %1330
  %1342 = tail call ptr @assign_stack_temp_for_type(i32 noundef %1303, i64 noundef %1335, i32 noundef 0, ptr noundef nonnull %38) #17
  br label %1343

1343:                                             ; preds = %1341, %1338
  %1344 = phi ptr [ %1339, %1338 ], [ %1342, %1341 ]
  %1345 = tail call ptr @emit_move_insn(ptr noundef %1344, ptr noundef %1329) #18
  %1346 = tail call ptr @copy_rtx(ptr noundef %1344) #17
  %1347 = load i32, ptr %1346, align 8
  %1348 = and i32 %1347, -16711681
  %1349 = or disjoint i32 %1348, 65536
  store i32 %1349, ptr %1346, align 8
  tail call void @set_mem_attributes(ptr noundef nonnull %1346, ptr noundef %0, i32 noundef 1) #17
  br label %1402

1350:                                             ; preds = %1236, %1232, %1227, %1224
  %1351 = icmp eq i32 %59, 1
  br i1 %1351, label %1352, label %1353, !prof !761

1352:                                             ; preds = %1350
  store i32 1, ptr %11, align 4, !tbaa !438
  br label %1353

1353:                                             ; preds = %1352, %1350
  %1354 = add i32 %3, -5
  %1355 = icmp ult i32 %1354, -3
  %1356 = load i32, ptr %11, align 4, !tbaa !438
  %1357 = sdiv i64 %1140, 8
  %1358 = zext i1 %1355 to i32
  %1359 = tail call ptr @adjust_address_1(ptr noundef nonnull %1174, i32 noundef %1356, i64 noundef %1357, i32 noundef %1358, i32 noundef 1) #17
  store ptr %1359, ptr %6, align 8, !tbaa !401
  %1360 = icmp eq ptr %1359, %904
  br i1 %1360, label %1361, label %1363, !prof !761

1361:                                             ; preds = %1353
  %1362 = tail call ptr @copy_rtx(ptr noundef nonnull %904) #17
  store ptr %1362, ptr %6, align 8, !tbaa !401
  br label %1363

1363:                                             ; preds = %1361, %1353
  %1364 = phi ptr [ %1362, %1361 ], [ %1359, %1353 ]
  tail call void @set_mem_attributes(ptr noundef %1364, ptr noundef %0, i32 noundef 0) #17
  %1365 = getelementptr inbounds %struct.rtx_def, ptr %1364, i64 0, i32 1
  %1366 = load ptr, ptr %1365, align 8, !tbaa !405
  %1367 = load i32, ptr %1366, align 8
  %1368 = and i32 %1367, 65535
  %1369 = icmp eq i32 %1368, 37
  br i1 %1369, label %1370, label %1379, !prof !772

1370:                                             ; preds = %1363
  %1371 = getelementptr inbounds %struct.rtx_def, ptr %1364, i64 0, i32 1, i32 0, i32 0, i64 1
  %1372 = load ptr, ptr %1371, align 8, !tbaa !405
  %1373 = icmp eq ptr %1372, null
  br i1 %1373, label %1377, label %1374, !prof !773

1374:                                             ; preds = %1370
  %1375 = getelementptr inbounds %struct.mem_attrs, ptr %1372, i64 0, i32 4
  %1376 = load i32, ptr %1375, align 4, !tbaa !503
  br label %1377

1377:                                             ; preds = %1370, %1374
  %1378 = phi i32 [ %1376, %1374 ], [ 8, %1370 ]
  tail call void @mark_reg_pointer(ptr noundef nonnull %1366, i32 noundef %1378) #17
  br label %1379

1379:                                             ; preds = %1377, %1363
  %1380 = load i32, ptr %1364, align 8
  %1381 = shl i32 %1156, 27
  %1382 = and i32 %1381, 134217728
  %1383 = or i32 %1380, %1382
  store i32 %1383, ptr %1364, align 8
  %1384 = load i32, ptr %11, align 4, !tbaa !438
  %1385 = icmp eq i32 %59, %1384
  br i1 %1385, label %1402, label %1386, !prof !765

1386:                                             ; preds = %1379
  %1387 = icmp eq i32 %1384, 1
  br i1 %1387, label %1402, label %1388

1388:                                             ; preds = %1386
  %1389 = icmp eq i32 %1384, %2
  %1390 = add i32 %3, -3
  %1391 = icmp ult i32 %1390, 2
  %1392 = or i1 %1391, %1389
  br i1 %1392, label %1402, label %1393

1393:                                             ; preds = %1388
  %1394 = icmp eq ptr %168, null
  br i1 %1394, label %1395, label %1399

1395:                                             ; preds = %1393
  %1396 = icmp eq i32 %2, 0
  %1397 = select i1 %1396, i32 %59, i32 %2
  %1398 = tail call ptr @gen_reg_rtx(i32 noundef %1397) #17
  br label %1399

1399:                                             ; preds = %1393, %1395
  %1400 = phi ptr [ %1398, %1395 ], [ %168, %1393 ]
  %1401 = load i32, ptr %8, align 4, !tbaa !438
  tail call void @convert_move(ptr noundef %1400, ptr noundef nonnull %1364, i32 noundef %1401) #18
  br label %1402

1402:                                             ; preds = %1324, %1343, %1379, %1386, %1388, %1293, %1271, %956, %1399
  %1403 = phi ptr [ %1400, %1399 ], [ %904, %956 ], [ %1273, %1293 ], [ %1273, %1271 ], [ %1364, %1388 ], [ %1364, %1386 ], [ %1364, %1379 ], [ %1346, %1343 ], [ %1329, %1324 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  br label %1946

1404:                                             ; preds = %164
  %1405 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %1406 = load ptr, ptr %1405, align 8, !tbaa !405
  %1407 = tail call fastcc ptr @expand_expr(ptr noundef %1406, ptr noundef %168, i32 noundef %2, i32 noundef %3) #18
  br label %1946

1408:                                             ; preds = %164
  %1409 = and i64 %57, 134217728
  %1410 = icmp eq i64 %1409, 0
  br i1 %1410, label %1412, label %1411, !prof !774

1411:                                             ; preds = %1408
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #17
  br label %1412

1412:                                             ; preds = %1411, %1408
  %1413 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %0) #17
  %1414 = icmp eq ptr %1413, null
  br i1 %1414, label %1452, label %1415, !prof !775

1415:                                             ; preds = %1412
  %1416 = getelementptr inbounds %struct.tree_decl_common, ptr %1413, i64 0, i32 6
  %1417 = load ptr, ptr %1416, align 8, !tbaa !405
  %1418 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.5, ptr noundef %1417) #17
  %1419 = icmp eq ptr %1418, null
  br i1 %1419, label %1429, label %1420, !prof !774

1420:                                             ; preds = %1415
  %1421 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !776
  %1422 = tail call ptr %1421(ptr noundef nonnull %1413, i32 noundef 1) #17
  %1423 = tail call ptr @identifier_to_locale(ptr noundef %1422) #17
  %1424 = getelementptr inbounds %struct.tree_list, ptr %1418, i64 0, i32 2
  %1425 = load ptr, ptr %1424, align 8, !tbaa !405
  %1426 = getelementptr inbounds %struct.tree_list, ptr %1425, i64 0, i32 2
  %1427 = load ptr, ptr %1426, align 8, !tbaa !405
  %1428 = getelementptr inbounds %struct.tree_string, ptr %1427, i64 0, i32 2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.6, ptr noundef nonnull %0, ptr noundef %1423, ptr noundef nonnull %1428) #17
  br label %1429

1429:                                             ; preds = %1415, %1420
  %1430 = load ptr, ptr %1416, align 8, !tbaa !405
  %1431 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.7, ptr noundef %1430) #17
  %1432 = icmp eq ptr %1431, null
  br i1 %1432, label %1444, label %1433, !prof !774

1433:                                             ; preds = %1429
  %1434 = tail call i32 @tree_nonartificial_location(ptr noundef nonnull %0) #17
  %1435 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !776
  %1436 = tail call ptr %1435(ptr noundef nonnull %1413, i32 noundef 1) #17
  %1437 = tail call ptr @identifier_to_locale(ptr noundef %1436) #17
  %1438 = getelementptr inbounds %struct.tree_list, ptr %1431, i64 0, i32 2
  %1439 = load ptr, ptr %1438, align 8, !tbaa !405
  %1440 = getelementptr inbounds %struct.tree_list, ptr %1439, i64 0, i32 2
  %1441 = load ptr, ptr %1440, align 8, !tbaa !405
  %1442 = getelementptr inbounds %struct.tree_string, ptr %1441, i64 0, i32 2
  %1443 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %1434, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %0, ptr noundef %1437, ptr noundef nonnull %1442) #17
  br label %1444

1444:                                             ; preds = %1429, %1433
  %1445 = getelementptr inbounds %struct.tree_function_decl, ptr %1413, i64 0, i32 5
  %1446 = load i32, ptr %1445, align 8
  %1447 = lshr i32 %1446, 11
  %1448 = and i32 %1447, 3
  switch i32 %1448, label %1450 [
    i32 0, label %1452
    i32 1, label %1449
  ], !prof !777

1449:                                             ; preds = %1444
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9253, ptr noundef nonnull @.str.1) #17
  br label %1450

1450:                                             ; preds = %1449, %1444
  %1451 = tail call ptr @expand_builtin(ptr noundef nonnull %0, ptr noundef %168, ptr noundef %169, i32 noundef %2, i32 noundef %166) #17
  br label %1946

1452:                                             ; preds = %1412, %1444
  %1453 = tail call ptr @expand_call(ptr noundef nonnull %0, ptr noundef %168, i32 noundef %166) #17
  br label %1946

1454:                                             ; preds = %164
  %1455 = icmp eq i32 %59, 1
  br i1 %1455, label %1456, label %1559

1456:                                             ; preds = %1454
  %1457 = load ptr, ptr %37, align 8, !tbaa !405
  %1458 = getelementptr inbounds %struct.tree_type, ptr %1457, i64 0, i32 2
  %1459 = load ptr, ptr %1458, align 8, !tbaa !405
  %1460 = load i64, ptr %1459, align 8
  %1461 = and i64 %1460, 65535
  %1462 = icmp eq i64 %1461, 23
  br i1 %1462, label %1463, label %1559

1463:                                             ; preds = %1456
  %1464 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %1465 = load ptr, ptr %1464, align 8, !tbaa !405
  %1466 = load i64, ptr %1465, align 8
  %1467 = and i64 %1466, 65535
  %1468 = icmp eq i64 %1467, 14
  br i1 %1468, label %1469, label %1471

1469:                                             ; preds = %1463
  %1470 = tail call i32 @vector_type_mode(ptr noundef nonnull %1465) #17
  br label %1476

1471:                                             ; preds = %1463
  %1472 = getelementptr inbounds %struct.tree_type, ptr %1465, i64 0, i32 6
  %1473 = load i32, ptr %1472, align 4
  %1474 = lshr i32 %1473, 16
  %1475 = and i32 %1474, 255
  br label %1476

1476:                                             ; preds = %1471, %1469
  %1477 = phi i32 [ %1470, %1469 ], [ %1475, %1471 ]
  %1478 = icmp eq i32 %1477, 1
  br i1 %1478, label %1559, label %1479

1479:                                             ; preds = %1476
  %1480 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %82) #18, !range !591
  %1481 = icmp eq i8 %1480, 0
  br i1 %1481, label %1559, label %1482

1482:                                             ; preds = %1479
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #16
  store i32 0, ptr %21, align 4, !tbaa !438
  %1483 = call ptr @get_inner_reference(ptr noundef nonnull %82, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %16, ptr noundef nonnull %20, ptr noundef nonnull %21, i8 zeroext poison) #18
  %1484 = load ptr, ptr %19, align 8, !tbaa !401
  %1485 = icmp eq ptr %1484, null
  br i1 %1485, label %1486, label %1550

1486:                                             ; preds = %1482
  %1487 = load i64, ptr %18, align 8, !tbaa !536
  %1488 = and i64 %1487, 7
  %1489 = icmp eq i64 %1488, 0
  %1490 = load i64, ptr %17, align 8
  %1491 = icmp sgt i64 %1490, -1
  %1492 = select i1 %1489, i1 %1491, i1 false
  br i1 %1492, label %1493, label %1550

1493:                                             ; preds = %1486
  %1494 = load ptr, ptr %37, align 8, !tbaa !405
  %1495 = getelementptr inbounds %struct.tree_type, ptr %1494, i64 0, i32 2
  %1496 = load ptr, ptr %1495, align 8, !tbaa !405
  %1497 = tail call i32 @compare_tree_int(ptr noundef %1496, i64 noundef %1490) #17
  %1498 = icmp eq i32 %1497, 0
  br i1 %1498, label %1499, label %1550

1499:                                             ; preds = %1493
  %1500 = getelementptr inbounds %struct.tree_common, ptr %1483, i64 0, i32 2
  %1501 = load ptr, ptr %1500, align 8, !tbaa !405
  %1502 = load i64, ptr %1501, align 8
  %1503 = and i64 %1502, 65535
  %1504 = icmp eq i64 %1503, 17
  br i1 %1504, label %1505, label %1514

1505:                                             ; preds = %1499
  %1506 = getelementptr inbounds %struct.tree_type, ptr %1501, i64 0, i32 2
  %1507 = load ptr, ptr %1506, align 8, !tbaa !405
  %1508 = load i64, ptr %1507, align 8
  %1509 = and i64 %1508, 65535
  %1510 = icmp ne i64 %1509, 23
  %1511 = icmp ne i32 %3, 1
  %1512 = and i1 %1511, %1510
  %1513 = select i1 %1512, ptr %168, ptr null
  br label %1514

1514:                                             ; preds = %1505, %1499
  %1515 = phi ptr [ null, %1499 ], [ %1513, %1505 ]
  %1516 = add i32 %3, -3
  %1517 = icmp ult i32 %1516, 2
  %1518 = icmp eq i32 %3, 1
  %1519 = or i1 %1518, %1517
  %1520 = select i1 %1519, i32 %3, i32 0
  %1521 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %1483, ptr noundef %1515, i32 noundef 0, i32 noundef %1520) #18
  %1522 = load i32, ptr %1521, align 8
  %1523 = and i32 %1522, 65535
  %1524 = icmp eq i32 %1523, 43
  br i1 %1524, label %1525, label %1550

1525:                                             ; preds = %1514
  %1526 = add i32 %3, -5
  %1527 = icmp ult i32 %1526, -3
  %1528 = sdiv i64 %1487, 8
  %1529 = zext i1 %1527 to i32
  %1530 = tail call ptr @adjust_address_1(ptr noundef nonnull %1521, i32 noundef 1, i64 noundef %1528, i32 noundef %1529, i32 noundef 1) #17
  store ptr %1530, ptr %6, align 8, !tbaa !401
  %1531 = icmp eq ptr %1530, %1521
  br i1 %1531, label %1532, label %1534

1532:                                             ; preds = %1525
  %1533 = tail call ptr @copy_rtx(ptr noundef nonnull %1521) #17
  store ptr %1533, ptr %6, align 8, !tbaa !401
  br label %1534

1534:                                             ; preds = %1532, %1525
  %1535 = phi ptr [ %1533, %1532 ], [ %1530, %1525 ]
  tail call void @set_mem_attributes(ptr noundef %1535, ptr noundef nonnull %82, i32 noundef 0) #17
  %1536 = getelementptr inbounds %struct.rtx_def, ptr %1535, i64 0, i32 1
  %1537 = load ptr, ptr %1536, align 8, !tbaa !405
  %1538 = load i32, ptr %1537, align 8
  %1539 = and i32 %1538, 65535
  %1540 = icmp eq i32 %1539, 37
  br i1 %1540, label %1541, label %1551

1541:                                             ; preds = %1534
  %1542 = getelementptr inbounds %struct.rtx_def, ptr %1535, i64 0, i32 1, i32 0, i32 0, i64 1
  %1543 = load ptr, ptr %1542, align 8, !tbaa !405
  %1544 = icmp eq ptr %1543, null
  br i1 %1544, label %1548, label %1545

1545:                                             ; preds = %1541
  %1546 = getelementptr inbounds %struct.mem_attrs, ptr %1543, i64 0, i32 4
  %1547 = load i32, ptr %1546, align 4, !tbaa !503
  br label %1548

1548:                                             ; preds = %1541, %1545
  %1549 = phi i32 [ %1547, %1545 ], [ 8, %1541 ]
  tail call void @mark_reg_pointer(ptr noundef nonnull %1537, i32 noundef %1549) #17
  br label %1551

1550:                                             ; preds = %1514, %1493, %1486, %1482
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #16
  br label %1559

1551:                                             ; preds = %1534, %1548
  %1552 = load i32, ptr %21, align 4, !tbaa !438
  %1553 = load i32, ptr %1535, align 8
  %1554 = shl i32 %1552, 27
  %1555 = and i32 %1554, 134217728
  %1556 = or i32 %1555, %1553
  store i32 %1556, ptr %1535, align 8
  %1557 = load ptr, ptr %6, align 8, !tbaa !401
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #16
  %1558 = icmp eq ptr %1557, null
  br i1 %1558, label %1559, label %1561

1559:                                             ; preds = %1456, %1476, %1479, %1550, %1454, %1551
  %1560 = tail call fastcc ptr @expand_expr(ptr noundef %82, ptr noundef null, i32 noundef 0, i32 noundef %3) #18
  store ptr %1560, ptr %6, align 8, !tbaa !401
  br label %1561

1561:                                             ; preds = %1559, %1551
  %1562 = phi ptr [ %1560, %1559 ], [ %1557, %1551 ]
  %1563 = load i32, ptr %1562, align 8
  %1564 = lshr i32 %1563, 16
  %1565 = and i32 %1564, 255
  %1566 = icmp eq i32 %59, %1565
  br i1 %1566, label %1679, label %1567

1567:                                             ; preds = %1561
  %1568 = icmp eq i32 %1565, 1
  %1569 = or i1 %1455, %1568
  br i1 %1569, label %1570, label %1572

1570:                                             ; preds = %1567
  %1571 = zext nneg i32 %1565 to i64
  br label %1594

1572:                                             ; preds = %1567
  %1573 = zext i32 %59 to i64
  %1574 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1573
  %1575 = load i8, ptr %1574, align 1, !tbaa !405
  %1576 = zext nneg i32 %1565 to i64
  %1577 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1576
  %1578 = load i8, ptr %1577, align 1, !tbaa !405
  %1579 = icmp eq i8 %1575, %1578
  br i1 %1579, label %1580, label %1594

1580:                                             ; preds = %1572
  %1581 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1576
  %1582 = load i8, ptr %1581, align 1, !tbaa !405
  %1583 = and i8 %1582, -2
  %1584 = icmp eq i8 %1583, 10
  br i1 %1584, label %1594, label %1585

1585:                                             ; preds = %1580
  %1586 = and i32 %1563, 65535
  %1587 = icmp eq i32 %1586, 39
  br i1 %1587, label %1588, label %1590

1588:                                             ; preds = %1585
  %1589 = tail call ptr @force_reg(i32 noundef %1565, ptr noundef nonnull %1562) #17
  br label %1590

1590:                                             ; preds = %1588, %1585
  %1591 = phi ptr [ %1589, %1588 ], [ %1562, %1585 ]
  %1592 = load ptr, ptr @rtl_hooks, align 8, !tbaa !434
  %1593 = tail call ptr %1592(i32 noundef %59, ptr noundef %1591) #17
  store ptr %1593, ptr %6, align 8, !tbaa !401
  br label %1679

1594:                                             ; preds = %1570, %1580, %1572
  %1595 = phi i64 [ %1571, %1570 ], [ %1576, %1580 ], [ %1576, %1572 ]
  %1596 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1595
  %1597 = load i8, ptr %1596, align 1, !tbaa !405
  %1598 = and i8 %1597, -2
  %1599 = icmp eq i8 %1598, 2
  br i1 %1599, label %1600, label %1614

1600:                                             ; preds = %1594
  %1601 = zext i32 %59 to i64
  %1602 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1601
  %1603 = load i8, ptr %1602, align 1, !tbaa !405
  %1604 = and i8 %1603, -2
  %1605 = icmp eq i8 %1604, 2
  br i1 %1605, label %1606, label %1614

1606:                                             ; preds = %1600
  %1607 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %1608 = load ptr, ptr %1607, align 8, !tbaa !405
  %1609 = load i64, ptr %1608, align 8
  %1610 = trunc i64 %1609 to i32
  %1611 = lshr i32 %1610, 21
  %1612 = and i32 %1611, 1
  %1613 = tail call ptr @convert_modes(i32 noundef %59, i32 noundef %1565, ptr noundef nonnull %1562, i32 noundef %1612) #18
  store ptr %1613, ptr %6, align 8, !tbaa !401
  br label %1679

1614:                                             ; preds = %1600, %1594
  %1615 = and i32 %1563, 65535
  %1616 = icmp eq i32 %1615, 43
  br i1 %1616, label %1679, label %1617

1617:                                             ; preds = %1614
  %1618 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %1619 = load ptr, ptr %1618, align 8, !tbaa !405
  %1620 = load i64, ptr %0, align 8
  %1621 = and i64 %1620, 262144
  %1622 = icmp eq i64 %1621, 0
  br i1 %1622, label %1624, label %1623

1623:                                             ; preds = %1617
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9356, ptr noundef nonnull @.str.1) #17
  br label %1624

1624:                                             ; preds = %1617, %1623
  %1625 = icmp eq ptr %168, null
  %1626 = load i64, ptr %1619, align 8
  br i1 %1625, label %1645, label %1627

1627:                                             ; preds = %1624
  %1628 = load i32, ptr %168, align 8
  %1629 = lshr i32 %1628, 16
  %1630 = and i32 %1629, 255
  %1631 = and i64 %1626, 65535
  %1632 = icmp eq i64 %1631, 14
  br i1 %1632, label %1633, label %1635

1633:                                             ; preds = %1627
  %1634 = tail call i32 @vector_type_mode(ptr noundef nonnull %1619) #17
  br label %1640

1635:                                             ; preds = %1627
  %1636 = getelementptr inbounds %struct.tree_type, ptr %1619, i64 0, i32 6
  %1637 = load i32, ptr %1636, align 4
  %1638 = lshr i32 %1637, 16
  %1639 = and i32 %1638, 255
  br label %1640

1640:                                             ; preds = %1635, %1633
  %1641 = phi i32 [ %1634, %1633 ], [ %1639, %1635 ]
  %1642 = icmp eq i32 %1630, %1641
  br i1 %1642, label %1676, label %1643

1643:                                             ; preds = %1640
  %1644 = load i64, ptr %1619, align 8
  br label %1645

1645:                                             ; preds = %1643, %1624
  %1646 = phi i64 [ %1644, %1643 ], [ %1626, %1624 ]
  %1647 = and i64 %1646, 65535
  %1648 = icmp eq i64 %1647, 14
  br i1 %1648, label %1649, label %1652

1649:                                             ; preds = %1645
  %1650 = tail call i32 @vector_type_mode(ptr noundef nonnull %1619) #17
  %1651 = load i64, ptr %1619, align 8
  br label %1657

1652:                                             ; preds = %1645
  %1653 = getelementptr inbounds %struct.tree_type, ptr %1619, i64 0, i32 6
  %1654 = load i32, ptr %1653, align 4
  %1655 = lshr i32 %1654, 16
  %1656 = and i32 %1655, 255
  br label %1657

1657:                                             ; preds = %1652, %1649
  %1658 = phi i64 [ %1651, %1649 ], [ %1646, %1652 ]
  %1659 = phi i32 [ %1650, %1649 ], [ %1656, %1652 ]
  %1660 = and i64 %1658, 65535
  %1661 = icmp eq i64 %1660, 14
  br i1 %1661, label %1662, label %1664

1662:                                             ; preds = %1657
  %1663 = tail call i32 @vector_type_mode(ptr noundef nonnull %1619) #17
  br label %1669

1664:                                             ; preds = %1657
  %1665 = getelementptr inbounds %struct.tree_type, ptr %1619, i64 0, i32 6
  %1666 = load i32, ptr %1665, align 4
  %1667 = lshr i32 %1666, 16
  %1668 = and i32 %1667, 255
  br label %1669

1669:                                             ; preds = %1664, %1662
  %1670 = phi i32 [ %1663, %1662 ], [ %1668, %1664 ]
  %1671 = zext i32 %1670 to i64
  %1672 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1671
  %1673 = load i8, ptr %1672, align 1, !tbaa !405
  %1674 = zext i8 %1673 to i64
  %1675 = tail call ptr @assign_stack_temp_for_type(i32 noundef %1659, i64 noundef %1674, i32 noundef 0, ptr noundef nonnull %1619) #17
  br label %1676

1676:                                             ; preds = %1669, %1640
  %1677 = phi ptr [ %1675, %1669 ], [ %168, %1640 ]
  %1678 = tail call ptr @emit_move_insn(ptr noundef %1677, ptr noundef nonnull %1562) #18
  store ptr %1677, ptr %6, align 8, !tbaa !401
  br label %1679

1679:                                             ; preds = %1590, %1614, %1676, %1606, %1561
  %1680 = phi ptr [ %1593, %1590 ], [ %1562, %1614 ], [ %1677, %1676 ], [ %1613, %1606 ], [ %1562, %1561 ]
  %1681 = load i32, ptr %1680, align 8
  %1682 = and i32 %1681, 65535
  %1683 = icmp eq i32 %1682, 43
  br i1 %1683, label %1684, label %1946

1684:                                             ; preds = %1679
  %1685 = tail call ptr @copy_rtx(ptr noundef nonnull %1680) #17
  %1686 = load i64, ptr %38, align 8
  %1687 = and i64 %1686, 33554432
  %1688 = icmp eq i64 %1687, 0
  br i1 %1688, label %1705, label %1689

1689:                                             ; preds = %1684
  %1690 = getelementptr inbounds %struct.rtx_def, ptr %1685, i64 0, i32 1, i32 0, i32 0, i64 1
  %1691 = load ptr, ptr %1690, align 8, !tbaa !405
  %1692 = icmp eq ptr %1691, null
  br i1 %1692, label %1693, label %1697

1693:                                             ; preds = %1689
  %1694 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 7
  %1695 = load i32, ptr %1694, align 8, !tbaa !405
  %1696 = tail call i32 @llvm.umax.i32(i32 %1695, i32 8)
  br label %1703

1697:                                             ; preds = %1689
  %1698 = getelementptr inbounds %struct.mem_attrs, ptr %1691, i64 0, i32 4
  %1699 = load i32, ptr %1698, align 4, !tbaa !503
  %1700 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 7
  %1701 = load i32, ptr %1700, align 8, !tbaa !405
  %1702 = tail call i32 @llvm.umax.i32(i32 %1699, i32 %1701)
  br label %1703

1703:                                             ; preds = %1697, %1693
  %1704 = phi i32 [ %1696, %1693 ], [ %1702, %1697 ]
  tail call void @set_mem_align(ptr noundef nonnull %1685, i32 noundef %1704) #17
  br label %1705

1705:                                             ; preds = %1684, %1703
  %1706 = tail call ptr @adjust_address_1(ptr noundef %1685, i32 noundef %59, i64 noundef 0, i32 noundef 1, i32 noundef 1) #17
  br label %1946

1707:                                             ; preds = %164, %164
  br i1 %167, label %1732, label %1708

1708:                                             ; preds = %1707
  %1709 = icmp eq ptr %168, null
  %1710 = icmp eq i32 %3, 1
  %1711 = or i1 %1710, %1709
  br i1 %1711, label %1728, label %1712

1712:                                             ; preds = %1708
  %1713 = tail call i32 @safe_from_p(ptr noundef nonnull %168, ptr noundef %82, i32 noundef 1) #18, !range !706
  %1714 = icmp eq i32 %1713, 0
  br i1 %1714, label %1728, label %1715

1715:                                             ; preds = %1712
  %1716 = tail call i32 @safe_from_p(ptr noundef nonnull %168, ptr noundef %81, i32 noundef 1) #18, !range !706
  %1717 = icmp eq i32 %1716, 0
  br i1 %1717, label %1728, label %1718

1718:                                             ; preds = %1715
  %1719 = load i32, ptr @optimize, align 4, !tbaa !438
  %1720 = icmp eq i32 %1719, 0
  br i1 %1720, label %1721, label %1735

1721:                                             ; preds = %1718
  %1722 = load i32, ptr %168, align 8
  %1723 = and i32 %1722, 65535
  %1724 = icmp eq i32 %1723, 37
  br i1 %1724, label %1725, label %1735

1725:                                             ; preds = %1721
  %1726 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %168) #18
  %1727 = icmp ult i32 %1726, 53
  br i1 %1727, label %1728, label %1735

1728:                                             ; preds = %1725, %1715, %1712, %1708
  %1729 = icmp eq i32 %2, 0
  %1730 = select i1 %1729, i32 %59, i32 %2
  %1731 = tail call ptr @gen_reg_rtx(i32 noundef %1730) #17
  br label %1732

1732:                                             ; preds = %1728, %1707
  %1733 = phi ptr [ %168, %1707 ], [ %1731, %1728 ]
  %1734 = icmp eq ptr %1733, null
  br i1 %1734, label %1742, label %1735

1735:                                             ; preds = %1721, %1725, %1718, %1732
  %1736 = phi ptr [ %1733, %1732 ], [ %168, %1718 ], [ %168, %1725 ], [ %168, %1721 ]
  %1737 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %1738 = tail call ptr @emit_move_insn(ptr noundef nonnull %1736, ptr noundef %1737) #18
  %1739 = tail call ptr @gen_label_rtx() #17
  tail call void @jumpifnot_1(i32 noundef %25, ptr noundef %82, ptr noundef %81, ptr noundef %1739, i32 noundef -1) #17
  %1740 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !401
  %1741 = tail call ptr @emit_move_insn(ptr noundef nonnull %1736, ptr noundef %1740) #18
  br label %1744

1742:                                             ; preds = %1732
  %1743 = tail call ptr @gen_label_rtx() #17
  tail call void @jumpifnot_1(i32 noundef %25, ptr noundef %82, ptr noundef %81, ptr noundef %1743, i32 noundef -1) #17
  br label %1744

1744:                                             ; preds = %1742, %1735
  %1745 = phi ptr [ %1743, %1742 ], [ %1739, %1735 ]
  %1746 = phi ptr [ null, %1742 ], [ %1736, %1735 ]
  %1747 = tail call ptr @emit_label(ptr noundef %1745) #17
  %1748 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %1749 = select i1 %167, ptr %1748, ptr %1746
  br label %1946

1750:                                             ; preds = %164
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #16
  br i1 %167, label %1752, label %1751

1751:                                             ; preds = %1750
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9443, ptr noundef nonnull @.str.1) #17
  br label %1752

1752:                                             ; preds = %1750, %1751
  %1753 = tail call fastcc { ptr, ptr } @tsi_start(ptr noundef nonnull %0) #18
  %1754 = extractvalue { ptr, ptr } %1753, 0
  %1755 = extractvalue { ptr, ptr } %1753, 1
  store ptr %1754, ptr %22, align 8, !tbaa.struct !778
  %1756 = getelementptr inbounds i8, ptr %22, i64 8
  store ptr %1755, ptr %1756, align 8, !tbaa.struct !779
  %1757 = tail call fastcc zeroext i8 @tsi_end_p(ptr %1754) #18
  %1758 = icmp eq i8 %1757, 0
  br i1 %1758, label %1759, label %1767

1759:                                             ; preds = %1752, %1759
  %1760 = phi ptr [ %1764, %1759 ], [ %1754, %1752 ]
  %1761 = tail call fastcc ptr @tsi_stmt(ptr %1760) #18
  %1762 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %1763 = tail call fastcc ptr @expand_expr(ptr noundef %1761, ptr noundef %1762, i32 noundef 0, i32 noundef %3) #18
  call fastcc void @tsi_next(ptr noundef nonnull %22) #18
  %1764 = load ptr, ptr %22, align 8
  %1765 = tail call fastcc zeroext i8 @tsi_end_p(ptr %1764) #18
  %1766 = icmp eq i8 %1765, 0
  br i1 %1766, label %1759, label %1767, !llvm.loop !780

1767:                                             ; preds = %1759, %1752
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #16
  %1768 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  br label %1946

1769:                                             ; preds = %164
  %1770 = load i64, ptr %38, align 8
  %1771 = and i64 %1770, 65535
  %1772 = icmp eq i64 %1771, 19
  br i1 %1772, label %1773, label %1775

1773:                                             ; preds = %1769
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9454, ptr noundef nonnull @.str.1) #17
  %1774 = load i64, ptr %38, align 8
  br label %1775

1775:                                             ; preds = %1769, %1773
  %1776 = phi i64 [ %1770, %1769 ], [ %1774, %1773 ]
  %1777 = and i64 %1776, 262144
  %1778 = icmp ne i64 %1777, 0
  %1779 = or i1 %167, %1778
  br i1 %1779, label %1789, label %1780

1780:                                             ; preds = %1775
  %1781 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %1782 = load ptr, ptr %1781, align 8, !tbaa !405
  %1783 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !401
  %1784 = icmp eq ptr %1782, %1783
  br i1 %1784, label %1789, label %1785

1785:                                             ; preds = %1780
  %1786 = getelementptr inbounds %struct.tree_common, ptr %80, i64 0, i32 2
  %1787 = load ptr, ptr %1786, align 8, !tbaa !405
  %1788 = icmp eq ptr %1787, %1783
  br i1 %1788, label %1789, label %1790

1789:                                             ; preds = %1785, %1780, %1775
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9464, ptr noundef nonnull @.str.1) #17
  br label %1790

1790:                                             ; preds = %1785, %1789
  %1791 = icmp ne i32 %3, 1
  %1792 = icmp ne ptr %168, null
  %1793 = and i1 %1791, %1792
  br i1 %1793, label %1794, label %1811

1794:                                             ; preds = %1790
  %1795 = tail call i32 @safe_from_p(ptr noundef nonnull %168, ptr noundef %82, i32 noundef 1) #18, !range !706
  %1796 = icmp eq i32 %1795, 0
  br i1 %1796, label %1811, label %1797

1797:                                             ; preds = %1794
  %1798 = load i32, ptr %168, align 8
  %1799 = lshr i32 %1798, 16
  %1800 = and i32 %1799, 255
  %1801 = icmp eq i32 %1800, %59
  br i1 %1801, label %1802, label %1811

1802:                                             ; preds = %1797
  %1803 = tail call i32 @can_conditionally_move_p(i32 noundef %59) #17
  %1804 = icmp eq i32 %1803, 0
  %1805 = load i32, ptr %168, align 8
  %1806 = and i32 %1805, 65535
  br i1 %1804, label %1809, label %1807

1807:                                             ; preds = %1802
  %1808 = icmp eq i32 %1806, 37
  br i1 %1808, label %1813, label %1811

1809:                                             ; preds = %1802
  %1810 = icmp eq i32 %1806, 43
  br i1 %1810, label %1811, label %1813

1811:                                             ; preds = %1809, %1807, %1797, %1794, %1790
  %1812 = tail call ptr @assign_temp(ptr noundef nonnull %38, i32 noundef 0, i32 noundef 0, i32 noundef 1) #17
  br label %1813

1813:                                             ; preds = %1807, %1809, %1811
  %1814 = phi ptr [ %1812, %1811 ], [ %168, %1809 ], [ %168, %1807 ]
  tail call void @do_pending_stack_adjust() #17
  %1815 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !523
  %1816 = add nsw i32 %1815, 1
  store i32 %1816, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !523
  %1817 = tail call ptr @gen_label_rtx() #17
  %1818 = tail call ptr @gen_label_rtx() #17
  tail call void @jumpifnot(ptr noundef %82, ptr noundef %1817, i32 noundef -1) #17
  %1819 = icmp eq i32 %3, 1
  %1820 = zext i1 %1819 to i32
  %1821 = tail call ptr @store_expr(ptr noundef %81, ptr noundef %1814, i32 noundef %1820, i8 noundef zeroext 0) #18
  %1822 = tail call ptr @gen_jump(ptr noundef %1818) #17
  %1823 = tail call ptr @emit_jump_insn(ptr noundef %1822) #17
  %1824 = tail call ptr @emit_barrier() #17
  %1825 = tail call ptr @emit_label(ptr noundef %1817) #17
  %1826 = tail call ptr @store_expr(ptr noundef %80, ptr noundef %1814, i32 noundef %1820, i8 noundef zeroext 0) #18
  %1827 = tail call ptr @emit_label(ptr noundef %1818) #17
  %1828 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !523
  %1829 = add nsw i32 %1828, -1
  store i32 %1829, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !523
  br label %1946

1830:                                             ; preds = %164
  %1831 = tail call ptr @expand_vec_cond_expr(ptr noundef nonnull %38, ptr noundef %82, ptr noundef %81, ptr noundef %80, ptr noundef %168) #17
  br label %1946

1832:                                             ; preds = %164
  br i1 %167, label %1834, label %1833

1833:                                             ; preds = %1832
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9512, ptr noundef nonnull @.str.1) #17
  br label %1834

1834:                                             ; preds = %1832, %1833
  %1835 = load i64, ptr %82, align 8
  %1836 = and i64 %1835, 65535
  %1837 = icmp eq i64 %1836, 41
  br i1 %1837, label %1838, label %1884

1838:                                             ; preds = %1834
  %1839 = load i64, ptr %81, align 8
  %1840 = trunc i64 %1839 to i16
  switch i16 %1840, label %1884 [
    i16 87, label %1841
    i16 89, label %1841
  ]

1841:                                             ; preds = %1838, %1838
  %1842 = getelementptr inbounds %struct.tree_exp, ptr %81, i64 0, i32 3
  %1843 = load ptr, ptr %1842, align 8, !tbaa !405
  %1844 = icmp eq ptr %1843, %82
  br i1 %1844, label %1845, label %1884

1845:                                             ; preds = %1841
  %1846 = getelementptr inbounds %struct.tree_exp, ptr %81, i64 1
  %1847 = load ptr, ptr %1846, align 8, !tbaa !405
  %1848 = load i64, ptr %1847, align 8
  %1849 = and i64 %1848, 65535
  %1850 = icmp eq i64 %1849, 41
  br i1 %1850, label %1851, label %1884

1851:                                             ; preds = %1845
  %1852 = getelementptr inbounds %struct.tree_exp, ptr %82, i64 1
  %1853 = load ptr, ptr %1852, align 8, !tbaa !405
  %1854 = getelementptr inbounds %struct.tree_decl_common, ptr %1853, i64 0, i32 1
  %1855 = load ptr, ptr %1854, align 8, !tbaa !405
  %1856 = tail call i32 @integer_onep(ptr noundef %1855) #17
  %1857 = icmp eq i32 %1856, 0
  br i1 %1857, label %1884, label %1858

1858:                                             ; preds = %1851
  %1859 = load ptr, ptr %1846, align 8, !tbaa !405
  %1860 = getelementptr inbounds %struct.tree_exp, ptr %1859, i64 1
  %1861 = load ptr, ptr %1860, align 8, !tbaa !405
  %1862 = getelementptr inbounds %struct.tree_decl_common, ptr %1861, i64 0, i32 1
  %1863 = load ptr, ptr %1862, align 8, !tbaa !405
  %1864 = tail call i32 @integer_onep(ptr noundef %1863) #17
  %1865 = icmp eq i32 %1864, 0
  br i1 %1865, label %1884, label %1866

1866:                                             ; preds = %1858
  %1867 = tail call ptr @gen_label_rtx() #17
  %1868 = load i64, ptr %81, align 8
  %1869 = and i64 %1868, 65535
  %1870 = icmp eq i64 %1869, 87
  %1871 = load ptr, ptr %1846, align 8, !tbaa !405
  %1872 = select i1 %1870, ptr %1867, ptr null
  %1873 = select i1 %1870, ptr null, ptr %1867
  tail call void @do_jump(ptr noundef %1871, ptr noundef %1872, ptr noundef %1873, i32 noundef -1) #17
  %1874 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %1875 = load ptr, ptr %1874, align 8, !tbaa !405
  %1876 = zext i1 %1870 to i64
  %1877 = tail call ptr @build_int_cst(ptr noundef %1875, i64 noundef %1876) #17
  %1878 = load i64, ptr %0, align 8
  %1879 = trunc i64 %1878 to i32
  %1880 = lshr i32 %1879, 26
  %1881 = trunc i32 %1880 to i8
  %1882 = and i8 %1881, 1
  tail call void @expand_assignment(ptr noundef nonnull %82, ptr noundef %1877, i8 noundef zeroext %1882) #18
  tail call void @do_pending_stack_adjust() #17
  %1883 = tail call ptr @emit_label(ptr noundef %1867) #17
  br label %1890

1884:                                             ; preds = %1838, %1858, %1851, %1845, %1841, %1834
  %1885 = load i64, ptr %0, align 8
  %1886 = trunc i64 %1885 to i32
  %1887 = lshr i32 %1886, 26
  %1888 = trunc i32 %1887 to i8
  %1889 = and i8 %1888, 1
  tail call void @expand_assignment(ptr noundef nonnull %82, ptr noundef %81, i8 noundef zeroext %1889) #18
  br label %1890

1890:                                             ; preds = %1884, %1866
  %1891 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  br label %1946

1892:                                             ; preds = %164
  %1893 = tail call fastcc ptr @expand_expr_addr_expr(ptr noundef nonnull %0, ptr noundef %168, i32 noundef %2, i32 noundef %3) #18
  br label %1946

1894:                                             ; preds = %164
  %1895 = tail call fastcc ptr @expand_normal(ptr noundef %82) #18
  %1896 = tail call fastcc ptr @read_complex_part(ptr noundef %1895, i8 noundef zeroext 0) #18
  br label %1946

1897:                                             ; preds = %164
  %1898 = tail call fastcc ptr @expand_normal(ptr noundef %82) #18
  %1899 = tail call fastcc ptr @read_complex_part(ptr noundef %1898, i8 noundef zeroext 1) #18
  br label %1946

1900:                                             ; preds = %164, %164, %164, %164, %164
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9563, ptr noundef nonnull @.str.1) #17
  br label %1901

1901:                                             ; preds = %164, %164, %164, %164, %1900
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9570, ptr noundef nonnull @.str.1) #17
  br label %1902

1902:                                             ; preds = %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %164, %1901
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9588, ptr noundef nonnull @.str.1) #17
  br label %1903

1903:                                             ; preds = %164, %1902
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9593, ptr noundef nonnull @.str.1) #17
  br label %1904

1904:                                             ; preds = %164, %1903
  %1905 = tail call ptr @expand_expr_real(ptr noundef %82, ptr noundef %168, i32 noundef %2, i32 noundef %3, ptr noundef %4) #18
  br label %1946

1906:                                             ; preds = %164
  %1907 = tail call ptr @optab_for_tree_code(i32 noundef 151, ptr noundef nonnull %38, i32 noundef 0) #17
  call fastcc void @expand_operands(ptr noundef %82, ptr noundef %81, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0) #18
  %1908 = tail call fastcc ptr @expand_normal(ptr noundef %80) #18
  %1909 = load ptr, ptr %6, align 8, !tbaa !401
  %1910 = load ptr, ptr %7, align 8, !tbaa !401
  %1911 = load i32, ptr %8, align 4, !tbaa !438
  %1912 = tail call ptr @expand_ternary_op(i32 noundef %59, ptr noundef %1907, ptr noundef %1909, ptr noundef %1910, ptr noundef %1908, ptr noundef %168, i32 noundef %1911) #17
  %1913 = icmp eq ptr %1912, null
  br i1 %1913, label %1914, label %1946

1914:                                             ; preds = %1906
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 9613, ptr noundef nonnull @.str.1) #17
  br label %1946

1915:                                             ; preds = %164
  call fastcc void @expand_operands(ptr noundef %82, ptr noundef %81, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 0) #18
  %1916 = tail call fastcc ptr @expand_normal(ptr noundef %80) #18
  %1917 = load ptr, ptr %6, align 8, !tbaa !401
  %1918 = load ptr, ptr %7, align 8, !tbaa !401
  %1919 = load i32, ptr %8, align 4, !tbaa !438
  %1920 = call ptr @expand_widen_pattern_expr(ptr noundef nonnull %9, ptr noundef %1917, ptr noundef %1918, ptr noundef %1916, ptr noundef %168, i32 noundef %1919) #17
  br label %1946

1921:                                             ; preds = %164
  %1922 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %1923 = load ptr, ptr %1922, align 8, !tbaa !405
  %1924 = getelementptr inbounds %struct.tree_exp, ptr %1923, i64 0, i32 3
  %1925 = load ptr, ptr %1924, align 8, !tbaa !405
  %1926 = load i64, ptr %1925, align 8
  %1927 = and i64 %1926, 65535
  %1928 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %1927, i64 11
  %1929 = load i8, ptr %1928, align 1, !tbaa !405
  %1930 = icmp eq i8 %1929, 0
  br i1 %1930, label %1935, label %1931

1931:                                             ; preds = %1921
  %1932 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1925, i64 0, i32 1
  %1933 = load ptr, ptr %1932, align 8, !tbaa !405
  %1934 = icmp eq ptr %1933, null
  br i1 %1934, label %1935, label %1942

1935:                                             ; preds = %1931, %1921
  %1936 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1925, i64 0, i32 4
  %1937 = load i32, ptr %1936, align 8
  %1938 = and i32 %1937, 2
  %1939 = icmp eq i32 %1938, 0
  br i1 %1939, label %1941, label %1940

1940:                                             ; preds = %1935
  tail call void @rest_of_decl_compilation(ptr noundef nonnull %1925, i32 noundef 0, i32 noundef 0) #17
  br label %1942

1941:                                             ; preds = %1935
  tail call void @expand_decl(ptr noundef nonnull %1925) #17
  br label %1942

1942:                                             ; preds = %1940, %1941, %1931
  %1943 = tail call ptr @expand_expr_real(ptr noundef nonnull %1925, ptr noundef %168, i32 noundef %2, i32 noundef %3, ptr noundef %4) #18
  br label %1946

1944:                                             ; preds = %164
  %1945 = call ptr @expand_expr_real_2(ptr noundef nonnull %9, ptr noundef %168, i32 noundef %2, i32 noundef %3) #18
  br label %1946

1946:                                             ; preds = %858, %863, %1679, %1705, %823, %541, %560, %1450, %633, %673, %784, %739, %569, %193, %102, %1914, %1906, %612, %599, %499, %538, %478, %491, %474, %476, %383, %396, %336, %341, %323, %327, %333, %1944, %1942, %1915, %1904, %1897, %1894, %1892, %1890, %1830, %1813, %1767, %1744, %1452, %1404, %1402, %619, %562, %495, %436, %419, %401, %373, %371, %238, %186, %181, %145, %138, %129, %123
  %1947 = phi ptr [ %124, %123 ], [ %130, %129 ], [ %142, %138 ], [ %151, %145 ], [ %1945, %1944 ], [ %1943, %1942 ], [ %1920, %1915 ], [ %1905, %1904 ], [ %1899, %1897 ], [ %1896, %1894 ], [ %1893, %1892 ], [ %1891, %1890 ], [ %1831, %1830 ], [ %1814, %1813 ], [ %1768, %1767 ], [ %1749, %1744 ], [ %1453, %1452 ], [ %1451, %1450 ], [ %1407, %1404 ], [ %1403, %1402 ], [ %626, %619 ], [ %563, %562 ], [ %498, %495 ], [ %438, %436 ], [ %421, %419 ], [ %404, %401 ], [ %378, %373 ], [ %357, %371 ], [ %241, %238 ], [ %195, %193 ], [ %189, %186 ], [ %182, %181 ], [ %321, %333 ], [ %321, %327 ], [ %321, %323 ], [ %337, %341 ], [ %337, %336 ], [ %384, %383 ], [ %400, %396 ], [ %168, %476 ], [ %168, %474 ], [ %479, %491 ], [ %479, %478 ], [ %500, %499 ], [ %539, %538 ], [ %613, %612 ], [ %570, %569 ], [ %601, %599 ], [ %1912, %1906 ], [ null, %1914 ], [ %88, %102 ], [ %675, %673 ], [ %634, %633 ], [ %741, %739 ], [ %791, %784 ], [ %561, %560 ], [ %88, %541 ], [ %830, %823 ], [ %1706, %1705 ], [ %1680, %1679 ], [ %872, %863 ], [ %862, %858 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  ret ptr %1947
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_expr_real_2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !781 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %7 = load i32, ptr %0, align 8, !tbaa !718
  %8 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !724
  %10 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !720
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 14
  br i1 %14, label %15, label %18, !prof !782

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
  %30 = load ptr, ptr %29, align 8, !tbaa !721
  %31 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !722
  %33 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %7) #18, !range !783
  %34 = add nsw i32 %33, -1
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %37, label %36, !prof !784

36:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7239, ptr noundef nonnull @.str.1) #17
  br label %37

37:                                               ; preds = %23, %36
  %38 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %45, label %40, !prof !782

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
  br i1 %44, label %45, label %46, !prof !782

45:                                               ; preds = %37, %41
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7247, ptr noundef nonnull @.str.1) #17
  br label %46

46:                                               ; preds = %40, %41, %45
  %47 = load i64, ptr %11, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 8
  br i1 %49, label %50, label %62, !prof !785

50:                                               ; preds = %46
  %51 = zext i32 %25 to i64
  %52 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !440
  %54 = zext i16 %53 to i32
  %55 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1023
  %58 = icmp ult i32 %57, %54
  br i1 %58, label %59, label %62, !prof !786

59:                                               ; preds = %50
  %60 = icmp eq i32 %3, 1
  %61 = select i1 %60, ptr null, ptr %1
  br label %62

62:                                               ; preds = %46, %59, %50
  %63 = phi i1 [ false, %50 ], [ true, %59 ], [ false, %46 ]
  %64 = phi ptr [ %1, %50 ], [ %61, %59 ], [ %1, %46 ]
  %65 = tail call fastcc ptr @get_subtarget(ptr noundef %64) #18
  switch i32 %7, label %1464 [
    i32 117, label %66
    i32 112, label %66
    i32 116, label %66
    i32 113, label %66
    i32 114, label %264
    i32 66, label %304
    i32 63, label %318
    i32 64, label %581
    i32 65, label %710
    i32 67, label %985
    i32 69, label %985
    i32 68, label %985
    i32 70, label %985
    i32 76, label %985
    i32 75, label %1465
    i32 71, label %995
    i32 73, label %995
    i32 72, label %995
    i32 74, label %995
    i32 115, label %1001
    i32 77, label %1023
    i32 78, label %1032
    i32 79, label %1068
    i32 82, label %1079
    i32 81, label %1096
    i32 80, label %1096
    i32 90, label %1183
    i32 93, label %1190
    i32 89, label %1465
    i32 94, label %1191
    i32 87, label %1465
    i32 95, label %1192
    i32 88, label %1465
    i32 85, label %1193
    i32 86, label %1193
    i32 83, label %1316
    i32 84, label %1316
    i32 97, label %1336
    i32 98, label %1336
    i32 99, label %1336
    i32 100, label %1336
    i32 101, label %1336
    i32 102, label %1336
    i32 103, label %1336
    i32 104, label %1336
    i32 105, label %1336
    i32 106, label %1336
    i32 107, label %1336
    i32 108, label %1336
    i32 109, label %1336
    i32 110, label %1336
    i32 96, label %1372
    i32 123, label %1380
    i32 168, label %1400
    i32 164, label %1404
    i32 165, label %1404
    i32 166, label %1404
    i32 181, label %1410
    i32 182, label %1410
    i32 183, label %1417
    i32 184, label %1417
    i32 170, label %1424
    i32 171, label %1424
    i32 174, label %1426
    i32 175, label %1426
    i32 176, label %1432
    i32 177, label %1432
    i32 172, label %1445
    i32 173, label %1445
    i32 178, label %1451
    i32 179, label %1451
    i32 180, label %1451
  ], !prof !787

66:                                               ; preds = %62, %62, %62, %62
  %67 = load ptr, ptr @global_trees, align 16, !tbaa !401
  %68 = icmp eq ptr %30, %67
  br i1 %68, label %69, label %71, !prof !788

69:                                               ; preds = %66
  %70 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  br label %1489

71:                                               ; preds = %66
  %72 = icmp eq i64 %48, 17
  %73 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !405
  br i1 %72, label %75, label %175, !prof !788

75:                                               ; preds = %71
  %76 = icmp eq i32 %25, 1
  br i1 %76, label %77, label %94

77:                                               ; preds = %75
  %78 = load i64, ptr %74, align 8
  %79 = and i64 %78, 65535
  %80 = icmp eq i64 %79, 14
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = tail call i32 @vector_type_mode(ptr noundef nonnull %74) #17
  br label %88

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.tree_type, ptr %74, i64 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = lshr i32 %85, 16
  %87 = and i32 %86, 255
  br label %88

88:                                               ; preds = %83, %81
  %89 = phi i32 [ %82, %81 ], [ %87, %83 ]
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %30, ptr noundef %64, i32 noundef %2, i32 noundef %3) #18
  %93 = tail call ptr @copy_rtx(ptr noundef %92) #17
  tail call void @set_mem_attributes(ptr noundef %93, ptr noundef nonnull %11, i32 noundef 0) #17
  br label %1489

94:                                               ; preds = %88, %75
  %95 = icmp eq ptr %64, null
  br i1 %95, label %96, label %126

96:                                               ; preds = %94
  %97 = load i64, ptr %11, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 14
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %107

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %104 = load i32, ptr %103, align 4
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 255
  br label %107

107:                                              ; preds = %102, %100
  %108 = phi i32 [ %101, %100 ], [ %106, %102 ]
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %124, label %110

110:                                              ; preds = %107
  %111 = load i64, ptr %11, align 8
  %112 = and i64 %111, 65535
  %113 = icmp eq i64 %112, 14
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %121

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %118 = load i32, ptr %117, align 4
  %119 = lshr i32 %118, 16
  %120 = and i32 %119, 255
  br label %121

121:                                              ; preds = %116, %114
  %122 = phi i32 [ %115, %114 ], [ %120, %116 ]
  %123 = tail call ptr @gen_reg_rtx(i32 noundef %122) #17
  br label %126

124:                                              ; preds = %107
  %125 = tail call ptr @assign_temp(ptr noundef nonnull %11, i32 noundef 0, i32 noundef 1, i32 noundef 1) #17
  br label %126

126:                                              ; preds = %121, %124, %94
  %127 = phi ptr [ %123, %121 ], [ %125, %124 ], [ %64, %94 ]
  %128 = load i32, ptr %127, align 8
  %129 = trunc i32 %128 to i16
  switch i16 %129, label %147 [
    i16 43, label %130
    i16 37, label %148
  ]

130:                                              ; preds = %126
  %131 = load i64, ptr %74, align 8
  %132 = and i64 %131, 65535
  %133 = icmp eq i64 %132, 14
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = tail call i32 @vector_type_mode(ptr noundef nonnull %74) #17
  br label %141

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.tree_type, ptr %74, i64 0, i32 6
  %138 = load i32, ptr %137, align 4
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  br label %141

141:                                              ; preds = %136, %134
  %142 = phi i32 [ %135, %134 ], [ %140, %136 ]
  %143 = tail call ptr @adjust_address_1(ptr noundef nonnull %127, i32 noundef %142, i64 noundef 0, i32 noundef 1, i32 noundef 1) #17
  %144 = icmp eq i32 %3, 1
  %145 = zext i1 %144 to i32
  %146 = tail call ptr @store_expr(ptr noundef nonnull %30, ptr noundef %143, i32 noundef %145, i8 noundef zeroext 0) #18
  br label %1489

147:                                              ; preds = %126
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7303, ptr noundef nonnull @.str.1) #17
  br label %148

148:                                              ; preds = %126, %147
  %149 = load ptr, ptr %73, align 8, !tbaa !405
  %150 = tail call i64 @int_size_in_bytes(ptr noundef %149) #17
  %151 = zext i32 %25 to i64
  %152 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !405
  %154 = zext i8 %153 to i64
  %155 = icmp slt i64 %150, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %148
  %157 = load ptr, ptr %73, align 8, !tbaa !405
  %158 = tail call i64 @int_size_in_bytes(ptr noundef %157) #17
  br label %159

159:                                              ; preds = %148, %156
  %160 = phi i64 [ %158, %156 ], [ %154, %148 ]
  %161 = shl nsw i64 %160, 3
  %162 = load i64, ptr %74, align 8
  %163 = and i64 %162, 65535
  %164 = icmp eq i64 %163, 14
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = tail call i32 @vector_type_mode(ptr noundef nonnull %74) #17
  br label %172

167:                                              ; preds = %159
  %168 = getelementptr inbounds %struct.tree_type, ptr %74, i64 0, i32 6
  %169 = load i32, ptr %168, align 4
  %170 = lshr i32 %169, 16
  %171 = and i32 %170, 255
  br label %172

172:                                              ; preds = %167, %165
  %173 = phi i32 [ %166, %165 ], [ %171, %167 ]
  %174 = tail call fastcc ptr @store_field(ptr noundef nonnull %127, i64 noundef %161, i64 noundef 0, i32 noundef %173, ptr noundef nonnull %30, ptr noundef nonnull %11, i32 noundef 0, i8 noundef zeroext 0) #18
  br label %1489

175:                                              ; preds = %71
  %176 = load i64, ptr %74, align 8
  %177 = and i64 %176, 65535
  %178 = icmp eq i64 %177, 14
  br i1 %178, label %179, label %181, !prof !788

179:                                              ; preds = %175
  %180 = tail call i32 @vector_type_mode(ptr noundef nonnull %74) #17
  br label %186

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.tree_type, ptr %74, i64 0, i32 6
  %183 = load i32, ptr %182, align 4
  %184 = lshr i32 %183, 16
  %185 = and i32 %184, 255
  br label %186

186:                                              ; preds = %181, %179
  %187 = phi i32 [ %180, %179 ], [ %185, %181 ]
  %188 = icmp eq i32 %25, %187
  br i1 %188, label %189, label %207, !prof !789

189:                                              ; preds = %186
  %190 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %30, ptr noundef %64, i32 noundef 0, i32 noundef %3) #18
  store ptr %190, ptr %5, align 8, !tbaa !401
  %191 = load ptr, ptr %73, align 8, !tbaa !405
  %192 = load i64, ptr %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = lshr i32 %193, 21
  %195 = and i32 %194, 1
  %196 = icmp eq i32 %195, %28
  br i1 %196, label %203, label %197, !prof !790

197:                                              ; preds = %189
  %198 = load i32, ptr %190, align 8
  %199 = and i32 %198, 65535
  %200 = icmp eq i32 %199, 39
  br i1 %200, label %201, label %203, !prof !791

201:                                              ; preds = %197
  %202 = and i32 %198, -268500953
  store i32 %202, ptr %190, align 8
  br label %203

203:                                              ; preds = %201, %197, %189
  %204 = load ptr, ptr %5, align 8, !tbaa !401
  br i1 %63, label %205, label %1489, !prof !792

205:                                              ; preds = %203
  %206 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %204, ptr noundef %64, ptr noundef nonnull %11) #18
  br label %1489

207:                                              ; preds = %186
  %208 = icmp eq i32 %3, 2
  %209 = select i1 %208, i32 0, i32 %3, !prof !793
  %210 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %30, ptr noundef null, i32 noundef %25, i32 noundef %209) #18
  %211 = load i32, ptr %210, align 8
  %212 = lshr i32 %211, 16
  %213 = and i32 %212, 255
  %214 = icmp eq i32 %213, %25
  br i1 %214, label %260, label %215, !prof !794

215:                                              ; preds = %207
  %216 = and i32 %211, 65535
  %217 = zext nneg i32 %216 to i64
  %218 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !438
  %220 = icmp eq i32 %219, 9
  br i1 %220, label %221, label %245, !prof !795

221:                                              ; preds = %215
  %222 = load ptr, ptr %73, align 8, !tbaa !405
  %223 = load i64, ptr %222, align 8
  %224 = and i64 %223, 65535
  %225 = icmp eq i64 %224, 14
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = tail call i32 @vector_type_mode(ptr noundef nonnull %222) #17
  br label %233

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.tree_type, ptr %222, i64 0, i32 6
  %230 = load i32, ptr %229, align 4
  %231 = lshr i32 %230, 16
  %232 = and i32 %231, 255
  br label %233

233:                                              ; preds = %228, %226
  %234 = phi i32 [ %227, %226 ], [ %232, %228 ]
  %235 = icmp eq i32 %3, 4
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = tail call i32 @subreg_lowpart_offset(i32 noundef %25, i32 noundef %234) #17
  %238 = tail call ptr @simplify_gen_subreg(i32 noundef %25, ptr noundef nonnull %210, i32 noundef %234, i32 noundef %237) #17
  br label %260

239:                                              ; preds = %233
  %240 = load i64, ptr %222, align 8
  %241 = trunc i64 %240 to i32
  %242 = lshr i32 %241, 21
  %243 = and i32 %242, 1
  %244 = tail call ptr @convert_modes(i32 noundef %25, i32 noundef %234, ptr noundef nonnull %210, i32 noundef %243) #18
  br label %260

245:                                              ; preds = %215
  %246 = icmp eq i32 %3, 4
  br i1 %246, label %247, label %250, !prof !795

247:                                              ; preds = %245
  %248 = or disjoint i32 %28, 98
  %249 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %248, i32 noundef %25, ptr noundef nonnull %210) #17
  br label %260

250:                                              ; preds = %245
  %251 = icmp eq ptr %64, null
  %252 = load ptr, ptr %73, align 8, !tbaa !405
  %253 = load i64, ptr %252, align 8
  %254 = trunc i64 %253 to i32
  %255 = lshr i32 %254, 21
  %256 = and i32 %255, 1
  br i1 %251, label %257, label %259, !prof !795

257:                                              ; preds = %250
  %258 = tail call ptr @convert_to_mode(i32 noundef %25, ptr noundef nonnull %210, i32 noundef %256) #18
  br label %260

259:                                              ; preds = %250
  tail call void @convert_move(ptr noundef nonnull %64, ptr noundef nonnull %210, i32 noundef %256) #18
  br label %260

260:                                              ; preds = %236, %239, %257, %259, %247, %207
  %261 = phi ptr [ %258, %257 ], [ %64, %259 ], [ %249, %247 ], [ %210, %207 ], [ %244, %239 ], [ %238, %236 ]
  br i1 %63, label %262, label %1489, !prof !793

262:                                              ; preds = %260
  %263 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %261, ptr noundef %64, ptr noundef nonnull %11) #18
  br label %1489

264:                                              ; preds = %62
  %265 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %266 = load ptr, ptr %265, align 8, !tbaa !405
  %267 = trunc i64 %47 to i16
  switch i16 %267, label %268 [
    i16 10, label %269
    i16 12, label %269
  ]

268:                                              ; preds = %264
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7376, ptr noundef nonnull @.str.1) #17
  br label %269

269:                                              ; preds = %264, %264, %268
  %270 = load i64, ptr %266, align 8
  %271 = trunc i64 %270 to i16
  switch i16 %271, label %272 [
    i16 10, label %273
    i16 12, label %273
  ]

272:                                              ; preds = %269
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7377, ptr noundef nonnull @.str.1) #17
  br label %273

273:                                              ; preds = %269, %269, %272
  %274 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %275 = load ptr, ptr %274, align 8, !tbaa !405
  %276 = load i64, ptr %275, align 8
  %277 = lshr i64 %276, 56
  %278 = trunc i64 %277 to i8
  %279 = getelementptr inbounds %struct.tree_common, ptr %266, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !405
  %281 = load i64, ptr %280, align 8
  %282 = lshr i64 %281, 56
  %283 = trunc i64 %282 to i8
  %284 = icmp eq i64 %277, %282
  br i1 %284, label %285, label %286

285:                                              ; preds = %273
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7384, ptr noundef nonnull @.str.1) #17
  br label %286

286:                                              ; preds = %273, %285
  %287 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 5), align 8, !tbaa !796
  %288 = tail call zeroext i8 %287(i8 noundef zeroext %278, i8 noundef zeroext %283) #17
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %286
  %291 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 5), align 8, !tbaa !796
  %292 = tail call zeroext i8 %291(i8 noundef zeroext %283, i8 noundef zeroext %278) #17
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %300, label %294

294:                                              ; preds = %290, %286
  %295 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %30, ptr noundef null, i32 noundef 0, i32 noundef %3) #18
  %296 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 6), align 8, !tbaa !797
  %297 = tail call ptr %296(ptr noundef %295, ptr noundef nonnull %266, ptr noundef nonnull %11) #17
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %1489

299:                                              ; preds = %294
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7393, ptr noundef nonnull @.str.1) #17
  br label %1489

300:                                              ; preds = %290
  %301 = sext i32 %25 to i64
  %302 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !401
  br label %1489

304:                                              ; preds = %62
  %305 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
  %306 = getelementptr inbounds %struct.tree_type, ptr %305, i64 0, i32 6
  %307 = load i32, ptr %306, align 4
  %308 = and i32 %307, 1023
  %309 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %310 = load i32, ptr %309, align 4
  %311 = and i32 %310, 1023
  %312 = icmp ult i32 %308, %311
  br i1 %312, label %313, label %318

313:                                              ; preds = %304
  %314 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !401
  %315 = tail call ptr @fold_convert_loc(i32 noundef %9, ptr noundef %314, ptr noundef %32) #17
  %316 = tail call ptr @fold_convert_loc(i32 noundef %9, ptr noundef nonnull %11, ptr noundef %315) #17
  %317 = load i64, ptr %11, align 8
  br label %318

318:                                              ; preds = %304, %313, %62
  %319 = phi i64 [ %47, %62 ], [ %317, %313 ], [ %47, %304 ]
  %320 = phi ptr [ %32, %62 ], [ %316, %313 ], [ %32, %304 ]
  %321 = trunc i64 %319 to i16
  switch i16 %321, label %410 [
    i16 8, label %322
    i16 11, label %322
  ], !prof !798

322:                                              ; preds = %318, %318
  %323 = tail call fastcc ptr @get_def_for_expr(ptr noundef %30, i32 noundef 65) #18
  %324 = icmp eq ptr %323, null
  br i1 %324, label %410, label %325, !prof !799

325:                                              ; preds = %322
  %326 = load i64, ptr %11, align 8
  %327 = and i64 %326, 65535
  %328 = icmp eq i64 %327, 8
  %329 = select i1 %328, i32 116, i32 115
  %330 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %323) #18
  %331 = tail call fastcc ptr @get_def_for_expr(ptr noundef %330, i32 noundef %329) #18
  %332 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef nonnull %323) #18
  %333 = tail call fastcc ptr @get_def_for_expr(ptr noundef %332, i32 noundef %329) #18
  %334 = icmp ne ptr %331, null
  %335 = icmp ne ptr %333, null
  %336 = select i1 %334, i1 %335, i1 false
  br i1 %336, label %337, label %410

337:                                              ; preds = %325
  %338 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %331) #18
  %339 = icmp eq ptr %338, null
  br i1 %339, label %410, label %340

340:                                              ; preds = %337
  %341 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %333) #18
  %342 = icmp eq ptr %341, null
  br i1 %342, label %410, label %343

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.tree_common, ptr %338, i64 0, i32 2
  %345 = load ptr, ptr %344, align 8, !tbaa !405
  %346 = getelementptr inbounds %struct.tree_type, ptr %345, i64 0, i32 6
  %347 = load i32, ptr %346, align 4
  %348 = and i32 %347, 1023
  %349 = getelementptr inbounds %struct.tree_common, ptr %330, i64 0, i32 2
  %350 = load ptr, ptr %349, align 8, !tbaa !405
  %351 = getelementptr inbounds %struct.tree_type, ptr %350, i64 0, i32 6
  %352 = load i32, ptr %351, align 4
  %353 = and i32 %352, 1023
  %354 = icmp ult i32 %348, %353
  br i1 %354, label %355, label %410

355:                                              ; preds = %343
  %356 = getelementptr inbounds %struct.tree_common, ptr %341, i64 0, i32 2
  %357 = load ptr, ptr %356, align 8, !tbaa !405
  %358 = getelementptr inbounds %struct.tree_type, ptr %357, i64 0, i32 6
  %359 = load i32, ptr %358, align 4
  %360 = and i32 %359, 1023
  %361 = icmp eq i32 %348, %360
  br i1 %361, label %362, label %410

362:                                              ; preds = %355
  %363 = load i64, ptr %345, align 8
  %364 = load i64, ptr %357, align 8
  %365 = xor i64 %364, %363
  %366 = and i64 %365, 2097152
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %368, label %410

368:                                              ; preds = %362
  %369 = and i64 %363, 65535
  %370 = icmp eq i64 %369, 14
  br i1 %370, label %371, label %375

371:                                              ; preds = %368
  %372 = tail call i32 @vector_type_mode(ptr noundef nonnull %345) #17
  %373 = load i64, ptr %345, align 8
  %374 = load ptr, ptr %349, align 8, !tbaa !405
  br label %378

375:                                              ; preds = %368
  %376 = lshr i32 %347, 16
  %377 = and i32 %376, 255
  br label %378

378:                                              ; preds = %375, %371
  %379 = phi ptr [ %374, %371 ], [ %350, %375 ]
  %380 = phi i64 [ %373, %371 ], [ %363, %375 ]
  %381 = phi i32 [ %372, %371 ], [ %377, %375 ]
  %382 = load i64, ptr %379, align 8
  %383 = and i64 %382, 2147483648
  %384 = icmp eq i64 %383, 0
  %385 = and i64 %380, 2097152
  %386 = icmp eq i64 %385, 0
  %387 = select i1 %386, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 23), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 24)
  %388 = select i1 %386, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 25), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 26)
  %389 = select i1 %384, ptr %387, ptr %388
  %390 = zext i32 %381 to i64
  %391 = getelementptr inbounds [87 x i8], ptr @mode_2xwider, i64 0, i64 %390
  %392 = load i8, ptr %391, align 1, !tbaa !405
  %393 = zext i8 %392 to i32
  %394 = icmp eq i32 %25, %393
  br i1 %394, label %395, label %410

395:                                              ; preds = %378
  %396 = zext nneg i32 %25 to i64
  %397 = getelementptr inbounds %struct.optab_d, ptr %389, i64 0, i32 4, i64 %396
  %398 = load i32, ptr %397, align 4, !tbaa !442
  %399 = icmp eq i32 %398, 2956
  br i1 %399, label %410, label %400

400:                                              ; preds = %395
  call fastcc void @expand_operands(ptr noundef nonnull %338, ptr noundef nonnull %341, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %401 = tail call fastcc ptr @expand_expr(ptr noundef %320, ptr noundef %65, i32 noundef 0, i32 noundef 0) #18
  %402 = load ptr, ptr %5, align 8, !tbaa !401
  %403 = load ptr, ptr %6, align 8, !tbaa !401
  %404 = tail call ptr @expand_ternary_op(i32 noundef %25, ptr noundef nonnull %389, ptr noundef %402, ptr noundef %403, ptr noundef %401, ptr noundef %64, i32 noundef %28) #17
  %405 = icmp eq ptr %404, null
  br i1 %405, label %406, label %407

406:                                              ; preds = %400
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7460, ptr noundef nonnull @.str.1) #17
  br label %407

407:                                              ; preds = %400, %406
  br i1 %63, label %408, label %1489

408:                                              ; preds = %407
  %409 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %404, ptr noundef %64, ptr noundef nonnull %11) #18
  br label %1489

410:                                              ; preds = %378, %395, %325, %337, %340, %343, %355, %362, %318, %322
  %411 = load i64, ptr %30, align 8
  %412 = and i64 %411, 65535
  %413 = icmp eq i64 %412, 63
  br i1 %413, label %414, label %453, !prof !800

414:                                              ; preds = %410
  %415 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 0, i32 3
  %416 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 1
  %417 = load ptr, ptr %416, align 8, !tbaa !405
  %418 = load i64, ptr %417, align 8
  %419 = and i64 %418, 65535
  %420 = icmp eq i64 %419, 23
  br i1 %420, label %421, label %453

421:                                              ; preds = %414
  %422 = load i64, ptr %320, align 8
  %423 = and i64 %422, 65535
  %424 = icmp eq i64 %423, 32
  br i1 %424, label %425, label %453

425:                                              ; preds = %421
  %426 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %320, i64 0, i32 1
  %427 = load ptr, ptr %426, align 8, !tbaa !405
  %428 = icmp eq ptr %427, null
  br i1 %428, label %429, label %431

429:                                              ; preds = %425
  tail call void @make_decl_rtl(ptr noundef nonnull %320) #17
  %430 = load ptr, ptr %426, align 8, !tbaa !405
  br label %431

431:                                              ; preds = %425, %429
  %432 = phi ptr [ %430, %429 ], [ %427, %425 ]
  %433 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 3), align 8, !tbaa !401
  %434 = icmp eq ptr %432, %433
  br i1 %434, label %451, label %435

435:                                              ; preds = %431
  %436 = icmp eq ptr %432, null
  br i1 %436, label %437, label %439

437:                                              ; preds = %435
  tail call void @make_decl_rtl(ptr noundef nonnull %320) #17
  %438 = load ptr, ptr %426, align 8, !tbaa !405
  br label %439

439:                                              ; preds = %435, %437
  %440 = phi ptr [ %438, %437 ], [ %432, %435 ]
  %441 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !401
  %442 = icmp eq ptr %440, %441
  br i1 %442, label %451, label %443

443:                                              ; preds = %439
  %444 = icmp eq ptr %440, null
  br i1 %444, label %445, label %447

445:                                              ; preds = %443
  tail call void @make_decl_rtl(ptr noundef nonnull %320) #17
  %446 = load ptr, ptr %426, align 8, !tbaa !405
  br label %447

447:                                              ; preds = %443, %445
  %448 = phi ptr [ %446, %445 ], [ %440, %443 ]
  %449 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !401
  %450 = icmp eq ptr %448, %449
  br i1 %450, label %451, label %453

451:                                              ; preds = %447, %439, %431
  %452 = load ptr, ptr %415, align 8, !tbaa !405
  store ptr %320, ptr %415, align 8, !tbaa !405
  br label %453

453:                                              ; preds = %451, %447, %421, %414, %410
  %454 = phi ptr [ %452, %451 ], [ %320, %447 ], [ %320, %421 ], [ %320, %414 ], [ %320, %410 ]
  %455 = icmp eq i32 %3, 4
  switch i32 %3, label %456 [
    i32 2, label %467
    i32 4, label %467
  ], !prof !801

456:                                              ; preds = %453
  %457 = load i32, ptr @ptr_mode, align 4, !tbaa !438
  %458 = icmp eq i32 %25, %457
  br i1 %458, label %459, label %563, !prof !799

459:                                              ; preds = %456
  %460 = icmp eq i32 %28, 0
  %461 = load i32, ptr @flag_trapv, align 4
  %462 = icmp ne i32 %461, 0
  %463 = select i1 %460, i1 %462, i1 false
  br i1 %463, label %563, label %464, !prof !802

464:                                              ; preds = %459
  %465 = icmp eq i32 %3, 1
  br i1 %465, label %466, label %467, !prof !800

466:                                              ; preds = %464
  br label %467

467:                                              ; preds = %453, %453, %466, %464
  %468 = phi ptr [ null, %466 ], [ %64, %464 ], [ %64, %453 ], [ %64, %453 ]
  %469 = load i64, ptr %30, align 8
  %470 = and i64 %469, 65535
  %471 = icmp eq i64 %470, 23
  br i1 %471, label %474, label %472, !prof !800

472:                                              ; preds = %467
  %473 = load i64, ptr %454, align 8
  br label %511

474:                                              ; preds = %467
  %475 = zext i32 %25 to i64
  %476 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %475
  %477 = load i8, ptr %476, align 1, !tbaa !405
  %478 = icmp ugt i8 %477, 8
  %479 = load i64, ptr %454, align 8
  %480 = and i64 %479, 131072
  %481 = icmp eq i64 %480, 0
  %482 = select i1 %478, i1 true, i1 %481
  br i1 %482, label %511, label %483

483:                                              ; preds = %474
  %484 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %454, ptr noundef %65, i32 noundef 0, i32 noundef 2) #18
  %485 = getelementptr inbounds %struct.tree_int_cst, ptr %30, i64 0, i32 1
  %486 = load i64, ptr %485, align 8, !tbaa !405
  %487 = getelementptr inbounds %struct.tree_common, ptr %454, i64 0, i32 2
  %488 = load ptr, ptr %487, align 8, !tbaa !405
  %489 = load i64, ptr %488, align 8
  %490 = and i64 %489, 65535
  %491 = icmp eq i64 %490, 14
  br i1 %491, label %492, label %494

492:                                              ; preds = %483
  %493 = tail call i32 @vector_type_mode(ptr noundef nonnull %488) #17
  br label %499

494:                                              ; preds = %483
  %495 = getelementptr inbounds %struct.tree_type, ptr %488, i64 0, i32 6
  %496 = load i32, ptr %495, align 4
  %497 = lshr i32 %496, 16
  %498 = and i32 %497, 255
  br label %499

499:                                              ; preds = %494, %492
  %500 = phi i32 [ %493, %492 ], [ %498, %494 ]
  %501 = tail call ptr @immed_double_const(i64 noundef %486, i64 noundef 0, i32 noundef %500) #17
  %502 = getelementptr inbounds %struct.rtx_def, ptr %501, i64 0, i32 1
  %503 = load i64, ptr %502, align 8, !tbaa !405
  %504 = tail call ptr @plus_constant(ptr noundef %484, i64 noundef %503) #17
  switch i32 %3, label %505 [
    i32 4, label %507
    i32 2, label %507
  ]

505:                                              ; preds = %499
  %506 = tail call ptr @force_operand(ptr noundef %504, ptr noundef %468) #18
  br label %507

507:                                              ; preds = %499, %499, %505
  %508 = phi ptr [ %504, %499 ], [ %504, %499 ], [ %506, %505 ]
  br i1 %63, label %509, label %1489

509:                                              ; preds = %507
  %510 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %508, ptr noundef %468, ptr noundef nonnull %11) #18
  br label %1489

511:                                              ; preds = %472, %474
  %512 = phi i64 [ %473, %472 ], [ %479, %474 ]
  %513 = and i64 %512, 65535
  %514 = icmp eq i64 %513, 23
  br i1 %514, label %515, label %563, !prof !803

515:                                              ; preds = %511
  %516 = zext i32 %25 to i64
  %517 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %516
  %518 = load i8, ptr %517, align 1, !tbaa !405
  %519 = icmp ugt i8 %518, 8
  %520 = and i64 %469, 131072
  %521 = icmp eq i64 %520, 0
  %522 = or i1 %521, %519
  br i1 %522, label %563, label %523, !prof !804

523:                                              ; preds = %515
  %524 = select i1 %455, i32 4, i32 2
  %525 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %30, ptr noundef %65, i32 noundef 0, i32 noundef %524) #18
  store ptr %525, ptr %5, align 8, !tbaa !401
  %526 = load i32, ptr %525, align 8
  %527 = and i32 %526, 65535
  %528 = zext nneg i32 %527 to i64
  %529 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %528
  %530 = load i32, ptr %529, align 4, !tbaa !438
  %531 = icmp eq i32 %530, 9
  br i1 %531, label %536, label %532

532:                                              ; preds = %523
  %533 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %454, ptr noundef null, i32 noundef 0, i32 noundef %3) #18
  store ptr %533, ptr %6, align 8, !tbaa !401
  switch i32 %3, label %1468 [
    i32 4, label %534
    i32 2, label %534
  ]

534:                                              ; preds = %532, %532
  %535 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %25, ptr noundef nonnull %525, ptr noundef %533) #17
  br label %1489

536:                                              ; preds = %523
  %537 = getelementptr inbounds %struct.tree_int_cst, ptr %454, i64 0, i32 1
  %538 = load i64, ptr %537, align 8, !tbaa !405
  %539 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %540 = load ptr, ptr %539, align 8, !tbaa !405
  %541 = load i64, ptr %540, align 8
  %542 = and i64 %541, 65535
  %543 = icmp eq i64 %542, 14
  br i1 %543, label %544, label %546

544:                                              ; preds = %536
  %545 = tail call i32 @vector_type_mode(ptr noundef nonnull %540) #17
  br label %551

546:                                              ; preds = %536
  %547 = getelementptr inbounds %struct.tree_type, ptr %540, i64 0, i32 6
  %548 = load i32, ptr %547, align 4
  %549 = lshr i32 %548, 16
  %550 = and i32 %549, 255
  br label %551

551:                                              ; preds = %546, %544
  %552 = phi i32 [ %545, %544 ], [ %550, %546 ]
  %553 = tail call ptr @immed_double_const(i64 noundef %538, i64 noundef 0, i32 noundef %552) #17
  %554 = getelementptr inbounds %struct.rtx_def, ptr %553, i64 0, i32 1
  %555 = load i64, ptr %554, align 8, !tbaa !405
  %556 = tail call ptr @plus_constant(ptr noundef nonnull %525, i64 noundef %555) #17
  switch i32 %3, label %557 [
    i32 4, label %559
    i32 2, label %559
  ]

557:                                              ; preds = %551
  %558 = tail call ptr @force_operand(ptr noundef %556, ptr noundef %468) #18
  br label %559

559:                                              ; preds = %551, %551, %557
  %560 = phi ptr [ %556, %551 ], [ %556, %551 ], [ %558, %557 ]
  br i1 %63, label %561, label %1489

561:                                              ; preds = %559
  %562 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %560, ptr noundef %468, ptr noundef nonnull %11) #18
  br label %1489

563:                                              ; preds = %515, %511, %459, %456
  %564 = phi ptr [ %468, %515 ], [ %468, %511 ], [ %64, %459 ], [ %64, %456 ]
  switch i32 %3, label %568 [
    i32 4, label %565
    i32 2, label %565
  ]

565:                                              ; preds = %563, %563
  %566 = load i32, ptr @ptr_mode, align 4, !tbaa !438
  %567 = icmp eq i32 %25, %566
  br i1 %567, label %575, label %568

568:                                              ; preds = %563, %565
  call fastcc void @expand_operands(ptr noundef nonnull %30, ptr noundef %454, ptr noundef %65, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %569 = load ptr, ptr %5, align 8, !tbaa !401
  %570 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %571 = icmp eq ptr %569, %570
  %572 = load ptr, ptr %6, align 8, !tbaa !401
  br i1 %571, label %1489, label %573, !prof !800

573:                                              ; preds = %568
  %574 = icmp eq ptr %572, %570
  br i1 %574, label %1489, label %1468, !prof !800

575:                                              ; preds = %565
  call fastcc void @expand_operands(ptr noundef nonnull %30, ptr noundef %454, ptr noundef %65, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %3) #18
  %576 = load ptr, ptr %5, align 8, !tbaa !401
  %577 = load ptr, ptr %6, align 8, !tbaa !401
  %578 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %25, ptr noundef %576, ptr noundef %577) #17
  br i1 %63, label %579, label %1489

579:                                              ; preds = %575
  %580 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %578, ptr noundef %564, ptr noundef nonnull %11) #18
  br label %1489

581:                                              ; preds = %62
  %582 = trunc i64 %47 to i16
  switch i16 %582, label %671 [
    i16 8, label %583
    i16 11, label %583
  ], !prof !805

583:                                              ; preds = %581, %581
  %584 = tail call fastcc ptr @get_def_for_expr(ptr noundef %32, i32 noundef 65) #18
  %585 = icmp eq ptr %584, null
  br i1 %585, label %671, label %586, !prof !741

586:                                              ; preds = %583
  %587 = load i64, ptr %11, align 8
  %588 = and i64 %587, 65535
  %589 = icmp eq i64 %588, 8
  %590 = select i1 %589, i32 116, i32 115
  %591 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %584) #18
  %592 = tail call fastcc ptr @get_def_for_expr(ptr noundef %591, i32 noundef %590) #18
  %593 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef nonnull %584) #18
  %594 = tail call fastcc ptr @get_def_for_expr(ptr noundef %593, i32 noundef %590) #18
  %595 = icmp ne ptr %592, null
  %596 = icmp ne ptr %594, null
  %597 = select i1 %595, i1 %596, i1 false
  br i1 %597, label %598, label %671

598:                                              ; preds = %586
  %599 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %592) #18
  %600 = icmp eq ptr %599, null
  br i1 %600, label %671, label %601

601:                                              ; preds = %598
  %602 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %594) #18
  %603 = icmp eq ptr %602, null
  br i1 %603, label %671, label %604

604:                                              ; preds = %601
  %605 = getelementptr inbounds %struct.tree_common, ptr %599, i64 0, i32 2
  %606 = load ptr, ptr %605, align 8, !tbaa !405
  %607 = getelementptr inbounds %struct.tree_type, ptr %606, i64 0, i32 6
  %608 = load i32, ptr %607, align 4
  %609 = and i32 %608, 1023
  %610 = getelementptr inbounds %struct.tree_common, ptr %591, i64 0, i32 2
  %611 = load ptr, ptr %610, align 8, !tbaa !405
  %612 = getelementptr inbounds %struct.tree_type, ptr %611, i64 0, i32 6
  %613 = load i32, ptr %612, align 4
  %614 = and i32 %613, 1023
  %615 = icmp ult i32 %609, %614
  br i1 %615, label %616, label %671

616:                                              ; preds = %604
  %617 = getelementptr inbounds %struct.tree_common, ptr %602, i64 0, i32 2
  %618 = load ptr, ptr %617, align 8, !tbaa !405
  %619 = getelementptr inbounds %struct.tree_type, ptr %618, i64 0, i32 6
  %620 = load i32, ptr %619, align 4
  %621 = and i32 %620, 1023
  %622 = icmp eq i32 %609, %621
  br i1 %622, label %623, label %671

623:                                              ; preds = %616
  %624 = load i64, ptr %606, align 8
  %625 = load i64, ptr %618, align 8
  %626 = xor i64 %625, %624
  %627 = and i64 %626, 2097152
  %628 = icmp eq i64 %627, 0
  br i1 %628, label %629, label %671

629:                                              ; preds = %623
  %630 = and i64 %624, 65535
  %631 = icmp eq i64 %630, 14
  br i1 %631, label %632, label %636

632:                                              ; preds = %629
  %633 = tail call i32 @vector_type_mode(ptr noundef nonnull %606) #17
  %634 = load i64, ptr %606, align 8
  %635 = load ptr, ptr %610, align 8, !tbaa !405
  br label %639

636:                                              ; preds = %629
  %637 = lshr i32 %608, 16
  %638 = and i32 %637, 255
  br label %639

639:                                              ; preds = %636, %632
  %640 = phi ptr [ %635, %632 ], [ %611, %636 ]
  %641 = phi i64 [ %634, %632 ], [ %624, %636 ]
  %642 = phi i32 [ %633, %632 ], [ %638, %636 ]
  %643 = load i64, ptr %640, align 8
  %644 = and i64 %643, 2147483648
  %645 = icmp eq i64 %644, 0
  %646 = and i64 %641, 2097152
  %647 = icmp eq i64 %646, 0
  %648 = select i1 %647, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 27), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 28)
  %649 = select i1 %647, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 29), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 30)
  %650 = select i1 %645, ptr %648, ptr %649
  %651 = zext i32 %642 to i64
  %652 = getelementptr inbounds [87 x i8], ptr @mode_2xwider, i64 0, i64 %651
  %653 = load i8, ptr %652, align 1, !tbaa !405
  %654 = zext i8 %653 to i32
  %655 = icmp eq i32 %25, %654
  br i1 %655, label %656, label %671

656:                                              ; preds = %639
  %657 = zext nneg i32 %25 to i64
  %658 = getelementptr inbounds %struct.optab_d, ptr %650, i64 0, i32 4, i64 %657
  %659 = load i32, ptr %658, align 4, !tbaa !442
  %660 = icmp eq i32 %659, 2956
  br i1 %660, label %671, label %661

661:                                              ; preds = %656
  call fastcc void @expand_operands(ptr noundef nonnull %599, ptr noundef nonnull %602, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %662 = tail call fastcc ptr @expand_expr(ptr noundef %30, ptr noundef %65, i32 noundef 0, i32 noundef 0) #18
  %663 = load ptr, ptr %5, align 8, !tbaa !401
  %664 = load ptr, ptr %6, align 8, !tbaa !401
  %665 = tail call ptr @expand_ternary_op(i32 noundef %25, ptr noundef nonnull %650, ptr noundef %663, ptr noundef %664, ptr noundef %662, ptr noundef %64, i32 noundef %28) #17
  %666 = icmp eq ptr %665, null
  br i1 %666, label %667, label %668

667:                                              ; preds = %661
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7625, ptr noundef nonnull @.str.1) #17
  br label %668

668:                                              ; preds = %661, %667
  br i1 %63, label %669, label %1489

669:                                              ; preds = %668
  %670 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %665, ptr noundef %64, ptr noundef nonnull %11) #18
  br label %1489

671:                                              ; preds = %639, %656, %586, %598, %601, %604, %616, %623, %581, %583
  switch i32 %3, label %1465 [
    i32 4, label %672
    i32 2, label %672
  ]

672:                                              ; preds = %671, %671
  %673 = tail call i32 @really_constant_p(ptr noundef %30) #17
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %695, label %675

675:                                              ; preds = %672
  %676 = tail call i32 @really_constant_p(ptr noundef %32) #17
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %695, label %678

678:                                              ; preds = %675
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %3) #18
  %679 = load ptr, ptr %6, align 8, !tbaa !401
  %680 = load i32, ptr %679, align 8
  %681 = and i32 %680, 65535
  %682 = icmp eq i32 %681, 30
  %683 = load ptr, ptr %5, align 8, !tbaa !401
  br i1 %682, label %684, label %691

684:                                              ; preds = %678
  %685 = getelementptr inbounds %struct.rtx_def, ptr %679, i64 0, i32 1
  %686 = load i64, ptr %685, align 8, !tbaa !405
  %687 = sub nsw i64 0, %686
  %688 = tail call ptr @plus_constant(ptr noundef %683, i64 noundef %687) #17
  br i1 %63, label %689, label %1489

689:                                              ; preds = %684
  %690 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %688, ptr noundef %64, ptr noundef nonnull %11) #18
  br label %1489

691:                                              ; preds = %678
  %692 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %25, ptr noundef %683, ptr noundef nonnull %679) #17
  br i1 %63, label %693, label %1489

693:                                              ; preds = %691
  %694 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %692, ptr noundef %64, ptr noundef nonnull %11) #18
  br label %1489

695:                                              ; preds = %675, %672
  switch i32 %3, label %1465 [
    i32 4, label %696
    i32 2, label %696
  ]

696:                                              ; preds = %695, %695
  %697 = load i32, ptr @ptr_mode, align 4, !tbaa !438
  %698 = icmp eq i32 %25, %697
  br i1 %698, label %699, label %1465

699:                                              ; preds = %696
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef %65, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %3) #18
  %700 = load ptr, ptr %6, align 8, !tbaa !401
  %701 = load i32, ptr %700, align 8
  %702 = and i32 %701, 65535
  %703 = icmp eq i32 %702, 30
  br i1 %703, label %704, label %1468

704:                                              ; preds = %699
  %705 = tail call ptr @negate_rtx(i32 noundef %25, ptr noundef nonnull %700) #17
  %706 = load ptr, ptr %5, align 8, !tbaa !401
  %707 = tail call ptr @simplify_gen_binary(i32 noundef 49, i32 noundef %25, ptr noundef %706, ptr noundef %705) #17
  br i1 %63, label %708, label %1489

708:                                              ; preds = %704
  %709 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %707, ptr noundef %64, ptr noundef nonnull %11) #18
  br label %1489

710:                                              ; preds = %62
  %711 = zext i32 %25 to i64
  %712 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %711
  %713 = load i8, ptr %712, align 1, !tbaa !405
  switch i8 %713, label %714 [
    i8 4, label %1465
    i8 13, label %1465
    i8 6, label %1465
    i8 15, label %1465
    i8 5, label %1465
    i8 14, label %1465
    i8 7, label %1465
    i8 16, label %1465
  ], !prof !806

714:                                              ; preds = %710
  %715 = load i64, ptr %30, align 8
  %716 = and i64 %715, 65535
  %717 = icmp eq i64 %716, 23
  %718 = select i1 %717, ptr %30, ptr %32, !prof !767
  %719 = select i1 %717, ptr %32, ptr %30, !prof !767
  %720 = icmp eq i32 %3, 2
  %721 = load i32, ptr @ptr_mode, align 4
  %722 = icmp eq i32 %25, %721
  %723 = select i1 %720, i1 %722, i1 false
  br i1 %723, label %724, label %772, !prof !768

724:                                              ; preds = %714
  %725 = tail call i32 @host_integerp(ptr noundef %718, i32 noundef 0) #17
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %772, label %727, !prof !767

727:                                              ; preds = %724
  %728 = tail call fastcc ptr @expand_expr(ptr noundef %719, ptr noundef %65, i32 noundef 0, i32 noundef 2) #18
  %729 = load i32, ptr %728, align 8
  %730 = and i32 %729, 65535
  %731 = icmp eq i32 %730, 37
  br i1 %731, label %739, label %732, !prof !767

732:                                              ; preds = %727
  %733 = tail call ptr @force_operand(ptr noundef nonnull %728, ptr noundef null) #18
  %734 = load i32, ptr %733, align 8
  %735 = and i32 %734, 65535
  %736 = icmp eq i32 %735, 37
  br i1 %736, label %739, label %737, !prof !726

737:                                              ; preds = %732
  %738 = tail call ptr @copy_to_mode_reg(i32 noundef %25, ptr noundef nonnull %733) #17
  br label %739

739:                                              ; preds = %727, %737, %732
  %740 = phi ptr [ %738, %737 ], [ %733, %732 ], [ %728, %727 ]
  %741 = tail call i64 @tree_low_cst(ptr noundef %718, i32 noundef 0) #17
  %742 = getelementptr inbounds %struct.tree_common, ptr %718, i64 0, i32 2
  %743 = load ptr, ptr %742, align 8, !tbaa !405
  %744 = load i64, ptr %743, align 8
  %745 = and i64 %744, 65535
  %746 = icmp eq i64 %745, 14
  br i1 %63, label %747, label %760, !prof !767

747:                                              ; preds = %739
  br i1 %746, label %748, label %750, !prof !767

748:                                              ; preds = %747
  %749 = tail call i32 @vector_type_mode(ptr noundef nonnull %743) #17
  br label %755

750:                                              ; preds = %747
  %751 = getelementptr inbounds %struct.tree_type, ptr %743, i64 0, i32 6
  %752 = load i32, ptr %751, align 4
  %753 = lshr i32 %752, 16
  %754 = and i32 %753, 255
  br label %755

755:                                              ; preds = %750, %748
  %756 = phi i32 [ %749, %748 ], [ %754, %750 ]
  %757 = tail call ptr @gen_int_mode(i64 noundef %741, i32 noundef %756) #17
  %758 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %25, ptr noundef %740, ptr noundef %757) #17
  %759 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %758, ptr noundef %64, ptr noundef nonnull %11) #18
  br label %1489

760:                                              ; preds = %739
  br i1 %746, label %761, label %763, !prof !767

761:                                              ; preds = %760
  %762 = tail call i32 @vector_type_mode(ptr noundef nonnull %743) #17
  br label %768

763:                                              ; preds = %760
  %764 = getelementptr inbounds %struct.tree_type, ptr %743, i64 0, i32 6
  %765 = load i32, ptr %764, align 4
  %766 = lshr i32 %765, 16
  %767 = and i32 %766, 255
  br label %768

768:                                              ; preds = %763, %761
  %769 = phi i32 [ %762, %761 ], [ %767, %763 ]
  %770 = tail call ptr @gen_int_mode(i64 noundef %741, i32 noundef %769) #17
  %771 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %25, ptr noundef %740, ptr noundef %770) #17
  br label %1489

772:                                              ; preds = %724, %714
  %773 = icmp eq i32 %3, 1
  %774 = select i1 %773, ptr null, ptr %64
  %775 = tail call fastcc ptr @get_def_for_expr(ptr noundef %719, i32 noundef 116) #18
  %776 = tail call fastcc ptr @get_def_for_expr(ptr noundef %718, i32 noundef 116) #18
  %777 = icmp eq ptr %775, null
  br i1 %777, label %979, label %778

778:                                              ; preds = %772
  %779 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %775) #18
  %780 = icmp ne ptr %779, null
  %781 = icmp ne ptr %776, null
  %782 = select i1 %780, i1 %781, i1 false
  br i1 %782, label %783, label %841

783:                                              ; preds = %778
  %784 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %776) #18
  %785 = icmp eq ptr %784, null
  %786 = load i64, ptr %11, align 8
  br i1 %785, label %845, label %787

787:                                              ; preds = %783
  %788 = and i64 %786, 65535
  %789 = icmp eq i64 %788, 8
  br i1 %789, label %790, label %845

790:                                              ; preds = %787
  %791 = getelementptr inbounds %struct.tree_common, ptr %779, i64 0, i32 2
  %792 = load ptr, ptr %791, align 8, !tbaa !405
  %793 = getelementptr inbounds %struct.tree_type, ptr %792, i64 0, i32 6
  %794 = load i32, ptr %793, align 4
  %795 = and i32 %794, 1023
  %796 = getelementptr inbounds %struct.tree_common, ptr %719, i64 0, i32 2
  %797 = load ptr, ptr %796, align 8, !tbaa !405
  %798 = getelementptr inbounds %struct.tree_type, ptr %797, i64 0, i32 6
  %799 = load i32, ptr %798, align 4
  %800 = and i32 %799, 1023
  %801 = icmp ult i32 %795, %800
  br i1 %801, label %802, label %845

802:                                              ; preds = %790
  %803 = getelementptr inbounds %struct.tree_common, ptr %784, i64 0, i32 2
  %804 = load ptr, ptr %803, align 8, !tbaa !405
  %805 = getelementptr inbounds %struct.tree_type, ptr %804, i64 0, i32 6
  %806 = load i32, ptr %805, align 4
  %807 = and i32 %806, 1023
  %808 = icmp eq i32 %795, %807
  br i1 %808, label %809, label %845

809:                                              ; preds = %802
  %810 = load i64, ptr %792, align 8
  %811 = load i64, ptr %804, align 8
  %812 = xor i64 %811, %810
  %813 = and i64 %812, 2097152
  %814 = icmp eq i64 %813, 0
  br i1 %814, label %845, label %815

815:                                              ; preds = %809
  %816 = and i64 %810, 65535
  %817 = icmp eq i64 %816, 14
  br i1 %817, label %818, label %820

818:                                              ; preds = %815
  %819 = tail call i32 @vector_type_mode(ptr noundef nonnull %792) #17
  br label %823

820:                                              ; preds = %815
  %821 = lshr i32 %794, 16
  %822 = and i32 %821, 255
  br label %823

823:                                              ; preds = %820, %818
  %824 = phi i32 [ %819, %818 ], [ %822, %820 ]
  %825 = zext i32 %824 to i64
  %826 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %825
  %827 = load i8, ptr %826, align 1, !tbaa !405
  %828 = zext i8 %827 to i32
  %829 = icmp eq i32 %25, %828
  br i1 %829, label %830, label %979

830:                                              ; preds = %823
  %831 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 22, i32 4, i64 %711
  %832 = load i32, ptr %831, align 4, !tbaa !442
  %833 = icmp eq i32 %832, 2956
  br i1 %833, label %979, label %834

834:                                              ; preds = %830
  %835 = load ptr, ptr %791, align 8, !tbaa !405
  %836 = load i64, ptr %835, align 8
  %837 = and i64 %836, 2097152
  %838 = icmp eq i64 %837, 0
  br i1 %838, label %840, label %839

839:                                              ; preds = %834
  call fastcc void @expand_operands(ptr noundef nonnull %779, ptr noundef nonnull %784, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  br label %1473

840:                                              ; preds = %834
  call fastcc void @expand_operands(ptr noundef nonnull %779, ptr noundef nonnull %784, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 0) #18
  br label %1473

841:                                              ; preds = %778
  %842 = icmp eq ptr %779, null
  br i1 %842, label %979, label %843

843:                                              ; preds = %841
  %844 = load i64, ptr %11, align 8
  br label %845

845:                                              ; preds = %843, %783, %787, %790, %802, %809
  %846 = phi i64 [ %844, %843 ], [ %786, %783 ], [ %786, %787 ], [ %786, %790 ], [ %786, %802 ], [ %786, %809 ]
  %847 = phi ptr [ null, %843 ], [ null, %783 ], [ %784, %787 ], [ %784, %790 ], [ %784, %802 ], [ %784, %809 ]
  %848 = and i64 %846, 65535
  %849 = icmp eq i64 %848, 8
  br i1 %849, label %850, label %979

850:                                              ; preds = %845
  %851 = getelementptr inbounds %struct.tree_common, ptr %779, i64 0, i32 2
  %852 = load ptr, ptr %851, align 8, !tbaa !405
  %853 = getelementptr inbounds %struct.tree_type, ptr %852, i64 0, i32 6
  %854 = load i32, ptr %853, align 4
  %855 = and i32 %854, 1023
  %856 = getelementptr inbounds %struct.tree_common, ptr %719, i64 0, i32 2
  %857 = load ptr, ptr %856, align 8, !tbaa !405
  %858 = getelementptr inbounds %struct.tree_type, ptr %857, i64 0, i32 6
  %859 = load i32, ptr %858, align 4
  %860 = and i32 %859, 1023
  %861 = icmp ult i32 %855, %860
  br i1 %861, label %862, label %979

862:                                              ; preds = %850
  %863 = load i64, ptr %718, align 8
  %864 = and i64 %863, 65535
  %865 = icmp eq i64 %864, 23
  br i1 %865, label %866, label %893

866:                                              ; preds = %862
  %867 = tail call i32 @int_fits_type_p(ptr noundef nonnull %718, ptr noundef nonnull %852) #17
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %893, label %869

869:                                              ; preds = %866
  %870 = getelementptr inbounds %struct.tree_common, ptr %718, i64 0, i32 2
  %871 = load ptr, ptr %870, align 8, !tbaa !405
  %872 = load i64, ptr %871, align 8
  %873 = and i64 %872, 65535
  %874 = icmp eq i64 %873, 14
  br i1 %874, label %875, label %877

875:                                              ; preds = %869
  %876 = tail call i32 @vector_type_mode(ptr noundef nonnull %871) #17
  br label %882

877:                                              ; preds = %869
  %878 = getelementptr inbounds %struct.tree_type, ptr %871, i64 0, i32 6
  %879 = load i32, ptr %878, align 4
  %880 = lshr i32 %879, 16
  %881 = and i32 %880, 255
  br label %882

882:                                              ; preds = %877, %875
  %883 = phi i32 [ %876, %875 ], [ %881, %877 ]
  %884 = zext i32 %883 to i64
  %885 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %884
  %886 = load i8, ptr %885, align 1, !tbaa !405
  %887 = icmp ugt i8 %886, 8
  br i1 %887, label %912, label %888

888:                                              ; preds = %882
  %889 = getelementptr inbounds %struct.tree_int_cst, ptr %718, i64 0, i32 1
  %890 = load i64, ptr %889, align 8, !tbaa !405
  %891 = tail call i32 @exact_log2(i64 noundef %890) #17
  %892 = icmp slt i32 %891, 0
  br i1 %892, label %912, label %893

893:                                              ; preds = %888, %866, %862
  %894 = icmp eq ptr %847, null
  br i1 %894, label %979, label %895

895:                                              ; preds = %893
  %896 = getelementptr inbounds %struct.tree_common, ptr %847, i64 0, i32 2
  %897 = load ptr, ptr %896, align 8, !tbaa !405
  %898 = getelementptr inbounds %struct.tree_type, ptr %897, i64 0, i32 6
  %899 = load i32, ptr %898, align 4
  %900 = load ptr, ptr %851, align 8, !tbaa !405
  %901 = getelementptr inbounds %struct.tree_type, ptr %900, i64 0, i32 6
  %902 = load i32, ptr %901, align 4
  %903 = xor i32 %902, %899
  %904 = and i32 %903, 1023
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %906, label %979

906:                                              ; preds = %895
  %907 = load i64, ptr %897, align 8
  %908 = load i64, ptr %900, align 8
  %909 = xor i64 %908, %907
  %910 = and i64 %909, 2097152
  %911 = icmp eq i64 %910, 0
  br i1 %911, label %912, label %979

912:                                              ; preds = %906, %888, %882
  %913 = load ptr, ptr %851, align 8, !tbaa !405
  %914 = load i64, ptr %913, align 8
  %915 = and i64 %914, 65535
  %916 = icmp eq i64 %915, 14
  br i1 %916, label %917, label %920

917:                                              ; preds = %912
  %918 = tail call i32 @vector_type_mode(ptr noundef nonnull %913) #17
  %919 = load i64, ptr %913, align 8
  br label %925

920:                                              ; preds = %912
  %921 = getelementptr inbounds %struct.tree_type, ptr %913, i64 0, i32 6
  %922 = load i32, ptr %921, align 4
  %923 = lshr i32 %922, 16
  %924 = and i32 %923, 255
  br label %925

925:                                              ; preds = %920, %917
  %926 = phi i64 [ %919, %917 ], [ %914, %920 ]
  %927 = phi i32 [ %918, %917 ], [ %924, %920 ]
  %928 = trunc i64 %926 to i32
  %929 = lshr i32 %928, 21
  %930 = and i32 %929, 1
  %931 = icmp eq i32 %930, 0
  %932 = select i1 %931, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20)
  %933 = select i1 %931, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21)
  %934 = zext i32 %927 to i64
  %935 = getelementptr inbounds [87 x i8], ptr @mode_2xwider, i64 0, i64 %934
  %936 = load i8, ptr %935, align 1, !tbaa !405
  %937 = zext i8 %936 to i32
  %938 = icmp eq i32 %25, %937
  br i1 %938, label %939, label %979

939:                                              ; preds = %925
  %940 = select i1 %931, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4)
  %941 = getelementptr inbounds [87 x %struct.optab_handlers], ptr %940, i64 0, i64 %711
  %942 = load i32, ptr %941, align 4, !tbaa !442
  %943 = icmp eq i32 %942, 2956
  br i1 %943, label %950, label %944

944:                                              ; preds = %939
  %945 = load i64, ptr %718, align 8
  %946 = and i64 %945, 65535
  %947 = icmp eq i64 %946, 23
  br i1 %947, label %948, label %949

948:                                              ; preds = %944
  call fastcc void @expand_operands(ptr noundef nonnull %779, ptr noundef nonnull %718, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  br label %1473

949:                                              ; preds = %944
  call fastcc void @expand_operands(ptr noundef nonnull %779, ptr noundef %847, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  br label %1473

950:                                              ; preds = %939
  %951 = select i1 %931, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 21, i32 4), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 20, i32 4)
  %952 = getelementptr inbounds [87 x %struct.optab_handlers], ptr %951, i64 0, i64 %711
  %953 = load i32, ptr %952, align 4, !tbaa !442
  %954 = icmp ne i32 %953, 2956
  %955 = load i32, ptr @word_mode, align 4
  %956 = icmp eq i32 %927, %955
  %957 = select i1 %954, i1 %956, i1 false
  br i1 %957, label %958, label %979

958:                                              ; preds = %950
  %959 = tail call fastcc ptr @expand_normal(ptr noundef nonnull %779) #18
  %960 = load i64, ptr %718, align 8
  %961 = and i64 %960, 65535
  %962 = icmp eq i64 %961, 23
  br i1 %962, label %963, label %966

963:                                              ; preds = %958
  %964 = tail call fastcc ptr @expand_normal(ptr noundef nonnull %718) #18
  %965 = tail call ptr @convert_modes(i32 noundef %927, i32 noundef %25, ptr noundef %964, i32 noundef %28) #18
  br label %968

966:                                              ; preds = %958
  %967 = tail call fastcc ptr @expand_normal(ptr noundef %847) #18
  br label %968

968:                                              ; preds = %966, %963
  %969 = phi ptr [ %967, %966 ], [ %965, %963 ]
  %970 = tail call ptr @expand_binop(i32 noundef %25, ptr noundef nonnull %932, ptr noundef %959, ptr noundef %969, ptr noundef %774, i32 noundef %28, i32 noundef 3) #17
  %971 = tail call ptr @gen_highpart(i32 noundef %927, ptr noundef %970) #17
  %972 = tail call ptr @expand_mult_highpart_adjust(i32 noundef %927, ptr noundef %971, ptr noundef %959, ptr noundef %969, ptr noundef %971, i32 noundef %930) #17
  %973 = icmp eq ptr %972, %971
  br i1 %973, label %976, label %974

974:                                              ; preds = %968
  %975 = tail call ptr @emit_move_insn(ptr noundef %971, ptr noundef %972) #18
  br label %976

976:                                              ; preds = %974, %968
  br i1 %63, label %977, label %1489

977:                                              ; preds = %976
  %978 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %970, ptr noundef %774, ptr noundef nonnull %11) #18
  br label %1489

979:                                              ; preds = %925, %950, %823, %830, %772, %841, %845, %850, %893, %895, %906
  call fastcc void @expand_operands(ptr noundef %719, ptr noundef %718, ptr noundef %65, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %980 = load ptr, ptr %5, align 8, !tbaa !401
  %981 = load ptr, ptr %6, align 8, !tbaa !401
  %982 = tail call ptr @expand_mult(i32 noundef %25, ptr noundef %980, ptr noundef %981, ptr noundef %774, i32 noundef %28) #17
  br i1 %63, label %983, label %1489

983:                                              ; preds = %979
  %984 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %982, ptr noundef %774, ptr noundef nonnull %11) #18
  br label %1489

985:                                              ; preds = %62, %62, %62, %62, %62
  %986 = zext i32 %25 to i64
  %987 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %986
  %988 = load i8, ptr %987, align 1, !tbaa !405
  switch i8 %988, label %989 [
    i8 4, label %1465
    i8 13, label %1465
    i8 6, label %1465
    i8 15, label %1465
    i8 5, label %1465
    i8 14, label %1465
    i8 7, label %1465
    i8 16, label %1465
  ]

989:                                              ; preds = %985
  %990 = icmp eq i32 %3, 1
  %991 = select i1 %990, ptr null, ptr %64
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef %65, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %992 = load ptr, ptr %5, align 8, !tbaa !401
  %993 = load ptr, ptr %6, align 8, !tbaa !401
  %994 = tail call ptr @expand_divmod(i32 noundef 0, i32 noundef %7, i32 noundef %25, ptr noundef %992, ptr noundef %993, ptr noundef %991, i32 noundef %28) #17
  br label %1489

995:                                              ; preds = %62, %62, %62, %62
  %996 = icmp eq i32 %3, 1
  %997 = select i1 %996, ptr null, ptr %64
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef %65, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %998 = load ptr, ptr %5, align 8, !tbaa !401
  %999 = load ptr, ptr %6, align 8, !tbaa !401
  %1000 = tail call ptr @expand_divmod(i32 noundef 1, i32 noundef %7, i32 noundef %25, ptr noundef %998, ptr noundef %999, ptr noundef %997, i32 noundef %28) #17
  br label %1489

1001:                                             ; preds = %62
  %1002 = tail call fastcc ptr @expand_normal(ptr noundef %30) #18
  %1003 = icmp eq ptr %64, null
  %1004 = icmp eq i32 %3, 1
  %1005 = or i1 %1004, %1003
  br i1 %1005, label %1006, label %1008

1006:                                             ; preds = %1001
  %1007 = tail call ptr @gen_reg_rtx(i32 noundef %25) #17
  br label %1008

1008:                                             ; preds = %1001, %1006
  %1009 = phi ptr [ %1007, %1006 ], [ %64, %1001 ]
  %1010 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %1011 = load ptr, ptr %1010, align 8, !tbaa !405
  %1012 = load i64, ptr %1011, align 8
  %1013 = and i64 %1012, 2162687
  %1014 = icmp eq i64 %1013, 2097160
  %1015 = load i64, ptr %11, align 8
  %1016 = and i64 %1015, 2162687
  %1017 = icmp eq i64 %1016, 2097160
  %1018 = select i1 %1014, i1 true, i1 %1017
  %1019 = trunc i64 %1015 to i32
  %1020 = lshr i32 %1019, 31
  br i1 %1018, label %1021, label %1022

1021:                                             ; preds = %1008
  tail call void @expand_fixed_convert(ptr noundef %1009, ptr noundef %1002, i32 noundef 1, i32 noundef %1020) #17
  br label %1489

1022:                                             ; preds = %1008
  tail call void @expand_fixed_convert(ptr noundef %1009, ptr noundef %1002, i32 noundef 0, i32 noundef %1020) #17
  br label %1489

1023:                                             ; preds = %62
  %1024 = tail call fastcc ptr @expand_normal(ptr noundef %30) #18
  %1025 = icmp eq ptr %64, null
  %1026 = icmp eq i32 %3, 1
  %1027 = or i1 %1026, %1025
  br i1 %1027, label %1028, label %1030

1028:                                             ; preds = %1023
  %1029 = tail call ptr @gen_reg_rtx(i32 noundef %25) #17
  br label %1030

1030:                                             ; preds = %1023, %1028
  %1031 = phi ptr [ %1029, %1028 ], [ %64, %1023 ]
  tail call void @expand_fix(ptr noundef %1031, ptr noundef %1024, i32 noundef %28) #17
  br label %1489

1032:                                             ; preds = %62
  %1033 = tail call fastcc ptr @expand_normal(ptr noundef %30) #18
  %1034 = icmp eq ptr %64, null
  %1035 = icmp eq i32 %3, 1
  %1036 = or i1 %1035, %1034
  br i1 %1036, label %1037, label %1039

1037:                                             ; preds = %1032
  %1038 = tail call ptr @gen_reg_rtx(i32 noundef %25) #17
  br label %1039

1039:                                             ; preds = %1032, %1037
  %1040 = phi ptr [ %1038, %1037 ], [ %64, %1032 ]
  %1041 = load i32, ptr %1033, align 8
  %1042 = and i32 %1041, 16711680
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1044, label %1060

1044:                                             ; preds = %1039
  %1045 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %1046 = load ptr, ptr %1045, align 8, !tbaa !405
  %1047 = load i64, ptr %1046, align 8
  %1048 = and i64 %1047, 65535
  %1049 = icmp eq i64 %1048, 14
  br i1 %1049, label %1050, label %1052

1050:                                             ; preds = %1044
  %1051 = tail call i32 @vector_type_mode(ptr noundef nonnull %1046) #17
  br label %1057

1052:                                             ; preds = %1044
  %1053 = getelementptr inbounds %struct.tree_type, ptr %1046, i64 0, i32 6
  %1054 = load i32, ptr %1053, align 4
  %1055 = lshr i32 %1054, 16
  %1056 = and i32 %1055, 255
  br label %1057

1057:                                             ; preds = %1052, %1050
  %1058 = phi i32 [ %1051, %1050 ], [ %1056, %1052 ]
  %1059 = tail call ptr @copy_to_mode_reg(i32 noundef %1058, ptr noundef nonnull %1033) #17
  br label %1060

1060:                                             ; preds = %1057, %1039
  %1061 = phi ptr [ %1059, %1057 ], [ %1033, %1039 ]
  %1062 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %1063 = load ptr, ptr %1062, align 8, !tbaa !405
  %1064 = load i64, ptr %1063, align 8
  %1065 = trunc i64 %1064 to i32
  %1066 = lshr i32 %1065, 21
  %1067 = and i32 %1066, 1
  tail call void @expand_float(ptr noundef %1040, ptr noundef %1061, i32 noundef %1067) #17
  br label %1489

1068:                                             ; preds = %62
  %1069 = tail call fastcc ptr @expand_expr(ptr noundef %30, ptr noundef %65, i32 noundef 0, i32 noundef 0) #18
  %1070 = icmp eq i32 %3, 1
  %1071 = select i1 %1070, ptr null, ptr %64
  %1072 = tail call ptr @optab_for_tree_code(i32 noundef 79, ptr noundef nonnull %11, i32 noundef 0) #17
  %1073 = tail call ptr @expand_unop(i32 noundef %25, ptr noundef %1072, ptr noundef %1069, ptr noundef %1071, i32 noundef 0) #17
  %1074 = icmp eq ptr %1073, null
  br i1 %1074, label %1075, label %1076

1075:                                             ; preds = %1068
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7895, ptr noundef nonnull @.str.1) #17
  br label %1076

1076:                                             ; preds = %1068, %1075
  br i1 %63, label %1077, label %1489

1077:                                             ; preds = %1076
  %1078 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %1073, ptr noundef %1071, ptr noundef nonnull %11) #18
  br label %1489

1079:                                             ; preds = %62
  %1080 = tail call fastcc ptr @expand_expr(ptr noundef %30, ptr noundef %65, i32 noundef 0, i32 noundef 0) #18
  %1081 = icmp eq i32 %3, 1
  %1082 = select i1 %1081, ptr null, ptr %64
  %1083 = zext i32 %25 to i64
  %1084 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1083
  %1085 = load i8, ptr %1084, align 1, !tbaa !405
  %1086 = and i8 %1085, -2
  %1087 = icmp eq i8 %1086, 10
  br i1 %1087, label %1088, label %1089

1088:                                             ; preds = %1079
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7906, ptr noundef nonnull @.str.1) #17
  br label %1089

1089:                                             ; preds = %1079, %1088
  %1090 = load i64, ptr %11, align 8
  %1091 = and i64 %1090, 2097152
  %1092 = icmp eq i64 %1091, 0
  br i1 %1092, label %1093, label %1489

1093:                                             ; preds = %1089
  %1094 = tail call i32 @safe_from_p(ptr noundef %1082, ptr noundef %30, i32 noundef 1) #18, !range !706
  %1095 = tail call ptr @expand_abs(i32 noundef %25, ptr noundef %1080, ptr noundef %1082, i32 noundef %28, i32 noundef %1094) #17
  br label %1489

1096:                                             ; preds = %62, %62
  %1097 = icmp eq ptr %64, null
  %1098 = icmp eq i32 %3, 1
  %1099 = or i1 %1098, %1097
  br i1 %1099, label %1114, label %1100

1100:                                             ; preds = %1096
  %1101 = load i32, ptr %64, align 8
  %1102 = and i32 %1101, 65535
  %1103 = and i32 %1101, 134283263
  %1104 = icmp eq i32 %1103, 134217771
  br i1 %1104, label %1114, label %1105

1105:                                             ; preds = %1100
  %1106 = lshr i32 %1101, 16
  %1107 = and i32 %1106, 255
  %1108 = icmp eq i32 %1107, %25
  br i1 %1108, label %1109, label %1114

1109:                                             ; preds = %1105
  %1110 = icmp eq i32 %1102, 37
  br i1 %1110, label %1111, label %1116

1111:                                             ; preds = %1109
  %1112 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %64) #18
  %1113 = icmp ult i32 %1112, 53
  br i1 %1113, label %1114, label %1116

1114:                                             ; preds = %1100, %1111, %1105, %1096
  %1115 = tail call ptr @gen_reg_rtx(i32 noundef %25) #17
  br label %1116

1116:                                             ; preds = %1114, %1111, %1109
  %1117 = phi ptr [ %1115, %1114 ], [ %64, %1111 ], [ %64, %1109 ]
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef %1117, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %1118 = tail call ptr @optab_for_tree_code(i32 noundef %7, ptr noundef nonnull %11, i32 noundef 0) #17
  %1119 = load ptr, ptr %5, align 8, !tbaa !401
  %1120 = load ptr, ptr %6, align 8, !tbaa !401
  %1121 = tail call ptr @expand_binop(i32 noundef %25, ptr noundef %1118, ptr noundef %1119, ptr noundef %1120, ptr noundef %1117, i32 noundef %28, i32 noundef 2) #17
  %1122 = icmp eq ptr %1121, null
  br i1 %1122, label %1123, label %1489

1123:                                             ; preds = %1116
  %1124 = load i32, ptr %1117, align 8
  %1125 = and i32 %1124, 65535
  %1126 = icmp eq i32 %1125, 37
  br i1 %1126, label %1129, label %1127

1127:                                             ; preds = %1123
  %1128 = tail call ptr @gen_reg_rtx(i32 noundef %25) #17
  br label %1129

1129:                                             ; preds = %1127, %1123
  %1130 = phi ptr [ %1117, %1123 ], [ %1128, %1127 ]
  %1131 = icmp ne ptr %1130, %1119
  %1132 = icmp eq ptr %1130, %1120
  %1133 = and i1 %1131, %1132
  %1134 = select i1 %1133, ptr %1120, ptr %1119
  %1135 = select i1 %1133, ptr %1119, ptr %1120
  %1136 = load i32, ptr %1135, align 8
  %1137 = and i32 %1136, 65535
  %1138 = zext nneg i32 %1137 to i64
  %1139 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1138
  %1140 = load i32, ptr %1139, align 4, !tbaa !438
  %1141 = icmp eq i32 %1140, 9
  br i1 %1141, label %1144, label %1142

1142:                                             ; preds = %1129
  %1143 = tail call ptr @force_reg(i32 noundef %25, ptr noundef nonnull %1135) #17
  br label %1144

1144:                                             ; preds = %1142, %1129
  %1145 = phi ptr [ %1143, %1142 ], [ %1135, %1129 ]
  %1146 = icmp eq i32 %7, 81
  %1147 = icmp eq i32 %28, 0
  %1148 = select i1 %1147, i32 82, i32 86
  %1149 = select i1 %1147, i32 84, i32 88
  %1150 = select i1 %1146, i32 %1148, i32 %1149
  %1151 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !401
  %1152 = icmp eq ptr %1145, %1151
  %1153 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %1154 = select i1 %1147, i32 83, i32 80
  %1155 = select i1 %1146, i32 %1154, i32 %1149
  %1156 = select i1 %1152, i32 %1155, i32 %1150
  %1157 = select i1 %1152, ptr %1153, ptr %1145
  %1158 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !401
  %1159 = icmp ne ptr %1145, %1158
  %1160 = icmp ne i32 %28, 0
  %1161 = select i1 %1159, i1 true, i1 %1160
  %1162 = icmp eq i32 %7, 80
  %1163 = select i1 %1162, i32 85, i32 %1156
  %1164 = select i1 %1161, i32 %1156, i32 %1163
  %1165 = select i1 %1161, ptr %1157, ptr %1153
  %1166 = tail call i32 @can_conditionally_move_p(i32 noundef %25) #17
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1172, label %1168

1168:                                             ; preds = %1144
  tail call void @do_pending_stack_adjust() #17
  tail call void @start_sequence() #17
  %1169 = tail call ptr @emit_conditional_move(ptr noundef %1130, i32 noundef %1164, ptr noundef %1134, ptr noundef %1165, i32 noundef %25, ptr noundef %1134, ptr noundef %1145, i32 noundef %25, i32 noundef %28) #17
  %1170 = icmp eq ptr %1169, null
  br i1 %1170, label %1171, label %1176

1171:                                             ; preds = %1168
  tail call void @end_sequence() #17
  br label %1172

1172:                                             ; preds = %1171, %1144
  %1173 = icmp eq ptr %1130, %1134
  br i1 %1173, label %1179, label %1174

1174:                                             ; preds = %1172
  %1175 = tail call ptr @emit_move_insn(ptr noundef %1130, ptr noundef %1134) #18
  br label %1179

1176:                                             ; preds = %1168
  %1177 = tail call ptr @get_insns() #17
  tail call void @end_sequence() #17
  %1178 = tail call ptr @emit_insn(ptr noundef %1177) #17
  br label %1489

1179:                                             ; preds = %1172, %1174
  %1180 = tail call ptr @gen_label_rtx() #17
  tail call void @do_compare_rtx_and_jump(ptr noundef %1130, ptr noundef %1165, i32 noundef %1164, i32 noundef %28, i32 noundef %25, ptr noundef null, ptr noundef null, ptr noundef %1180, i32 noundef -1) #17
  %1181 = tail call ptr @emit_move_insn(ptr noundef %1130, ptr noundef %1145) #18
  %1182 = tail call ptr @emit_label(ptr noundef %1180) #17
  br label %1489

1183:                                             ; preds = %62
  %1184 = tail call fastcc ptr @expand_expr(ptr noundef %30, ptr noundef %65, i32 noundef 0, i32 noundef 0) #18
  %1185 = icmp eq i32 %3, 1
  %1186 = select i1 %1185, ptr null, ptr %64
  %1187 = tail call ptr @expand_unop(i32 noundef %25, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 69), ptr noundef %1184, ptr noundef %1186, i32 noundef 1) #17
  %1188 = icmp eq ptr %1187, null
  br i1 %1188, label %1189, label %1489

1189:                                             ; preds = %1183
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8038, ptr noundef nonnull @.str.1) #17
  br label %1489

1190:                                             ; preds = %62
  br label %1465

1191:                                             ; preds = %62
  br label %1465

1192:                                             ; preds = %62
  br label %1465

1193:                                             ; preds = %62, %62
  %1194 = icmp eq i64 %48, 14
  br i1 %1194, label %1195, label %1197

1195:                                             ; preds = %1193
  %1196 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %1202

1197:                                             ; preds = %1193
  %1198 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1199 = load i32, ptr %1198, align 4
  %1200 = lshr i32 %1199, 16
  %1201 = and i32 %1200, 255
  br label %1202

1202:                                             ; preds = %1197, %1195
  %1203 = phi i32 [ %1196, %1195 ], [ %1201, %1197 ]
  %1204 = zext i32 %1203 to i64
  %1205 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1204
  %1206 = load i8, ptr %1205, align 1, !tbaa !405
  %1207 = icmp eq i8 %1206, 12
  br i1 %1207, label %1316, label %1208

1208:                                             ; preds = %1202
  %1209 = load i64, ptr %11, align 8
  %1210 = and i64 %1209, 65535
  %1211 = icmp eq i64 %1210, 14
  br i1 %1211, label %1212, label %1214

1212:                                             ; preds = %1208
  %1213 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %1219

1214:                                             ; preds = %1208
  %1215 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1216 = load i32, ptr %1215, align 4
  %1217 = lshr i32 %1216, 16
  %1218 = and i32 %1217, 255
  br label %1219

1219:                                             ; preds = %1214, %1212
  %1220 = phi i32 [ %1213, %1212 ], [ %1218, %1214 ]
  %1221 = zext i32 %1220 to i64
  %1222 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1221
  %1223 = load i8, ptr %1222, align 1, !tbaa !405
  %1224 = icmp eq i8 %1223, 17
  br i1 %1224, label %1316, label %1225

1225:                                             ; preds = %1219
  %1226 = load i64, ptr %11, align 8
  %1227 = and i64 %1226, 65535
  %1228 = icmp eq i64 %1227, 14
  br i1 %1228, label %1229, label %1231

1229:                                             ; preds = %1225
  %1230 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %1236

1231:                                             ; preds = %1225
  %1232 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1233 = load i32, ptr %1232, align 4
  %1234 = lshr i32 %1233, 16
  %1235 = and i32 %1234, 255
  br label %1236

1236:                                             ; preds = %1231, %1229
  %1237 = phi i32 [ %1230, %1229 ], [ %1235, %1231 ]
  %1238 = zext i32 %1237 to i64
  %1239 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1238
  %1240 = load i8, ptr %1239, align 1, !tbaa !405
  %1241 = icmp eq i8 %1240, 13
  br i1 %1241, label %1316, label %1242

1242:                                             ; preds = %1236
  %1243 = load i64, ptr %11, align 8
  %1244 = and i64 %1243, 65535
  %1245 = icmp eq i64 %1244, 14
  br i1 %1245, label %1246, label %1248

1246:                                             ; preds = %1242
  %1247 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %1253

1248:                                             ; preds = %1242
  %1249 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1250 = load i32, ptr %1249, align 4
  %1251 = lshr i32 %1250, 16
  %1252 = and i32 %1251, 255
  br label %1253

1253:                                             ; preds = %1248, %1246
  %1254 = phi i32 [ %1247, %1246 ], [ %1252, %1248 ]
  %1255 = zext i32 %1254 to i64
  %1256 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1255
  %1257 = load i8, ptr %1256, align 1, !tbaa !405
  %1258 = icmp eq i8 %1257, 14
  br i1 %1258, label %1316, label %1259

1259:                                             ; preds = %1253
  %1260 = load i64, ptr %11, align 8
  %1261 = and i64 %1260, 65535
  %1262 = icmp eq i64 %1261, 14
  br i1 %1262, label %1263, label %1265

1263:                                             ; preds = %1259
  %1264 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %1270

1265:                                             ; preds = %1259
  %1266 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1267 = load i32, ptr %1266, align 4
  %1268 = lshr i32 %1267, 16
  %1269 = and i32 %1268, 255
  br label %1270

1270:                                             ; preds = %1265, %1263
  %1271 = phi i32 [ %1264, %1263 ], [ %1269, %1265 ]
  %1272 = zext i32 %1271 to i64
  %1273 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1272
  %1274 = load i8, ptr %1273, align 1, !tbaa !405
  %1275 = icmp eq i8 %1274, 15
  br i1 %1275, label %1316, label %1276

1276:                                             ; preds = %1270
  %1277 = load i64, ptr %11, align 8
  %1278 = and i64 %1277, 65535
  %1279 = icmp eq i64 %1278, 14
  br i1 %1279, label %1280, label %1282

1280:                                             ; preds = %1276
  %1281 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %1287

1282:                                             ; preds = %1276
  %1283 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1284 = load i32, ptr %1283, align 4
  %1285 = lshr i32 %1284, 16
  %1286 = and i32 %1285, 255
  br label %1287

1287:                                             ; preds = %1282, %1280
  %1288 = phi i32 [ %1281, %1280 ], [ %1286, %1282 ]
  %1289 = zext i32 %1288 to i64
  %1290 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1289
  %1291 = load i8, ptr %1290, align 1, !tbaa !405
  %1292 = icmp eq i8 %1291, 16
  br i1 %1292, label %1316, label %1293

1293:                                             ; preds = %1287
  %1294 = load i64, ptr %11, align 8
  %1295 = and i64 %1294, 65535
  %1296 = icmp eq i64 %1295, 14
  br i1 %1296, label %1297, label %1301

1297:                                             ; preds = %1293
  %1298 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  %1299 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1300 = load i32, ptr %1299, align 4
  br label %1306

1301:                                             ; preds = %1293
  %1302 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1303 = load i32, ptr %1302, align 4
  %1304 = lshr i32 %1303, 16
  %1305 = and i32 %1304, 255
  br label %1306

1306:                                             ; preds = %1301, %1297
  %1307 = phi i32 [ %1300, %1297 ], [ %1303, %1301 ]
  %1308 = phi i32 [ %1298, %1297 ], [ %1305, %1301 ]
  %1309 = zext i32 %1308 to i64
  %1310 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %1309
  %1311 = load i16, ptr %1310, align 2, !tbaa !440
  %1312 = zext i16 %1311 to i32
  %1313 = and i32 %1307, 1023
  %1314 = icmp eq i32 %1313, %1312
  br i1 %1314, label %1316, label %1315

1315:                                             ; preds = %1306
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8073, ptr noundef nonnull @.str.1) #17
  br label %1316

1316:                                             ; preds = %1315, %1306, %1287, %1270, %1253, %1236, %1219, %1202, %62, %62
  %1317 = zext i32 %25 to i64
  %1318 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1317
  %1319 = load i8, ptr %1318, align 1, !tbaa !405
  switch i8 %1319, label %1320 [
    i8 4, label %1465
    i8 13, label %1465
    i8 6, label %1465
    i8 15, label %1465
    i8 5, label %1465
    i8 14, label %1465
    i8 7, label %1465
    i8 16, label %1465
  ], !prof !807

1320:                                             ; preds = %1316
  %1321 = tail call i32 @safe_from_p(ptr noundef %65, ptr noundef %32, i32 noundef 1) #18, !range !706
  %1322 = icmp eq i32 %1321, 0
  br i1 %1322, label %1323, label %1324, !prof !479

1323:                                             ; preds = %1320
  br label %1324

1324:                                             ; preds = %1323, %1320
  %1325 = phi ptr [ %65, %1320 ], [ null, %1323 ]
  %1326 = icmp eq i32 %3, 1
  br i1 %1326, label %1327, label %1328, !prof !479

1327:                                             ; preds = %1324
  br label %1328

1328:                                             ; preds = %1327, %1324
  %1329 = phi ptr [ null, %1327 ], [ %64, %1324 ]
  %1330 = tail call fastcc ptr @expand_expr(ptr noundef %30, ptr noundef %1325, i32 noundef 0, i32 noundef 0) #18
  %1331 = tail call ptr @expand_shift(i32 noundef %7, i32 noundef %25, ptr noundef %1330, ptr noundef %32, ptr noundef %1329, i32 noundef %28) #17
  %1332 = icmp eq i32 %7, 83
  br i1 %1332, label %1333, label %1489, !prof !479

1333:                                             ; preds = %1328
  br i1 %63, label %1334, label %1489

1334:                                             ; preds = %1333
  %1335 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %1331, ptr noundef %1329, ptr noundef nonnull %11) #18
  br label %1489

1336:                                             ; preds = %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62, %62
  %1337 = icmp eq i32 %3, 1
  %1338 = select i1 %1337, ptr null, ptr %64, !prof !808
  %1339 = icmp eq i32 %2, 0
  %1340 = select i1 %1339, i32 %25, i32 %2, !prof !809
  %1341 = tail call fastcc ptr @do_store_flag(ptr noundef nonnull %0, ptr noundef %1338, i32 noundef %1340) #18
  %1342 = icmp eq ptr %1341, null
  br i1 %1342, label %1343, label %1489, !prof !808

1343:                                             ; preds = %1336
  %1344 = icmp eq ptr %64, null
  %1345 = or i1 %1337, %1344
  br i1 %1345, label %1362, label %1346

1346:                                             ; preds = %1343
  %1347 = tail call i32 @safe_from_p(ptr noundef nonnull %64, ptr noundef %30, i32 noundef 1) #18, !range !706
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1362, label %1349

1349:                                             ; preds = %1346
  %1350 = tail call i32 @safe_from_p(ptr noundef nonnull %64, ptr noundef %32, i32 noundef 1) #18, !range !706
  %1351 = icmp eq i32 %1350, 0
  br i1 %1351, label %1362, label %1352

1352:                                             ; preds = %1349
  %1353 = load i32, ptr @optimize, align 4, !tbaa !438
  %1354 = icmp eq i32 %1353, 0
  br i1 %1354, label %1355, label %1364

1355:                                             ; preds = %1352
  %1356 = load i32, ptr %64, align 8
  %1357 = and i32 %1356, 65535
  %1358 = icmp eq i32 %1357, 37
  br i1 %1358, label %1359, label %1364

1359:                                             ; preds = %1355
  %1360 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %64) #18
  %1361 = icmp ult i32 %1360, 53
  br i1 %1361, label %1362, label %1364

1362:                                             ; preds = %1359, %1349, %1346, %1343
  %1363 = tail call ptr @gen_reg_rtx(i32 noundef %1340) #17
  br label %1364

1364:                                             ; preds = %1362, %1359, %1355, %1352
  %1365 = phi ptr [ %1363, %1362 ], [ %64, %1352 ], [ %64, %1359 ], [ %64, %1355 ]
  %1366 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  %1367 = tail call ptr @emit_move_insn(ptr noundef %1365, ptr noundef %1366) #18
  %1368 = tail call ptr @gen_label_rtx() #17
  tail call void @jumpifnot_1(i32 noundef %7, ptr noundef %30, ptr noundef %32, ptr noundef %1368, i32 noundef -1) #17
  %1369 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !401
  %1370 = tail call ptr @emit_move_insn(ptr noundef %1365, ptr noundef %1369) #18
  %1371 = tail call ptr @emit_label(ptr noundef %1368) #17
  br label %1489

1372:                                             ; preds = %62
  %1373 = icmp eq i32 %3, 1
  %1374 = select i1 %1373, ptr null, ptr %64
  %1375 = tail call fastcc ptr @expand_expr(ptr noundef %30, ptr noundef %1374, i32 noundef 0, i32 noundef 0) #18
  %1376 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !401
  %1377 = tail call ptr @expand_binop(i32 noundef %25, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 43), ptr noundef %1375, ptr noundef %1376, ptr noundef %1374, i32 noundef 1, i32 noundef 3) #17
  %1378 = icmp eq ptr %1377, null
  br i1 %1378, label %1379, label %1489

1379:                                             ; preds = %1372
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8150, ptr noundef nonnull @.str.1) #17
  br label %1489

1380:                                             ; preds = %62
  %1381 = tail call fastcc ptr @expand_normal(ptr noundef %30) #18
  %1382 = tail call fastcc ptr @expand_normal(ptr noundef %32) #18
  %1383 = icmp eq ptr %64, null
  br i1 %1383, label %1384, label %1398

1384:                                             ; preds = %1380
  %1385 = load i64, ptr %11, align 8
  %1386 = and i64 %1385, 65535
  %1387 = icmp eq i64 %1386, 14
  br i1 %1387, label %1388, label %1390

1388:                                             ; preds = %1384
  %1389 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #17
  br label %1395

1390:                                             ; preds = %1384
  %1391 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %1392 = load i32, ptr %1391, align 4
  %1393 = lshr i32 %1392, 16
  %1394 = and i32 %1393, 255
  br label %1395

1395:                                             ; preds = %1390, %1388
  %1396 = phi i32 [ %1389, %1388 ], [ %1394, %1390 ]
  %1397 = tail call ptr @gen_reg_rtx(i32 noundef %1396) #17
  br label %1398

1398:                                             ; preds = %1395, %1380
  %1399 = phi ptr [ %64, %1380 ], [ %1397, %1395 ]
  tail call fastcc void @write_complex_part(ptr noundef %1399, ptr noundef %1381, i8 noundef zeroext 0) #18
  tail call fastcc void @write_complex_part(ptr noundef %1399, ptr noundef %1382, i8 noundef zeroext 1) #18
  br label %1489

1400:                                             ; preds = %62
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %1401 = load ptr, ptr %5, align 8, !tbaa !401
  %1402 = load ptr, ptr %6, align 8, !tbaa !401
  %1403 = tail call ptr @expand_widen_pattern_expr(ptr noundef nonnull %0, ptr noundef %1401, ptr noundef null, ptr noundef %1402, ptr noundef %64, i32 noundef %28) #17
  br label %1489

1404:                                             ; preds = %62, %62, %62
  %1405 = tail call fastcc ptr @expand_normal(ptr noundef %30) #18
  %1406 = tail call ptr @optab_for_tree_code(i32 noundef %7, ptr noundef nonnull %11, i32 noundef 0) #17
  %1407 = tail call ptr @expand_unop(i32 noundef %25, ptr noundef %1406, ptr noundef %1405, ptr noundef %64, i32 noundef %28) #17
  %1408 = icmp eq ptr %1407, null
  br i1 %1408, label %1409, label %1489

1409:                                             ; preds = %1404
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8185, ptr noundef nonnull @.str.1) #17
  br label %1489

1410:                                             ; preds = %62, %62
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %1411 = tail call ptr @optab_for_tree_code(i32 noundef %7, ptr noundef nonnull %11, i32 noundef 0) #17
  %1412 = load ptr, ptr %5, align 8, !tbaa !401
  %1413 = load ptr, ptr %6, align 8, !tbaa !401
  %1414 = tail call ptr @expand_binop(i32 noundef %25, ptr noundef %1411, ptr noundef %1412, ptr noundef %1413, ptr noundef %64, i32 noundef %28, i32 noundef 2) #17
  %1415 = icmp eq ptr %1414, null
  br i1 %1415, label %1416, label %1489

1416:                                             ; preds = %1410
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8197, ptr noundef nonnull @.str.1) #17
  br label %1489

1417:                                             ; preds = %62, %62
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %1418 = tail call ptr @optab_for_tree_code(i32 noundef %7, ptr noundef nonnull %11, i32 noundef 0) #17
  %1419 = load ptr, ptr %5, align 8, !tbaa !401
  %1420 = load ptr, ptr %6, align 8, !tbaa !401
  %1421 = tail call ptr @expand_binop(i32 noundef %25, ptr noundef %1418, ptr noundef %1419, ptr noundef %1420, ptr noundef %64, i32 noundef %28, i32 noundef 2) #17
  %1422 = icmp eq ptr %1421, null
  br i1 %1422, label %1423, label %1489

1423:                                             ; preds = %1417
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8209, ptr noundef nonnull @.str.1) #17
  br label %1489

1424:                                             ; preds = %62, %62
  %1425 = tail call ptr @expand_vec_shift_expr(ptr noundef nonnull %0, ptr noundef %64) #17
  br label %1489

1426:                                             ; preds = %62, %62
  %1427 = tail call fastcc ptr @expand_normal(ptr noundef %30) #18
  %1428 = tail call ptr @optab_for_tree_code(i32 noundef %7, ptr noundef nonnull %11, i32 noundef 0) #17
  %1429 = tail call ptr @expand_widen_pattern_expr(ptr noundef nonnull %0, ptr noundef %1427, ptr noundef null, ptr noundef null, ptr noundef %64, i32 noundef %28) #17
  %1430 = icmp eq ptr %1429, null
  br i1 %1430, label %1431, label %1489

1431:                                             ; preds = %1426
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8227, ptr noundef nonnull @.str.1) #17
  br label %1489

1432:                                             ; preds = %62, %62
  %1433 = tail call fastcc ptr @expand_normal(ptr noundef %30) #18
  %1434 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %1435 = load ptr, ptr %1434, align 8, !tbaa !405
  %1436 = tail call ptr @optab_for_tree_code(i32 noundef %7, ptr noundef %1435, i32 noundef 0) #17
  %1437 = load ptr, ptr %1434, align 8, !tbaa !405
  %1438 = load i64, ptr %1437, align 8
  %1439 = trunc i64 %1438 to i32
  %1440 = lshr i32 %1439, 21
  %1441 = and i32 %1440, 1
  %1442 = tail call ptr @expand_widen_pattern_expr(ptr noundef nonnull %0, ptr noundef %1433, ptr noundef null, ptr noundef null, ptr noundef %64, i32 noundef %1441) #17
  %1443 = icmp eq ptr %1442, null
  br i1 %1443, label %1444, label %1489

1444:                                             ; preds = %1432
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8243, ptr noundef nonnull @.str.1) #17
  br label %1489

1445:                                             ; preds = %62, %62
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  %1446 = load ptr, ptr %5, align 8, !tbaa !401
  %1447 = load ptr, ptr %6, align 8, !tbaa !401
  %1448 = tail call ptr @expand_widen_pattern_expr(ptr noundef nonnull %0, ptr noundef %1446, ptr noundef %1447, ptr noundef null, ptr noundef %64, i32 noundef %28) #17
  %1449 = icmp eq ptr %1448, null
  br i1 %1449, label %1450, label %1489

1450:                                             ; preds = %1445
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8256, ptr noundef nonnull @.str.1) #17
  br label %1489

1451:                                             ; preds = %62, %62, %62
  %1452 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %1453 = load ptr, ptr %1452, align 8, !tbaa !405
  %1454 = load i64, ptr %1453, align 8
  %1455 = and i64 %1454, 65535
  %1456 = icmp eq i64 %1455, 14
  br i1 %1456, label %1457, label %1459

1457:                                             ; preds = %1451
  %1458 = tail call i32 @vector_type_mode(ptr noundef nonnull %1453) #17
  br label %1465

1459:                                             ; preds = %1451
  %1460 = getelementptr inbounds %struct.tree_type, ptr %1453, i64 0, i32 6
  %1461 = load i32, ptr %1460, align 4
  %1462 = lshr i32 %1461, 16
  %1463 = and i32 %1462, 255
  br label %1465

1464:                                             ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8267, ptr noundef nonnull @.str.1) #17
  br label %1465

1465:                                             ; preds = %671, %1457, %1459, %1316, %1316, %1316, %1316, %1316, %1316, %1316, %1316, %985, %985, %985, %985, %985, %985, %985, %985, %710, %710, %710, %710, %710, %710, %710, %710, %695, %1192, %62, %1191, %62, %1190, %62, %62, %696, %1464
  %1466 = phi i32 [ %7, %1464 ], [ %7, %1316 ], [ 88, %1192 ], [ 87, %1191 ], [ 89, %1190 ], [ %7, %62 ], [ %7, %62 ], [ %7, %62 ], [ %7, %62 ], [ %7, %985 ], [ 65, %710 ], [ 64, %695 ], [ 64, %696 ], [ 65, %710 ], [ 65, %710 ], [ 65, %710 ], [ 65, %710 ], [ 65, %710 ], [ 65, %710 ], [ 65, %710 ], [ %7, %985 ], [ %7, %985 ], [ %7, %985 ], [ %7, %985 ], [ %7, %985 ], [ %7, %985 ], [ %7, %985 ], [ %7, %1316 ], [ %7, %1316 ], [ %7, %1316 ], [ %7, %1316 ], [ %7, %1316 ], [ %7, %1316 ], [ %7, %1316 ], [ %7, %1459 ], [ %7, %1457 ], [ 64, %671 ]
  %1467 = phi i32 [ %25, %1464 ], [ %25, %1316 ], [ %25, %1192 ], [ %25, %1191 ], [ %25, %1190 ], [ %25, %62 ], [ %25, %62 ], [ %25, %62 ], [ %25, %62 ], [ %25, %985 ], [ %25, %710 ], [ %25, %695 ], [ %25, %696 ], [ %25, %710 ], [ %25, %710 ], [ %25, %710 ], [ %25, %710 ], [ %25, %710 ], [ %25, %710 ], [ %25, %710 ], [ %25, %985 ], [ %25, %985 ], [ %25, %985 ], [ %25, %985 ], [ %25, %985 ], [ %25, %985 ], [ %25, %985 ], [ %25, %1316 ], [ %25, %1316 ], [ %25, %1316 ], [ %25, %1316 ], [ %25, %1316 ], [ %25, %1316 ], [ %25, %1316 ], [ %1463, %1459 ], [ %1458, %1457 ], [ %25, %671 ]
  call fastcc void @expand_operands(ptr noundef %30, ptr noundef %32, ptr noundef %65, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #18
  br label %1468

1468:                                             ; preds = %532, %699, %573, %1465
  %1469 = phi i32 [ %1466, %1465 ], [ 64, %699 ], [ %7, %573 ], [ %7, %532 ]
  %1470 = phi i32 [ %1467, %1465 ], [ %25, %699 ], [ %25, %573 ], [ %25, %532 ]
  %1471 = phi ptr [ %64, %1465 ], [ %64, %699 ], [ %564, %573 ], [ %468, %532 ]
  %1472 = tail call ptr @optab_for_tree_code(i32 noundef %1469, ptr noundef nonnull %11, i32 noundef 0) #17
  br label %1473

1473:                                             ; preds = %949, %948, %840, %839, %1468
  %1474 = phi ptr [ %1472, %1468 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 22), %839 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 22), %840 ], [ %933, %948 ], [ %933, %949 ]
  %1475 = phi i32 [ %1470, %1468 ], [ %25, %839 ], [ %25, %840 ], [ %25, %948 ], [ %25, %949 ]
  %1476 = phi ptr [ %1471, %1468 ], [ %774, %839 ], [ %774, %840 ], [ %774, %948 ], [ %774, %949 ]
  %1477 = icmp eq i32 %3, 1
  br i1 %1477, label %1478, label %1479, !prof !810

1478:                                             ; preds = %1473
  br label %1479

1479:                                             ; preds = %1478, %1473
  %1480 = phi ptr [ null, %1478 ], [ %1476, %1473 ]
  %1481 = load ptr, ptr %5, align 8, !tbaa !401
  %1482 = load ptr, ptr %6, align 8, !tbaa !401
  %1483 = tail call ptr @expand_binop(i32 noundef %1475, ptr noundef %1474, ptr noundef %1481, ptr noundef %1482, ptr noundef %1480, i32 noundef %28, i32 noundef 3) #17
  %1484 = icmp eq ptr %1483, null
  br i1 %1484, label %1485, label %1486, !prof !810

1485:                                             ; preds = %1479
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 8281, ptr noundef nonnull @.str.1) #17
  br label %1486

1486:                                             ; preds = %1479, %1485
  br i1 %63, label %1487, label %1489, !prof !810

1487:                                             ; preds = %1486
  %1488 = tail call fastcc ptr @reduce_to_bit_field_precision(ptr noundef %1483, ptr noundef %1480, ptr noundef nonnull %11) #18
  br label %1489

1489:                                             ; preds = %979, %704, %691, %684, %575, %568, %203, %1089, %559, %507, %300, %294, %299, %260, %977, %976, %561, %534, %1176, %669, %668, %408, %407, %1487, %1486, %1450, %1445, %1444, %1432, %1431, %1426, %1423, %1417, %1416, %1410, %1409, %1404, %1379, %1372, %1336, %1328, %1333, %1334, %1189, %1183, %1116, %1077, %1076, %1021, %1022, %983, %755, %768, %708, %693, %689, %579, %573, %509, %262, %205, %91, %172, %141, %1424, %1400, %1398, %1364, %1179, %1093, %1060, %1030, %995, %989, %69
  %1490 = phi ptr [ %1425, %1424 ], [ %1403, %1400 ], [ %1399, %1398 ], [ %1365, %1364 ], [ %1130, %1179 ], [ %1130, %1176 ], [ %1095, %1093 ], [ %1040, %1060 ], [ %1031, %1030 ], [ %1000, %995 ], [ %994, %989 ], [ %70, %69 ], [ %93, %91 ], [ %127, %172 ], [ %127, %141 ], [ %206, %205 ], [ %263, %262 ], [ %510, %509 ], [ %569, %573 ], [ %580, %579 ], [ %690, %689 ], [ %694, %693 ], [ %709, %708 ], [ %759, %755 ], [ %771, %768 ], [ %984, %983 ], [ %1009, %1022 ], [ %1009, %1021 ], [ %1078, %1077 ], [ %1073, %1076 ], [ %1121, %1116 ], [ %1187, %1183 ], [ null, %1189 ], [ %1331, %1328 ], [ %1335, %1334 ], [ %1331, %1333 ], [ %1341, %1336 ], [ %1377, %1372 ], [ null, %1379 ], [ %1407, %1404 ], [ null, %1409 ], [ %1414, %1410 ], [ null, %1416 ], [ %1421, %1417 ], [ null, %1423 ], [ %1429, %1426 ], [ null, %1431 ], [ %1442, %1432 ], [ null, %1444 ], [ %1448, %1445 ], [ null, %1450 ], [ %1488, %1487 ], [ %1483, %1486 ], [ %409, %408 ], [ %404, %407 ], [ %670, %669 ], [ %665, %668 ], [ %562, %561 ], [ %535, %534 ], [ %970, %976 ], [ %978, %977 ], [ %261, %260 ], [ %303, %300 ], [ %297, %294 ], [ null, %299 ], [ %508, %507 ], [ %560, %559 ], [ %1080, %1089 ], [ %204, %203 ], [ %572, %568 ], [ %578, %575 ], [ %688, %684 ], [ %692, %691 ], [ %707, %704 ], [ %982, %979 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret ptr %1490
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #11 !prof !811 !PGOFuncName !812 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !405
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @reduce_to_bit_field_precision(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !469 !PGOFuncName !813 {
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
  %22 = load i64, ptr %21, align 8, !tbaa !405
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
  %53 = load i8, ptr %52, align 1, !tbaa !405
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
define internal fastcc ptr @get_def_for_expr(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !814 !PGOFuncName !815 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %13, !prof !816

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @get_gimple_for_ssa_name(ptr noundef nonnull %0) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !817

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %7) #18, !range !818
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %13, !prof !819

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %6, %9, %2, %12
  %14 = phi ptr [ %7, %12 ], [ null, %2 ], [ null, %9 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !820 !PGOFuncName !821 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !469 !PGOFuncName !822 {
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
define internal fastcc void @expand_operands(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5) unnamed_addr #0 !prof !823 !PGOFuncName !824 {
  %7 = tail call i32 @safe_from_p(ptr noundef %2, ptr noundef %1, i32 noundef 1) #18, !range !706
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !825

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %2, %6 ], [ null, %9 ]
  %12 = tail call i32 @operand_equal_p(ptr noundef %0, ptr noundef %1, i32 noundef 0) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14, !prof !826

14:                                               ; preds = %10
  %15 = tail call fastcc ptr @expand_expr(ptr noundef %0, ptr noundef %11, i32 noundef 0, i32 noundef %5) #18
  store ptr %15, ptr %3, align 8, !tbaa !401
  %16 = tail call ptr @copy_rtx(ptr noundef %15) #17
  br label %30

17:                                               ; preds = %10
  %18 = load i32, ptr @flag_evaluation_order, align 4, !tbaa !438
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20, !prof !826

20:                                               ; preds = %17
  %21 = load i64, ptr %1, align 8
  %22 = and i64 %21, 65536
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @save_expr(ptr noundef %0) #17
  br label %26

26:                                               ; preds = %24, %20, %17
  %27 = phi ptr [ %25, %24 ], [ %0, %20 ], [ %0, %17 ]
  %28 = tail call fastcc ptr @expand_expr(ptr noundef %27, ptr noundef %11, i32 noundef 0, i32 noundef %5) #18
  store ptr %28, ptr %3, align 8, !tbaa !401
  %29 = tail call fastcc ptr @expand_expr(ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef %5) #18
  br label %30

30:                                               ; preds = %26, %14
  %31 = phi ptr [ %29, %26 ], [ %16, %14 ]
  store ptr %31, ptr %4, align 8, !tbaa !401
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
define internal fastcc ptr @do_store_flag(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !827 !PGOFuncName !828 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !724
  %8 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !721
  %10 = getelementptr inbounds %struct.separate_ops, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !722
  %12 = load ptr, ptr @global_trees, align 16, !tbaa !401
  %13 = icmp eq ptr %9, %12
  %14 = icmp eq ptr %11, %12
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %16, label %18, !prof !829

16:                                               ; preds = %3
  %17 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  br label %143

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !405
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 14
  br i1 %23, label %24, label %27, !prof !808

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
  br i1 %38, label %143, label %39, !prof !808

39:                                               ; preds = %32
  %40 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %9) #17
  %41 = tail call ptr @tree_strip_nop_conversions(ptr noundef %11) #17
  %42 = load i32, ptr %0, align 8, !tbaa !718
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
  ], !prof !830

43:                                               ; preds = %39
  br label %89

44:                                               ; preds = %39
  %45 = tail call i32 @integer_onep(ptr noundef %41) #17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !401
  %49 = icmp eq i32 %37, 0
  %50 = select i1 %49, i32 84, i32 88
  br label %89

51:                                               ; preds = %44
  %52 = icmp eq i32 %37, 0
  %53 = select i1 %52, i32 85, i32 89
  br label %89

54:                                               ; preds = %39
  %55 = icmp eq i32 %37, 0
  br i1 %55, label %56, label %89, !prof !831

56:                                               ; preds = %54
  %57 = tail call i32 @integer_all_onesp(ptr noundef %41) #17
  %58 = icmp eq i32 %57, 0
  %59 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %60 = select i1 %58, ptr %41, ptr %59, !prof !832
  %61 = select i1 %58, i32 84, i32 85, !prof !832
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
  %74 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !401
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
  br i1 %96, label %97, label %99, !prof !833

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
  br i1 %105, label %106, label %124, !prof !834

106:                                              ; preds = %99
  %107 = load i64, ptr %101, align 8
  %108 = and i64 %107, 65535
  %109 = icmp eq i64 %108, 89
  br i1 %109, label %110, label %124, !prof !835

110:                                              ; preds = %106
  %111 = tail call i32 @integer_zerop(ptr noundef %100) #17
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.tree_exp, ptr %101, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !405
  %116 = tail call i32 @integer_pow2p(ptr noundef %115) #17
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !641
  %120 = tail call ptr %119(i32 noundef %2, i32 noundef %37) #17
  %121 = select i1 %103, i32 102, i32 101
  %122 = tail call ptr @fold_single_bit_test(i32 noundef %7, i32 noundef %121, ptr noundef nonnull %101, ptr noundef %100, ptr noundef %120) #17
  %123 = tail call fastcc ptr @expand_expr(ptr noundef %122, ptr noundef %1, i32 noundef 0, i32 noundef 0) #18
  br label %143

124:                                              ; preds = %99, %113, %110, %106
  %125 = tail call fastcc ptr @get_subtarget(ptr noundef %1) #18
  %126 = icmp eq ptr %125, null
  br i1 %126, label %134, label %127, !prof !836

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
  br i1 %135, label %136, label %138, !prof !837

136:                                              ; preds = %134
  %137 = tail call ptr @gen_reg_rtx(i32 noundef %2) #17
  br label %138

138:                                              ; preds = %132, %133, %136, %134
  %139 = phi ptr [ %137, %136 ], [ %1, %134 ], [ %1, %133 ], [ %1, %132 ]
  %140 = load ptr, ptr %4, align 8, !tbaa !401
  %141 = load ptr, ptr %5, align 8, !tbaa !401
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
define internal fastcc ptr @get_gimple_for_ssa_name(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !838 !PGOFuncName !839 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 1), align 8, !tbaa !840
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4, !prof !842

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !405
  %7 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %2, i32 noundef %6) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !843

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !405
  br label %12

12:                                               ; preds = %1, %4, %9
  %13 = phi ptr [ %11, %9 ], [ null, %4 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @gimple_assign_rhs_to_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_rtx_for_ssa_name(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !844 !PGOFuncName !845 {
  %2 = load ptr, ptr @SA, align 8, !tbaa !846
  %3 = load ptr, ptr %2, align 8, !tbaa !847
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !405
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.partition_def, ptr %3, i64 0, i32 1, i64 %6
  %8 = load i32, ptr %7, align 8, !tbaa !849
  %9 = getelementptr inbounds %struct._var_map, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !851
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !852

12:                                               ; preds = %1
  %13 = sext i32 %8 to i64
  %14 = getelementptr inbounds i32, ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !438
  br label %16

16:                                               ; preds = %12, %1
  %17 = phi i32 [ %15, %12 ], [ %8, %1 ]
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20, !prof !852

19:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 59, ptr noundef nonnull @.str.1) #17
  br label %20

20:                                               ; preds = %16, %19
  %21 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !853
  %22 = sext i32 %17 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !401
  ret ptr %24
}

; Function Attrs: optsize
declare void @layout_decl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emutls_var_address(ptr noundef %0) unnamed_addr #0 !prof !469 !PGOFuncName !854 {
  %2 = tail call ptr @emutls_decl(ptr noundef %0) #17
  %3 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 548), align 16, !tbaa !401
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !401
  %5 = tail call ptr @build_fold_addr_expr_with_type_loc(i32 noundef 0, ptr noundef %2, ptr noundef %4) #17
  %6 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %5) #17
  %7 = tail call ptr @build_function_call_expr(i32 noundef 0, ptr noundef %3, ptr noundef %6) #17
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !405
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
define internal fastcc ptr @const_vector_from_tree(ptr noundef %0) unnamed_addr #0 !prof !469 !PGOFuncName !855 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !405
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
  %21 = load ptr, ptr %20, align 8, !tbaa !401
  br label %80

22:                                               ; preds = %14
  %23 = zext i32 %15 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !405
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %23
  %28 = load i8, ptr %27, align 1, !tbaa !405
  %29 = zext i8 %28 to i32
  %30 = tail call ptr @rtvec_alloc(i32 noundef %26) #17
  %31 = getelementptr inbounds %struct.tree_vector, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !405
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
  %44 = load ptr, ptr %41, align 8, !tbaa !401
  br label %73

45:                                               ; preds = %22, %66
  %46 = phi i64 [ %70, %66 ], [ 0, %22 ]
  %47 = phi ptr [ %71, %66 ], [ %32, %22 ]
  %48 = getelementptr inbounds %struct.tree_list, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !405
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %60 [
    i16 24, label %52
    i16 25, label %56
  ]

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.tree_real_cst, ptr %49, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !405
  %55 = tail call ptr @const_double_from_real_value(ptr noundef byval(%struct.real_value) align 8 %54, i32 noundef %29) #17
  br label %66

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.tree_fixed_cst, ptr %49, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !405
  %59 = tail call ptr @const_fixed_from_fixed_value(ptr noundef byval(%struct.fixed_value) align 8 %58, i32 noundef %29) #17
  br label %66

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.tree_int_cst, ptr %49, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !405
  %63 = getelementptr inbounds %struct.tree_int_cst, ptr %49, i64 0, i32 1, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !405
  %65 = tail call ptr @immed_double_const(i64 noundef %62, i64 noundef %64, i32 noundef %29) #17
  br label %66

66:                                               ; preds = %52, %60, %56
  %67 = phi ptr [ %55, %52 ], [ %65, %60 ], [ %59, %56 ]
  %68 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %46
  store ptr %67, ptr %68, align 8, !tbaa !401
  %69 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 1
  %70 = add nuw i64 %46, 1
  %71 = load ptr, ptr %69, align 8, !tbaa !405
  %72 = icmp eq ptr %71, null
  br i1 %72, label %34, label %45, !llvm.loop !856

73:                                               ; preds = %39, %73
  %74 = phi i64 [ %42, %39 ], [ %76, %73 ]
  %75 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %74
  store ptr %44, ptr %75, align 8, !tbaa !401
  %76 = add nuw nsw i64 %74, 1
  %77 = icmp eq i64 %76, %43
  br i1 %77, label %78, label %73, !llvm.loop !857

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
define internal fastcc ptr @expand_expr_constant(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !858 !PGOFuncName !859 {
  %4 = tail call ptr @output_constant_def(ptr noundef %0, i32 noundef %1) #17
  %5 = icmp eq i32 %2, 4
  br i1 %5, label %8, label %6, !prof !860

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
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !469 !PGOFuncName !861 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !710
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #11 !prof !469 !PGOFuncName !862 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_constructor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !469 !PGOFuncName !863 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !405
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
  %30 = tail call fastcc i32 @all_zeros_p(ptr noundef nonnull %0) #18, !range !783
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
  %44 = tail call i32 @safe_from_p(ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 1) #18, !range !706
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
  %54 = load ptr, ptr %53, align 8, !tbaa !405
  %55 = tail call i32 @host_integerp(ptr noundef %54, i32 noundef 1) #17
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %53, align 8, !tbaa !405
  %59 = tail call i64 @tree_low_cst(ptr noundef %58, i32 noundef 1) #17
  %60 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 7
  %61 = load i32, ptr %60, align 8, !tbaa !405
  %62 = tail call fastcc i64 @move_by_pieces_ninsns(i64 noundef %59, i32 noundef %61) #18
  %63 = tail call zeroext i8 @optimize_insn_for_speed_p() #17
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %57
  %66 = load ptr, ptr @ix86_cost, align 8, !tbaa !401
  %67 = getelementptr inbounds %struct.processor_costs, ptr %66, i64 0, i32 10
  %68 = load i32, ptr %67, align 4, !tbaa !485
  %69 = zext i32 %68 to i64
  br label %70

70:                                               ; preds = %57, %65
  %71 = phi i64 [ %69, %65 ], [ 3, %57 ]
  %72 = icmp ult i64 %62, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = tail call fastcc i32 @mostly_zeros_p(ptr noundef nonnull %0) #18, !range !783
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
  %94 = tail call i32 @safe_from_p(ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 1) #18, !range !706
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
define internal fastcc i32 @is_aligning_offset(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #0 !prof !864 !PGOFuncName !865 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %9, %7 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %48 [
    i16 116, label %7
    i16 113, label %7
    i16 89, label %10
  ], !prof !866

7:                                                ; preds = %3, %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !405
  br label %3, !llvm.loop !867

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !405
  %13 = tail call i32 @host_integerp(ptr noundef %12, i32 noundef 1) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %11, align 8, !tbaa !405
  %17 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !438
  %18 = and i32 %17, 32
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i64 16, i64 32
  %21 = tail call i32 @compare_tree_int(ptr noundef %16, i64 noundef %20) #17
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %48, label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %11, align 8, !tbaa !405
  %25 = tail call i64 @tree_low_cst(ptr noundef %24, i32 noundef 1) #17
  %26 = add nsw i64 %25, 1
  %27 = tail call i32 @exact_log2(i64 noundef %26) #17
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %23, %35
  %30 = phi ptr [ %32, %35 ], [ %4, %23 ]
  %31 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !405
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i16
  switch i16 %34, label %48 [
    i16 116, label %35
    i16 113, label %35
    i16 79, label %36
  ]

35:                                               ; preds = %29, %29
  br label %29, !llvm.loop !868

36:                                               ; preds = %29, %42
  %37 = phi ptr [ %39, %42 ], [ %32, %29 ]
  %38 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !405
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i16
  switch i16 %41, label %48 [
    i16 116, label %42
    i16 113, label %42
    i16 121, label %43
  ]

42:                                               ; preds = %36, %36
  br label %36, !llvm.loop !869

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !405
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
define internal fastcc { ptr, ptr } @tsi_start(ptr noundef %0) unnamed_addr #3 !prof !469 !PGOFuncName !870 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !405
  %4 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %0, 1
  ret { ptr, ptr } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @tsi_end_p(ptr readnone %0) unnamed_addr #11 !prof !469 !PGOFuncName !871 {
  %2 = icmp eq ptr %0, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @tsi_stmt(ptr nocapture readonly %0) unnamed_addr #3 !prof !469 !PGOFuncName !872 {
  %2 = getelementptr inbounds %struct.tree_statement_list_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !873
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @tsi_next(ptr nocapture noundef %0) unnamed_addr #12 !prof !469 !PGOFuncName !875 {
  %2 = load ptr, ptr %0, align 8, !tbaa !876
  %3 = getelementptr inbounds %struct.tree_statement_list_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !878
  store ptr %4, ptr %0, align 8, !tbaa !876
  ret void
}

; Function Attrs: optsize
declare ptr @expand_vec_cond_expr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @do_jump(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr_addr_expr(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !879 !PGOFuncName !880 {
  %5 = load i32, ptr @ptr_mode, align 4, !tbaa !438
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %20, !prof !881

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !405
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 14
  br i1 %12, label %13, label %15, !prof !416

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
  %23 = load ptr, ptr %22, align 8, !tbaa !405
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i16
  switch i16 %25, label %36 [
    i16 10, label %26
    i16 12, label %26
  ], !prof !882

26:                                               ; preds = %20, %20
  %27 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !405
  %29 = load i64, ptr %28, align 8
  %30 = lshr i64 %29, 56
  %31 = trunc i64 %30 to i8
  %32 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !490
  %33 = tail call i32 %32(i8 noundef zeroext %31) #17
  %34 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57), align 8, !tbaa !654
  %35 = tail call i32 %34(i8 noundef zeroext %31) #17
  br label %36

36:                                               ; preds = %20, %26
  %37 = phi i8 [ %31, %26 ], [ 0, %20 ]
  %38 = phi i32 [ %33, %26 ], [ 16, %20 ]
  %39 = phi i32 [ %35, %26 ], [ %5, %20 ]
  %40 = icmp eq i32 %21, %38
  br i1 %40, label %44, label %41, !prof !881

41:                                               ; preds = %36
  %42 = icmp eq i32 %21, %39
  %43 = select i1 %42, i32 %21, i32 %38
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi i32 [ %21, %36 ], [ %43, %41 ]
  %46 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !405
  %48 = tail call fastcc ptr @expand_expr_addr_expr_1(ptr noundef %47, ptr noundef %1, i32 noundef %45, i32 noundef %3, i8 noundef zeroext %37) #18
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %51, 0
  %53 = icmp eq i32 %51, %45
  %54 = or i1 %52, %53
  br i1 %54, label %57, label %55, !prof !883

55:                                               ; preds = %44
  %56 = tail call ptr @convert_memory_address_addr_space(i32 noundef %45, ptr noundef nonnull %48, i8 noundef zeroext %37) #17
  br label %57

57:                                               ; preds = %44, %55
  %58 = phi ptr [ %56, %55 ], [ %48, %44 ]
  ret ptr %58
}

; Function Attrs: optsize
declare void @rest_of_decl_compilation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @expand_decl(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @string_constant(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !prof !469 {
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
  %8 = load ptr, ptr %7, align 8, !tbaa !405
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %119 [
    i16 28, label %11
    i16 32, label %14
    i16 45, label %16
  ]

11:                                               ; preds = %6
  %12 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !401
  store ptr %12, ptr %1, align 8, !tbaa !401
  %13 = load ptr, ptr %7, align 8, !tbaa !405
  br label %119

14:                                               ; preds = %6
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !401
  br label %65

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !405
  %19 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !405
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
  %36 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
  %37 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %36, ptr noundef nonnull %20) #17
  %38 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
  %39 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %38, ptr noundef nonnull %24) #17
  %40 = tail call ptr @size_diffop_loc(i32 noundef 0, ptr noundef %37, ptr noundef %39) #17
  br label %65

41:                                               ; preds = %2, %2
  %42 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !405
  %44 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !405
  %46 = tail call ptr @tree_strip_nop_conversions(ptr noundef %43) #17
  %47 = tail call ptr @tree_strip_nop_conversions(ptr noundef %45) #17
  %48 = load i64, ptr %46, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 121
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !405
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
  %62 = load ptr, ptr %61, align 8, !tbaa !405
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
  %71 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
  %72 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %71, ptr noundef %67) #17
  store ptr %72, ptr %1, align 8, !tbaa !401
  br label %119

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.tree_decl_common, ptr %66, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !405
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
  %85 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !757
  %86 = tail call zeroext i8 %85(ptr noundef nonnull %66) #17
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %119, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.tree_decl_common, ptr %66, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !405
  %91 = icmp eq ptr %90, null
  br i1 %91, label %119, label %92

92:                                               ; preds = %88
  %93 = load i64, ptr %90, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 23
  br i1 %95, label %96, label %119

96:                                               ; preds = %92
  %97 = load ptr, ptr %74, align 8, !tbaa !405
  %98 = getelementptr inbounds %struct.tree_string, ptr %97, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !405
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %119, label %101

101:                                              ; preds = %96
  %102 = zext nneg i32 %99 to i64
  %103 = tail call i32 @compare_tree_int(ptr noundef nonnull %90, i64 noundef %102) #17
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr @sizetype_tab, align 16, !tbaa !401
  %107 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %106, ptr noundef %67) #17
  %108 = load ptr, ptr %89, align 8, !tbaa !405
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
  store ptr %107, ptr %1, align 8, !tbaa !401
  %118 = load ptr, ptr %74, align 8, !tbaa !405
  br label %119

119:                                              ; preds = %56, %60, %65, %117, %77, %73, %84, %101, %96, %92, %88, %114, %111, %2, %6, %31, %27, %16, %70, %11
  %120 = phi ptr [ %13, %11 ], [ %66, %70 ], [ null, %16 ], [ null, %27 ], [ null, %31 ], [ null, %6 ], [ null, %2 ], [ %118, %117 ], [ null, %77 ], [ null, %73 ], [ null, %84 ], [ null, %101 ], [ null, %96 ], [ null, %92 ], [ null, %88 ], [ null, %114 ], [ null, %111 ], [ null, %65 ], [ null, %60 ], [ null, %56 ]
  ret ptr %120
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @try_casesi(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4, ptr nocapture noundef readnone %5, ptr nocapture noundef readnone %6) local_unnamed_addr #11 !prof !884 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @try_tablejump(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !884 {
  %7 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %1) #17
  %8 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %2) #17
  %9 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %0, ptr noundef %7, ptr noundef %8) #17
  %10 = tail call fastcc ptr @expand_normal(ptr noundef %9) #18
  tail call void @do_pending_stack_adjust() #17
  %11 = load i64, ptr %0, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 14
  br i1 %13, label %14, label %17, !prof !885

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
  br i1 %26, label %27, label %29, !prof !885

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
  %37 = load ptr, ptr %36, align 8, !tbaa !405
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 14
  br i1 %40, label %41, label %43, !prof !885

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
  %51 = load ptr, ptr %36, align 8, !tbaa !405
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = lshr i32 %53, 21
  %55 = and i32 %54, 1
  %56 = tail call ptr @convert_modes(i32 noundef %35, i32 noundef %49, ptr noundef %50, i32 noundef %55) #18
  tail call fastcc void @do_tablejump(ptr noundef %10, i32 noundef %24, ptr noundef %56, ptr noundef %4, ptr noundef %5) #18
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_tablejump(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !884 !PGOFuncName !886 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !405
  %8 = load ptr, ptr @cfun, align 8, !tbaa !401
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !887
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 10
  %12 = load i32, ptr %11, align 4, !tbaa !889
  %13 = sext i32 %12 to i64
  %14 = icmp sgt i64 %7, %13
  br i1 %14, label %15, label %17, !prof !891

15:                                               ; preds = %5
  %16 = trunc i64 %7 to i32
  store i32 %16, ptr %11, align 4, !tbaa !889
  br label %17

17:                                               ; preds = %15, %5
  %18 = icmp eq ptr %4, null
  br i1 %18, label %20, label %19, !prof !885

19:                                               ; preds = %17
  tail call void @emit_cmp_and_jump_insns(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 87, ptr noundef null, i32 noundef %1, i32 noundef 1, ptr noundef nonnull %4) #17
  br label %20

20:                                               ; preds = %19, %17
  %21 = icmp eq i32 %1, 16
  br i1 %21, label %24, label %22, !prof !891

22:                                               ; preds = %20
  %23 = tail call ptr @convert_to_mode(i32 noundef 16, ptr noundef %0, i32 noundef 1) #18
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi ptr [ %23, %22 ], [ %0, %20 ]
  %26 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !405
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
  %37 = load i32, ptr @flag_pic, align 4, !tbaa !438
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41, !prof !891

39:                                               ; preds = %24
  %40 = tail call ptr @emit_barrier() #17
  br label %41

41:                                               ; preds = %39, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @vector_mode_valid_p(i32 noundef %0) local_unnamed_addr #0 !prof !469 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !405
  %5 = add i8 %4, -18
  %6 = icmp ult i8 %5, -6
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 59), align 8, !tbaa !892
  %9 = tail call zeroext i8 %8(i32 noundef %0) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %2
  %13 = load i8, ptr %12, align 1, !tbaa !405
  %14 = zext i8 %13 to i32
  %15 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 58), align 8, !tbaa !893
  %16 = tail call zeroext i8 %15(i32 noundef %14) #17
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %7, %1, %11
  %19 = phi i32 [ %17, %11 ], [ 0, %1 ], [ 1, %7 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_personality_function(ptr noundef %0) local_unnamed_addr #0 !prof !469 {
  %2 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !401
  %3 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !401
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !401
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
  %14 = load ptr, ptr %13, align 8, !tbaa !405
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void @make_decl_rtl(ptr noundef nonnull %7) #17
  %17 = load ptr, ptr %13, align 8, !tbaa !405
  br label %18

18:                                               ; preds = %1, %16
  %19 = phi ptr [ %17, %16 ], [ %14, %1 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !405
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 67108864
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 10304, ptr noundef nonnull @.str.1) #17
  %26 = load ptr, ptr %13, align 8, !tbaa !405
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  tail call void @make_decl_rtl(ptr noundef nonnull %7) #17
  %29 = load ptr, ptr %13, align 8, !tbaa !405
  br label %30

30:                                               ; preds = %18, %25, %28
  %31 = phi ptr [ %29, %28 ], [ %26, %25 ], [ %19, %18 ]
  %32 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !405
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr null, ptr %34, align 8, !tbaa !405
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_personality_function(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !894 {
  %2 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !405
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !405
  %6 = tail call i32 @function_needs_eh_personality(ptr noundef %5) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %8, !prof !895

8:                                                ; preds = %1
  %9 = icmp eq ptr %3, null
  %10 = icmp eq i32 %6, 1
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 45), align 8, !tbaa !896
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
  %23 = load ptr, ptr %22, align 8, !tbaa !405
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  tail call void @make_decl_rtl(ptr noundef nonnull %21) #17
  %26 = load ptr, ptr %22, align 8, !tbaa !405
  br label %27

27:                                               ; preds = %20, %25
  %28 = phi ptr [ %26, %25 ], [ %23, %20 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !405
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
define internal fastcc void @store_by_pieces_2(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !469 !PGOFuncName !897 {
  %4 = zext nneg i32 %1 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !405
  %7 = getelementptr inbounds %struct.store_by_pieces_d, ptr %2, i64 0, i32 4
  %8 = zext i8 %6 to i64
  %9 = load i64, ptr %7, align 8, !tbaa !567
  %10 = icmp ult i64 %9, %8
  br i1 %10, label %53, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.store_by_pieces_d, ptr %2, i64 0, i32 8
  %13 = getelementptr inbounds %struct.store_by_pieces_d, ptr %2, i64 0, i32 5
  %14 = getelementptr inbounds %struct.store_by_pieces_d, ptr %2, i64 0, i32 2
  %15 = getelementptr inbounds %struct.store_by_pieces_d, ptr %2, i64 0, i32 1
  %16 = getelementptr inbounds %struct.store_by_pieces_d, ptr %2, i64 0, i32 6
  %17 = getelementptr inbounds %struct.store_by_pieces_d, ptr %2, i64 0, i32 7
  %18 = load i32, ptr %12, align 8, !tbaa !569
  br label %19

19:                                               ; preds = %11, %49
  %20 = phi i32 [ %18, %11 ], [ %44, %49 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, ptr %13, align 8, !tbaa !572
  %24 = sub nsw i64 %23, %8
  store i64 %24, ptr %13, align 8, !tbaa !572
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, ptr %14, align 8, !tbaa !570
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr %2, align 8, !tbaa !568
  br i1 %27, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %15, align 8, !tbaa !571
  %31 = load i64, ptr %13, align 8, !tbaa !572
  %32 = tail call ptr @adjust_automodify_address_1(ptr noundef %28, i32 noundef %1, ptr noundef %30, i64 noundef %31, i32 noundef 1) #17
  br label %36

33:                                               ; preds = %25
  %34 = load i64, ptr %13, align 8, !tbaa !572
  %35 = tail call ptr @adjust_address_1(ptr noundef %28, i32 noundef %1, i64 noundef %34, i32 noundef 1, i32 noundef 1) #17
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi ptr [ %32, %29 ], [ %35, %33 ]
  %38 = load ptr, ptr %16, align 8, !tbaa !564
  %39 = load ptr, ptr %17, align 8, !tbaa !566
  %40 = load i64, ptr %13, align 8, !tbaa !572
  %41 = tail call ptr %38(ptr noundef %39, i64 noundef %40, i32 noundef %1) #17
  %42 = tail call ptr (ptr, ...) %0(ptr noundef %37, ptr noundef %41) #17
  %43 = tail call ptr @emit_insn(ptr noundef %42) #17
  %44 = load i32, ptr %12, align 8, !tbaa !569
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i64, ptr %13, align 8, !tbaa !572
  %48 = add nsw i64 %47, %8
  store i64 %48, ptr %13, align 8, !tbaa !572
  br label %49

49:                                               ; preds = %46, %36
  %50 = load i64, ptr %7, align 8, !tbaa !567
  %51 = sub i64 %50, %8
  store i64 %51, ptr %7, align 8, !tbaa !567
  %52 = icmp ult i64 %51, %8
  br i1 %52, label %53, label %19, !llvm.loop !898

53:                                               ; preds = %49, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal ptr @clear_by_pieces_1(ptr nocapture readnone %0, i64 %1, i32 %2) #13 !prof !469 !PGOFuncName !899 {
  %4 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !401
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @register_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_move_change_mode(i32 noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !469 !PGOFuncName !900 {
  %5 = load i32, ptr %2, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = tail call i32 @push_operand(ptr noundef nonnull %2, i32 noundef %7) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %46, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !405
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
  %44 = load ptr, ptr %43, align 8, !tbaa !405
  %45 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %44, ptr %45, align 8, !tbaa !405
  br label %63

46:                                               ; preds = %4
  %47 = load i32, ptr %2, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 43
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, ptr @reload_in_progress, align 4, !tbaa !438
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
define internal fastcc zeroext i8 @undefined_operand_subword_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !469 !PGOFuncName !901 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 39
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !405
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 255
  %12 = shl nsw i32 %1, 2
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load i32, ptr %13, align 8, !tbaa !405
  %15 = add i32 %14, %12
  %16 = zext nneg i32 %11 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !405
  %19 = zext i8 %18 to i32
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %6
  %22 = load i32, ptr @word_mode, align 4, !tbaa !438
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !405
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
define internal fastcc i64 @target_align(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !469 !PGOFuncName !902 {
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
  %10 = load ptr, ptr %9, align 8, !tbaa !405
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !405
  %13 = zext i32 %12 to i64
  %14 = load ptr, ptr %8, align 8, !tbaa !405
  %15 = tail call i64 @llvm.umin.i64(i64 %3, i64 %13)
  br label %2

16:                                               ; preds = %2, %39, %29, %19
  %17 = phi i64 [ %38, %29 ], [ %28, %19 ], [ %44, %39 ], [ 1, %2 ]
  %18 = tail call i64 @llvm.umin.i64(i64 %3, i64 %17)
  ret i64 %18

19:                                               ; preds = %2, %2
  %20 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !405
  %22 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !405
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !405
  %27 = tail call fastcc i64 @target_align(ptr noundef %26) #18, !range !638
  %28 = tail call i64 @llvm.umin.i64(i64 %27, i64 %24)
  br label %16

29:                                               ; preds = %2, %2, %2, %2
  %30 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !405
  %32 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !405
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !405
  %37 = tail call fastcc i64 @target_align(ptr noundef %36) #18, !range !638
  %38 = tail call i64 @llvm.umax.i64(i64 %37, i64 %34)
  br label %16

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !405
  %42 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !405
  %44 = zext i32 %43 to i64
  br label %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !903 !PGOFuncName !904 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #18, !range !818
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #18, !range !783
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !905

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
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !903 !PGOFuncName !906 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !783
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !907

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
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !908 !PGOFuncName !909 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !820 !PGOFuncName !910 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !591
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !911

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !401
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !820 !PGOFuncName !912 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !783
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !820 !PGOFuncName !913 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !536
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !911

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !820 !PGOFuncName !914 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !783
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #18
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #11 !prof !820 !PGOFuncName !915 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !438
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !469 !PGOFuncName !916 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !405
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
define internal fastcc i32 @all_zeros_p(ptr noundef %0) unnamed_addr #0 !prof !469 !PGOFuncName !917 {
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
  %9 = call zeroext i8 @categorize_ctor_elements(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !591
  %10 = load i64, ptr %2, align 8, !tbaa !536
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
define internal fastcc i32 @mostly_zeros_p(ptr noundef %0) unnamed_addr #0 !prof !469 !PGOFuncName !918 {
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
  %9 = call zeroext i8 @categorize_ctor_elements(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #18, !range !591
  %10 = load i8, ptr %4, align 1, !tbaa !405
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !405
  %15 = tail call i64 @count_type_elements(ptr noundef %14, i8 noundef zeroext 0) #18
  %16 = load i64, ptr %2, align 8, !tbaa !536
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
define internal fastcc void @store_constructor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 !prof !469 !PGOFuncName !919 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !405
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
  %21 = load ptr, ptr %20, align 8, !tbaa !405
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
  %39 = load i8, ptr %38, align 1, !tbaa !405
  %40 = icmp ult i8 %39, 5
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %37
  %43 = load ptr, ptr %42, align 8, !tbaa !401
  %44 = tail call ptr @emit_move_insn(ptr noundef nonnull %1, ptr noundef %43) #18
  br label %79

45:                                               ; preds = %34, %30, %26
  %46 = icmp sgt i64 %3, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !405
  %50 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %49) #18
  %51 = tail call i32 @fields_length(ptr noundef nonnull %7) #17
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = tail call fastcc i32 @mostly_zeros_p(ptr noundef nonnull %0) #18, !range !783
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
  %67 = load i8, ptr %66, align 1, !tbaa !405
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
  %83 = load ptr, ptr %82, align 8, !tbaa !405
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
  %94 = load ptr, ptr %93, align 8, !tbaa !683
  %95 = load ptr, ptr %92, align 8, !tbaa !685
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
  %103 = load ptr, ptr %102, align 8, !tbaa !405
  %104 = tail call i32 @host_integerp(ptr noundef %103, i32 noundef 1) #17
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load ptr, ptr %102, align 8, !tbaa !405
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
  %119 = load ptr, ptr %118, align 8, !tbaa !405
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
  %130 = load ptr, ptr %129, align 8, !tbaa !405
  %131 = tail call i64 @tree_low_cst(ptr noundef %130, i32 noundef 0) #17
  %132 = icmp eq ptr %119, null
  br i1 %132, label %168, label %133

133:                                              ; preds = %128
  %134 = load i64, ptr %119, align 8
  %135 = and i64 %134, 131072
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load ptr, ptr %6, align 8, !tbaa !405
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
  %149 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !490
  %150 = load ptr, ptr %87, align 8, !tbaa !405
  %151 = icmp eq ptr %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.mem_attrs, ptr %150, i64 0, i32 5
  %154 = load i8, ptr %153, align 8, !tbaa !457
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
  %185 = load ptr, ptr %184, align 8, !tbaa !405
  %186 = tail call i32 @get_alias_set(ptr noundef %185) #17
  tail call fastcc void @store_constructor_field(ptr noundef nonnull %183, i64 noundef %110, i64 noundef %169, i32 noundef %117, ptr noundef %94, ptr noundef nonnull %7, i32 noundef %80, i32 noundef %186) #18
  br label %187

187:                                              ; preds = %98, %88, %182
  %188 = add nuw nsw i64 %90, 1
  %189 = load ptr, ptr %82, align 8, !tbaa !405
  %190 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %189) #18
  %191 = zext i32 %190 to i64
  %192 = icmp ult i64 %188, %191
  br i1 %192, label %88, label %794, !llvm.loop !920

193:                                              ; preds = %4
  %194 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !405
  %196 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !405
  %198 = getelementptr inbounds %struct.tree_type, ptr %197, i64 0, i32 13
  %199 = load ptr, ptr %198, align 8, !tbaa !405
  %200 = icmp eq ptr %199, null
  br i1 %200, label %217, label %201

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.tree_type, ptr %197, i64 0, i32 14
  %203 = load ptr, ptr %202, align 8, !tbaa !405
  %204 = icmp eq ptr %203, null
  br i1 %204, label %217, label %205

205:                                              ; preds = %201
  %206 = tail call i32 @host_integerp(ptr noundef nonnull %199, i32 noundef 0) #17
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %217, label %208

208:                                              ; preds = %205
  %209 = load ptr, ptr %202, align 8, !tbaa !405
  %210 = tail call i32 @host_integerp(ptr noundef %209, i32 noundef 0) #17
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %208
  %213 = load ptr, ptr %198, align 8, !tbaa !405
  %214 = tail call i64 @tree_low_cst(ptr noundef %213, i32 noundef 0) #17
  %215 = load ptr, ptr %202, align 8, !tbaa !405
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
  %232 = load ptr, ptr %231, align 8, !tbaa !405
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
  %244 = load ptr, ptr %243, align 8, !tbaa !683
  %245 = load ptr, ptr %242, align 8, !tbaa !685
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
  %254 = load ptr, ptr %253, align 8, !tbaa !405
  %255 = getelementptr inbounds %struct.tree_exp, ptr %245, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !405
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
  %270 = tail call fastcc i32 @mostly_zeros_p(ptr noundef %244) #18, !range !783
  %271 = icmp eq i32 %270, 0
  %272 = select i1 %271, i64 0, i64 %268
  %273 = add nsw i64 %272, %240
  %274 = add nuw nsw i64 %238, 1
  %275 = load ptr, ptr %231, align 8, !tbaa !405
  %276 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %275) #18
  %277 = zext i32 %276 to i64
  %278 = icmp ult i64 %274, %277
  br i1 %278, label %235, label %279, !llvm.loop !921

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
  %304 = load ptr, ptr %303, align 8, !tbaa !401
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
  %319 = load ptr, ptr %318, align 8, !tbaa !405
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
  %335 = load ptr, ptr %334, align 8, !tbaa !683
  %336 = load ptr, ptr %333, align 8, !tbaa !685
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
  %354 = load ptr, ptr %324, align 8, !tbaa !405
  %355 = tail call i32 @host_integerp(ptr noundef %354, i32 noundef 1) #17
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %366, label %357

357:                                              ; preds = %353
  %358 = load ptr, ptr %324, align 8, !tbaa !405
  %359 = tail call i64 @tree_low_cst(ptr noundef %358, i32 noundef 1) #17
  br label %366

360:                                              ; preds = %350
  %361 = zext i32 %351 to i64
  %362 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %361
  %363 = load i8, ptr %362, align 1, !tbaa !405
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
  %375 = load ptr, ptr %374, align 8, !tbaa !405
  %376 = getelementptr inbounds %struct.tree_exp, ptr %336, i64 1
  %377 = load ptr, ptr %376, align 8, !tbaa !405
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
  %395 = load ptr, ptr %324, align 8, !tbaa !405
  %396 = tail call i32 @host_integerp(ptr noundef %395, i32 noundef 1) #17
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %434, label %398

398:                                              ; preds = %394
  %399 = load ptr, ptr %324, align 8, !tbaa !405
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
  %411 = load ptr, ptr %324, align 8, !tbaa !405
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
  br i1 %433, label %408, label %540, !llvm.loop !922

434:                                              ; preds = %394, %398, %381, %378, %373
  %435 = tail call ptr @gen_label_rtx() #17
  %436 = tail call ptr @gen_label_rtx() #17
  %437 = tail call fastcc ptr @expand_normal(ptr noundef %377) #18
  %438 = load i64, ptr %0, align 8
  %439 = and i64 %438, 65535
  %440 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !438
  %442 = add i32 %441, -4
  %443 = icmp ult i32 %442, 7
  br i1 %443, label %444, label %446

444:                                              ; preds = %434
  %445 = load i32, ptr %318, align 8, !tbaa !405
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
  %453 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !401
  %454 = getelementptr inbounds %struct.tree_common, ptr %448, i64 0, i32 2
  %455 = load ptr, ptr %454, align 8, !tbaa !405
  %456 = load ptr, ptr %198, align 8, !tbaa !405
  %457 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %455, ptr noundef %448, ptr noundef %456) #17
  %458 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %453, ptr noundef %457) #17
  %459 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !401
  %460 = load ptr, ptr %326, align 8, !tbaa !405
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
  %475 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !401
  %476 = tail call ptr @build2_stat(i32 noundef 97, ptr noundef %475, ptr noundef nonnull %448, ptr noundef %377) #17
  tail call void @jumpif(ptr noundef %476, ptr noundef %436, i32 noundef -1) #17
  %477 = load ptr, ptr %454, align 8, !tbaa !405
  %478 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !401
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
  %485 = load ptr, ptr %324, align 8, !tbaa !405
  %486 = tail call i32 @host_integerp(ptr noundef %485, i32 noundef 1) #17
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %492, label %517

488:                                              ; preds = %481
  %489 = load ptr, ptr %324, align 8, !tbaa !405
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
  %497 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !401
  %498 = getelementptr inbounds %struct.tree_common, ptr %495, i64 0, i32 2
  %499 = load ptr, ptr %498, align 8, !tbaa !405
  %500 = load ptr, ptr %198, align 8, !tbaa !405
  %501 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %499, ptr noundef %495, ptr noundef %500) #17
  %502 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %497, ptr noundef %501) #17
  br label %503

503:                                              ; preds = %496, %494
  %504 = phi ptr [ %502, %496 ], [ %495, %494 ]
  %505 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !401
  %506 = load ptr, ptr %326, align 8, !tbaa !405
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
  %519 = load ptr, ptr %324, align 8, !tbaa !405
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
  %543 = load ptr, ptr %318, align 8, !tbaa !405
  %544 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %543) #18
  %545 = zext i32 %544 to i64
  %546 = icmp ult i64 %542, %545
  br i1 %546, label %328, label %794, !llvm.loop !923

547:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %548 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %549 = load ptr, ptr %548, align 8, !tbaa !405
  %550 = getelementptr inbounds %struct.tree_type, ptr %549, i64 0, i32 2
  %551 = load ptr, ptr %550, align 8, !tbaa !405
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
  %582 = load i8, ptr %581, align 1, !tbaa !405
  %583 = add i8 %582, -12
  %584 = icmp ult i8 %583, 6
  br i1 %584, label %585, label %621

585:                                              ; preds = %577
  %586 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 137, i32 4, i64 %580
  %587 = load i32, ptr %586, align 4, !tbaa !442
  %588 = icmp eq i32 %587, 2956
  br i1 %588, label %621, label %589

589:                                              ; preds = %585
  %590 = tail call ptr @rtvec_alloc(i32 noundef %573) #17
  %591 = icmp ugt i32 %570, 31
  br i1 %591, label %621, label %592

592:                                              ; preds = %589
  %593 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %580
  %594 = load i8, ptr %593, align 1, !tbaa !405
  %595 = zext i8 %594 to i64
  %596 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %595
  %597 = load ptr, ptr %596, align 8, !tbaa !401
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
  store ptr %597, ptr %611, align 8, !tbaa !401
  br label %612

612:                                              ; preds = %610, %605
  %613 = extractelement <2 x i1> %608, i64 1
  br i1 %613, label %614, label %617

614:                                              ; preds = %612
  %615 = or disjoint i64 %606, 1
  %616 = getelementptr inbounds %struct.rtvec_def, ptr %590, i64 0, i32 1, i64 %615
  store ptr %597, ptr %616, align 8, !tbaa !401
  br label %617

617:                                              ; preds = %614, %612
  %618 = add i64 %606, 2
  %619 = add <2 x i64> %607, <i64 2, i64 2>
  %620 = icmp eq i64 %618, %601
  br i1 %620, label %621, label %605, !llvm.loop !924

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
  %637 = load ptr, ptr %636, align 8, !tbaa !405
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
  %648 = load ptr, ptr %647, align 8, !tbaa !683
  %649 = getelementptr inbounds %struct.tree_common, ptr %648, i64 0, i32 2
  %650 = load ptr, ptr %649, align 8, !tbaa !405
  %651 = getelementptr inbounds %struct.tree_type, ptr %650, i64 0, i32 2
  %652 = load ptr, ptr %651, align 8, !tbaa !405
  %653 = load ptr, ptr %550, align 8, !tbaa !405
  %654 = tail call ptr @int_const_binop(i32 noundef 67, ptr noundef %652, ptr noundef %653, i32 noundef 0) #17
  %655 = tail call i64 @tree_low_cst(ptr noundef %654, i32 noundef 1) #17
  %656 = shl i64 %655, 32
  %657 = ashr exact i64 %656, 32
  %658 = add i64 %657, %643
  %659 = tail call fastcc i32 @mostly_zeros_p(ptr noundef %648) #18, !range !783
  %660 = icmp eq i32 %659, 0
  %661 = select i1 %660, i64 0, i64 %657
  %662 = add i64 %661, %642
  %663 = add nuw nsw i64 %644, 1
  %664 = load ptr, ptr %636, align 8, !tbaa !405
  %665 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %664) #18
  %666 = zext i32 %665 to i64
  %667 = icmp ult i64 %663, %666
  br i1 %667, label %640, label %668, !llvm.loop !927

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
  %693 = load ptr, ptr %692, align 8, !tbaa !401
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
  %708 = load ptr, ptr %707, align 8, !tbaa !401
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
  %719 = load ptr, ptr %718, align 8, !tbaa !405
  %720 = icmp eq ptr %719, null
  br i1 %720, label %726, label %721

721:                                              ; preds = %717
  %722 = getelementptr inbounds %struct.mem_attrs, ptr %719, i64 0, i32 3
  %723 = load i32, ptr %722, align 8, !tbaa !661
  br label %726

724:                                              ; preds = %710
  %725 = tail call i32 @get_alias_set(ptr noundef nonnull %549) #17
  br label %726

726:                                              ; preds = %721, %717, %724
  %727 = phi i32 [ %725, %724 ], [ %723, %721 ], [ 0, %717 ]
  %728 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %729 = load ptr, ptr %728, align 8, !tbaa !405
  %730 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %729, i32 noundef 0, ptr noundef nonnull %5) #18, !range !706
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %781, label %732

732:                                              ; preds = %726
  %733 = shl i64 %552, 32
  %734 = ashr exact i64 %733, 32
  br label %735

735:                                              ; preds = %732, %773
  %736 = phi i32 [ 0, %732 ], [ %777, %773 ]
  %737 = phi i32 [ 0, %732 ], [ %774, %773 ]
  %738 = load ptr, ptr %5, align 8, !tbaa !401
  %739 = getelementptr inbounds %struct.constructor_elt_d, ptr %738, i64 0, i32 1
  %740 = load ptr, ptr %739, align 8, !tbaa !683
  %741 = getelementptr inbounds %struct.tree_common, ptr %740, i64 0, i32 2
  %742 = load ptr, ptr %741, align 8, !tbaa !405
  %743 = getelementptr inbounds %struct.tree_type, ptr %742, i64 0, i32 2
  %744 = load ptr, ptr %743, align 8, !tbaa !405
  %745 = tail call i64 @tree_low_cst(ptr noundef %744, i32 noundef 1) #17
  br i1 %711, label %746, label %749

746:                                              ; preds = %735
  %747 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %740) #17
  %748 = icmp eq i8 %747, 0
  br i1 %748, label %749, label %773

749:                                              ; preds = %746, %735
  %750 = load ptr, ptr %738, align 8, !tbaa !685
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
  %758 = load ptr, ptr %741, align 8, !tbaa !405
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
  store ptr %765, ptr %766, align 8, !tbaa !401
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
  %778 = load ptr, ptr %728, align 8, !tbaa !405
  %779 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %778, i32 noundef %774, ptr noundef nonnull %5) #18, !range !706
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %735, !llvm.loop !928

781:                                              ; preds = %773, %726
  br i1 %713, label %782, label %792

782:                                              ; preds = %781
  %783 = sext i32 %622 to i64
  %784 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %783, i32 2
  %785 = load ptr, ptr %784, align 8, !tbaa !519
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
define internal fastcc void @store_constructor_field(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !prof !469 !PGOFuncName !929 {
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
  %47 = load ptr, ptr %46, align 8, !tbaa !405
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.mem_attrs, ptr %47, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !661
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
define internal fastcc ptr @expand_expr_addr_expr_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !930 !PGOFuncName !931 {
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
  %15 = load i32, ptr %14, align 4, !tbaa !438
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21, !prof !932

17:                                               ; preds = %5
  %18 = tail call fastcc ptr @expand_expr_constant(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %3) #18
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !405
  br label %185

21:                                               ; preds = %5
  %22 = trunc i64 %12 to i16
  switch i16 %22, label %69 [
    i16 47, label %23
    i16 33, label %27
    i16 43, label %33
    i16 44, label %36
    i16 32, label %58
  ], !prof !933

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !405
  %26 = tail call fastcc ptr @expand_expr(ptr noundef %25, ptr noundef %1, i32 noundef %2, i32 noundef %3) #18
  br label %185

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !405
  %30 = tail call fastcc ptr @expand_expr_constant(ptr noundef %29, i32 noundef 0, i32 noundef %3) #18
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !405
  br label %185

33:                                               ; preds = %21
  store ptr null, ptr %6, align 8, !tbaa !401
  store i64 0, ptr %8, align 8, !tbaa !536
  %34 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !405
  br label %113

36:                                               ; preds = %21
  store ptr null, ptr %6, align 8, !tbaa !401
  %37 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !405
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
  %53 = load i8, ptr %52, align 1, !tbaa !405
  %54 = zext i8 %53 to i64
  %55 = shl nuw nsw i64 %54, 3
  store i64 %55, ptr %8, align 8, !tbaa !536
  %56 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !405
  br label %113

58:                                               ; preds = %21
  %59 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !736
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %69, !prof !860

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
  br i1 %71, label %77, label %72, !prof !934

72:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6889, ptr noundef nonnull @.str.1) #17
  %73 = load i64, ptr %0, align 8
  %74 = and i64 %73, 65535
  %75 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !438
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
  br i1 %90, label %92, label %91, !prof !935

91:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6901, ptr noundef nonnull @.str.1) #17
  br label %92

92:                                               ; preds = %84, %91
  %93 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !405
  %95 = load i64, ptr %0, align 8
  %96 = and i64 %95, 65535
  %97 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !438
  %99 = icmp ne i32 %98, 3
  %100 = and i64 %95, 16777216
  %101 = icmp eq i64 %100, 0
  %102 = or i1 %99, %101
  br i1 %102, label %106, label %103, !prof !936

103:                                              ; preds = %92
  tail call void @assemble_external(ptr noundef nonnull %0) #17
  %104 = load i64, ptr %0, align 8
  %105 = or i64 %104, 16777216
  store i64 %105, ptr %0, align 8
  br label %106

106:                                              ; preds = %103, %92
  %107 = add i32 %3, -5
  %108 = icmp ult i32 %107, -2
  br i1 %108, label %109, label %185, !prof !937

109:                                              ; preds = %106
  %110 = tail call ptr @force_operand(ptr noundef %94, ptr noundef %1) #18
  br label %185

111:                                              ; preds = %82
  %112 = call ptr @get_inner_reference(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %9, i8 zeroext poison) #18
  br label %113

113:                                              ; preds = %111, %49, %33
  %114 = phi ptr [ %112, %111 ], [ %57, %49 ], [ %35, %33 ]
  %115 = icmp eq ptr %114, %0
  br i1 %115, label %116, label %117, !prof !416

116:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6928, ptr noundef nonnull @.str.1) #17
  br label %117

117:                                              ; preds = %113, %116
  %118 = load ptr, ptr %6, align 8, !tbaa !401
  %119 = icmp ne ptr %118, null
  %120 = load i64, ptr %8, align 8
  %121 = icmp ne i64 %120, 0
  %122 = select i1 %119, i1 true, i1 %121
  %123 = select i1 %122, ptr null, ptr %1, !prof !938
  %124 = load i64, ptr %114, align 8
  %125 = and i64 %124, 65535
  %126 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !438
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %151, !prof !939

129:                                              ; preds = %117
  %130 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !405
  %132 = getelementptr inbounds %struct.tree_type, ptr %131, i64 0, i32 7
  %133 = load i32, ptr %132, align 8, !tbaa !405
  %134 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !405
  %136 = getelementptr inbounds %struct.tree_type, ptr %135, i64 0, i32 7
  %137 = load i32, ptr %136, align 8, !tbaa !405
  %138 = icmp ult i32 %133, %137
  br i1 %138, label %139, label %151, !prof !860

139:                                              ; preds = %129
  %140 = tail call ptr @copy_node_stat(ptr noundef nonnull %114) #17
  %141 = getelementptr inbounds %struct.tree_common, ptr %140, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !405
  %143 = tail call ptr @copy_node_stat(ptr noundef %142) #17
  store ptr %143, ptr %141, align 8, !tbaa !405
  %144 = load ptr, ptr %134, align 8, !tbaa !405
  %145 = getelementptr inbounds %struct.tree_type, ptr %144, i64 0, i32 7
  %146 = load i32, ptr %145, align 8, !tbaa !405
  %147 = getelementptr inbounds %struct.tree_type, ptr %143, i64 0, i32 7
  store i32 %146, ptr %147, align 8, !tbaa !405
  %148 = load ptr, ptr %141, align 8, !tbaa !405
  %149 = load i64, ptr %148, align 8
  %150 = or i64 %149, 4398046511104
  store i64 %150, ptr %148, align 8
  br label %151

151:                                              ; preds = %139, %129, %117
  %152 = phi ptr [ %140, %139 ], [ %114, %129 ], [ %114, %117 ]
  %153 = tail call fastcc ptr @expand_expr_addr_expr_1(ptr noundef nonnull %152, ptr noundef %123, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) #18
  %154 = icmp eq ptr %118, null
  br i1 %154, label %172, label %155, !prof !881

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
  br i1 %174, label %185, label %175, !prof !881

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!399}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398}
!35 = !{ptr @init_expr_target, ptr @gen_rtx_MEM, i64 3}
!36 = !{ptr @init_expr_target, ptr @gen_rtx_REG, i64 1}
!37 = !{ptr @init_expr_target, ptr @rtx_alloc_stat, i64 1}
!38 = !{ptr @init_expr_target, ptr @gen_rtx_fmt_ee_stat, i64 1}
!39 = !{ptr @init_expr_target, ptr @ix86_hard_regno_mode_ok, i64 2203}
!40 = !{ptr @init_expr_target, ptr @rhs_regno, i64 372}
!41 = !{ptr @init_expr_target, ptr @df_ref_change_reg_with_loc, i64 372}
!42 = !{ptr @init_expr_target, ptr @recog, i64 1488}
!43 = !{ptr @init_expr_target, ptr @gen_rtx_fmt_i00_stat, i64 1}
!44 = !{ptr @init_expr_target, ptr @can_extend_p, i64 3}
!45 = !{ptr @convert_move, ptr @fancy_abort, i64 31}
!46 = !{ptr @convert_move, ptr @emit_move_insn, i64 41}
!47 = !{ptr @convert_move, ptr @simplify_gen_subreg, i64 12}
!48 = !{ptr @convert_move, ptr @emit_unop_insn, i64 1367}
!49 = !{ptr @convert_move, ptr @convert_optab_libfunc, i64 22}
!50 = !{ptr @convert_move, ptr @start_sequence, i64 22}
!51 = !{ptr @convert_move, ptr @emit_library_call_value, i64 22}
!52 = !{ptr @convert_move, ptr @get_insns, i64 22}
!53 = !{ptr @convert_move, ptr @end_sequence, i64 22}
!54 = !{ptr @convert_move, ptr @gen_rtx_fmt_e_stat, i64 22}
!55 = !{ptr @convert_move, ptr @emit_libcall_block, i64 22}
!56 = !{ptr @convert_move, ptr @smallest_mode_for_size, i64 2}
!57 = !{ptr @convert_move, ptr @gen_reg_rtx, i64 1}
!58 = !{ptr @convert_move, ptr @expand_fixed_convert, i64 4}
!59 = !{ptr @convert_move, ptr @can_extend_p, i64 1375}
!60 = !{ptr @convert_move, ptr @operand_subword, i64 6}
!61 = !{ptr @convert_move, ptr @build_int_cst, i64 1}
!62 = !{ptr @convert_move, ptr @force_reg, i64 1}
!63 = !{ptr @convert_move, ptr @expand_shift, i64 2}
!64 = !{ptr @emit_move_insn, ptr @fancy_abort, i64 3}
!65 = !{ptr @emit_move_insn, ptr @compress_float_constant, i64 2}
!66 = !{ptr @emit_move_insn, ptr @legitimate_constant_p, i64 98865}
!67 = !{ptr @emit_move_insn, ptr @force_const_mem, i64 1}
!68 = !{ptr @emit_move_insn, ptr @use_anchored_address, i64 1}
!69 = !{ptr @emit_move_insn, ptr @memory_address_addr_space_p, i64 128817}
!70 = !{ptr @emit_move_insn, ptr @push_operand, i64 1}
!71 = !{ptr @emit_move_insn, ptr @validize_mem, i64 1}
!72 = !{ptr @emit_move_insn, ptr @emit_move_insn_1, i64 268159}
!73 = !{ptr @emit_move_insn, ptr @single_set_2, i64 1}
!74 = !{ptr @emit_move_insn, ptr @rtx_equal_p, i64 86170}
!75 = !{ptr @emit_move_insn, ptr @set_unique_reg_note, i64 1}
!76 = !{ptr @convert_modes, ptr @rhs_regno, i64 2239}
!77 = !{ptr @convert_modes, ptr @ix86_hard_regno_mode_ok, i64 1}
!78 = !{ptr @convert_modes, ptr @gen_int_mode, i64 1}
!79 = !{ptr @convert_modes, ptr @gen_reg_rtx, i64 4}
!80 = !{ptr @convert_modes, ptr @convert_move, i64 4}
!81 = !{ptr @expand_normal, ptr @expand_expr_real, i64 86}
!82 = !{ptr @emit_move_insn_1, ptr @fancy_abort, i64 1}
!83 = !{ptr @emit_move_insn_1, ptr @emit_insn, i64 268274}
!84 = !{ptr @emit_move_insn_1, ptr @emit_move_via_integer, i64 1}
!85 = !{ptr @emit_push_insn, ptr @adjust_address_1, i64 1}
!86 = !{ptr @emit_push_insn, ptr @gen_rtx_MEM, i64 81667}
!87 = !{ptr @emit_push_insn, ptr @set_mem_align, i64 81667}
!88 = !{ptr @emit_push_insn, ptr @emit_block_move, i64 1}
!89 = !{ptr @emit_push_insn, ptr @operand_subword_force, i64 16}
!90 = !{ptr @emit_push_insn, ptr @gen_rtx_CONST_INT, i64 16}
!91 = !{ptr @emit_push_insn, ptr @emit_push_insn, i64 16}
!92 = !{ptr @emit_push_insn, ptr @plus_constant, i64 81665}
!93 = !{ptr @emit_push_insn, ptr @gen_rtx_fmt_ee_stat, i64 1}
!94 = !{ptr @emit_push_insn, ptr @memory_address_addr_space, i64 81666}
!95 = !{ptr @emit_push_insn, ptr @emit_move_insn, i64 81666}
!96 = !{ptr @emit_push_insn, ptr @anti_adjust_stack, i64 1}
!97 = !{ptr @expand_assignment, ptr @expand_normal, i64 44}
!98 = !{ptr @expand_assignment, ptr @operand_equal_p, i64 79671}
!99 = !{ptr @expand_assignment, ptr @handled_component_p, i64 79670}
!100 = !{ptr @expand_assignment, ptr @push_temp_slots, i64 79669}
!101 = !{ptr @expand_assignment, ptr @get_inner_reference, i64 42}
!102 = !{ptr @expand_assignment, ptr @expand_expr, i64 79631}
!103 = !{ptr @expand_assignment, ptr @highest_pow2_factor_for_target, i64 1}
!104 = !{ptr @expand_assignment, ptr @offset_address, i64 1}
!105 = !{ptr @expand_assignment, ptr @store_expr, i64 79626}
!106 = !{ptr @expand_assignment, ptr @shallow_copy_rtx_stat, i64 40}
!107 = !{ptr @expand_assignment, ptr @set_mem_attributes_minus_bitpos, i64 40}
!108 = !{ptr @expand_assignment, ptr @component_uses_parent_alias_set, i64 40}
!109 = !{ptr @expand_assignment, ptr @optimize_bitfield_assignment_op, i64 41}
!110 = !{ptr @expand_assignment, ptr @get_alias_set, i64 40}
!111 = !{ptr @expand_assignment, ptr @store_field, i64 40}
!112 = !{ptr @expand_assignment, ptr @preserve_temp_slots, i64 79628}
!113 = !{ptr @expand_assignment, ptr @free_temp_slots, i64 79669}
!114 = !{ptr @expand_assignment, ptr @pop_temp_slots, i64 79669}
!115 = !{ptr @expand_assignment, ptr @force_not_mem, i64 1}
!116 = !{ptr @expand_assignment, ptr @memory_address_addr_space, i64 1}
!117 = !{ptr @expand_assignment, ptr @gen_rtx_MEM, i64 1}
!118 = !{ptr @expand_assignment, ptr @set_mem_attributes, i64 1}
!119 = !{ptr @expand_assignment, ptr @set_mem_addr_space, i64 1}
!120 = !{ptr @expand_assignment, ptr @emit_insn, i64 1}
!121 = !{ptr @expand_assignment, ptr @aggregate_value_p, i64 66679}
!122 = !{ptr @expand_assignment, ptr @make_decl_rtl, i64 1}
!123 = !{ptr @get_inner_reference, ptr @vector_type_mode, i64 1}
!124 = !{ptr @get_inner_reference, ptr @host_integerp, i64 328735}
!125 = !{ptr @get_inner_reference, ptr @tree_low_cst, i64 104584}
!126 = !{ptr @get_inner_reference, ptr @size_binop_loc, i64 389384}
!127 = !{ptr @get_inner_reference, ptr @component_ref_field_offset, i64 148069}
!128 = !{ptr @get_inner_reference, ptr @array_ref_low_bound, i64 46623}
!129 = !{ptr @get_inner_reference, ptr @array_ref_element_size, i64 46623}
!130 = !{ptr @get_inner_reference, ptr @integer_zerop, i64 46623}
!131 = !{ptr @get_inner_reference, ptr @fold_build2_stat_loc, i64 1}
!132 = !{ptr @get_inner_reference, ptr @fold_convert_loc, i64 46623}
!133 = !{ptr @get_inner_reference, ptr @size_int_kind, i64 1}
!134 = !{ptr @get_inner_reference, ptr @tree_to_double_int, i64 448300}
!135 = !{ptr @get_inner_reference, ptr @double_int_mul, i64 224150}
!136 = !{ptr @get_inner_reference, ptr @double_int_add, i64 224150}
!137 = !{ptr @get_inner_reference, ptr @double_int_fits_in_shwi_p, i64 224150}
!138 = !{ptr @get_inner_reference, ptr @double_int_to_shwi, i64 224149}
!139 = !{ptr @expand_expr, ptr @expand_expr_real, i64 165029}
!140 = !{ptr @store_expr, ptr @fancy_abort, i64 1}
!141 = !{ptr @store_expr, ptr @expand_expr, i64 2}
!142 = !{ptr @store_expr, ptr @store_expr, i64 1}
!143 = !{ptr @store_expr, ptr @expand_expr_real, i64 79669}
!144 = !{ptr @store_expr, ptr @rtx_equal_p, i64 92524}
!145 = !{ptr @store_expr, ptr @side_effects_p, i64 1}
!146 = !{ptr @store_expr, ptr @expr_size, i64 12987}
!147 = !{ptr @store_expr, ptr @int_size_in_bytes, i64 1}
!148 = !{ptr @store_expr, ptr @emit_group_load, i64 1}
!149 = !{ptr @store_expr, ptr @emit_storent_insn, i64 1}
!150 = !{ptr @store_expr, ptr @force_operand, i64 12983}
!151 = !{ptr @store_expr, ptr @emit_move_insn, i64 12982}
!152 = !{ptr @store_field, ptr @expand_expr, i64 1}
!153 = !{ptr @store_field, ptr @assign_temp, i64 1}
!154 = !{ptr @store_field, ptr @adjust_address_1, i64 34}
!155 = !{ptr @store_field, ptr @store_field, i64 1}
!156 = !{ptr @store_field, ptr @emit_move_insn, i64 1}
!157 = !{ptr @store_field, ptr @fancy_abort, i64 2}
!158 = !{ptr @store_field, ptr @store_expr, i64 33}
!159 = !{ptr @store_field, ptr @get_mode_alignment, i64 65}
!160 = !{ptr @store_field, ptr @compare_tree_int, i64 31}
!161 = !{ptr @store_field, ptr @get_def_for_expr, i64 4}
!162 = !{ptr @store_field, ptr @vector_type_mode, i64 3}
!163 = !{ptr @store_field, ptr @expand_normal, i64 4}
!164 = !{ptr @store_field, ptr @convert_modes, i64 1}
!165 = !{ptr @store_field, ptr @gen_rtx_CONST_INT, i64 1}
!166 = !{ptr @store_field, ptr @emit_block_move, i64 1}
!167 = !{ptr @store_field, ptr @store_bit_field, i64 3}
!168 = !{ptr @store_field, ptr @copy_rtx, i64 1}
!169 = !{ptr @store_field, ptr @set_mem_alias_set, i64 1}
!170 = !{ptr @expand_expr_real, ptr @get_curr_insn_source_location, i64 119342}
!171 = !{ptr @expand_expr_real, ptr @get_curr_insn_block, i64 119342}
!172 = !{ptr @expand_expr_real, ptr @set_curr_insn_source_location, i64 238684}
!173 = !{ptr @expand_expr_real, ptr @tree_block, i64 119342}
!174 = !{ptr @expand_expr_real, ptr @set_curr_insn_block, i64 238684}
!175 = !{ptr @expand_expr_real, ptr @expand_expr_real_1, i64 754948}
!176 = !{ptr @highest_pow2_factor, ptr @highest_pow2_factor, i64 34}
!177 = !{ptr @highest_pow2_factor, ptr @integer_pow2p, i64 4}
!178 = !{ptr @highest_pow2_factor, ptr @host_integerp, i64 3}
!179 = !{ptr @highest_pow2_factor, ptr @tree_low_cst, i64 2}
!180 = !{ptr @force_operand, ptr @get_subtarget, i64 13673}
!181 = !{ptr @force_operand, ptr @emit_move_insn, i64 1}
!182 = !{ptr @force_operand, ptr @force_operand, i64 169}
!183 = !{ptr @force_operand, ptr @expand_mult, i64 62}
!184 = !{ptr @force_operand, ptr @expand_divmod, i64 4}
!185 = !{ptr @force_operand, ptr @expand_simple_binop, i64 18}
!186 = !{ptr @component_ref_field_offset, ptr @fold_convert_loc, i64 1}
!187 = !{ptr @component_ref_field_offset, ptr @size_int_kind, i64 1}
!188 = !{ptr @component_ref_field_offset, ptr @size_binop_loc, i64 1}
!189 = !{ptr @component_ref_field_offset, ptr @substitute_placeholder_in_expr, i64 1}
!190 = !{ptr @array_ref_low_bound, ptr @substitute_placeholder_in_expr, i64 1}
!191 = !{ptr @array_ref_low_bound, ptr @build_int_cst, i64 2}
!192 = !{ptr @array_ref_element_size, ptr @fold_convert_loc, i64 6}
!193 = !{ptr @array_ref_element_size, ptr @size_int_kind, i64 31}
!194 = !{ptr @array_ref_element_size, ptr @size_binop_loc, i64 31}
!195 = !{ptr @array_ref_element_size, ptr @substitute_placeholder_in_expr, i64 1}
!196 = !{ptr @safe_from_p, ptr @rhs_regno, i64 1}
!197 = !{ptr @safe_from_p, ptr @safe_from_p, i64 9}
!198 = !{ptr @safe_from_p, ptr @fancy_abort, i64 1}
!199 = !{ptr @expand_expr_real_1, ptr @vector_type_mode, i64 1}
!200 = !{ptr @expand_expr_real_1, ptr @expand_expr, i64 16767}
!201 = !{ptr @expand_expr_real_1, ptr @get_subtarget, i64 755327}
!202 = !{ptr @expand_expr_real_1, ptr @decl_function_context, i64 313546}
!203 = !{ptr @expand_expr_real_1, ptr @label_rtx, i64 1}
!204 = !{ptr @expand_expr_real_1, ptr @gen_rtx_fmt_u_stat, i64 1}
!205 = !{ptr @expand_expr_real_1, ptr @gen_rtx_MEM, i64 270}
!206 = !{ptr @expand_expr_real_1, ptr @expand_expr_real_1, i64 2}
!207 = !{ptr @expand_expr_real_1, ptr @get_gimple_for_ssa_name, i64 338494}
!208 = !{ptr @expand_expr_real_1, ptr @gimple_assign_rhs_to_tree, i64 102399}
!209 = !{ptr @expand_expr_real_1, ptr @expand_expr_real, i64 102426}
!210 = !{ptr @expand_expr_real_1, ptr @get_rtx_for_ssa_name, i64 236094}
!211 = !{ptr @expand_expr_real_1, ptr @make_decl_rtl, i64 46}
!212 = !{ptr @expand_expr_real_1, ptr @fancy_abort, i64 68}
!213 = !{ptr @expand_expr_real_1, ptr @copy_rtx, i64 313549}
!214 = !{ptr @expand_expr_real_1, ptr @assemble_external, i64 70407}
!215 = !{ptr @expand_expr_real_1, ptr @validize_mem, i64 6}
!216 = !{ptr @expand_expr_real_1, ptr @use_anchored_address, i64 77447}
!217 = !{ptr @expand_expr_real_1, ptr @memory_address_addr_space_p, i64 77383}
!218 = !{ptr @expand_expr_real_1, ptr @replace_equiv_address, i64 1}
!219 = !{ptr @expand_expr_real_1, ptr @promote_decl_mode, i64 1}
!220 = !{ptr @expand_expr_real_1, ptr @gen_lowpart_SUBREG, i64 1}
!221 = !{ptr @expand_expr_real_1, ptr @immed_double_const, i64 217795}
!222 = !{ptr @expand_expr_real_1, ptr @const_vector_from_tree, i64 1}
!223 = !{ptr @expand_expr_real_1, ptr @const_double_from_real_value, i64 1}
!224 = !{ptr @expand_expr_real_1, ptr @const_fixed_from_fixed_value, i64 1}
!225 = !{ptr @expand_expr_real_1, ptr @expand_expr_constant, i64 2}
!226 = !{ptr @expand_expr_real_1, ptr @VEC_constructor_elt_base_index, i64 23}
!227 = !{ptr @expand_expr_real_1, ptr @VEC_constructor_elt_base_length, i64 11}
!228 = !{ptr @expand_expr_real_1, ptr @fold_read_from_constant_string, i64 3855}
!229 = !{ptr @expand_expr_real_1, ptr @memory_address_addr_space, i64 270}
!230 = !{ptr @expand_expr_real_1, ptr @gen_rtx_CONST_INT, i64 2}
!231 = !{ptr @expand_expr_real_1, ptr @gen_rtx_fmt_ee_stat, i64 1}
!232 = !{ptr @expand_expr_real_1, ptr @set_mem_attributes, i64 14834}
!233 = !{ptr @expand_expr_real_1, ptr @set_mem_addr_space, i64 269}
!234 = !{ptr @expand_expr_real_1, ptr @gen_reg_rtx, i64 2}
!235 = !{ptr @expand_expr_real_1, ptr @emit_insn, i64 1}
!236 = !{ptr @expand_expr_real_1, ptr @get_address_description, i64 1}
!237 = !{ptr @expand_expr_real_1, ptr @addr_for_mem_ref, i64 1}
!238 = !{ptr @expand_expr_real_1, ptr @get_inner_reference, i64 14569}
!239 = !{ptr @expand_expr_real_1, ptr @force_const_mem, i64 1}
!240 = !{ptr @expand_expr_real_1, ptr @build_qualified_type, i64 1}
!241 = !{ptr @expand_expr_real_1, ptr @assign_temp, i64 3}
!242 = !{ptr @expand_expr_real_1, ptr @emit_move_insn, i64 5}
!243 = !{ptr @expand_expr_real_1, ptr @convert_to_mode, i64 1}
!244 = !{ptr @expand_expr_real_1, ptr @get_mode_alignment, i64 58256}
!245 = !{ptr @expand_expr_real_1, ptr @adjust_address_1, i64 14567}
!246 = !{ptr @expand_expr_real_1, ptr @highest_pow2_factor, i64 7}
!247 = !{ptr @expand_expr_real_1, ptr @offset_address, i64 7}
!248 = !{ptr @expand_expr_real_1, ptr @is_aligning_offset, i64 7}
!249 = !{ptr @expand_expr_real_1, ptr @set_mem_align, i64 1}
!250 = !{ptr @expand_expr_real_1, ptr @compare_tree_int, i64 14561}
!251 = !{ptr @expand_expr_real_1, ptr @mode_for_size, i64 2}
!252 = !{ptr @expand_expr_real_1, ptr @emit_block_move, i64 1}
!253 = !{ptr @expand_expr_real_1, ptr @mark_reg_pointer, i64 14347}
!254 = !{ptr @expand_expr_real_1, ptr @extract_bit_field, i64 4}
!255 = !{ptr @expand_expr_real_1, ptr @component_uses_parent_alias_set, i64 2}
!256 = !{ptr @expand_expr_real_1, ptr @assign_stack_local, i64 1}
!257 = !{ptr @expand_expr_real_1, ptr @get_alias_set, i64 1}
!258 = !{ptr @expand_expr_real_1, ptr @set_mem_alias_set, i64 1}
!259 = !{ptr @expand_expr_real_1, ptr @assign_stack_temp_for_type, i64 1}
!260 = !{ptr @expand_expr_real_1, ptr @error, i64 2}
!261 = !{ptr @expand_expr_real_1, ptr @get_callee_fndecl, i64 68780}
!262 = !{ptr @expand_expr_real_1, ptr @lookup_attribute, i64 137558}
!263 = !{ptr @expand_expr_real_1, ptr @identifier_to_locale, i64 2}
!264 = !{ptr @expand_expr_real_1, ptr @tree_nonartificial_location, i64 1}
!265 = !{ptr @expand_expr_real_1, ptr @warning_at, i64 1}
!266 = !{ptr @expand_expr_real_1, ptr @expand_builtin, i64 1}
!267 = !{ptr @expand_expr_real_1, ptr @expand_call, i64 68779}
!268 = !{ptr @expand_expr_real_1, ptr @gen_label_rtx, i64 4}
!269 = !{ptr @expand_expr_real_1, ptr @jumpifnot_1, i64 2}
!270 = !{ptr @expand_expr_real_1, ptr @emit_label, i64 4}
!271 = !{ptr @expand_expr_real_1, ptr @tsi_start, i64 1}
!272 = !{ptr @expand_expr_real_1, ptr @tsi_end_p, i64 13}
!273 = !{ptr @expand_expr_real_1, ptr @tsi_stmt, i64 12}
!274 = !{ptr @expand_expr_real_1, ptr @tsi_next, i64 12}
!275 = !{ptr @expand_expr_real_1, ptr @do_pending_stack_adjust, i64 1}
!276 = !{ptr @expand_expr_real_1, ptr @jumpifnot, i64 1}
!277 = !{ptr @expand_expr_real_1, ptr @store_expr, i64 2}
!278 = !{ptr @expand_expr_real_1, ptr @gen_jump, i64 1}
!279 = !{ptr @expand_expr_real_1, ptr @emit_jump_insn, i64 1}
!280 = !{ptr @expand_expr_real_1, ptr @emit_barrier, i64 1}
!281 = !{ptr @expand_expr_real_1, ptr @expand_vec_cond_expr, i64 1}
!282 = !{ptr @expand_expr_real_1, ptr @expand_assignment, i64 1}
!283 = !{ptr @expand_expr_real_1, ptr @expand_expr_addr_expr, i64 127}
!284 = !{ptr @expand_expr_real_1, ptr @expand_normal, i64 4}
!285 = !{ptr @expand_expr_real_1, ptr @read_complex_part, i64 2}
!286 = !{ptr @expand_expr_real_1, ptr @optab_for_tree_code, i64 1}
!287 = !{ptr @expand_expr_real_1, ptr @expand_operands, i64 2}
!288 = !{ptr @expand_expr_real_1, ptr @expand_ternary_op, i64 1}
!289 = !{ptr @expand_expr_real_1, ptr @expand_widen_pattern_expr, i64 1}
!290 = !{ptr @expand_expr_real_1, ptr @expand_expr_real_2, i64 37792}
!291 = !{ptr @expand_expr_real_2, ptr @vector_type_mode, i64 4}
!292 = !{ptr @expand_expr_real_2, ptr @get_gimple_rhs_class, i64 39034}
!293 = !{ptr @expand_expr_real_2, ptr @fancy_abort, i64 11}
!294 = !{ptr @expand_expr_real_2, ptr @get_subtarget, i64 39034}
!295 = !{ptr @expand_expr_real_2, ptr @expand_expr, i64 7596}
!296 = !{ptr @expand_expr_real_2, ptr @reduce_to_bit_field_precision, i64 565}
!297 = !{ptr @expand_expr_real_2, ptr @gen_rtx_fmt_e_stat, i64 1}
!298 = !{ptr @expand_expr_real_2, ptr @convert_to_mode, i64 1}
!299 = !{ptr @expand_expr_real_2, ptr @convert_move, i64 102}
!300 = !{ptr @expand_expr_real_2, ptr @get_def_for_expr, i64 3385}
!301 = !{ptr @expand_expr_real_2, ptr @gimple_assign_rhs1, i64 2}
!302 = !{ptr @expand_expr_real_2, ptr @gimple_assign_rhs2, i64 2}
!303 = !{ptr @expand_expr_real_2, ptr @expand_operands, i64 11896}
!304 = !{ptr @expand_expr_real_2, ptr @simplify_gen_binary, i64 1124}
!305 = !{ptr @expand_expr_real_2, ptr @really_constant_p, i64 8}
!306 = !{ptr @expand_expr_real_2, ptr @plus_constant, i64 1}
!307 = !{ptr @expand_expr_real_2, ptr @gen_rtx_fmt_ee_stat, i64 2}
!308 = !{ptr @expand_expr_real_2, ptr @host_integerp, i64 2}
!309 = !{ptr @expand_expr_real_2, ptr @force_operand, i64 1}
!310 = !{ptr @expand_expr_real_2, ptr @copy_to_mode_reg, i64 1}
!311 = !{ptr @expand_expr_real_2, ptr @tree_low_cst, i64 2}
!312 = !{ptr @expand_expr_real_2, ptr @gen_int_mode, i64 1}
!313 = !{ptr @expand_expr_real_2, ptr @expand_mult, i64 1}
!314 = !{ptr @expand_expr_real_2, ptr @expand_divmod, i64 5}
!315 = !{ptr @expand_expr_real_2, ptr @expand_normal, i64 12}
!316 = !{ptr @expand_expr_real_2, ptr @expand_fix, i64 1}
!317 = !{ptr @expand_expr_real_2, ptr @expand_float, i64 1}
!318 = !{ptr @expand_expr_real_2, ptr @optab_for_tree_code, i64 10768}
!319 = !{ptr @expand_expr_real_2, ptr @expand_unop, i64 5}
!320 = !{ptr @expand_expr_real_2, ptr @gen_reg_rtx, i64 3}
!321 = !{ptr @expand_expr_real_2, ptr @expand_binop, i64 10761}
!322 = !{ptr @expand_expr_real_2, ptr @can_conditionally_move_p, i64 1}
!323 = !{ptr @expand_expr_real_2, ptr @safe_from_p, i64 7026}
!324 = !{ptr @expand_expr_real_2, ptr @expand_shift, i64 7026}
!325 = !{ptr @expand_expr_real_2, ptr @do_store_flag, i64 19527}
!326 = !{ptr @expand_expr_real_2, ptr @emit_move_insn, i64 2}
!327 = !{ptr @expand_expr_real_2, ptr @gen_label_rtx, i64 1}
!328 = !{ptr @expand_expr_real_2, ptr @jumpifnot_1, i64 1}
!329 = !{ptr @expand_expr_real_2, ptr @emit_label, i64 1}
!330 = !{ptr @expand_expr_real_2, ptr @write_complex_part, i64 2}
!331 = !{ptr @expand_expr_real_2, ptr @expand_widen_pattern_expr, i64 7}
!332 = !{ptr @expand_expr_real_2, ptr @expand_vec_shift_expr, i64 2}
!333 = !{ptr @get_def_for_expr, ptr @get_gimple_for_ssa_name, i64 3382}
!334 = !{ptr @get_def_for_expr, ptr @gimple_assign_rhs_code, i64 654}
!335 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 70}
!336 = !{ptr @expand_operands, ptr @safe_from_p, i64 31424}
!337 = !{ptr @expand_operands, ptr @operand_equal_p, i64 31424}
!338 = !{ptr @expand_operands, ptr @expand_expr, i64 62847}
!339 = !{ptr @expand_operands, ptr @copy_rtx, i64 1}
!340 = !{ptr @do_store_flag, ptr @vector_type_mode, i64 1}
!341 = !{ptr @do_store_flag, ptr @tree_strip_nop_conversions, i64 39094}
!342 = !{ptr @do_store_flag, ptr @integer_onep, i64 2}
!343 = !{ptr @do_store_flag, ptr @integer_all_onesp, i64 15}
!344 = !{ptr @do_store_flag, ptr @fancy_abort, i64 1}
!345 = !{ptr @do_store_flag, ptr @swap_condition, i64 3}
!346 = !{ptr @do_store_flag, ptr @integer_zerop, i64 1}
!347 = !{ptr @do_store_flag, ptr @integer_pow2p, i64 1}
!348 = !{ptr @do_store_flag, ptr @get_subtarget, i64 19547}
!349 = !{ptr @do_store_flag, ptr @expand_operands, i64 19546}
!350 = !{ptr @do_store_flag, ptr @gen_reg_rtx, i64 19301}
!351 = !{ptr @do_store_flag, ptr @emit_store_flag_force, i64 19547}
!352 = !{ptr @get_gimple_for_ssa_name, ptr @bitmap_bit_p, i64 342755}
!353 = !{ptr @get_rtx_for_ssa_name, ptr @fancy_abort, i64 1}
!354 = !{ptr @expand_expr_constant, ptr @output_constant_def, i64 63}
!355 = !{ptr @expand_expr_constant, ptr @use_anchored_address, i64 62}
!356 = !{ptr @is_aligning_offset, ptr @host_integerp, i64 1}
!357 = !{ptr @expand_expr_addr_expr, ptr @vector_type_mode, i64 1}
!358 = !{ptr @expand_expr_addr_expr, ptr @expand_expr_addr_expr_1, i64 126}
!359 = !{ptr @expand_expr_addr_expr, ptr @convert_memory_address_addr_space, i64 1}
!360 = !{ptr @try_tablejump, ptr @fold_convert_loc, i64 46}
!361 = !{ptr @try_tablejump, ptr @fold_build2_stat_loc, i64 23}
!362 = !{ptr @try_tablejump, ptr @expand_normal, i64 46}
!363 = !{ptr @try_tablejump, ptr @do_pending_stack_adjust, i64 23}
!364 = !{ptr @try_tablejump, ptr @vector_type_mode, i64 3}
!365 = !{ptr @try_tablejump, ptr @convert_modes, i64 23}
!366 = !{ptr @try_tablejump, ptr @do_tablejump, i64 23}
!367 = !{ptr @do_tablejump, ptr @emit_cmp_and_jump_insns, i64 22}
!368 = !{ptr @do_tablejump, ptr @convert_to_mode, i64 1}
!369 = !{ptr @do_tablejump, ptr @gen_rtx_CONST_INT, i64 23}
!370 = !{ptr @do_tablejump, ptr @gen_rtx_fmt_ee_stat, i64 46}
!371 = !{ptr @do_tablejump, ptr @gen_rtx_fmt_u_stat, i64 23}
!372 = !{ptr @do_tablejump, ptr @memory_address_addr_space, i64 23}
!373 = !{ptr @do_tablejump, ptr @gen_reg_rtx, i64 23}
!374 = !{ptr @do_tablejump, ptr @gen_const_mem, i64 23}
!375 = !{ptr @do_tablejump, ptr @convert_move, i64 23}
!376 = !{ptr @do_tablejump, ptr @gen_tablejump, i64 23}
!377 = !{ptr @do_tablejump, ptr @emit_jump_insn, i64 23}
!378 = !{ptr @do_tablejump, ptr @emit_barrier, i64 22}
!379 = !{ptr @get_personality_function, ptr @function_needs_eh_personality, i64 38}
!380 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 654}
!381 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 654}
!382 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 71}
!383 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 654}
!384 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 70}
!385 = !{ptr @gimple_op, ptr @gimple_ops, i64 69}
!386 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 70}
!387 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 70}
!388 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!389 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 70}
!390 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 70}
!391 = !{ptr @expand_expr_addr_expr_1, ptr @expand_expr_constant, i64 64}
!392 = !{ptr @expand_expr_addr_expr_1, ptr @expand_expr, i64 155}
!393 = !{ptr @expand_expr_addr_expr_1, ptr @emutls_var_address, i64 1}
!394 = !{ptr @expand_expr_addr_expr_1, ptr @fancy_abort, i64 3}
!395 = !{ptr @expand_expr_addr_expr_1, ptr @assemble_external, i64 149}
!396 = !{ptr @expand_expr_addr_expr_1, ptr @force_operand, i64 149}
!397 = !{ptr @expand_expr_addr_expr_1, ptr @get_inner_reference, i64 31}
!398 = !{ptr @expand_expr_addr_expr_1, ptr @expand_expr_addr_expr_1, i64 33}
!399 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!400 = !{!"function_entry_count", i64 1}
!401 = !{!402, !402, i64 0}
!402 = !{!"any pointer", !403, i64 0}
!403 = !{!"omnipotent char", !404, i64 0}
!404 = !{!"Simple C/C++ TBAA"}
!405 = !{!403, !403, i64 0}
!406 = !{!"branch_weights", i32 7482, i32 350}
!407 = !{!"branch_weights", i32 4142, i32 8}
!408 = !{!"branch_weights", i32 4142, i32 86}
!409 = !{!"branch_weights", i32 3444, i32 699}
!410 = !{!"branch_weights", i32 8, i32 692}
!411 = !{!"branch_weights", i32 79, i32 4070}
!412 = distinct !{!412, !413}
!413 = !{!"llvm.loop.mustprogress"}
!414 = !{!"branch_weights", i32 2, i32 86}
!415 = distinct !{!415, !413}
!416 = !{!"branch_weights", i32 1, i32 127}
!417 = !{!"branch_weights", i32 1, i32 159}
!418 = !{!"branch_weights", i32 4, i32 4}
!419 = !{!420, !402, i64 24}
!420 = !{!"insn_data", !402, i64 0, !403, i64 8, !402, i64 16, !402, i64 24, !403, i64 32, !403, i64 33, !403, i64 34, !403, i64 35}
!421 = !{!422, !402, i64 0}
!422 = !{!"insn_operand_data", !402, i64 0, !402, i64 8, !423, i64 16, !403, i64 18, !403, i64 19}
!423 = !{!"int", !403, i64 0}
!424 = !{!"branch_weights", i32 1, i32 4}
!425 = !{!"branch_weights", i32 159, i32 65}
!426 = distinct !{!426, !413}
!427 = !{!"branch_weights", i32 127, i32 193}
!428 = distinct !{!428, !413}
!429 = !{!"function_entry_count", i64 2937}
!430 = !{!"expr.c:rhs_regno"}
!431 = !{!"function_entry_count", i64 40}
!432 = !{!"function_entry_count", i64 1432}
!433 = !{!"branch_weights", i32 1, i32 1433}
!434 = !{!435, !402, i64 0}
!435 = !{!"rtl_hooks", !402, i64 0, !402, i64 8, !402, i64 16, !402, i64 24, !402, i64 32}
!436 = !{!"branch_weights", i32 24, i32 1410}
!437 = !{!"branch_weights", i32 1, i32 1410}
!438 = !{!423, !423, i64 0}
!439 = !{!"branch_weights", i32 15598643, i32 -635778562}
!440 = !{!441, !441, i64 0}
!441 = !{!"short", !403, i64 0}
!442 = !{!443, !423, i64 0}
!443 = !{!"optab_handlers", !423, i64 0}
!444 = !{!"branch_weights", i32 10961735, i32 -435063380}
!445 = !{!"branch_weights", i32 1410, i32 1989511}
!446 = distinct !{!446, !413}
!447 = !{!"branch_weights", i32 1410, i32 1}
!448 = distinct !{!448, !413}
!449 = !{!"function_entry_count", i64 268160}
!450 = !{!"branch_weights", i32 1, i32 268161}
!451 = !{!"branch_weights", i32 -1466572669, i32 10547}
!452 = !{!"branch_weights", i32 98867, i32 169295}
!453 = !{!"branch_weights", i32 1, i32 98867}
!454 = !{!"branch_weights", i32 49433, i32 -1851296374}
!455 = !{!"branch_weights", i32 81736, i32 186426}
!456 = !{!"branch_weights", i32 28, i32 81709}
!457 = !{!458, !403, i64 32}
!458 = !{!"mem_attrs", !402, i64 0, !402, i64 8, !402, i64 16, !423, i64 24, !423, i64 28, !403, i64 32}
!459 = !{!"branch_weights", i32 1, i32 81736}
!460 = !{!"branch_weights", i32 47083, i32 221079}
!461 = !{!"branch_weights", i32 51, i32 47033}
!462 = !{!"branch_weights", i32 1, i32 47083}
!463 = !{!"branch_weights", i32 169295, i32 98867}
!464 = !{!"branch_weights", i32 86174, i32 12694}
!465 = !{!"branch_weights", i32 689399, i32 1}
!466 = !{!"branch_weights", i32 86174, i32 1}
!467 = !{!"branch_weights", i32 1879048192, i32 268435456}
!468 = !{!"branch_weights", i32 1, i32 86174}
!469 = !{!"function_entry_count", i64 0}
!470 = !{!"function_entry_count", i64 28912}
!471 = !{!"branch_weights", i32 1, i32 28913}
!472 = !{!"branch_weights", i32 21870, i32 7044}
!473 = !{!"branch_weights", i32 21803, i32 7111}
!474 = !{!"branch_weights", i32 7044, i32 68}
!475 = !{!"branch_weights", i32 68, i32 1}
!476 = !{!"branch_weights", i32 1, i32 137}
!477 = !{!"branch_weights", i32 68, i32 7044}
!478 = !{!"branch_weights", i32 7044, i32 1}
!479 = !{!"branch_weights", i32 1, i32 7044}
!480 = !{!"branch_weights", i32 23088025, i32 10770245}
!481 = !{!"branch_weights", i32 1, i32 4805}
!482 = !{!"branch_weights", i32 2147482822, i32 826}
!483 = !{!"branch_weights", i32 1, i32 2240}
!484 = !{!"branch_weights", i32 1, i32 68}
!485 = !{!486, !423, i64 72}
!486 = !{!"processor_costs", !423, i64 0, !423, i64 4, !423, i64 8, !423, i64 12, !403, i64 16, !423, i64 36, !403, i64 40, !423, i64 60, !423, i64 64, !423, i64 68, !423, i64 72, !423, i64 76, !403, i64 80, !403, i64 92, !423, i64 104, !403, i64 108, !403, i64 120, !423, i64 132, !403, i64 136, !403, i64 144, !423, i64 152, !403, i64 156, !403, i64 168, !423, i64 180, !423, i64 184, !423, i64 188, !423, i64 192, !423, i64 196, !423, i64 200, !423, i64 204, !423, i64 208, !423, i64 212, !423, i64 216, !423, i64 220, !423, i64 224, !403, i64 228, !403, i64 300, !423, i64 372, !423, i64 376, !423, i64 380, !423, i64 384, !423, i64 388, !423, i64 392, !423, i64 396, !423, i64 400, !423, i64 404, !423, i64 408, !423, i64 412}
!487 = !{!"expr.c:move_by_pieces_ninsns"}
!488 = distinct !{!488, !413}
!489 = distinct !{!489, !413}
!490 = !{!491, !402, i64 1184}
!491 = !{!"gcc_target", !492, i64 0, !494, i64 368, !495, i64 664, !423, i64 744, !402, i64 752, !402, i64 760, !402, i64 768, !402, i64 776, !402, i64 784, !402, i64 792, !402, i64 800, !402, i64 808, !402, i64 816, !402, i64 824, !402, i64 832, !402, i64 840, !402, i64 848, !402, i64 856, !402, i64 864, !402, i64 872, !402, i64 880, !402, i64 888, !402, i64 896, !402, i64 904, !402, i64 912, !402, i64 920, !402, i64 928, !402, i64 936, !402, i64 944, !402, i64 952, !402, i64 960, !402, i64 968, !402, i64 976, !402, i64 984, !402, i64 992, !402, i64 1000, !402, i64 1008, !402, i64 1016, !402, i64 1024, !402, i64 1032, !402, i64 1040, !402, i64 1048, !402, i64 1056, !496, i64 1064, !496, i64 1072, !402, i64 1080, !402, i64 1088, !402, i64 1096, !402, i64 1104, !402, i64 1112, !402, i64 1120, !402, i64 1128, !402, i64 1136, !402, i64 1144, !402, i64 1152, !402, i64 1160, !402, i64 1168, !497, i64 1176, !402, i64 1232, !402, i64 1240, !402, i64 1248, !402, i64 1256, !402, i64 1264, !402, i64 1272, !402, i64 1280, !402, i64 1288, !402, i64 1296, !402, i64 1304, !402, i64 1312, !402, i64 1320, !402, i64 1328, !402, i64 1336, !402, i64 1344, !402, i64 1352, !402, i64 1360, !402, i64 1368, !402, i64 1376, !402, i64 1384, !402, i64 1392, !402, i64 1400, !402, i64 1408, !402, i64 1416, !402, i64 1424, !402, i64 1432, !402, i64 1440, !402, i64 1448, !402, i64 1456, !496, i64 1464, !498, i64 1472, !402, i64 1664, !402, i64 1672, !402, i64 1680, !402, i64 1688, !402, i64 1696, !402, i64 1704, !402, i64 1712, !402, i64 1720, !402, i64 1728, !402, i64 1736, !402, i64 1744, !402, i64 1752, !402, i64 1760, !402, i64 1768, !402, i64 1776, !499, i64 1784, !500, i64 1792, !501, i64 1896, !502, i64 1968, !402, i64 2016, !403, i64 2024, !403, i64 2025, !403, i64 2026, !403, i64 2027, !403, i64 2028, !403, i64 2029, !403, i64 2030, !403, i64 2031, !403, i64 2032, !403, i64 2033, !403, i64 2034, !403, i64 2035}
!492 = !{!"asm_out", !402, i64 0, !402, i64 8, !402, i64 16, !493, i64 24, !493, i64 56, !402, i64 88, !402, i64 96, !402, i64 104, !402, i64 112, !402, i64 120, !402, i64 128, !402, i64 136, !402, i64 144, !402, i64 152, !402, i64 160, !402, i64 168, !402, i64 176, !402, i64 184, !402, i64 192, !402, i64 200, !402, i64 208, !402, i64 216, !402, i64 224, !402, i64 232, !402, i64 240, !402, i64 248, !402, i64 256, !402, i64 264, !402, i64 272, !402, i64 280, !402, i64 288, !402, i64 296, !402, i64 304, !402, i64 312, !402, i64 320, !402, i64 328, !402, i64 336, !402, i64 344, !402, i64 352, !402, i64 360}
!493 = !{!"asm_int_op", !402, i64 0, !402, i64 8, !402, i64 16, !402, i64 24}
!494 = !{!"sched", !402, i64 0, !402, i64 8, !402, i64 16, !402, i64 24, !402, i64 32, !402, i64 40, !402, i64 48, !402, i64 56, !402, i64 64, !402, i64 72, !402, i64 80, !402, i64 88, !402, i64 96, !402, i64 104, !402, i64 112, !402, i64 120, !402, i64 128, !402, i64 136, !402, i64 144, !402, i64 152, !402, i64 160, !402, i64 168, !402, i64 176, !402, i64 184, !402, i64 192, !402, i64 200, !402, i64 208, !402, i64 216, !402, i64 224, !402, i64 232, !402, i64 240, !402, i64 248, !402, i64 256, !402, i64 264, !402, i64 272, !402, i64 280, !402, i64 288}
!495 = !{!"vectorize", !402, i64 0, !402, i64 8, !402, i64 16, !402, i64 24, !402, i64 32, !402, i64 40, !402, i64 48, !402, i64 56, !402, i64 64, !402, i64 72}
!496 = !{!"long", !403, i64 0}
!497 = !{!"addr_space", !402, i64 0, !402, i64 8, !402, i64 16, !402, i64 24, !402, i64 32, !402, i64 40, !402, i64 48}
!498 = !{!"calls", !402, i64 0, !402, i64 8, !402, i64 16, !402, i64 24, !402, i64 32, !402, i64 40, !402, i64 48, !402, i64 56, !402, i64 64, !402, i64 72, !402, i64 80, !402, i64 88, !402, i64 96, !402, i64 104, !402, i64 112, !402, i64 120, !402, i64 128, !402, i64 136, !402, i64 144, !402, i64 152, !402, i64 160, !402, i64 168, !402, i64 176, !402, i64 184}
!499 = !{!"c", !402, i64 0}
!500 = !{!"cxx", !402, i64 0, !402, i64 8, !402, i64 16, !402, i64 24, !402, i64 32, !402, i64 40, !402, i64 48, !402, i64 56, !402, i64 64, !402, i64 72, !402, i64 80, !402, i64 88, !402, i64 96}
!501 = !{!"emutls", !402, i64 0, !402, i64 8, !402, i64 16, !402, i64 24, !402, i64 32, !402, i64 40, !402, i64 48, !402, i64 56, !403, i64 64, !403, i64 65}
!502 = !{!"target_option_hooks", !402, i64 0, !402, i64 8, !402, i64 16, !402, i64 24, !402, i64 32, !402, i64 40}
!503 = !{!458, !423, i64 28}
!504 = !{!505, !496, i64 56}
!505 = !{!"move_by_pieces_d", !402, i64 0, !402, i64 8, !423, i64 16, !423, i64 20, !402, i64 24, !402, i64 32, !423, i64 40, !423, i64 44, !496, i64 48, !496, i64 56, !423, i64 64}
!506 = !{!505, !402, i64 32}
!507 = !{!505, !402, i64 0}
!508 = !{!505, !423, i64 16}
!509 = !{!505, !423, i64 64}
!510 = !{!505, !402, i64 8}
!511 = !{!505, !402, i64 24}
!512 = !{!505, !423, i64 40}
!513 = !{!505, !423, i64 44}
!514 = !{!505, !423, i64 20}
!515 = !{!505, !496, i64 48}
!516 = distinct !{!516, !413}
!517 = distinct !{!517, !413}
!518 = distinct !{!518, !413}
!519 = !{!420, !402, i64 16}
!520 = distinct !{!520, !413}
!521 = !{!"expr.c:move_by_pieces_1"}
!522 = distinct !{!522, !413}
!523 = !{!524, !423, i64 4}
!524 = !{!"rtl_data", !525, i64 0, !526, i64 40, !527, i64 96, !528, i64 112, !530, i64 208, !531, i64 248, !423, i64 312, !402, i64 320, !402, i64 328, !402, i64 336, !402, i64 344, !402, i64 352, !402, i64 360, !402, i64 368, !402, i64 376, !402, i64 384, !402, i64 392, !496, i64 400, !402, i64 408, !402, i64 416, !402, i64 424, !423, i64 432, !423, i64 436, !423, i64 440, !423, i64 444, !423, i64 448, !423, i64 452, !402, i64 456, !403, i64 464, !403, i64 465, !403, i64 466, !403, i64 467, !403, i64 468, !403, i64 469, !403, i64 470, !403, i64 471, !403, i64 472, !403, i64 473, !403, i64 474, !403, i64 475, !403, i64 476, !403, i64 477, !403, i64 478, !403, i64 479, !403, i64 480, !403, i64 481, !403, i64 482, !403, i64 483, !403, i64 484, !403, i64 485}
!525 = !{!"expr_status", !423, i64 0, !423, i64 4, !423, i64 8, !402, i64 16, !402, i64 24, !402, i64 32}
!526 = !{!"emit_status", !423, i64 0, !423, i64 4, !402, i64 8, !402, i64 16, !402, i64 24, !423, i64 32, !423, i64 36, !423, i64 40, !423, i64 44, !402, i64 48}
!527 = !{!"varasm_status", !402, i64 0, !423, i64 8}
!528 = !{!"incoming_args", !423, i64 0, !423, i64 4, !423, i64 8, !402, i64 16, !529, i64 24, !402, i64 88}
!529 = !{!"ix86_args", !423, i64 0, !423, i64 4, !423, i64 8, !423, i64 12, !423, i64 16, !423, i64 20, !423, i64 24, !423, i64 28, !423, i64 32, !423, i64 36, !423, i64 40, !423, i64 44, !423, i64 48, !423, i64 52, !423, i64 56, !423, i64 60}
!530 = !{!"function_subsections", !402, i64 0, !402, i64 8, !402, i64 16, !402, i64 24, !402, i64 32}
!531 = !{!"rtl_eh", !402, i64 0, !402, i64 8, !402, i64 16, !402, i64 24, !402, i64 32, !402, i64 40, !403, i64 48}
!532 = !{!"expr.c:block_move_libcall_safe_for_call_parm"}
!533 = !{!491, !402, i64 1576}
!534 = distinct !{!534, !413}
!535 = !{!"expr.c:emit_block_move_via_movmem"}
!536 = !{!496, !496, i64 0}
!537 = !{!420, !403, i64 32}
!538 = distinct !{!538, !413}
!539 = !{!"expr.c:emit_block_move_via_loop"}
!540 = !{!"expr.c:emit_block_move_libcall_fn"}
!541 = !{!"function_entry_count", i64 86}
!542 = !{!"expr.c:expand_normal"}
!543 = distinct !{!543, !413}
!544 = distinct !{!544, !413}
!545 = !{!546, !423, i64 0}
!546 = !{!"rtvec_def", !423, i64 0, !403, i64 8}
!547 = distinct !{!547, !413}
!548 = distinct !{!548, !413}
!549 = !{!"expr.c:emit_group_load_1"}
!550 = distinct !{!550, !413}
!551 = distinct !{!551, !413}
!552 = distinct !{!552, !413}
!553 = distinct !{!553, !413}
!554 = distinct !{!554, !413}
!555 = distinct !{!555, !413}
!556 = !{!491, !402, i64 1504}
!557 = distinct !{!557, !413}
!558 = distinct !{!558, !413}
!559 = distinct !{!559, !413}
!560 = distinct !{!560, !413}
!561 = distinct !{!561, !413}
!562 = distinct !{!562, !413}
!563 = distinct !{!563, !413}
!564 = !{!565, !402, i64 40}
!565 = !{!"store_by_pieces_d", !402, i64 0, !402, i64 8, !423, i64 16, !423, i64 20, !496, i64 24, !496, i64 32, !402, i64 40, !402, i64 48, !423, i64 56}
!566 = !{!565, !402, i64 48}
!567 = !{!565, !496, i64 24}
!568 = !{!565, !402, i64 0}
!569 = !{!565, !423, i64 56}
!570 = !{!565, !423, i64 16}
!571 = !{!565, !402, i64 8}
!572 = !{!565, !496, i64 32}
!573 = !{!"expr.c:store_by_pieces_1"}
!574 = !{!565, !423, i64 20}
!575 = distinct !{!575, !413}
!576 = distinct !{!576, !413}
!577 = distinct !{!577, !413}
!578 = distinct !{!578, !413}
!579 = !{!"expr.c:write_complex_part"}
!580 = !{!"expr.c:clear_by_pieces"}
!581 = distinct !{!581, !413}
!582 = !{!"expr.c:clear_storage_libcall_fn"}
!583 = !{!"expr.c:emit_move_resolve_push"}
!584 = !{!"expr.c:read_complex_part"}
!585 = !{!"function_entry_count", i64 268275}
!586 = !{!"branch_weights", i32 268276, i32 1}
!587 = !{!"branch_weights", i32 1, i32 268276}
!588 = !{!"expr.c:emit_move_complex"}
!589 = !{!"expr.c:emit_move_via_integer"}
!590 = !{!"expr.c:emit_move_multi_word"}
!591 = !{i8 0, i8 2}
!592 = distinct !{!592, !413}
!593 = !{!"expr.c:emit_move_ccmode"}
!594 = !{!"expr.c:compress_float_constant"}
!595 = !{i64 0, i64 4, !438, i64 0, i64 4, !438, i64 0, i64 4, !438, i64 0, i64 4, !438, i64 0, i64 4, !438, i64 0, i64 4, !438, i64 8, i64 24, !405}
!596 = distinct !{!596, !413}
!597 = !{!"function_entry_count", i64 81668}
!598 = !{!"branch_weights", i32 1, i32 81669}
!599 = distinct !{!599, !413}
!600 = !{!"branch_weights", i32 81669, i32 1}
!601 = !{!"branch_weights", i32 81669, i32 81669}
!602 = !{!"branch_weights", i32 13148, i32 2147470500}
!603 = !{!"branch_weights", i32 -1073748398, i32 1073748398}
!604 = !{!"branch_weights", i32 40834, i32 -960013681}
!605 = !{!"expr.c:emit_single_push_insn"}
!606 = !{!524, !423, i64 8}
!607 = !{!"function_entry_count", i64 79672}
!608 = !{!"branch_weights", i32 1, i32 79673}
!609 = !{!"branch_weights", i32 79673, i32 1}
!610 = !{!"branch_weights", i32 79633, i32 41}
!611 = !{!"branch_weights", i32 1, i32 79633}
!612 = !{!"branch_weights", i32 41, i32 1}
!613 = !{!"branch_weights", i32 41, i32 42, i32 1681}
!614 = !{!"branch_weights", i32 2093828495, i32 53655153}
!615 = !{!"branch_weights", i32 66685, i32 12949}
!616 = !{!"branch_weights", i32 66685, i32 1}
!617 = !{!"branch_weights", i32 1, i32 66685}
!618 = !{!"branch_weights", i32 -2071522684, i32 33343, i32 33342}
!619 = !{!"expr.c:handled_component_p"}
!620 = !{!"branch_weights", i32 79633, i32 1, i32 41, i32 1, i32 1, i32 1, i32 1, i32 1}
!621 = !{!"function_entry_count", i64 224169}
!622 = !{!"branch_weights", i32 -718688092, i32 -1168283288, i32 29901}
!623 = !{!"branch_weights", i32 104567, i32 1}
!624 = !{!"branch_weights", i32 1, i32 119604}
!625 = !{!"branch_weights", i32 41070, i32 2147442578}
!626 = !{!"branch_weights", i32 1, i32 104567}
!627 = !{!"branch_weights", i32 224170, i32 1, i32 148070, i32 46622, i32 1, i32 1, i32 1, i32 1}
!628 = !{!"branch_weights", i32 1, i32 148070}
!629 = !{!"branch_weights", i32 1, i32 46622}
!630 = !{!"branch_weights", i32 194691, i32 1}
!631 = !{!"branch_weights", i32 19, i32 224152}
!632 = !{!"branch_weights", i32 1, i32 224152}
!633 = !{!"branch_weights", i32 107368898, i32 2040114750}
!634 = !{!"branch_weights", i32 1, i32 224170}
!635 = !{!"function_entry_count", i64 165029}
!636 = !{!"expr.c:expand_expr"}
!637 = !{!"expr.c:highest_pow2_factor_for_target"}
!638 = !{i64 0, i64 4294967296}
!639 = !{!"branch_weights", i32 -2065383432, i32 430651321}
!640 = !{!"branch_weights", i32 -1121073832, i32 39837, i32 39836}
!641 = !{!642, !402, i64 448}
!642 = !{!"lang_hooks", !402, i64 0, !496, i64 8, !402, i64 16, !402, i64 24, !402, i64 32, !402, i64 40, !402, i64 48, !402, i64 56, !402, i64 64, !402, i64 72, !402, i64 80, !402, i64 88, !402, i64 96, !402, i64 104, !402, i64 112, !402, i64 120, !402, i64 128, !402, i64 136, !402, i64 144, !402, i64 152, !402, i64 160, !402, i64 168, !402, i64 176, !402, i64 184, !402, i64 192, !402, i64 200, !402, i64 208, !402, i64 216, !402, i64 224, !402, i64 232, !643, i64 240, !644, i64 248, !645, i64 256, !646, i64 272, !647, i64 432, !648, i64 560, !402, i64 584, !402, i64 592, !402, i64 600, !402, i64 608, !402, i64 616, !402, i64 624, !402, i64 632, !402, i64 640, !402, i64 648, !402, i64 656, !402, i64 664, !403, i64 672}
!643 = !{!"lang_hooks_for_tree_inlining", !402, i64 0}
!644 = !{!"lang_hooks_for_callgraph", !402, i64 0}
!645 = !{!"lang_hooks_for_tree_dump", !402, i64 0, !402, i64 8}
!646 = !{!"lang_hooks_for_decls", !402, i64 0, !402, i64 8, !402, i64 16, !402, i64 24, !402, i64 32, !402, i64 40, !402, i64 48, !402, i64 56, !402, i64 64, !402, i64 72, !402, i64 80, !402, i64 88, !402, i64 96, !402, i64 104, !402, i64 112, !402, i64 120, !402, i64 128, !402, i64 136, !402, i64 144, !402, i64 152}
!647 = !{!"lang_hooks_for_types", !402, i64 0, !402, i64 8, !402, i64 16, !402, i64 24, !402, i64 32, !402, i64 40, !402, i64 48, !402, i64 56, !402, i64 64, !402, i64 72, !402, i64 80, !402, i64 88, !402, i64 96, !402, i64 104, !402, i64 112, !403, i64 120}
!648 = !{!"lang_hooks_for_lto", !402, i64 0, !402, i64 8, !402, i64 16}
!649 = !{!"branch_weights", i32 12989, i32 66685}
!650 = !{!"branch_weights", i32 1, i32 12989}
!651 = !{!"branch_weights", i32 133, i32 12857}
!652 = !{!"branch_weights", i32 12857, i32 1}
!653 = !{!"branch_weights", i32 12989, i32 1}
!654 = !{!491, !402, i64 1176}
!655 = !{!"expr.c:optimize_bitfield_assignment_op"}
!656 = !{!"branch_weights", i32 167, i32 1}
!657 = !{!"expr.c:store_field"}
!658 = !{!"branch_weights", i32 1, i32 41}
!659 = !{!"branch_weights", i32 51546258, i32 2095937390}
!660 = !{!"branch_weights", i32 1681, i32 42, i32 41}
!661 = !{!458, !423, i64 24}
!662 = !{!"function_entry_count", i64 754950}
!663 = !{!"branch_weights", i32 1, i32 754951}
!664 = !{!"branch_weights", i32 446780778, i32 -1920799150}
!665 = !{!"branch_weights", i32 226, i32 119345}
!666 = !{!"branch_weights", i32 -734160040, i32 59672}
!667 = !{!"function_entry_count", i64 75501}
!668 = !{!"branch_weights", i32 13, i32 75466, i32 1, i32 1, i32 1, i32 1, i32 13, i32 1, i32 1, i32 1, i32 1, i32 1, i32 13, i32 1, i32 1, i32 1, i32 1}
!669 = !{!"branch_weights", i32 75466, i32 1}
!670 = !{!"branch_weights", i32 75454, i32 13}
!671 = !{!"function_entry_count", i64 13673}
!672 = !{!"branch_weights", i32 1, i32 13674}
!673 = !{!"branch_weights", i32 2826934, i32 2144656714}
!674 = !{!"branch_weights", i32 1, i32 17}
!675 = !{!"branch_weights", i32 84, i32 13591}
!676 = !{!"branch_weights", i32 84, i32 1}
!677 = !{!"branch_weights", i32 1, i32 84}
!678 = !{!"branch_weights", i32 421827144, i32 1725656504}
!679 = !{!"branch_weights", i32 17, i32 1}
!680 = !{!"branch_weights", i32 0, i32 2000395731, i32 29417583, i32 29417583, i32 29417583, i32 29417583, i32 29417583}
!681 = !{!"branch_weights", i32 1, i32 13591}
!682 = !{!"expr.c:categorize_ctor_elements_1"}
!683 = !{!684, !402, i64 8}
!684 = !{!"constructor_elt_d", !402, i64 0, !402, i64 8}
!685 = !{!684, !402, i64 0}
!686 = distinct !{!686, !413}
!687 = distinct !{!687, !413}
!688 = distinct !{!688, !413}
!689 = !{!"function_entry_count", i64 249343}
!690 = !{!"branch_weights", i32 -409190400, i32 31168}
!691 = !{!"branch_weights", i32 249344, i32 1}
!692 = !{!"branch_weights", i32 1, i32 249344}
!693 = !{!"function_entry_count", i64 262370}
!694 = !{!"branch_weights", i32 262335, i32 37}
!695 = !{!"branch_weights", i32 1, i32 262335}
!696 = !{!"function_entry_count", i64 260323}
!697 = !{!"branch_weights", i32 -59430735, i32 32540}
!698 = !{!"branch_weights", i32 260294, i32 31}
!699 = !{!"branch_weights", i32 26, i32 6}
!700 = !{!"branch_weights", i32 1, i32 260294}
!701 = !{!"function_entry_count", i64 829481}
!702 = !{!"expr.c:get_subtarget"}
!703 = !{!"branch_weights", i32 1, i32 829482}
!704 = !{!"function_entry_count", i64 38467}
!705 = !{!"branch_weights", i32 38467, i32 1}
!706 = !{i32 0, i32 2}
!707 = distinct !{!707, !413}
!708 = distinct !{!708, !413}
!709 = !{!"expr.c:VEC_constructor_elt_base_iterate"}
!710 = !{!711, !423, i64 0}
!711 = !{!"VEC_constructor_elt_base", !423, i64 0, !423, i64 4, !403, i64 8}
!712 = !{!"expr.c:tree_operand_length"}
!713 = !{!"function_entry_count", i64 757224}
!714 = !{!"branch_weights", i32 463936260, i32 -1875647245}
!715 = !{!"branch_weights", i32 1, i32 757225}
!716 = !{!"branch_weights", i32 68959, i32 688267}
!717 = !{!"branch_weights", i32 14605, i32 635382, i32 37817, i32 467}
!718 = !{!719, !423, i64 0}
!719 = !{!"separate_ops", !423, i64 0, !402, i64 8, !402, i64 16, !402, i64 24, !402, i64 32, !423, i64 40}
!720 = !{!719, !402, i64 8}
!721 = !{!719, !402, i64 16}
!722 = !{!719, !402, i64 24}
!723 = !{!719, !402, i64 32}
!724 = !{!719, !423, i64 40}
!725 = !{!"branch_weights", i32 2275, i32 754951}
!726 = !{!"branch_weights", i32 0, i32 -2147483648}
!727 = !{!"branch_weights", i32 323562, i32 431390}
!728 = !{!"branch_weights", i32 1, i32 2275}
!729 = !{!"branch_weights", i32 2275, i32 1}
!730 = !{!"branch_weights", i32 3883425, i32 -1351330578}
!731 = !{!"branch_weights", i32 6636, i32 2147477012}
!732 = !{!"branch_weights", i32 37890, i32 1, i32 339374, i32 1, i32 77649, i32 1, i32 1, i32 218361, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 268, i32 1, i32 14384, i32 221, i32 1, i32 1, i32 1, i32 68959, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 127, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!733 = !{!"branch_weights", i32 1, i32 339374}
!734 = !{!"branch_weights", i32 236709, i32 102666}
!735 = !{!"branch_weights", i32 1, i32 77649}
!736 = !{!491, !403, i64 2028}
!737 = !{!"branch_weights", i32 46, i32 77604}
!738 = !{!"branch_weights", i32 10995, i32 2147472653}
!739 = !{!"branch_weights", i32 70590, i32 243768}
!740 = !{!"branch_weights", i32 -1969005533, i32 22197}
!741 = !{!"branch_weights", i32 7, i32 1}
!742 = !{!"branch_weights", i32 77649, i32 236709}
!743 = !{!"branch_weights", i32 6830, i32 2147476818}
!744 = !{!"branch_weights", i32 64793, i32 12857}
!745 = !{!"branch_weights", i32 -1285173598, i32 2521577}
!746 = !{!"branch_weights", i32 1, i32 77586}
!747 = !{!"branch_weights", i32 1073755252, i32 1073728396}
!748 = !{!"branch_weights", i32 236709, i32 77649}
!749 = !{!"branch_weights", i32 236709, i32 1}
!750 = distinct !{!750, !413}
!751 = !{!"branch_weights", i32 1, i32 268}
!752 = !{!"branch_weights", i32 268, i32 1}
!753 = !{!"branch_weights", i32 1, i32 536, i32 1}
!754 = !{!"branch_weights", i32 14384, i32 1}
!755 = !{!"branch_weights", i32 1, i32 14384}
!756 = distinct !{!756, !413}
!757 = !{!491, !402, i64 1112}
!758 = distinct !{!758, !413}
!759 = !{!"branch_weights", i32 1, i32 221}
!760 = distinct !{!760, !413}
!761 = !{!"branch_weights", i32 1, i32 14604}
!762 = !{!"branch_weights", i32 -1, i32 1}
!763 = !{!"branch_weights", i32 393517121, i32 14604}
!764 = !{!"branch_weights", i32 116791, i32 213101604}
!765 = !{!"branch_weights", i32 14604, i32 1}
!766 = !{!"branch_weights", i32 14598, i32 7}
!767 = !{!"branch_weights", i32 1, i32 7}
!768 = !{!"branch_weights", i32 49, i32 15}
!769 = !{!"branch_weights", i32 1415618, i32 -1341761178}
!770 = !{!"branch_weights", i32 14604, i32 213291421}
!771 = !{!"branch_weights", i32 213276816, i32 14605, i32 14604}
!772 = !{!"branch_weights", i32 14387, i32 218}
!773 = !{!"branch_weights", i32 1, i32 14387}
!774 = !{!"branch_weights", i32 68959, i32 1}
!775 = !{!"branch_weights", i32 1, i32 68959}
!776 = !{!642, !402, i64 176}
!777 = !{!"branch_weights", i32 1, i32 137918, i32 1}
!778 = !{i64 0, i64 8, !401, i64 8, i64 8, !401}
!779 = !{i64 0, i64 8, !401}
!780 = distinct !{!780, !413}
!781 = !{!"function_entry_count", i64 39034}
!782 = !{!"branch_weights", i32 1, i32 39035}
!783 = !{i32 0, i32 256}
!784 = !{!"branch_weights", i32 1501871626, i32 38474}
!785 = !{!"branch_weights", i32 19297, i32 19739}
!786 = !{!"branch_weights", i32 111286, i32 2147372362}
!787 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 50, i32 513, i32 1, i32 1, i32 3378, i32 7, i32 7, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 8177, i32 1, i32 304, i32 1, i32 13, i32 1, i32 1, i32 1, i32 7044, i32 1, i32 2486, i32 1, i32 1, i32 16798, i32 269, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!788 = !{!"branch_weights", i32 1, i32 562}
!789 = !{!"branch_weights", i32 91, i32 472}
!790 = !{!"branch_weights", i32 60, i32 32}
!791 = !{!"branch_weights", i32 1, i32 32}
!792 = !{!"branch_weights", i32 1, i32 91}
!793 = !{!"branch_weights", i32 1, i32 472}
!794 = !{!"branch_weights", i32 368, i32 105}
!795 = !{!"branch_weights", i32 1, i32 105}
!796 = !{!491, !402, i64 1216}
!797 = !{!491, !402, i64 1224}
!798 = !{!"branch_weights", i32 1, i32 6756, i32 1}
!799 = !{!"branch_weights", i32 3378, i32 1}
!800 = !{!"branch_weights", i32 1, i32 3378}
!801 = !{!"branch_weights", i32 1, i32 1, i32 1}
!802 = !{!"branch_weights", i32 772, i32 2611195}
!803 = !{!"branch_weights", i32 2748, i32 631}
!804 = !{!"branch_weights", i32 7554253, i32 2748}
!805 = !{!"branch_weights", i32 1, i32 14, i32 1}
!806 = !{!"branch_weights", i32 5764801, i32 2097152, i32 1835008, i32 1605632, i32 1404928, i32 1229312, i32 1075648, i32 941192, i32 823543}
!807 = !{!"branch_weights", i32 -1727971924, i32 364783, i32 364731, i32 364679, i32 364628, i32 364577, i32 364525, i32 364474, i32 364422}
!808 = !{!"branch_weights", i32 1, i32 19551}
!809 = !{!"branch_weights", i32 18939, i32 613}
!810 = !{!"branch_weights", i32 1, i32 11875}
!811 = !{!"function_entry_count", i64 78161}
!812 = !{!"expr.c:get_gimple_rhs_class"}
!813 = !{!"expr.c:reduce_to_bit_field_precision"}
!814 = !{!"function_entry_count", i64 3383}
!815 = !{!"expr.c:get_def_for_expr"}
!816 = !{!"branch_weights", i32 3384, i32 1}
!817 = !{!"branch_weights", i32 2730, i32 655}
!818 = !{i32 0, i32 65536}
!819 = !{!"branch_weights", i32 1, i32 655}
!820 = !{!"function_entry_count", i64 70}
!821 = !{!"expr.c:gimple_assign_rhs1"}
!822 = !{!"expr.c:gimple_assign_rhs2"}
!823 = !{!"function_entry_count", i64 31424}
!824 = !{!"expr.c:expand_operands"}
!825 = !{!"branch_weights", i32 1, i32 31425}
!826 = !{!"branch_weights", i32 31425, i32 1}
!827 = !{!"function_entry_count", i64 19550}
!828 = !{!"expr.c:do_store_flag"}
!829 = !{!"branch_weights", i32 39103, i32 382241601}
!830 = !{!"branch_weights", i32 1, i32 16798, i32 269, i32 1, i32 2486, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!831 = !{!"branch_weights", i32 15, i32 2472}
!832 = !{!"branch_weights", i32 15, i32 1}
!833 = !{!"branch_weights", i32 559951, i32 -645941153}
!834 = !{!"branch_weights", i32 329103230, i32 47937538}
!835 = !{!"branch_weights", i32 1, i32 17066}
!836 = !{!"branch_weights", i32 19551, i32 1}
!837 = !{!"branch_weights", i32 2120572825, i32 26910823}
!838 = !{!"function_entry_count", i64 342756}
!839 = !{!"expr.c:get_gimple_for_ssa_name"}
!840 = !{!841, !402, i64 8}
!841 = !{!"ssaexpand", !402, i64 0, !402, i64 8, !402, i64 16, !402, i64 24}
!842 = !{!"branch_weights", i32 1, i32 342757}
!843 = !{!"branch_weights", i32 239438, i32 103320}
!844 = !{!"function_entry_count", i64 236708}
!845 = !{!"expr.c:get_rtx_for_ssa_name"}
!846 = !{!841, !402, i64 0}
!847 = !{!848, !402, i64 0}
!848 = !{!"_var_map", !402, i64 0, !402, i64 8, !402, i64 16, !423, i64 24, !423, i64 28, !423, i64 32, !402, i64 40, !402, i64 48}
!849 = !{!850, !423, i64 0}
!850 = !{!"partition_elem", !423, i64 0, !402, i64 8, !423, i64 16}
!851 = !{!848, !402, i64 8}
!852 = !{!"branch_weights", i32 1, i32 236709}
!853 = !{!841, !402, i64 16}
!854 = !{!"expr.c:emutls_var_address"}
!855 = !{!"expr.c:const_vector_from_tree"}
!856 = distinct !{!856, !413}
!857 = distinct !{!857, !413}
!858 = !{!"function_entry_count", i64 63}
!859 = !{!"expr.c:expand_expr_constant"}
!860 = !{!"branch_weights", i32 1, i32 64}
!861 = !{!"expr.c:VEC_constructor_elt_base_length"}
!862 = !{!"expr.c:VEC_constructor_elt_base_index"}
!863 = !{!"expr.c:expand_constructor"}
!864 = !{!"function_entry_count", i64 6}
!865 = !{!"expr.c:is_aligning_offset"}
!866 = !{!"branch_weights", i32 343, i32 64, i32 56, i32 49}
!867 = distinct !{!867, !413}
!868 = distinct !{!868, !413}
!869 = distinct !{!869, !413}
!870 = !{!"expr.c:tsi_start"}
!871 = !{!"expr.c:tsi_end_p"}
!872 = !{!"expr.c:tsi_stmt"}
!873 = !{!874, !402, i64 16}
!874 = !{!"tree_statement_list_node", !402, i64 0, !402, i64 8, !402, i64 16}
!875 = !{!"expr.c:tsi_next"}
!876 = !{!877, !402, i64 0}
!877 = !{!"", !402, i64 0, !402, i64 8}
!878 = !{!874, !402, i64 8}
!879 = !{!"function_entry_count", i64 126}
!880 = !{!"expr.c:expand_expr_addr_expr"}
!881 = !{!"branch_weights", i32 127, i32 1}
!882 = !{!"branch_weights", i32 1, i32 254, i32 1}
!883 = !{!"branch_weights", i32 -33554432, i32 33554431}
!884 = !{!"function_entry_count", i64 23}
!885 = !{!"branch_weights", i32 1, i32 24}
!886 = !{!"expr.c:do_tablejump"}
!887 = !{!888, !402, i64 8}
!888 = !{!"function", !402, i64 0, !402, i64 8, !402, i64 16, !402, i64 24, !402, i64 32, !402, i64 40, !402, i64 48, !402, i64 56, !402, i64 64, !402, i64 72, !402, i64 80, !402, i64 88, !402, i64 96, !423, i64 104, !423, i64 108, !423, i64 112, !423, i64 116, !423, i64 120, !423, i64 124, !402, i64 128, !423, i64 136, !423, i64 137, !423, i64 138, !423, i64 138, !423, i64 138, !423, i64 138, !423, i64 138, !423, i64 138, !423, i64 138, !423, i64 139, !423, i64 139, !423, i64 139, !423, i64 139, !423, i64 139, !423, i64 139, !423, i64 139}
!889 = !{!890, !423, i64 68}
!890 = !{!"control_flow_graph", !402, i64 0, !402, i64 8, !402, i64 16, !423, i64 24, !423, i64 28, !423, i64 32, !402, i64 40, !423, i64 48, !403, i64 52, !403, i64 60, !423, i64 68, !423, i64 72}
!891 = !{!"branch_weights", i32 24, i32 1}
!892 = !{!491, !402, i64 1240}
!893 = !{!491, !402, i64 1232}
!894 = !{!"function_entry_count", i64 38}
!895 = !{!"branch_weights", i32 39, i32 1}
!896 = !{!642, !402, i64 656}
!897 = !{!"expr.c:store_by_pieces_2"}
!898 = distinct !{!898, !413}
!899 = !{!"expr.c:clear_by_pieces_1"}
!900 = !{!"expr.c:emit_move_change_mode"}
!901 = !{!"expr.c:undefined_operand_subword_p"}
!902 = !{!"expr.c:target_align"}
!903 = !{!"function_entry_count", i64 654}
!904 = !{!"expr.c:gimple_assign_rhs_code"}
!905 = !{!"branch_weights", i32 71, i32 585}
!906 = !{!"expr.c:gimple_expr_code"}
!907 = !{!"branch_weights", i32 1, i32 2620, i32 2, i32 1}
!908 = !{!"function_entry_count", i64 864}
!909 = !{!"expr.c:gimple_code"}
!910 = !{!"expr.c:gimple_op"}
!911 = !{!"branch_weights", i32 1, i32 71}
!912 = !{!"expr.c:gimple_has_ops"}
!913 = !{!"expr.c:gimple_ops"}
!914 = !{!"expr.c:gimple_statement_structure"}
!915 = !{!"expr.c:gss_for_code"}
!916 = !{!"expr.c:gimple_num_ops"}
!917 = !{!"expr.c:all_zeros_p"}
!918 = !{!"expr.c:mostly_zeros_p"}
!919 = !{!"expr.c:store_constructor"}
!920 = distinct !{!920, !413}
!921 = distinct !{!921, !413}
!922 = distinct !{!922, !413}
!923 = distinct !{!923, !413}
!924 = distinct !{!924, !413, !925, !926}
!925 = !{!"llvm.loop.isvectorized", i32 1}
!926 = !{!"llvm.loop.unroll.runtime.disable"}
!927 = distinct !{!927, !413}
!928 = distinct !{!928, !413}
!929 = !{!"expr.c:store_constructor_field"}
!930 = !{!"function_entry_count", i64 252}
!931 = !{!"expr.c:expand_expr_addr_expr_1"}
!932 = !{!"branch_weights", i32 64, i32 190}
!933 = !{!"branch_weights", i32 127, i32 1, i32 1, i32 1, i32 1, i32 64}
!934 = !{!"branch_weights", i32 190, i32 1}
!935 = !{!"branch_weights", i32 64, i32 1}
!936 = !{!"branch_weights", i32 129, i32 4096}
!937 = !{!"branch_weights", i32 4096, i32 129}
!938 = !{!"branch_weights", i32 255, i32 16129}
!939 = !{!"branch_weights", i32 64, i32 64}
