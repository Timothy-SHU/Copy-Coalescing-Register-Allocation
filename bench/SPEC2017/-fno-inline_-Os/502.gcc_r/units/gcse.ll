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
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.expr = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.cselib_val_struct = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.elt_loc_list = type { ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.reg_avail_info = type { ptr, i32, i32 }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.occr = type { ptr, ptr, i8, i8 }
%struct.ls_expr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.df_artificial_ref = type { %struct.df_base_ref, ptr }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.edge_list = type { i32, i32, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }

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
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
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
@switch.table.simple_mem = private unnamed_addr constant [10 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_copy_p(i32 noundef %0) local_unnamed_addr #0 !prof !425 {
  %2 = load i1, ptr @can_copy_p.can_copy_init_p, align 1
  br i1 %2, label %4, label %3, !prof !426

3:                                                ; preds = %1
  tail call fastcc void @compute_can_copy() #21
  store i1 true, ptr @can_copy_p.can_copy_init_p, align 1
  br label %4

4:                                                ; preds = %3, %1
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @can_copy, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !427
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_can_copy() unnamed_addr #0 !prof !430 !PGOFuncName !431 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(87) @can_copy, i8 0, i64 87, i1 false)
  tail call void @start_sequence() #22
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %8, %1 ]
  %3 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !427
  %5 = icmp ne i8 %4, 1
  %6 = zext i1 %5 to i8
  %7 = getelementptr inbounds [87 x i8], ptr @can_copy, i64 0, i64 %2
  store i8 %6, ptr %7, align 1
  %8 = add nuw nsw i64 %2, 1
  %9 = icmp eq i64 %8, 87
  br i1 %9, label %10, label %1, !prof !432, !llvm.loop !433

10:                                               ; preds = %1
  tail call void @end_sequence() #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @can_assign_to_reg_without_clobbers_p(ptr noundef %0) local_unnamed_addr #0 !prof !435 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  store i32 0, ptr %2, align 4, !tbaa !436
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef %5) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %55, !prof !438

8:                                                ; preds = %1
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 16711680
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %55, label %12, !prof !439

12:                                               ; preds = %8
  %13 = load ptr, ptr @test_insn, align 8, !tbaa !440
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %24, !prof !442

15:                                               ; preds = %12
  %16 = load i32, ptr @word_mode, align 4, !tbaa !436
  %17 = tail call ptr @gen_rtx_REG(i32 noundef %16, i32 noundef 106) #22
  %18 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !440
  %19 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %17, ptr noundef %18) #22
  %20 = tail call ptr @make_insn_raw(ptr noundef %19) #22
  store ptr %20, ptr @test_insn, align 8, !tbaa !440
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %22 = load i32, ptr %0, align 8
  %23 = and i32 %22, 16711680
  br label %24

24:                                               ; preds = %15, %12
  %25 = phi i32 [ %23, %15 ], [ %10, %12 ]
  %26 = phi ptr [ %20, %15 ], [ %13, %12 ]
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !427
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !427
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, -16711681
  %33 = or disjoint i32 %32, %25
  store i32 %33, ptr %30, align 8
  %34 = load ptr, ptr @test_insn, align 8, !tbaa !440
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !427
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %0, ptr %37, align 8, !tbaa !427
  %38 = load ptr, ptr %35, align 8, !tbaa !427
  %39 = call i32 @recog(ptr noundef %38, ptr noundef %34, ptr noundef nonnull %2) #22
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %55, label %41, !prof !443

41:                                               ; preds = %24
  %42 = load i32, ptr %2, align 4, !tbaa !436
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %47, !prof !444

44:                                               ; preds = %41
  %45 = call i32 @added_clobbers_hard_reg_p(i32 noundef %39) #22
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55, !prof !445

47:                                               ; preds = %44, %41
  %48 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 37), align 8, !tbaa !446
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50, !prof !459

50:                                               ; preds = %47
  %51 = load ptr, ptr @test_insn, align 8, !tbaa !440
  %52 = call zeroext i8 %48(ptr noundef %51) #22
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %50, %44, %24, %8, %1, %54
  %56 = phi i8 [ 1, %54 ], [ 1, %1 ], [ 0, %8 ], [ 0, %24 ], [ 0, %44 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  ret i8 %56
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @general_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_insn_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @added_clobbers_hard_reg_p(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fis_get_condition(ptr noundef %0) local_unnamed_addr #0 !prof !460 {
  %2 = tail call ptr @get_condition(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 1) #22
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @get_condition(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_rtl_cprop() #0 !prof !461 !PGOFuncName !462 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !436
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_gcse, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %16, !prof !463

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !440
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16, !prof !464

12:                                               ; preds = %6
  %13 = tail call zeroext i8 @dbg_cnt(i32 noundef 4) #22
  %14 = icmp ne i8 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %12, %6, %0
  %17 = phi i8 [ 0, %6 ], [ 0, %0 ], [ %15, %12 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_rtl_cprop() #0 !prof !461 !PGOFuncName !465 {
  %1 = tail call zeroext i8 @delete_unreachable_blocks() #22
  %2 = tail call i32 @df_set_flags(i32 noundef 1) #22
  tail call void @df_analyze() #22
  %3 = tail call fastcc i32 @one_cprop_pass() #21, !range !466
  %4 = load i32, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !436
  %5 = or i32 %4, %3
  store i32 %5, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !436
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_rtl_pre() #0 !prof !467 !PGOFuncName !468 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !436
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_gcse, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %19, !prof !469

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !440
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19, !prof !470

12:                                               ; preds = %6
  %13 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef nonnull %7) #22
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15, !prof !471

15:                                               ; preds = %12
  %16 = tail call zeroext i8 @dbg_cnt(i32 noundef 23) #22
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %15, %12, %6, %0
  %20 = phi i8 [ 0, %12 ], [ 0, %6 ], [ 0, %0 ], [ %18, %15 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_rtl_pre() #0 !prof !467 !PGOFuncName !472 {
  %1 = tail call zeroext i8 @delete_unreachable_blocks() #22
  tail call void @df_analyze() #22
  %2 = tail call fastcc i32 @one_pre_gcse_pass() #21, !range !466
  %3 = load i32, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !436
  %4 = or i32 %3, %2
  store i32 %4, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !436
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_rtl_hoist() #0 !prof !467 !PGOFuncName !473 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !436
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_gcse, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %19, !prof !469

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !440
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19, !prof !470

12:                                               ; preds = %6
  %13 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef nonnull %7) #22
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15, !prof !470

15:                                               ; preds = %12
  %16 = tail call zeroext i8 @dbg_cnt(i32 noundef 16) #22
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %15, %12, %6, %0
  %20 = phi i8 [ 0, %12 ], [ 0, %6 ], [ 0, %0 ], [ %18, %15 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_rtl_hoist() #0 !prof !474 !PGOFuncName !475 {
  %1 = tail call zeroext i8 @delete_unreachable_blocks() #22
  tail call void @df_analyze() #22
  %2 = tail call fastcc i32 @one_code_hoisting_pass() #21, !range !466
  %3 = load i32, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !436
  %4 = or i32 %3, %2
  store i32 %4, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !436
  ret i32 0
}

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @one_cprop_pass() unnamed_addr #0 !prof !461 !PGOFuncName !476 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !440
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !477
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !479
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %130, label %7, !prof !481

7:                                                ; preds = %0
  %8 = tail call fastcc zeroext i8 @is_too_expensive(ptr noundef nonnull @.str.3) #21, !range !482
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %130, !prof !483

10:                                               ; preds = %7
  store i32 0, ptr @local_const_prop_count, align 4, !tbaa !436
  store i32 0, ptr @global_const_prop_count, align 4, !tbaa !436
  store i32 0, ptr @local_copy_prop_count, align 4, !tbaa !436
  store i32 0, ptr @global_copy_prop_count, align 4, !tbaa !436
  store i32 0, ptr @bytes_used, align 4, !tbaa !436
  %11 = tail call i32 @_obstack_begin(ptr noundef nonnull @gcse_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #22
  tail call fastcc void @alloc_gcse_mem() #21
  %12 = tail call fastcc i32 @local_cprop_pass() #21, !range !466
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !484

14:                                               ; preds = %10
  %15 = tail call zeroext i8 @delete_unreachable_blocks() #22
  tail call void @df_analyze() #22
  br label %16

16:                                               ; preds = %14, %10
  %17 = load ptr, ptr @cfun, align 8, !tbaa !440
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !477
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !485
  %22 = sext i32 %21 to i64
  %23 = tail call ptr @xcalloc(i64 noundef %22, i64 noundef 8) #22
  store ptr %23, ptr @implicit_sets, align 8, !tbaa !440
  tail call fastcc void @find_implicit_sets() #21
  tail call fastcc void @alloc_hash_table(ptr noundef nonnull @set_hash_table, i32 noundef 1) #21
  tail call fastcc void @compute_hash_table(ptr noundef nonnull @set_hash_table) #21
  %24 = load ptr, ptr @implicit_sets, align 8, !tbaa !440
  tail call void @free(ptr noundef %24) #21
  store ptr null, ptr @implicit_sets, align 8, !tbaa !440
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !486

27:                                               ; preds = %16
  tail call fastcc void @dump_hash_table(ptr noundef nonnull %25, ptr noundef nonnull @.str.4, ptr noundef nonnull @set_hash_table) #21
  br label %28

28:                                               ; preds = %27, %16
  %29 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @set_hash_table, i64 0, i32 2), align 4, !tbaa !487
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %95, label %31, !prof !489

31:                                               ; preds = %28
  %32 = load ptr, ptr @cfun, align 8, !tbaa !440
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !477
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !485
  tail call fastcc void @alloc_cprop_mem(i32 noundef %36, i32 noundef %29) #21
  tail call fastcc void @compute_cprop_data() #21
  %37 = load ptr, ptr @cfun, align 8, !tbaa !440
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !477
  %40 = load ptr, ptr %39, align 8, !tbaa !490
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !491
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !491
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !493
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %91, label %48, !prof !494

48:                                               ; preds = %31, %81
  %49 = phi ptr [ %84, %81 ], [ %44, %31 ]
  %50 = phi i32 [ %82, %81 ], [ 0, %31 ]
  tail call fastcc void @reset_opr_set_tables() #21
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !427
  %53 = load ptr, ptr %52, align 8, !tbaa !427
  %54 = icmp eq ptr %53, null
  br i1 %54, label %81, label %55, !prof !494

55:                                               ; preds = %48, %76
  %56 = phi ptr [ %79, %76 ], [ %53, %48 ]
  %57 = phi i32 [ %77, %76 ], [ %50, %48 ]
  %58 = load ptr, ptr %51, align 8, !tbaa !427
  %59 = getelementptr inbounds %struct.rtl_bb_info, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !495
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !427
  %63 = icmp eq ptr %56, %62
  br i1 %63, label %81, label %64, !prof !497

64:                                               ; preds = %55
  %65 = load i32, ptr %56, align 8
  %66 = and i32 %65, 65535
  %67 = add nsw i32 %66, -7
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %69, label %76, !prof !498

69:                                               ; preds = %64
  %70 = tail call fastcc i32 @cprop_insn(ptr noundef nonnull %56) #21
  %71 = or i32 %70, %57
  %72 = load i32, ptr %56, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 13
  br i1 %74, label %76, label %75, !prof !499

75:                                               ; preds = %69
  tail call fastcc void @mark_oprs_set(ptr noundef nonnull %56) #21
  br label %76

76:                                               ; preds = %64, %75, %69
  %77 = phi i32 [ %71, %69 ], [ %71, %75 ], [ %57, %64 ]
  %78 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 2
  %79 = load ptr, ptr %78, align 8, !tbaa !427
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %55, !prof !500, !llvm.loop !501

81:                                               ; preds = %76, %55, %48
  %82 = phi i32 [ %50, %48 ], [ %57, %55 ], [ %77, %76 ]
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 6
  %84 = load ptr, ptr %83, align 8, !tbaa !491
  %85 = load ptr, ptr @cfun, align 8, !tbaa !440
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !477
  %88 = getelementptr inbounds %struct.control_flow_graph, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !493
  %90 = icmp eq ptr %84, %89
  br i1 %90, label %91, label %48, !prof !502, !llvm.loop !503

91:                                               ; preds = %81, %31
  %92 = phi i32 [ 0, %31 ], [ %82, %81 ]
  %93 = tail call fastcc i32 @bypass_conditional_jumps() #21, !range !466
  %94 = or i32 %93, %92
  tail call fastcc void @free_cprop_mem() #21
  br label %95

95:                                               ; preds = %91, %28
  %96 = phi i32 [ %94, %91 ], [ 0, %28 ]
  tail call fastcc void @free_hash_table(ptr noundef nonnull @set_hash_table) #21
  tail call fastcc void @free_gcse_mem() #21
  %97 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 1), align 8, !tbaa !504
  %98 = ptrtoint ptr %97 to i64
  %99 = sub i64 0, %98
  store i64 %99, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !506
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %108, !prof !489

101:                                              ; preds = %95
  %102 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !507
  %103 = ptrtoint ptr %102 to i64
  %104 = sub i64 %103, %98
  %105 = icmp sgt i64 %104, %99
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = getelementptr inbounds i8, ptr %97, i64 %99
  store ptr %107, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !508
  store ptr %107, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !509
  br label %110

108:                                              ; preds = %101, %95
  %109 = getelementptr inbounds i8, ptr %97, i64 %99
  tail call void @obstack_free(ptr noundef nonnull @gcse_obstack, ptr noundef %109) #22
  br label %110

110:                                              ; preds = %108, %106
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %112 = icmp eq ptr %111, null
  br i1 %112, label %130, label %113, !prof !486

113:                                              ; preds = %110
  %114 = tail call ptr @current_function_name() #22
  %115 = load ptr, ptr @cfun, align 8, !tbaa !440
  %116 = getelementptr inbounds %struct.function, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !477
  %118 = getelementptr inbounds %struct.control_flow_graph, ptr %117, i64 0, i32 3
  %119 = load i32, ptr %118, align 8, !tbaa !479
  %120 = load i32, ptr @bytes_used, align 4, !tbaa !436
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %111, ptr noundef nonnull @.str.5, ptr noundef %114, i32 noundef %119, i32 noundef %120) #21
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %123 = load i32, ptr @local_const_prop_count, align 4, !tbaa !436
  %124 = load i32, ptr @local_copy_prop_count, align 4, !tbaa !436
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef nonnull @.str.6, i32 noundef %123, i32 noundef %124) #21
  %126 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %127 = load i32, ptr @global_const_prop_count, align 4, !tbaa !436
  %128 = load i32, ptr @global_copy_prop_count, align 4, !tbaa !436
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str.7, i32 noundef %127, i32 noundef %128) #21
  br label %130

130:                                              ; preds = %110, %113, %0, %7
  %131 = phi i32 [ 0, %7 ], [ 0, %0 ], [ %96, %113 ], [ %96, %110 ]
  ret i32 %131
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_too_expensive(ptr noundef %0) unnamed_addr #0 !prof !510 !PGOFuncName !511 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !440
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !477
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !512
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !479
  %9 = shl nsw i32 %8, 2
  %10 = add nsw i32 %9, 20000
  %11 = icmp sgt i32 %6, %10
  br i1 %11, label %12, label %15, !prof !513

12:                                               ; preds = %1
  %13 = sdiv i32 %6, %8
  %14 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 69, ptr noundef nonnull @.str.8, ptr noundef %0, i32 noundef %8, i32 noundef %13) #22
  br label %35

15:                                               ; preds = %1
  %16 = tail call i32 @max_reg_num() #22
  %17 = add i32 %16, 63
  %18 = lshr i32 %17, 6
  %19 = mul i32 %18, %8
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 3
  %22 = load ptr, ptr @compiler_params, align 8, !tbaa !440
  %23 = getelementptr inbounds %struct.param_info, ptr %22, i64 23, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !514
  %25 = sext i32 %24 to i64
  %26 = icmp ugt i64 %21, %25
  br i1 %26, label %27, label %35, !prof !516

27:                                               ; preds = %15
  %28 = load ptr, ptr @cfun, align 8, !tbaa !440
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !477
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !479
  %33 = tail call i32 @max_reg_num() #22
  %34 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 69, ptr noundef nonnull @.str.9, ptr noundef %0, i32 noundef %32, i32 noundef %33) #22
  br label %35

35:                                               ; preds = %15, %27, %12
  %36 = phi i8 [ 1, %12 ], [ 1, %27 ], [ 0, %15 ]
  ret i8 %36
}

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_gcse_mem() unnamed_addr #0 !prof !517 !PGOFuncName !518 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %1, ptr @reg_set_bitmap, align 8, !tbaa !440
  %2 = load ptr, ptr @cfun, align 8, !tbaa !440
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !477
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !485
  %7 = sext i32 %6 to i64
  %8 = tail call fastcc ptr @gcalloc(i64 noundef %7) #21
  store ptr %8, ptr @modify_mem_list, align 8, !tbaa !440
  %9 = load ptr, ptr @cfun, align 8, !tbaa !440
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !477
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !485
  %14 = sext i32 %13 to i64
  %15 = tail call fastcc ptr @gcalloc(i64 noundef %14) #21
  store ptr %15, ptr @canon_modify_mem_list, align 8, !tbaa !440
  %16 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %16, ptr @modify_mem_list_set, align 8, !tbaa !440
  %17 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #22
  store ptr %17, ptr @blocks_with_calls, align 8, !tbaa !440
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @local_cprop_pass() unnamed_addr #0 !prof !519 !PGOFuncName !520 {
  tail call void @cselib_init(i32 noundef 0) #22
  %1 = load ptr, ptr @cfun, align 8, !tbaa !440
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !477
  %4 = load ptr, ptr %3, align 8, !tbaa !490
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !491
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !493
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %77, label %10, !prof !494

10:                                               ; preds = %0, %65
  %11 = phi ptr [ %68, %65 ], [ %6, %0 ]
  %12 = phi i8 [ %66, %65 ], [ 0, %0 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !427
  %15 = load ptr, ptr %14, align 8, !tbaa !427
  %16 = icmp eq ptr %15, null
  br i1 %16, label %65, label %17, !prof !494

17:                                               ; preds = %10, %60
  %18 = phi ptr [ %63, %60 ], [ %15, %10 ]
  %19 = phi i8 [ %61, %60 ], [ %12, %10 ]
  %20 = load ptr, ptr %13, align 8, !tbaa !427
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !495
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !427
  %25 = icmp eq ptr %18, %24
  br i1 %25, label %65, label %26, !prof !521

26:                                               ; preds = %17
  %27 = load i32, ptr %18, align 8
  %28 = and i32 %27, 65535
  %29 = add nsw i32 %28, -7
  %30 = icmp ult i32 %29, 4
  br i1 %30, label %31, label %60, !prof !522

31:                                               ; preds = %26
  %32 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %18) #22
  %33 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 1
  %34 = icmp eq ptr %32, null
  br label %35

35:                                               ; preds = %52, %31
  %36 = phi i8 [ %19, %31 ], [ %54, %52 ]
  store i32 0, ptr @reg_use_count, align 4, !tbaa !436
  tail call void @note_uses(ptr noundef nonnull %33, ptr noundef nonnull @local_cprop_find_used_regs, ptr noundef null) #22
  br i1 %34, label %39, label %37, !prof !523

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  tail call void @local_cprop_find_used_regs(ptr noundef nonnull %38, ptr noundef null) #21
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, ptr @reg_use_count, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %52, !prof !524

42:                                               ; preds = %39, %48
  %43 = phi ptr [ %49, %48 ], [ @reg_use_table, %39 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !525
  %45 = tail call fastcc zeroext i8 @do_local_cprop(ptr noundef %44, ptr noundef nonnull %18) #21
  %46 = icmp eq i8 %45, 0
  %47 = load i32, ptr @reg_use_count, align 4
  br i1 %46, label %48, label %52, !prof !527

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.reg_use, ptr %43, i64 1
  %50 = add nsw i32 %47, -1
  store i32 %50, ptr @reg_use_count, align 4, !tbaa !436
  %51 = icmp sgt i32 %47, 1
  br i1 %51, label %42, label %52, !prof !528, !llvm.loop !529

52:                                               ; preds = %48, %42, %39
  %53 = phi i32 [ %40, %39 ], [ %47, %42 ], [ %50, %48 ]
  %54 = phi i8 [ %36, %39 ], [ 1, %42 ], [ %36, %48 ]
  %55 = load i32, ptr %18, align 8
  %56 = and i32 %55, 134217728
  %57 = icmp eq i32 %56, 0
  %58 = icmp ne i32 %53, 0
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %35, label %60, !prof !530, !llvm.loop !531

60:                                               ; preds = %52, %26
  %61 = phi i8 [ %19, %26 ], [ %54, %52 ]
  tail call void @cselib_process_insn(ptr noundef nonnull %18) #22
  %62 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !427
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %17, !prof !532, !llvm.loop !533

65:                                               ; preds = %17, %60, %10
  %66 = phi i8 [ %12, %10 ], [ %61, %60 ], [ %19, %17 ]
  tail call void @cselib_clear_table() #22
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !491
  %69 = load ptr, ptr @cfun, align 8, !tbaa !440
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !477
  %72 = getelementptr inbounds %struct.control_flow_graph, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !493
  %74 = icmp eq ptr %68, %73
  br i1 %74, label %75, label %10, !prof !534, !llvm.loop !535

75:                                               ; preds = %65
  %76 = zext nneg i8 %66 to i32
  br label %77

77:                                               ; preds = %75, %0
  %78 = phi i32 [ 0, %0 ], [ %76, %75 ]
  tail call void @cselib_finish() #22
  ret i32 %78
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_implicit_sets() unnamed_addr #0 !prof !519 !PGOFuncName !536 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !440
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !477
  %4 = load ptr, ptr %3, align 8, !tbaa !490
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !491
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !493
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %100, label %10, !prof !494

10:                                               ; preds = %0, %90
  %11 = phi ptr [ %93, %90 ], [ %6, %0 ]
  %12 = phi i32 [ %91, %90 ], [ 0, %0 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !537
  %15 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %14) #21
  %16 = icmp ugt i32 %15, 1
  br i1 %16, label %17, label %90, !prof !538

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !427
  %20 = getelementptr inbounds %struct.rtl_bb_info, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !495
  %22 = tail call ptr @fis_get_condition(ptr noundef %21) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %90, label %24, !prof !539

24:                                               ; preds = %17
  %25 = load i32, ptr %22, align 8
  %26 = and i32 %25, 65534
  %27 = icmp eq i32 %26, 80
  br i1 %27, label %28, label %90, !prof !540

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !427
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %90, !prof !541

34:                                               ; preds = %28
  %35 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %30) #21
  %36 = icmp ugt i32 %35, 52
  br i1 %36, label %37, label %90, !prof !542

37:                                               ; preds = %34
  %38 = tail call fastcc zeroext i8 @implicit_set_cond_p(ptr noundef nonnull %22) #21, !range !482
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %90, label %40, !prof !543

40:                                               ; preds = %37
  %41 = load i32, ptr %22, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 81
  %44 = load ptr, ptr %13, align 8, !tbaa !537
  %45 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %44, i32 noundef 0) #21
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !544
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %43, label %50, label %51, !prof !546

50:                                               ; preds = %40
  br i1 %49, label %54, label %52, !prof !547

51:                                               ; preds = %40
  br i1 %49, label %52, label %54, !prof !548

52:                                               ; preds = %51, %50
  %53 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %44, i32 noundef 1) #21
  br label %54

54:                                               ; preds = %52, %51, %50
  %55 = phi ptr [ %45, %50 ], [ %45, %51 ], [ %53, %52 ]
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !549
  %58 = icmp eq ptr %57, null
  br i1 %58, label %90, label %59, !prof !543

59:                                               ; preds = %54
  %60 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %57) #21, !range !482
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %90, label %62, !prof !550

62:                                               ; preds = %59
  %63 = load ptr, ptr @cfun, align 8, !tbaa !440
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !477
  %66 = getelementptr inbounds %struct.control_flow_graph, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !493
  %68 = icmp eq ptr %57, %67
  br i1 %68, label %90, label %69, !prof !551

69:                                               ; preds = %62
  %70 = load ptr, ptr %29, align 8, !tbaa !427
  %71 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !427
  %73 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %70, ptr noundef %72) #22
  %74 = load ptr, ptr @implicit_sets, align 8, !tbaa !440
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !552
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %74, i64 %77
  store ptr %73, ptr %78, align 8, !tbaa !440
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %80 = icmp eq ptr %79, null
  br i1 %80, label %88, label %81, !prof !553

81:                                               ; preds = %69
  %82 = load ptr, ptr %29, align 8, !tbaa !427
  %83 = tail call fastcc i32 @rhs_regno(ptr noundef %82) #21
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %79, ptr noundef nonnull @.str.18, i32 noundef %83) #21
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %86 = load i32, ptr %75, align 8, !tbaa !552
  %87 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.19, i32 noundef %86) #21
  br label %88

88:                                               ; preds = %81, %69
  %89 = add i32 %12, 1
  br label %90

90:                                               ; preds = %24, %10, %54, %59, %62, %88, %37, %34, %28, %17
  %91 = phi i32 [ %89, %88 ], [ %12, %62 ], [ %12, %59 ], [ %12, %54 ], [ %12, %37 ], [ %12, %34 ], [ %12, %28 ], [ %12, %17 ], [ %12, %10 ], [ %12, %24 ]
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !491
  %94 = load ptr, ptr @cfun, align 8, !tbaa !440
  %95 = getelementptr inbounds %struct.function, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !477
  %97 = getelementptr inbounds %struct.control_flow_graph, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !493
  %99 = icmp eq ptr %93, %98
  br i1 %99, label %100, label %10, !prof !534, !llvm.loop !554

100:                                              ; preds = %90, %0
  %101 = phi i32 [ 0, %0 ], [ %91, %90 ]
  %102 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104, !prof !486

104:                                              ; preds = %100
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %102, ptr noundef nonnull @.str.20, i32 noundef %101) #21
  br label %106

106:                                              ; preds = %104, %100
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_hash_table(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #0 !prof !517 !PGOFuncName !555 {
  %3 = tail call i32 @get_max_insn_count() #22
  %4 = sdiv i32 %3, 4
  %5 = icmp ult i32 %4, 11
  br i1 %5, label %6, label %7, !prof !556

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi i32 [ 11, %6 ], [ %4, %2 ]
  %9 = getelementptr inbounds %struct.hash_table_d, ptr %0, i64 0, i32 1
  %10 = or i32 %8, 1
  store i32 %10, ptr %9, align 8, !tbaa !557
  %11 = shl i32 %10, 3
  %12 = sext i32 %11 to i64
  %13 = tail call fastcc ptr @gmalloc(i64 noundef %12) #21
  store ptr %13, ptr %0, align 8, !tbaa !558
  %14 = getelementptr inbounds %struct.hash_table_d, ptr %0, i64 0, i32 3
  store i32 %1, ptr %14, align 8, !tbaa !559
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_hash_table(ptr nocapture noundef %0) unnamed_addr #0 !prof !517 !PGOFuncName !560 {
  %2 = getelementptr inbounds %struct.hash_table_d, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 4, !tbaa !487
  %3 = load ptr, ptr %0, align 8, !tbaa !558
  %4 = getelementptr inbounds %struct.hash_table_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !557
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %7, i1 false)
  tail call fastcc void @compute_hash_table_work(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_hash_table(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !474 !PGOFuncName !561 {
  %4 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !487
  %6 = zext i32 %5 to i64
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 8) #22
  %8 = load i32, ptr %4, align 4, !tbaa !487
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 2
  %11 = tail call ptr @xmalloc(i64 noundef %10) #22
  %12 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !557
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %3, %36
  %16 = phi i32 [ %37, %36 ], [ %13, %3 ]
  %17 = phi i64 [ %38, %36 ], [ 0, %3 ]
  %18 = load ptr, ptr %2, align 8, !tbaa !558
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !440
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %15
  %23 = trunc i64 %17 to i32
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi ptr [ %32, %24 ], [ %20, %22 ]
  %26 = getelementptr inbounds %struct.expr, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !562
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %7, i64 %28
  store ptr %25, ptr %29, align 8, !tbaa !440
  %30 = getelementptr inbounds i32, ptr %11, i64 %28
  store i32 %23, ptr %30, align 4, !tbaa !436
  %31 = getelementptr inbounds %struct.expr, ptr %25, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !440
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %24, !llvm.loop !564

34:                                               ; preds = %24
  %35 = load i32, ptr %12, align 8, !tbaa !557
  br label %36

36:                                               ; preds = %34, %15
  %37 = phi i32 [ %35, %34 ], [ %16, %15 ]
  %38 = add nuw nsw i64 %17, 1
  %39 = sext i32 %37 to i64
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %15, label %41, !llvm.loop !565

41:                                               ; preds = %36, %3
  %42 = phi i32 [ %13, %3 ], [ %37, %36 ]
  %43 = load i32, ptr %4, align 4, !tbaa !487
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %1, i32 noundef %42, i32 noundef %43) #21
  %45 = load i32, ptr %4, align 4, !tbaa !487
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %41, %62
  %48 = phi i32 [ %63, %62 ], [ %45, %41 ]
  %49 = phi i64 [ %64, %62 ], [ 0, %41 ]
  %50 = getelementptr inbounds ptr, ptr %7, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !440
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.expr, ptr %51, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !562
  %56 = getelementptr inbounds i32, ptr %11, i64 %49
  %57 = load i32, ptr %56, align 4, !tbaa !436
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %55, i32 noundef %57) #21
  %59 = load ptr, ptr %51, align 8, !tbaa !566
  tail call void @print_rtl(ptr noundef %0, ptr noundef %59) #22
  %60 = tail call i32 @fputc(i32 10, ptr %0)
  %61 = load i32, ptr %4, align 4, !tbaa !487
  br label %62

62:                                               ; preds = %47, %53
  %63 = phi i32 [ %48, %47 ], [ %61, %53 ]
  %64 = add nuw nsw i64 %49, 1
  %65 = sext i32 %63 to i64
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %47, label %67, !llvm.loop !567

67:                                               ; preds = %62, %41
  %68 = tail call i32 @fputc(i32 10, ptr %0)
  tail call void @free(ptr noundef %7) #21
  tail call void @free(ptr noundef %11) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_cprop_mem(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !519 !PGOFuncName !568 {
  %3 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #22
  store ptr %3, ptr @cprop_pavloc, align 8, !tbaa !440
  %4 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #22
  store ptr %4, ptr @cprop_absaltered, align 8, !tbaa !440
  %5 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #22
  store ptr %5, ptr @cprop_avin, align 8, !tbaa !440
  %6 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #22
  store ptr %6, ptr @cprop_avout, align 8, !tbaa !440
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_cprop_data() unnamed_addr #0 !prof !519 !PGOFuncName !569 {
  %1 = load ptr, ptr @cprop_absaltered, align 8, !tbaa !440
  %2 = load ptr, ptr @cprop_pavloc, align 8, !tbaa !440
  tail call fastcc void @compute_local_properties(ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull @set_hash_table) #21
  %3 = load ptr, ptr @cprop_pavloc, align 8, !tbaa !440
  %4 = load ptr, ptr @cprop_absaltered, align 8, !tbaa !440
  %5 = load ptr, ptr @cprop_avout, align 8, !tbaa !440
  %6 = load ptr, ptr @cprop_avin, align 8, !tbaa !440
  tail call void @compute_available(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reset_opr_set_tables() unnamed_addr #0 !prof !570 !PGOFuncName !571 {
  %1 = load ptr, ptr @reg_set_bitmap, align 8, !tbaa !440
  tail call void @bitmap_clear(ptr noundef %1) #22
  tail call fastcc void @clear_modify_mem_tables() #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cprop_insn(ptr noundef %0) unnamed_addr #0 !prof !572 !PGOFuncName !573 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %95, !prof !574

6:                                                ; preds = %1
  store i32 0, ptr @reg_use_count, align 4, !tbaa !436
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  tail call void @note_uses(ptr noundef nonnull %8, ptr noundef nonnull @find_used_regs, ptr noundef null) #22
  %9 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %0) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !575

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  tail call void @find_used_regs(ptr noundef nonnull %12, ptr noundef null) #21
  br label %13

13:                                               ; preds = %11, %6
  %14 = load i32, ptr @reg_use_count, align 4, !tbaa !436
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %95, !prof !576

16:                                               ; preds = %13, %82
  %17 = phi ptr [ %84, %82 ], [ @reg_use_table, %13 ]
  %18 = phi i32 [ %83, %82 ], [ 0, %13 ]
  %19 = load ptr, ptr %17, align 8, !tbaa !525
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef %19) #21
  %21 = tail call fastcc i32 @oprs_not_set_p(ptr noundef %19, ptr noundef nonnull %0) #21, !range !466
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %82, label %23, !prof !577

23:                                               ; preds = %16
  %24 = tail call fastcc ptr @find_avail_set(i32 noundef %20, ptr noundef nonnull %0) #21
  %25 = icmp eq ptr %24, null
  br i1 %25, label %82, label %26, !prof !578

26:                                               ; preds = %23
  %27 = load ptr, ptr %24, align 8, !tbaa !566
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 23
  br i1 %30, label %32, label %31, !prof !579

31:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 2554, ptr noundef nonnull @.str.17) #22
  br label %32

32:                                               ; preds = %26, %31
  %33 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !427
  %35 = tail call fastcc zeroext i8 @gcse_constant_p(ptr noundef %34) #21, !range !482
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %58, label %37, !prof !580

37:                                               ; preds = %32
  %38 = load ptr, ptr %17, align 8, !tbaa !525
  %39 = tail call fastcc zeroext i8 @constprop_register(ptr noundef nonnull %0, ptr noundef %38, ptr noundef %34) #21, !range !482
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %82, label %41, !prof !581

41:                                               ; preds = %37
  %42 = load i32, ptr @global_const_prop_count, align 4, !tbaa !436
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @global_const_prop_count, align 4, !tbaa !436
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.24, i32 noundef %20) #21
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %49 = load i32, ptr %7, align 8, !tbaa !427
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.11, i32 noundef %49) #21
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !440
  tail call void @print_rtl(ptr noundef %51, ptr noundef %34) #22
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %53 = tail call i32 @fputc(i32 10, ptr %52)
  br label %54

54:                                               ; preds = %46, %41
  %55 = load i32, ptr %0, align 8
  %56 = and i32 %55, 134217728
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %82, label %95

58:                                               ; preds = %32
  %59 = load i32, ptr %34, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 37
  br i1 %61, label %62, label %82, !prof !582

62:                                               ; preds = %58
  %63 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %34) #21
  %64 = icmp ult i32 %63, 53
  %65 = icmp eq i32 %63, %20
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %82, label %67, !prof !583

67:                                               ; preds = %62
  %68 = load ptr, ptr %17, align 8, !tbaa !525
  %69 = tail call fastcc i32 @try_replace_reg(ptr noundef %68, ptr noundef nonnull %34, ptr noundef nonnull %0) #21, !range !466
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %82, label %71, !prof !584

71:                                               ; preds = %67
  %72 = load i32, ptr @global_copy_prop_count, align 4, !tbaa !436
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr @global_copy_prop_count, align 4, !tbaa !436
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76, !prof !585

76:                                               ; preds = %71
  %77 = load i32, ptr %7, align 8, !tbaa !427
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %74, ptr noundef nonnull @.str.25, i32 noundef %20, i32 noundef %77) #21
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %80 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %34) #21
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.14, i32 noundef %80) #21
  br label %82

82:                                               ; preds = %54, %16, %23, %58, %62, %71, %76, %67, %37
  %83 = phi i32 [ %18, %58 ], [ %18, %62 ], [ %18, %67 ], [ 1, %71 ], [ 1, %76 ], [ %18, %37 ], [ %18, %23 ], [ %18, %16 ], [ 1, %54 ]
  %84 = getelementptr inbounds %struct.reg_use, ptr %17, i64 1
  %85 = load i32, ptr @reg_use_count, align 4, !tbaa !436
  %86 = add nsw i32 %85, -1
  store i32 %86, ptr @reg_use_count, align 4, !tbaa !436
  %87 = icmp sgt i32 %85, 1
  br i1 %87, label %16, label %88, !prof !586, !llvm.loop !587

88:                                               ; preds = %82
  %89 = icmp eq i32 %83, 0
  br i1 %89, label %95, label %90, !prof !588

90:                                               ; preds = %88
  %91 = load i32, ptr %0, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 7
  %94 = select i1 %93, i32 0, i32 %83, !prof !589
  br label %95

95:                                               ; preds = %54, %90, %13, %88, %1
  %96 = phi i32 [ 0, %1 ], [ 0, %88 ], [ 0, %13 ], [ %94, %90 ], [ 1, %54 ]
  ret i32 %96
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_oprs_set(ptr noundef %0) unnamed_addr #0 !prof !572 !PGOFuncName !590 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !427
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %30 [
    i16 23, label %11
    i16 15, label %6
    i16 25, label %28
    i16 26, label %29
  ], !prof !591

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !427
  %9 = load i32, ptr %8, align 8, !tbaa !592
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %12, label %30, !prof !594

11:                                               ; preds = %1
  tail call fastcc void @mark_set(ptr noundef nonnull %3, ptr noundef nonnull %0) #21
  br label %30

12:                                               ; preds = %6, %22
  %13 = phi i64 [ %23, %22 ], [ 0, %6 ]
  %14 = phi ptr [ %24, %22 ], [ %8, %6 ]
  %15 = getelementptr inbounds %struct.rtvec_def, ptr %14, i64 0, i32 1, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !440
  %17 = load i32, ptr %16, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %22 [
    i16 23, label %19
    i16 25, label %20
    i16 26, label %21
  ], !prof !595

19:                                               ; preds = %12
  tail call fastcc void @mark_set(ptr noundef nonnull %16, ptr noundef %0) #21
  br label %22

20:                                               ; preds = %12
  tail call fastcc void @mark_clobber(ptr noundef nonnull %16, ptr noundef %0) #21
  br label %22

21:                                               ; preds = %12
  tail call fastcc void @mark_call(ptr noundef %0) #21
  br label %22

22:                                               ; preds = %12, %20, %21, %19
  %23 = add nuw nsw i64 %13, 1
  %24 = load ptr, ptr %7, align 8, !tbaa !427
  %25 = load i32, ptr %24, align 8, !tbaa !592
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %12, label %30, !prof !596, !llvm.loop !597

28:                                               ; preds = %1
  tail call fastcc void @mark_clobber(ptr noundef nonnull %3, ptr noundef nonnull %0) #21
  br label %30

29:                                               ; preds = %1
  tail call fastcc void @mark_call(ptr noundef nonnull %0) #21
  br label %30

30:                                               ; preds = %22, %6, %1, %29, %28, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bypass_conditional_jumps() unnamed_addr #0 !prof !519 !PGOFuncName !598 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !440
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !477
  %4 = load ptr, ptr %3, align 8, !tbaa !490
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !491
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !493
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %91, label %10, !prof !489

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !485
  store i32 %12, ptr @bypass_last_basic_block, align 4, !tbaa !436
  %13 = tail call zeroext i8 @mark_dfs_back_edges() #22
  %14 = load ptr, ptr @cfun, align 8, !tbaa !440
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !477
  %17 = load ptr, ptr %16, align 8, !tbaa !490
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !491
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !491
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !493
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %91, label %25, !prof !494

25:                                               ; preds = %10, %78
  %26 = phi ptr [ %81, %78 ], [ %21, %10 ]
  %27 = phi i32 [ %79, %78 ], [ 0, %10 ]
  %28 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %26) #21, !range !482
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %78, !prof !599

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !427
  %33 = load ptr, ptr %32, align 8, !tbaa !427
  %34 = icmp eq ptr %33, null
  br i1 %34, label %78, label %35, !prof !600

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.rtl_bb_info, ptr %32, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !495
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !427
  br label %40

40:                                               ; preds = %35, %73
  %41 = phi ptr [ %33, %35 ], [ %76, %73 ]
  %42 = phi ptr [ null, %35 ], [ %74, %73 ]
  %43 = icmp eq ptr %41, %39
  br i1 %43, label %78, label %44, !prof !601

44:                                               ; preds = %40
  %45 = load i32, ptr %41, align 8
  %46 = trunc i32 %45 to i16
  switch i16 %46, label %73 [
    i16 10, label %78
    i16 8, label %47
    i16 9, label %61
  ], !prof !602

47:                                               ; preds = %44
  %48 = icmp eq ptr %42, null
  br i1 %48, label %49, label %78, !prof !603

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !427
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 23
  br i1 %54, label %55, label %78, !prof !604

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !427
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 37
  br i1 %60, label %73, label %78, !prof !605

61:                                               ; preds = %44
  %62 = tail call i32 @any_condjump_p(ptr noundef nonnull %41) #22
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67, !prof !606

64:                                               ; preds = %61
  %65 = tail call i32 @computed_jump_p(ptr noundef nonnull %41) #22
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %64, %61
  %68 = tail call i32 @onlyjump_p(ptr noundef nonnull %41) #22
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70, !prof !606

70:                                               ; preds = %67
  %71 = tail call fastcc i32 @bypass_block(ptr noundef %26, ptr noundef %42, ptr noundef nonnull %41) #21, !range !466
  %72 = or i32 %71, %27
  br label %78

73:                                               ; preds = %44, %55
  %74 = phi ptr [ %41, %55 ], [ %42, %44 ]
  %75 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %76 = load ptr, ptr %75, align 8, !tbaa !427
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %40, !prof !607, !llvm.loop !608

78:                                               ; preds = %40, %47, %49, %55, %73, %44, %30, %25, %64, %67, %70
  %79 = phi i32 [ %27, %25 ], [ %72, %70 ], [ %27, %67 ], [ %27, %64 ], [ %27, %30 ], [ %27, %44 ], [ %27, %73 ], [ %27, %55 ], [ %27, %49 ], [ %27, %47 ], [ %27, %40 ]
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !491
  %82 = load ptr, ptr @cfun, align 8, !tbaa !440
  %83 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !477
  %85 = getelementptr inbounds %struct.control_flow_graph, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !493
  %87 = icmp eq ptr %81, %86
  br i1 %87, label %88, label %25, !prof !502, !llvm.loop !609

88:                                               ; preds = %78
  %89 = icmp eq i32 %79, 0
  br i1 %89, label %91, label %90, !prof !610

90:                                               ; preds = %88
  tail call void @commit_edge_insertions() #22
  br label %91

91:                                               ; preds = %10, %88, %90, %0
  %92 = phi i32 [ 0, %0 ], [ %79, %90 ], [ 0, %88 ], [ 0, %10 ]
  ret i32 %92
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @free_cprop_mem() unnamed_addr #5 !prof !519 !PGOFuncName !611 {
  %1 = load ptr, ptr @cprop_pavloc, align 8, !tbaa !440
  tail call void @free(ptr noundef %1) #21
  %2 = load ptr, ptr @cprop_absaltered, align 8, !tbaa !440
  tail call void @free(ptr noundef %2) #21
  %3 = load ptr, ptr @cprop_avin, align 8, !tbaa !440
  tail call void @free(ptr noundef %3) #21
  %4 = load ptr, ptr @cprop_avout, align 8, !tbaa !440
  tail call void @free(ptr noundef %4) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @free_hash_table(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !517 !PGOFuncName !612 {
  %2 = load ptr, ptr %0, align 8, !tbaa !558
  tail call void @free(ptr noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_gcse_mem() unnamed_addr #0 !prof !517 !PGOFuncName !613 {
  tail call fastcc void @free_modify_mem_tables() #21
  %1 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !440
  tail call void @bitmap_obstack_free(ptr noundef %1) #22
  store ptr null, ptr @modify_mem_list_set, align 8, !tbaa !440
  %2 = load ptr, ptr @blocks_with_calls, align 8, !tbaa !440
  tail call void @bitmap_obstack_free(ptr noundef %2) #22
  store ptr null, ptr @blocks_with_calls, align 8, !tbaa !440
  ret void
}

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @current_function_name() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gcalloc(i64 noundef %0) unnamed_addr #0 !prof !614 !PGOFuncName !615 {
  %2 = load i32, ptr @bytes_used, align 4, !tbaa !436
  %3 = trunc i64 %0 to i32
  %4 = shl i32 %3, 3
  %5 = add i32 %2, %4
  store i32 %5, ptr @bytes_used, align 4, !tbaa !436
  %6 = tail call ptr @xcalloc(i64 noundef %0, i64 noundef 8) #22
  ret ptr %6
}

; Function Attrs: optsize
declare void @cselib_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @local_cprop_find_used_regs(ptr nocapture noundef readonly %0, ptr noundef %1) #7 !prof !616 !PGOFuncName !617 {
  %3 = load ptr, ptr %0, align 8, !tbaa !440
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5, !prof !618

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
  ], !prof !619

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !427
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !427
  %17 = icmp ugt i8 %16, 4
  br i1 %17, label %19, label %18

18:                                               ; preds = %5, %8
  tail call void @find_used_regs(ptr noundef nonnull %0, ptr noundef %1) #21
  br label %19

19:                                               ; preds = %8, %5, %5, %5, %5, %5, %5, %5, %5, %5, %2, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @do_local_cprop(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !620 !PGOFuncName !621 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %101, !prof !622

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #21
  %8 = icmp ugt i32 %7, 52
  br i1 %8, label %20, label %9, !prof !623

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !427
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 24
  br i1 %14, label %101, label %15, !prof !624

15:                                               ; preds = %9
  %16 = tail call i32 @asm_noperands(ptr noundef nonnull %11) #22
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %101, !prof !625

18:                                               ; preds = %15
  %19 = load i32, ptr %0, align 8
  br label %20

20:                                               ; preds = %18, %6
  %21 = phi i32 [ %19, %18 ], [ %3, %6 ]
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  %24 = tail call ptr @cselib_lookup(ptr noundef nonnull %0, i32 noundef %23, i32 noundef 0) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %101, label %26, !prof !626

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.cselib_val_struct, ptr %24, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !440
  %29 = icmp eq ptr %28, null
  br i1 %29, label %101, label %30, !prof !627

30:                                               ; preds = %26, %57
  %31 = phi ptr [ %59, %57 ], [ %28, %26 ]
  %32 = phi ptr [ %58, %57 ], [ null, %26 ]
  %33 = phi ptr [ %38, %57 ], [ null, %26 ]
  %34 = getelementptr inbounds %struct.elt_loc_list, ptr %31, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !628
  %36 = tail call fastcc zeroext i8 @gcse_constant_p(ptr noundef %35) #21, !range !482
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, ptr %33, ptr %35, !prof !630
  %39 = load i32, ptr %35, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 37
  br i1 %41, label %42, label %57, !prof !631

42:                                               ; preds = %30
  %43 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #21
  %44 = icmp ugt i32 %43, 52
  br i1 %44, label %45, label %57, !prof !632

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.elt_loc_list, ptr %31, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !633
  %48 = tail call ptr @find_reg_note(ptr noundef %47, i32 noundef 3, ptr noundef null) #22
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50, !prof !634

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !427
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 43
  br i1 %55, label %57, label %56

56:                                               ; preds = %50, %45
  br label %57

57:                                               ; preds = %56, %50, %42, %30
  %58 = phi ptr [ %32, %50 ], [ %35, %56 ], [ %32, %42 ], [ %32, %30 ]
  %59 = load ptr, ptr %31, align 8, !tbaa !440
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %30, !prof !635, !llvm.loop !636

61:                                               ; preds = %57
  %62 = icmp eq ptr %38, null
  br i1 %62, label %79, label %63, !prof !637

63:                                               ; preds = %61
  %64 = tail call fastcc zeroext i8 @constprop_register(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %38) #21, !range !482
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %79, label %66, !prof !638

66:                                               ; preds = %63
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %68 = icmp eq ptr %67, null
  br i1 %68, label %97, label %69

69:                                               ; preds = %66
  %70 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #21
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %67, ptr noundef nonnull @.str.10, i32 noundef %70) #21
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %73 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !427
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.11, i32 noundef %74) #21
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !440
  tail call void @print_rtl(ptr noundef %76, ptr noundef nonnull %38) #22
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %78 = tail call i32 @fputc(i32 10, ptr %77)
  br label %97

79:                                               ; preds = %63, %61
  %80 = icmp eq ptr %58, null
  %81 = icmp eq ptr %58, %0
  %82 = or i1 %80, %81
  br i1 %82, label %101, label %83, !prof !639

83:                                               ; preds = %79
  %84 = tail call fastcc i32 @try_replace_reg(ptr noundef nonnull %0, ptr noundef nonnull %58, ptr noundef %1) #21, !range !466
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %101, label %86, !prof !640

86:                                               ; preds = %83
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %88 = icmp eq ptr %87, null
  br i1 %88, label %97, label %89, !prof !641

89:                                               ; preds = %86
  %90 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #21
  %91 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !427
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.13, i32 noundef %90, i32 noundef %92) #21
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %95 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %58) #21
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %94, ptr noundef nonnull @.str.14, i32 noundef %95) #21
  br label %97

97:                                               ; preds = %86, %89, %66, %69
  %98 = phi ptr [ @local_const_prop_count, %69 ], [ @local_const_prop_count, %66 ], [ @local_copy_prop_count, %89 ], [ @local_copy_prop_count, %86 ]
  %99 = load i32, ptr %98, align 4, !tbaa !436
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %98, align 4, !tbaa !436
  br label %101

101:                                              ; preds = %97, %26, %20, %2, %9, %15, %83, %79
  %102 = phi i8 [ 0, %79 ], [ 0, %83 ], [ 0, %15 ], [ 0, %9 ], [ 0, %2 ], [ 0, %20 ], [ 0, %26 ], [ 1, %97 ]
  ret i8 %102
}

; Function Attrs: optsize
declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cselib_clear_table() local_unnamed_addr #2

; Function Attrs: optsize
declare void @cselib_finish() local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal void @find_used_regs(ptr nocapture noundef readonly %0, ptr noundef %1) #8 !prof !642 !PGOFuncName !643 {
  %3 = load ptr, ptr %0, align 8, !tbaa !427
  %4 = icmp eq ptr %3, null
  br i1 %4, label %55, label %5, !prof !600

5:                                                ; preds = %2, %39
  %6 = phi ptr [ %40, %39 ], [ %3, %2 ]
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 37
  br i1 %9, label %10, label %17, !prof !644

10:                                               ; preds = %5
  %11 = load i32, ptr @reg_use_count, align 4, !tbaa !436
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %55, label %13, !prof !645

13:                                               ; preds = %10
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds [8 x %struct.reg_use], ptr @reg_use_table, i64 0, i64 %14
  store ptr %6, ptr %15, align 8, !tbaa !525
  %16 = add nsw i32 %11, 1
  store i32 %16, ptr @reg_use_count, align 4, !tbaa !436
  br label %17

17:                                               ; preds = %13, %5
  %18 = zext nneg i32 %8 to i64
  %19 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !427
  %21 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %18
  %22 = load ptr, ptr %21, align 8, !tbaa !440
  %23 = icmp eq i8 %20, 0
  br i1 %23, label %55, label %24, !prof !646

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %26 = zext i8 %20 to i64
  br label %27

27:                                               ; preds = %24, %53
  %28 = phi i64 [ %26, %24 ], [ %29, %53 ]
  %29 = add nsw i64 %28, -1
  %30 = getelementptr inbounds i8, ptr %22, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !427
  switch i8 %31, label %53 [
    i8 101, label %37
    i8 69, label %32
  ], !prof !647

32:                                               ; preds = %27
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %25, i64 0, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !427
  %35 = load i32, ptr %34, align 8, !tbaa !592
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %44, label %53

37:                                               ; preds = %27
  %38 = icmp eq i64 %29, 0
  br i1 %38, label %39, label %42, !prof !648

39:                                               ; preds = %37
  %40 = load ptr, ptr %25, align 8, !tbaa !427
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %5, !prof !649

42:                                               ; preds = %37
  %43 = getelementptr inbounds [1 x %union.rtunion_def], ptr %25, i64 0, i64 %29
  tail call void @find_used_regs(ptr noundef nonnull %43, ptr noundef %1) #21
  br label %53

44:                                               ; preds = %32, %44
  %45 = phi i64 [ %48, %44 ], [ 0, %32 ]
  %46 = phi ptr [ %49, %44 ], [ %34, %32 ]
  %47 = getelementptr inbounds %struct.rtvec_def, ptr %46, i64 0, i32 1, i64 %45
  tail call void @find_used_regs(ptr noundef nonnull %47, ptr noundef %1) #21
  %48 = add nuw nsw i64 %45, 1
  %49 = load ptr, ptr %33, align 8, !tbaa !427
  %50 = load i32, ptr %49, align 8, !tbaa !592
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %44, label %53, !llvm.loop !650

53:                                               ; preds = %44, %32, %27, %42
  %54 = icmp sgt i64 %28, 1
  br i1 %54, label %27, label %55, !prof !651, !llvm.loop !652

55:                                               ; preds = %39, %10, %17, %53, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !653 !PGOFuncName !654 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !427
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cselib_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gcse_constant_p(ptr noundef %0) unnamed_addr #0 !prof !655 !PGOFuncName !656 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 48
  br i1 %4, label %5, label %38, !prof !657

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !427
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %38 [
    i16 30, label %10
    i16 37, label %16
  ], !prof !658

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !427
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 30
  br i1 %15, label %49, label %38

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !427
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #21
  %24 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #21
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = lshr i32 %8, 16
  %28 = and i32 %27, 255
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !427
  switch i8 %31, label %32 [
    i8 8, label %38
    i8 9, label %38
    i8 11, label %38
    i8 17, label %38
  ]

32:                                               ; preds = %26
  %33 = lshr i32 %19, 16
  %34 = and i32 %33, 255
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !427
  switch i8 %37, label %49 [
    i8 8, label %38
    i8 9, label %38
    i8 11, label %38
    i8 17, label %38
  ]

38:                                               ; preds = %5, %10, %1, %32, %32, %32, %32, %26, %26, %26, %26, %22, %16
  %39 = zext nneg i32 %3 to i64
  %40 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !436
  %42 = icmp eq i32 %41, 9
  br i1 %42, label %43, label %49, !prof !659

43:                                               ; preds = %38
  %44 = icmp eq i32 %3, 35
  br i1 %44, label %45, label %49, !prof !660

45:                                               ; preds = %43
  %46 = tail call zeroext i8 @shared_const_p(ptr noundef nonnull %0) #22
  %47 = icmp ne i8 %46, 0
  %48 = zext i1 %47 to i8
  br label %49

49:                                               ; preds = %38, %45, %43, %32, %10
  %50 = phi i8 [ 1, %10 ], [ 1, %32 ], [ 0, %38 ], [ 1, %43 ], [ %48, %45 ]
  ret i8 %50
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @constprop_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !661 !PGOFuncName !662 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %41, !prof !663

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !427
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 23
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %10) #22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %17, !prof !664

17:                                               ; preds = %8, %14
  %18 = phi ptr [ %15, %14 ], [ %10, %8 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !427
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22, !prof !665

22:                                               ; preds = %17
  %23 = tail call i32 @any_condjump_p(ptr noundef nonnull %20) #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %41, label %25, !prof !666

25:                                               ; preds = %22
  %26 = load ptr, ptr %19, align 8, !tbaa !427
  %27 = tail call i32 @onlyjump_p(ptr noundef %26) #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !427
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 37
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !427
  %38 = load ptr, ptr %19, align 8, !tbaa !427
  %39 = tail call fastcc i32 @cprop_jump(ptr noundef %37, ptr noundef nonnull %0, ptr noundef %38, ptr noundef %1, ptr noundef %2) #21, !range !466
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %3, %35, %29, %25, %22, %17, %14
  %42 = load i32, ptr %0, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %45, label %48, !prof !666

45:                                               ; preds = %41
  %46 = tail call fastcc i32 @try_replace_reg(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0) #21, !range !466
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59, !prof !666

48:                                               ; preds = %45, %41
  %49 = tail call i32 @any_condjump_p(ptr noundef nonnull %0) #22
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51, !prof !666

51:                                               ; preds = %48
  %52 = tail call i32 @onlyjump_p(ptr noundef nonnull %0) #22
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !427
  %57 = tail call fastcc i32 @cprop_jump(ptr noundef %56, ptr noundef null, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #21, !range !466
  %58 = trunc i32 %57 to i8
  br label %59

59:                                               ; preds = %51, %48, %45, %35, %54
  %60 = phi i8 [ %58, %54 ], [ 1, %35 ], [ 1, %45 ], [ 0, %48 ], [ 0, %51 ]
  ret i8 %60
}

; Function Attrs: optsize
declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @try_replace_reg(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !667 !PGOFuncName !668 {
  %4 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %2) #22
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %17, !prof !669

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !427
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 23
  br i1 %14, label %17, label %15, !prof !670

15:                                               ; preds = %9
  %16 = tail call ptr @single_set_2(ptr noundef nonnull %2, ptr noundef nonnull %11) #22
  br label %17

17:                                               ; preds = %3, %9, %15
  %18 = phi ptr [ %16, %15 ], [ null, %3 ], [ %11, %9 ]
  %19 = tail call ptr @copy_rtx(ptr noundef %1) #22
  tail call void @validate_replace_src_group(ptr noundef %0, ptr noundef %19, ptr noundef nonnull %2) #22
  %20 = tail call i32 @num_changes_pending() #22
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22, !prof !671

22:                                               ; preds = %17
  %23 = tail call i32 @apply_change_group() #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27, !prof !672

25:                                               ; preds = %22, %17
  %26 = icmp ne ptr %18, null
  br label %43

27:                                               ; preds = %22
  %28 = icmp eq ptr %18, null
  br i1 %28, label %43, label %29, !prof !673

29:                                               ; preds = %27
  %30 = load i32, ptr %19, align 8
  %31 = and i32 %30, 65535
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !436
  %35 = icmp eq i32 %34, 9
  br i1 %35, label %36, label %43, !prof !674

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !427
  %39 = tail call ptr @simplify_rtx(ptr noundef %38) #22
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = tail call zeroext i8 @validate_change(ptr noundef nonnull %2, ptr noundef nonnull %37, ptr noundef nonnull %39, i8 noundef zeroext 0) #22
  br label %43

43:                                               ; preds = %25, %36, %41, %29, %27
  %44 = phi i32 [ 0, %25 ], [ 1, %36 ], [ 1, %41 ], [ 1, %29 ], [ 1, %27 ]
  %45 = phi i1 [ %26, %25 ], [ false, %36 ], [ false, %41 ], [ false, %29 ], [ false, %27 ]
  %46 = icmp ne ptr %4, null
  br i1 %46, label %47, label %56, !prof !675

47:                                               ; preds = %43
  %48 = load i32, ptr %4, align 8
  %49 = and i32 %48, 16711680
  %50 = icmp eq i32 %49, 262144
  br i1 %50, label %51, label %56, !prof !676

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !427
  %54 = tail call ptr @simplify_replace_rtx(ptr noundef %53, ptr noundef %0, ptr noundef %19) #22
  %55 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %2, i32 noundef 4, ptr noundef %54) #22
  br label %56

56:                                               ; preds = %51, %47, %43
  br i1 %45, label %57, label %82, !prof !677

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %59 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !427
  %61 = tail call i32 @reg_mentioned_p(ptr noundef %0, ptr noundef %60) #22
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %82, label %63, !prof !678

63:                                               ; preds = %57
  %64 = load ptr, ptr %59, align 8, !tbaa !427
  %65 = tail call ptr @simplify_replace_rtx(ptr noundef %64, ptr noundef %0, ptr noundef %19) #22
  %66 = load ptr, ptr %59, align 8, !tbaa !427
  %67 = tail call i32 @rtx_equal_p(ptr noundef %65, ptr noundef %66) #22
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74, !prof !666

69:                                               ; preds = %63
  %70 = tail call zeroext i8 @validate_change(ptr noundef nonnull %2, ptr noundef nonnull %59, ptr noundef %65, i8 noundef zeroext 0) #22
  %71 = icmp ne i8 %70, 0
  %72 = or i1 %46, %71
  %73 = zext i1 %71 to i32
  br i1 %72, label %82, label %75, !prof !679

74:                                               ; preds = %63
  br i1 %46, label %86, label %75, !prof !680

75:                                               ; preds = %69, %74
  %76 = load ptr, ptr %58, align 8, !tbaa !427
  %77 = load i32, ptr %76, align 8
  %78 = trunc i32 %77 to i16
  switch i16 %78, label %79 [
    i16 120, label %99
    i16 40, label %99
  ]

79:                                               ; preds = %75
  %80 = tail call ptr @copy_rtx(ptr noundef %65) #22
  %81 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %2, i32 noundef 4, ptr noundef %80) #22
  br label %82

82:                                               ; preds = %69, %79, %57, %56
  %83 = phi ptr [ %81, %79 ], [ %4, %57 ], [ %4, %56 ], [ %4, %69 ]
  %84 = phi i32 [ 0, %79 ], [ 0, %57 ], [ %44, %56 ], [ %73, %69 ]
  %85 = icmp eq ptr %83, null
  br i1 %85, label %99, label %86, !prof !681

86:                                               ; preds = %74, %82
  %87 = phi i32 [ %84, %82 ], [ 0, %74 ]
  %88 = phi ptr [ %83, %82 ], [ %4, %74 ]
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 16711680
  %91 = icmp eq i32 %90, 262144
  br i1 %91, label %92, label %99, !prof !676

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !427
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 37
  br i1 %97, label %98, label %99, !prof !682

98:                                               ; preds = %92
  tail call void @remove_note(ptr noundef nonnull %2, ptr noundef nonnull %88) #22
  br label %99

99:                                               ; preds = %75, %75, %98, %92, %86, %82
  %100 = phi i32 [ %87, %98 ], [ %87, %92 ], [ %87, %86 ], [ %84, %82 ], [ 0, %75 ], [ 0, %75 ]
  ret i32 %100
}

; Function Attrs: optsize
declare zeroext i8 @shared_const_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cprop_jump(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !474 !PGOFuncName !683 {
  %6 = alloca %struct.edge_iterator, align 8
  %7 = tail call ptr @pc_set(ptr noundef %2) #22
  %8 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %2) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !427
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %5
  %17 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !427
  br label %19

19:                                               ; preds = %10, %16
  %20 = phi i1 [ true, %16 ], [ false, %10 ]
  %21 = phi ptr [ null, %16 ], [ %12, %10 ]
  %22 = phi ptr [ %18, %16 ], [ %12, %10 ]
  %23 = icmp eq ptr %1, null
  br i1 %23, label %61, label %24

24:                                               ; preds = %19
  %25 = tail call i32 @modified_between_p(ptr noundef %3, ptr noundef nonnull %1, ptr noundef %2) #22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %24
  %28 = tail call i32 @modified_between_p(ptr noundef %4, ptr noundef nonnull %1, ptr noundef %2) #22
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %27
  %31 = load i32, ptr %1, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !427
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 23
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %37) #22
  br label %43

43:                                               ; preds = %30, %35, %41
  %44 = phi ptr [ %42, %41 ], [ null, %30 ], [ %37, %35 ]
  %45 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %1) #22
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !427
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %43
  %54 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !427
  br label %56

56:                                               ; preds = %47, %53
  %57 = phi ptr [ %55, %53 ], [ %49, %47 ]
  %58 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !427
  %60 = tail call ptr @simplify_replace_rtx(ptr noundef %22, ptr noundef %59, ptr noundef %57) #22
  br label %61

61:                                               ; preds = %19, %24, %27, %56
  %62 = phi ptr [ %60, %56 ], [ %22, %27 ], [ %22, %24 ], [ %22, %19 ]
  %63 = phi ptr [ %1, %56 ], [ null, %27 ], [ null, %24 ], [ null, %19 ]
  %64 = tail call ptr @simplify_replace_rtx(ptr noundef %62, ptr noundef %3, ptr noundef %4) #22
  %65 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !427
  %67 = tail call i32 @rtx_equal_p(ptr noundef %64, ptr noundef %66) #22
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %145

69:                                               ; preds = %61
  %70 = load ptr, ptr @global_rtl, align 16, !tbaa !440
  %71 = icmp eq ptr %64, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = tail call ptr @delete_insn(ptr noundef %2) #22
  br label %90

74:                                               ; preds = %69
  %75 = icmp eq ptr %63, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %74
  %77 = tail call i32 @modified_in_p(ptr noundef %64, ptr noundef nonnull %63) #22
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %145

79:                                               ; preds = %76, %74
  %80 = tail call zeroext i8 @validate_unshare_change(ptr noundef %2, ptr noundef nonnull %65, ptr noundef %64, i8 noundef zeroext 0) #22
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = tail call i32 @rtx_equal_p(ptr noundef %64, ptr noundef %21) #22
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %145

85:                                               ; preds = %82
  %86 = tail call ptr @copy_rtx(ptr noundef %64) #22
  %87 = tail call ptr @set_unique_reg_note(ptr noundef %2, i32 noundef 4, ptr noundef %86) #22
  br label %145

88:                                               ; preds = %79
  br i1 %20, label %90, label %89

89:                                               ; preds = %88
  tail call void @remove_note(ptr noundef %2, ptr noundef %8) #22
  br label %90

90:                                               ; preds = %88, %89, %72
  %91 = load i32, ptr @global_const_prop_count, align 4, !tbaa !436
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr @global_const_prop_count, align 4, !tbaa !436
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %90
  %96 = tail call fastcc i32 @rhs_regno(ptr noundef %3) #21
  %97 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !427
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %93, ptr noundef nonnull @.str.15, i32 noundef %96, i32 noundef %98) #21
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !440
  tail call void @print_rtl(ptr noundef %100, ptr noundef %4) #22
  %101 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %102 = tail call i32 @fputc(i32 10, ptr %101)
  br label %103

103:                                              ; preds = %95, %90
  %104 = tail call zeroext i8 @purge_dead_edges(ptr noundef %0) #22
  %105 = load ptr, ptr @global_rtl, align 16, !tbaa !440
  %106 = icmp eq ptr %64, %105
  br i1 %106, label %145, label %107

107:                                              ; preds = %103
  %108 = tail call i32 @simplejump_p(ptr noundef %2) #22
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %145, label %110

110:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %112 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %111) #21
  store i32 0, ptr %6, align 8, !tbaa.struct !684
  %113 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %112, ptr %113, align 8, !tbaa.struct !685
  %114 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %112) #21
  %115 = icmp eq ptr %114, null
  br i1 %115, label %143, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 2
  br label %118

118:                                              ; preds = %116, %138
  %119 = phi ptr [ %114, %116 ], [ %141, %138 ]
  %120 = getelementptr inbounds %struct.edge_def, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !549
  %122 = load ptr, ptr @cfun, align 8, !tbaa !440
  %123 = getelementptr inbounds %struct.function, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !477
  %125 = getelementptr inbounds %struct.control_flow_graph, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !493
  %127 = icmp eq ptr %121, %126
  br i1 %127, label %138, label %128

128:                                              ; preds = %118
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 7
  %130 = load ptr, ptr %129, align 8, !tbaa !427
  %131 = load ptr, ptr %130, align 8, !tbaa !686
  %132 = load ptr, ptr %117, align 8, !tbaa !427
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.edge_def, ptr %119, i64 0, i32 7
  %136 = load i32, ptr %135, align 8, !tbaa !544
  %137 = or i32 %136, 1
  store i32 %137, ptr %135, align 8, !tbaa !544
  br label %143

138:                                              ; preds = %118, %128
  call fastcc void @ei_next(ptr noundef nonnull %6) #21
  %139 = load i32, ptr %6, align 8
  %140 = load ptr, ptr %113, align 8
  %141 = tail call fastcc ptr @ei_safe_edge(i32 %139, ptr %140) #21
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %118, !llvm.loop !687

143:                                              ; preds = %138, %110, %134
  %144 = tail call ptr @delete_insn(ptr noundef %2) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  br label %145

145:                                              ; preds = %103, %107, %143, %82, %85, %76, %61
  %146 = phi i32 [ 0, %61 ], [ 0, %76 ], [ 0, %85 ], [ 0, %82 ], [ 1, %143 ], [ 1, %107 ], [ 1, %103 ]
  ret i32 %146
}

; Function Attrs: optsize
declare ptr @pc_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @modified_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @modified_in_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @validate_unshare_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @purge_dead_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 !prof !688 !PGOFuncName !689 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !690 !PGOFuncName !691 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #21, !range !482
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !692

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !693 !PGOFuncName !694 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !695

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #21
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #21
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !696

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 738, ptr noundef nonnull @.str.17) #22
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !697
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !697
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !699 !PGOFuncName !700 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !701

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #21
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !702 !PGOFuncName !703 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !704

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !705 !PGOFuncName !706 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !707

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !708
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !710 !PGOFuncName !711 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !712

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 687, ptr noundef nonnull @.str.17) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !440
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !713 !PGOFuncName !714 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !440
  ret ptr %5
}

; Function Attrs: optsize
declare void @validate_replace_src_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @num_changes_pending() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @simplify_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @implicit_set_cond_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !715 !PGOFuncName !716 {
  %2 = alloca %struct.real_value, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !427
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !427
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !427
  switch i8 %12, label %40 [
    i8 8, label %13
    i8 9, label %13
    i8 11, label %13
    i8 17, label %13
  ], !prof !717

13:                                               ; preds = %1, %1, %1, %1
  %14 = and i8 %12, -2
  %15 = icmp eq i8 %14, 8
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %10
  %18 = load i8, ptr %17, align 1, !tbaa !427
  %19 = zext i8 %18 to i32
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i32 [ %7, %13 ], [ %19, %16 ]
  %22 = add nsw i32 %21, -38
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !440
  %26 = getelementptr inbounds %struct.real_format, ptr %25, i64 0, i32 14
  %27 = load i8, ptr %26, align 1, !tbaa !718
  %28 = icmp ne i8 %27, 0
  %29 = load i32, ptr @flag_signed_zeros, align 4
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %40

32:                                               ; preds = %20
  %33 = load i32, ptr %9, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %37 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %37, i64 32, i1 false), !tbaa.struct !720
  %38 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %2, ptr noundef nonnull @dconst0) #22
  %39 = icmp eq i8 %38, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  br i1 %39, label %40, label %42

40:                                               ; preds = %1, %36, %20
  %41 = call fastcc zeroext i8 @gcse_constant_p(ptr noundef %9) #21, !range !482
  br label %42

42:                                               ; preds = %32, %36, %40
  %43 = phi i8 [ %41, %40 ], [ 0, %36 ], [ 0, %32 ]
  ret i8 %43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !721 !PGOFuncName !722 {
  %2 = load ptr, ptr %0, align 8, !tbaa !723
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #21
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_max_insn_count() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gmalloc(i64 noundef %0) unnamed_addr #0 !prof !614 !PGOFuncName !724 {
  %2 = load i32, ptr @bytes_used, align 4, !tbaa !436
  %3 = trunc i64 %0 to i32
  %4 = add i32 %2, %3
  store i32 %4, ptr @bytes_used, align 4, !tbaa !436
  %5 = tail call ptr @xmalloc(i64 noundef %0) #22
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_hash_table_work(ptr nocapture noundef %0) unnamed_addr #0 !prof !517 !PGOFuncName !725 {
  tail call fastcc void @clear_modify_mem_tables() #21
  %2 = tail call i32 @max_reg_num() #22
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 4
  %5 = tail call fastcc ptr @gmalloc(i64 noundef %4) #21
  store ptr %5, ptr @reg_avail_info, align 8, !tbaa !440
  %6 = tail call i32 @max_reg_num() #22
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %16, !prof !726

8:                                                ; preds = %1, %8
  %9 = phi i64 [ %12, %8 ], [ 0, %1 ]
  %10 = load ptr, ptr @reg_avail_info, align 8, !tbaa !440
  %11 = getelementptr inbounds %struct.reg_avail_info, ptr %10, i64 %9
  store ptr null, ptr %11, align 8, !tbaa !727
  %12 = add nuw nsw i64 %9, 1
  %13 = tail call i32 @max_reg_num() #22
  %14 = sext i32 %13 to i64
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %8, label %16, !prof !729, !llvm.loop !730

16:                                               ; preds = %8, %1
  %17 = load ptr, ptr @cfun, align 8, !tbaa !440
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !477
  %20 = load ptr, ptr %19, align 8, !tbaa !440
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !491
  store ptr %22, ptr @current_bb, align 8, !tbaa !440
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !493
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %131, label %26, !prof !731

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.hash_table_d, ptr %0, i64 0, i32 3
  br label %28

28:                                               ; preds = %26, %121
  %29 = phi ptr [ %22, %26 ], [ %124, %121 ]
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !427
  %32 = load ptr, ptr %31, align 8, !tbaa !427
  %33 = icmp eq ptr %32, null
  br i1 %33, label %76, label %34, !prof !731

34:                                               ; preds = %28, %71
  %35 = phi ptr [ %72, %71 ], [ %29, %28 ]
  %36 = phi ptr [ %74, %71 ], [ %32, %28 ]
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !427
  %39 = getelementptr inbounds %struct.rtl_bb_info, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !495
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !427
  %43 = icmp eq ptr %36, %42
  br i1 %43, label %76, label %44, !prof !732

44:                                               ; preds = %34
  %45 = load i32, ptr %36, align 8
  %46 = and i32 %45, 65535
  %47 = add nsw i32 %46, -7
  %48 = icmp ult i32 %47, 4
  br i1 %48, label %49, label %71, !prof !733

49:                                               ; preds = %44
  %50 = icmp eq i32 %46, 10
  br i1 %50, label %51, label %67, !prof !734

51:                                               ; preds = %49
  %52 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !735
  br label %53

53:                                               ; preds = %51, %62
  %54 = phi i64 [ %52, %51 ], [ %63, %62 ]
  %55 = phi i64 [ 0, %51 ], [ %64, %62 ]
  %56 = shl nuw nsw i64 1, %55
  %57 = and i64 %54, %56
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %62, label %59, !prof !736

59:                                               ; preds = %53
  %60 = trunc i64 %55 to i32
  tail call fastcc void @record_last_reg_set_info(ptr noundef nonnull %36, i32 noundef %60) #21
  %61 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !735
  br label %62

62:                                               ; preds = %53, %59
  %63 = phi i64 [ %54, %53 ], [ %61, %59 ]
  %64 = add nuw nsw i64 %55, 1
  %65 = icmp eq i64 %64, 53
  br i1 %65, label %66, label %53, !prof !737, !llvm.loop !738

66:                                               ; preds = %62
  tail call fastcc void @mark_call(ptr noundef nonnull %36) #21
  br label %67

67:                                               ; preds = %66, %49
  %68 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !427
  tail call void @note_stores(ptr noundef %69, ptr noundef nonnull @record_last_set_info, ptr noundef nonnull %36) #22
  %70 = load ptr, ptr @current_bb, align 8, !tbaa !440
  br label %71

71:                                               ; preds = %44, %67
  %72 = phi ptr [ %35, %44 ], [ %70, %67 ]
  %73 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  %74 = load ptr, ptr %73, align 8, !tbaa !427
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %34, !prof !739, !llvm.loop !740

76:                                               ; preds = %34, %71, %28
  %77 = phi ptr [ %29, %28 ], [ %35, %34 ], [ %72, %71 ]
  %78 = load i32, ptr %27, align 8, !tbaa !559
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %93, label %80, !prof !741

80:                                               ; preds = %76
  %81 = load ptr, ptr @implicit_sets, align 8, !tbaa !440
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 9
  %83 = load i32, ptr %82, align 8, !tbaa !552
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %81, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !440
  %87 = icmp eq ptr %86, null
  br i1 %87, label %93, label %88, !prof !742

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 7
  %90 = load ptr, ptr %89, align 8, !tbaa !427
  %91 = load ptr, ptr %90, align 8, !tbaa !686
  tail call fastcc void @hash_scan_set(ptr noundef nonnull %86, ptr noundef %91, ptr noundef nonnull %0) #21
  %92 = load ptr, ptr @current_bb, align 8, !tbaa !440
  br label %93

93:                                               ; preds = %88, %80, %76
  %94 = phi ptr [ %92, %88 ], [ %77, %80 ], [ %77, %76 ]
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !427
  %97 = load ptr, ptr %96, align 8, !tbaa !427
  %98 = icmp eq ptr %97, null
  br i1 %98, label %121, label %99, !prof !731

99:                                               ; preds = %93, %116
  %100 = phi ptr [ %117, %116 ], [ %94, %93 ]
  %101 = phi ptr [ %119, %116 ], [ %97, %93 ]
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !427
  %104 = getelementptr inbounds %struct.rtl_bb_info, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !495
  %106 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 2
  %107 = load ptr, ptr %106, align 8, !tbaa !427
  %108 = icmp eq ptr %101, %107
  br i1 %108, label %121, label %109, !prof !732

109:                                              ; preds = %99
  %110 = load i32, ptr %101, align 8
  %111 = and i32 %110, 65535
  %112 = add nsw i32 %111, -7
  %113 = icmp ult i32 %112, 4
  br i1 %113, label %114, label %116, !prof !733

114:                                              ; preds = %109
  tail call fastcc void @hash_scan_insn(ptr noundef nonnull %101, ptr noundef %0) #21
  %115 = load ptr, ptr @current_bb, align 8, !tbaa !440
  br label %116

116:                                              ; preds = %109, %114
  %117 = phi ptr [ %100, %109 ], [ %115, %114 ]
  %118 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 2
  %119 = load ptr, ptr %118, align 8, !tbaa !427
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %99, !prof !739, !llvm.loop !743

121:                                              ; preds = %99, %116, %93
  %122 = phi ptr [ %94, %93 ], [ %100, %99 ], [ %117, %116 ]
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8, !tbaa !491
  store ptr %124, ptr @current_bb, align 8, !tbaa !440
  %125 = load ptr, ptr @cfun, align 8, !tbaa !440
  %126 = getelementptr inbounds %struct.function, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !477
  %128 = getelementptr inbounds %struct.control_flow_graph, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !493
  %130 = icmp eq ptr %124, %129
  br i1 %130, label %131, label %28, !prof !744, !llvm.loop !745

131:                                              ; preds = %121, %16
  %132 = load ptr, ptr @reg_avail_info, align 8, !tbaa !440
  tail call void @free(ptr noundef %132) #21
  store ptr null, ptr @reg_avail_info, align 8, !tbaa !440
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_modify_mem_tables() unnamed_addr #0 !prof !746 !PGOFuncName !747 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %3 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !440
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %1) #21
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !482
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6, !prof !748

6:                                                ; preds = %0, %6
  %7 = load ptr, ptr @modify_mem_list, align 8, !tbaa !440
  %8 = load i32, ptr %1, align 4, !tbaa !436
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  tail call void @free_INSN_LIST_list(ptr noundef %10) #22
  %11 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !440
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  tail call fastcc void @free_insn_expr_list_list(ptr noundef %12) #21
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #21
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #21, !range !482
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %6, !prof !749, !llvm.loop !750

15:                                               ; preds = %6
  %16 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !440
  br label %17

17:                                               ; preds = %15, %0
  %18 = phi ptr [ %16, %15 ], [ %3, %0 ]
  tail call void @bitmap_clear(ptr noundef %18) #22
  %19 = load ptr, ptr @blocks_with_calls, align 8, !tbaa !440
  tail call void @bitmap_clear(ptr noundef %19) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @record_last_reg_set_info(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 !prof !751 !PGOFuncName !752 {
  %3 = load ptr, ptr @reg_avail_info, align 8, !tbaa !440
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.reg_avail_info, ptr %3, i64 %4
  %6 = load ptr, ptr @df, align 8, !tbaa !440
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !753
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !427
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !440
  %14 = getelementptr inbounds %struct.df_insn_info, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !756
  %16 = getelementptr inbounds %struct.reg_avail_info, ptr %3, i64 %4, i32 2
  store i32 %15, ptr %16, align 4, !tbaa !758
  %17 = load ptr, ptr %5, align 8, !tbaa !727
  %18 = load ptr, ptr @current_bb, align 8, !tbaa !440
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %22, label %20, !prof !759

20:                                               ; preds = %2
  store ptr %18, ptr %5, align 8, !tbaa !727
  %21 = getelementptr inbounds %struct.reg_avail_info, ptr %3, i64 %4, i32 1
  store i32 %15, ptr %21, align 8, !tbaa !760
  br label %22

22:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_call(ptr noundef %0) unnamed_addr #0 !prof !761 !PGOFuncName !762 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, -2080374784
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !763

5:                                                ; preds = %1
  tail call fastcc void @record_last_mem_set_info(ptr noundef nonnull %0) #21
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @record_last_set_info(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !prof !764 !PGOFuncName !765 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %11, !prof !766

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !427
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ %4, %3 ]
  %13 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %14 = trunc i32 %12 to i16
  switch i16 %14, label %23 [
    i16 37, label %15
    i16 43, label %17
  ], !prof !767

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %13) #21
  tail call fastcc void @record_last_reg_set_info(ptr noundef %2, i32 noundef %16) #21
  br label %23

17:                                               ; preds = %11
  %18 = lshr i32 %12, 16
  %19 = and i32 %18, 255
  %20 = tail call i32 @push_operand(ptr noundef nonnull %13, i32 noundef %19) #22
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !768

22:                                               ; preds = %17
  tail call fastcc void @record_last_mem_set_info(ptr noundef %2) #21
  br label %23

23:                                               ; preds = %11, %17, %22, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @hash_scan_set(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !769 !PGOFuncName !770 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !427
  %7 = load ptr, ptr %4, align 8, !tbaa !427
  %8 = load i32, ptr %6, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 26
  br i1 %10, label %187, label %11, !prof !771

11:                                               ; preds = %3
  %12 = load i32, ptr %7, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %137, !prof !772

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #21
  %17 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %1) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19, !prof !773

19:                                               ; preds = %15
  %20 = load i32, ptr %17, align 8
  %21 = and i32 %20, 16711680
  %22 = icmp eq i32 %21, 262144
  br i1 %22, label %23, label %43, !prof !774

23:                                               ; preds = %19
  %24 = load i32, ptr %6, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %43, label %27, !prof !775

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !559
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !427
  br i1 %30, label %36, label %33, !prof !776

33:                                               ; preds = %27
  %34 = tail call fastcc zeroext i8 @gcse_constant_p(ptr noundef %32) #21, !range !482
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %39, !prof !777

36:                                               ; preds = %27
  %37 = tail call fastcc i32 @want_to_gcse_p(ptr noundef %32) #21, !range !466
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39, !prof !778

39:                                               ; preds = %36, %33
  %40 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !427
  %42 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %7, ptr noundef %41) #22
  br label %43

43:                                               ; preds = %39, %36, %33, %23, %19, %15
  %44 = phi ptr [ %6, %23 ], [ %41, %39 ], [ %6, %33 ], [ %6, %36 ], [ %6, %19 ], [ %6, %15 ]
  %45 = phi ptr [ %0, %23 ], [ %42, %39 ], [ %0, %33 ], [ %0, %36 ], [ %0, %19 ], [ %0, %15 ]
  %46 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !559
  %48 = icmp eq i32 %47, 0
  %49 = icmp ugt i32 %16, 52
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %94, !prof !779

51:                                               ; preds = %43
  %52 = load i32, ptr %7, align 8
  %53 = lshr i32 %52, 16
  %54 = and i32 %53, 255
  %55 = tail call zeroext i8 @can_copy_p(i32 noundef %54) #21, !range !482
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %94, label %57, !prof !780

57:                                               ; preds = %51
  %58 = tail call zeroext i8 @can_throw_internal(ptr noundef %1) #22
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %94, !prof !781

60:                                               ; preds = %57
  %61 = tail call fastcc i32 @want_to_gcse_p(ptr noundef %44) #21, !range !466
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %94, label %63, !prof !782

63:                                               ; preds = %60
  %64 = tail call i32 @set_noop_p(ptr noundef %45) #22
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %94, !prof !783

66:                                               ; preds = %63
  br i1 %18, label %73, label %67, !prof !784

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !427
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 43
  br i1 %72, label %94, label %73, !prof !785

73:                                               ; preds = %67, %66
  %74 = tail call fastcc i32 @oprs_anticipatable_p(ptr noundef %44, ptr noundef %1) #21, !range !466
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76, !prof !786

76:                                               ; preds = %73
  %77 = tail call i32 @multiple_sets(ptr noundef %1) #22
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i32 [ 0, %73 ], [ %79, %76 ]
  %82 = tail call fastcc i32 @oprs_available_p(ptr noundef %44, ptr noundef %1) #21, !range !466
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84, !prof !787

84:                                               ; preds = %80
  %85 = load i32, ptr %1, align 8
  %86 = and i32 %85, 65535
  %87 = icmp ne i32 %86, 9
  %88 = zext i1 %87 to i32
  br label %89

89:                                               ; preds = %84, %80
  %90 = phi i32 [ 0, %80 ], [ %88, %84 ]
  %91 = load i32, ptr %7, align 8
  %92 = lshr i32 %91, 16
  %93 = and i32 %92, 255
  tail call fastcc void @insert_expr_in_table(ptr noundef %44, i32 noundef %93, ptr noundef %1, i32 noundef %81, i32 noundef %90, ptr noundef nonnull %2) #21
  br label %187

94:                                               ; preds = %67, %63, %60, %57, %51, %43
  %95 = load i32, ptr %46, align 8, !tbaa !559
  %96 = icmp ne i32 %95, 0
  %97 = select i1 %96, i1 %49, i1 false
  br i1 %97, label %98, label %187, !prof !788

98:                                               ; preds = %94
  %99 = load i32, ptr %44, align 8
  %100 = and i32 %99, 65535
  %101 = icmp eq i32 %100, 37
  br i1 %101, label %102, label %114, !prof !789

102:                                              ; preds = %98
  %103 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %44) #21
  %104 = icmp ugt i32 %103, 52
  br i1 %104, label %105, label %114, !prof !790

105:                                              ; preds = %102
  %106 = load i32, ptr %7, align 8
  %107 = lshr i32 %106, 16
  %108 = and i32 %107, 255
  %109 = tail call zeroext i8 @can_copy_p(i32 noundef %108) #21, !range !482
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %114, label %111, !prof !791

111:                                              ; preds = %105
  %112 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %44) #21
  %113 = icmp eq i32 %112, %16
  br i1 %113, label %114, label %117, !prof !791

114:                                              ; preds = %111, %105, %102, %98
  %115 = tail call fastcc zeroext i8 @gcse_constant_p(ptr noundef nonnull %44) #21, !range !482
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %187, label %117, !prof !792

117:                                              ; preds = %114, %111
  %118 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !427
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !427
  %122 = getelementptr inbounds %struct.rtl_bb_info, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !495
  %124 = icmp eq ptr %123, %1
  br i1 %124, label %136, label %125, !prof !793

125:                                              ; preds = %117
  %126 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %1) #22
  %127 = icmp eq ptr %126, null
  br i1 %127, label %136, label %128, !prof !794

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1, i32 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !427
  %131 = load ptr, ptr %118, align 8, !tbaa !427
  %132 = icmp eq ptr %130, %131
  br i1 %132, label %133, label %136, !prof !795

133:                                              ; preds = %128
  %134 = tail call fastcc i32 @oprs_available_p(ptr noundef %45, ptr noundef nonnull %126) #21, !range !466
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %187, label %136, !prof !794

136:                                              ; preds = %133, %128, %125, %117
  tail call fastcc void @insert_set_in_table(ptr noundef %45, ptr noundef nonnull %1, ptr noundef nonnull %2) #21
  br label %187

137:                                              ; preds = %11
  %138 = load i32, ptr @flag_gcse_las, align 4, !tbaa !436
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %187, label %140, !prof !796

140:                                              ; preds = %137
  %141 = icmp eq i32 %9, 37
  %142 = icmp eq i32 %13, 43
  %143 = and i1 %141, %142
  br i1 %143, label %144, label %187

144:                                              ; preds = %140
  %145 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #21
  %146 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 3
  %147 = load i32, ptr %146, align 8, !tbaa !559
  %148 = icmp eq i32 %147, 0
  %149 = icmp ugt i32 %145, 52
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %151, label %187

151:                                              ; preds = %144
  %152 = lshr i32 %8, 16
  %153 = and i32 %152, 255
  %154 = tail call zeroext i8 @can_copy_p(i32 noundef %153) #21, !range !482
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %187, label %156

156:                                              ; preds = %151
  %157 = tail call zeroext i8 @can_throw_internal(ptr noundef %1) #22
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %187

159:                                              ; preds = %156
  %160 = tail call fastcc i32 @want_to_gcse_p(ptr noundef nonnull %7) #21, !range !466
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %187, label %162

162:                                              ; preds = %159
  %163 = tail call i32 @set_noop_p(ptr noundef nonnull %0) #22
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %187

165:                                              ; preds = %162
  %166 = tail call ptr @find_reg_note(ptr noundef %1, i32 noundef 3, ptr noundef null) #22
  %167 = icmp eq ptr %166, null
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !427
  %171 = load i32, ptr %170, align 8
  %172 = and i32 %171, 65535
  %173 = icmp eq i32 %172, 43
  br i1 %173, label %187, label %174

174:                                              ; preds = %168, %165
  %175 = tail call fastcc i32 @oprs_available_p(ptr noundef nonnull %7, ptr noundef %1) #21, !range !466
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %174
  %178 = load i32, ptr %1, align 8
  %179 = and i32 %178, 65535
  %180 = icmp ne i32 %179, 9
  %181 = zext i1 %180 to i32
  br label %182

182:                                              ; preds = %177, %174
  %183 = phi i32 [ 0, %174 ], [ %181, %177 ]
  %184 = load i32, ptr %7, align 8
  %185 = lshr i32 %184, 16
  %186 = and i32 %185, 255
  tail call fastcc void @insert_expr_in_table(ptr noundef nonnull %7, i32 noundef %186, ptr noundef %1, i32 noundef 0, i32 noundef %183, ptr noundef nonnull %2) #21
  br label %187

187:                                              ; preds = %3, %144, %151, %156, %159, %162, %168, %182, %89, %136, %133, %114, %94, %140, %137
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @hash_scan_insn(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !797 !PGOFuncName !798 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !427
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %31 [
    i16 23, label %12
    i16 15, label %7
  ], !prof !799

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !427
  %10 = load i32, ptr %9, align 8, !tbaa !592
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %13, label %31, !prof !800

12:                                               ; preds = %2
  tail call fastcc void @hash_scan_set(ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef %1) #21
  br label %31

13:                                               ; preds = %7, %25
  %14 = phi i32 [ %26, %25 ], [ %10, %7 ]
  %15 = phi ptr [ %27, %25 ], [ %9, %7 ]
  %16 = phi i64 [ %28, %25 ], [ 0, %7 ]
  %17 = getelementptr inbounds %struct.rtvec_def, ptr %15, i64 0, i32 1, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !440
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 23
  br i1 %21, label %22, label %25, !prof !801

22:                                               ; preds = %13
  tail call fastcc void @hash_scan_set(ptr noundef nonnull %18, ptr noundef %0, ptr noundef %1) #21
  %23 = load ptr, ptr %8, align 8, !tbaa !427
  %24 = load i32, ptr %23, align 8, !tbaa !592
  br label %25

25:                                               ; preds = %13, %22
  %26 = phi i32 [ %14, %13 ], [ %24, %22 ]
  %27 = phi ptr [ %15, %13 ], [ %23, %22 ]
  %28 = add nuw nsw i64 %16, 1
  %29 = sext i32 %26 to i64
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %13, label %31, !prof !802, !llvm.loop !803

31:                                               ; preds = %25, %7, %2, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #14 !prof !804 !PGOFuncName !805 {
  %4 = load ptr, ptr %1, align 8, !tbaa !806
  store ptr %4, ptr %0, align 8, !tbaa !808
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !810
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !811

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !808
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !812
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !814
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !735
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !815
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !436
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #15 !prof !816 !PGOFuncName !817 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !815
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !818

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !819

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !436
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !820, !llvm.loop !821

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !436
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !436
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !814
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !808
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !814
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !822

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !735
  store i64 %35, ptr %3, align 8, !tbaa !815
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !823

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !436
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !436
  %40 = load i32, ptr %23, align 8, !tbaa !814
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !814
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !824, !llvm.loop !825

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !826
  store ptr %44, ptr %0, align 8, !tbaa !808
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !827

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !812
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !436
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !815
  store i32 %16, ptr %1, align 4, !tbaa !436
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: optsize
declare void @free_INSN_LIST_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_insn_expr_list_list(ptr nocapture noundef %0) unnamed_addr #0 !prof !828 !PGOFuncName !829 {
  %2 = load ptr, ptr %0, align 8, !tbaa !440
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4, !prof !830

4:                                                ; preds = %1, %13
  %5 = phi ptr [ %7, %13 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !427
  %8 = load i32, ptr %5, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %12, !prof !831

11:                                               ; preds = %4
  tail call void @free_EXPR_LIST_node(ptr noundef nonnull %5) #22
  br label %13

12:                                               ; preds = %4
  tail call void @free_INSN_LIST_node(ptr noundef nonnull %5) #22
  br label %13

13:                                               ; preds = %11, %12
  %14 = icmp eq ptr %7, null
  br i1 %14, label %15, label %4, !prof !832, !llvm.loop !833

15:                                               ; preds = %13, %1
  store ptr null, ptr %0, align 8, !tbaa !440
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #16 !prof !834 !PGOFuncName !835 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !815
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !815
  %6 = load i32, ptr %1, align 4, !tbaa !436
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !436
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_EXPR_LIST_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_INSN_LIST_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_last_mem_set_info(ptr noundef %0) unnamed_addr #0 !prof !836 !PGOFuncName !837 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !427
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !552
  %6 = load ptr, ptr @modify_mem_list, align 8, !tbaa !440
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !440
  %10 = tail call ptr @alloc_INSN_LIST(ptr noundef %0, ptr noundef %9) #22
  %11 = load ptr, ptr @modify_mem_list, align 8, !tbaa !440
  %12 = getelementptr inbounds ptr, ptr %11, i64 %7
  store ptr %10, ptr %12, align 8, !tbaa !440
  %13 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !440
  %14 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %13, i32 noundef %5) #22
  %15 = load i32, ptr %0, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %27, !prof !838

18:                                               ; preds = %1
  %19 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !440
  %20 = getelementptr inbounds ptr, ptr %19, i64 %7
  %21 = load ptr, ptr %20, align 8, !tbaa !440
  %22 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %0, ptr noundef %21) #22
  %23 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !440
  %24 = getelementptr inbounds ptr, ptr %23, i64 %7
  store ptr %22, ptr %24, align 8, !tbaa !440
  %25 = load ptr, ptr @blocks_with_calls, align 8, !tbaa !440
  %26 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %25, i32 noundef %5) #22
  br label %30

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !427
  tail call void @note_stores(ptr noundef %29, ptr noundef nonnull @canon_list_insert, ptr noundef nonnull %0) #22
  br label %30

30:                                               ; preds = %27, %18
  ret void
}

; Function Attrs: optsize
declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @canon_list_insert(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !prof !839 !PGOFuncName !840 {
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
  ], !prof !841

8:                                                ; preds = %4, %4, %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !427
  br label %4, !llvm.loop !842

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !427
  %14 = tail call ptr @get_addr(ptr noundef %13) #22
  %15 = tail call ptr @canon_rtx(ptr noundef %14) #22
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !427
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !552
  %20 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !440
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !440
  %24 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %15, ptr noundef %23) #22
  %25 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !440
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %24, ptr %26, align 8, !tbaa !440
  %27 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef nonnull %5, ptr noundef %24) #22
  %28 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !440
  %29 = getelementptr inbounds ptr, ptr %28, i64 %21
  store ptr %27, ptr %29, align 8, !tbaa !440
  br label %30

30:                                               ; preds = %4, %11
  ret void
}

; Function Attrs: optsize
declare ptr @get_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @canon_rtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @push_operand(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @want_to_gcse_p(ptr noundef %0) unnamed_addr #0 !prof !843 !PGOFuncName !844 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 16711680
  switch i32 %3, label %23 [
    i32 2490368, label %4
    i32 2555904, label %12
    i32 2621440, label %20
  ], !prof !845

4:                                                ; preds = %1
  %5 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !436
  %6 = and i32 %5, 65536
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr @ix86_fpmath, align 4, !tbaa !436
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %23

12:                                               ; preds = %1
  %13 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !436
  %14 = and i32 %13, 131072
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr @ix86_fpmath, align 4, !tbaa !436
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1, %16, %12, %8, %4
  %21 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %0) #22
  %22 = load i32, ptr %21, align 8
  br label %23

23:                                               ; preds = %1, %8, %16, %20
  %24 = phi i32 [ %22, %20 ], [ %2, %16 ], [ %2, %8 ], [ %2, %1 ]
  %25 = phi ptr [ %21, %20 ], [ %0, %16 ], [ %0, %8 ], [ %0, %1 ]
  %26 = trunc i32 %24 to i16
  %27 = add i16 %26, -26
  %28 = icmp ult i16 %27, 14
  br i1 %28, label %32, label %29

29:                                               ; preds = %32, %23
  %30 = tail call zeroext i8 @can_assign_to_reg_without_clobbers_p(ptr noundef nonnull %25) #21, !range !482
  %31 = zext nneg i8 %30 to i32
  br label %36

32:                                               ; preds = %23
  %33 = lshr i16 10481, %27
  %34 = and i16 %33, 1
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %29, label %36

36:                                               ; preds = %32, %29
  %37 = phi i32 [ %31, %29 ], [ 0, %32 ]
  ret i32 %37
}

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @set_noop_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @oprs_anticipatable_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !846 !PGOFuncName !847 {
  %3 = tail call fastcc i32 @oprs_unchanged_p(ptr noundef %0, ptr noundef %1, i32 noundef 0) #21, !range !466
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @multiple_sets(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @oprs_available_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !848 !PGOFuncName !849 {
  %3 = tail call fastcc i32 @oprs_unchanged_p(ptr noundef %0, ptr noundef %1, i32 noundef 1) #21, !range !466
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_expr_in_table(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) unnamed_addr #0 !prof !846 !PGOFuncName !850 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #23
  %8 = getelementptr inbounds %struct.hash_table_d, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !557
  %10 = call fastcc i32 @hash_expr(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %7, i32 noundef %9) #21
  %11 = load i32, ptr %7, align 4, !tbaa !436
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %88, !prof !851

13:                                               ; preds = %6
  %14 = load ptr, ptr %5, align 8, !tbaa !558
  %15 = zext i32 %10 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !440
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19, !prof !852

19:                                               ; preds = %13, %24
  %20 = phi ptr [ %26, %24 ], [ %17, %13 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !566
  %22 = call fastcc i32 @expr_equiv_p(ptr noundef %21, ptr noundef %0) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44, !prof !853

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.expr, ptr %20, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !440
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !prof !854, !llvm.loop !855

28:                                               ; preds = %24, %13
  %29 = phi ptr [ null, %13 ], [ %20, %24 ]
  %30 = call fastcc ptr @gcse_alloc(i64 noundef 48) #21
  %31 = load i32, ptr @bytes_used, align 4, !tbaa !436
  %32 = add i32 %31, 48
  store i32 %32, ptr @bytes_used, align 4, !tbaa !436
  %33 = load ptr, ptr %5, align 8, !tbaa !558
  %34 = getelementptr inbounds ptr, ptr %33, i64 %15
  %35 = load ptr, ptr %34, align 8, !tbaa !440
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %struct.expr, ptr %29, i64 0, i32 2
  %38 = select i1 %36, ptr %34, ptr %37, !prof !856
  store ptr %30, ptr %38, align 8, !tbaa !440
  store ptr %0, ptr %30, align 8, !tbaa !566
  %39 = getelementptr inbounds %struct.hash_table_d, ptr %5, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !487
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4, !tbaa !487
  %42 = getelementptr inbounds %struct.expr, ptr %30, i64 0, i32 1
  store i32 %40, ptr %42, align 8, !tbaa !562
  %43 = getelementptr inbounds %struct.expr, ptr %30, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  br label %44

44:                                               ; preds = %19, %28
  %45 = phi ptr [ %30, %28 ], [ %20, %19 ]
  %46 = icmp eq i32 %3, 0
  br i1 %46, label %66, label %47, !prof !786

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.expr, ptr %45, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !857
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51, !prof !858

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.occr, ptr %49, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !859
  %54 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !427
  %56 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !427
  %58 = icmp eq ptr %55, %57
  br i1 %58, label %66, label %59, !prof !861

59:                                               ; preds = %47, %51
  %60 = call fastcc ptr @gcse_alloc(i64 noundef 24) #21
  %61 = load i32, ptr @bytes_used, align 4, !tbaa !436
  %62 = add i32 %61, 24
  store i32 %62, ptr @bytes_used, align 4, !tbaa !436
  %63 = getelementptr inbounds %struct.occr, ptr %60, i64 0, i32 1
  store ptr %2, ptr %63, align 8, !tbaa !859
  %64 = load ptr, ptr %48, align 8, !tbaa !857
  store ptr %64, ptr %60, align 8, !tbaa !862
  %65 = getelementptr inbounds %struct.occr, ptr %60, i64 0, i32 2
  store i8 0, ptr %65, align 8, !tbaa !863
  store ptr %60, ptr %48, align 8, !tbaa !857
  br label %66

66:                                               ; preds = %59, %51, %44
  %67 = icmp eq i32 %4, 0
  br i1 %67, label %88, label %68, !prof !787

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.expr, ptr %45, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !864
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72, !prof !865

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.occr, ptr %70, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !859
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !427
  %77 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !427
  %79 = icmp eq ptr %76, %78
  br i1 %79, label %80, label %81, !prof !866

80:                                               ; preds = %72
  store ptr %2, ptr %73, align 8, !tbaa !859
  br label %88

81:                                               ; preds = %72, %68
  %82 = call fastcc ptr @gcse_alloc(i64 noundef 24) #21
  %83 = load i32, ptr @bytes_used, align 4, !tbaa !436
  %84 = add i32 %83, 24
  store i32 %84, ptr @bytes_used, align 4, !tbaa !436
  %85 = getelementptr inbounds %struct.occr, ptr %82, i64 0, i32 1
  store ptr %2, ptr %85, align 8, !tbaa !859
  %86 = load ptr, ptr %69, align 8, !tbaa !864
  store ptr %86, ptr %82, align 8, !tbaa !862
  %87 = getelementptr inbounds %struct.occr, ptr %82, i64 0, i32 2
  store i8 0, ptr %87, align 8, !tbaa !863
  store ptr %82, ptr %69, align 8, !tbaa !864
  br label %88

88:                                               ; preds = %66, %81, %80, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #23
  ret void
}

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_set_in_table(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !867 !PGOFuncName !868 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 23
  br i1 %6, label %7, label %13, !prof !869

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !427
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %16, label %13, !prof !869

13:                                               ; preds = %7, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1207, ptr noundef nonnull @.str.17) #22
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !427
  br label %16

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %9, %7 ], [ %15, %13 ]
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef %17) #21
  %19 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !557
  %21 = tail call fastcc i32 @hash_set(i32 noundef %18, i32 noundef %20) #21
  %22 = load ptr, ptr %2, align 8, !tbaa !558
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !440
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27, !prof !870

27:                                               ; preds = %16, %32
  %28 = phi ptr [ %34, %32 ], [ %25, %16 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !566
  %30 = tail call fastcc i32 @expr_equiv_p(ptr noundef %29, ptr noundef nonnull %0) #21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %54, !prof !871

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.expr, ptr %28, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !440
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %27, !prof !872, !llvm.loop !873

36:                                               ; preds = %32, %16
  %37 = phi ptr [ null, %16 ], [ %28, %32 ]
  %38 = tail call fastcc ptr @gcse_alloc(i64 noundef 48) #21
  %39 = load i32, ptr @bytes_used, align 4, !tbaa !436
  %40 = add i32 %39, 48
  store i32 %40, ptr @bytes_used, align 4, !tbaa !436
  %41 = load ptr, ptr %2, align 8, !tbaa !558
  %42 = getelementptr inbounds ptr, ptr %41, i64 %23
  %43 = load ptr, ptr %42, align 8, !tbaa !440
  %44 = icmp eq ptr %43, null
  %45 = getelementptr inbounds %struct.expr, ptr %37, i64 0, i32 2
  %46 = select i1 %44, ptr %42, ptr %45, !prof !874
  store ptr %38, ptr %46, align 8, !tbaa !440
  %47 = tail call ptr @copy_rtx(ptr noundef nonnull %0) #22
  store ptr %47, ptr %38, align 8, !tbaa !566
  %48 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !487
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4, !tbaa !487
  %51 = getelementptr inbounds %struct.expr, ptr %38, i64 0, i32 1
  store i32 %49, ptr %51, align 8, !tbaa !562
  %52 = getelementptr inbounds %struct.expr, ptr %38, i64 0, i32 2
  %53 = getelementptr inbounds %struct.expr, ptr %38, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  br label %68

54:                                               ; preds = %27
  %55 = getelementptr inbounds %struct.expr, ptr %28, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !864
  %57 = getelementptr inbounds %struct.expr, ptr %28, i64 0, i32 4
  %58 = icmp eq ptr %56, null
  br i1 %58, label %68, label %59, !prof !875

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.occr, ptr %56, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !859
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !427
  %64 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !427
  %66 = icmp eq ptr %63, %65
  br i1 %66, label %67, label %68, !prof !876

67:                                               ; preds = %59
  store ptr %1, ptr %60, align 8, !tbaa !859
  br label %76

68:                                               ; preds = %36, %59, %54
  %69 = phi ptr [ %53, %36 ], [ %57, %59 ], [ %57, %54 ]
  %70 = tail call fastcc ptr @gcse_alloc(i64 noundef 24) #21
  %71 = load i32, ptr @bytes_used, align 4, !tbaa !436
  %72 = add i32 %71, 24
  store i32 %72, ptr @bytes_used, align 4, !tbaa !436
  %73 = getelementptr inbounds %struct.occr, ptr %70, i64 0, i32 1
  store ptr %1, ptr %73, align 8, !tbaa !859
  %74 = load ptr, ptr %69, align 8, !tbaa !864
  store ptr %74, ptr %70, align 8, !tbaa !862
  %75 = getelementptr inbounds %struct.occr, ptr %70, i64 0, i32 2
  store i8 0, ptr %75, align 8, !tbaa !863
  store ptr %70, ptr %69, align 8, !tbaa !864
  br label %76

76:                                               ; preds = %68, %67
  ret void
}

; Function Attrs: optsize
declare ptr @avoid_constant_pool_reference(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @oprs_unchanged_p(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !877 !PGOFuncName !878 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %104, label %5, !prof !600

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %56
  %8 = phi ptr [ %0, %5 ], [ %58, %56 ]
  %9 = load i32, ptr %8, align 8
  %10 = trunc i32 %9 to i16
  switch i16 %10, label %60 [
    i16 37, label %11
    i16 43, label %41
    i16 74, label %103
    i16 75, label %103
    i16 76, label %103
    i16 77, label %103
    i16 78, label %103
    i16 79, label %103
    i16 36, label %104
    i16 46, label %104
    i16 35, label %104
    i16 30, label %104
    i16 32, label %104
    i16 31, label %104
    i16 33, label %104
    i16 45, label %104
    i16 44, label %104
    i16 20, label %104
    i16 21, label %104
  ], !prof !879

11:                                               ; preds = %7
  %12 = load ptr, ptr @reg_avail_info, align 8, !tbaa !440
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #21
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.reg_avail_info, ptr %12, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !727
  %17 = load ptr, ptr @current_bb, align 8, !tbaa !440
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %38, !prof !880

19:                                               ; preds = %11
  %20 = icmp eq i32 %2, 0
  %21 = load ptr, ptr @df, align 8, !tbaa !440
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !753
  %24 = load i32, ptr %6, align 8, !tbaa !427
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !440
  %28 = getelementptr inbounds %struct.df_insn_info, ptr %27, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !756
  br i1 %20, label %34, label %30, !prof !881

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.reg_avail_info, ptr %12, i64 %14, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !758
  %33 = icmp slt i32 %32, %29
  br label %38

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.reg_avail_info, ptr %12, i64 %14, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !760
  %37 = icmp sge i32 %36, %29
  br label %38

38:                                               ; preds = %11, %34, %30
  %39 = phi i1 [ %33, %30 ], [ %37, %34 ], [ true, %11 ]
  %40 = zext i1 %39 to i32
  br label %104

41:                                               ; preds = %7
  %42 = load ptr, ptr @current_bb, align 8, !tbaa !440
  %43 = load ptr, ptr @df, align 8, !tbaa !440
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !753
  %46 = load i32, ptr %6, align 8, !tbaa !427
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !440
  %50 = getelementptr inbounds %struct.df_insn_info, ptr %49, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !756
  %52 = tail call fastcc i32 @load_killed_in_block_p(ptr noundef %42, i32 noundef %51, ptr noundef nonnull %8, i32 noundef %2) #21
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %104, !prof !882

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  br label %56

56:                                               ; preds = %81, %54
  %57 = phi ptr [ %55, %54 ], [ %69, %81 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !427
  %59 = icmp eq ptr %58, null
  br i1 %59, label %104, label %7, !prof !883

60:                                               ; preds = %7
  %61 = and i32 %9, 65535
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !427
  %65 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %62
  %66 = load ptr, ptr %65, align 8, !tbaa !440
  %67 = icmp eq i8 %64, 0
  br i1 %67, label %104, label %68, !prof !600

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %70 = zext i8 %64 to i64
  br label %71

71:                                               ; preds = %68, %101
  %72 = phi i64 [ %70, %68 ], [ %73, %101 ]
  %73 = add nsw i64 %72, -1
  %74 = getelementptr inbounds i8, ptr %66, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !427
  switch i8 %75, label %101 [
    i8 101, label %81
    i8 69, label %76
  ], !prof !884

76:                                               ; preds = %71
  %77 = getelementptr inbounds [1 x %union.rtunion_def], ptr %69, i64 0, i64 %73
  %78 = load ptr, ptr %77, align 8, !tbaa !427
  %79 = load i32, ptr %78, align 8, !tbaa !592
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %94, label %101

81:                                               ; preds = %71
  %82 = icmp eq i64 %73, 0
  br i1 %82, label %56, label %83, !prof !885

83:                                               ; preds = %81
  %84 = getelementptr inbounds [1 x %union.rtunion_def], ptr %69, i64 0, i64 %73
  %85 = load ptr, ptr %84, align 8, !tbaa !427
  %86 = tail call fastcc i32 @oprs_unchanged_p(ptr noundef %85, ptr noundef %1, i32 noundef %2) #21, !range !466
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %104, label %101, !prof !886

88:                                               ; preds = %94
  %89 = add nuw nsw i64 %95, 1
  %90 = load ptr, ptr %77, align 8, !tbaa !427
  %91 = load i32, ptr %90, align 8, !tbaa !592
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %89, %92
  br i1 %93, label %94, label %101, !llvm.loop !887

94:                                               ; preds = %76, %88
  %95 = phi i64 [ %89, %88 ], [ 0, %76 ]
  %96 = phi ptr [ %90, %88 ], [ %78, %76 ]
  %97 = getelementptr inbounds %struct.rtvec_def, ptr %96, i64 0, i32 1, i64 %95
  %98 = load ptr, ptr %97, align 8, !tbaa !440
  %99 = tail call fastcc i32 @oprs_unchanged_p(ptr noundef %98, ptr noundef %1, i32 noundef %2) #21, !range !466
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %88

101:                                              ; preds = %88, %76, %71, %83
  %102 = icmp sgt i64 %72, 1
  br i1 %102, label %71, label %104, !prof !888, !llvm.loop !889

103:                                              ; preds = %7, %7, %7, %7, %7, %7
  br label %104

104:                                              ; preds = %56, %41, %60, %83, %101, %94, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %103, %3, %38
  %105 = phi i32 [ %40, %38 ], [ 1, %3 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 0, %94 ], [ 0, %83 ], [ 1, %101 ], [ 1, %60 ], [ 1, %56 ], [ 0, %41 ], [ 0, %103 ]
  ret i32 %105
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @load_killed_in_block_p(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !890 !PGOFuncName !891 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 67108864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %48, !prof !892

8:                                                ; preds = %4
  %9 = load ptr, ptr @modify_mem_list, align 8, !tbaa !440
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !552
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !427
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16, !prof !893

16:                                               ; preds = %8
  %17 = icmp eq i32 %3, 0
  br label %18

18:                                               ; preds = %16, %44
  %19 = phi ptr [ %14, %16 ], [ %46, %44 ]
  %20 = load ptr, ptr @df, align 8, !tbaa !440
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !753
  %23 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !427
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !427
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %22, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !440
  %30 = getelementptr inbounds %struct.df_insn_info, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !756
  br i1 %17, label %34, label %32, !prof !894

32:                                               ; preds = %18
  %33 = icmp slt i32 %31, %1
  br i1 %33, label %44, label %36, !prof !895, !llvm.loop !896

34:                                               ; preds = %18
  %35 = icmp sgt i32 %31, %1
  br i1 %35, label %44, label %36, !prof !897, !llvm.loop !896

36:                                               ; preds = %32, %34
  %37 = load i32, ptr %24, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %48, label %40, !prof !898

40:                                               ; preds = %36
  store ptr %2, ptr @gcse_mem_operand, align 8, !tbaa !440
  store i1 false, ptr @gcse_mems_conflict_p, align 4
  %41 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !427
  tail call void @note_stores(ptr noundef %42, ptr noundef nonnull @mems_conflict_for_gcse_p, ptr noundef null) #22
  %43 = load i1, ptr @gcse_mems_conflict_p, align 4
  br i1 %43, label %48, label %44, !prof !899

44:                                               ; preds = %40, %32, %34
  %45 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !427
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %18, !prof !900

48:                                               ; preds = %44, %36, %40, %8, %4
  %49 = phi i32 [ 0, %4 ], [ 0, %8 ], [ 0, %44 ], [ 1, %36 ], [ 1, %40 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mems_conflict_for_gcse_p(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !prof !901 !PGOFuncName !902 {
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ %0, %3 ], [ %10, %8 ]
  %6 = load i32, ptr %5, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %29 [
    i16 39, label %8
    i16 120, label %8
    i16 40, label %8
    i16 43, label %11
  ], !prof !903

8:                                                ; preds = %4, %4, %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !427
  br label %4, !llvm.loop !904

11:                                               ; preds = %4
  %12 = load ptr, ptr @gcse_mem_operand, align 8, !tbaa !440
  %13 = tail call fastcc i32 @expr_equiv_p(ptr noundef nonnull %5, ptr noundef %12) #21
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15, !prof !905

15:                                               ; preds = %11
  %16 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !440
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call fastcc ptr @find_rtx_in_ldst(ptr noundef nonnull %5) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %29

21:                                               ; preds = %15, %11
  %22 = load i32, ptr %5, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = load ptr, ptr @gcse_mem_operand, align 8, !tbaa !440
  %26 = tail call i32 @true_dependence(ptr noundef nonnull %5, i32 noundef %24, ptr noundef %25, ptr noundef nonnull @rtx_addr_varies_p) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !905

28:                                               ; preds = %21, %18
  store i1 true, ptr @gcse_mems_conflict_p, align 4
  br label %29

29:                                               ; preds = %4, %28, %18, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @expr_equiv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !906 !PGOFuncName !907 {
  %3 = tail call i32 @exp_equiv_p(ptr noundef %0, ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1) #22
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_rtx_in_ldst(ptr noundef %0) unnamed_addr #0 !prof !908 !PGOFuncName !909 {
  %2 = alloca %struct.ls_expr, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #23
  %3 = load ptr, ptr @pre_ldst_table, align 8, !tbaa !440
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5, !prof !910

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ls_expr, ptr %2, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !911
  %7 = call ptr @htab_find_slot(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9, !prof !913

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !440
  %11 = getelementptr inbounds %struct.ls_expr, ptr %10, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !914
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr %10, ptr null, !prof !581
  br label %15

15:                                               ; preds = %9, %5, %1
  %16 = phi ptr [ null, %1 ], [ null, %5 ], [ %14, %9 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #23
  ret ptr %16
}

; Function Attrs: optsize
declare i32 @true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @rtx_addr_varies_p(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: optsize
declare i32 @exp_equiv_p(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @hash_expr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !846 !PGOFuncName !915 {
  store i32 0, ptr %2, align 4, !tbaa !436
  %5 = tail call i32 @hash_rtx(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #22
  %6 = urem i32 %5, %3
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gcse_alloc(i64 noundef %0) unnamed_addr #0 !prof !916 !PGOFuncName !917 {
  %2 = load i32, ptr @bytes_used, align 4, !tbaa !436
  %3 = trunc i64 %0 to i32
  %4 = add i32 %2, %3
  store i32 %4, ptr @bytes_used, align 4, !tbaa !436
  store i64 %0, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !506
  %5 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !507
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !509
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp slt i64 %9, %0
  br i1 %10, label %11, label %14, !prof !918

11:                                               ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @gcse_obstack, i32 noundef %3) #22
  %12 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !506
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !509
  br label %14

14:                                               ; preds = %1, %11
  %15 = phi ptr [ %6, %1 ], [ %13, %11 ]
  %16 = phi i64 [ %0, %1 ], [ %12, %11 ]
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  %18 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !508
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %23, !prof !919

20:                                               ; preds = %14
  %21 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 10), align 8
  %22 = or i8 %21, 2
  store i8 %22, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 10), align 8
  br label %23

23:                                               ; preds = %14, %20
  %24 = ptrtoint ptr %18 to i64
  store i64 %24, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !506
  %25 = ptrtoint ptr %17 to i64
  %26 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 6), align 8, !tbaa !920
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = xor i32 %26, -1
  %30 = sext i32 %29 to i64
  %31 = and i64 %28, %30
  %32 = inttoptr i64 %31 to ptr
  store ptr %32, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !509
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 1), align 8, !tbaa !504
  %34 = ptrtoint ptr %33 to i64
  %35 = sub i64 %31, %34
  %36 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !507
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %37, %34
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %41, !prof !919

40:                                               ; preds = %23
  store ptr %36, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !509
  br label %41

41:                                               ; preds = %23, %40
  %42 = phi ptr [ %32, %23 ], [ %36, %40 ]
  store ptr %42, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !508
  ret ptr %18
}

; Function Attrs: optsize
declare i32 @hash_rtx(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @hash_set(i32 noundef %0, i32 noundef %1) unnamed_addr #10 !prof !921 !PGOFuncName !922 {
  %3 = urem i32 %0, %1
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @sbitmap_vector_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_local_properties(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !517 !PGOFuncName !923 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %17, label %6, !prof !556

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hash_table_d, ptr %3, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !559
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr @cfun, align 8, !tbaa !440
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !477
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !485
  br i1 %9, label %16, label %15, !prof !924

15:                                               ; preds = %6
  tail call void @sbitmap_vector_zero(ptr noundef nonnull %0, i32 noundef %14) #22
  br label %17

16:                                               ; preds = %6
  tail call void @sbitmap_vector_ones(ptr noundef nonnull %0, i32 noundef %14) #22
  br label %17

17:                                               ; preds = %15, %16, %4
  %18 = icmp eq ptr %1, null
  br i1 %18, label %25, label %19, !prof !556

19:                                               ; preds = %17
  %20 = load ptr, ptr @cfun, align 8, !tbaa !440
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !477
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !485
  tail call void @sbitmap_vector_zero(ptr noundef nonnull %1, i32 noundef %24) #22
  br label %25

25:                                               ; preds = %19, %17
  %26 = icmp eq ptr %2, null
  br i1 %26, label %33, label %27, !prof !925

27:                                               ; preds = %25
  %28 = load ptr, ptr @cfun, align 8, !tbaa !440
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !477
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !485
  tail call void @sbitmap_vector_zero(ptr noundef nonnull %2, i32 noundef %32) #22
  br label %33

33:                                               ; preds = %27, %25
  %34 = getelementptr inbounds %struct.hash_table_d, ptr %3, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !557
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %103, label %37, !prof !731

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.hash_table_d, ptr %3, i64 0, i32 3
  br label %39

39:                                               ; preds = %37, %98
  %40 = phi i32 [ %35, %37 ], [ %99, %98 ]
  %41 = phi i64 [ 0, %37 ], [ %100, %98 ]
  %42 = load ptr, ptr %3, align 8, !tbaa !558
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !440
  %45 = icmp eq ptr %44, null
  br i1 %45, label %98, label %46, !prof !926

46:                                               ; preds = %39, %91
  %47 = phi ptr [ %94, %91 ], [ %44, %39 ]
  %48 = getelementptr inbounds %struct.expr, ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !562
  br i1 %5, label %53, label %50, !prof !927

50:                                               ; preds = %46
  %51 = load ptr, ptr %47, align 8, !tbaa !566
  %52 = load i32, ptr %38, align 8, !tbaa !559
  tail call fastcc void @compute_transp(ptr noundef %51, i32 noundef %49, ptr noundef nonnull %0, i32 noundef %52) #21
  br label %53

53:                                               ; preds = %50, %46
  br i1 %26, label %72, label %54, !prof !928

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.expr, ptr %47, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !440
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %58, !prof !852

58:                                               ; preds = %54, %58
  %59 = phi ptr [ %70, %58 ], [ %56, %54 ]
  %60 = getelementptr inbounds %struct.occr, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !859
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !427
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !552
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %2, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !440
  tail call fastcc void @SET_BIT(ptr noundef %68, i32 noundef %49) #21
  %69 = getelementptr inbounds %struct.occr, ptr %59, i64 0, i32 2
  store i8 0, ptr %69, align 8, !tbaa !863
  %70 = load ptr, ptr %59, align 8, !tbaa !440
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %58, !prof !929, !llvm.loop !930

72:                                               ; preds = %58, %54, %53
  br i1 %18, label %91, label %73, !prof !927

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.expr, ptr %47, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !440
  %76 = icmp eq ptr %75, null
  br i1 %76, label %91, label %77, !prof !931

77:                                               ; preds = %73, %77
  %78 = phi ptr [ %89, %77 ], [ %75, %73 ]
  %79 = getelementptr inbounds %struct.occr, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !859
  %81 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !427
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 9
  %84 = load i32, ptr %83, align 8, !tbaa !552
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %1, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !440
  tail call fastcc void @SET_BIT(ptr noundef %87, i32 noundef %49) #21
  %88 = getelementptr inbounds %struct.occr, ptr %78, i64 0, i32 3
  store i8 0, ptr %88, align 1, !tbaa !932
  %89 = load ptr, ptr %78, align 8, !tbaa !440
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %77, !prof !933, !llvm.loop !934

91:                                               ; preds = %77, %73, %72
  %92 = getelementptr inbounds %struct.expr, ptr %47, i64 0, i32 5
  store ptr null, ptr %92, align 8, !tbaa !935
  %93 = getelementptr inbounds %struct.expr, ptr %47, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !440
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %46, !prof !936, !llvm.loop !937

96:                                               ; preds = %91
  %97 = load i32, ptr %34, align 8, !tbaa !557
  br label %98

98:                                               ; preds = %96, %39
  %99 = phi i32 [ %97, %96 ], [ %40, %39 ]
  %100 = add nuw nsw i64 %41, 1
  %101 = zext i32 %99 to i64
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %39, label %103, !prof !938, !llvm.loop !939

103:                                              ; preds = %98, %33
  ret void
}

; Function Attrs: optsize
declare void @compute_available(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_vector_ones(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_transp(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !940 !PGOFuncName !941 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %170, label %8, !prof !600

8:                                                ; preds = %4
  %9 = icmp eq i32 %3, 0
  br label %10

10:                                               ; preds = %8, %128
  %11 = phi ptr [ %0, %8 ], [ %130, %128 ]
  %12 = load i32, ptr %11, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %132 [
    i16 37, label %14
    i16 43, label %72
    i16 36, label %170
    i16 46, label %170
    i16 35, label %170
    i16 30, label %170
    i16 32, label %170
    i16 31, label %170
    i16 33, label %170
    i16 45, label %170
    i16 44, label %170
    i16 20, label %170
    i16 21, label %170
  ], !prof !942

14:                                               ; preds = %10
  %15 = load ptr, ptr @df, align 8, !tbaa !440
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !943
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #21
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !440
  %22 = load ptr, ptr %21, align 8, !tbaa !427
  %23 = icmp eq ptr %22, null
  br i1 %9, label %48, label %24, !prof !944

24:                                               ; preds = %14
  br i1 %23, label %170, label %25, !prof !945

25:                                               ; preds = %24, %37
  %26 = phi ptr [ %46, %37 ], [ %22, %24 ]
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %32, !prof !946

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.df_artificial_ref, ptr %26, i64 0, i32 1
  br label %37

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !427
  %35 = load ptr, ptr %34, align 8, !tbaa !947
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 1
  br label %37

37:                                               ; preds = %32, %30
  %38 = phi ptr [ %31, %30 ], [ %36, %32 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !427
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !552
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %2, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !440
  tail call fastcc void @SET_BIT(ptr noundef %44, i32 noundef %1) #21
  %45 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !427
  %47 = icmp eq ptr %46, null
  br i1 %47, label %170, label %25, !prof !948, !llvm.loop !949

48:                                               ; preds = %14
  br i1 %23, label %170, label %49, !prof !950

49:                                               ; preds = %48, %61
  %50 = phi ptr [ %70, %61 ], [ %22, %48 ]
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 255
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %56, !prof !951

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.df_artificial_ref, ptr %50, i64 0, i32 1
  br label %61

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.df_base_ref, ptr %50, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !427
  %59 = load ptr, ptr %58, align 8, !tbaa !947
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 1
  br label %61

61:                                               ; preds = %56, %54
  %62 = phi ptr [ %55, %54 ], [ %60, %56 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !427
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !552
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %2, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !440
  tail call fastcc void @RESET_BIT(ptr noundef %68, i32 noundef %1) #21
  %69 = getelementptr inbounds %struct.df_base_ref, ptr %50, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !427
  %71 = icmp eq ptr %70, null
  br i1 %71, label %170, label %49, !prof !952, !llvm.loop !953

72:                                               ; preds = %10
  %73 = and i32 %12, 67108864
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %126, !prof !954

75:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %76 = load ptr, ptr @blocks_with_calls, align 8, !tbaa !440
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %76, ptr noundef nonnull %6) #21
  %77 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !482
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %89, label %79, !prof !955

79:                                               ; preds = %75, %86
  %80 = load i32, ptr %6, align 4, !tbaa !436
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %2, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !440
  br i1 %9, label %85, label %84, !prof !956

84:                                               ; preds = %79
  tail call fastcc void @SET_BIT(ptr noundef %83, i32 noundef %1) #21
  br label %86

85:                                               ; preds = %79
  tail call fastcc void @RESET_BIT(ptr noundef %83, i32 noundef %1) #21
  br label %86

86:                                               ; preds = %84, %85
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %87 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !482
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %79, !prof !957, !llvm.loop !958

89:                                               ; preds = %86, %75
  %90 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !440
  call fastcc void @bmp_iter_and_compl_init(ptr noundef nonnull %5, ptr noundef %90, ptr noundef %76, ptr noundef nonnull %6) #21
  %91 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !482
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %125, label %93, !prof !959

93:                                               ; preds = %89, %122
  %94 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !440
  %95 = load i32, ptr %6, align 4, !tbaa !436
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds ptr, ptr %94, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !427
  %99 = icmp eq ptr %98, null
  br i1 %99, label %122, label %104

100:                                              ; preds = %104
  %101 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1, i32 0, i32 0, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !427
  %103 = icmp eq ptr %102, null
  br i1 %103, label %122, label %104

104:                                              ; preds = %93, %100
  %105 = phi ptr [ %102, %100 ], [ %98, %93 ]
  %106 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !427
  %108 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !427
  %110 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !427
  %112 = load i32, ptr %107, align 8
  %113 = lshr i32 %112, 16
  %114 = and i32 %113, 255
  %115 = tail call i32 @canon_true_dependence(ptr noundef nonnull %107, i32 noundef %114, ptr noundef %111, ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull @rtx_addr_varies_p) #22
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %100, label %117

117:                                              ; preds = %104
  %118 = getelementptr inbounds ptr, ptr %2, i64 %96
  %119 = load ptr, ptr %118, align 8, !tbaa !440
  br i1 %9, label %121, label %120

120:                                              ; preds = %117
  tail call fastcc void @SET_BIT(ptr noundef %119, i32 noundef %1) #21
  br label %122

121:                                              ; preds = %117
  tail call fastcc void @RESET_BIT(ptr noundef %119, i32 noundef %1) #21
  br label %122

122:                                              ; preds = %100, %93, %120, %121
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %123 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %5, ptr noundef nonnull %6) #21, !range !482
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %93, !prof !960, !llvm.loop !961

125:                                              ; preds = %122, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %126

126:                                              ; preds = %125, %72
  %127 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  br label %128

128:                                              ; preds = %153, %126
  %129 = phi ptr [ %127, %126 ], [ %141, %153 ]
  %130 = load ptr, ptr %129, align 8, !tbaa !427
  %131 = icmp eq ptr %130, null
  br i1 %131, label %170, label %10, !prof !962

132:                                              ; preds = %10
  %133 = and i32 %12, 65535
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !427
  %137 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %134
  %138 = load ptr, ptr %137, align 8, !tbaa !440
  %139 = icmp eq i8 %136, 0
  br i1 %139, label %170, label %140, !prof !600

140:                                              ; preds = %132
  %141 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %142 = zext i8 %136 to i64
  br label %143

143:                                              ; preds = %140, %168
  %144 = phi i64 [ %142, %140 ], [ %145, %168 ]
  %145 = add nsw i64 %144, -1
  %146 = getelementptr inbounds i8, ptr %138, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !427
  switch i8 %147, label %168 [
    i8 101, label %153
    i8 69, label %148
  ], !prof !963

148:                                              ; preds = %143
  %149 = getelementptr inbounds [1 x %union.rtunion_def], ptr %141, i64 0, i64 %145
  %150 = load ptr, ptr %149, align 8, !tbaa !427
  %151 = load i32, ptr %150, align 8, !tbaa !592
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %158, label %168

153:                                              ; preds = %143
  %154 = icmp eq i64 %145, 0
  br i1 %154, label %128, label %155, !prof !964

155:                                              ; preds = %153
  %156 = getelementptr inbounds [1 x %union.rtunion_def], ptr %141, i64 0, i64 %145
  %157 = load ptr, ptr %156, align 8, !tbaa !427
  tail call fastcc void @compute_transp(ptr noundef %157, i32 noundef %1, ptr noundef %2, i32 noundef %3) #21
  br label %168

158:                                              ; preds = %148, %158
  %159 = phi i64 [ %163, %158 ], [ 0, %148 ]
  %160 = phi ptr [ %164, %158 ], [ %150, %148 ]
  %161 = getelementptr inbounds %struct.rtvec_def, ptr %160, i64 0, i32 1, i64 %159
  %162 = load ptr, ptr %161, align 8, !tbaa !440
  tail call fastcc void @compute_transp(ptr noundef %162, i32 noundef %1, ptr noundef %2, i32 noundef %3) #21
  %163 = add nuw nsw i64 %159, 1
  %164 = load ptr, ptr %149, align 8, !tbaa !427
  %165 = load i32, ptr %164, align 8, !tbaa !592
  %166 = sext i32 %165 to i64
  %167 = icmp slt i64 %163, %166
  br i1 %167, label %158, label %168, !llvm.loop !965

168:                                              ; preds = %158, %148, %143, %155
  %169 = icmp sgt i64 %144, 1
  br i1 %169, label %143, label %170, !prof !966, !llvm.loop !967

170:                                              ; preds = %128, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %132, %168, %37, %61, %4, %24, %48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #13 !prof !968 !PGOFuncName !969 {
  %3 = load ptr, ptr %0, align 8, !tbaa !970
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !972

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !735
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !427
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !427
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !735
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !735
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #13 !prof !973 !PGOFuncName !974 {
  %3 = load ptr, ptr %0, align 8, !tbaa !970
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !975

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !735
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !427
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !427
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !735
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !735
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_and_compl_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #17 !prof !976 !PGOFuncName !977 {
  %5 = load ptr, ptr %1, align 8, !tbaa !806
  store ptr %5, ptr %0, align 8, !tbaa !808
  %6 = load ptr, ptr %2, align 8, !tbaa !806
  %7 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !810
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %10, !prof !978

9:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !808
  br label %10

10:                                               ; preds = %4, %9
  %11 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %9 ]
  %12 = icmp eq ptr %6, null
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !812
  br i1 %12, label %29, label %15, !prof !600

15:                                               ; preds = %10, %20
  %16 = phi ptr [ %21, %20 ], [ %6, %10 ]
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !812
  %19 = icmp ult i32 %18, %14
  br i1 %19, label %20, label %29, !prof !978

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !tbaa !826
  store ptr %21, ptr %7, align 8, !tbaa !810
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !prof !979, !llvm.loop !980

23:                                               ; preds = %20
  %24 = shl i32 %14, 7
  %25 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %25, align 8, !tbaa !814
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !735
  %28 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %27, ptr %28, align 8, !tbaa !815
  br label %56

29:                                               ; preds = %15, %10
  %30 = phi ptr [ null, %10 ], [ %16, %15 ]
  %31 = icmp eq i32 %14, 0
  br i1 %31, label %38, label %32, !prof !981

32:                                               ; preds = %29
  %33 = shl i32 %14, 7
  %34 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %34, align 8, !tbaa !814
  %35 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !735
  %37 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %36, ptr %37, align 8, !tbaa !815
  br i1 %12, label %56, label %43, !prof !982

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %39, align 8, !tbaa !814
  %40 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !735
  %42 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %41, ptr %42, align 8, !tbaa !815
  br i1 %12, label %56, label %43, !prof !978

43:                                               ; preds = %32, %38
  %44 = phi ptr [ %37, %32 ], [ %42, %38 ]
  %45 = phi i64 [ %36, %32 ], [ %41, %38 ]
  %46 = phi i32 [ %33, %32 ], [ 0, %38 ]
  %47 = phi i32 [ %14, %32 ], [ 0, %38 ]
  %48 = getelementptr inbounds %struct.bitmap_element_def, ptr %30, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !812
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %56, !prof !983

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.bitmap_element_def, ptr %30, i64 0, i32 3, i64 0
  %53 = load i64, ptr %52, align 8, !tbaa !735
  %54 = xor i64 %53, -1
  %55 = and i64 %45, %54
  store i64 %55, ptr %44, align 8, !tbaa !815
  br label %56

56:                                               ; preds = %23, %32, %51, %43, %38
  %57 = phi i32 [ %46, %51 ], [ %46, %43 ], [ 0, %38 ], [ %33, %32 ], [ %24, %23 ]
  %58 = phi i64 [ %55, %51 ], [ %45, %43 ], [ %41, %38 ], [ %36, %32 ], [ %27, %23 ]
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = or disjoint i32 %57, %60
  store i32 %61, ptr %3, align 4, !tbaa !436
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_and_compl(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #15 !prof !976 !PGOFuncName !984 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !815
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !983

6:                                                ; preds = %51, %2
  %7 = phi i64 [ %4, %2 ], [ %52, %51 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %79

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !436
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %78, !llvm.loop !985

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !436
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !436
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !814
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %0, align 8, !tbaa !808
  br label %28

28:                                               ; preds = %19, %76
  %29 = phi ptr [ %27, %19 ], [ %61, %76 ]
  %30 = phi i32 [ %25, %19 ], [ 0, %76 ]
  store i32 %30, ptr %23, align 8, !tbaa !814
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %60, label %32, !prof !986

32:                                               ; preds = %28
  %33 = load ptr, ptr %26, align 8, !tbaa !810
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 2
  %36 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 2
  br label %37

37:                                               ; preds = %32, %54
  %38 = phi i32 [ %30, %32 ], [ %58, %54 ]
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 3, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !735
  store i64 %41, ptr %3, align 8, !tbaa !815
  br i1 %34, label %51, label %42, !prof !987

42:                                               ; preds = %37
  %43 = load i32, ptr %35, align 8, !tbaa !812
  %44 = load i32, ptr %36, align 8, !tbaa !812
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51, !prof !988

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 %39
  %48 = load i64, ptr %47, align 8, !tbaa !735
  %49 = xor i64 %48, -1
  %50 = and i64 %41, %49
  store i64 %50, ptr %3, align 8, !tbaa !815
  br label %51

51:                                               ; preds = %42, %46, %37
  %52 = phi i64 [ %50, %46 ], [ %41, %37 ], [ %41, %42 ]
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %6, !prof !988

54:                                               ; preds = %51
  %55 = load i32, ptr %1, align 4, !tbaa !436
  %56 = add i32 %55, 64
  store i32 %56, ptr %1, align 4, !tbaa !436
  %57 = load i32, ptr %23, align 8, !tbaa !814
  %58 = add i32 %57, 1
  store i32 %58, ptr %23, align 8, !tbaa !814
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %37, !prof !989, !llvm.loop !990

60:                                               ; preds = %54, %28
  %61 = load ptr, ptr %29, align 8, !tbaa !826
  store ptr %61, ptr %0, align 8, !tbaa !808
  %62 = icmp eq ptr %61, null
  br i1 %62, label %79, label %63, !prof !991

63:                                               ; preds = %60
  %64 = load ptr, ptr %26, align 8, !tbaa !810
  %65 = icmp eq ptr %64, null
  %66 = getelementptr inbounds %struct.bitmap_element_def, ptr %61, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !812
  br i1 %65, label %76, label %68, !prof !600

68:                                               ; preds = %63, %73
  %69 = phi ptr [ %74, %73 ], [ %64, %63 ]
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !812
  %72 = icmp ult i32 %71, %67
  br i1 %72, label %73, label %76, !prof !992

73:                                               ; preds = %68
  %74 = load ptr, ptr %69, align 8, !tbaa !826
  store ptr %74, ptr %26, align 8, !tbaa !810
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %68, !prof !993, !llvm.loop !994

76:                                               ; preds = %68, %73, %63
  %77 = shl i32 %67, 7
  store i32 %77, ptr %1, align 4, !tbaa !436
  br label %28

78:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !815
  store i32 %16, ptr %1, align 4, !tbaa !436
  br label %79

79:                                               ; preds = %60, %6, %78
  %80 = phi i8 [ 1, %78 ], [ 1, %6 ], [ 0, %60 ]
  ret i8 %80
}

; Function Attrs: optsize
declare i32 @canon_true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @oprs_not_set_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !995 !PGOFuncName !996 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %78, label %4, !prof !600

4:                                                ; preds = %2, %25
  %5 = phi ptr [ %27, %25 ], [ %0, %2 ]
  %6 = load i32, ptr %5, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %35 [
    i16 36, label %78
    i16 46, label %78
    i16 35, label %78
    i16 30, label %78
    i16 32, label %78
    i16 31, label %78
    i16 33, label %78
    i16 45, label %78
    i16 44, label %78
    i16 20, label %78
    i16 21, label %78
    i16 43, label %8
    i16 37, label %29
  ], !prof !997

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !427
  %12 = load ptr, ptr @df, align 8, !tbaa !440
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !753
  %15 = load i32, ptr %9, align 8, !tbaa !427
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !440
  %19 = getelementptr inbounds %struct.df_insn_info, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !756
  %21 = tail call fastcc i32 @load_killed_in_block_p(ptr noundef %11, i32 noundef %20, ptr noundef nonnull %5, i32 noundef 0) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %78

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  br label %25

25:                                               ; preds = %56, %23
  %26 = phi ptr [ %24, %23 ], [ %44, %56 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !427
  %28 = icmp eq ptr %27, null
  br i1 %28, label %78, label %4, !prof !998

29:                                               ; preds = %4
  %30 = load ptr, ptr @reg_set_bitmap, align 8, !tbaa !440
  %31 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #21
  %32 = tail call i32 @bitmap_bit_p(ptr noundef %30, i32 noundef %31) #22
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  br label %78

35:                                               ; preds = %4
  %36 = and i32 %6, 65535
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !427
  %40 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %37
  %41 = load ptr, ptr %40, align 8, !tbaa !440
  %42 = icmp eq i8 %39, 0
  br i1 %42, label %78, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %45 = zext i8 %39 to i64
  br label %46

46:                                               ; preds = %43, %76
  %47 = phi i64 [ %45, %43 ], [ %48, %76 ]
  %48 = add nsw i64 %47, -1
  %49 = getelementptr inbounds i8, ptr %41, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !427
  switch i8 %50, label %76 [
    i8 101, label %56
    i8 69, label %51
  ]

51:                                               ; preds = %46
  %52 = getelementptr inbounds [1 x %union.rtunion_def], ptr %44, i64 0, i64 %48
  %53 = load ptr, ptr %52, align 8, !tbaa !427
  %54 = load i32, ptr %53, align 8, !tbaa !592
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %69, label %76

56:                                               ; preds = %46
  %57 = icmp eq i64 %48, 0
  br i1 %57, label %25, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds [1 x %union.rtunion_def], ptr %44, i64 0, i64 %48
  %60 = load ptr, ptr %59, align 8, !tbaa !427
  %61 = tail call fastcc i32 @oprs_not_set_p(ptr noundef %60, ptr noundef %1) #21, !range !466
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %78, label %76

63:                                               ; preds = %69
  %64 = add nuw nsw i64 %70, 1
  %65 = load ptr, ptr %52, align 8, !tbaa !427
  %66 = load i32, ptr %65, align 8, !tbaa !592
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %76, !llvm.loop !999

69:                                               ; preds = %51, %63
  %70 = phi i64 [ %64, %63 ], [ 0, %51 ]
  %71 = phi ptr [ %65, %63 ], [ %53, %51 ]
  %72 = getelementptr inbounds %struct.rtvec_def, ptr %71, i64 0, i32 1, i64 %70
  %73 = load ptr, ptr %72, align 8, !tbaa !440
  %74 = tail call fastcc i32 @oprs_not_set_p(ptr noundef %73, ptr noundef %1) #21, !range !466
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %63

76:                                               ; preds = %63, %51, %46, %58
  %77 = icmp sgt i64 %47, 1
  br i1 %77, label %46, label %78, !llvm.loop !1000

78:                                               ; preds = %25, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %8, %35, %58, %76, %69, %2, %29
  %79 = phi i32 [ %34, %29 ], [ 1, %2 ], [ 0, %69 ], [ 0, %58 ], [ 1, %76 ], [ 1, %35 ], [ 1, %25 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 0, %8 ]
  ret i32 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_avail_set(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1001 !PGOFuncName !1002 {
  %3 = tail call fastcc ptr @lookup_set(i32 noundef %0) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %60, label %5, !prof !1003

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  br label %7

7:                                                ; preds = %5, %56
  %8 = phi ptr [ %3, %5 ], [ %58, %56 ]
  %9 = phi i32 [ %0, %5 ], [ %57, %56 ]
  %10 = phi ptr [ null, %5 ], [ %52, %56 ]
  %11 = load ptr, ptr @cprop_avin, align 8, !tbaa !440
  %12 = load ptr, ptr %6, align 8, !tbaa !427
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !552
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %11, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !440
  br label %18

18:                                               ; preds = %7, %31
  %19 = phi ptr [ %8, %7 ], [ %32, %31 ]
  %20 = getelementptr inbounds %struct.expr, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !562
  %22 = lshr i32 %21, 6
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !735
  %26 = and i32 %21, 63
  %27 = zext nneg i32 %26 to i64
  %28 = shl nuw i64 1, %27
  %29 = and i64 %28, %25
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34, !prof !1004

31:                                               ; preds = %18
  %32 = tail call fastcc ptr @next_set(i32 noundef %9, ptr noundef nonnull %19) #21
  %33 = icmp eq ptr %32, null
  br i1 %33, label %60, label %18, !prof !1005, !llvm.loop !1006

34:                                               ; preds = %18
  %35 = load ptr, ptr %19, align 8, !tbaa !566
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 23
  br i1 %38, label %41, label %39, !prof !579

39:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 2334, ptr noundef nonnull @.str.17) #22
  %40 = load ptr, ptr %19, align 8, !tbaa !566
  br label %41

41:                                               ; preds = %34, %39
  %42 = phi ptr [ %35, %34 ], [ %40, %39 ]
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !427
  %45 = tail call fastcc zeroext i8 @gcse_constant_p(ptr noundef %44) #21, !range !482
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50, !prof !580

47:                                               ; preds = %41
  %48 = tail call fastcc i32 @oprs_not_set_p(ptr noundef %44, ptr noundef nonnull %1) #21, !range !466
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50, !prof !1007

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi ptr [ %19, %50 ], [ %10, %47 ]
  %53 = load i32, ptr %44, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 37
  br i1 %55, label %56, label %60, !prof !580

56:                                               ; preds = %51
  %57 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %44) #21
  %58 = tail call fastcc ptr @lookup_set(i32 noundef %57) #21
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %7, !prof !1008

60:                                               ; preds = %51, %56, %31, %2
  %61 = phi ptr [ null, %2 ], [ %10, %31 ], [ %52, %56 ], [ %52, %51 ]
  ret ptr %61
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @lookup_set(i32 noundef %0) unnamed_addr #18 !prof !1009 !PGOFuncName !1010 {
  %2 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @set_hash_table, i64 0, i32 1), align 8, !tbaa !557
  %3 = tail call fastcc i32 @hash_set(i32 noundef %0, i32 noundef %2) #21
  %4 = load ptr, ptr @set_hash_table, align 8, !tbaa !558
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !440
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9, !prof !1011

9:                                                ; preds = %1, %16
  %10 = phi ptr [ %18, %16 ], [ %7, %1 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !566
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !427
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef %13) #21
  %15 = icmp eq i32 %14, %0
  br i1 %15, label %20, label %16, !prof !1012

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.expr, ptr %10, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !440
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !prof !1013, !llvm.loop !1014

20:                                               ; preds = %9, %16, %1
  %21 = phi ptr [ null, %1 ], [ null, %16 ], [ %10, %9 ]
  ret ptr %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_set(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #18 !prof !1015 !PGOFuncName !1016 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %1, %2 ], [ %6, %8 ]
  %5 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1017
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8, !prof !1018

8:                                                ; preds = %3
  %9 = load ptr, ptr %6, align 8, !tbaa !566
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !427
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef %11) #21
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %14, label %3, !prof !1019, !llvm.loop !1020

14:                                               ; preds = %3, %8
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1021 !PGOFuncName !1022 {
  br label %3

3:                                                ; preds = %9, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %9 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !427
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %15 [
    i16 39, label %9
    i16 120, label %9
    i16 40, label %9
    i16 37, label %10
    i16 43, label %14
  ], !prof !1023

9:                                                ; preds = %3, %3, %3
  br label %3, !llvm.loop !1024

10:                                               ; preds = %3
  %11 = load ptr, ptr @reg_set_bitmap, align 8, !tbaa !440
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #21
  %13 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %12) #22
  br label %15

14:                                               ; preds = %3
  tail call fastcc void @record_last_mem_set_info(ptr noundef %1) #21
  br label %15

15:                                               ; preds = %3, %14, %10
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !427
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 26
  br i1 %20, label %21, label %22, !prof !1025

21:                                               ; preds = %15
  tail call fastcc void @mark_call(ptr noundef %1) #21
  br label %22

22:                                               ; preds = %21, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_clobber(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1026 !PGOFuncName !1027 {
  br label %3

3:                                                ; preds = %9, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %9 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !427
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %14 [
    i16 39, label %9
    i16 40, label %9
    i16 37, label %10
  ], !prof !1028

9:                                                ; preds = %3, %3
  br label %3, !llvm.loop !1029

10:                                               ; preds = %3
  %11 = load ptr, ptr @reg_set_bitmap, align 8, !tbaa !440
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #21
  %13 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %12) #22
  br label %15

14:                                               ; preds = %3
  tail call fastcc void @record_last_mem_set_info(ptr noundef %1) #21
  br label %15

15:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @computed_jump_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bypass_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1030 !PGOFuncName !1031 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  %6 = icmp ne ptr %1, null
  %7 = select i1 %6, ptr %1, ptr %2, !prof !1032
  store i32 0, ptr @reg_use_count, align 4, !tbaa !436
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  tail call void @note_uses(ptr noundef nonnull %8, ptr noundef nonnull @find_used_regs, ptr noundef null) #22
  %9 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %7) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !1032

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  tail call void @find_used_regs(ptr noundef nonnull %12, ptr noundef null) #21
  br label %13

13:                                               ; preds = %11, %3
  %14 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #21
  store i32 0, ptr %5, align 8, !tbaa.struct !684
  %15 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %14, ptr %15, align 8, !tbaa.struct !685
  %16 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %14, ptr noundef nonnull %4) #21, !range !482
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18, !prof !1033

18:                                               ; preds = %13, %24
  %19 = load ptr, ptr %4, align 8, !tbaa !440
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !544
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29, !prof !1034

24:                                               ; preds = %18
  call fastcc void @ei_next(ptr noundef nonnull %5) #21
  %25 = load i32, ptr %5, align 8
  %26 = load ptr, ptr %15, align 8
  %27 = call fastcc zeroext i8 @ei_cond(i32 %25, ptr %26, ptr noundef nonnull %4) #21, !range !482
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %18, !prof !1035, !llvm.loop !1036

29:                                               ; preds = %24, %18, %13
  %30 = phi i1 [ true, %13 ], [ %23, %18 ], [ %23, %24 ]
  store i32 0, ptr %5, align 8, !tbaa.struct !684
  store ptr %14, ptr %15, align 8, !tbaa.struct !685
  %31 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %14) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %200, label %33, !prof !600

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  br label %35

35:                                               ; preds = %33, %194
  %36 = phi ptr [ %14, %33 ], [ %195, %194 ]
  %37 = phi i32 [ 0, %33 ], [ %196, %194 ]
  %38 = phi ptr [ %31, %33 ], [ %198, %194 ]
  %39 = phi i32 [ 0, %33 ], [ %197, %194 ]
  br label %40

40:                                               ; preds = %35, %48
  %41 = phi ptr [ %36, %35 ], [ %50, %48 ]
  %42 = phi i32 [ %37, %35 ], [ %49, %48 ]
  %43 = phi ptr [ %38, %35 ], [ %51, %48 ]
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !544
  %46 = and i32 %45, 14
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48, !prof !1034

48:                                               ; preds = %40, %60, %53
  call fastcc void @ei_next(ptr noundef nonnull %5) #21
  %49 = load i32, ptr %5, align 8
  %50 = load ptr, ptr %15, align 8
  %51 = tail call fastcc ptr @ei_safe_edge(i32 %49, ptr %50) #21
  %52 = icmp eq ptr %51, null
  br i1 %52, label %200, label %40, !prof !1035, !llvm.loop !1037

53:                                               ; preds = %40
  %54 = load ptr, ptr %43, align 8, !tbaa !1038
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !552
  %57 = load i32, ptr @bypass_last_basic_block, align 4, !tbaa !436
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %48, !prof !1034

59:                                               ; preds = %53
  br i1 %30, label %63, label %60, !prof !1034

60:                                               ; preds = %59
  %61 = and i32 %45, 32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %48, label %63

63:                                               ; preds = %60, %59
  %64 = load i32, ptr @reg_use_count, align 4, !tbaa !436
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %191, !prof !1039

66:                                               ; preds = %63, %186
  %67 = phi i64 [ %187, %186 ], [ 0, %63 ]
  %68 = getelementptr inbounds [8 x %struct.reg_use], ptr @reg_use_table, i64 0, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !525
  %70 = tail call fastcc i32 @rhs_regno(ptr noundef %69) #21
  %71 = load ptr, ptr %43, align 8, !tbaa !1038
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 9
  %73 = load i32, ptr %72, align 8, !tbaa !552
  %74 = tail call fastcc ptr @find_bypass_set(i32 noundef %70, i32 noundef %73) #21
  %75 = icmp eq ptr %74, null
  br i1 %75, label %186, label %76, !prof !1040

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !427
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80, !prof !1041

80:                                               ; preds = %76
  %81 = load ptr, ptr %68, align 8, !tbaa !525
  %82 = tail call fastcc zeroext i8 @reg_killed_on_edge(ptr noundef %81, ptr noundef nonnull %43) #21, !range !482
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %186, !prof !1042

84:                                               ; preds = %80, %76
  %85 = tail call ptr @pc_set(ptr noundef %2) #22
  %86 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1, i32 0, i32 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !427
  br i1 %6, label %88, label %95, !prof !1043

88:                                               ; preds = %84
  %89 = load ptr, ptr %34, align 8, !tbaa !427
  %90 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !427
  %92 = getelementptr inbounds %struct.rtx_def, ptr %89, i64 0, i32 1, i32 0, i32 0, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !427
  %94 = tail call ptr @simplify_replace_rtx(ptr noundef %87, ptr noundef %91, ptr noundef %93) #22
  br label %95

95:                                               ; preds = %88, %84
  %96 = phi ptr [ %94, %88 ], [ %87, %84 ]
  %97 = load ptr, ptr %68, align 8, !tbaa !525
  %98 = load ptr, ptr %74, align 8, !tbaa !566
  %99 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !427
  %101 = tail call ptr @simplify_replace_rtx(ptr noundef %96, ptr noundef %97, ptr noundef %100) #22
  %102 = load ptr, ptr @global_rtl, align 16, !tbaa !440
  %103 = icmp eq ptr %101, %102
  br i1 %103, label %104, label %122, !prof !1041

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !537
  %107 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %106, i32 noundef 0) #21
  %108 = getelementptr inbounds %struct.edge_def, ptr %107, i64 0, i32 7
  %109 = load i32, ptr %108, align 8, !tbaa !544
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114, !prof !1042

112:                                              ; preds = %104
  %113 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %106, i32 noundef 1) #21
  br label %114

114:                                              ; preds = %104, %112
  %115 = phi ptr [ %113, %112 ], [ %107, %104 ]
  %116 = getelementptr inbounds %struct.edge_def, ptr %115, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !427
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %186, !prof !1042

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.edge_def, ptr %115, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !549
  br label %138

122:                                              ; preds = %95
  %123 = load i32, ptr %101, align 8
  %124 = and i32 %123, 65535
  %125 = icmp eq i32 %124, 44
  br i1 %125, label %126, label %186, !prof !1042

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !427
  %129 = getelementptr inbounds %struct.rtx_def, ptr %128, i64 0, i32 1, i32 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !427
  %131 = tail call ptr @find_edge(ptr noundef %0, ptr noundef %130) #22
  %132 = icmp eq ptr %131, null
  br i1 %132, label %138, label %133, !prof !1044

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.edge_def, ptr %131, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !427
  %136 = icmp eq ptr %135, null
  %137 = select i1 %136, ptr %130, ptr null, !prof !1042
  br label %138

138:                                              ; preds = %133, %119, %126
  %139 = phi ptr [ %130, %126 ], [ %121, %119 ], [ %137, %133 ]
  %140 = icmp ne ptr %139, null
  %141 = and i1 %6, %140
  br i1 %141, label %142, label %147, !prof !1045

142:                                              ; preds = %138
  %143 = load ptr, ptr %43, align 8, !tbaa !1038
  %144 = tail call ptr @find_edge(ptr noundef %143, ptr noundef nonnull %139) #22
  %145 = icmp eq ptr %144, null
  %146 = select i1 %145, ptr %139, ptr null, !prof !1043
  br label %147

147:                                              ; preds = %142, %138
  %148 = phi ptr [ %139, %138 ], [ %146, %142 ]
  %149 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !549
  %151 = icmp eq ptr %148, null
  %152 = icmp eq ptr %148, %150
  %153 = select i1 %151, i1 true, i1 %152
  br i1 %153, label %186, label %154, !prof !1046

154:                                              ; preds = %147
  %155 = load ptr, ptr @cfun, align 8, !tbaa !440
  %156 = getelementptr inbounds %struct.function, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !477
  %158 = getelementptr inbounds %struct.control_flow_graph, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !493
  %160 = icmp eq ptr %148, %159
  br i1 %160, label %186, label %161, !prof !1047

161:                                              ; preds = %154
  %162 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %43, ptr noundef nonnull %148) #22
  br i1 %6, label %163, label %166, !prof !1043

163:                                              ; preds = %161
  %164 = load ptr, ptr %34, align 8, !tbaa !427
  %165 = tail call ptr @copy_insn(ptr noundef %164) #22
  tail call void @insert_insn_on_edge(ptr noundef %165, ptr noundef nonnull %43) #22
  br label %166

166:                                              ; preds = %163, %161
  %167 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %168 = icmp eq ptr %167, null
  br i1 %168, label %194, label %169, !prof !1043

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %171 = load i32, ptr %170, align 8, !tbaa !427
  %172 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %167, ptr noundef nonnull @.str.26, i32 noundef %70, i32 noundef %171) #21
  %173 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %174 = load ptr, ptr %74, align 8, !tbaa !566
  %175 = getelementptr inbounds %struct.rtx_def, ptr %174, i64 0, i32 1, i32 0, i32 0, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !427
  tail call void @print_rtl(ptr noundef %173, ptr noundef %176) #22
  %177 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %178 = load ptr, ptr %43, align 8, !tbaa !1038
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 9
  %180 = load i32, ptr %179, align 8, !tbaa !552
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 9
  %182 = load i32, ptr %181, align 8, !tbaa !552
  %183 = getelementptr inbounds %struct.basic_block_def, ptr %148, i64 0, i32 9
  %184 = load i32, ptr %183, align 8, !tbaa !552
  %185 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef nonnull @.str.27, i32 noundef %180, i32 noundef %182, i32 noundef %184) #21
  br label %194

186:                                              ; preds = %114, %122, %66, %80, %154, %147
  %187 = add nuw nsw i64 %67, 1
  %188 = load i32, ptr @reg_use_count, align 4, !tbaa !436
  %189 = sext i32 %188 to i64
  %190 = icmp slt i64 %187, %189
  br i1 %190, label %66, label %191, !prof !1048, !llvm.loop !1049

191:                                              ; preds = %186, %63
  call fastcc void @ei_next(ptr noundef nonnull %5) #21
  %192 = load i32, ptr %5, align 8
  %193 = load ptr, ptr %15, align 8
  br label %194

194:                                              ; preds = %166, %169, %191
  %195 = phi ptr [ %193, %191 ], [ %41, %169 ], [ %41, %166 ]
  %196 = phi i32 [ %192, %191 ], [ %42, %169 ], [ %42, %166 ]
  %197 = phi i32 [ %39, %191 ], [ 1, %169 ], [ 1, %166 ]
  %198 = tail call fastcc ptr @ei_safe_edge(i32 %196, ptr %195) #21
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %35, !prof !1050, !llvm.loop !1037

200:                                              ; preds = %194, %48, %29
  %201 = phi i32 [ 0, %29 ], [ %39, %48 ], [ %197, %194 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret i32 %201
}

; Function Attrs: optsize
declare void @commit_edge_insertions() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1051 !PGOFuncName !1052 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #21, !range !482
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1053

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #21
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !440
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_bypass_set(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1054 !PGOFuncName !1055 {
  %3 = tail call fastcc ptr @lookup_set(i32 noundef %0) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %51, label %5, !prof !600

5:                                                ; preds = %2
  %6 = sext i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %47
  %8 = phi ptr [ %3, %5 ], [ %49, %47 ]
  %9 = phi i32 [ %0, %5 ], [ %48, %47 ]
  %10 = phi ptr [ null, %5 ], [ %43, %47 ]
  %11 = load ptr, ptr @cprop_avout, align 8, !tbaa !440
  %12 = getelementptr inbounds ptr, ptr %11, i64 %6
  %13 = load ptr, ptr %12, align 8, !tbaa !440
  br label %14

14:                                               ; preds = %7, %27
  %15 = phi ptr [ %8, %7 ], [ %28, %27 ]
  %16 = getelementptr inbounds %struct.expr, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !562
  %18 = lshr i32 %17, 6
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds %struct.simple_bitmap_def, ptr %13, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !735
  %22 = and i32 %17, 63
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = and i64 %24, %21
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30, !prof !1056

27:                                               ; preds = %14
  %28 = tail call fastcc ptr @next_set(i32 noundef %9, ptr noundef nonnull %15) #21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %14, !prof !1057, !llvm.loop !1058

30:                                               ; preds = %14
  %31 = load ptr, ptr %15, align 8, !tbaa !566
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 23
  br i1 %34, label %37, label %35, !prof !1059

35:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 2908, ptr noundef nonnull @.str.17) #22
  %36 = load ptr, ptr %15, align 8, !tbaa !566
  br label %37

37:                                               ; preds = %30, %35
  %38 = phi ptr [ %31, %30 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !427
  %41 = tail call fastcc zeroext i8 @gcse_constant_p(ptr noundef %40) #21, !range !482
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %42, ptr %10, ptr %15, !prof !1060
  %44 = load i32, ptr %40, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 37
  br i1 %46, label %47, label %51, !prof !1060

47:                                               ; preds = %37
  %48 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %40) #21
  %49 = tail call fastcc ptr @lookup_set(i32 noundef %48) #21
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %7, !prof !1061

51:                                               ; preds = %37, %47, %27, %2
  %52 = phi ptr [ null, %2 ], [ %10, %27 ], [ %43, %47 ], [ %43, %37 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reg_killed_on_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1062 !PGOFuncName !1063 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !427
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6, !prof !1064

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %17, %15 ], [ %4, %2 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %15, !prof !785

12:                                               ; preds = %6
  %13 = tail call i32 @reg_set_p(ptr noundef %0, ptr noundef nonnull %7) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19, !prof !1042

15:                                               ; preds = %6, %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !427
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !prof !1065, !llvm.loop !1066

19:                                               ; preds = %12, %15, %2
  %20 = phi i8 [ 0, %2 ], [ 0, %15 ], [ 1, %12 ]
  ret i8 %20
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_modify_mem_tables() unnamed_addr #0 !prof !517 !PGOFuncName !1067 {
  tail call fastcc void @clear_modify_mem_tables() #21
  %1 = load ptr, ptr @modify_mem_list, align 8, !tbaa !440
  tail call void @free(ptr noundef %1) #21
  %2 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !440
  tail call void @free(ptr noundef %2) #21
  store ptr null, ptr @modify_mem_list, align 8, !tbaa !440
  store ptr null, ptr @canon_modify_mem_list, align 8, !tbaa !440
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @one_pre_gcse_pass() unnamed_addr #0 !prof !467 !PGOFuncName !1068 {
  store i32 0, ptr @gcse_subst_count, align 4, !tbaa !436
  store i32 0, ptr @gcse_create_count, align 4, !tbaa !436
  %1 = load ptr, ptr @cfun, align 8, !tbaa !440
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !477
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !479
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %61, label %7, !prof !471

7:                                                ; preds = %0
  %8 = tail call fastcc zeroext i8 @is_too_expensive(ptr noundef nonnull @.str.28) #21, !range !482
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %61, !prof !1069

10:                                               ; preds = %7
  tail call void @init_alias_analysis() #22
  store i32 0, ptr @bytes_used, align 4, !tbaa !436
  %11 = tail call i32 @_obstack_begin(ptr noundef nonnull @gcse_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #22
  tail call fastcc void @alloc_gcse_mem() #21
  tail call fastcc void @alloc_hash_table(ptr noundef nonnull @expr_hash_table, i32 noundef 0) #21
  tail call void @add_noreturn_fake_exit_edges() #22
  %12 = load i32, ptr @flag_gcse_lm, align 4, !tbaa !436
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !1070

14:                                               ; preds = %10
  tail call fastcc void @compute_ld_motion_mems() #21
  br label %15

15:                                               ; preds = %14, %10
  tail call fastcc void @compute_hash_table(ptr noundef nonnull @expr_hash_table) #21
  tail call fastcc void @trim_ld_motion_mems() #21
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !1071

18:                                               ; preds = %15
  tail call fastcc void @dump_hash_table(ptr noundef nonnull %16, ptr noundef nonnull @.str.29, ptr noundef nonnull @expr_hash_table) #21
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !487
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22, !prof !1070

22:                                               ; preds = %19
  %23 = load ptr, ptr @cfun, align 8, !tbaa !440
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !477
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !485
  tail call fastcc void @alloc_pre_mem(i32 noundef %27, i32 noundef %20) #21
  tail call fastcc void @compute_pre_data() #21
  %28 = tail call fastcc i32 @pre_gcse() #21, !range !466
  %29 = load ptr, ptr @edge_list, align 8, !tbaa !440
  tail call void @free_edge_list(ptr noundef %29) #22
  tail call fastcc void @free_pre_mem() #21
  br label %30

30:                                               ; preds = %22, %19
  %31 = phi i32 [ %28, %22 ], [ 0, %19 ]
  tail call fastcc void @free_ldst_mems() #21
  tail call void @remove_fake_exit_edges() #22
  tail call fastcc void @free_hash_table(ptr noundef nonnull @expr_hash_table) #21
  tail call fastcc void @free_gcse_mem() #21
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 1), align 8, !tbaa !504
  %33 = ptrtoint ptr %32 to i64
  %34 = sub i64 0, %33
  store i64 %34, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !506
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %43, !prof !1070

36:                                               ; preds = %30
  %37 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !507
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %38, %33
  %40 = icmp sgt i64 %39, %34
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = getelementptr inbounds i8, ptr %32, i64 %34
  store ptr %42, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !508
  store ptr %42, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !509
  br label %45

43:                                               ; preds = %36, %30
  %44 = getelementptr inbounds i8, ptr %32, i64 %34
  tail call void @obstack_free(ptr noundef nonnull @gcse_obstack, ptr noundef %44) #22
  br label %45

45:                                               ; preds = %43, %41
  tail call void @end_alias_analysis() #22
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %47 = icmp eq ptr %46, null
  br i1 %47, label %61, label %48, !prof !1071

48:                                               ; preds = %45
  %49 = tail call ptr @current_function_name() #22
  %50 = load ptr, ptr @cfun, align 8, !tbaa !440
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !477
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !479
  %55 = load i32, ptr @bytes_used, align 4, !tbaa !436
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %46, ptr noundef nonnull @.str.30, ptr noundef %49, i32 noundef %54, i32 noundef %55) #21
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %58 = load i32, ptr @gcse_subst_count, align 4, !tbaa !436
  %59 = load i32, ptr @gcse_create_count, align 4, !tbaa !436
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.31, i32 noundef %58, i32 noundef %59) #21
  br label %61

61:                                               ; preds = %45, %48, %0, %7
  %62 = phi i32 [ 0, %7 ], [ 0, %0 ], [ %31, %48 ], [ %31, %45 ]
  ret i32 %62
}

; Function Attrs: optsize
declare void @init_alias_analysis() local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_noreturn_fake_exit_edges() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_ld_motion_mems() unnamed_addr #0 !prof !1072 !PGOFuncName !1073 {
  store ptr null, ptr @pre_ldst_mems, align 8, !tbaa !440
  %1 = tail call ptr @htab_create(i64 noundef 13, ptr noundef nonnull @pre_ldst_expr_hash, ptr noundef nonnull @pre_ldst_expr_eq, ptr noundef null) #22
  store ptr %1, ptr @pre_ldst_table, align 8, !tbaa !440
  %2 = load ptr, ptr @cfun, align 8, !tbaa !440
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !477
  %5 = load ptr, ptr %4, align 8, !tbaa !490
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !491
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !493
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %96, label %11, !prof !600

11:                                               ; preds = %0, %87
  %12 = phi ptr [ %88, %87 ], [ %2, %0 ]
  %13 = phi ptr [ %90, %87 ], [ %7, %0 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !427
  %16 = load ptr, ptr %15, align 8, !tbaa !427
  %17 = icmp eq ptr %16, null
  br i1 %17, label %87, label %18, !prof !600

18:                                               ; preds = %11, %81
  %19 = phi ptr [ %83, %81 ], [ %16, %11 ]
  %20 = load ptr, ptr %14, align 8, !tbaa !427
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !495
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !427
  %25 = icmp eq ptr %19, %24
  br i1 %25, label %85, label %26, !prof !1074

26:                                               ; preds = %18
  %27 = load i32, ptr %19, align 8
  %28 = and i32 %27, 65535
  %29 = add nsw i32 %28, -11
  %30 = icmp ult i32 %29, -3
  br i1 %30, label %81, label %31, !prof !1075

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !427
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 23
  br i1 %36, label %37, label %80, !prof !1076

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %39 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !427
  %41 = load ptr, ptr %38, align 8, !tbaa !427
  %42 = load i32, ptr %40, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 43
  br i1 %44, label %45, label %59, !prof !1077

45:                                               ; preds = %37
  %46 = tail call fastcc i32 @simple_mem(ptr noundef nonnull %40) #21, !range !466
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48, !prof !1078

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @ldst_entry(ptr noundef nonnull %40) #21
  %50 = load i32, ptr %41, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 37
  br i1 %52, label %53, label %57, !prof !1079

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ls_expr, ptr %49, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !1080
  %56 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %19, ptr noundef %55) #22
  store ptr %56, ptr %54, align 8, !tbaa !1080
  br label %60

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.ls_expr, ptr %49, i64 0, i32 6
  store i32 1, ptr %58, align 8, !tbaa !914
  br label %60

59:                                               ; preds = %45, %37
  tail call fastcc void @invalidate_any_buried_refs(ptr noundef nonnull %40) #21
  br label %60

60:                                               ; preds = %53, %57, %59
  %61 = load i32, ptr %41, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 43
  br i1 %63, label %64, label %81, !prof !1081

64:                                               ; preds = %60
  %65 = tail call fastcc i32 @simple_mem(ptr noundef nonnull %41) #21, !range !466
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %81, label %67, !prof !1082

67:                                               ; preds = %64
  %68 = tail call fastcc ptr @ldst_entry(ptr noundef nonnull %41) #21
  %69 = load i32, ptr %40, align 8
  %70 = trunc i32 %69 to i16
  switch i16 %70, label %71 [
    i16 43, label %78
    i16 17, label %78
  ], !prof !1083

71:                                               ; preds = %67
  %72 = tail call zeroext i8 @can_assign_to_reg_without_clobbers_p(ptr noundef nonnull %40) #21, !range !482
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %78, label %74, !prof !1084

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.ls_expr, ptr %68, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !1085
  %77 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %19, ptr noundef %76) #22
  store ptr %77, ptr %75, align 8, !tbaa !1085
  br label %81

78:                                               ; preds = %67, %67, %71
  %79 = getelementptr inbounds %struct.ls_expr, ptr %68, i64 0, i32 6
  store i32 1, ptr %79, align 8, !tbaa !914
  br label %81

80:                                               ; preds = %31
  tail call fastcc void @invalidate_any_buried_refs(ptr noundef nonnull %33) #21
  br label %81

81:                                               ; preds = %26, %60, %64, %78, %74, %80
  %82 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %83 = load ptr, ptr %82, align 8, !tbaa !427
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %18, !prof !1086, !llvm.loop !1087

85:                                               ; preds = %18, %81
  %86 = load ptr, ptr @cfun, align 8, !tbaa !440
  br label %87

87:                                               ; preds = %85, %11
  %88 = phi ptr [ %86, %85 ], [ %12, %11 ]
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !491
  %91 = getelementptr inbounds %struct.function, ptr %88, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !477
  %93 = getelementptr inbounds %struct.control_flow_graph, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !493
  %95 = icmp eq ptr %90, %94
  br i1 %95, label %96, label %11, !prof !1088, !llvm.loop !1089

96:                                               ; preds = %87, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @trim_ld_motion_mems() unnamed_addr #0 !prof !1072 !PGOFuncName !1090 {
  %1 = load ptr, ptr @pre_ldst_mems, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %50, label %3, !prof !600

3:                                                ; preds = %0, %39
  %4 = phi ptr [ %41, %39 ], [ %1, %0 ]
  %5 = phi ptr [ %40, %39 ], [ @pre_ldst_mems, %0 ]
  %6 = getelementptr inbounds %struct.ls_expr, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !914
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33, !prof !1091

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ls_expr, ptr %4, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !1092
  %12 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !557
  %13 = urem i32 %11, %12
  %14 = load ptr, ptr @expr_hash_table, align 8, !tbaa !558
  %15 = zext i32 %13 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !440
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19, !prof !600

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.ls_expr, ptr %4, i64 0, i32 1
  br label %21

21:                                               ; preds = %19, %27
  %22 = phi ptr [ %17, %19 ], [ %29, %27 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !566
  %24 = load ptr, ptr %20, align 8, !tbaa !911
  %25 = tail call fastcc i32 @expr_equiv_p(ptr noundef %23, ptr noundef %24) #21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31, !prof !1093

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.expr, ptr %22, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !440
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %21, !prof !1094, !llvm.loop !1095

31:                                               ; preds = %21
  store ptr %22, ptr %4, align 8, !tbaa !1096
  %32 = getelementptr inbounds %struct.ls_expr, ptr %4, i64 0, i32 5
  br label %39

33:                                               ; preds = %27, %9, %3
  %34 = getelementptr inbounds %struct.ls_expr, ptr %4, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !1097
  store ptr %35, ptr %5, align 8, !tbaa !440
  %36 = load ptr, ptr @pre_ldst_table, align 8, !tbaa !440
  %37 = getelementptr inbounds %struct.ls_expr, ptr %4, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !1092
  tail call void @htab_remove_elt_with_hash(ptr noundef %36, ptr noundef nonnull %4, i32 noundef %38) #22
  tail call fastcc void @free_ldst_entry(ptr noundef nonnull %4) #21
  br label %39

39:                                               ; preds = %33, %31
  %40 = phi ptr [ %32, %31 ], [ %5, %33 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !440
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %3, !prof !1098, !llvm.loop !1099

43:                                               ; preds = %39
  %44 = load ptr, ptr @pre_ldst_mems, align 8
  %45 = icmp ne ptr %44, null
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %47 = icmp ne ptr %46, null
  %48 = select i1 %47, i1 %45, i1 false
  br i1 %48, label %49, label %50, !prof !1100

49:                                               ; preds = %43
  tail call fastcc void @print_ldst_list(ptr noundef nonnull %46) #21
  br label %50

50:                                               ; preds = %0, %49, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_pre_mem(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1072 !PGOFuncName !1101 {
  %3 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #22
  store ptr %3, ptr @transp, align 8, !tbaa !440
  %4 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #22
  store ptr %4, ptr @comp, align 8, !tbaa !440
  %5 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #22
  store ptr %5, ptr @antloc, align 8, !tbaa !440
  store ptr null, ptr @pre_insert_map, align 8, !tbaa !440
  store ptr null, ptr @pre_delete_map, align 8, !tbaa !440
  %6 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #22
  store ptr %6, ptr @ae_kill, align 8, !tbaa !440
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_pre_data() unnamed_addr #0 !prof !1072 !PGOFuncName !1102 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @transp, align 8, !tbaa !440
  %4 = load ptr, ptr @comp, align 8, !tbaa !440
  %5 = load ptr, ptr @antloc, align 8, !tbaa !440
  tail call fastcc void @compute_local_properties(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull @expr_hash_table) #21
  %6 = load ptr, ptr @ae_kill, align 8, !tbaa !440
  %7 = load ptr, ptr @cfun, align 8, !tbaa !440
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !477
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !485
  tail call void @sbitmap_vector_zero(ptr noundef %6, i32 noundef %11) #22
  %12 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !487
  %13 = tail call ptr @sbitmap_alloc(i32 noundef %12) #22
  tail call void @sbitmap_zero(ptr noundef %13) #22
  %14 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !557
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %42, label %16, !prof !600

16:                                               ; preds = %0, %37
  %17 = phi i32 [ %38, %37 ], [ %14, %0 ]
  %18 = phi i64 [ %39, %37 ], [ 0, %0 ]
  %19 = load ptr, ptr @expr_hash_table, align 8, !tbaa !558
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !440
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23, !prof !1103

23:                                               ; preds = %16, %31
  %24 = phi ptr [ %33, %31 ], [ %21, %16 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !566
  %26 = tail call i32 @may_trap_p(ptr noundef %25) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28, !prof !1104

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.expr, ptr %24, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !562
  tail call fastcc void @SET_BIT(ptr noundef %13, i32 noundef %30) #21
  br label %31

31:                                               ; preds = %23, %28
  %32 = getelementptr inbounds %struct.expr, ptr %24, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !440
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %23, !prof !1105, !llvm.loop !1106

35:                                               ; preds = %31
  %36 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !557
  br label %37

37:                                               ; preds = %35, %16
  %38 = phi i32 [ %36, %35 ], [ %17, %16 ]
  %39 = add nuw nsw i64 %18, 1
  %40 = zext i32 %38 to i64
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %16, label %42, !prof !1107, !llvm.loop !1108

42:                                               ; preds = %37, %0
  %43 = load ptr, ptr @cfun, align 8, !tbaa !440
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !477
  %46 = load ptr, ptr %45, align 8, !tbaa !490
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !491
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !493
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %108, label %52, !prof !600

52:                                               ; preds = %42
  %53 = getelementptr inbounds i8, ptr %2, i64 8
  br label %54

54:                                               ; preds = %52, %82
  %55 = phi ptr [ %48, %52 ], [ %101, %82 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  %56 = tail call fastcc ptr @ei_start_1(ptr noundef %55) #21
  store i32 0, ptr %2, align 8, !tbaa.struct !684
  store ptr %56, ptr %53, align 8, !tbaa.struct !685
  %57 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %56, ptr noundef nonnull %1) #21, !range !482
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %82, label %59, !prof !1109

59:                                               ; preds = %54, %77
  %60 = load ptr, ptr %1, align 8, !tbaa !440
  %61 = getelementptr inbounds %struct.edge_def, ptr %60, i64 0, i32 7
  %62 = load i32, ptr %61, align 8, !tbaa !544
  %63 = and i32 %62, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %77, label %65, !prof !1110

65:                                               ; preds = %59
  %66 = load ptr, ptr @antloc, align 8, !tbaa !440
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !552
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %66, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !440
  tail call void @sbitmap_difference(ptr noundef %71, ptr noundef %71, ptr noundef %13) #22
  %72 = load ptr, ptr @transp, align 8, !tbaa !440
  %73 = load i32, ptr %67, align 8, !tbaa !552
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %72, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !440
  tail call void @sbitmap_difference(ptr noundef %76, ptr noundef %76, ptr noundef %13) #22
  br label %82

77:                                               ; preds = %59
  call fastcc void @ei_next(ptr noundef nonnull %2) #21
  %78 = load i32, ptr %2, align 8
  %79 = load ptr, ptr %53, align 8
  %80 = call fastcc zeroext i8 @ei_cond(i32 %78, ptr %79, ptr noundef nonnull %1) #21, !range !482
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %59, !prof !1111, !llvm.loop !1112

82:                                               ; preds = %77, %54, %65
  %83 = load ptr, ptr @ae_kill, align 8, !tbaa !440
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 9
  %85 = load i32, ptr %84, align 8, !tbaa !552
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %83, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !440
  %89 = load ptr, ptr @transp, align 8, !tbaa !440
  %90 = getelementptr inbounds ptr, ptr %89, i64 %86
  %91 = load ptr, ptr %90, align 8, !tbaa !440
  %92 = load ptr, ptr @comp, align 8, !tbaa !440
  %93 = getelementptr inbounds ptr, ptr %92, i64 %86
  %94 = load ptr, ptr %93, align 8, !tbaa !440
  tail call void @sbitmap_a_or_b(ptr noundef %88, ptr noundef %91, ptr noundef %94) #22
  %95 = load ptr, ptr @ae_kill, align 8, !tbaa !440
  %96 = load i32, ptr %84, align 8, !tbaa !552
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %95, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !440
  tail call void @sbitmap_not(ptr noundef %99, ptr noundef %99) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #23
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !491
  %102 = load ptr, ptr @cfun, align 8, !tbaa !440
  %103 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !477
  %105 = getelementptr inbounds %struct.control_flow_graph, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !493
  %107 = icmp eq ptr %101, %106
  br i1 %107, label %108, label %54, !prof !1088, !llvm.loop !1113

108:                                              ; preds = %82, %42
  %109 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !487
  %110 = load ptr, ptr @transp, align 8, !tbaa !440
  %111 = load ptr, ptr @comp, align 8, !tbaa !440
  %112 = load ptr, ptr @antloc, align 8, !tbaa !440
  %113 = load ptr, ptr @ae_kill, align 8, !tbaa !440
  %114 = tail call ptr @pre_edge_lcm(i32 noundef %109, ptr noundef %110, ptr noundef %111, ptr noundef %112, ptr noundef %113, ptr noundef nonnull @pre_insert_map, ptr noundef nonnull @pre_delete_map) #22
  store ptr %114, ptr @edge_list, align 8, !tbaa !440
  %115 = load ptr, ptr @antloc, align 8, !tbaa !440
  tail call void @free(ptr noundef %115) #21
  store ptr null, ptr @antloc, align 8, !tbaa !440
  %116 = load ptr, ptr @ae_kill, align 8, !tbaa !440
  tail call void @free(ptr noundef %116) #21
  store ptr null, ptr @ae_kill, align 8, !tbaa !440
  %117 = load ptr, ptr %13, align 8, !tbaa !970
  tail call void @free(ptr noundef %117) #21
  tail call void @free(ptr noundef %13) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @pre_gcse() unnamed_addr #0 !prof !1072 !PGOFuncName !1114 {
  %1 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !487
  %2 = zext i32 %1 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 8) #22
  %4 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !557
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6, !prof !600

6:                                                ; preds = %0
  %7 = zext i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %23
  %9 = phi i64 [ 0, %6 ], [ %24, %23 ]
  %10 = load ptr, ptr @expr_hash_table, align 8, !tbaa !558
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !440
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !1103

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %21, %14 ], [ %12, %8 ]
  %16 = getelementptr inbounds %struct.expr, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !562
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %3, i64 %18
  store ptr %15, ptr %19, align 8, !tbaa !440
  %20 = getelementptr inbounds %struct.expr, ptr %15, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !440
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !prof !1105, !llvm.loop !1115

23:                                               ; preds = %14, %8
  %24 = add nuw nsw i64 %9, 1
  %25 = icmp eq i64 %24, %7
  br i1 %25, label %26, label %8, !prof !1116, !llvm.loop !1117

26:                                               ; preds = %23, %0
  %27 = tail call fastcc i32 @pre_delete() #21, !range !466
  %28 = load ptr, ptr @edge_list, align 8, !tbaa !440
  %29 = tail call fastcc i32 @pre_edge_insert(ptr noundef %28, ptr noundef %3) #21, !range !466
  tail call fastcc void @pre_insert_copies() #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31, !prof !1118

31:                                               ; preds = %26
  tail call void @commit_edge_insertions() #22
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i32 [ 1, %31 ], [ %27, %26 ]
  tail call void @free(ptr noundef %3) #21
  ret i32 %33
}

; Function Attrs: optsize
declare void @free_edge_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @free_pre_mem() unnamed_addr #5 !prof !1072 !PGOFuncName !1119 {
  %1 = load ptr, ptr @transp, align 8, !tbaa !440
  tail call void @free(ptr noundef %1) #21
  %2 = load ptr, ptr @comp, align 8, !tbaa !440
  tail call void @free(ptr noundef %2) #21
  %3 = load ptr, ptr @pre_insert_map, align 8, !tbaa !440
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !1070

5:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %3) #21
  br label %6

6:                                                ; preds = %5, %0
  %7 = load ptr, ptr @pre_delete_map, align 8, !tbaa !440
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !1070

9:                                                ; preds = %6
  tail call void @free(ptr noundef nonnull %7) #21
  br label %10

10:                                               ; preds = %9, %6
  store ptr null, ptr @comp, align 8, !tbaa !440
  store ptr null, ptr @transp, align 8, !tbaa !440
  store ptr null, ptr @pre_delete_map, align 8, !tbaa !440
  store ptr null, ptr @pre_insert_map, align 8, !tbaa !440
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_ldst_mems() unnamed_addr #0 !prof !1072 !PGOFuncName !1120 {
  %1 = load ptr, ptr @pre_ldst_table, align 8, !tbaa !440
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1070

3:                                                ; preds = %0
  tail call void @htab_delete(ptr noundef nonnull %1) #22
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @pre_ldst_table, align 8, !tbaa !440
  %5 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !440
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7, !prof !600

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %11, %7 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.ls_expr, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !1097
  store ptr %10, ptr @pre_ldst_mems, align 8, !tbaa !440
  tail call fastcc void @free_ldst_entry(ptr noundef nonnull %8) #21
  %11 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !440
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !prof !1121, !llvm.loop !1122

13:                                               ; preds = %7, %4
  store ptr null, ptr @pre_ldst_mems, align 8, !tbaa !440
  ret void
}

; Function Attrs: optsize
declare void @remove_fake_exit_edges() local_unnamed_addr #2

; Function Attrs: optsize
declare void @end_alias_analysis() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pre_ldst_expr_hash(ptr nocapture noundef readonly %0) #0 !prof !1123 !PGOFuncName !1124 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  store i32 0, ptr %2, align 4, !tbaa !436
  %3 = getelementptr inbounds %struct.ls_expr, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !911
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = call i32 @hash_rtx(ptr noundef nonnull %4, i32 noundef %7, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pre_ldst_expr_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !1125 !PGOFuncName !1126 {
  %3 = getelementptr inbounds %struct.ls_expr, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !911
  %5 = getelementptr inbounds %struct.ls_expr, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !911
  %7 = tail call fastcc i32 @expr_equiv_p(ptr noundef %4, ptr noundef %6) #21
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @simple_mem(ptr noundef %0) unnamed_addr #0 !prof !1127 !PGOFuncName !1128 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 134283263
  %4 = icmp ne i32 %3, 43
  %5 = and i32 %2, 16711680
  %6 = icmp eq i32 %5, 65536
  %7 = or i1 %4, %6
  br i1 %7, label %37, label %8, !prof !1129

8:                                                ; preds = %1
  %9 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !436
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11, !prof !1130

11:                                               ; preds = %8
  %12 = tail call i32 @may_trap_p(ptr noundef nonnull %0) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %11, %8
  %15 = tail call i32 @side_effects_p(ptr noundef nonnull %0) #22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %37, !prof !1130

17:                                               ; preds = %14
  %18 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !440
  %19 = tail call i32 @reg_mentioned_p(ptr noundef %18, ptr noundef nonnull %0) #22
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37, !prof !1131

21:                                               ; preds = %17
  %22 = load i32, ptr @flag_float_store, align 4, !tbaa !436
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24, !prof !1132

24:                                               ; preds = %21
  %25 = load i32, ptr %0, align 8
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !427
  %31 = add i8 %30, -8
  %32 = icmp ult i8 %31, 10
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = zext nneg i8 %31 to i64
  %35 = getelementptr inbounds [10 x i32], ptr @switch.table.simple_mem, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  br label %37

37:                                               ; preds = %21, %24, %33, %17, %14, %11, %1
  %38 = phi i32 [ 0, %1 ], [ 0, %11 ], [ 0, %14 ], [ 0, %17 ], [ %36, %33 ], [ 1, %24 ], [ 1, %21 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ldst_entry(ptr noundef %0) unnamed_addr #0 !prof !1133 !PGOFuncName !1134 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ls_expr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  store i32 0, ptr %2, align 4, !tbaa !436
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #23
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = call i32 @hash_rtx(ptr noundef nonnull %0, i32 noundef %6, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #22
  %8 = getelementptr inbounds %struct.ls_expr, ptr %3, i64 0, i32 1
  store ptr %0, ptr %8, align 8, !tbaa !911
  %9 = load ptr, ptr @pre_ldst_table, align 8, !tbaa !440
  %10 = call ptr @htab_find_slot_with_hash(ptr noundef %9, ptr noundef nonnull %3, i32 noundef %7, i32 noundef 1) #22
  %11 = load ptr, ptr %10, align 8, !tbaa !440
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %23, !prof !1135

13:                                               ; preds = %1
  %14 = call ptr @xmalloc(i64 noundef 72) #22
  %15 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !440
  %16 = getelementptr inbounds %struct.ls_expr, ptr %14, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !1097
  store ptr null, ptr %14, align 8, !tbaa !1096
  %17 = getelementptr inbounds %struct.ls_expr, ptr %14, i64 0, i32 1
  store ptr %0, ptr %17, align 8, !tbaa !911
  %18 = getelementptr inbounds %struct.ls_expr, ptr %14, i64 0, i32 2
  %19 = getelementptr inbounds %struct.ls_expr, ptr %14, i64 0, i32 9
  store ptr null, ptr %19, align 8, !tbaa !1136
  %20 = getelementptr inbounds %struct.ls_expr, ptr %14, i64 0, i32 6
  store i32 0, ptr %20, align 8, !tbaa !914
  %21 = getelementptr inbounds %struct.ls_expr, ptr %14, i64 0, i32 7
  store i32 0, ptr %21, align 4, !tbaa !1137
  %22 = getelementptr inbounds %struct.ls_expr, ptr %14, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  store i32 %7, ptr %22, align 8, !tbaa !1092
  store ptr %14, ptr @pre_ldst_mems, align 8, !tbaa !440
  store ptr %14, ptr %10, align 8, !tbaa !440
  br label %23

23:                                               ; preds = %1, %13
  %24 = phi ptr [ %14, %13 ], [ %11, %1 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @invalidate_any_buried_refs(ptr noundef %0) unnamed_addr #0 !prof !1138 !PGOFuncName !1139 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %11, !prof !1140

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @simple_mem(ptr noundef nonnull %0) #21, !range !466
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8, !prof !1141

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @ldst_entry(ptr noundef nonnull %0) #21
  %10 = getelementptr inbounds %struct.ls_expr, ptr %9, i64 0, i32 6
  store i32 1, ptr %10, align 8, !tbaa !914
  br label %11

11:                                               ; preds = %8, %5, %1
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 65535
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !440
  %17 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %14
  %18 = load i8, ptr %17, align 1, !tbaa !427
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %48, label %20, !prof !1142

20:                                               ; preds = %11
  %21 = zext i8 %18 to i64
  br label %22

22:                                               ; preds = %20, %46
  %23 = phi i64 [ %21, %20 ], [ %24, %46 ]
  %24 = add nsw i64 %23, -1
  %25 = getelementptr inbounds i8, ptr %16, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !427
  switch i8 %26, label %46 [
    i8 101, label %27
    i8 69, label %31
  ], !prof !1143

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %29 = getelementptr inbounds [1 x %union.rtunion_def], ptr %28, i64 0, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !427
  tail call fastcc void @invalidate_any_buried_refs(ptr noundef %30) #21
  br label %46

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %32, i64 0, i64 %24
  %34 = load ptr, ptr %33, align 8, !tbaa !427
  %35 = load i32, ptr %34, align 8, !tbaa !592
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %46, !prof !1144

37:                                               ; preds = %31
  %38 = zext nneg i32 %35 to i64
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i64 [ %38, %37 ], [ %41, %39 ]
  %41 = add nsw i64 %40, -1
  %42 = load ptr, ptr %33, align 8, !tbaa !427
  %43 = getelementptr inbounds %struct.rtvec_def, ptr %42, i64 0, i32 1, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !440
  tail call fastcc void @invalidate_any_buried_refs(ptr noundef %44) #21
  %45 = icmp ugt i64 %40, 1
  br i1 %45, label %39, label %46, !prof !1145, !llvm.loop !1146

46:                                               ; preds = %39, %31, %22, %27
  %47 = icmp sgt i64 %23, 1
  br i1 %47, label %22, label %48, !prof !1147, !llvm.loop !1148

48:                                               ; preds = %46, %11
  ret void
}

; Function Attrs: optsize
declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @htab_remove_elt_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_ldst_entry(ptr noundef %0) unnamed_addr #0 !prof !1149 !PGOFuncName !1150 {
  %2 = getelementptr inbounds %struct.ls_expr, ptr %0, i64 0, i32 3
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %2) #22
  %3 = getelementptr inbounds %struct.ls_expr, ptr %0, i64 0, i32 4
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %3) #22
  tail call void @free(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_ldst_list(ptr noundef %0) unnamed_addr #0 !prof !474 !PGOFuncName !1151 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 12, i64 1, ptr %0)
  %3 = tail call fastcc ptr @first_ls_expr() #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1, %27
  %6 = phi ptr [ %29, %27 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ls_expr, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !1137
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %8) #21
  %10 = getelementptr inbounds %struct.ls_expr, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !911
  tail call void @print_rtl(ptr noundef %0, ptr noundef %11) #22
  %12 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 11, i64 1, ptr %0)
  %13 = getelementptr inbounds %struct.ls_expr, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !1080
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  tail call void @print_rtl(ptr noundef %0, ptr noundef nonnull %14) #22
  br label %19

17:                                               ; preds = %5
  %18 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 5, i64 1, ptr %0)
  br label %19

19:                                               ; preds = %17, %16
  %20 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 11, i64 1, ptr %0)
  %21 = getelementptr inbounds %struct.ls_expr, ptr %6, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !1085
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @print_rtl(ptr noundef %0, ptr noundef nonnull %22) #22
  br label %27

25:                                               ; preds = %19
  %26 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 5, i64 1, ptr %0)
  br label %27

27:                                               ; preds = %25, %24
  %28 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %0)
  %29 = tail call fastcc ptr @next_ls_expr(ptr noundef nonnull %6) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %5, !llvm.loop !1152

31:                                               ; preds = %27, %1
  %32 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_ls_expr() unnamed_addr #19 !prof !474 !PGOFuncName !1153 {
  %1 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !440
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @next_ls_expr(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !474 !PGOFuncName !1154 {
  %2 = getelementptr inbounds %struct.ls_expr, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !1097
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_difference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_a_or_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_not(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pre_edge_lcm(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @pre_delete() unnamed_addr #0 !prof !1072 !PGOFuncName !1155 {
  %1 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !557
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %104, label %3, !prof !600

3:                                                ; preds = %0, %98
  %4 = phi i32 [ %99, %98 ], [ %1, %0 ]
  %5 = phi i64 [ %101, %98 ], [ 0, %0 ]
  %6 = phi i32 [ %100, %98 ], [ 0, %0 ]
  %7 = load ptr, ptr @expr_hash_table, align 8, !tbaa !558
  %8 = getelementptr inbounds ptr, ptr %7, i64 %5
  %9 = load ptr, ptr %8, align 8, !tbaa !440
  %10 = icmp eq ptr %9, null
  br i1 %10, label %98, label %11, !prof !1103

11:                                               ; preds = %3, %91
  %12 = phi ptr [ %94, %91 ], [ %9, %3 ]
  %13 = phi i32 [ %92, %91 ], [ %6, %3 ]
  %14 = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !562
  %16 = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !440
  %18 = icmp eq ptr %17, null
  br i1 %18, label %91, label %19, !prof !852

19:                                               ; preds = %11
  %20 = lshr i32 %15, 6
  %21 = zext nneg i32 %20 to i64
  %22 = and i32 %15, 63
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  br label %25

25:                                               ; preds = %19, %87
  %26 = phi ptr [ %17, %19 ], [ %89, %87 ]
  %27 = phi i32 [ %13, %19 ], [ %88, %87 ]
  %28 = getelementptr inbounds %struct.occr, ptr %26, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !859
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %31 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !427
  %33 = load ptr, ptr @pre_delete_map, align 8, !tbaa !440
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !552
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %33, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !440
  %39 = getelementptr inbounds %struct.simple_bitmap_def, ptr %38, i64 0, i32 3, i64 %21
  %40 = load i64, ptr %39, align 8, !tbaa !735
  %41 = and i64 %40, %24
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %87, label %43, !prof !1156

43:                                               ; preds = %25
  %44 = load i32, ptr %29, align 8
  %45 = and i32 %44, 65535
  %46 = add nsw i32 %45, -7
  %47 = icmp ult i32 %46, 4
  br i1 %47, label %48, label %87, !prof !1157

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !427
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 23
  br i1 %53, label %57, label %54, !prof !1158

54:                                               ; preds = %48
  %55 = tail call ptr @single_set_2(ptr noundef nonnull %29, ptr noundef nonnull %50) #22
  %56 = icmp eq ptr %55, null
  br i1 %56, label %87, label %57, !prof !1159

57:                                               ; preds = %48, %54
  %58 = phi ptr [ %55, %54 ], [ %50, %48 ]
  %59 = tail call zeroext i8 @dbg_cnt(i32 noundef 24) #22
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %87, label %61, !prof !910

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !935
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %69, !prof !1160

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !427
  %68 = tail call ptr @gen_reg_rtx_and_attrs(ptr noundef %67) #22
  store ptr %68, ptr %62, align 8, !tbaa !935
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi ptr [ %68, %65 ], [ %63, %61 ]
  %71 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !427
  tail call fastcc void @gcse_emit_move_after(ptr noundef %70, ptr noundef %72, ptr noundef nonnull %29) #21
  %73 = tail call ptr @delete_insn(ptr noundef nonnull %29) #22
  %74 = getelementptr inbounds %struct.occr, ptr %26, i64 0, i32 2
  store i8 1, ptr %74, align 8, !tbaa !863
  %75 = load i32, ptr @gcse_subst_count, align 4, !tbaa !436
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr @gcse_subst_count, align 4, !tbaa !436
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %78 = icmp eq ptr %77, null
  br i1 %78, label %87, label %79, !prof !1158

79:                                               ; preds = %69
  %80 = load i32, ptr %30, align 8, !tbaa !427
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %77, ptr noundef nonnull @.str.38, i32 noundef %80, i32 noundef %15) #21
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %83 = load i32, ptr %34, align 8, !tbaa !552
  %84 = load ptr, ptr %62, align 8, !tbaa !935
  %85 = tail call fastcc i32 @rhs_regno(ptr noundef %84) #21
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.39, i32 noundef %83, i32 noundef %85) #21
  br label %87

87:                                               ; preds = %43, %69, %79, %57, %54, %25
  %88 = phi i32 [ 1, %79 ], [ 1, %69 ], [ %27, %57 ], [ %27, %54 ], [ %27, %25 ], [ %27, %43 ]
  %89 = load ptr, ptr %26, align 8, !tbaa !440
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %25, !prof !929, !llvm.loop !1161

91:                                               ; preds = %87, %11
  %92 = phi i32 [ %13, %11 ], [ %88, %87 ]
  %93 = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !440
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %11, !prof !1105, !llvm.loop !1162

96:                                               ; preds = %91
  %97 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !557
  br label %98

98:                                               ; preds = %96, %3
  %99 = phi i32 [ %4, %3 ], [ %97, %96 ]
  %100 = phi i32 [ %6, %3 ], [ %92, %96 ]
  %101 = add nuw nsw i64 %5, 1
  %102 = zext i32 %99 to i64
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %3, label %104, !prof !1107, !llvm.loop !1163

104:                                              ; preds = %98, %0
  %105 = phi i32 [ 0, %0 ], [ %100, %98 ]
  ret i32 %105
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @pre_edge_insert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1072 !PGOFuncName !1164 {
  %3 = load ptr, ptr @pre_insert_map, align 8, !tbaa !440
  %4 = load ptr, ptr %3, align 8, !tbaa !440
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !1165
  %7 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !1166
  %9 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !487
  %10 = tail call ptr @sbitmap_vector_alloc(i32 noundef %8, i32 noundef %9) #22
  tail call void @sbitmap_vector_zero(ptr noundef %10, i32 noundef %8) #22
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %12, label %127, !prof !1168

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %14 = icmp sgt i32 %6, 0
  %15 = zext nneg i32 %8 to i64
  %16 = zext nneg i32 %6 to i64
  br label %17

17:                                               ; preds = %12, %123
  %18 = phi i64 [ 0, %12 ], [ %125, %123 ]
  %19 = phi i32 [ 0, %12 ], [ %124, %123 ]
  %20 = load ptr, ptr %13, align 8, !tbaa !1169
  %21 = getelementptr inbounds ptr, ptr %20, i64 %18
  %22 = load ptr, ptr %21, align 8, !tbaa !440
  %23 = load ptr, ptr %22, align 8, !tbaa !1038
  br i1 %14, label %24, label %123, !prof !1170

24:                                               ; preds = %17, %118
  %25 = phi i64 [ %120, %118 ], [ 0, %17 ]
  %26 = phi i32 [ %119, %118 ], [ %19, %17 ]
  %27 = phi i32 [ %121, %118 ], [ 0, %17 ]
  %28 = load ptr, ptr @pre_insert_map, align 8, !tbaa !440
  %29 = getelementptr inbounds ptr, ptr %28, i64 %18
  %30 = load ptr, ptr %29, align 8, !tbaa !440
  %31 = getelementptr inbounds %struct.simple_bitmap_def, ptr %30, i64 0, i32 3, i64 %25
  %32 = load i64, ptr %31, align 8, !tbaa !735
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %118, label %34, !prof !1171

34:                                               ; preds = %24
  %35 = sext i32 %27 to i64
  br label %36

36:                                               ; preds = %34, %113
  %37 = phi i64 [ %35, %34 ], [ %115, %113 ]
  %38 = phi i64 [ %32, %34 ], [ %116, %113 ]
  %39 = phi i32 [ %26, %34 ], [ %114, %113 ]
  %40 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !487
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %43, label %118, !prof !1172

43:                                               ; preds = %36
  %44 = and i64 %38, 1
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %113, label %46, !prof !1173

46:                                               ; preds = %43
  %47 = getelementptr inbounds ptr, ptr %1, i64 %37
  %48 = load ptr, ptr %47, align 8, !tbaa !440
  %49 = getelementptr inbounds %struct.expr, ptr %48, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !935
  %51 = icmp eq ptr %50, null
  br i1 %51, label %113, label %52, !prof !1044

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.expr, ptr %48, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !440
  %55 = icmp eq ptr %54, null
  br i1 %55, label %113, label %56, !prof !1064

56:                                               ; preds = %52
  %57 = getelementptr inbounds ptr, ptr %10, i64 %18
  %58 = lshr i64 %37, 6
  %59 = and i64 %58, 67108863
  %60 = and i64 %37, 63
  %61 = shl nuw i64 1, %60
  br label %62

62:                                               ; preds = %56, %109
  %63 = phi ptr [ %54, %56 ], [ %111, %109 ]
  %64 = phi i32 [ %39, %56 ], [ %110, %109 ]
  %65 = getelementptr inbounds %struct.occr, ptr %63, i64 0, i32 2
  %66 = load i8, ptr %65, align 8, !tbaa !863
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %109, label %68, !prof !1174

68:                                               ; preds = %62
  %69 = load ptr, ptr %57, align 8, !tbaa !440
  %70 = getelementptr inbounds %struct.simple_bitmap_def, ptr %69, i64 0, i32 3, i64 %59
  %71 = load i64, ptr %70, align 8, !tbaa !735
  %72 = and i64 %71, %61
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %109, !prof !1041

74:                                               ; preds = %68
  %75 = load ptr, ptr %13, align 8, !tbaa !1169
  %76 = getelementptr inbounds ptr, ptr %75, i64 %18
  %77 = load ptr, ptr %76, align 8, !tbaa !440
  %78 = getelementptr inbounds %struct.edge_def, ptr %77, i64 0, i32 7
  %79 = load i32, ptr %78, align 8, !tbaa !544
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  %82 = load ptr, ptr %47, align 8, !tbaa !440
  br i1 %81, label %84, label %83, !prof !1042

83:                                               ; preds = %74
  tail call fastcc void @insert_insn_end_basic_block(ptr noundef %82, ptr noundef %23) #21
  br label %86

84:                                               ; preds = %74
  %85 = tail call fastcc ptr @process_insert_insn(ptr noundef %82) #21
  tail call void @insert_insn_on_edge(ptr noundef %85, ptr noundef nonnull %77) #22
  br label %86

86:                                               ; preds = %84, %83
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %88 = icmp eq ptr %87, null
  br i1 %88, label %104, label %89, !prof !1042

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %91 = getelementptr inbounds %struct.expr, ptr %48, i64 0, i32 1
  %92 = load i32, ptr %90, align 8, !tbaa !552
  %93 = load ptr, ptr %13, align 8, !tbaa !1169
  %94 = getelementptr inbounds ptr, ptr %93, i64 %18
  %95 = load ptr, ptr %94, align 8, !tbaa !440
  %96 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !549
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %97, i64 0, i32 9
  %99 = load i32, ptr %98, align 8, !tbaa !552
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.40, i32 noundef %92, i32 noundef %99) #21
  %101 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %102 = load i32, ptr %91, align 8, !tbaa !562
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.41, i32 noundef %102) #21
  br label %104

104:                                              ; preds = %89, %86
  %105 = trunc i64 %37 to i32
  tail call fastcc void @update_ld_motion_stores(ptr noundef %48) #21
  %106 = load ptr, ptr %57, align 8, !tbaa !440
  tail call fastcc void @SET_BIT(ptr noundef %106, i32 noundef %105) #21
  %107 = load i32, ptr @gcse_create_count, align 4, !tbaa !436
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr @gcse_create_count, align 4, !tbaa !436
  br label %109

109:                                              ; preds = %68, %104, %62
  %110 = phi i32 [ %64, %68 ], [ 1, %104 ], [ %64, %62 ]
  %111 = load ptr, ptr %63, align 8, !tbaa !440
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %62, !prof !1175, !llvm.loop !1176

113:                                              ; preds = %109, %52, %43, %46
  %114 = phi i32 [ %39, %46 ], [ %39, %43 ], [ %39, %52 ], [ %110, %109 ]
  %115 = add nsw i64 %37, 1
  %116 = lshr i64 %38, 1
  %117 = icmp ult i64 %38, 2
  br i1 %117, label %118, label %36, !prof !1177, !llvm.loop !1178

118:                                              ; preds = %36, %113, %24
  %119 = phi i32 [ %26, %24 ], [ %114, %113 ], [ %39, %36 ]
  %120 = add nuw nsw i64 %25, 1
  %121 = add i32 %27, 64
  %122 = icmp eq i64 %120, %16
  br i1 %122, label %123, label %24, !prof !1179, !llvm.loop !1180

123:                                              ; preds = %118, %17
  %124 = phi i32 [ %19, %17 ], [ %119, %118 ]
  %125 = add nuw nsw i64 %18, 1
  %126 = icmp eq i64 %125, %15
  br i1 %126, label %127, label %17, !prof !1181, !llvm.loop !1182

127:                                              ; preds = %123, %2
  %128 = phi i32 [ 0, %2 ], [ %124, %123 ]
  tail call void @free(ptr noundef %10) #21
  ret i32 %128
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pre_insert_copies() unnamed_addr #0 !prof !1072 !PGOFuncName !1183 {
  %1 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !557
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %75, label %3, !prof !600

3:                                                ; preds = %0, %70
  %4 = phi i32 [ %71, %70 ], [ %1, %0 ]
  %5 = phi i64 [ %72, %70 ], [ 0, %0 ]
  %6 = load ptr, ptr @expr_hash_table, align 8, !tbaa !558
  %7 = getelementptr inbounds ptr, ptr %6, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !440
  %9 = icmp eq ptr %8, null
  br i1 %9, label %70, label %10, !prof !1103

10:                                               ; preds = %3, %64
  %11 = phi ptr [ %66, %64 ], [ %8, %3 ]
  %12 = getelementptr inbounds %struct.expr, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !935
  %14 = icmp eq ptr %13, null
  br i1 %14, label %64, label %15, !prof !1184

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.expr, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !440
  %18 = icmp eq ptr %17, null
  br i1 %18, label %64, label %19, !prof !600

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.expr, ptr %11, i64 0, i32 4
  br label %21

21:                                               ; preds = %19, %57
  %22 = phi ptr [ %17, %19 ], [ %59, %57 ]
  %23 = phi i32 [ 0, %19 ], [ %58, %57 ]
  %24 = getelementptr inbounds %struct.occr, ptr %22, i64 0, i32 2
  %25 = load i8, ptr %24, align 8, !tbaa !863
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %57, label %27, !prof !1185

27:                                               ; preds = %21
  %28 = load ptr, ptr %20, align 8, !tbaa !440
  %29 = icmp eq ptr %28, null
  br i1 %29, label %57, label %30, !prof !1064

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.occr, ptr %22, i64 0, i32 1
  br label %32

32:                                               ; preds = %30, %53
  %33 = phi ptr [ %28, %30 ], [ %55, %53 ]
  %34 = phi i32 [ %23, %30 ], [ %54, %53 ]
  %35 = getelementptr inbounds %struct.occr, ptr %33, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !859
  %37 = getelementptr inbounds %struct.occr, ptr %33, i64 0, i32 3
  %38 = load i8, ptr %37, align 1, !tbaa !932
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %53, !prof !1186

40:                                               ; preds = %32
  %41 = load i32, ptr %36, align 8
  %42 = and i32 %41, 134217728
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53, !prof !1187

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !427
  %47 = load ptr, ptr %31, align 8, !tbaa !859
  %48 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !427
  %50 = tail call fastcc i32 @pre_expr_reaches_here_p(ptr noundef %46, ptr noundef nonnull %11, ptr noundef %49) #21
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52, !prof !1188

52:                                               ; preds = %44
  tail call fastcc void @pre_insert_copy_insn(ptr noundef nonnull %11, ptr noundef nonnull %36) #21
  store i8 1, ptr %37, align 1, !tbaa !932
  br label %53

53:                                               ; preds = %44, %40, %32, %52
  %54 = phi i32 [ 1, %52 ], [ %34, %32 ], [ %34, %40 ], [ %34, %44 ]
  %55 = load ptr, ptr %33, align 8, !tbaa !440
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %32, !prof !1189, !llvm.loop !1190

57:                                               ; preds = %53, %27, %21
  %58 = phi i32 [ %23, %21 ], [ %23, %27 ], [ %54, %53 ]
  %59 = load ptr, ptr %22, align 8, !tbaa !440
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %21, !prof !1191, !llvm.loop !1192

61:                                               ; preds = %57
  %62 = icmp eq i32 %58, 0
  br i1 %62, label %64, label %63, !prof !1193

63:                                               ; preds = %61
  tail call fastcc void @update_ld_motion_stores(ptr noundef nonnull %11) #21
  br label %64

64:                                               ; preds = %15, %61, %63, %10
  %65 = getelementptr inbounds %struct.expr, ptr %11, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !440
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %10, !prof !1105, !llvm.loop !1194

68:                                               ; preds = %64
  %69 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !557
  br label %70

70:                                               ; preds = %68, %3
  %71 = phi i32 [ %69, %68 ], [ %4, %3 ]
  %72 = add nuw nsw i64 %5, 1
  %73 = zext i32 %71 to i64
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %3, label %75, !prof !1107, !llvm.loop !1195

75:                                               ; preds = %70, %0
  ret void
}

; Function Attrs: optsize
declare ptr @gen_reg_rtx_and_attrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gcse_emit_move_after(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !908 !PGOFuncName !1196 {
  %4 = load i32, ptr %2, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %16, !prof !1157

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !427
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 23
  br i1 %13, label %16, label %14, !prof !1158

14:                                               ; preds = %8
  %15 = tail call ptr @single_set_2(ptr noundef nonnull %2, ptr noundef nonnull %10) #22
  br label %16

16:                                               ; preds = %3, %8, %14
  %17 = phi ptr [ %15, %14 ], [ null, %3 ], [ %10, %8 ]
  %18 = tail call ptr @gen_move_insn(ptr noundef %1, ptr noundef %0) #22
  %19 = tail call ptr @emit_insn_after(ptr noundef %18, ptr noundef nonnull %2) #22
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = add nsw i32 %21, -7
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %24, label %48, !prof !1157

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !427
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 23
  br i1 %29, label %33, label %30, !prof !1158

30:                                               ; preds = %24
  %31 = tail call ptr @single_set_2(ptr noundef nonnull %19, ptr noundef nonnull %26) #22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %48, label %33, !prof !1197

33:                                               ; preds = %24, %30
  %34 = phi ptr [ %31, %30 ], [ %26, %24 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !427
  %37 = tail call i32 @rtx_equal_p(ptr noundef %36, ptr noundef %1) #22
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39, !prof !910

39:                                               ; preds = %33
  %40 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %2) #22
  %41 = icmp eq ptr %40, null
  %42 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %43 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = select i1 %41, ptr %43, ptr %42, !prof !1158
  %45 = load ptr, ptr %44, align 8, !tbaa !427
  %46 = tail call ptr @copy_insn_1(ptr noundef %45) #22
  %47 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %19, i32 noundef 4, ptr noundef %46) #22
  br label %48

48:                                               ; preds = %16, %30, %33, %39
  ret void
}

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_insn_1(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_insn_end_basic_block(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !474 !PGOFuncName !1198 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !427
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !495
  %7 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !935
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef %8) #21
  %10 = tail call fastcc ptr @process_insert_insn(ptr noundef %0) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %10, align 8
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -7
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3425, ptr noundef nonnull @.str.17) #22
  br label %18

18:                                               ; preds = %12, %17
  br label %19

19:                                               ; preds = %18, %19
  %20 = phi ptr [ %22, %19 ], [ %10, %18 ]
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !427
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19, !llvm.loop !1199

24:                                               ; preds = %19
  %25 = load i32, ptr %6, align 8
  %26 = trunc i32 %25 to i16
  switch i16 %26, label %49 [
    i16 9, label %38
    i16 8, label %27
  ]

27:                                               ; preds = %24
  %28 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %1) #21, !range !482
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @single_succ_edge(ptr noundef %1) #21
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !544
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, ptr %6, align 8
  br label %49

38:                                               ; preds = %27, %30, %24
  %39 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !427
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65534
  %43 = icmp eq i32 %42, 20
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = tail call ptr @prev_real_insn(ptr noundef nonnull %6) #22
  br label %46

46:                                               ; preds = %38, %44
  %47 = phi ptr [ %45, %44 ], [ %6, %38 ]
  %48 = tail call ptr @emit_insn_before_noloc(ptr noundef %10, ptr noundef %47, ptr noundef %1) #22
  br label %81

49:                                               ; preds = %36, %24
  %50 = phi i32 [ %37, %36 ], [ %25, %24 ]
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %79

53:                                               ; preds = %49
  %54 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %1) #21, !range !482
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = tail call fastcc ptr @single_succ_edge(ptr noundef %1) #21
  %58 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 7
  %59 = load i32, ptr %58, align 8, !tbaa !544
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %53, %56
  %63 = load ptr, ptr %3, align 8, !tbaa !427
  %64 = load ptr, ptr %63, align 8, !tbaa !686
  %65 = tail call ptr @find_first_parameter_load(ptr noundef nonnull %6, ptr noundef %64) #22
  br label %66

66:                                               ; preds = %74, %62
  %67 = phi ptr [ %65, %62 ], [ %76, %74 ]
  %68 = load i32, ptr %67, align 8
  %69 = trunc i32 %68 to i16
  switch i16 %69, label %77 [
    i16 12, label %74
    i16 13, label %70
  ]

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 1
  %72 = load i32, ptr %71, align 8, !tbaa !427
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %74, label %77

74:                                               ; preds = %66, %70
  %75 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 2
  %76 = load ptr, ptr %75, align 8, !tbaa !427
  br label %66, !llvm.loop !1200

77:                                               ; preds = %66, %70
  %78 = tail call ptr @emit_insn_before_noloc(ptr noundef %10, ptr noundef nonnull %67, ptr noundef %1) #22
  br label %81

79:                                               ; preds = %56, %49
  %80 = tail call ptr @emit_insn_after_noloc(ptr noundef %10, ptr noundef nonnull %6, ptr noundef %1) #22
  br label %81

81:                                               ; preds = %77, %79, %46
  %82 = phi ptr [ %48, %46 ], [ %78, %77 ], [ %80, %79 ]
  br label %83

83:                                               ; preds = %94, %81
  %84 = phi ptr [ %10, %81 ], [ %96, %94 ]
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = add nsw i32 %86, -7
  %88 = icmp ult i32 %87, 4
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !427
  tail call fastcc void @add_label_notes(ptr noundef %91, ptr noundef %82) #21
  br label %92

92:                                               ; preds = %83, %89
  %93 = icmp eq ptr %84, %20
  br i1 %93, label %97, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 2
  %96 = load ptr, ptr %95, align 8, !tbaa !427
  br label %83

97:                                               ; preds = %92
  %98 = load i32, ptr @gcse_create_count, align 4, !tbaa !436
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr @gcse_create_count, align 4, !tbaa !436
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %104 = load i32, ptr %103, align 8, !tbaa !552
  %105 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !427
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %100, ptr noundef nonnull @.str.42, i32 noundef %104, i32 noundef %106) #21
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %109 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !562
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.43, i32 noundef %110, i32 noundef %9) #21
  br label %112

112:                                              ; preds = %102, %97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @process_insert_insn(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1062 !PGOFuncName !1201 {
  %2 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !935
  %4 = load ptr, ptr %0, align 8, !tbaa !566
  %5 = tail call ptr @copy_rtx(ptr noundef %4) #22
  tail call void @start_sequence() #22
  %6 = load i32, ptr %3, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = tail call i32 @general_operand(ptr noundef %5, i32 noundef %8) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !1044

11:                                               ; preds = %1
  %12 = tail call ptr @emit_move_insn(ptr noundef nonnull %3, ptr noundef %5) #22
  br label %19

13:                                               ; preds = %1
  %14 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %3, ptr noundef %5) #22
  %15 = tail call ptr @emit_insn(ptr noundef %14) #22
  %16 = tail call i32 @insn_invalid_p(ptr noundef %15) #22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3397, ptr noundef nonnull @.str.17) #22
  br label %19

19:                                               ; preds = %13, %18, %11
  %20 = tail call ptr @get_insns() #22
  tail call void @end_sequence() #22
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_ld_motion_stores(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !908 !PGOFuncName !1202 {
  %2 = load ptr, ptr %0, align 8, !tbaa !566
  %3 = tail call fastcc ptr @find_rtx_in_ldst(ptr noundef %2) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5, !prof !913

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ls_expr, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !427
  %8 = icmp eq ptr %7, null
  br i1 %8, label %47, label %9, !prof !1042

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 5
  br label %11

11:                                               ; preds = %9, %43
  %12 = phi ptr [ %7, %9 ], [ %45, %43 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !427
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !427
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !427
  %19 = load ptr, ptr %10, align 8, !tbaa !935
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %43, label %21

21:                                               ; preds = %11
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 38, i64 1, ptr nonnull %22)
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %27 = load ptr, ptr %10, align 8, !tbaa !935
  tail call void @print_rtl(ptr noundef %26, ptr noundef %27) #22
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %29 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 3, i64 1, ptr %28)
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !440
  tail call void @print_inline_rtx(ptr noundef %30, ptr noundef nonnull %14, i32 noundef 8) #22
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %32 = tail call i32 @fputc(i32 10, ptr %31)
  %33 = load ptr, ptr %17, align 8, !tbaa !427
  br label %34

34:                                               ; preds = %24, %21
  %35 = phi ptr [ %33, %24 ], [ %18, %21 ]
  %36 = tail call ptr @copy_rtx(ptr noundef %35) #22
  %37 = tail call ptr @gen_move_insn(ptr noundef %19, ptr noundef %36) #22
  %38 = tail call ptr @emit_insn_before(ptr noundef %37, ptr noundef nonnull %14) #22
  store ptr %19, ptr %17, align 8, !tbaa !427
  %39 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %14) #22
  %40 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1, i32 1
  store i32 -1, ptr %40, align 8, !tbaa !427
  %41 = load i32, ptr @gcse_create_count, align 4, !tbaa !436
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr @gcse_create_count, align 4, !tbaa !436
  br label %43

43:                                               ; preds = %11, %34
  %44 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !427
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %11, !prof !960, !llvm.loop !1203

47:                                               ; preds = %43, %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !474 !PGOFuncName !1204 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !537
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #21
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !474 !PGOFuncName !1205 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #21, !range !482
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 645, ptr noundef nonnull @.str.17) #22
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !537
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #21
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @prev_real_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_before_noloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_first_parameter_load(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_after_noloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_label_notes(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !474 !PGOFuncName !1206 {
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 4030, ptr noundef nonnull @.str.17) #22
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !427
  tail call void @add_reg_note(ptr noundef nonnull %1, i32 noundef 10, ptr noundef %13) #22
  %14 = load ptr, ptr %12, align 8, !tbaa !427
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 12
  br i1 %17, label %18, label %57

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !427
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !427
  br label %57

22:                                               ; preds = %2
  %23 = and i32 %3, 65535
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !427
  %27 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %24
  %28 = load ptr, ptr %27, align 8, !tbaa !440
  %29 = icmp eq i8 %26, 0
  br i1 %29, label %57, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %32 = zext i8 %26 to i64
  br label %33

33:                                               ; preds = %30, %55
  %34 = phi i64 [ %32, %30 ], [ %35, %55 ]
  %35 = add nsw i64 %34, -1
  %36 = getelementptr inbounds i8, ptr %28, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !427
  switch i8 %37, label %55 [
    i8 101, label %38
    i8 69, label %41
  ]

38:                                               ; preds = %33
  %39 = getelementptr inbounds [1 x %union.rtunion_def], ptr %31, i64 0, i64 %35
  %40 = load ptr, ptr %39, align 8, !tbaa !427
  tail call fastcc void @add_label_notes(ptr noundef %40, ptr noundef %1) #21
  br label %55

41:                                               ; preds = %33
  %42 = getelementptr inbounds [1 x %union.rtunion_def], ptr %31, i64 0, i64 %35
  %43 = load ptr, ptr %42, align 8, !tbaa !427
  %44 = load i32, ptr %43, align 8, !tbaa !592
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = zext nneg i32 %44 to i64
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i64 [ %47, %46 ], [ %50, %48 ]
  %50 = add nsw i64 %49, -1
  %51 = load ptr, ptr %42, align 8, !tbaa !427
  %52 = getelementptr inbounds %struct.rtvec_def, ptr %51, i64 0, i32 1, i64 %50
  %53 = load ptr, ptr %52, align 8, !tbaa !440
  tail call fastcc void @add_label_notes(ptr noundef %53, ptr noundef %1) #21
  %54 = icmp ugt i64 %49, 1
  br i1 %54, label %48, label %55, !llvm.loop !1207

55:                                               ; preds = %48, %41, %33, %38
  %56 = icmp sgt i64 %34, 1
  br i1 %56, label %33, label %57, !llvm.loop !1208

57:                                               ; preds = %55, %22, %11, %18
  ret void
}

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @insn_invalid_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @pre_expr_reaches_here_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !1209 !PGOFuncName !1210 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !440
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !477
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !485
  %9 = sext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 1) #22
  %11 = tail call fastcc i32 @pre_expr_reaches_here_p_work(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %10) #21
  tail call void @free(ptr noundef %10) #21
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pre_insert_copy_insn(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1211 !PGOFuncName !1212 {
  %3 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !935
  %5 = tail call fastcc i32 @rhs_regno(ptr noundef %4) #21
  %6 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !562
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !427
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i16
  switch i16 %12, label %57 [
    i16 23, label %58
    i16 15, label %13
  ], !prof !1213

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !427
  %16 = load i32, ptr %15, align 8, !tbaa !592
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %13, %39
  %19 = phi i32 [ %40, %39 ], [ %16, %13 ]
  %20 = phi ptr [ %41, %39 ], [ %15, %13 ]
  %21 = phi i64 [ %43, %39 ], [ 0, %13 ]
  %22 = phi ptr [ %42, %39 ], [ null, %13 ]
  %23 = getelementptr inbounds %struct.rtvec_def, ptr %20, i64 0, i32 1, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !440
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 23
  br i1 %27, label %28, label %39

28:                                               ; preds = %18
  %29 = icmp eq ptr %22, null
  %30 = select i1 %29, ptr %24, ptr %22
  %31 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !427
  %33 = load ptr, ptr %0, align 8, !tbaa !566
  %34 = tail call fastcc i32 @expr_equiv_p(ptr noundef %32, ptr noundef %33) #21
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load ptr, ptr %14, align 8, !tbaa !427
  %38 = load i32, ptr %37, align 8, !tbaa !592
  br label %39

39:                                               ; preds = %36, %18
  %40 = phi i32 [ %19, %18 ], [ %38, %36 ]
  %41 = phi ptr [ %20, %18 ], [ %37, %36 ]
  %42 = phi ptr [ %22, %18 ], [ %30, %36 ]
  %43 = add nuw nsw i64 %21, 1
  %44 = sext i32 %40 to i64
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %18, label %46, !llvm.loop !1214

46:                                               ; preds = %39, %28
  %47 = phi ptr [ %42, %39 ], [ %30, %28 ]
  %48 = phi ptr [ null, %39 ], [ %24, %28 ]
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %13, %46
  %51 = phi ptr [ %48, %46 ], [ null, %13 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3676, ptr noundef nonnull @.str.17) #22
  br label %52

52:                                               ; preds = %46, %50
  %53 = phi ptr [ %48, %46 ], [ %51, %50 ]
  %54 = phi ptr [ %47, %46 ], [ null, %50 ]
  %55 = icmp eq ptr %53, null
  %56 = select i1 %55, ptr %54, ptr %53
  br label %58

57:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3682, ptr noundef nonnull @.str.17) #22
  br label %58

58:                                               ; preds = %52, %2, %57
  %59 = phi ptr [ undef, %57 ], [ %10, %2 ], [ %56, %52 ]
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !427
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 37
  br i1 %64, label %65, label %74, !prof !1215

65:                                               ; preds = %58
  %66 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %60, ptr noundef %4, i8 noundef zeroext 0) #22
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %71, label %68, !prof !1216

68:                                               ; preds = %65
  %69 = tail call ptr @gen_move_insn(ptr noundef nonnull %61, ptr noundef %4) #22
  %70 = tail call ptr @emit_insn_after(ptr noundef %69, ptr noundef %1) #22
  br label %84

71:                                               ; preds = %65
  %72 = tail call ptr @gen_move_insn(ptr noundef %4, ptr noundef nonnull %61) #22
  %73 = tail call ptr @emit_insn_after(ptr noundef %72, ptr noundef %1) #22
  br label %84

74:                                               ; preds = %58
  %75 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !427
  %77 = tail call ptr @gen_move_insn(ptr noundef %4, ptr noundef %76) #22
  %78 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %75, ptr noundef %4, i8 noundef zeroext 0) #22
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = tail call ptr @emit_insn_before(ptr noundef %77, ptr noundef %1) #22
  br label %84

82:                                               ; preds = %74
  %83 = tail call ptr @emit_insn_after(ptr noundef %77, ptr noundef %1) #22
  br label %84

84:                                               ; preds = %80, %82, %68, %71
  %85 = phi ptr [ %70, %68 ], [ %73, %71 ], [ %81, %80 ], [ %83, %82 ]
  %86 = load i32, ptr @gcse_create_count, align 4, !tbaa !436
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr @gcse_create_count, align 4, !tbaa !436
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %89 = icmp eq ptr %88, null
  br i1 %89, label %99, label %90, !prof !1215

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !427
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 9
  %94 = load i32, ptr %93, align 8, !tbaa !552
  %95 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !427
  %97 = load i32, ptr %8, align 8, !tbaa !427
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %88, ptr noundef nonnull @.str.46, i32 noundef %94, i32 noundef %96, i32 noundef %7, i32 noundef %97, i32 noundef %5) #21
  br label %99

99:                                               ; preds = %90, %84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @pre_expr_reaches_here_p_work(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !1217 !PGOFuncName !1218 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  %7 = tail call fastcc ptr @ei_start_1(ptr noundef %2) #21
  store i32 0, ptr %6, align 8, !tbaa.struct !684
  %8 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %7, ptr %8, align 8, !tbaa.struct !685
  %9 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %7, ptr noundef nonnull %5) #21, !range !482
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %61, label %11, !prof !1219

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.expr, ptr %1, i64 0, i32 1
  br label %13

13:                                               ; preds = %11, %56
  %14 = load ptr, ptr %5, align 8, !tbaa !440
  %15 = load ptr, ptr %14, align 8, !tbaa !1038
  %16 = load ptr, ptr @cfun, align 8, !tbaa !440
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !477
  %19 = load ptr, ptr %18, align 8, !tbaa !490
  %20 = icmp eq ptr %15, %19
  br i1 %20, label %56, label %21, !prof !1220

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !552
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %3, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !427
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %56, !prof !1221

28:                                               ; preds = %21
  %29 = load ptr, ptr @comp, align 8, !tbaa !440
  %30 = getelementptr inbounds ptr, ptr %29, i64 %24
  %31 = load ptr, ptr %30, align 8, !tbaa !440
  %32 = load i32, ptr %12, align 8, !tbaa !562
  %33 = lshr i32 %32, 6
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds %struct.simple_bitmap_def, ptr %31, i64 0, i32 3, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !735
  %37 = and i32 %32, 63
  %38 = zext nneg i32 %37 to i64
  %39 = shl nuw i64 1, %38
  %40 = and i64 %39, %36
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %45, label %42, !prof !1222

42:                                               ; preds = %28
  %43 = icmp eq ptr %15, %0
  br i1 %43, label %61, label %44, !prof !1223

44:                                               ; preds = %42
  store i8 1, ptr %25, align 1, !tbaa !427
  br label %56

45:                                               ; preds = %28
  %46 = load ptr, ptr @transp, align 8, !tbaa !440
  %47 = getelementptr inbounds ptr, ptr %46, i64 %24
  %48 = load ptr, ptr %47, align 8, !tbaa !440
  %49 = getelementptr inbounds %struct.simple_bitmap_def, ptr %48, i64 0, i32 3, i64 %34
  %50 = load i64, ptr %49, align 8, !tbaa !735
  %51 = and i64 %50, %39
  %52 = icmp eq i64 %51, 0
  store i8 1, ptr %25, align 1, !tbaa !427
  br i1 %52, label %56, label %53, !prof !1224

53:                                               ; preds = %45
  %54 = tail call fastcc i32 @pre_expr_reaches_here_p_work(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %15, ptr noundef nonnull %3) #21
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61, !prof !1225

56:                                               ; preds = %45, %44, %53, %13, %21
  call fastcc void @ei_next(ptr noundef nonnull %6) #21
  %57 = load i32, ptr %6, align 8
  %58 = load ptr, ptr %8, align 8
  %59 = call fastcc zeroext i8 @ei_cond(i32 %57, ptr %58, ptr noundef nonnull %5) #21, !range !482
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %13, !prof !1226, !llvm.loop !1227

61:                                               ; preds = %53, %42, %56, %4
  %62 = phi i32 [ 0, %4 ], [ 0, %56 ], [ 1, %42 ], [ 1, %53 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  ret i32 %62
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @one_code_hoisting_pass() unnamed_addr #0 !prof !474 !PGOFuncName !1228 {
  store i32 0, ptr @gcse_subst_count, align 4, !tbaa !436
  store i32 0, ptr @gcse_create_count, align 4, !tbaa !436
  %1 = load ptr, ptr @cfun, align 8, !tbaa !440
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !477
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !479
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %56, label %7

7:                                                ; preds = %0
  %8 = tail call fastcc zeroext i8 @is_too_expensive(ptr noundef nonnull @.str.47) #21, !range !482
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %7
  tail call void @init_alias_analysis() #22
  store i32 0, ptr @bytes_used, align 4, !tbaa !436
  %11 = tail call i32 @_obstack_begin(ptr noundef nonnull @gcse_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #22
  tail call fastcc void @alloc_gcse_mem() #21
  tail call fastcc void @alloc_hash_table(ptr noundef nonnull @expr_hash_table, i32 noundef 0) #21
  tail call fastcc void @compute_hash_table(ptr noundef nonnull @expr_hash_table) #21
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call fastcc void @dump_hash_table(ptr noundef nonnull %12, ptr noundef nonnull @.str.48, ptr noundef nonnull @expr_hash_table) #21
  br label %15

15:                                               ; preds = %14, %10
  %16 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !487
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @cfun, align 8, !tbaa !440
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !477
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !485
  tail call fastcc void @alloc_code_hoist_mem(i32 noundef %23, i32 noundef %16) #21
  tail call fastcc void @compute_code_hoist_data() #21
  %24 = tail call fastcc i32 @hoist_code() #21, !range !466
  tail call fastcc void @free_code_hoist_mem() #21
  br label %25

25:                                               ; preds = %18, %15
  %26 = phi i32 [ %24, %18 ], [ 0, %15 ]
  tail call fastcc void @free_hash_table(ptr noundef nonnull @expr_hash_table) #21
  tail call fastcc void @free_gcse_mem() #21
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 1), align 8, !tbaa !504
  %28 = ptrtoint ptr %27 to i64
  %29 = sub i64 0, %28
  store i64 %29, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !506
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !507
  %33 = ptrtoint ptr %32 to i64
  %34 = sub i64 %33, %28
  %35 = icmp sgt i64 %34, %29
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, ptr %27, i64 %29
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !508
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !509
  br label %40

38:                                               ; preds = %31, %25
  %39 = getelementptr inbounds i8, ptr %27, i64 %29
  tail call void @obstack_free(ptr noundef nonnull @gcse_obstack, ptr noundef %39) #22
  br label %40

40:                                               ; preds = %38, %36
  tail call void @end_alias_analysis() #22
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  %44 = tail call ptr @current_function_name() #22
  %45 = load ptr, ptr @cfun, align 8, !tbaa !440
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !477
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !479
  %50 = load i32, ptr @bytes_used, align 4, !tbaa !436
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %41, ptr noundef nonnull @.str.49, ptr noundef %44, i32 noundef %49, i32 noundef %50) #21
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %53 = load i32, ptr @gcse_subst_count, align 4, !tbaa !436
  %54 = load i32, ptr @gcse_create_count, align 4, !tbaa !436
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.31, i32 noundef %53, i32 noundef %54) #21
  br label %56

56:                                               ; preds = %40, %43, %0, %7
  %57 = phi i32 [ 0, %7 ], [ 0, %0 ], [ %26, %43 ], [ %26, %40 ]
  ret i32 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_code_hoist_mem(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !474 !PGOFuncName !1229 {
  %3 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #22
  store ptr %3, ptr @antloc, align 8, !tbaa !440
  %4 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #22
  store ptr %4, ptr @transp, align 8, !tbaa !440
  %5 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #22
  store ptr %5, ptr @comp, align 8, !tbaa !440
  %6 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #22
  store ptr %6, ptr @hoist_vbein, align 8, !tbaa !440
  %7 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #22
  store ptr %7, ptr @hoist_vbeout, align 8, !tbaa !440
  %8 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #22
  store ptr %8, ptr @hoist_exprs, align 8, !tbaa !440
  %9 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #22
  store ptr %9, ptr @transpout, align 8, !tbaa !440
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_code_hoist_data() unnamed_addr #0 !prof !474 !PGOFuncName !1230 {
  %1 = load ptr, ptr @transp, align 8, !tbaa !440
  %2 = load ptr, ptr @comp, align 8, !tbaa !440
  %3 = load ptr, ptr @antloc, align 8, !tbaa !440
  tail call fastcc void @compute_local_properties(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @expr_hash_table) #21
  tail call fastcc void @compute_transpout() #21
  tail call fastcc void @compute_code_hoist_vbeinout() #21
  tail call void @calculate_dominance_info(i32 noundef 1) #22
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = tail call i32 @fputc(i32 10, ptr nonnull %4)
  br label %8

8:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @hoist_code() unnamed_addr #0 !prof !474 !PGOFuncName !1231 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %3 = load ptr, ptr @hoist_exprs, align 8, !tbaa !440
  %4 = load ptr, ptr @cfun, align 8, !tbaa !440
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !477
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !485
  tail call void @sbitmap_vector_zero(ptr noundef %3, i32 noundef %8) #22
  %9 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !487
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 8) #22
  %12 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !557
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %0
  %15 = zext i32 %12 to i64
  br label %16

16:                                               ; preds = %14, %31
  %17 = phi i64 [ 0, %14 ], [ %32, %31 ]
  %18 = load ptr, ptr @expr_hash_table, align 8, !tbaa !558
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !440
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %16, %22
  %23 = phi ptr [ %29, %22 ], [ %20, %16 ]
  %24 = getelementptr inbounds %struct.expr, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !562
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %11, i64 %26
  store ptr %23, ptr %27, align 8, !tbaa !440
  %28 = getelementptr inbounds %struct.expr, ptr %23, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !440
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %22, !llvm.loop !1232

31:                                               ; preds = %22, %16
  %32 = add nuw nsw i64 %17, 1
  %33 = icmp eq i64 %32, %15
  br i1 %33, label %34, label %16, !llvm.loop !1233

34:                                               ; preds = %31, %0
  %35 = load ptr, ptr @cfun, align 8, !tbaa !440
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !477
  %38 = load ptr, ptr %37, align 8, !tbaa !490
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !491
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !493
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %255, label %44

44:                                               ; preds = %34, %245
  %45 = phi ptr [ %248, %245 ], [ %40, %34 ]
  %46 = phi i32 [ %246, %245 ], [ 0, %34 ]
  %47 = tail call ptr @get_dominated_by(i32 noundef 1, ptr noundef %45) #22
  store ptr %47, ptr %2, align 8, !tbaa !440
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 9
  %49 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !440
  %50 = load i32, ptr %48, align 8, !tbaa !552
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !440
  %54 = getelementptr inbounds %struct.simple_bitmap_def, ptr %53, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !1234
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %245, label %57

57:                                               ; preds = %44, %118
  %58 = phi i32 [ %119, %118 ], [ %50, %44 ]
  %59 = phi ptr [ %125, %118 ], [ %53, %44 ]
  %60 = phi i64 [ %123, %118 ], [ %51, %44 ]
  %61 = phi i32 [ %121, %118 ], [ 0, %44 ]
  %62 = phi i32 [ %120, %118 ], [ 0, %44 ]
  %63 = lshr i32 %61, 6
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds %struct.simple_bitmap_def, ptr %59, i64 0, i32 3, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !735
  %67 = and i32 %61, 63
  %68 = zext nneg i32 %67 to i64
  %69 = shl nuw i64 1, %68
  %70 = and i64 %66, %69
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %118, label %72

72:                                               ; preds = %57
  %73 = load ptr, ptr @transpout, align 8, !tbaa !440
  %74 = getelementptr inbounds ptr, ptr %73, i64 %60
  %75 = load ptr, ptr %74, align 8, !tbaa !440
  %76 = getelementptr inbounds %struct.simple_bitmap_def, ptr %75, i64 0, i32 3, i64 %64
  %77 = load i64, ptr %76, align 8, !tbaa !735
  %78 = and i64 %77, %69
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %118, label %80

80:                                               ; preds = %72
  %81 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %47, i32 noundef 0, ptr noundef nonnull %1) #21, !range !466
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %115, label %83

83:                                               ; preds = %80, %102
  %84 = phi i32 [ %104, %102 ], [ 0, %80 ]
  %85 = phi i32 [ %103, %102 ], [ 0, %80 ]
  %86 = load ptr, ptr %1, align 8, !tbaa !440
  %87 = icmp eq ptr %45, %86
  br i1 %87, label %102, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr @antloc, align 8, !tbaa !440
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 9
  %91 = load i32, ptr %90, align 8, !tbaa !552
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %89, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !440
  %95 = getelementptr inbounds %struct.simple_bitmap_def, ptr %94, i64 0, i32 3, i64 %64
  %96 = load i64, ptr %95, align 8, !tbaa !735
  %97 = and i64 %96, %69
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %88
  %100 = tail call fastcc i32 @hoist_expr_reaches_here_p(ptr noundef %45, i32 noundef %61, ptr noundef nonnull %86, ptr noundef null) #21, !range !466
  %101 = add nsw i32 %100, %85
  br label %102

102:                                              ; preds = %99, %88, %83
  %103 = phi i32 [ %85, %83 ], [ %85, %88 ], [ %101, %99 ]
  %104 = add i32 %84, 1
  %105 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %47, i32 noundef %104, ptr noundef nonnull %1) #21, !range !466
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %83, !llvm.loop !1235

107:                                              ; preds = %102
  %108 = icmp sgt i32 %103, 1
  %109 = load i32, ptr %48, align 8, !tbaa !552
  br i1 %108, label %110, label %118

110:                                              ; preds = %107
  %111 = load ptr, ptr @hoist_exprs, align 8, !tbaa !440
  %112 = sext i32 %109 to i64
  %113 = getelementptr inbounds ptr, ptr %111, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !440
  tail call fastcc void @SET_BIT(ptr noundef %114, i32 noundef %61) #21
  br label %115

115:                                              ; preds = %80, %110
  %116 = phi i32 [ 1, %110 ], [ %62, %80 ]
  %117 = load i32, ptr %48, align 8, !tbaa !552
  br label %118

118:                                              ; preds = %115, %107, %72, %57
  %119 = phi i32 [ %109, %107 ], [ %58, %72 ], [ %58, %57 ], [ %117, %115 ]
  %120 = phi i32 [ %62, %107 ], [ %62, %72 ], [ %62, %57 ], [ %116, %115 ]
  %121 = add nuw i32 %61, 1
  %122 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !440
  %123 = sext i32 %119 to i64
  %124 = getelementptr inbounds ptr, ptr %122, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !440
  %126 = getelementptr inbounds %struct.simple_bitmap_def, ptr %125, i64 0, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !1234
  %128 = icmp ult i32 %121, %127
  br i1 %128, label %57, label %129, !llvm.loop !1236

129:                                              ; preds = %118
  %130 = icmp eq i32 %120, 0
  br i1 %130, label %245, label %131

131:                                              ; preds = %129
  %132 = load ptr, ptr @hoist_exprs, align 8, !tbaa !440
  %133 = sext i32 %119 to i64
  %134 = getelementptr inbounds ptr, ptr %132, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !440
  %136 = getelementptr inbounds %struct.simple_bitmap_def, ptr %135, i64 0, i32 1
  %137 = load i32, ptr %136, align 8, !tbaa !1234
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %245, label %139

139:                                              ; preds = %131, %233
  %140 = phi ptr [ %234, %233 ], [ %132, %131 ]
  %141 = phi i64 [ %236, %233 ], [ 0, %131 ]
  %142 = phi ptr [ %240, %233 ], [ %135, %131 ]
  %143 = phi i32 [ %235, %233 ], [ %46, %131 ]
  %144 = trunc i64 %141 to i32
  %145 = lshr i64 %141, 6
  %146 = getelementptr inbounds %struct.simple_bitmap_def, ptr %142, i64 0, i32 3, i64 %145
  %147 = load i64, ptr %146, align 8, !tbaa !735
  %148 = and i64 %141, 63
  %149 = shl nuw i64 1, %148
  %150 = and i64 %147, %149
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %233, label %152

152:                                              ; preds = %139
  %153 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %47, i32 noundef 0, ptr noundef nonnull %1) #21, !range !466
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %233, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds ptr, ptr %11, i64 %141
  br label %157

157:                                              ; preds = %155, %225
  %158 = phi i32 [ 0, %155 ], [ %228, %225 ]
  %159 = phi i32 [ 0, %155 ], [ %227, %225 ]
  %160 = phi i32 [ %143, %155 ], [ %226, %225 ]
  %161 = load ptr, ptr %1, align 8, !tbaa !440
  %162 = icmp eq ptr %45, %161
  br i1 %162, label %225, label %163

163:                                              ; preds = %157
  %164 = load ptr, ptr @antloc, align 8, !tbaa !440
  %165 = getelementptr inbounds %struct.basic_block_def, ptr %161, i64 0, i32 9
  %166 = load i32, ptr %165, align 8, !tbaa !552
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds ptr, ptr %164, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !440
  %170 = getelementptr inbounds %struct.simple_bitmap_def, ptr %169, i64 0, i32 3, i64 %145
  %171 = load i64, ptr %170, align 8, !tbaa !735
  %172 = and i64 %171, %149
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %225, label %174

174:                                              ; preds = %163
  %175 = tail call fastcc i32 @hoist_expr_reaches_here_p(ptr noundef %45, i32 noundef %144, ptr noundef nonnull %161, ptr noundef null) #21, !range !466
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %225, label %177

177:                                              ; preds = %174
  %178 = load ptr, ptr %156, align 8, !tbaa !440
  %179 = getelementptr inbounds %struct.expr, ptr %178, i64 0, i32 3
  br label %180

180:                                              ; preds = %180, %177
  %181 = phi ptr [ %179, %177 ], [ %182, %180 ]
  %182 = load ptr, ptr %181, align 8, !tbaa !440
  %183 = getelementptr inbounds %struct.occr, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !859
  %185 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1, i32 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !427
  %187 = icmp ne ptr %186, %161
  %188 = icmp ne ptr %182, null
  %189 = and i1 %188, %187
  br i1 %189, label %180, label %190, !llvm.loop !1237

190:                                              ; preds = %180
  %191 = load i32, ptr %184, align 8
  %192 = and i32 %191, 65535
  %193 = add nsw i32 %192, -7
  %194 = icmp ult i32 %193, 4
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 1
  %197 = load ptr, ptr %196, align 8, !tbaa !427
  %198 = load i32, ptr %197, align 8
  %199 = and i32 %198, 65535
  %200 = icmp eq i32 %199, 23
  br i1 %200, label %205, label %201

201:                                              ; preds = %195
  %202 = tail call ptr @single_set_2(ptr noundef nonnull %184, ptr noundef nonnull %197) #22
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %190, %201
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 4387, ptr noundef nonnull @.str.17) #22
  br label %205

205:                                              ; preds = %195, %201, %204
  %206 = phi ptr [ %202, %201 ], [ null, %204 ], [ %197, %195 ]
  %207 = getelementptr inbounds %struct.expr, ptr %178, i64 0, i32 5
  %208 = load ptr, ptr %207, align 8, !tbaa !935
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !427
  %213 = tail call ptr @gen_reg_rtx_and_attrs(ptr noundef %212) #22
  store ptr %213, ptr %207, align 8, !tbaa !935
  br label %214

214:                                              ; preds = %210, %205
  %215 = phi ptr [ %213, %210 ], [ %208, %205 ]
  %216 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !427
  tail call fastcc void @gcse_emit_move_after(ptr noundef %215, ptr noundef %217, ptr noundef nonnull %184) #21
  %218 = tail call ptr @delete_insn(ptr noundef nonnull %184) #22
  %219 = getelementptr inbounds %struct.occr, ptr %182, i64 0, i32 2
  store i8 1, ptr %219, align 8, !tbaa !863
  %220 = load i32, ptr @gcse_subst_count, align 4, !tbaa !436
  %221 = add nsw i32 %220, 1
  store i32 %221, ptr @gcse_subst_count, align 4, !tbaa !436
  %222 = icmp eq i32 %159, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %214
  %224 = load ptr, ptr %156, align 8, !tbaa !440
  tail call fastcc void @insert_insn_end_basic_block(ptr noundef %224, ptr noundef %45) #21
  br label %225

225:                                              ; preds = %214, %223, %174, %163, %157
  %226 = phi i32 [ %160, %157 ], [ %160, %174 ], [ %160, %163 ], [ 1, %223 ], [ 1, %214 ]
  %227 = phi i32 [ %159, %157 ], [ %159, %174 ], [ %159, %163 ], [ 1, %223 ], [ 1, %214 ]
  %228 = add i32 %158, 1
  %229 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %47, i32 noundef %228, ptr noundef nonnull %1) #21, !range !466
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %157, !llvm.loop !1238

231:                                              ; preds = %225
  %232 = load ptr, ptr @hoist_exprs, align 8, !tbaa !440
  br label %233

233:                                              ; preds = %231, %152, %139
  %234 = phi ptr [ %140, %139 ], [ %140, %152 ], [ %232, %231 ]
  %235 = phi i32 [ %143, %139 ], [ %143, %152 ], [ %226, %231 ]
  %236 = add nuw nsw i64 %141, 1
  %237 = load i32, ptr %48, align 8, !tbaa !552
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds ptr, ptr %234, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !440
  %241 = getelementptr inbounds %struct.simple_bitmap_def, ptr %240, i64 0, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !1234
  %243 = zext i32 %242 to i64
  %244 = icmp ult i64 %236, %243
  br i1 %244, label %139, label %245, !llvm.loop !1239

245:                                              ; preds = %233, %131, %129, %44
  %246 = phi i32 [ %46, %44 ], [ %46, %129 ], [ %46, %131 ], [ %235, %233 ]
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %2) #21
  %247 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 6
  %248 = load ptr, ptr %247, align 8, !tbaa !491
  %249 = load ptr, ptr @cfun, align 8, !tbaa !440
  %250 = getelementptr inbounds %struct.function, ptr %249, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !477
  %252 = getelementptr inbounds %struct.control_flow_graph, ptr %251, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !493
  %254 = icmp eq ptr %248, %253
  br i1 %254, label %255, label %44, !llvm.loop !1240

255:                                              ; preds = %245, %34
  %256 = phi i32 [ 0, %34 ], [ %246, %245 ]
  tail call void @free(ptr noundef %11) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #23
  ret i32 %256
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_code_hoist_mem() unnamed_addr #0 !prof !474 !PGOFuncName !1241 {
  %1 = load ptr, ptr @antloc, align 8, !tbaa !440
  tail call void @free(ptr noundef %1) #21
  %2 = load ptr, ptr @transp, align 8, !tbaa !440
  tail call void @free(ptr noundef %2) #21
  %3 = load ptr, ptr @comp, align 8, !tbaa !440
  tail call void @free(ptr noundef %3) #21
  %4 = load ptr, ptr @hoist_vbein, align 8, !tbaa !440
  tail call void @free(ptr noundef %4) #21
  %5 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !440
  tail call void @free(ptr noundef %5) #21
  %6 = load ptr, ptr @hoist_exprs, align 8, !tbaa !440
  tail call void @free(ptr noundef %6) #21
  %7 = load ptr, ptr @transpout, align 8, !tbaa !440
  tail call void @free(ptr noundef %7) #21
  tail call void @free_dominance_info(i32 noundef 1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_transpout() unnamed_addr #0 !prof !474 !PGOFuncName !1242 {
  %1 = load ptr, ptr @transpout, align 8, !tbaa !440
  %2 = load ptr, ptr @cfun, align 8, !tbaa !440
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !477
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !485
  tail call void @sbitmap_vector_ones(ptr noundef %1, i32 noundef %6) #22
  %7 = load ptr, ptr @cfun, align 8, !tbaa !440
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !477
  %10 = load ptr, ptr %9, align 8, !tbaa !490
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !491
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !493
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %86, label %16

16:                                               ; preds = %0
  %17 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8
  br label %18

18:                                               ; preds = %16, %75
  %19 = phi ptr [ %76, %75 ], [ %7, %16 ]
  %20 = phi i32 [ %77, %75 ], [ %17, %16 ]
  %21 = phi i32 [ %78, %75 ], [ %17, %16 ]
  %22 = phi ptr [ %80, %75 ], [ %12, %16 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !427
  %25 = getelementptr inbounds %struct.rtl_bb_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !495
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 10
  %30 = icmp ne i32 %21, 0
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %75

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  br label %34

34:                                               ; preds = %32, %68
  %35 = phi i32 [ %20, %32 ], [ %69, %68 ]
  %36 = phi i64 [ 0, %32 ], [ %70, %68 ]
  %37 = load ptr, ptr @expr_hash_table, align 8, !tbaa !558
  %38 = getelementptr inbounds ptr, ptr %37, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !440
  %40 = icmp eq ptr %39, null
  br i1 %40, label %68, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr @transpout, align 8
  br label %43

43:                                               ; preds = %41, %62
  %44 = phi ptr [ %39, %41 ], [ %64, %62 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !566
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 43
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !427
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 67174399
  %54 = icmp eq i32 %53, 67108909
  br i1 %54, label %62, label %55

55:                                               ; preds = %49
  %56 = load i32, ptr %33, align 8, !tbaa !552
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %42, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !440
  %60 = getelementptr inbounds %struct.expr, ptr %44, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !562
  tail call fastcc void @RESET_BIT(ptr noundef %59, i32 noundef %61) #21
  br label %62

62:                                               ; preds = %49, %43, %55
  %63 = getelementptr inbounds %struct.expr, ptr %44, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !440
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %43, !llvm.loop !1243

66:                                               ; preds = %62
  %67 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8
  br label %68

68:                                               ; preds = %66, %34
  %69 = phi i32 [ %67, %66 ], [ %35, %34 ]
  %70 = add nuw nsw i64 %36, 1
  %71 = zext i32 %69 to i64
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %34, label %73, !llvm.loop !1244

73:                                               ; preds = %68
  %74 = load ptr, ptr @cfun, align 8, !tbaa !440
  br label %75

75:                                               ; preds = %73, %18
  %76 = phi ptr [ %74, %73 ], [ %19, %18 ]
  %77 = phi i32 [ %69, %73 ], [ %20, %18 ]
  %78 = phi i32 [ %69, %73 ], [ %21, %18 ]
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !491
  %81 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !477
  %83 = getelementptr inbounds %struct.control_flow_graph, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !493
  %85 = icmp eq ptr %80, %84
  br i1 %85, label %86, label %18, !llvm.loop !1245

86:                                               ; preds = %75, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_code_hoist_vbeinout() unnamed_addr #0 !prof !474 !PGOFuncName !1246 {
  %1 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !440
  %2 = load ptr, ptr @cfun, align 8, !tbaa !440
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !477
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !485
  tail call void @sbitmap_vector_zero(ptr noundef %1, i32 noundef %6) #22
  %7 = load ptr, ptr @hoist_vbein, align 8, !tbaa !440
  %8 = load ptr, ptr @cfun, align 8, !tbaa !440
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !477
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !485
  tail call void @sbitmap_vector_zero(ptr noundef %7, i32 noundef %12) #22
  %13 = load ptr, ptr @cfun, align 8, !tbaa !440
  br label %14

14:                                               ; preds = %0, %70
  %15 = phi ptr [ %13, %0 ], [ %65, %70 ]
  %16 = phi i32 [ 0, %0 ], [ %71, %70 ]
  %17 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !477
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !493
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !1247
  %23 = load ptr, ptr %18, align 8, !tbaa !490
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = add nuw nsw i32 %16, 1
  br label %73

27:                                               ; preds = %14, %44
  %28 = phi ptr [ %67, %44 ], [ %18, %14 ]
  %29 = phi ptr [ %64, %44 ], [ %22, %14 ]
  %30 = phi i32 [ %62, %44 ], [ 0, %14 ]
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !491
  %33 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !493
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %27
  %37 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !440
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !552
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %37, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !440
  %43 = load ptr, ptr @hoist_vbein, align 8, !tbaa !440
  tail call void @sbitmap_intersection_of_succs(ptr noundef %42, ptr noundef %43, i32 noundef %39) #22
  br label %44

44:                                               ; preds = %36, %27
  %45 = load ptr, ptr @hoist_vbein, align 8, !tbaa !440
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !552
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %45, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !440
  %51 = load ptr, ptr @antloc, align 8, !tbaa !440
  %52 = getelementptr inbounds ptr, ptr %51, i64 %48
  %53 = load ptr, ptr %52, align 8, !tbaa !440
  %54 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !440
  %55 = getelementptr inbounds ptr, ptr %54, i64 %48
  %56 = load ptr, ptr %55, align 8, !tbaa !440
  %57 = load ptr, ptr @transp, align 8, !tbaa !440
  %58 = getelementptr inbounds ptr, ptr %57, i64 %48
  %59 = load ptr, ptr %58, align 8, !tbaa !440
  %60 = tail call zeroext i8 @sbitmap_a_or_b_and_c_cg(ptr noundef %50, ptr noundef %53, ptr noundef %56, ptr noundef %59) #22
  %61 = zext i8 %60 to i32
  %62 = or i32 %30, %61
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !1247
  %65 = load ptr, ptr @cfun, align 8, !tbaa !440
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !477
  %68 = load ptr, ptr %67, align 8, !tbaa !490
  %69 = icmp eq ptr %64, %68
  br i1 %69, label %70, label %27, !llvm.loop !1248

70:                                               ; preds = %44
  %71 = add nuw nsw i32 %16, 1
  %72 = icmp eq i32 %62, 0
  br i1 %72, label %73, label %14, !llvm.loop !1249

73:                                               ; preds = %70, %25
  %74 = phi i32 [ %26, %25 ], [ %71, %70 ]
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !440
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %75, ptr noundef nonnull @.str.50, i32 noundef %74) #21
  br label %79

79:                                               ; preds = %77, %73
  ret void
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_intersection_of_succs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @sbitmap_a_or_b_and_c_cg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_dominated_by(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #16 !prof !474 !PGOFuncName !1250 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1251
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !440
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !440
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @hoist_expr_reaches_here_p(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !474 !PGOFuncName !1253 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  %7 = icmp eq ptr %3, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load ptr, ptr @cfun, align 8, !tbaa !440
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !477
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !485
  %14 = sext i32 %13 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 1) #22
  br label %16

16:                                               ; preds = %8, %4
  %17 = phi ptr [ %15, %8 ], [ %3, %4 ]
  %18 = tail call fastcc ptr @ei_start_1(ptr noundef %2) #21
  store i32 0, ptr %6, align 8, !tbaa.struct !684
  %19 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %18, ptr %19, align 8, !tbaa.struct !685
  %20 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %5) #21, !range !482
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %69, label %22

22:                                               ; preds = %16
  %23 = lshr i32 %1, 6
  %24 = zext nneg i32 %23 to i64
  %25 = and i32 %1, 63
  %26 = zext nneg i32 %25 to i64
  %27 = shl nuw i64 1, %26
  br label %28

28:                                               ; preds = %22, %64
  %29 = load ptr, ptr %5, align 8, !tbaa !440
  %30 = load ptr, ptr %29, align 8, !tbaa !1038
  %31 = load ptr, ptr @cfun, align 8, !tbaa !440
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !477
  %34 = load ptr, ptr %33, align 8, !tbaa !490
  %35 = icmp eq ptr %30, %34
  br i1 %35, label %69, label %36

36:                                               ; preds = %28
  %37 = icmp eq ptr %30, %0
  br i1 %37, label %64, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !552
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %17, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !427
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = load ptr, ptr @comp, align 8, !tbaa !440
  %47 = getelementptr inbounds ptr, ptr %46, i64 %41
  %48 = load ptr, ptr %47, align 8, !tbaa !440
  %49 = getelementptr inbounds %struct.simple_bitmap_def, ptr %48, i64 0, i32 3, i64 %24
  %50 = load i64, ptr %49, align 8, !tbaa !735
  %51 = and i64 %50, %27
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %45
  %54 = load ptr, ptr @transp, align 8, !tbaa !440
  %55 = getelementptr inbounds ptr, ptr %54, i64 %41
  %56 = load ptr, ptr %55, align 8, !tbaa !440
  %57 = getelementptr inbounds %struct.simple_bitmap_def, ptr %56, i64 0, i32 3, i64 %24
  %58 = load i64, ptr %57, align 8, !tbaa !735
  %59 = and i64 %58, %27
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  store i8 1, ptr %42, align 1, !tbaa !427
  %62 = tail call fastcc i32 @hoist_expr_reaches_here_p(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %30, ptr noundef nonnull %17) #21, !range !466
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %38, %36, %61
  call fastcc void @ei_next(ptr noundef nonnull %6) #21
  %65 = load i32, ptr %6, align 8
  %66 = load ptr, ptr %19, align 8
  %67 = call fastcc zeroext i8 @ei_cond(i32 %65, ptr %66, ptr noundef nonnull %5) #21, !range !482
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %28, !llvm.loop !1254

69:                                               ; preds = %64, %61, %28, %45, %53, %16
  br i1 %7, label %70, label %71

70:                                               ; preds = %69
  tail call void @free(ptr noundef %17) #21
  br label %71

71:                                               ; preds = %70, %69
  %72 = load ptr, ptr %5, align 8, !tbaa !440
  %73 = icmp eq ptr %72, null
  %74 = zext i1 %73 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  ret i32 %74
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #5 !prof !474 !PGOFuncName !1255 {
  %2 = load ptr, ptr %0, align 8, !tbaa !440
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !440
  ret void
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!424}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!35 = !{ptr @can_copy_p, ptr @compute_can_copy, i64 2}
!36 = !{ptr @compute_can_copy, ptr @start_sequence, i64 1}
!37 = !{ptr @compute_can_copy, ptr @end_sequence, i64 1}
!38 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @general_operand, i64 4307}
!39 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @gen_rtx_REG, i64 2}
!40 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @gen_rtx_fmt_ee_stat, i64 2}
!41 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @make_insn_raw, i64 2}
!42 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @recog, i64 2759}
!43 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @added_clobbers_hard_reg_p, i64 1184}
!44 = !{ptr @fis_get_condition, ptr @get_condition, i64 157046}
!45 = !{ptr @gate_rtl_cprop, ptr @dbg_cnt, i64 111}
!46 = !{ptr @execute_rtl_cprop, ptr @delete_unreachable_blocks, i64 114}
!47 = !{ptr @execute_rtl_cprop, ptr @df_set_flags, i64 114}
!48 = !{ptr @execute_rtl_cprop, ptr @df_analyze, i64 114}
!49 = !{ptr @execute_rtl_cprop, ptr @one_cprop_pass, i64 114}
!50 = !{ptr @gate_rtl_pre, ptr @optimize_function_for_speed_p, i64 35}
!51 = !{ptr @gate_rtl_pre, ptr @dbg_cnt, i64 34}
!52 = !{ptr @execute_rtl_pre, ptr @delete_unreachable_blocks, i64 38}
!53 = !{ptr @execute_rtl_pre, ptr @df_analyze, i64 38}
!54 = !{ptr @execute_rtl_pre, ptr @one_pre_gcse_pass, i64 38}
!55 = !{ptr @gate_rtl_hoist, ptr @optimize_function_for_size_p, i64 35}
!56 = !{ptr @gate_rtl_hoist, ptr @dbg_cnt, i64 1}
!57 = !{ptr @one_cprop_pass, ptr @is_too_expensive, i64 113}
!58 = !{ptr @one_cprop_pass, ptr @_obstack_begin, i64 92}
!59 = !{ptr @one_cprop_pass, ptr @alloc_gcse_mem, i64 92}
!60 = !{ptr @one_cprop_pass, ptr @local_cprop_pass, i64 92}
!61 = !{ptr @one_cprop_pass, ptr @delete_unreachable_blocks, i64 3}
!62 = !{ptr @one_cprop_pass, ptr @df_analyze, i64 3}
!63 = !{ptr @one_cprop_pass, ptr @xcalloc, i64 92}
!64 = !{ptr @one_cprop_pass, ptr @find_implicit_sets, i64 92}
!65 = !{ptr @one_cprop_pass, ptr @alloc_hash_table, i64 92}
!66 = !{ptr @one_cprop_pass, ptr @compute_hash_table, i64 92}
!67 = !{ptr @one_cprop_pass, ptr @free, i64 92}
!68 = !{ptr @one_cprop_pass, ptr @dump_hash_table, i64 1}
!69 = !{ptr @one_cprop_pass, ptr @alloc_cprop_mem, i64 91}
!70 = !{ptr @one_cprop_pass, ptr @compute_cprop_data, i64 91}
!71 = !{ptr @one_cprop_pass, ptr @reset_opr_set_tables, i64 15453}
!72 = !{ptr @one_cprop_pass, ptr @cprop_insn, i64 64921}
!73 = !{ptr @one_cprop_pass, ptr @mark_oprs_set, i64 64920}
!74 = !{ptr @one_cprop_pass, ptr @bypass_conditional_jumps, i64 91}
!75 = !{ptr @one_cprop_pass, ptr @free_cprop_mem, i64 91}
!76 = !{ptr @one_cprop_pass, ptr @free_hash_table, i64 92}
!77 = !{ptr @one_cprop_pass, ptr @free_gcse_mem, i64 92}
!78 = !{ptr @one_cprop_pass, ptr @obstack_free, i64 91}
!79 = !{ptr @one_cprop_pass, ptr @current_function_name, i64 1}
!80 = !{ptr @one_cprop_pass, ptr @fprintf, i64 3}
!81 = !{ptr @is_too_expensive, ptr @warning, i64 29}
!82 = !{ptr @is_too_expensive, ptr @max_reg_num, i64 179}
!83 = !{ptr @alloc_gcse_mem, ptr @bitmap_obstack_alloc_stat, i64 372}
!84 = !{ptr @alloc_gcse_mem, ptr @gcalloc, i64 248}
!85 = !{ptr @local_cprop_pass, ptr @cselib_init, i64 93}
!86 = !{ptr @local_cprop_pass, ptr @find_reg_equal_equiv_note, i64 66997}
!87 = !{ptr @local_cprop_pass, ptr @note_uses, i64 67005}
!88 = !{ptr @local_cprop_pass, ptr @local_cprop_find_used_regs, i64 1478}
!89 = !{ptr @local_cprop_pass, ptr @do_local_cprop, i64 59363}
!90 = !{ptr @local_cprop_pass, ptr @cselib_process_insn, i64 91330}
!91 = !{ptr @local_cprop_pass, ptr @cselib_clear_table, i64 15951}
!92 = !{ptr @local_cprop_pass, ptr @cselib_finish, i64 93}
!93 = !{ptr @find_implicit_sets, ptr @VEC_edge_base_length, i64 15951}
!94 = !{ptr @find_implicit_sets, ptr @fis_get_condition, i64 8773}
!95 = !{ptr @find_implicit_sets, ptr @rhs_regno, i64 5782}
!96 = !{ptr @find_implicit_sets, ptr @implicit_set_cond_p, i64 5780}
!97 = !{ptr @find_implicit_sets, ptr @VEC_edge_base_index, i64 8532}
!98 = !{ptr @find_implicit_sets, ptr @single_pred_p, i64 5778}
!99 = !{ptr @find_implicit_sets, ptr @gen_rtx_fmt_ee_stat, i64 3531}
!100 = !{ptr @find_implicit_sets, ptr @fprintf, i64 3}
!101 = !{ptr @alloc_hash_table, ptr @get_max_insn_count, i64 124}
!102 = !{ptr @alloc_hash_table, ptr @gmalloc, i64 124}
!103 = !{ptr @compute_hash_table, ptr @compute_hash_table_work, i64 124}
!104 = !{ptr @alloc_cprop_mem, ptr @sbitmap_vector_alloc, i64 372}
!105 = !{ptr @compute_cprop_data, ptr @compute_local_properties, i64 93}
!106 = !{ptr @compute_cprop_data, ptr @compute_available, i64 93}
!107 = !{ptr @reset_opr_set_tables, ptr @bitmap_clear, i64 16029}
!108 = !{ptr @reset_opr_set_tables, ptr @clear_modify_mem_tables, i64 16029}
!109 = !{ptr @cprop_insn, ptr @note_uses, i64 68037}
!110 = !{ptr @cprop_insn, ptr @find_reg_equal_equiv_note, i64 68037}
!111 = !{ptr @cprop_insn, ptr @find_used_regs, i64 1411}
!112 = !{ptr @cprop_insn, ptr @rhs_regno, i64 60154}
!113 = !{ptr @cprop_insn, ptr @oprs_not_set_p, i64 60138}
!114 = !{ptr @cprop_insn, ptr @find_avail_set, i64 23937}
!115 = !{ptr @cprop_insn, ptr @fancy_abort, i64 1}
!116 = !{ptr @cprop_insn, ptr @gcse_constant_p, i64 20}
!117 = !{ptr @cprop_insn, ptr @constprop_register, i64 4}
!118 = !{ptr @cprop_insn, ptr @try_replace_reg, i64 14}
!119 = !{ptr @cprop_insn, ptr @fprintf, i64 2}
!120 = !{ptr @mark_oprs_set, ptr @mark_set, i64 65361}
!121 = !{ptr @mark_oprs_set, ptr @mark_clobber, i64 6737}
!122 = !{ptr @mark_oprs_set, ptr @mark_call, i64 2583}
!123 = !{ptr @bypass_conditional_jumps, ptr @mark_dfs_back_edges, i64 92}
!124 = !{ptr @bypass_conditional_jumps, ptr @single_pred_p, i64 15693}
!125 = !{ptr @bypass_conditional_jumps, ptr @any_condjump_p, i64 188}
!126 = !{ptr @bypass_conditional_jumps, ptr @computed_jump_p, i64 1}
!127 = !{ptr @bypass_conditional_jumps, ptr @onlyjump_p, i64 188}
!128 = !{ptr @bypass_conditional_jumps, ptr @bypass_block, i64 187}
!129 = !{ptr @bypass_conditional_jumps, ptr @commit_edge_insertions, i64 2}
!130 = !{ptr @free_cprop_mem, ptr @free, i64 372}
!131 = !{ptr @free_hash_table, ptr @free, i64 124}
!132 = !{ptr @free_gcse_mem, ptr @free_modify_mem_tables, i64 124}
!133 = !{ptr @free_gcse_mem, ptr @bitmap_obstack_free, i64 248}
!134 = !{ptr @gcalloc, ptr @xcalloc, i64 248}
!135 = !{ptr @local_cprop_find_used_regs, ptr @find_used_regs, i64 82942}
!136 = !{ptr @do_local_cprop, ptr @rhs_regno, i64 88232}
!137 = !{ptr @do_local_cprop, ptr @asm_noperands, i64 29972}
!138 = !{ptr @do_local_cprop, ptr @cselib_lookup, i64 60516}
!139 = !{ptr @do_local_cprop, ptr @gcse_constant_p, i64 43662}
!140 = !{ptr @do_local_cprop, ptr @find_reg_note, i64 14418}
!141 = !{ptr @do_local_cprop, ptr @constprop_register, i64 1189}
!142 = !{ptr @do_local_cprop, ptr @fprintf, i64 4}
!143 = !{ptr @do_local_cprop, ptr @print_rtl, i64 1}
!144 = !{ptr @do_local_cprop, ptr @fputc, i64 1}
!145 = !{ptr @do_local_cprop, ptr @try_replace_reg, i64 8}
!146 = !{ptr @find_used_regs, ptr @find_used_regs, i64 144350}
!147 = !{ptr @gcse_constant_p, ptr @shared_const_p, i64 1}
!148 = !{ptr @constprop_register, ptr @single_set_2, i64 595}
!149 = !{ptr @constprop_register, ptr @any_condjump_p, i64 2379}
!150 = !{ptr @constprop_register, ptr @onlyjump_p, i64 2}
!151 = !{ptr @constprop_register, ptr @try_replace_reg, i64 1190}
!152 = !{ptr @constprop_register, ptr @cprop_jump, i64 1}
!153 = !{ptr @try_replace_reg, ptr @find_reg_equal_equiv_note, i64 1214}
!154 = !{ptr @try_replace_reg, ptr @single_set_2, i64 81}
!155 = !{ptr @try_replace_reg, ptr @copy_rtx, i64 1214}
!156 = !{ptr @try_replace_reg, ptr @validate_replace_src_group, i64 1214}
!157 = !{ptr @try_replace_reg, ptr @num_changes_pending, i64 1214}
!158 = !{ptr @try_replace_reg, ptr @apply_change_group, i64 1211}
!159 = !{ptr @try_replace_reg, ptr @simplify_rtx, i64 1}
!160 = !{ptr @try_replace_reg, ptr @validate_change, i64 1188}
!161 = !{ptr @try_replace_reg, ptr @simplify_replace_rtx, i64 2387}
!162 = !{ptr @try_replace_reg, ptr @set_unique_reg_note, i64 1199}
!163 = !{ptr @try_replace_reg, ptr @reg_mentioned_p, i64 1191}
!164 = !{ptr @try_replace_reg, ptr @rtx_equal_p, i64 1188}
!165 = !{ptr @try_replace_reg, ptr @remove_note, i64 1}
!166 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 680}
!167 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 487}
!168 = !{ptr @ei_next, ptr @ei_container, i64 25101}
!169 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 12551}
!170 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!171 = !{ptr @ei_end_p, ptr @ei_container, i64 40309}
!172 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 20155}
!173 = !{ptr @ei_edge, ptr @ei_container, i64 25259}
!174 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 12630}
!175 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!176 = !{ptr @implicit_set_cond_p, ptr @real_compare, i64 1}
!177 = !{ptr @implicit_set_cond_p, ptr @gcse_constant_p, i64 5842}
!178 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 21873}
!179 = !{ptr @gmalloc, ptr @xmalloc, i64 248}
!180 = !{ptr @compute_hash_table_work, ptr @clear_modify_mem_tables, i64 124}
!181 = !{ptr @compute_hash_table_work, ptr @max_reg_num, i64 48069}
!182 = !{ptr @compute_hash_table_work, ptr @gmalloc, i64 124}
!183 = !{ptr @compute_hash_table_work, ptr @record_last_reg_set_info, i64 577532}
!184 = !{ptr @compute_hash_table_work, ptr @mark_call, i64 12556}
!185 = !{ptr @compute_hash_table_work, ptr @note_stores, i64 89590}
!186 = !{ptr @compute_hash_table_work, ptr @hash_scan_set, i64 3545}
!187 = !{ptr @compute_hash_table_work, ptr @hash_scan_insn, i64 89590}
!188 = !{ptr @compute_hash_table_work, ptr @free, i64 124}
!189 = !{ptr @clear_modify_mem_tables, ptr @bmp_iter_set_init, i64 16277}
!190 = !{ptr @clear_modify_mem_tables, ptr @bmp_iter_set, i64 32643}
!191 = !{ptr @clear_modify_mem_tables, ptr @free_INSN_LIST_list, i64 16366}
!192 = !{ptr @clear_modify_mem_tables, ptr @free_insn_expr_list_list, i64 16366}
!193 = !{ptr @clear_modify_mem_tables, ptr @bmp_iter_next, i64 16366}
!194 = !{ptr @clear_modify_mem_tables, ptr @bitmap_clear, i64 32554}
!195 = !{ptr @mark_call, ptr @record_last_mem_set_info, i64 22342}
!196 = !{ptr @record_last_set_info, ptr @rhs_regno, i64 67058}
!197 = !{ptr @record_last_set_info, ptr @record_last_reg_set_info, i64 67058}
!198 = !{ptr @record_last_set_info, ptr @push_operand, i64 17300}
!199 = !{ptr @record_last_set_info, ptr @record_last_mem_set_info, i64 17299}
!200 = !{ptr @hash_scan_set, ptr @rhs_regno, i64 60335}
!201 = !{ptr @hash_scan_set, ptr @find_reg_equal_equiv_note, i64 52567}
!202 = !{ptr @hash_scan_set, ptr @gcse_constant_p, i64 29682}
!203 = !{ptr @hash_scan_set, ptr @want_to_gcse_p, i64 10601}
!204 = !{ptr @hash_scan_set, ptr @gen_rtx_fmt_ee_stat, i64 4}
!205 = !{ptr @hash_scan_set, ptr @can_copy_p, i64 9153}
!206 = !{ptr @hash_scan_set, ptr @can_throw_internal, i64 8732}
!207 = !{ptr @hash_scan_set, ptr @set_noop_p, i64 2602}
!208 = !{ptr @hash_scan_set, ptr @oprs_anticipatable_p, i64 2571}
!209 = !{ptr @hash_scan_set, ptr @multiple_sets, i64 1062}
!210 = !{ptr @hash_scan_set, ptr @oprs_available_p, i64 8561}
!211 = !{ptr @hash_scan_set, ptr @insert_expr_in_table, i64 2571}
!212 = !{ptr @hash_scan_set, ptr @next_nonnote_insn, i64 5992}
!213 = !{ptr @hash_scan_set, ptr @insert_set_in_table, i64 10927}
!214 = !{ptr @hash_scan_insn, ptr @hash_scan_set, i64 87539}
!215 = !{ptr @free_insn_expr_list_list, ptr @free_EXPR_LIST_node, i64 60547}
!216 = !{ptr @free_insn_expr_list_list, ptr @free_INSN_LIST_node, i64 22343}
!217 = !{ptr @record_last_mem_set_info, ptr @alloc_INSN_LIST, i64 74963}
!218 = !{ptr @record_last_mem_set_info, ptr @bitmap_set_bit, i64 74963}
!219 = !{ptr @record_last_mem_set_info, ptr @note_stores, i64 30275}
!220 = !{ptr @canon_list_insert, ptr @get_addr, i64 30274}
!221 = !{ptr @canon_list_insert, ptr @canon_rtx, i64 30274}
!222 = !{ptr @canon_list_insert, ptr @alloc_EXPR_LIST, i64 60548}
!223 = !{ptr @want_to_gcse_p, ptr @avoid_constant_pool_reference, i64 2}
!224 = !{ptr @want_to_gcse_p, ptr @can_assign_to_reg_without_clobbers_p, i64 6901}
!225 = !{ptr @oprs_anticipatable_p, ptr @oprs_unchanged_p, i64 2572}
!226 = !{ptr @oprs_available_p, ptr @oprs_unchanged_p, i64 8564}
!227 = !{ptr @insert_expr_in_table, ptr @hash_expr, i64 2572}
!228 = !{ptr @insert_expr_in_table, ptr @expr_equiv_p, i64 2673}
!229 = !{ptr @insert_expr_in_table, ptr @gcse_alloc, i64 2636}
!230 = !{ptr @insert_set_in_table, ptr @fancy_abort, i64 2}
!231 = !{ptr @insert_set_in_table, ptr @rhs_regno, i64 10929}
!232 = !{ptr @insert_set_in_table, ptr @hash_set, i64 10929}
!233 = !{ptr @insert_set_in_table, ptr @expr_equiv_p, i64 44046}
!234 = !{ptr @insert_set_in_table, ptr @gcse_alloc, i64 14445}
!235 = !{ptr @insert_set_in_table, ptr @copy_rtx, i64 3517}
!236 = !{ptr @oprs_unchanged_p, ptr @rhs_regno, i64 13339}
!237 = !{ptr @oprs_unchanged_p, ptr @load_killed_in_block_p, i64 4301}
!238 = !{ptr @oprs_unchanged_p, ptr @oprs_unchanged_p, i64 12375}
!239 = !{ptr @load_killed_in_block_p, ptr @note_stores, i64 977}
!240 = !{ptr @mems_conflict_for_gcse_p, ptr @expr_equiv_p, i64 821}
!241 = !{ptr @mems_conflict_for_gcse_p, ptr @find_rtx_in_ldst, i64 1}
!242 = !{ptr @mems_conflict_for_gcse_p, ptr @true_dependence, i64 820}
!243 = !{ptr @expr_equiv_p, ptr @exp_equiv_p, i64 69939}
!244 = !{ptr @find_rtx_in_ldst, ptr @htab_find_slot, i64 4}
!245 = !{ptr @hash_expr, ptr @hash_rtx, i64 2572}
!246 = !{ptr @gcse_alloc, ptr @_obstack_newchunk, i64 135}
!247 = !{ptr @compute_local_properties, ptr @sbitmap_vector_zero, i64 246}
!248 = !{ptr @compute_local_properties, ptr @sbitmap_vector_ones, i64 31}
!249 = !{ptr @compute_local_properties, ptr @compute_transp, i64 6660}
!250 = !{ptr @compute_local_properties, ptr @SET_BIT, i64 13319}
!251 = !{ptr @compute_transp, ptr @rhs_regno, i64 7558}
!252 = !{ptr @compute_transp, ptr @SET_BIT, i64 182613}
!253 = !{ptr @compute_transp, ptr @RESET_BIT, i64 26363}
!254 = !{ptr @compute_transp, ptr @bmp_iter_set_init, i64 164}
!255 = !{ptr @compute_transp, ptr @bmp_iter_set, i64 15353}
!256 = !{ptr @compute_transp, ptr @bmp_iter_next, i64 15190}
!257 = !{ptr @compute_transp, ptr @bmp_iter_and_compl_init, i64 164}
!258 = !{ptr @compute_transp, ptr @bmp_iter_and_compl, i64 165}
!259 = !{ptr @compute_transp, ptr @canon_true_dependence, i64 10}
!260 = !{ptr @compute_transp, ptr @compute_transp, i64 6532}
!261 = !{ptr @oprs_not_set_p, ptr @load_killed_in_block_p, i64 1}
!262 = !{ptr @oprs_not_set_p, ptr @rhs_regno, i64 59673}
!263 = !{ptr @oprs_not_set_p, ptr @bitmap_bit_p, i64 59673}
!264 = !{ptr @oprs_not_set_p, ptr @oprs_not_set_p, i64 23}
!265 = !{ptr @find_avail_set, ptr @lookup_set, i64 23959}
!266 = !{ptr @find_avail_set, ptr @next_set, i64 23920}
!267 = !{ptr @find_avail_set, ptr @fancy_abort, i64 1}
!268 = !{ptr @find_avail_set, ptr @gcse_constant_p, i64 28}
!269 = !{ptr @find_avail_set, ptr @oprs_not_set_p, i64 22}
!270 = !{ptr @find_avail_set, ptr @rhs_regno, i64 22}
!271 = !{ptr @lookup_set, ptr @hash_set, i64 24239}
!272 = !{ptr @lookup_set, ptr @rhs_regno, i64 3912}
!273 = !{ptr @next_set, ptr @rhs_regno, i64 14936}
!274 = !{ptr @mark_set, ptr @rhs_regno, i64 43613}
!275 = !{ptr @mark_set, ptr @bitmap_set_bit, i64 43613}
!276 = !{ptr @mark_set, ptr @record_last_mem_set_info, i64 12975}
!277 = !{ptr @mark_set, ptr @mark_call, i64 6994}
!278 = !{ptr @mark_clobber, ptr @rhs_regno, i64 6736}
!279 = !{ptr @mark_clobber, ptr @bitmap_set_bit, i64 6736}
!280 = !{ptr @mark_clobber, ptr @record_last_mem_set_info, i64 1}
!281 = !{ptr @bypass_block, ptr @note_uses, i64 193}
!282 = !{ptr @bypass_block, ptr @find_reg_equal_equiv_note, i64 193}
!283 = !{ptr @bypass_block, ptr @find_used_regs, i64 1}
!284 = !{ptr @bypass_block, ptr @ei_start_1, i64 193}
!285 = !{ptr @bypass_block, ptr @ei_cond, i64 676}
!286 = !{ptr @bypass_block, ptr @ei_next, i64 25863}
!287 = !{ptr @bypass_block, ptr @ei_safe_edge, i64 25706}
!288 = !{ptr @bypass_block, ptr @rhs_regno, i64 14617}
!289 = !{ptr @bypass_block, ptr @find_bypass_set, i64 14617}
!290 = !{ptr @bypass_block, ptr @reg_killed_on_edge, i64 131}
!291 = !{ptr @bypass_block, ptr @pc_set, i64 228}
!292 = !{ptr @bypass_block, ptr @simplify_replace_rtx, i64 418}
!293 = !{ptr @bypass_block, ptr @VEC_edge_base_index, i64 200}
!294 = !{ptr @bypass_block, ptr @find_edge, i64 245}
!295 = !{ptr @bypass_block, ptr @redirect_edge_and_branch_force, i64 132}
!296 = !{ptr @bypass_block, ptr @copy_insn, i64 110}
!297 = !{ptr @bypass_block, ptr @insert_insn_on_edge, i64 110}
!298 = !{ptr @bypass_block, ptr @fprintf, i64 44}
!299 = !{ptr @bypass_block, ptr @print_rtl, i64 22}
!300 = !{ptr @ei_cond, ptr @ei_end_p, i64 19475}
!301 = !{ptr @ei_cond, ptr @ei_edge, i64 12143}
!302 = !{ptr @find_bypass_set, ptr @lookup_set, i64 286}
!303 = !{ptr @find_bypass_set, ptr @next_set, i64 773}
!304 = !{ptr @find_bypass_set, ptr @fancy_abort, i64 1}
!305 = !{ptr @find_bypass_set, ptr @gcse_constant_p, i64 13}
!306 = !{ptr @find_bypass_set, ptr @rhs_regno, i64 8}
!307 = !{ptr @reg_killed_on_edge, ptr @reg_set_p, i64 2}
!308 = !{ptr @free_modify_mem_tables, ptr @clear_modify_mem_tables, i64 124}
!309 = !{ptr @free_modify_mem_tables, ptr @free, i64 248}
!310 = !{ptr @one_pre_gcse_pass, ptr @is_too_expensive, i64 37}
!311 = !{ptr @one_pre_gcse_pass, ptr @init_alias_analysis, i64 30}
!312 = !{ptr @one_pre_gcse_pass, ptr @_obstack_begin, i64 30}
!313 = !{ptr @one_pre_gcse_pass, ptr @alloc_gcse_mem, i64 30}
!314 = !{ptr @one_pre_gcse_pass, ptr @alloc_hash_table, i64 30}
!315 = !{ptr @one_pre_gcse_pass, ptr @add_noreturn_fake_exit_edges, i64 30}
!316 = !{ptr @one_pre_gcse_pass, ptr @compute_ld_motion_mems, i64 29}
!317 = !{ptr @one_pre_gcse_pass, ptr @compute_hash_table, i64 30}
!318 = !{ptr @one_pre_gcse_pass, ptr @trim_ld_motion_mems, i64 30}
!319 = !{ptr @one_pre_gcse_pass, ptr @dump_hash_table, i64 1}
!320 = !{ptr @one_pre_gcse_pass, ptr @alloc_pre_mem, i64 29}
!321 = !{ptr @one_pre_gcse_pass, ptr @compute_pre_data, i64 29}
!322 = !{ptr @one_pre_gcse_pass, ptr @pre_gcse, i64 29}
!323 = !{ptr @one_pre_gcse_pass, ptr @free_edge_list, i64 29}
!324 = !{ptr @one_pre_gcse_pass, ptr @free_pre_mem, i64 29}
!325 = !{ptr @one_pre_gcse_pass, ptr @free_ldst_mems, i64 30}
!326 = !{ptr @one_pre_gcse_pass, ptr @remove_fake_exit_edges, i64 30}
!327 = !{ptr @one_pre_gcse_pass, ptr @free_hash_table, i64 30}
!328 = !{ptr @one_pre_gcse_pass, ptr @free_gcse_mem, i64 30}
!329 = !{ptr @one_pre_gcse_pass, ptr @obstack_free, i64 29}
!330 = !{ptr @one_pre_gcse_pass, ptr @end_alias_analysis, i64 30}
!331 = !{ptr @one_pre_gcse_pass, ptr @current_function_name, i64 1}
!332 = !{ptr @one_pre_gcse_pass, ptr @fprintf, i64 2}
!333 = !{ptr @compute_ld_motion_mems, ptr @htab_create, i64 31}
!334 = !{ptr @compute_ld_motion_mems, ptr @simple_mem, i64 5570}
!335 = !{ptr @compute_ld_motion_mems, ptr @ldst_entry, i64 1481}
!336 = !{ptr @compute_ld_motion_mems, ptr @alloc_INSN_LIST, i64 1477}
!337 = !{ptr @compute_ld_motion_mems, ptr @invalidate_any_buried_refs, i64 20290}
!338 = !{ptr @compute_ld_motion_mems, ptr @can_assign_to_reg_without_clobbers_p, i64 49}
!339 = !{ptr @trim_ld_motion_mems, ptr @expr_equiv_p, i64 198}
!340 = !{ptr @trim_ld_motion_mems, ptr @htab_remove_elt_with_hash, i64 411}
!341 = !{ptr @trim_ld_motion_mems, ptr @free_ldst_entry, i64 411}
!342 = !{ptr @alloc_pre_mem, ptr @sbitmap_vector_alloc, i64 124}
!343 = !{ptr @compute_pre_data, ptr @compute_local_properties, i64 31}
!344 = !{ptr @compute_pre_data, ptr @sbitmap_vector_zero, i64 31}
!345 = !{ptr @compute_pre_data, ptr @sbitmap_alloc, i64 31}
!346 = !{ptr @compute_pre_data, ptr @sbitmap_zero, i64 31}
!347 = !{ptr @compute_pre_data, ptr @may_trap_p, i64 996}
!348 = !{ptr @compute_pre_data, ptr @SET_BIT, i64 79}
!349 = !{ptr @compute_pre_data, ptr @ei_start_1, i64 5793}
!350 = !{ptr @compute_pre_data, ptr @ei_cond, i64 15260}
!351 = !{ptr @compute_pre_data, ptr @sbitmap_difference, i64 2}
!352 = !{ptr @compute_pre_data, ptr @ei_next, i64 9467}
!353 = !{ptr @compute_pre_data, ptr @sbitmap_a_or_b, i64 5793}
!354 = !{ptr @compute_pre_data, ptr @sbitmap_not, i64 5793}
!355 = !{ptr @compute_pre_data, ptr @pre_edge_lcm, i64 31}
!356 = !{ptr @compute_pre_data, ptr @free, i64 124}
!357 = !{ptr @pre_gcse, ptr @xcalloc, i64 31}
!358 = !{ptr @pre_gcse, ptr @pre_delete, i64 31}
!359 = !{ptr @pre_gcse, ptr @pre_edge_insert, i64 31}
!360 = !{ptr @pre_gcse, ptr @pre_insert_copies, i64 31}
!361 = !{ptr @pre_gcse, ptr @commit_edge_insertions, i64 2}
!362 = !{ptr @pre_gcse, ptr @free, i64 31}
!363 = !{ptr @free_pre_mem, ptr @free, i64 122}
!364 = !{ptr @free_ldst_mems, ptr @htab_delete, i64 30}
!365 = !{ptr @free_ldst_mems, ptr @free_ldst_entry, i64 156}
!366 = !{ptr @pre_ldst_expr_hash, ptr @hash_rtx, i64 523}
!367 = !{ptr @pre_ldst_expr_eq, ptr @expr_equiv_p, i64 7876}
!368 = !{ptr @simple_mem, ptr @may_trap_p, i64 1}
!369 = !{ptr @simple_mem, ptr @side_effects_p, i64 9523}
!370 = !{ptr @simple_mem, ptr @reg_mentioned_p, i64 9522}
!371 = !{ptr @ldst_entry, ptr @hash_rtx, i64 5254}
!372 = !{ptr @ldst_entry, ptr @htab_find_slot_with_hash, i64 5254}
!373 = !{ptr @ldst_entry, ptr @xmalloc, i64 611}
!374 = !{ptr @invalidate_any_buried_refs, ptr @simple_mem, i64 3708}
!375 = !{ptr @invalidate_any_buried_refs, ptr @ldst_entry, i64 3707}
!376 = !{ptr @invalidate_any_buried_refs, ptr @invalidate_any_buried_refs, i64 47261}
!377 = !{ptr @free_ldst_entry, ptr @free_INSN_LIST_list, i64 1220}
!378 = !{ptr @free_ldst_entry, ptr @free, i64 610}
!379 = !{ptr @pre_delete, ptr @single_set_2, i64 1}
!380 = !{ptr @pre_delete, ptr @dbg_cnt, i64 5}
!381 = !{ptr @pre_delete, ptr @gen_reg_rtx_and_attrs, i64 2}
!382 = !{ptr @pre_delete, ptr @gcse_emit_move_after, i64 4}
!383 = !{ptr @pre_delete, ptr @delete_insn, i64 4}
!384 = !{ptr @pre_delete, ptr @fprintf, i64 2}
!385 = !{ptr @pre_delete, ptr @rhs_regno, i64 1}
!386 = !{ptr @pre_edge_insert, ptr @sbitmap_vector_alloc, i64 31}
!387 = !{ptr @pre_edge_insert, ptr @sbitmap_vector_zero, i64 31}
!388 = !{ptr @pre_edge_insert, ptr @free, i64 31}
!389 = !{ptr @pre_insert_copies, ptr @pre_expr_reaches_here_p, i64 134}
!390 = !{ptr @pre_insert_copies, ptr @pre_insert_copy_insn, i64 18}
!391 = !{ptr @pre_insert_copies, ptr @update_ld_motion_stores, i64 3}
!392 = !{ptr @gcse_emit_move_after, ptr @single_set_2, i64 2}
!393 = !{ptr @gcse_emit_move_after, ptr @gen_move_insn, i64 5}
!394 = !{ptr @gcse_emit_move_after, ptr @emit_insn_after, i64 5}
!395 = !{ptr @gcse_emit_move_after, ptr @rtx_equal_p, i64 4}
!396 = !{ptr @gcse_emit_move_after, ptr @find_reg_equal_equiv_note, i64 4}
!397 = !{ptr @gcse_emit_move_after, ptr @copy_insn_1, i64 4}
!398 = !{ptr @gcse_emit_move_after, ptr @set_unique_reg_note, i64 4}
!399 = !{ptr @process_insert_insn, ptr @copy_rtx, i64 2}
!400 = !{ptr @process_insert_insn, ptr @start_sequence, i64 2}
!401 = !{ptr @process_insert_insn, ptr @general_operand, i64 2}
!402 = !{ptr @process_insert_insn, ptr @emit_move_insn, i64 2}
!403 = !{ptr @process_insert_insn, ptr @gen_rtx_fmt_ee_stat, i64 1}
!404 = !{ptr @process_insert_insn, ptr @emit_insn, i64 1}
!405 = !{ptr @process_insert_insn, ptr @insn_invalid_p, i64 1}
!406 = !{ptr @process_insert_insn, ptr @get_insns, i64 2}
!407 = !{ptr @process_insert_insn, ptr @end_sequence, i64 2}
!408 = !{ptr @update_ld_motion_stores, ptr @find_rtx_in_ldst, i64 5}
!409 = !{ptr @pre_expr_reaches_here_p, ptr @xcalloc, i64 142}
!410 = !{ptr @pre_expr_reaches_here_p, ptr @pre_expr_reaches_here_p_work, i64 142}
!411 = !{ptr @pre_expr_reaches_here_p, ptr @free, i64 142}
!412 = !{ptr @pre_insert_copy_insn, ptr @rhs_regno, i64 18}
!413 = !{ptr @pre_insert_copy_insn, ptr @expr_equiv_p, i64 6}
!414 = !{ptr @pre_insert_copy_insn, ptr @fancy_abort, i64 2}
!415 = !{ptr @pre_insert_copy_insn, ptr @validate_change, i64 18}
!416 = !{ptr @pre_insert_copy_insn, ptr @gen_move_insn, i64 18}
!417 = !{ptr @pre_insert_copy_insn, ptr @emit_insn_after, i64 17}
!418 = !{ptr @pre_insert_copy_insn, ptr @emit_insn_before, i64 1}
!419 = !{ptr @pre_insert_copy_insn, ptr @fprintf, i64 1}
!420 = !{ptr @pre_expr_reaches_here_p_work, ptr @ei_start_1, i64 1235}
!421 = !{ptr @pre_expr_reaches_here_p_work, ptr @ei_cond, i64 3110}
!422 = !{ptr @pre_expr_reaches_here_p_work, ptr @pre_expr_reaches_here_p_work, i64 1132}
!423 = !{ptr @pre_expr_reaches_here_p_work, ptr @ei_next, i64 1875}
!424 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!425 = !{!"function_entry_count", i64 110234}
!426 = !{!"branch_weights", i32 110234, i32 2}
!427 = !{!428, !428, i64 0}
!428 = !{!"omnipotent char", !429, i64 0}
!429 = !{!"Simple C/C++ TBAA"}
!430 = !{!"function_entry_count", i64 1}
!431 = !{!"gcse.c:compute_can_copy"}
!432 = !{!"branch_weights", i32 2, i32 86}
!433 = distinct !{!433, !434}
!434 = !{!"llvm.loop.mustprogress"}
!435 = !{!"function_entry_count", i64 4307}
!436 = !{!437, !437, i64 0}
!437 = !{!"int", !428, i64 0}
!438 = !{!"branch_weights", i32 2761, i32 1548}
!439 = !{!"branch_weights", i32 1, i32 2761}
!440 = !{!441, !441, i64 0}
!441 = !{!"any pointer", !428, i64 0}
!442 = !{!"branch_weights", i32 2, i32 2760}
!443 = !{!"branch_weights", i32 469, i32 2293}
!444 = !{!"branch_weights", i32 1186, i32 1108}
!445 = !{!"branch_weights", i32 1, i32 1186}
!446 = !{!447, !441, i64 1016}
!447 = !{!"gcc_target", !448, i64 0, !450, i64 368, !451, i64 664, !437, i64 744, !441, i64 752, !441, i64 760, !441, i64 768, !441, i64 776, !441, i64 784, !441, i64 792, !441, i64 800, !441, i64 808, !441, i64 816, !441, i64 824, !441, i64 832, !441, i64 840, !441, i64 848, !441, i64 856, !441, i64 864, !441, i64 872, !441, i64 880, !441, i64 888, !441, i64 896, !441, i64 904, !441, i64 912, !441, i64 920, !441, i64 928, !441, i64 936, !441, i64 944, !441, i64 952, !441, i64 960, !441, i64 968, !441, i64 976, !441, i64 984, !441, i64 992, !441, i64 1000, !441, i64 1008, !441, i64 1016, !441, i64 1024, !441, i64 1032, !441, i64 1040, !441, i64 1048, !441, i64 1056, !452, i64 1064, !452, i64 1072, !441, i64 1080, !441, i64 1088, !441, i64 1096, !441, i64 1104, !441, i64 1112, !441, i64 1120, !441, i64 1128, !441, i64 1136, !441, i64 1144, !441, i64 1152, !441, i64 1160, !441, i64 1168, !453, i64 1176, !441, i64 1232, !441, i64 1240, !441, i64 1248, !441, i64 1256, !441, i64 1264, !441, i64 1272, !441, i64 1280, !441, i64 1288, !441, i64 1296, !441, i64 1304, !441, i64 1312, !441, i64 1320, !441, i64 1328, !441, i64 1336, !441, i64 1344, !441, i64 1352, !441, i64 1360, !441, i64 1368, !441, i64 1376, !441, i64 1384, !441, i64 1392, !441, i64 1400, !441, i64 1408, !441, i64 1416, !441, i64 1424, !441, i64 1432, !441, i64 1440, !441, i64 1448, !441, i64 1456, !452, i64 1464, !454, i64 1472, !441, i64 1664, !441, i64 1672, !441, i64 1680, !441, i64 1688, !441, i64 1696, !441, i64 1704, !441, i64 1712, !441, i64 1720, !441, i64 1728, !441, i64 1736, !441, i64 1744, !441, i64 1752, !441, i64 1760, !441, i64 1768, !441, i64 1776, !455, i64 1784, !456, i64 1792, !457, i64 1896, !458, i64 1968, !441, i64 2016, !428, i64 2024, !428, i64 2025, !428, i64 2026, !428, i64 2027, !428, i64 2028, !428, i64 2029, !428, i64 2030, !428, i64 2031, !428, i64 2032, !428, i64 2033, !428, i64 2034, !428, i64 2035}
!448 = !{!"asm_out", !441, i64 0, !441, i64 8, !441, i64 16, !449, i64 24, !449, i64 56, !441, i64 88, !441, i64 96, !441, i64 104, !441, i64 112, !441, i64 120, !441, i64 128, !441, i64 136, !441, i64 144, !441, i64 152, !441, i64 160, !441, i64 168, !441, i64 176, !441, i64 184, !441, i64 192, !441, i64 200, !441, i64 208, !441, i64 216, !441, i64 224, !441, i64 232, !441, i64 240, !441, i64 248, !441, i64 256, !441, i64 264, !441, i64 272, !441, i64 280, !441, i64 288, !441, i64 296, !441, i64 304, !441, i64 312, !441, i64 320, !441, i64 328, !441, i64 336, !441, i64 344, !441, i64 352, !441, i64 360}
!449 = !{!"asm_int_op", !441, i64 0, !441, i64 8, !441, i64 16, !441, i64 24}
!450 = !{!"sched", !441, i64 0, !441, i64 8, !441, i64 16, !441, i64 24, !441, i64 32, !441, i64 40, !441, i64 48, !441, i64 56, !441, i64 64, !441, i64 72, !441, i64 80, !441, i64 88, !441, i64 96, !441, i64 104, !441, i64 112, !441, i64 120, !441, i64 128, !441, i64 136, !441, i64 144, !441, i64 152, !441, i64 160, !441, i64 168, !441, i64 176, !441, i64 184, !441, i64 192, !441, i64 200, !441, i64 208, !441, i64 216, !441, i64 224, !441, i64 232, !441, i64 240, !441, i64 248, !441, i64 256, !441, i64 264, !441, i64 272, !441, i64 280, !441, i64 288}
!451 = !{!"vectorize", !441, i64 0, !441, i64 8, !441, i64 16, !441, i64 24, !441, i64 32, !441, i64 40, !441, i64 48, !441, i64 56, !441, i64 64, !441, i64 72}
!452 = !{!"long", !428, i64 0}
!453 = !{!"addr_space", !441, i64 0, !441, i64 8, !441, i64 16, !441, i64 24, !441, i64 32, !441, i64 40, !441, i64 48}
!454 = !{!"calls", !441, i64 0, !441, i64 8, !441, i64 16, !441, i64 24, !441, i64 32, !441, i64 40, !441, i64 48, !441, i64 56, !441, i64 64, !441, i64 72, !441, i64 80, !441, i64 88, !441, i64 96, !441, i64 104, !441, i64 112, !441, i64 120, !441, i64 128, !441, i64 136, !441, i64 144, !441, i64 152, !441, i64 160, !441, i64 168, !441, i64 176, !441, i64 184}
!455 = !{!"c", !441, i64 0}
!456 = !{!"cxx", !441, i64 0, !441, i64 8, !441, i64 16, !441, i64 24, !441, i64 32, !441, i64 40, !441, i64 48, !441, i64 56, !441, i64 64, !441, i64 72, !441, i64 80, !441, i64 88, !441, i64 96}
!457 = !{!"emutls", !441, i64 0, !441, i64 8, !441, i64 16, !441, i64 24, !441, i64 32, !441, i64 40, !441, i64 48, !441, i64 56, !428, i64 64, !428, i64 65}
!458 = !{!"target_option_hooks", !441, i64 0, !441, i64 8, !441, i64 16, !441, i64 24, !441, i64 32, !441, i64 40}
!459 = !{!"branch_weights", i32 1108, i32 1}
!460 = !{!"function_entry_count", i64 157046}
!461 = !{!"function_entry_count", i64 114}
!462 = !{!"gcse.c:gate_rtl_cprop"}
!463 = !{!"branch_weights", i32 13225, i32 231}
!464 = !{!"branch_weights", i32 115, i32 1}
!465 = !{!"gcse.c:execute_rtl_cprop"}
!466 = !{i32 0, i32 2}
!467 = !{!"function_entry_count", i64 38}
!468 = !{!"gcse.c:gate_rtl_pre"}
!469 = !{!"branch_weights", i32 1521, i32 79}
!470 = !{!"branch_weights", i32 39, i32 1}
!471 = !{!"branch_weights", i32 1, i32 39}
!472 = !{!"gcse.c:execute_rtl_pre"}
!473 = !{!"gcse.c:gate_rtl_hoist"}
!474 = !{!"function_entry_count", i64 0}
!475 = !{!"gcse.c:execute_rtl_hoist"}
!476 = !{!"gcse.c:one_cprop_pass"}
!477 = !{!478, !441, i64 8}
!478 = !{!"function", !441, i64 0, !441, i64 8, !441, i64 16, !441, i64 24, !441, i64 32, !441, i64 40, !441, i64 48, !441, i64 56, !441, i64 64, !441, i64 72, !441, i64 80, !441, i64 88, !441, i64 96, !437, i64 104, !437, i64 108, !437, i64 112, !437, i64 116, !437, i64 120, !437, i64 124, !441, i64 128, !437, i64 136, !437, i64 137, !437, i64 138, !437, i64 138, !437, i64 138, !437, i64 138, !437, i64 138, !437, i64 138, !437, i64 138, !437, i64 139, !437, i64 139, !437, i64 139, !437, i64 139, !437, i64 139, !437, i64 139, !437, i64 139}
!479 = !{!480, !437, i64 24}
!480 = !{!"control_flow_graph", !441, i64 0, !441, i64 8, !441, i64 16, !437, i64 24, !437, i64 28, !437, i64 32, !441, i64 40, !437, i64 48, !428, i64 52, !428, i64 60, !437, i64 68, !437, i64 72}
!481 = !{!"branch_weights", i32 1, i32 115}
!482 = !{i8 0, i8 2}
!483 = !{!"branch_weights", i32 94, i32 22}
!484 = !{!"branch_weights", i32 92, i32 3}
!485 = !{!480, !437, i64 32}
!486 = !{!"branch_weights", i32 94, i32 1}
!487 = !{!488, !437, i64 12}
!488 = !{!"hash_table_d", !441, i64 0, !437, i64 8, !437, i64 12, !437, i64 16}
!489 = !{!"branch_weights", i32 1, i32 94}
!490 = !{!480, !441, i64 0}
!491 = !{!492, !441, i64 56}
!492 = !{!"basic_block_def", !441, i64 0, !441, i64 8, !441, i64 16, !441, i64 24, !428, i64 32, !441, i64 48, !441, i64 56, !428, i64 64, !452, i64 72, !437, i64 80, !437, i64 84, !437, i64 88, !437, i64 92, !437, i64 96}
!493 = !{!480, !441, i64 8}
!494 = !{!"branch_weights", i32 1, i32 187}
!495 = !{!496, !441, i64 8}
!496 = !{!"rtl_bb_info", !441, i64 0, !441, i64 8, !441, i64 16, !441, i64 24, !437, i64 32}
!497 = !{!"branch_weights", i32 16030, i32 92703}
!498 = !{!"branch_weights", i32 -279934114, i32 1455350313}
!499 = !{!"branch_weights", i32 1, i32 68039}
!500 = !{!"branch_weights", i32 187, i32 217091}
!501 = distinct !{!501, !434}
!502 = !{!"branch_weights", i32 187, i32 31873}
!503 = distinct !{!503, !434}
!504 = !{!505, !441, i64 8}
!505 = !{!"obstack", !452, i64 0, !441, i64 8, !441, i64 16, !441, i64 24, !441, i64 32, !452, i64 40, !437, i64 48, !441, i64 56, !441, i64 64, !441, i64 72, !437, i64 80, !437, i64 80, !437, i64 80}
!506 = !{!505, !452, i64 40}
!507 = !{!505, !441, i64 32}
!508 = !{!505, !441, i64 16}
!509 = !{!505, !441, i64 24}
!510 = !{!"function_entry_count", i64 152}
!511 = !{!"gcse.c:is_too_expensive"}
!512 = !{!480, !437, i64 28}
!513 = !{!"branch_weights", i32 1, i32 153}
!514 = !{!515, !437, i64 8}
!515 = !{!"param_info", !441, i64 0, !437, i64 8, !428, i64 12, !437, i64 16, !437, i64 20, !441, i64 24}
!516 = !{!"branch_weights", i32 29, i32 125}
!517 = !{!"function_entry_count", i64 124}
!518 = !{!"gcse.c:alloc_gcse_mem"}
!519 = !{!"function_entry_count", i64 93}
!520 = !{!"gcse.c:local_cprop_pass"}
!521 = !{!"branch_weights", i32 16123, i32 93265}
!522 = !{!"branch_weights", i32 -182990908, i32 1493477226}
!523 = !{!"branch_weights", i32 66914, i32 1509}
!524 = !{!"branch_weights", i32 60613, i32 7802}
!525 = !{!526, !441, i64 0}
!526 = !{!"reg_use", !441, i64 0}
!527 = !{!"branch_weights", i32 60606, i32 8}
!528 = !{!"branch_weights", i32 0, i32 60613}
!529 = distinct !{!529, !434}
!530 = !{!"branch_weights", i32 273688, i32 -1954387520}
!531 = distinct !{!531, !434}
!532 = !{!"branch_weights", i32 187, i32 218401}
!533 = distinct !{!533, !434}
!534 = !{!"branch_weights", i32 187, i32 32059}
!535 = distinct !{!535, !434}
!536 = !{!"gcse.c:find_implicit_sets"}
!537 = !{!492, !441, i64 8}
!538 = !{!"branch_weights", i32 8868, i32 7256}
!539 = !{!"branch_weights", i32 49, i32 8820}
!540 = !{!"branch_weights", i32 34616401, i32 8147807}
!541 = !{!"branch_weights", i32 5845, i32 1296}
!542 = !{!"branch_weights", i32 5845, i32 1}
!543 = !{!"branch_weights", i32 1, i32 5845}
!544 = !{!545, !437, i64 48}
!545 = !{!"edge_def", !441, i64 0, !441, i64 8, !428, i64 16, !441, i64 24, !441, i64 32, !437, i64 40, !437, i64 44, !437, i64 48, !437, i64 52, !452, i64 56}
!546 = !{!"branch_weights", i32 3387, i32 2459}
!547 = !{!"branch_weights", i32 4492, i32 1354}
!548 = !{!"branch_weights", i32 4757, i32 1089}
!549 = !{!545, !441, i64 8}
!550 = !{!"branch_weights", i32 2272, i32 3574}
!551 = !{!"branch_weights", i32 1, i32 3574}
!552 = !{!492, !437, i64 80}
!553 = !{!"branch_weights", i32 3574, i32 1}
!554 = distinct !{!554, !434}
!555 = !{!"gcse.c:alloc_hash_table"}
!556 = !{!"branch_weights", i32 1, i32 125}
!557 = !{!488, !437, i64 8}
!558 = !{!488, !441, i64 0}
!559 = !{!488, !437, i64 16}
!560 = !{!"gcse.c:compute_hash_table"}
!561 = !{!"gcse.c:dump_hash_table"}
!562 = !{!563, !437, i64 8}
!563 = !{!"expr", !441, i64 0, !437, i64 8, !441, i64 16, !441, i64 24, !441, i64 32, !441, i64 40}
!564 = distinct !{!564, !434}
!565 = distinct !{!565, !434}
!566 = !{!563, !441, i64 0}
!567 = distinct !{!567, !434}
!568 = !{!"gcse.c:alloc_cprop_mem"}
!569 = !{!"gcse.c:compute_cprop_data"}
!570 = !{!"function_entry_count", i64 16029}
!571 = !{!"gcse.c:reset_opr_set_tables"}
!572 = !{!"function_entry_count", i64 68038}
!573 = !{!"gcse.c:cprop_insn"}
!574 = !{!"branch_weights", i32 -1024425756, i32 48058}
!575 = !{!"branch_weights", i32 66629, i32 1411}
!576 = !{!"branch_weights", i32 60140, i32 7899}
!577 = !{!"branch_weights", i32 36203, i32 23938}
!578 = !{!"branch_weights", i32 23919, i32 20}
!579 = !{!"branch_weights", i32 20, i32 1}
!580 = !{!"branch_weights", i32 17, i32 4}
!581 = !{!"branch_weights", i32 4, i32 1}
!582 = !{!"branch_weights", i32 17, i32 1}
!583 = !{!"branch_weights", i32 35, i32 289}
!584 = !{!"branch_weights", i32 3, i32 15}
!585 = !{!"branch_weights", i32 15, i32 1}
!586 = !{!"branch_weights", i32 0, i32 60140}
!587 = distinct !{!587, !434}
!588 = !{!"branch_weights", i32 2146948036, i32 535612}
!589 = !{!"branch_weights", i32 1, i32 15}
!590 = !{!"gcse.c:mark_oprs_set"}
!591 = !{!"branch_weights", i32 6078656, i32 -503698192, i32 439155201, i32 64690, i32 167098396}
!592 = !{!593, !437, i64 0}
!593 = !{!"rtvec_def", !437, i64 0, !428, i64 8}
!594 = !{!"branch_weights", i32 6785, i32 1}
!595 = !{!"branch_weights", i32 16293186, i32 -1992138196, i32 -2008763896, i32 332514}
!596 = !{!"branch_weights", i32 6786, i32 6785}
!597 = distinct !{!597, !434}
!598 = !{!"gcse.c:bypass_conditional_jumps"}
!599 = !{!"branch_weights", i32 1558, i32 14473}
!600 = !{!"branch_weights", i32 1, i32 127}
!601 = !{!"branch_weights", i32 136, i32 5079}
!602 = !{!"branch_weights", i32 -1820643245, i32 795602, i32 1415464564, i32 154396506}
!603 = !{!"branch_weights", i32 1558, i32 221}
!604 = !{!"branch_weights", i32 1506, i32 53}
!605 = !{!"branch_weights", i32 549, i32 958}
!606 = !{!"branch_weights", i32 1, i32 194}
!607 = !{!"branch_weights", i32 127, i32 667265}
!608 = distinct !{!608, !434}
!609 = distinct !{!609, !434}
!610 = !{!"branch_weights", i32 2102031701, i32 45451947}
!611 = !{!"gcse.c:free_cprop_mem"}
!612 = !{!"gcse.c:free_hash_table"}
!613 = !{!"gcse.c:free_gcse_mem"}
!614 = !{!"function_entry_count", i64 248}
!615 = !{!"gcse.c:gcalloc"}
!616 = !{!"function_entry_count", i64 82952}
!617 = !{!"gcse.c:local_cprop_find_used_regs"}
!618 = !{!"branch_weights", i32 1, i32 82953}
!619 = !{!"branch_weights", i32 82953, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!620 = !{!"function_entry_count", i64 60612}
!621 = !{!"gcse.c:do_local_cprop"}
!622 = !{!"branch_weights", i32 60613, i32 1}
!623 = !{!"branch_weights", i32 30547, i32 30067}
!624 = !{!"branch_weights", i32 94, i32 29974}
!625 = !{!"branch_weights", i32 29974, i32 1}
!626 = !{!"branch_weights", i32 37683, i32 22838}
!627 = !{!"branch_weights", i32 1, i32 22837}
!628 = !{!629, !441, i64 8}
!629 = !{!"elt_loc_list", !441, i64 0, !441, i64 8, !441, i64 16}
!630 = !{!"branch_weights", i32 42478, i32 1189}
!631 = !{!"branch_weights", i32 27621, i32 16046}
!632 = !{!"branch_weights", i32 14420, i32 13202}
!633 = !{!629, !441, i64 16}
!634 = !{!"branch_weights", i32 14420, i32 1}
!635 = !{!"branch_weights", i32 22837, i32 20829}
!636 = distinct !{!636, !434}
!637 = !{!"branch_weights", i32 2035680597, i32 111803051}
!638 = !{!"branch_weights", i32 1189, i32 1}
!639 = !{!"branch_weights", i32 2146731452, i32 752196}
!640 = !{!"branch_weights", i32 1, i32 8}
!641 = !{!"branch_weights", i32 8, i32 1}
!642 = !{!"function_entry_count", i64 286903}
!643 = !{!"gcse.c:find_used_regs"}
!644 = !{!"branch_weights", i32 120870, i32 311838}
!645 = !{!"branch_weights", i32 1, i32 120870}
!646 = !{!"branch_weights", i32 1, i32 286903}
!647 = !{!"branch_weights", i32 -1386353644, i32 1273204017, i32 4766}
!648 = !{!"branch_weights", i32 145804, i32 121288}
!649 = !{!"branch_weights", i32 127, i32 55386369}
!650 = distinct !{!650, !434}
!651 = !{!"branch_weights", i32 590353, i32 286903}
!652 = distinct !{!652, !434}
!653 = !{!"function_entry_count", i64 438477}
!654 = !{!"gcse.c:rhs_regno"}
!655 = !{!"function_entry_count", i64 80644}
!656 = !{!"gcse.c:gcse_constant_p"}
!657 = !{!"branch_weights", i32 8440, i32 72206}
!658 = !{!"branch_weights", i32 -2082734065, i32 262144, i32 262128}
!659 = !{!"branch_weights", i32 17553, i32 63093}
!660 = !{!"branch_weights", i32 1, i32 17553}
!661 = !{!"function_entry_count", i64 1191}
!662 = !{!"gcse.c:constprop_register"}
!663 = !{!"branch_weights", i32 9543, i32 1}
!664 = !{!"branch_weights", i32 3150451, i32 2144333197}
!665 = !{!"branch_weights", i32 1, i32 1192}
!666 = !{!"branch_weights", i32 1192, i32 1}
!667 = !{!"function_entry_count", i64 1214}
!668 = !{!"gcse.c:try_replace_reg"}
!669 = !{!"branch_weights", i32 9727, i32 1}
!670 = !{!"branch_weights", i32 14, i32 1}
!671 = !{!"branch_weights", i32 3, i32 1213}
!672 = !{!"branch_weights", i32 1192, i32 22}
!673 = !{!"branch_weights", i32 91675461, i32 2055808187}
!674 = !{!"branch_weights", i32 1, i32 22}
!675 = !{!"branch_weights", i32 1202, i32 14}
!676 = !{!"branch_weights", i32 1202, i32 1}
!677 = !{!"branch_weights", i32 1425636, i32 27484}
!678 = !{!"branch_weights", i32 3, i32 1192}
!679 = !{!"branch_weights", i32 -1795160353, i32 2095392}
!680 = !{!"branch_weights", i32 2145683579, i32 1800069}
!681 = !{!"branch_weights", i32 22401996, i32 2125081652}
!682 = !{!"branch_weights", i32 1, i32 1202}
!683 = !{!"gcse.c:cprop_jump"}
!684 = !{i64 0, i64 4, !436, i64 8, i64 8, !440}
!685 = !{i64 0, i64 8, !440}
!686 = !{!496, !441, i64 0}
!687 = distinct !{!687, !434}
!688 = !{!"function_entry_count", i64 7600}
!689 = !{!"gcse.c:ei_start_1"}
!690 = !{!"function_entry_count", i64 680}
!691 = !{!"gcse.c:ei_safe_edge"}
!692 = !{!"branch_weights", i32 488, i32 194}
!693 = !{!"function_entry_count", i64 12551}
!694 = !{!"gcse.c:ei_next"}
!695 = !{!"branch_weights", i32 1, i32 12552}
!696 = !{!"branch_weights", i32 12552, i32 1}
!697 = !{!698, !437, i64 0}
!698 = !{!"", !437, i64 0, !441, i64 8}
!699 = !{!"function_entry_count", i64 20155}
!700 = !{!"gcse.c:ei_end_p"}
!701 = !{!"branch_weights", i32 1, i32 20156}
!702 = !{!"function_entry_count", i64 12630}
!703 = !{!"gcse.c:ei_edge"}
!704 = !{!"branch_weights", i32 1, i32 12631}
!705 = !{!"function_entry_count", i64 70701}
!706 = !{!"gcse.c:VEC_edge_base_length"}
!707 = !{!"branch_weights", i32 1, i32 70702}
!708 = !{!709, !437, i64 0}
!709 = !{!"VEC_edge_base", !437, i64 0, !437, i64 4, !428, i64 8}
!710 = !{!"function_entry_count", i64 90672}
!711 = !{!"gcse.c:ei_container"}
!712 = !{!"branch_weights", i32 1, i32 90673}
!713 = !{!"function_entry_count", i64 24322}
!714 = !{!"gcse.c:VEC_edge_base_index"}
!715 = !{!"function_entry_count", i64 5844}
!716 = !{!"gcse.c:implicit_set_cond_p"}
!717 = !{!"branch_weights", i32 -2068746967, i32 381071, i32 381006, i32 380940, i32 380876}
!718 = !{!719, !428, i64 49}
!719 = !{!"real_format", !441, i64 0, !441, i64 8, !437, i64 16, !437, i64 20, !437, i64 24, !437, i64 28, !437, i64 32, !437, i64 36, !437, i64 40, !428, i64 44, !428, i64 45, !428, i64 46, !428, i64 47, !428, i64 48, !428, i64 49, !428, i64 50, !428, i64 51}
!720 = !{i64 0, i64 4, !436, i64 0, i64 4, !436, i64 0, i64 4, !436, i64 0, i64 4, !436, i64 0, i64 4, !436, i64 0, i64 4, !436, i64 8, i64 24, !427}
!721 = !{!"function_entry_count", i64 21873}
!722 = !{!"gcse.c:single_pred_p"}
!723 = !{!492, !441, i64 0}
!724 = !{!"gcse.c:gmalloc"}
!725 = !{!"gcse.c:compute_hash_table_work"}
!726 = !{!"branch_weights", i32 249, i32 1}
!727 = !{!728, !441, i64 0}
!728 = !{!"reg_avail_info", !441, i64 0, !437, i64 8, !437, i64 12}
!729 = !{!"branch_weights", i32 96165, i32 249}
!730 = distinct !{!730, !434}
!731 = !{!"branch_weights", i32 1, i32 249}
!732 = !{!"branch_weights", i32 22102, i32 125354}
!733 = !{!"branch_weights", i32 -830725606, i32 1302038331}
!734 = !{!"branch_weights", i32 12769, i32 78341}
!735 = !{!452, !452, i64 0}
!736 = !{!"branch_weights", i32 89377, i32 587329}
!737 = !{!"branch_weights", i32 12769, i32 663936}
!738 = distinct !{!738, !434}
!739 = !{!"branch_weights", i32 249, i32 294413}
!740 = distinct !{!740, !434}
!741 = !{!"branch_weights", i32 5980, i32 16123}
!742 = !{!"branch_weights", i32 12550, i32 3574}
!743 = distinct !{!743, !434}
!744 = !{!"branch_weights", i32 249, i32 43955}
!745 = distinct !{!745, !434}
!746 = !{!"function_entry_count", i64 16277}
!747 = !{!"gcse.c:clear_modify_mem_tables"}
!748 = !{!"branch_weights", i32 1, i32 16277}
!749 = !{!"branch_weights", i32 16277, i32 90}
!750 = distinct !{!750, !434}
!751 = !{!"function_entry_count", i64 654386}
!752 = !{!"gcse.c:record_last_reg_set_info"}
!753 = !{!754, !441, i64 248}
!754 = !{!"df", !428, i64 0, !428, i64 64, !441, i64 128, !755, i64 136, !755, i64 176, !441, i64 216, !441, i64 224, !441, i64 232, !437, i64 240, !437, i64 244, !441, i64 248, !437, i64 256, !437, i64 260, !441, i64 264, !441, i64 272, !441, i64 280, !441, i64 288, !441, i64 296, !441, i64 304, !441, i64 312, !441, i64 320, !441, i64 328, !441, i64 336, !437, i64 344, !437, i64 348, !441, i64 352, !437, i64 360, !437, i64 364, !428, i64 365, !428, i64 366}
!755 = !{!"df_ref_info", !441, i64 0, !441, i64 8, !441, i64 16, !437, i64 24, !437, i64 28, !437, i64 32, !437, i64 36}
!756 = !{!757, !437, i64 40}
!757 = !{!"df_insn_info", !441, i64 0, !441, i64 8, !441, i64 16, !441, i64 24, !441, i64 32, !437, i64 40}
!758 = !{!728, !437, i64 12}
!759 = !{!"branch_weights", i32 183448, i32 470940}
!760 = !{!728, !437, i64 8}
!761 = !{!"function_entry_count", i64 22344}
!762 = !{!"gcse.c:mark_call"}
!763 = !{!"branch_weights", i32 499299025, i32 44691}
!764 = !{!"function_entry_count", i64 96279}
!765 = !{!"gcse.c:record_last_set_info"}
!766 = !{!"branch_weights", i32 1, i32 96280}
!767 = !{!"branch_weights", i32 348384684, i32 1959665157, i32 505569822}
!768 = !{!"branch_weights", i32 17301, i32 1}
!769 = !{!"function_entry_count", i64 91113}
!770 = !{!"gcse.c:hash_scan_set"}
!771 = !{!"branch_weights", i32 9325, i32 81790}
!772 = !{!"branch_weights", i32 52569, i32 29222}
!773 = !{!"branch_weights", i32 50571, i32 1999}
!774 = !{!"branch_weights", i32 1879, i32 121}
!775 = !{!"branch_weights", i32 7, i32 1873}
!776 = !{!"branch_weights", i32 1873, i32 1}
!777 = !{!"branch_weights", i32 1405, i32 1}
!778 = !{!"branch_weights", i32 469, i32 1}
!779 = !{!"branch_weights", i32 105655198, i32 530336662}
!780 = !{!"branch_weights", i32 1, i32 8734}
!781 = !{!"branch_weights", i32 8734, i32 1}
!782 = !{!"branch_weights", i32 6132, i32 2603}
!783 = !{!"branch_weights", i32 2603, i32 1}
!784 = !{!"branch_weights", i32 2573, i32 31}
!785 = !{!"branch_weights", i32 31, i32 1}
!786 = !{!"branch_weights", i32 1511, i32 1063}
!787 = !{!"branch_weights", i32 1137, i32 1437}
!788 = !{!"branch_weights", i32 1218277773, i32 805341279}
!789 = !{!"branch_weights", i32 7350, i32 22752}
!790 = !{!"branch_weights", i32 420, i32 6931}
!791 = !{!"branch_weights", i32 1, i32 420}
!792 = !{!"branch_weights", i32 19172, i32 10511}
!793 = !{!"branch_weights", i32 4938, i32 5993}
!794 = !{!"branch_weights", i32 1, i32 5993}
!795 = !{!"branch_weights", i32 5993, i32 1}
!796 = !{!"branch_weights", i32 29222, i32 1}
!797 = !{!"function_entry_count", i64 91108}
!798 = !{!"gcse.c:hash_scan_insn"}
!799 = !{!"branch_weights", i32 134172336, i32 -1334665971, i32 330975976}
!800 = !{!"branch_weights", i32 8803, i32 1}
!801 = !{!"branch_weights", i32 -1736833036, i32 -1736833036}
!802 = !{!"branch_weights", i32 8804, i32 8803}
!803 = distinct !{!803, !434}
!804 = !{!"function_entry_count", i64 16443}
!805 = !{!"gcse.c:bmp_iter_set_init"}
!806 = !{!807, !441, i64 0}
!807 = !{!"bitmap_head_def", !441, i64 0, !441, i64 8, !437, i64 16, !441, i64 24}
!808 = !{!809, !441, i64 0}
!809 = !{!"", !441, i64 0, !441, i64 8, !437, i64 16, !452, i64 24}
!810 = !{!809, !441, i64 8}
!811 = !{!"branch_weights", i32 9140, i32 7305}
!812 = !{!813, !437, i64 16}
!813 = !{!"bitmap_element_def", !441, i64 0, !441, i64 8, !437, i64 16, !428, i64 24}
!814 = !{!809, !437, i64 16}
!815 = !{!809, !452, i64 24}
!816 = !{!"function_entry_count", i64 48275}
!817 = !{!"gcse.c:bmp_iter_set"}
!818 = !{!"branch_weights", i32 19941, i32 28336}
!819 = !{!"branch_weights", i32 31832, i32 1}
!820 = !{!"branch_weights", i32 196480, i32 31832}
!821 = distinct !{!821, !434}
!822 = !{!"branch_weights", i32 1, i32 16683}
!823 = !{!"branch_weights", i32 13427, i32 3498}
!824 = !{!"branch_weights", i32 16683, i32 241}
!825 = distinct !{!825, !434}
!826 = !{!813, !441, i64 0}
!827 = !{!"branch_weights", i32 16444, i32 241}
!828 = !{!"function_entry_count", i64 16366}
!829 = !{!"gcse.c:free_insn_expr_list_list"}
!830 = !{!"branch_weights", i32 1, i32 16366}
!831 = !{!"branch_weights", i32 60551, i32 22345}
!832 = !{!"branch_weights", i32 16366, i32 66529}
!833 = distinct !{!833, !434}
!834 = !{!"function_entry_count", i64 31832}
!835 = !{!"gcse.c:bmp_iter_next"}
!836 = !{!"function_entry_count", i64 52619}
!837 = !{!"gcse.c:record_last_mem_set_info"}
!838 = !{!"branch_weights", i32 22345, i32 30276}
!839 = !{!"function_entry_count", i64 30275}
!840 = !{!"gcse.c:canon_list_insert"}
!841 = !{!"branch_weights", i32 103384, i32 103394, i32 103390, i32 103387, i32 -1164896882}
!842 = distinct !{!842, !434}
!843 = !{!"function_entry_count", i64 9201}
!844 = !{!"gcse.c:want_to_gcse_p"}
!845 = !{!"branch_weights", i32 -1883242433, i32 262144, i32 262122, i32 262101}
!846 = !{!"function_entry_count", i64 2572}
!847 = !{!"gcse.c:oprs_anticipatable_p"}
!848 = !{!"function_entry_count", i64 8564}
!849 = !{!"gcse.c:oprs_available_p"}
!850 = !{!"gcse.c:insert_expr_in_table"}
!851 = !{!"branch_weights", i32 2573, i32 1}
!852 = !{!"branch_weights", i32 1, i32 1027}
!853 = !{!"branch_weights", i32 258, i32 2573}
!854 = !{!"branch_weights", i32 1027, i32 776}
!855 = distinct !{!855, !434}
!856 = !{!"branch_weights", i32 847, i32 182}
!857 = !{!563, !441, i64 24}
!858 = !{!"branch_weights", i32 200, i32 864}
!859 = !{!860, !441, i64 8}
!860 = !{!"occr", !441, i64 0, !441, i64 8, !428, i64 16, !428, i64 17}
!861 = !{!"branch_weights", i32 1, i32 1063}
!862 = !{!860, !441, i64 0}
!863 = !{!860, !428, i64 16}
!864 = !{!563, !441, i64 32}
!865 = !{!"branch_weights", i32 949, i32 489}
!866 = !{!"branch_weights", i32 1, i32 489}
!867 = !{!"function_entry_count", i64 10929}
!868 = !{!"gcse.c:insert_set_in_table"}
!869 = !{!"branch_weights", i32 10930, i32 1}
!870 = !{!"branch_weights", i32 1, i32 5687}
!871 = !{!"branch_weights", i32 54024, i32 10930}
!872 = !{!"branch_weights", i32 5687, i32 53579}
!873 = distinct !{!873, !434}
!874 = !{!"branch_weights", i32 4405, i32 1284}
!875 = !{!"branch_weights", i32 628653606, i32 1518830042}
!876 = !{!"branch_weights", i32 1, i32 5243}
!877 = !{!"function_entry_count", i64 29153}
!878 = !{!"gcse.c:oprs_unchanged_p"}
!879 = !{!"branch_weights", i32 8497, i32 9091, i32 2931, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 428, i32 7187, i32 1, i32 1, i32 1, i32 993, i32 33, i32 1, i32 1}
!880 = !{!"branch_weights", i32 5219, i32 3873}
!881 = !{!"branch_weights", i32 1082, i32 4138}
!882 = !{!"branch_weights", i32 1656, i32 1276}
!883 = !{!"branch_weights", i32 127, i32 3731585}
!884 = !{!"branch_weights", i32 1, i32 32726, i32 1}
!885 = !{!"branch_weights", i32 7867, i32 8497}
!886 = !{!"branch_weights", i32 631, i32 7867}
!887 = distinct !{!887, !434}
!888 = !{!"branch_weights", i32 2094337, i32 127}
!889 = distinct !{!889, !434}
!890 = !{!"function_entry_count", i64 2930}
!891 = !{!"gcse.c:load_killed_in_block_p"}
!892 = !{!"branch_weights", i32 2899, i32 33}
!893 = !{!"branch_weights", i32 1, i32 1623}
!894 = !{!"branch_weights", i32 2938, i32 1548}
!895 = !{!"branch_weights", i32 675, i32 874}
!896 = distinct !{!896, !434}
!897 = !{!"branch_weights", i32 1714, i32 1225}
!898 = !{!"branch_weights", i32 1276, i32 823}
!899 = !{!"branch_weights", i32 1, i32 823}
!900 = !{!"branch_weights", i32 1623, i32 2862}
!901 = !{!"function_entry_count", i64 822}
!902 = !{!"gcse.c:mems_conflict_for_gcse_p"}
!903 = !{!"branch_weights", i32 4355013, i32 4370908, i32 4365603, i32 4360305, i32 -710790935}
!904 = distinct !{!904, !434}
!905 = !{!"branch_weights", i32 823, i32 1}
!906 = !{!"function_entry_count", i64 69939}
!907 = !{!"gcse.c:expr_equiv_p"}
!908 = !{!"function_entry_count", i64 5}
!909 = !{!"gcse.c:find_rtx_in_ldst"}
!910 = !{!"branch_weights", i32 1, i32 6}
!911 = !{!912, !441, i64 8}
!912 = !{!"ls_expr", !441, i64 0, !441, i64 8, !441, i64 16, !441, i64 24, !441, i64 32, !441, i64 40, !437, i64 48, !437, i64 52, !437, i64 56, !441, i64 64}
!913 = !{!"branch_weights", i32 3, i32 4}
!914 = !{!912, !437, i64 48}
!915 = !{!"gcse.c:hash_expr"}
!916 = !{!"function_entry_count", i64 20141}
!917 = !{!"gcse.c:gcse_alloc"}
!918 = !{!"branch_weights", i32 135, i32 20008}
!919 = !{!"branch_weights", i32 1, i32 20142}
!920 = !{!505, !437, i64 48}
!921 = !{!"function_entry_count", i64 35168}
!922 = !{!"gcse.c:hash_set"}
!923 = !{!"gcse.c:compute_local_properties"}
!924 = !{!"branch_weights", i32 32, i32 94}
!925 = !{!"branch_weights", i32 94, i32 32}
!926 = !{!"branch_weights", i32 33524, i32 6715}
!927 = !{!"branch_weights", i32 1, i32 6715}
!928 = !{!"branch_weights", i32 5688, i32 1028}
!929 = !{!"branch_weights", i32 1027, i32 36}
!930 = distinct !{!930, !434}
!931 = !{!"branch_weights", i32 1, i32 6714}
!932 = !{!860, !428, i64 17}
!933 = !{!"branch_weights", i32 6714, i32 5652}
!934 = distinct !{!934, !434}
!935 = !{!563, !441, i64 40}
!936 = !{!"branch_weights", i32 6715, i32 0}
!937 = distinct !{!937, !434}
!938 = !{!"branch_weights", i32 80229, i32 249}
!939 = distinct !{!939, !434}
!940 = !{!"function_entry_count", i64 13371}
!941 = !{!"gcse.c:compute_transp"}
!942 = !{!"branch_weights", i32 6658, i32 7654, i32 183, i32 1, i32 1, i32 29, i32 5619, i32 1, i32 1, i32 1, i32 57, i32 17, i32 1, i32 1}
!943 = !{!754, !441, i64 216}
!944 = !{!"branch_weights", i32 1580, i32 6075}
!945 = !{!"branch_weights", i32 1, i32 6074}
!946 = !{!"branch_weights", i32 1, i32 184967}
!947 = !{!757, !441, i64 0}
!948 = !{!"branch_weights", i32 6074, i32 178893}
!949 = distinct !{!949, !434}
!950 = !{!"branch_weights", i32 1, i32 1579}
!951 = !{!"branch_weights", i32 2, i32 11318}
!952 = !{!"branch_weights", i32 1579, i32 9740}
!953 = distinct !{!953, !434}
!954 = !{!"branch_weights", i32 167, i32 17}
!955 = !{!"branch_weights", i32 1, i32 166}
!956 = !{!"branch_weights", i32 15467, i32 1}
!957 = !{!"branch_weights", i32 166, i32 15301}
!958 = distinct !{!958, !434}
!959 = !{!"branch_weights", i32 166, i32 1}
!960 = !{!"branch_weights", i32 1, i32 0}
!961 = distinct !{!961, !434}
!962 = !{!"branch_weights", i32 127, i32 2586881}
!963 = !{!"branch_weights", i32 1, i32 26630, i32 1}
!964 = !{!"branch_weights", i32 6658, i32 6658}
!965 = distinct !{!965, !434}
!966 = !{!"branch_weights", i32 1704193, i32 127}
!967 = distinct !{!967, !434}
!968 = !{!"function_entry_count", i64 198476}
!969 = !{!"gcse.c:SET_BIT"}
!970 = !{!971, !441, i64 0}
!971 = !{!"simple_bitmap_def", !441, i64 0, !437, i64 8, !437, i64 12, !428, i64 16}
!972 = !{!"branch_weights", i32 198477, i32 1}
!973 = !{!"function_entry_count", i64 26784}
!974 = !{!"gcse.c:RESET_BIT"}
!975 = !{!"branch_weights", i32 26785, i32 1}
!976 = !{!"function_entry_count", i64 166}
!977 = !{!"gcse.c:bmp_iter_and_compl_init"}
!978 = !{!"branch_weights", i32 1, i32 167}
!979 = !{!"branch_weights", i32 127, i32 21249}
!980 = distinct !{!980, !434}
!981 = !{!"branch_weights", i32 2134776358, i32 12707290}
!982 = !{!"branch_weights", i32 48535, i32 2147435113}
!983 = !{!"branch_weights", i32 167, i32 1}
!984 = !{!"gcse.c:bmp_iter_and_compl"}
!985 = distinct !{!985, !434}
!986 = !{!"branch_weights", i32 1, i32 316}
!987 = !{!"branch_weights", i32 1, i32 467}
!988 = !{!"branch_weights", i32 467, i32 1}
!989 = !{!"branch_weights", i32 316, i32 151}
!990 = distinct !{!990, !434}
!991 = !{!"branch_weights", i32 167, i32 151}
!992 = !{!"branch_weights", i32 151, i32 151}
!993 = !{!"branch_weights", i32 127, i32 38401}
!994 = distinct !{!994, !434}
!995 = !{!"function_entry_count", i64 60155}
!996 = !{!"gcse.c:oprs_not_set_p"}
!997 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 60156}
!998 = !{!"branch_weights", i32 127, i32 7699841}
!999 = distinct !{!999, !434}
!1000 = distinct !{!1000, !434}
!1001 = !{!"function_entry_count", i64 23937}
!1002 = !{!"gcse.c:find_avail_set"}
!1003 = !{!"branch_weights", i32 1, i32 6625}
!1004 = !{!"branch_weights", i32 17290, i32 20}
!1005 = !{!"branch_weights", i32 17309, i32 0}
!1006 = distinct !{!1006, !434}
!1007 = !{!"branch_weights", i32 1, i32 17}
!1008 = !{!"branch_weights", i32 6625, i32 10684}
!1009 = !{!"function_entry_count", i64 24239}
!1010 = !{!"gcse.c:lookup_set"}
!1011 = !{!"branch_weights", i32 17643, i32 3395}
!1012 = !{!"branch_weights", i32 24240, i32 193}
!1013 = !{!"branch_weights", i32 3395, i32 0}
!1014 = distinct !{!1014, !434}
!1015 = !{!"function_entry_count", i64 18057}
!1016 = !{!"gcse.c:next_set"}
!1017 = !{!563, !441, i64 16}
!1018 = !{!"branch_weights", i32 3172, i32 14946}
!1019 = !{!"branch_weights", i32 18058, i32 60}
!1020 = distinct !{!1020, !434}
!1021 = !{!"function_entry_count", i64 65362}
!1022 = !{!"gcse.c:mark_set"}
!1023 = !{!"branch_weights", i32 757395144, i32 86318, i32 86317, i32 86316, i32 -530346145, i32 1119995372}
!1024 = distinct !{!1024, !434}
!1025 = !{!"branch_weights", i32 6994, i32 58370}
!1026 = !{!"function_entry_count", i64 6737}
!1027 = !{!"gcse.c:mark_clobber"}
!1028 = !{!"branch_weights", i32 354692, i32 354797, i32 354745, i32 -1905049021}
!1029 = distinct !{!1029, !434}
!1030 = !{!"function_entry_count", i64 193}
!1031 = !{!"gcse.c:bypass_block"}
!1032 = !{!"branch_weights", i32 194, i32 1}
!1033 = !{!"branch_weights", i32 1, i32 193}
!1034 = !{!"branch_weights", i32 488, i32 1}
!1035 = !{!"branch_weights", i32 193, i32 295}
!1036 = distinct !{!1036, !434}
!1037 = distinct !{!1037, !434}
!1038 = !{!545, !441, i64 0}
!1039 = !{!"branch_weights", i32 279, i32 205}
!1040 = !{!"branch_weights", i32 275, i32 5}
!1041 = !{!"branch_weights", i32 3, i32 3}
!1042 = !{!"branch_weights", i32 3, i32 1}
!1043 = !{!"branch_weights", i32 5, i32 1}
!1044 = !{!"branch_weights", i32 1, i32 3}
!1045 = !{!"branch_weights", i32 1988410786, i32 159072862}
!1046 = !{!"branch_weights", i32 159072862, i32 1988410786}
!1047 = !{!"branch_weights", i32 1, i32 5}
!1048 = !{!"branch_weights", i32 0, i32 279}
!1049 = distinct !{!1049, !434}
!1050 = !{!"branch_weights", i32 127, i32 24577}
!1051 = !{!"function_entry_count", i64 19475}
!1052 = !{!"gcse.c:ei_cond"}
!1053 = !{!"branch_weights", i32 12144, i32 7333}
!1054 = !{!"function_entry_count", i64 278}
!1055 = !{!"gcse.c:find_bypass_set"}
!1056 = !{!"branch_weights", i32 769, i32 13}
!1057 = !{!"branch_weights", i32 274, i32 507}
!1058 = distinct !{!1058, !434}
!1059 = !{!"branch_weights", i32 13, i32 1}
!1060 = !{!"branch_weights", i32 9, i32 5}
!1061 = !{!"branch_weights", i32 127, i32 34945}
!1062 = !{!"function_entry_count", i64 2}
!1063 = !{!"gcse.c:reg_killed_on_edge"}
!1064 = !{!"branch_weights", i32 1, i32 191}
!1065 = !{!"branch_weights", i32 191, i32 1}
!1066 = distinct !{!1066, !434}
!1067 = !{!"gcse.c:free_modify_mem_tables"}
!1068 = !{!"gcse.c:one_pre_gcse_pass"}
!1069 = !{!"branch_weights", i32 32, i32 8}
!1070 = !{!"branch_weights", i32 1, i32 32}
!1071 = !{!"branch_weights", i32 32, i32 1}
!1072 = !{!"function_entry_count", i64 31}
!1073 = !{!"gcse.c:compute_ld_motion_mems"}
!1074 = !{!"branch_weights", i32 5980, i32 32094}
!1075 = !{!"branch_weights", i32 1195051336, i32 -1407532388}
!1076 = !{!"branch_weights", i32 19789, i32 2911}
!1077 = !{!"branch_weights", i32 1496, i32 18294}
!1078 = !{!"branch_weights", i32 1, i32 1496}
!1079 = !{!"branch_weights", i32 1496, i32 1}
!1080 = !{!912, !441, i64 24}
!1081 = !{!"branch_weights", i32 4326, i32 15464}
!1082 = !{!"branch_weights", i32 4274, i32 53}
!1083 = !{!"branch_weights", i32 2809, i32 54, i32 53}
!1084 = !{!"branch_weights", i32 1, i32 53}
!1085 = !{!912, !441, i64 32}
!1086 = !{!"branch_weights", i32 127, i32 152041}
!1087 = distinct !{!1087, !434}
!1088 = !{!"branch_weights", i32 127, i32 23793}
!1089 = distinct !{!1089, !434}
!1090 = !{!"gcse.c:trim_ld_motion_mems"}
!1091 = !{!"branch_weights", i32 192, i32 420}
!1092 = !{!912, !437, i64 56}
!1093 = !{!"branch_weights", i32 15, i32 161}
!1094 = !{!"branch_weights", i32 127, i32 573}
!1095 = distinct !{!1095, !434}
!1096 = !{!912, !441, i64 0}
!1097 = !{!912, !441, i64 40}
!1098 = !{!"branch_weights", i32 127, i32 2317}
!1099 = distinct !{!1099, !434}
!1100 = !{!"branch_weights", i32 32793832, i32 2114689816}
!1101 = !{!"gcse.c:alloc_pre_mem"}
!1102 = !{!"gcse.c:compute_pre_data"}
!1103 = !{!"branch_weights", i32 8938, i32 1028}
!1104 = !{!"branch_weights", i32 947, i32 82}
!1105 = !{!"branch_weights", i32 1028, i32 0}
!1106 = distinct !{!1106, !434}
!1107 = !{!"branch_weights", i32 39737, i32 127}
!1108 = distinct !{!1108, !434}
!1109 = !{!"branch_weights", i32 1, i32 5979}
!1110 = !{!"branch_weights", i32 9774, i32 1}
!1111 = !{!"branch_weights", i32 5979, i32 3795}
!1112 = distinct !{!1112, !434}
!1113 = distinct !{!1113, !434}
!1114 = !{!"gcse.c:pre_gcse"}
!1115 = distinct !{!1115, !434}
!1116 = !{!"branch_weights", i32 127, i32 39737}
!1117 = distinct !{!1117, !434}
!1118 = !{!"branch_weights", i32 31, i32 2}
!1119 = !{!"gcse.c:free_pre_mem"}
!1120 = !{!"gcse.c:free_ldst_mems"}
!1121 = !{!"branch_weights", i32 127, i32 517}
!1122 = distinct !{!1122, !434}
!1123 = !{!"function_entry_count", i64 523}
!1124 = !{!"gcse.c:pre_ldst_expr_hash"}
!1125 = !{!"function_entry_count", i64 7876}
!1126 = !{!"gcse.c:pre_ldst_expr_eq"}
!1127 = !{!"function_entry_count", i64 9527}
!1128 = !{!"gcse.c:simple_mem"}
!1129 = !{!"branch_weights", i32 1063972, i32 -916145554}
!1130 = !{!"branch_weights", i32 9528, i32 1}
!1131 = !{!"branch_weights", i32 5255, i32 4274}
!1132 = !{!"branch_weights", i32 5255, i32 1}
!1133 = !{!"function_entry_count", i64 5254}
!1134 = !{!"gcse.c:ldst_entry"}
!1135 = !{!"branch_weights", i32 611, i32 4645}
!1136 = !{!912, !441, i64 64}
!1137 = !{!912, !437, i64 52}
!1138 = !{!"function_entry_count", i64 68463}
!1139 = !{!"gcse.c:invalidate_any_buried_refs"}
!1140 = !{!"branch_weights", i32 3708, i32 64757}
!1141 = !{!"branch_weights", i32 1, i32 3708}
!1142 = !{!"branch_weights", i32 1, i32 68463}
!1143 = !{!"branch_weights", i32 -187762176, i32 1980764012, i32 92518656}
!1144 = !{!"branch_weights", i32 2018, i32 1}
!1145 = !{!"branch_weights", i32 2019, i32 2018}
!1146 = distinct !{!1146, !434}
!1147 = !{!"branch_weights", i32 66409, i32 68463}
!1148 = distinct !{!1148, !434}
!1149 = !{!"function_entry_count", i64 610}
!1150 = !{!"gcse.c:free_ldst_entry"}
!1151 = !{!"gcse.c:print_ldst_list"}
!1152 = distinct !{!1152, !434}
!1153 = !{!"gcse.c:first_ls_expr"}
!1154 = !{!"gcse.c:next_ls_expr"}
!1155 = !{!"gcse.c:pre_delete"}
!1156 = !{!"branch_weights", i32 1058, i32 6}
!1157 = !{!"branch_weights", i32 55, i32 1}
!1158 = !{!"branch_weights", i32 6, i32 1}
!1159 = !{!"branch_weights", i32 1913212702, i32 234270946}
!1160 = !{!"branch_weights", i32 4, i32 3}
!1161 = distinct !{!1161, !434}
!1162 = distinct !{!1162, !434}
!1163 = distinct !{!1163, !434}
!1164 = !{!"gcse.c:pre_edge_insert"}
!1165 = !{!971, !437, i64 12}
!1166 = !{!1167, !437, i64 4}
!1167 = !{!"edge_list", !437, i64 0, !437, i64 4, !441, i64 8}
!1168 = !{!"branch_weights", i32 127, i32 1}
!1169 = !{!1167, !441, i64 8}
!1170 = !{!"branch_weights", i32 9879, i32 1}
!1171 = !{!"branch_weights", i32 13021, i32 19}
!1172 = !{!"branch_weights", i32 19, i32 13040}
!1173 = !{!"branch_weights", i32 17, i32 3}
!1174 = !{!"branch_weights", i32 25, i32 5}
!1175 = !{!"branch_weights", i32 191, i32 1665}
!1176 = distinct !{!1176, !434}
!1177 = !{!"branch_weights", i32 19, i32 0}
!1178 = distinct !{!1178, !434}
!1179 = !{!"branch_weights", i32 9879, i32 3161}
!1180 = distinct !{!1180, !434}
!1181 = !{!"branch_weights", i32 127, i32 39393}
!1182 = distinct !{!1182, !434}
!1183 = !{!"gcse.c:pre_insert_copies"}
!1184 = !{!"branch_weights", i32 1025, i32 4}
!1185 = !{!"branch_weights", i32 39, i32 6}
!1186 = !{!"branch_weights", i32 152, i32 9}
!1187 = !{!"branch_weights", i32 143, i32 10}
!1188 = !{!"branch_weights", i32 125, i32 19}
!1189 = !{!"branch_weights", i32 191, i32 4929}
!1190 = distinct !{!1190, !434}
!1191 = !{!"branch_weights", i32 127, i32 1281}
!1192 = distinct !{!1192, !434}
!1193 = !{!"branch_weights", i32 415969274, i32 1731514374}
!1194 = distinct !{!1194, !434}
!1195 = distinct !{!1195, !434}
!1196 = !{!"gcse.c:gcse_emit_move_after"}
!1197 = !{!"branch_weights", i32 1913212709, i32 234270939}
!1198 = !{!"gcse.c:insert_insn_end_basic_block"}
!1199 = distinct !{!1199, !434}
!1200 = distinct !{!1200, !434}
!1201 = !{!"gcse.c:process_insert_insn"}
!1202 = !{!"gcse.c:update_ld_motion_stores"}
!1203 = distinct !{!1203, !434}
!1204 = !{!"gcse.c:single_succ_p"}
!1205 = !{!"gcse.c:single_succ_edge"}
!1206 = !{!"gcse.c:add_label_notes"}
!1207 = distinct !{!1207, !434}
!1208 = distinct !{!1208, !434}
!1209 = !{!"function_entry_count", i64 142}
!1210 = !{!"gcse.c:pre_expr_reaches_here_p"}
!1211 = !{!"function_entry_count", i64 18}
!1212 = !{!"gcse.c:pre_insert_copy_insn"}
!1213 = !{!"branch_weights", i32 1, i32 19, i32 1}
!1214 = distinct !{!1214, !434}
!1215 = !{!"branch_weights", i32 19, i32 1}
!1216 = !{!"branch_weights", i32 1, i32 19}
!1217 = !{!"function_entry_count", i64 1235}
!1218 = !{!"gcse.c:pre_expr_reaches_here_p_work"}
!1219 = !{!"branch_weights", i32 1, i32 1160}
!1220 = !{!"branch_weights", i32 1, i32 1884}
!1221 = !{!"branch_weights", i32 1669, i32 216}
!1222 = !{!"branch_weights", i32 1136, i32 534}
!1223 = !{!"branch_weights", i32 19, i32 516}
!1224 = !{!"branch_weights", i32 43, i32 1094}
!1225 = !{!"branch_weights", i32 1037, i32 58}
!1226 = !{!"branch_weights", i32 1160, i32 724}
!1227 = distinct !{!1227, !434}
!1228 = !{!"gcse.c:one_code_hoisting_pass"}
!1229 = !{!"gcse.c:alloc_code_hoist_mem"}
!1230 = !{!"gcse.c:compute_code_hoist_data"}
!1231 = !{!"gcse.c:hoist_code"}
!1232 = distinct !{!1232, !434}
!1233 = distinct !{!1233, !434}
!1234 = !{!971, !437, i64 8}
!1235 = distinct !{!1235, !434}
!1236 = distinct !{!1236, !434}
!1237 = distinct !{!1237, !434}
!1238 = distinct !{!1238, !434}
!1239 = distinct !{!1239, !434}
!1240 = distinct !{!1240, !434}
!1241 = !{!"gcse.c:free_code_hoist_mem"}
!1242 = !{!"gcse.c:compute_transpout"}
!1243 = distinct !{!1243, !434}
!1244 = distinct !{!1244, !434}
!1245 = distinct !{!1245, !434}
!1246 = !{!"gcse.c:compute_code_hoist_vbeinout"}
!1247 = !{!492, !441, i64 48}
!1248 = distinct !{!1248, !434}
!1249 = distinct !{!1249, !434}
!1250 = !{!"gcse.c:VEC_basic_block_base_iterate"}
!1251 = !{!1252, !437, i64 0}
!1252 = !{!"VEC_basic_block_base", !437, i64 0, !437, i64 4, !428, i64 8}
!1253 = !{!"gcse.c:hoist_expr_reaches_here_p"}
!1254 = distinct !{!1254, !434}
!1255 = !{!"gcse.c:VEC_basic_block_heap_free"}
