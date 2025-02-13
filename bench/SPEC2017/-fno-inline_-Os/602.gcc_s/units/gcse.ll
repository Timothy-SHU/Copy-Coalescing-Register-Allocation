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
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.hash_table_d = type { ptr, i32, i32, i32 }
%struct.reg_use = type { ptr }
%struct.real_value = type { i32, [3 x i64] }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
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

@flag_rerun_cse_after_global_opts = dso_local local_unnamed_addr global i32 0, align 4
@can_copy_p.can_copy_init_p = internal unnamed_addr global i1 false, align 1
@can_copy = internal unnamed_addr global [87 x i8] zeroinitializer, align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@test_insn = internal global ptr null, align 8
@word_mode = external local_unnamed_addr global i32, align 4
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@pass_rtl_cprop = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str, ptr @gate_rtl_cprop, ptr @execute_rtl_cprop, ptr null, ptr null, i32 0, i32 130, i32 512, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@.str = private unnamed_addr constant [6 x i8] c"cprop\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@flag_gcse = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"const/copy propagation disabled\00", align 1
@local_const_prop_count = internal unnamed_addr global i32 0, align 4
@global_const_prop_count = internal unnamed_addr global i32 0, align 4
@local_copy_prop_count = internal unnamed_addr global i32 0, align 4
@global_copy_prop_count = internal unnamed_addr global i32 0, align 4
@bytes_used = internal unnamed_addr global i32 0, align 4
@gcse_obstack = internal global %struct.obstack zeroinitializer, align 8
@implicit_sets = internal unnamed_addr global ptr null, align 8
@set_hash_table = internal global %struct.hash_table_d zeroinitializer, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"CPROP of %s, %d basic blocks, %d bytes needed, \00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"%d local const props, %d local copy props, \00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"%d global const props, %d global copy props\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"%s: %d basic blocks and %d edges/basic block\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"%s: %d basic blocks and %d registers\00", align 1
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
@.str.8 = private unnamed_addr constant [39 x i8] c"LOCAL CONST-PROP: Replacing reg %d in \00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"insn %d with constant \00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"LOCAL COPY-PROP: Replacing reg %d in insn %d\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c" with reg %d\0A\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@.str.13 = private unnamed_addr constant [67 x i8] c"GLOBAL CONST-PROP: Replacing reg %d in jump_insn %d with constant \00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Implicit set of reg %d in \00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"basic block %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Found %d implicit sets\0A\00", align 1
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
@.str.19 = private unnamed_addr constant [7 x i8] c"gcse.c\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"%s hash table (%d buckets, %d entries)\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"Index %d (hash value %d)\0A  \00", align 1
@cprop_pavloc = internal unnamed_addr global ptr null, align 8
@cprop_absaltered = internal unnamed_addr global ptr null, align 8
@cprop_avin = internal unnamed_addr global ptr null, align 8
@cprop_avout = internal unnamed_addr global ptr null, align 8
@.str.22 = private unnamed_addr constant [40 x i8] c"GLOBAL CONST-PROP: Replacing reg %d in \00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"GLOBAL COPY-PROP: Replacing reg %d in insn %d\00", align 1
@bypass_last_basic_block = internal unnamed_addr global i32 0, align 4
@.str.24 = private unnamed_addr constant [60 x i8] c"JUMP-BYPASS: Proved reg %d in jump_insn %d equals constant \00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"\0ABypass edge from %d->%d to %d\0A\00", align 1
@pass_rtl_pre = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.26, ptr @gate_rtl_pre, ptr @execute_rtl_pre, ptr null, ptr null, i32 0, i32 131, i32 512, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@.str.26 = private unnamed_addr constant [8 x i8] c"rtl pre\00", align 1
@gcse_subst_count = internal unnamed_addr global i32 0, align 4
@gcse_create_count = internal unnamed_addr global i32 0, align 4
@.str.27 = private unnamed_addr constant [13 x i8] c"PRE disabled\00", align 1
@expr_hash_table = internal global %struct.hash_table_d zeroinitializer, align 8
@flag_gcse_lm = external local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [11 x i8] c"Expression\00", align 1
@edge_list = internal unnamed_addr global ptr null, align 8
@.str.29 = private unnamed_addr constant [51 x i8] c"PRE GCSE of %s, %d basic blocks, %d bytes needed, \00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"%d substs, %d insns created\0A\00", align 1
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@flag_float_store = external local_unnamed_addr global i32, align 4
@.str.31 = private unnamed_addr constant [13 x i8] c"LDST list: \0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"  Pattern (%3d): \00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"\0A\09 Loads : \00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"\0A\09Stores : \00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@transp = internal unnamed_addr global ptr null, align 8
@comp = internal unnamed_addr global ptr null, align 8
@antloc = internal unnamed_addr global ptr null, align 8
@pre_insert_map = internal global ptr null, align 8
@pre_delete_map = internal global ptr null, align 8
@ae_kill = internal unnamed_addr global ptr null, align 8
@.str.37 = private unnamed_addr constant [43 x i8] c"PRE: redundant insn %d (expression %d) in \00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"bb %d, reaching reg is %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"PRE: edge (%d,%d), \00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"copy expression %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"PRE/HOIST: end of bb %d, insn %d, \00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"copying expression %d to reg %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"PRE:  store updated with reaching reg \00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c":\0A\09\00", align 1
@.str.45 = private unnamed_addr constant [62 x i8] c"PRE: bb %d, insn %d, copy expression %d in insn %d to reg %d\0A\00", align 1
@pass_rtl_hoist = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.46, ptr @gate_rtl_hoist, ptr @execute_rtl_hoist, ptr null, ptr null, i32 0, i32 132, i32 512, i32 0, i32 0, i32 0, i32 132107 } }, align 8
@.str.46 = private unnamed_addr constant [6 x i8] c"hoist\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"GCSE disabled\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"Code Hosting Expressions\00", align 1
@.str.49 = private unnamed_addr constant [48 x i8] c"HOIST of %s, %d basic blocks, %d bytes needed, \00", align 1
@hoist_vbein = internal unnamed_addr global ptr null, align 8
@hoist_vbeout = internal unnamed_addr global ptr null, align 8
@hoist_exprs = internal unnamed_addr global ptr null, align 8
@transpout = internal unnamed_addr global ptr null, align 8
@.str.50 = private unnamed_addr constant [42 x i8] c"hoisting vbeinout computation: %d passes\0A\00", align 1
@gt_ggc_r_gt_gcse_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @test_insn, i64 1, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab zeroinitializer], align 16
@switch.table.simple_mem = private unnamed_addr constant [10 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_copy_p(i32 noundef %0) local_unnamed_addr #0 !prof !465 {
  %2 = load i1, ptr @can_copy_p.can_copy_init_p, align 1
  br i1 %2, label %4, label %3, !prof !466

3:                                                ; preds = %1
  tail call fastcc void @compute_can_copy() #22
  store i1 true, ptr @can_copy_p.can_copy_init_p, align 1
  br label %4

4:                                                ; preds = %3, %1
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [87 x i8], ptr @can_copy, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !467
  %8 = icmp ne i8 %7, 0
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_can_copy() unnamed_addr #0 !prof !470 !PGOFuncName !471 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(87) @can_copy, i8 0, i64 87, i1 false)
  tail call void @start_sequence() #23
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %8, %1 ]
  %3 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !467
  %5 = icmp ne i8 %4, 1
  %6 = zext i1 %5 to i8
  %7 = getelementptr inbounds [87 x i8], ptr @can_copy, i64 0, i64 %2
  store i8 %6, ptr %7, align 1
  %8 = add nuw nsw i64 %2, 1
  %9 = icmp eq i64 %8, 87
  br i1 %9, label %10, label %1, !prof !472, !llvm.loop !473

10:                                               ; preds = %1
  tail call void @end_sequence() #23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #3

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @can_assign_to_reg_without_clobbers_p(ptr noundef %0) local_unnamed_addr #0 !prof !475 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  store i32 0, ptr %2, align 4, !tbaa !476
  %3 = load i32, ptr %0, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = tail call i32 @general_operand(ptr noundef nonnull %0, i32 noundef %5) #23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %55, !prof !478

8:                                                ; preds = %1
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 16711680
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %55, label %12, !prof !479

12:                                               ; preds = %8
  %13 = load ptr, ptr @test_insn, align 8, !tbaa !480
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %24, !prof !482

15:                                               ; preds = %12
  %16 = load i32, ptr @word_mode, align 4, !tbaa !476
  %17 = tail call ptr @gen_rtx_REG(i32 noundef %16, i32 noundef 106) #23
  %18 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !480
  %19 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %17, ptr noundef %18) #23
  %20 = tail call ptr @make_insn_raw(ptr noundef %19) #23
  store ptr %20, ptr @test_insn, align 8, !tbaa !480
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %22 = load i32, ptr %0, align 8
  %23 = and i32 %22, 16711680
  br label %24

24:                                               ; preds = %15, %12
  %25 = phi i32 [ %23, %15 ], [ %10, %12 ]
  %26 = phi ptr [ %20, %15 ], [ %13, %12 ]
  %27 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !467
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !467
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, -16711681
  %33 = or disjoint i32 %32, %25
  store i32 %33, ptr %30, align 8
  %34 = load ptr, ptr @test_insn, align 8, !tbaa !480
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !467
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %0, ptr %37, align 8, !tbaa !467
  %38 = load ptr, ptr %35, align 8, !tbaa !467
  %39 = call i32 @recog(ptr noundef %38, ptr noundef %34, ptr noundef nonnull %2) #23
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %55, label %41, !prof !483

41:                                               ; preds = %24
  %42 = load i32, ptr %2, align 4, !tbaa !476
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %47, !prof !484

44:                                               ; preds = %41
  %45 = call i32 @added_clobbers_hard_reg_p(i32 noundef %39) #23
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55, !prof !485

47:                                               ; preds = %44, %41
  %48 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 37), align 8, !tbaa !486
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50, !prof !499

50:                                               ; preds = %47
  %51 = load ptr, ptr @test_insn, align 8, !tbaa !480
  %52 = call zeroext i8 %48(ptr noundef %51) #23
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %50, %44, %24, %8, %1, %54
  %56 = phi i8 [ 1, %54 ], [ 1, %1 ], [ 0, %8 ], [ 0, %24 ], [ 0, %44 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret i8 %56
}

; Function Attrs: optsize
declare i32 @general_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @make_insn_raw(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @added_clobbers_hard_reg_p(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fis_get_condition(ptr noundef %0) local_unnamed_addr #0 !prof !500 {
  %2 = tail call ptr @get_condition(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 1) #23
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @get_condition(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_rtl_cprop() #0 !prof !501 !PGOFuncName !502 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !476
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_gcse, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %16, !prof !503

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !480
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16, !prof !504

12:                                               ; preds = %6
  %13 = tail call zeroext i8 @dbg_cnt(i32 noundef 4) #23
  %14 = icmp ne i8 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %12, %6, %0
  %17 = phi i8 [ 0, %6 ], [ 0, %0 ], [ %15, %12 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_rtl_cprop() #0 !prof !505 !PGOFuncName !506 {
  %1 = tail call zeroext i8 @delete_unreachable_blocks() #23
  %2 = tail call i32 @df_set_flags(i32 noundef 1) #23
  tail call void @df_analyze() #23
  %3 = tail call fastcc i32 @one_cprop_pass() #22, !range !507
  %4 = load i32, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !476
  %5 = or i32 %4, %3
  store i32 %5, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !476
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @delete_unreachable_blocks() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @one_cprop_pass() unnamed_addr #0 !prof !505 !PGOFuncName !508 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !480
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !509
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !511
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %130, label %7, !prof !513

7:                                                ; preds = %0
  %8 = tail call fastcc zeroext i8 @is_too_expensive(ptr noundef nonnull @.str.1) #22, !range !514
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %130, !prof !515

10:                                               ; preds = %7
  store i32 0, ptr @local_const_prop_count, align 4, !tbaa !476
  store i32 0, ptr @global_const_prop_count, align 4, !tbaa !476
  store i32 0, ptr @local_copy_prop_count, align 4, !tbaa !476
  store i32 0, ptr @global_copy_prop_count, align 4, !tbaa !476
  store i32 0, ptr @bytes_used, align 4, !tbaa !476
  %11 = tail call i32 @_obstack_begin(ptr noundef nonnull @gcse_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #23
  tail call fastcc void @alloc_gcse_mem() #22
  %12 = tail call fastcc i32 @local_cprop_pass() #22, !range !507
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !516

14:                                               ; preds = %10
  %15 = tail call zeroext i8 @delete_unreachable_blocks() #23
  tail call void @df_analyze() #23
  br label %16

16:                                               ; preds = %14, %10
  %17 = load ptr, ptr @cfun, align 8, !tbaa !480
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !509
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !517
  %22 = sext i32 %21 to i64
  %23 = tail call ptr @xcalloc(i64 noundef %22, i64 noundef 8) #23
  store ptr %23, ptr @implicit_sets, align 8, !tbaa !480
  tail call fastcc void @find_implicit_sets() #22
  tail call fastcc void @alloc_hash_table(ptr noundef nonnull @set_hash_table, i32 noundef 1) #22
  tail call fastcc void @compute_hash_table(ptr noundef nonnull @set_hash_table) #22
  %24 = load ptr, ptr @implicit_sets, align 8, !tbaa !480
  tail call void @free(ptr noundef %24) #22
  store ptr null, ptr @implicit_sets, align 8, !tbaa !480
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !515

27:                                               ; preds = %16
  tail call fastcc void @dump_hash_table(ptr noundef nonnull %25, ptr noundef nonnull @.str.2, ptr noundef nonnull @set_hash_table) #22
  br label %28

28:                                               ; preds = %27, %16
  %29 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @set_hash_table, i64 0, i32 2), align 4, !tbaa !518
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %95, label %31, !prof !520

31:                                               ; preds = %28
  %32 = load ptr, ptr @cfun, align 8, !tbaa !480
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !509
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !517
  tail call fastcc void @alloc_cprop_mem(i32 noundef %36, i32 noundef %29) #22
  tail call fastcc void @compute_cprop_data() #22
  %37 = load ptr, ptr @cfun, align 8, !tbaa !480
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !509
  %40 = load ptr, ptr %39, align 8, !tbaa !521
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !522
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !522
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !524
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %91, label %48, !prof !525

48:                                               ; preds = %31, %81
  %49 = phi ptr [ %84, %81 ], [ %44, %31 ]
  %50 = phi i32 [ %82, %81 ], [ 0, %31 ]
  tail call fastcc void @reset_opr_set_tables() #22
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !467
  %53 = load ptr, ptr %52, align 8, !tbaa !467
  %54 = icmp eq ptr %53, null
  br i1 %54, label %81, label %55, !prof !525

55:                                               ; preds = %48, %76
  %56 = phi ptr [ %79, %76 ], [ %53, %48 ]
  %57 = phi i32 [ %77, %76 ], [ %50, %48 ]
  %58 = load ptr, ptr %51, align 8, !tbaa !467
  %59 = getelementptr inbounds %struct.rtl_bb_info, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !526
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !467
  %63 = icmp eq ptr %56, %62
  br i1 %63, label %81, label %64, !prof !528

64:                                               ; preds = %55
  %65 = load i32, ptr %56, align 8
  %66 = and i32 %65, 65535
  %67 = add nsw i32 %66, -7
  %68 = icmp ult i32 %67, 4
  br i1 %68, label %69, label %76, !prof !529

69:                                               ; preds = %64
  %70 = tail call fastcc i32 @cprop_insn(ptr noundef nonnull %56) #22
  %71 = or i32 %70, %57
  %72 = load i32, ptr %56, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 13
  br i1 %74, label %76, label %75, !prof !530

75:                                               ; preds = %69
  tail call fastcc void @mark_oprs_set(ptr noundef nonnull %56) #22
  br label %76

76:                                               ; preds = %64, %75, %69
  %77 = phi i32 [ %71, %69 ], [ %71, %75 ], [ %57, %64 ]
  %78 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 2
  %79 = load ptr, ptr %78, align 8, !tbaa !467
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %55, !prof !531, !llvm.loop !532

81:                                               ; preds = %76, %55, %48
  %82 = phi i32 [ %50, %48 ], [ %57, %55 ], [ %77, %76 ]
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 6
  %84 = load ptr, ptr %83, align 8, !tbaa !522
  %85 = load ptr, ptr @cfun, align 8, !tbaa !480
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !509
  %88 = getelementptr inbounds %struct.control_flow_graph, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !524
  %90 = icmp eq ptr %84, %89
  br i1 %90, label %91, label %48, !prof !533, !llvm.loop !534

91:                                               ; preds = %81, %31
  %92 = phi i32 [ 0, %31 ], [ %82, %81 ]
  %93 = tail call fastcc i32 @bypass_conditional_jumps() #22, !range !507
  %94 = or i32 %93, %92
  tail call fastcc void @free_cprop_mem() #22
  br label %95

95:                                               ; preds = %91, %28
  %96 = phi i32 [ %94, %91 ], [ 0, %28 ]
  tail call fastcc void @free_hash_table(ptr noundef nonnull @set_hash_table) #22
  tail call fastcc void @free_gcse_mem() #22
  %97 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 1), align 8, !tbaa !535
  %98 = ptrtoint ptr %97 to i64
  %99 = sub i64 0, %98
  store i64 %99, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !537
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %108, !prof !538

101:                                              ; preds = %95
  %102 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !539
  %103 = ptrtoint ptr %102 to i64
  %104 = sub i64 %103, %98
  %105 = icmp sgt i64 %104, %99
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = getelementptr inbounds i8, ptr %97, i64 %99
  store ptr %107, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !540
  store ptr %107, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !541
  br label %110

108:                                              ; preds = %101, %95
  %109 = getelementptr inbounds i8, ptr %97, i64 %99
  tail call void @obstack_free(ptr noundef nonnull @gcse_obstack, ptr noundef %109) #23
  br label %110

110:                                              ; preds = %108, %106
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %112 = icmp eq ptr %111, null
  br i1 %112, label %130, label %113, !prof !515

113:                                              ; preds = %110
  %114 = tail call ptr @current_function_name() #23
  %115 = load ptr, ptr @cfun, align 8, !tbaa !480
  %116 = getelementptr inbounds %struct.function, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !509
  %118 = getelementptr inbounds %struct.control_flow_graph, ptr %117, i64 0, i32 3
  %119 = load i32, ptr %118, align 8, !tbaa !511
  %120 = load i32, ptr @bytes_used, align 4, !tbaa !476
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %111, ptr noundef nonnull @.str.3, ptr noundef %114, i32 noundef %119, i32 noundef %120) #22
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %123 = load i32, ptr @local_const_prop_count, align 4, !tbaa !476
  %124 = load i32, ptr @local_copy_prop_count, align 4, !tbaa !476
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef nonnull @.str.4, i32 noundef %123, i32 noundef %124) #22
  %126 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %127 = load i32, ptr @global_const_prop_count, align 4, !tbaa !476
  %128 = load i32, ptr @global_copy_prop_count, align 4, !tbaa !476
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str.5, i32 noundef %127, i32 noundef %128) #22
  br label %130

130:                                              ; preds = %110, %113, %0, %7
  %131 = phi i32 [ 0, %7 ], [ 0, %0 ], [ %96, %113 ], [ %96, %110 ]
  ret i32 %131
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @is_too_expensive(ptr noundef %0) unnamed_addr #0 !prof !542 !PGOFuncName !543 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !480
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !509
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !544
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !511
  %9 = shl nsw i32 %8, 2
  %10 = add nsw i32 %9, 20000
  %11 = icmp sgt i32 %6, %10
  br i1 %11, label %12, label %15, !prof !545

12:                                               ; preds = %1
  %13 = sdiv i32 %6, %8
  %14 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 69, ptr noundef nonnull @.str.6, ptr noundef %0, i32 noundef %8, i32 noundef %13) #23
  br label %35

15:                                               ; preds = %1
  %16 = tail call i32 @max_reg_num() #23
  %17 = add i32 %16, 63
  %18 = lshr i32 %17, 6
  %19 = mul i32 %18, %8
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 3
  %22 = load ptr, ptr @compiler_params, align 8, !tbaa !480
  %23 = getelementptr inbounds %struct.param_info, ptr %22, i64 23, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !546
  %25 = sext i32 %24 to i64
  %26 = icmp ugt i64 %21, %25
  br i1 %26, label %27, label %35, !prof !545

27:                                               ; preds = %15
  %28 = load ptr, ptr @cfun, align 8, !tbaa !480
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !509
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !511
  %33 = tail call i32 @max_reg_num() #23
  %34 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 69, ptr noundef nonnull @.str.7, ptr noundef %0, i32 noundef %32, i32 noundef %33) #23
  br label %35

35:                                               ; preds = %15, %27, %12
  %36 = phi i8 [ 1, %12 ], [ 1, %27 ], [ 0, %15 ]
  ret i8 %36
}

; Function Attrs: optsize
declare i32 @_obstack_begin(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_gcse_mem() unnamed_addr #0 !prof !542 !PGOFuncName !548 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %1, ptr @reg_set_bitmap, align 8, !tbaa !480
  %2 = load ptr, ptr @cfun, align 8, !tbaa !480
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !509
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !517
  %7 = sext i32 %6 to i64
  %8 = tail call fastcc ptr @gcalloc(i64 noundef %7) #22
  store ptr %8, ptr @modify_mem_list, align 8, !tbaa !480
  %9 = load ptr, ptr @cfun, align 8, !tbaa !480
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !509
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !517
  %14 = sext i32 %13 to i64
  %15 = tail call fastcc ptr @gcalloc(i64 noundef %14) #22
  store ptr %15, ptr @canon_modify_mem_list, align 8, !tbaa !480
  %16 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %16, ptr @modify_mem_list_set, align 8, !tbaa !480
  %17 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  store ptr %17, ptr @blocks_with_calls, align 8, !tbaa !480
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @local_cprop_pass() unnamed_addr #0 !prof !549 !PGOFuncName !550 {
  tail call void @cselib_init(i32 noundef 0) #23
  %1 = load ptr, ptr @cfun, align 8, !tbaa !480
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !509
  %4 = load ptr, ptr %3, align 8, !tbaa !521
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !522
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !524
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %77, label %10, !prof !551

10:                                               ; preds = %0, %65
  %11 = phi ptr [ %68, %65 ], [ %6, %0 ]
  %12 = phi i8 [ %66, %65 ], [ 0, %0 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !467
  %15 = load ptr, ptr %14, align 8, !tbaa !467
  %16 = icmp eq ptr %15, null
  br i1 %16, label %65, label %17, !prof !551

17:                                               ; preds = %10, %60
  %18 = phi ptr [ %63, %60 ], [ %15, %10 ]
  %19 = phi i8 [ %61, %60 ], [ %12, %10 ]
  %20 = load ptr, ptr %13, align 8, !tbaa !467
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !526
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !467
  %25 = icmp eq ptr %18, %24
  br i1 %25, label %65, label %26, !prof !552

26:                                               ; preds = %17
  %27 = load i32, ptr %18, align 8
  %28 = and i32 %27, 65535
  %29 = add nsw i32 %28, -7
  %30 = icmp ult i32 %29, 4
  br i1 %30, label %31, label %60, !prof !553

31:                                               ; preds = %26
  %32 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %18) #23
  %33 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 1
  %34 = icmp eq ptr %32, null
  br label %35

35:                                               ; preds = %52, %31
  %36 = phi i8 [ %19, %31 ], [ %54, %52 ]
  store i32 0, ptr @reg_use_count, align 4, !tbaa !476
  tail call void @note_uses(ptr noundef nonnull %33, ptr noundef nonnull @local_cprop_find_used_regs, ptr noundef null) #23
  br i1 %34, label %39, label %37, !prof !554

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  tail call void @local_cprop_find_used_regs(ptr noundef nonnull %38, ptr noundef null) #22
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, ptr @reg_use_count, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %52, !prof !555

42:                                               ; preds = %39, %48
  %43 = phi ptr [ %49, %48 ], [ @reg_use_table, %39 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !556
  %45 = tail call fastcc zeroext i8 @do_local_cprop(ptr noundef %44, ptr noundef nonnull %18) #22
  %46 = icmp eq i8 %45, 0
  %47 = load i32, ptr @reg_use_count, align 4
  br i1 %46, label %48, label %52, !prof !558

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.reg_use, ptr %43, i64 1
  %50 = add nsw i32 %47, -1
  store i32 %50, ptr @reg_use_count, align 4, !tbaa !476
  %51 = icmp sgt i32 %47, 1
  br i1 %51, label %42, label %52, !prof !559, !llvm.loop !560

52:                                               ; preds = %48, %42, %39
  %53 = phi i32 [ %40, %39 ], [ %47, %42 ], [ %50, %48 ]
  %54 = phi i8 [ %36, %39 ], [ 1, %42 ], [ %36, %48 ]
  %55 = load i32, ptr %18, align 8
  %56 = and i32 %55, 134217728
  %57 = icmp eq i32 %56, 0
  %58 = icmp ne i32 %53, 0
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %35, label %60, !prof !561, !llvm.loop !562

60:                                               ; preds = %52, %26
  %61 = phi i8 [ %19, %26 ], [ %54, %52 ]
  tail call void @cselib_process_insn(ptr noundef nonnull %18) #23
  %62 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !467
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %17, !prof !563, !llvm.loop !564

65:                                               ; preds = %17, %60, %10
  %66 = phi i8 [ %12, %10 ], [ %61, %60 ], [ %19, %17 ]
  tail call void @cselib_clear_table() #23
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !522
  %69 = load ptr, ptr @cfun, align 8, !tbaa !480
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !509
  %72 = getelementptr inbounds %struct.control_flow_graph, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !524
  %74 = icmp eq ptr %68, %73
  br i1 %74, label %75, label %10, !prof !565, !llvm.loop !566

75:                                               ; preds = %65
  %76 = zext nneg i8 %66 to i32
  br label %77

77:                                               ; preds = %75, %0
  %78 = phi i32 [ 0, %0 ], [ %76, %75 ]
  tail call void @cselib_finish() #23
  ret i32 %78
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_implicit_sets() unnamed_addr #0 !prof !549 !PGOFuncName !567 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !480
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !509
  %4 = load ptr, ptr %3, align 8, !tbaa !521
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !522
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !524
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %100, label %10, !prof !551

10:                                               ; preds = %0, %90
  %11 = phi ptr [ %93, %90 ], [ %6, %0 ]
  %12 = phi i32 [ %91, %90 ], [ 0, %0 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !568
  %15 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %14) #22
  %16 = icmp ugt i32 %15, 1
  br i1 %16, label %17, label %90, !prof !569

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !467
  %20 = getelementptr inbounds %struct.rtl_bb_info, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !526
  %22 = tail call ptr @fis_get_condition(ptr noundef %21) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %90, label %24, !prof !570

24:                                               ; preds = %17
  %25 = load i32, ptr %22, align 8
  %26 = and i32 %25, 65534
  %27 = icmp eq i32 %26, 80
  br i1 %27, label %28, label %90, !prof !571

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !467
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %90, !prof !572

34:                                               ; preds = %28
  %35 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %30) #22
  %36 = icmp ugt i32 %35, 52
  br i1 %36, label %37, label %90, !prof !573

37:                                               ; preds = %34
  %38 = tail call fastcc zeroext i8 @implicit_set_cond_p(ptr noundef nonnull %22) #22, !range !514
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %90, label %40, !prof !574

40:                                               ; preds = %37
  %41 = load i32, ptr %22, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 81
  %44 = load ptr, ptr %13, align 8, !tbaa !568
  %45 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %44, i32 noundef 0) #22
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !575
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %43, label %50, label %51, !prof !577

50:                                               ; preds = %40
  br i1 %49, label %54, label %52, !prof !578

51:                                               ; preds = %40
  br i1 %49, label %52, label %54, !prof !579

52:                                               ; preds = %51, %50
  %53 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %44, i32 noundef 1) #22
  br label %54

54:                                               ; preds = %52, %51, %50
  %55 = phi ptr [ %45, %50 ], [ %45, %51 ], [ %53, %52 ]
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !580
  %58 = icmp eq ptr %57, null
  br i1 %58, label %90, label %59, !prof !581

59:                                               ; preds = %54
  %60 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %57) #22, !range !514
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %90, label %62, !prof !582

62:                                               ; preds = %59
  %63 = load ptr, ptr @cfun, align 8, !tbaa !480
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !509
  %66 = getelementptr inbounds %struct.control_flow_graph, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !524
  %68 = icmp eq ptr %57, %67
  br i1 %68, label %90, label %69, !prof !583

69:                                               ; preds = %62
  %70 = load ptr, ptr %29, align 8, !tbaa !467
  %71 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !467
  %73 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %70, ptr noundef %72) #23
  %74 = load ptr, ptr @implicit_sets, align 8, !tbaa !480
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !584
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %74, i64 %77
  store ptr %73, ptr %78, align 8, !tbaa !480
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %80 = icmp eq ptr %79, null
  br i1 %80, label %88, label %81, !prof !585

81:                                               ; preds = %69
  %82 = load ptr, ptr %29, align 8, !tbaa !467
  %83 = tail call fastcc i32 @rhs_regno(ptr noundef %82) #22
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %79, ptr noundef nonnull @.str.16, i32 noundef %83) #22
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %86 = load i32, ptr %75, align 8, !tbaa !584
  %87 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.17, i32 noundef %86) #22
  br label %88

88:                                               ; preds = %81, %69
  %89 = add i32 %12, 1
  br label %90

90:                                               ; preds = %24, %10, %54, %59, %62, %88, %37, %34, %28, %17
  %91 = phi i32 [ %89, %88 ], [ %12, %62 ], [ %12, %59 ], [ %12, %54 ], [ %12, %37 ], [ %12, %34 ], [ %12, %28 ], [ %12, %17 ], [ %12, %10 ], [ %12, %24 ]
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !522
  %94 = load ptr, ptr @cfun, align 8, !tbaa !480
  %95 = getelementptr inbounds %struct.function, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !509
  %97 = getelementptr inbounds %struct.control_flow_graph, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !524
  %99 = icmp eq ptr %93, %98
  br i1 %99, label %100, label %10, !prof !565, !llvm.loop !586

100:                                              ; preds = %90, %0
  %101 = phi i32 [ 0, %0 ], [ %91, %90 ]
  %102 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104, !prof !515

104:                                              ; preds = %100
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %102, ptr noundef nonnull @.str.18, i32 noundef %101) #22
  br label %106

106:                                              ; preds = %104, %100
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_hash_table(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #0 !prof !542 !PGOFuncName !587 {
  %3 = tail call i32 @get_max_insn_count() #23
  %4 = sdiv i32 %3, 4
  %5 = tail call i32 @llvm.umax.i32(i32 %4, i32 11)
  %6 = getelementptr inbounds %struct.hash_table_d, ptr %0, i64 0, i32 1
  %7 = or i32 %5, 1
  store i32 %7, ptr %6, align 8, !tbaa !588
  %8 = shl i32 %7, 3
  %9 = sext i32 %8 to i64
  %10 = tail call fastcc ptr @gmalloc(i64 noundef %9) #22
  store ptr %10, ptr %0, align 8, !tbaa !589
  %11 = getelementptr inbounds %struct.hash_table_d, ptr %0, i64 0, i32 3
  store i32 %1, ptr %11, align 8, !tbaa !590
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_hash_table(ptr nocapture noundef %0) unnamed_addr #0 !prof !542 !PGOFuncName !591 {
  %2 = getelementptr inbounds %struct.hash_table_d, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 4, !tbaa !518
  %3 = load ptr, ptr %0, align 8, !tbaa !589
  %4 = getelementptr inbounds %struct.hash_table_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !588
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %7, i1 false)
  tail call fastcc void @compute_hash_table_work(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_hash_table(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !592 !PGOFuncName !593 {
  %4 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !518
  %6 = zext i32 %5 to i64
  %7 = tail call ptr @xcalloc(i64 noundef %6, i64 noundef 8) #23
  %8 = load i32, ptr %4, align 4, !tbaa !518
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 2
  %11 = tail call ptr @xmalloc(i64 noundef %10) #23
  %12 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !588
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %3, %36
  %16 = phi i32 [ %37, %36 ], [ %13, %3 ]
  %17 = phi i64 [ %38, %36 ], [ 0, %3 ]
  %18 = load ptr, ptr %2, align 8, !tbaa !589
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !480
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %15
  %23 = trunc i64 %17 to i32
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi ptr [ %32, %24 ], [ %20, %22 ]
  %26 = getelementptr inbounds %struct.expr, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !594
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %7, i64 %28
  store ptr %25, ptr %29, align 8, !tbaa !480
  %30 = getelementptr inbounds i32, ptr %11, i64 %28
  store i32 %23, ptr %30, align 4, !tbaa !476
  %31 = getelementptr inbounds %struct.expr, ptr %25, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !480
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %24, !llvm.loop !596

34:                                               ; preds = %24
  %35 = load i32, ptr %12, align 8, !tbaa !588
  br label %36

36:                                               ; preds = %34, %15
  %37 = phi i32 [ %35, %34 ], [ %16, %15 ]
  %38 = add nuw nsw i64 %17, 1
  %39 = sext i32 %37 to i64
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %15, label %41, !llvm.loop !597

41:                                               ; preds = %36, %3
  %42 = phi i32 [ %13, %3 ], [ %37, %36 ]
  %43 = load i32, ptr %4, align 4, !tbaa !518
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %1, i32 noundef %42, i32 noundef %43) #22
  %45 = load i32, ptr %4, align 4, !tbaa !518
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %41, %62
  %48 = phi i32 [ %63, %62 ], [ %45, %41 ]
  %49 = phi i64 [ %64, %62 ], [ 0, %41 ]
  %50 = getelementptr inbounds ptr, ptr %7, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !480
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.expr, ptr %51, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !594
  %56 = getelementptr inbounds i32, ptr %11, i64 %49
  %57 = load i32, ptr %56, align 4, !tbaa !476
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %55, i32 noundef %57) #22
  %59 = load ptr, ptr %51, align 8, !tbaa !598
  tail call void @print_rtl(ptr noundef %0, ptr noundef %59) #23
  %60 = tail call i32 @fputc(i32 10, ptr %0)
  %61 = load i32, ptr %4, align 4, !tbaa !518
  br label %62

62:                                               ; preds = %47, %53
  %63 = phi i32 [ %48, %47 ], [ %61, %53 ]
  %64 = add nuw nsw i64 %49, 1
  %65 = sext i32 %63 to i64
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %47, label %67, !llvm.loop !599

67:                                               ; preds = %62, %41
  %68 = tail call i32 @fputc(i32 10, ptr %0)
  tail call void @free(ptr noundef %7) #22
  tail call void @free(ptr noundef %11) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_cprop_mem(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !600 !PGOFuncName !601 {
  %3 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #23
  store ptr %3, ptr @cprop_pavloc, align 8, !tbaa !480
  %4 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #23
  store ptr %4, ptr @cprop_absaltered, align 8, !tbaa !480
  %5 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #23
  store ptr %5, ptr @cprop_avin, align 8, !tbaa !480
  %6 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #23
  store ptr %6, ptr @cprop_avout, align 8, !tbaa !480
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_cprop_data() unnamed_addr #0 !prof !600 !PGOFuncName !602 {
  %1 = load ptr, ptr @cprop_absaltered, align 8, !tbaa !480
  %2 = load ptr, ptr @cprop_pavloc, align 8, !tbaa !480
  tail call fastcc void @compute_local_properties(ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull @set_hash_table) #22
  %3 = load ptr, ptr @cprop_pavloc, align 8, !tbaa !480
  %4 = load ptr, ptr @cprop_absaltered, align 8, !tbaa !480
  %5 = load ptr, ptr @cprop_avout, align 8, !tbaa !480
  %6 = load ptr, ptr @cprop_avin, align 8, !tbaa !480
  tail call void @compute_available(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reset_opr_set_tables() unnamed_addr #0 !prof !603 !PGOFuncName !604 {
  %1 = load ptr, ptr @reg_set_bitmap, align 8, !tbaa !480
  tail call void @bitmap_clear(ptr noundef %1) #23
  tail call fastcc void @clear_modify_mem_tables() #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @cprop_insn(ptr noundef %0) unnamed_addr #0 !prof !605 !PGOFuncName !606 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = add nsw i32 %3, -7
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %95, !prof !607

6:                                                ; preds = %1
  store i32 0, ptr @reg_use_count, align 4, !tbaa !476
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  tail call void @note_uses(ptr noundef nonnull %8, ptr noundef nonnull @find_used_regs, ptr noundef null) #23
  %9 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %0) #23
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !608

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  tail call void @find_used_regs(ptr noundef nonnull %12, ptr noundef null) #22
  br label %13

13:                                               ; preds = %11, %6
  %14 = load i32, ptr @reg_use_count, align 4, !tbaa !476
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %95, !prof !609

16:                                               ; preds = %13, %82
  %17 = phi ptr [ %84, %82 ], [ @reg_use_table, %13 ]
  %18 = phi i32 [ %83, %82 ], [ 0, %13 ]
  %19 = load ptr, ptr %17, align 8, !tbaa !556
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef %19) #22
  %21 = tail call fastcc i32 @oprs_not_set_p(ptr noundef %19, ptr noundef nonnull %0) #22, !range !507
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %82, label %23, !prof !610

23:                                               ; preds = %16
  %24 = tail call fastcc ptr @find_avail_set(i32 noundef %20, ptr noundef nonnull %0) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %82, label %26, !prof !611

26:                                               ; preds = %23
  %27 = load ptr, ptr %24, align 8, !tbaa !598
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 23
  br i1 %30, label %32, label %31, !prof !612

31:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 2554, ptr noundef nonnull @.str.15) #23
  br label %32

32:                                               ; preds = %26, %31
  %33 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !467
  %35 = tail call fastcc zeroext i8 @gcse_constant_p(ptr noundef %34) #22, !range !514
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %58, label %37, !prof !613

37:                                               ; preds = %32
  %38 = load ptr, ptr %17, align 8, !tbaa !556
  %39 = tail call fastcc zeroext i8 @constprop_register(ptr noundef nonnull %0, ptr noundef %38, ptr noundef %34) #22, !range !514
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %82, label %41, !prof !614

41:                                               ; preds = %37
  %42 = load i32, ptr @global_const_prop_count, align 4, !tbaa !476
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @global_const_prop_count, align 4, !tbaa !476
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46, !prof !615

46:                                               ; preds = %41
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.22, i32 noundef %20) #22
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %49 = load i32, ptr %7, align 8, !tbaa !467
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.9, i32 noundef %49) #22
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !480
  tail call void @print_rtl(ptr noundef %51, ptr noundef %34) #23
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %53 = tail call i32 @fputc(i32 10, ptr %52)
  br label %54

54:                                               ; preds = %46, %41
  %55 = load i32, ptr %0, align 8
  %56 = and i32 %55, 134217728
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %82, label %95, !prof !615

58:                                               ; preds = %32
  %59 = load i32, ptr %34, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 37
  br i1 %61, label %62, label %82, !prof !616

62:                                               ; preds = %58
  %63 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %34) #22
  %64 = icmp ult i32 %63, 53
  %65 = icmp eq i32 %63, %20
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %82, label %67, !prof !617

67:                                               ; preds = %62
  %68 = load ptr, ptr %17, align 8, !tbaa !556
  %69 = tail call fastcc i32 @try_replace_reg(ptr noundef %68, ptr noundef nonnull %34, ptr noundef nonnull %0) #22, !range !507
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %82, label %71, !prof !618

71:                                               ; preds = %67
  %72 = load i32, ptr @global_copy_prop_count, align 4, !tbaa !476
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr @global_copy_prop_count, align 4, !tbaa !476
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76, !prof !619

76:                                               ; preds = %71
  %77 = load i32, ptr %7, align 8, !tbaa !467
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %74, ptr noundef nonnull @.str.23, i32 noundef %20, i32 noundef %77) #22
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %80 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %34) #22
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.12, i32 noundef %80) #22
  br label %82

82:                                               ; preds = %54, %16, %23, %58, %62, %71, %76, %67, %37
  %83 = phi i32 [ %18, %58 ], [ %18, %62 ], [ %18, %67 ], [ 1, %71 ], [ 1, %76 ], [ %18, %37 ], [ %18, %23 ], [ %18, %16 ], [ 1, %54 ]
  %84 = getelementptr inbounds %struct.reg_use, ptr %17, i64 1
  %85 = load i32, ptr @reg_use_count, align 4, !tbaa !476
  %86 = add nsw i32 %85, -1
  store i32 %86, ptr @reg_use_count, align 4, !tbaa !476
  %87 = icmp sgt i32 %85, 1
  br i1 %87, label %16, label %88, !prof !620, !llvm.loop !621

88:                                               ; preds = %82
  %89 = icmp eq i32 %83, 0
  br i1 %89, label %95, label %90, !prof !622

90:                                               ; preds = %88
  %91 = load i32, ptr %0, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 7
  %94 = select i1 %93, i32 0, i32 %83, !prof !623
  br label %95

95:                                               ; preds = %54, %90, %13, %88, %1
  %96 = phi i32 [ 0, %1 ], [ 0, %88 ], [ 0, %13 ], [ %94, %90 ], [ 1, %54 ]
  ret i32 %96
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_oprs_set(ptr noundef %0) unnamed_addr #0 !prof !605 !PGOFuncName !624 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !467
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %30 [
    i16 23, label %11
    i16 15, label %6
    i16 25, label %28
    i16 26, label %29
  ], !prof !625

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !467
  %9 = load i32, ptr %8, align 8, !tbaa !626
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %12, label %30, !prof !628

11:                                               ; preds = %1
  tail call fastcc void @mark_set(ptr noundef nonnull %3, ptr noundef nonnull %0) #22
  br label %30

12:                                               ; preds = %6, %22
  %13 = phi i64 [ %23, %22 ], [ 0, %6 ]
  %14 = phi ptr [ %24, %22 ], [ %8, %6 ]
  %15 = getelementptr inbounds %struct.rtvec_def, ptr %14, i64 0, i32 1, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !480
  %17 = load i32, ptr %16, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %22 [
    i16 23, label %19
    i16 25, label %20
    i16 26, label %21
  ], !prof !629

19:                                               ; preds = %12
  tail call fastcc void @mark_set(ptr noundef nonnull %16, ptr noundef %0) #22
  br label %22

20:                                               ; preds = %12
  tail call fastcc void @mark_clobber(ptr noundef nonnull %16, ptr noundef %0) #22
  br label %22

21:                                               ; preds = %12
  tail call fastcc void @mark_call(ptr noundef %0) #22
  br label %22

22:                                               ; preds = %12, %20, %21, %19
  %23 = add nuw nsw i64 %13, 1
  %24 = load ptr, ptr %7, align 8, !tbaa !467
  %25 = load i32, ptr %24, align 8, !tbaa !626
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %12, label %30, !prof !630, !llvm.loop !631

28:                                               ; preds = %1
  tail call fastcc void @mark_clobber(ptr noundef nonnull %3, ptr noundef nonnull %0) #22
  br label %30

29:                                               ; preds = %1
  tail call fastcc void @mark_call(ptr noundef nonnull %0) #22
  br label %30

30:                                               ; preds = %22, %6, %1, %29, %28, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bypass_conditional_jumps() unnamed_addr #0 !prof !600 !PGOFuncName !632 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !480
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !509
  %4 = load ptr, ptr %3, align 8, !tbaa !521
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !522
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !524
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %91, label %10, !prof !633

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !517
  store i32 %12, ptr @bypass_last_basic_block, align 4, !tbaa !476
  %13 = tail call zeroext i8 @mark_dfs_back_edges() #23
  %14 = load ptr, ptr @cfun, align 8, !tbaa !480
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !509
  %17 = load ptr, ptr %16, align 8, !tbaa !521
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !522
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !522
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !524
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %91, label %25, !prof !525

25:                                               ; preds = %10, %78
  %26 = phi ptr [ %81, %78 ], [ %21, %10 ]
  %27 = phi i32 [ %79, %78 ], [ 0, %10 ]
  %28 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %26) #22, !range !514
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %78, !prof !634

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !467
  %33 = load ptr, ptr %32, align 8, !tbaa !467
  %34 = icmp eq ptr %33, null
  br i1 %34, label %78, label %35, !prof !635

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.rtl_bb_info, ptr %32, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !526
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !467
  br label %40

40:                                               ; preds = %35, %73
  %41 = phi ptr [ %33, %35 ], [ %76, %73 ]
  %42 = phi ptr [ null, %35 ], [ %74, %73 ]
  %43 = icmp eq ptr %41, %39
  br i1 %43, label %78, label %44, !prof !636

44:                                               ; preds = %40
  %45 = load i32, ptr %41, align 8
  %46 = trunc i32 %45 to i16
  switch i16 %46, label %73 [
    i16 10, label %78
    i16 8, label %47
    i16 9, label %61
  ], !prof !637

47:                                               ; preds = %44
  %48 = icmp eq ptr %42, null
  br i1 %48, label %49, label %78, !prof !638

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !467
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 23
  br i1 %54, label %55, label %78, !prof !639

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !467
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 37
  br i1 %60, label %73, label %78, !prof !640

61:                                               ; preds = %44
  %62 = tail call i32 @any_condjump_p(ptr noundef nonnull %41) #23
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67, !prof !641

64:                                               ; preds = %61
  %65 = tail call i32 @computed_jump_p(ptr noundef nonnull %41) #23
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %78, label %67, !prof !642

67:                                               ; preds = %64, %61
  %68 = tail call i32 @onlyjump_p(ptr noundef nonnull %41) #23
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70, !prof !643

70:                                               ; preds = %67
  %71 = tail call fastcc i32 @bypass_block(ptr noundef %26, ptr noundef %42, ptr noundef nonnull %41) #22, !range !507
  %72 = or i32 %71, %27
  br label %78

73:                                               ; preds = %44, %55
  %74 = phi ptr [ %41, %55 ], [ %42, %44 ]
  %75 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1, i32 0, i32 0, i64 2
  %76 = load ptr, ptr %75, align 8, !tbaa !467
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %40, !prof !644, !llvm.loop !645

78:                                               ; preds = %40, %47, %49, %55, %73, %44, %30, %25, %64, %67, %70
  %79 = phi i32 [ %27, %25 ], [ %72, %70 ], [ %27, %67 ], [ %27, %64 ], [ %27, %30 ], [ %27, %44 ], [ %27, %73 ], [ %27, %55 ], [ %27, %49 ], [ %27, %47 ], [ %27, %40 ]
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !522
  %82 = load ptr, ptr @cfun, align 8, !tbaa !480
  %83 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !509
  %85 = getelementptr inbounds %struct.control_flow_graph, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !524
  %87 = icmp eq ptr %81, %86
  br i1 %87, label %88, label %25, !prof !533, !llvm.loop !646

88:                                               ; preds = %78
  %89 = icmp eq i32 %79, 0
  br i1 %89, label %91, label %90, !prof !647

90:                                               ; preds = %88
  tail call void @commit_edge_insertions() #23
  br label %91

91:                                               ; preds = %10, %88, %90, %0
  %92 = phi i32 [ 0, %0 ], [ %79, %90 ], [ 0, %88 ], [ 0, %10 ]
  ret i32 %92
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @free_cprop_mem() unnamed_addr #5 !prof !600 !PGOFuncName !648 {
  %1 = load ptr, ptr @cprop_pavloc, align 8, !tbaa !480
  tail call void @free(ptr noundef %1) #22
  %2 = load ptr, ptr @cprop_absaltered, align 8, !tbaa !480
  tail call void @free(ptr noundef %2) #22
  %3 = load ptr, ptr @cprop_avin, align 8, !tbaa !480
  tail call void @free(ptr noundef %3) #22
  %4 = load ptr, ptr @cprop_avout, align 8, !tbaa !480
  tail call void @free(ptr noundef %4) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @free_hash_table(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !542 !PGOFuncName !649 {
  %2 = load ptr, ptr %0, align 8, !tbaa !589
  tail call void @free(ptr noundef %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_gcse_mem() unnamed_addr #0 !prof !542 !PGOFuncName !650 {
  tail call fastcc void @free_modify_mem_tables() #22
  %1 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !480
  tail call void @bitmap_obstack_free(ptr noundef %1) #23
  store ptr null, ptr @modify_mem_list_set, align 8, !tbaa !480
  %2 = load ptr, ptr @blocks_with_calls, align 8, !tbaa !480
  tail call void @bitmap_obstack_free(ptr noundef %2) #23
  store ptr null, ptr @blocks_with_calls, align 8, !tbaa !480
  ret void
}

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @current_function_name() local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gcalloc(i64 noundef %0) unnamed_addr #0 !prof !651 !PGOFuncName !652 {
  %2 = load i32, ptr @bytes_used, align 4, !tbaa !476
  %3 = trunc i64 %0 to i32
  %4 = shl i32 %3, 3
  %5 = add i32 %2, %4
  store i32 %5, ptr @bytes_used, align 4, !tbaa !476
  %6 = tail call ptr @xcalloc(i64 noundef %0, i64 noundef 8) #23
  ret ptr %6
}

; Function Attrs: optsize
declare void @cselib_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @local_cprop_find_used_regs(ptr nocapture noundef readonly %0, ptr noundef %1) #7 !prof !653 !PGOFuncName !654 {
  %3 = load ptr, ptr %0, align 8, !tbaa !480
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5, !prof !655

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
  ], !prof !656

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !467
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !467
  %17 = icmp ugt i8 %16, 4
  br i1 %17, label %19, label %18, !prof !657

18:                                               ; preds = %5, %8
  tail call void @find_used_regs(ptr noundef nonnull %0, ptr noundef %1) #22
  br label %19

19:                                               ; preds = %8, %5, %5, %5, %5, %5, %5, %5, %5, %5, %2, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @do_local_cprop(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !658 !PGOFuncName !659 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 37
  br i1 %5, label %6, label %101, !prof !660

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #22
  %8 = icmp ugt i32 %7, 52
  br i1 %8, label %20, label %9, !prof !661

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !467
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 24
  br i1 %14, label %101, label %15, !prof !662

15:                                               ; preds = %9
  %16 = tail call i32 @asm_noperands(ptr noundef nonnull %11) #23
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %101, !prof !663

18:                                               ; preds = %15
  %19 = load i32, ptr %0, align 8
  br label %20

20:                                               ; preds = %18, %6
  %21 = phi i32 [ %19, %18 ], [ %3, %6 ]
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  %24 = tail call ptr @cselib_lookup(ptr noundef nonnull %0, i32 noundef %23, i32 noundef 0) #23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %101, label %26, !prof !664

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.cselib_val_struct, ptr %24, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !480
  %29 = icmp eq ptr %28, null
  br i1 %29, label %101, label %30, !prof !665

30:                                               ; preds = %26, %57
  %31 = phi ptr [ %59, %57 ], [ %28, %26 ]
  %32 = phi ptr [ %58, %57 ], [ null, %26 ]
  %33 = phi ptr [ %38, %57 ], [ null, %26 ]
  %34 = getelementptr inbounds %struct.elt_loc_list, ptr %31, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !666
  %36 = tail call fastcc zeroext i8 @gcse_constant_p(ptr noundef %35) #22, !range !514
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, ptr %33, ptr %35, !prof !668
  %39 = load i32, ptr %35, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 37
  br i1 %41, label %42, label %57, !prof !669

42:                                               ; preds = %30
  %43 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %35) #22
  %44 = icmp ugt i32 %43, 52
  br i1 %44, label %45, label %57, !prof !670

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.elt_loc_list, ptr %31, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !671
  %48 = tail call ptr @find_reg_note(ptr noundef %47, i32 noundef 3, ptr noundef null) #23
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50, !prof !672

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !467
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 43
  br i1 %55, label %57, label %56

56:                                               ; preds = %50, %45
  br label %57

57:                                               ; preds = %56, %50, %42, %30
  %58 = phi ptr [ %32, %50 ], [ %35, %56 ], [ %32, %42 ], [ %32, %30 ]
  %59 = load ptr, ptr %31, align 8, !tbaa !480
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %30, !prof !673, !llvm.loop !674

61:                                               ; preds = %57
  %62 = icmp eq ptr %38, null
  br i1 %62, label %79, label %63, !prof !675

63:                                               ; preds = %61
  %64 = tail call fastcc zeroext i8 @constprop_register(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %38) #22, !range !514
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %79, label %66, !prof !676

66:                                               ; preds = %63
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %68 = icmp eq ptr %67, null
  br i1 %68, label %97, label %69, !prof !677

69:                                               ; preds = %66
  %70 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #22
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %67, ptr noundef nonnull @.str.8, i32 noundef %70) #22
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %73 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !467
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.9, i32 noundef %74) #22
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !480
  tail call void @print_rtl(ptr noundef %76, ptr noundef nonnull %38) #23
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %78 = tail call i32 @fputc(i32 10, ptr %77)
  br label %97

79:                                               ; preds = %63, %61
  %80 = icmp eq ptr %58, null
  %81 = icmp eq ptr %58, %0
  %82 = or i1 %80, %81
  br i1 %82, label %101, label %83, !prof !678

83:                                               ; preds = %79
  %84 = tail call fastcc i32 @try_replace_reg(ptr noundef nonnull %0, ptr noundef nonnull %58, ptr noundef %1) #22, !range !507
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %101, label %86, !prof !679

86:                                               ; preds = %83
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %88 = icmp eq ptr %87, null
  br i1 %88, label %97, label %89, !prof !680

89:                                               ; preds = %86
  %90 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #22
  %91 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !467
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %87, ptr noundef nonnull @.str.11, i32 noundef %90, i32 noundef %92) #22
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %95 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %58) #22
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %94, ptr noundef nonnull @.str.12, i32 noundef %95) #22
  br label %97

97:                                               ; preds = %86, %89, %66, %69
  %98 = phi ptr [ @local_const_prop_count, %69 ], [ @local_const_prop_count, %66 ], [ @local_copy_prop_count, %89 ], [ @local_copy_prop_count, %86 ]
  %99 = load i32, ptr %98, align 4, !tbaa !476
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %98, align 4, !tbaa !476
  br label %101

101:                                              ; preds = %97, %26, %20, %2, %9, %15, %83, %79
  %102 = phi i8 [ 0, %79 ], [ 0, %83 ], [ 0, %15 ], [ 0, %9 ], [ 0, %2 ], [ 0, %20 ], [ 0, %26 ], [ 1, %97 ]
  ret i8 %102
}

; Function Attrs: optsize
declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cselib_clear_table() local_unnamed_addr #3

; Function Attrs: optsize
declare void @cselib_finish() local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal void @find_used_regs(ptr nocapture noundef readonly %0, ptr noundef %1) #8 !prof !681 !PGOFuncName !682 {
  %3 = load ptr, ptr %0, align 8, !tbaa !467
  %4 = icmp eq ptr %3, null
  br i1 %4, label %55, label %5, !prof !683

5:                                                ; preds = %2, %39
  %6 = phi ptr [ %40, %39 ], [ %3, %2 ]
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 37
  br i1 %9, label %10, label %17, !prof !684

10:                                               ; preds = %5
  %11 = load i32, ptr @reg_use_count, align 4, !tbaa !476
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %55, label %13, !prof !685

13:                                               ; preds = %10
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds [8 x %struct.reg_use], ptr @reg_use_table, i64 0, i64 %14
  store ptr %6, ptr %15, align 8, !tbaa !556
  %16 = add nsw i32 %11, 1
  store i32 %16, ptr @reg_use_count, align 4, !tbaa !476
  br label %17

17:                                               ; preds = %13, %5
  %18 = zext nneg i32 %8 to i64
  %19 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !467
  %21 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %18
  %22 = load ptr, ptr %21, align 8, !tbaa !480
  %23 = icmp eq i8 %20, 0
  br i1 %23, label %55, label %24, !prof !686

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %26 = zext i8 %20 to i64
  br label %27

27:                                               ; preds = %24, %53
  %28 = phi i64 [ %26, %24 ], [ %29, %53 ]
  %29 = add nsw i64 %28, -1
  %30 = getelementptr inbounds i8, ptr %22, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !467
  switch i8 %31, label %53 [
    i8 101, label %37
    i8 69, label %32
  ], !prof !687

32:                                               ; preds = %27
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %25, i64 0, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !467
  %35 = load i32, ptr %34, align 8, !tbaa !626
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %44, label %53

37:                                               ; preds = %27
  %38 = icmp eq i64 %29, 0
  br i1 %38, label %39, label %42, !prof !688

39:                                               ; preds = %37
  %40 = load ptr, ptr %25, align 8, !tbaa !467
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %5, !prof !689

42:                                               ; preds = %37
  %43 = getelementptr inbounds [1 x %union.rtunion_def], ptr %25, i64 0, i64 %29
  tail call void @find_used_regs(ptr noundef nonnull %43, ptr noundef %1) #22
  br label %53

44:                                               ; preds = %32, %44
  %45 = phi i64 [ %48, %44 ], [ 0, %32 ]
  %46 = phi ptr [ %49, %44 ], [ %34, %32 ]
  %47 = getelementptr inbounds %struct.rtvec_def, ptr %46, i64 0, i32 1, i64 %45
  tail call void @find_used_regs(ptr noundef nonnull %47, ptr noundef %1) #22
  %48 = add nuw nsw i64 %45, 1
  %49 = load ptr, ptr %33, align 8, !tbaa !467
  %50 = load i32, ptr %49, align 8, !tbaa !626
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %44, label %53, !llvm.loop !690

53:                                               ; preds = %44, %32, %27, %42
  %54 = icmp sgt i64 %28, 1
  br i1 %54, label %27, label %55, !prof !691, !llvm.loop !692

55:                                               ; preds = %39, %10, %17, %53, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !693 !PGOFuncName !694 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !467
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @cselib_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gcse_constant_p(ptr noundef %0) unnamed_addr #0 !prof !695 !PGOFuncName !696 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 48
  br i1 %4, label %5, label %38, !prof !697

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !467
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %38 [
    i16 30, label %10
    i16 37, label %16
  ], !prof !698

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !467
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 30
  br i1 %15, label %49, label %38, !prof !699

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !467
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %38, !prof !700

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #22
  %24 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #22
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = lshr i32 %8, 16
  %28 = and i32 %27, 255
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !467
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
  %37 = load i8, ptr %36, align 1, !tbaa !467
  switch i8 %37, label %49 [
    i8 8, label %38
    i8 9, label %38
    i8 11, label %38
    i8 17, label %38
  ]

38:                                               ; preds = %5, %10, %1, %32, %32, %32, %32, %26, %26, %26, %26, %22, %16
  %39 = zext nneg i32 %3 to i64
  %40 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !476
  %42 = icmp eq i32 %41, 9
  br i1 %42, label %43, label %49, !prof !701

43:                                               ; preds = %38
  %44 = icmp eq i32 %3, 35
  br i1 %44, label %45, label %49, !prof !702

45:                                               ; preds = %43
  %46 = tail call zeroext i8 @shared_const_p(ptr noundef nonnull %0) #23
  %47 = icmp ne i8 %46, 0
  %48 = zext i1 %47 to i8
  br label %49

49:                                               ; preds = %38, %45, %43, %32, %10
  %50 = phi i8 [ 1, %10 ], [ 1, %32 ], [ 0, %38 ], [ 1, %43 ], [ %48, %45 ]
  ret i8 %50
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @constprop_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !703 !PGOFuncName !704 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %41, !prof !705

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !467
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 23
  br i1 %13, label %17, label %14, !prof !706

14:                                               ; preds = %8
  %15 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %10) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %17, !prof !707

17:                                               ; preds = %8, %14
  %18 = phi ptr [ %15, %14 ], [ %10, %8 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !467
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22, !prof !708

22:                                               ; preds = %17
  %23 = tail call i32 @any_condjump_p(ptr noundef nonnull %20) #23
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %41, label %25, !prof !709

25:                                               ; preds = %22
  %26 = load ptr, ptr %19, align 8, !tbaa !467
  %27 = tail call i32 @onlyjump_p(ptr noundef %26) #23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29, !prof !710

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !467
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 37
  br i1 %34, label %35, label %41, !prof !711

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !467
  %38 = load ptr, ptr %19, align 8, !tbaa !467
  %39 = tail call fastcc i32 @cprop_jump(ptr noundef %37, ptr noundef nonnull %0, ptr noundef %38, ptr noundef %1, ptr noundef %2) #22, !range !507
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %59, !prof !712

41:                                               ; preds = %3, %35, %29, %25, %22, %17, %14
  %42 = load i32, ptr %0, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %45, label %48, !prof !713

45:                                               ; preds = %41
  %46 = tail call fastcc i32 @try_replace_reg(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0) #22, !range !507
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59, !prof !714

48:                                               ; preds = %45, %41
  %49 = tail call i32 @any_condjump_p(ptr noundef nonnull %0) #23
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51, !prof !715

51:                                               ; preds = %48
  %52 = tail call i32 @onlyjump_p(ptr noundef nonnull %0) #23
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !467
  %57 = tail call fastcc i32 @cprop_jump(ptr noundef %56, ptr noundef null, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #22, !range !507
  %58 = trunc i32 %57 to i8
  br label %59

59:                                               ; preds = %51, %48, %45, %35, %54
  %60 = phi i8 [ %58, %54 ], [ 1, %35 ], [ 1, %45 ], [ 0, %48 ], [ 0, %51 ]
  ret i8 %60
}

; Function Attrs: optsize
declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @try_replace_reg(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !716 !PGOFuncName !717 {
  %4 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %2) #23
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = add nsw i32 %6, -7
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %9, label %17, !prof !718

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !467
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 23
  br i1 %14, label %17, label %15, !prof !719

15:                                               ; preds = %9
  %16 = tail call ptr @single_set_2(ptr noundef nonnull %2, ptr noundef nonnull %11) #23
  br label %17

17:                                               ; preds = %3, %9, %15
  %18 = phi ptr [ %16, %15 ], [ null, %3 ], [ %11, %9 ]
  %19 = tail call ptr @copy_rtx(ptr noundef %1) #23
  tail call void @validate_replace_src_group(ptr noundef %0, ptr noundef %19, ptr noundef nonnull %2) #23
  %20 = tail call i32 @num_changes_pending() #23
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22, !prof !720

22:                                               ; preds = %17
  %23 = tail call i32 @apply_change_group() #23
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27, !prof !721

25:                                               ; preds = %22, %17
  %26 = icmp ne ptr %18, null
  br label %43

27:                                               ; preds = %22
  %28 = icmp eq ptr %18, null
  br i1 %28, label %43, label %29, !prof !722

29:                                               ; preds = %27
  %30 = load i32, ptr %19, align 8
  %31 = and i32 %30, 65535
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !476
  %35 = icmp eq i32 %34, 9
  br i1 %35, label %36, label %43, !prof !723

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !467
  %39 = tail call ptr @simplify_rtx(ptr noundef %38) #23
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41, !prof !724

41:                                               ; preds = %36
  %42 = tail call zeroext i8 @validate_change(ptr noundef nonnull %2, ptr noundef nonnull %37, ptr noundef nonnull %39, i8 noundef zeroext 0) #23
  br label %43

43:                                               ; preds = %25, %36, %41, %29, %27
  %44 = phi i32 [ 0, %25 ], [ 1, %36 ], [ 1, %41 ], [ 1, %29 ], [ 1, %27 ]
  %45 = phi i1 [ %26, %25 ], [ false, %36 ], [ false, %41 ], [ false, %29 ], [ false, %27 ]
  %46 = icmp ne ptr %4, null
  br i1 %46, label %47, label %56, !prof !725

47:                                               ; preds = %43
  %48 = load i32, ptr %4, align 8
  %49 = and i32 %48, 16711680
  %50 = icmp eq i32 %49, 262144
  br i1 %50, label %51, label %56, !prof !726

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !467
  %54 = tail call ptr @simplify_replace_rtx(ptr noundef %53, ptr noundef %0, ptr noundef %19) #23
  %55 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %2, i32 noundef 4, ptr noundef %54) #23
  br label %56

56:                                               ; preds = %51, %47, %43
  br i1 %45, label %57, label %82, !prof !727

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %59 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !467
  %61 = tail call i32 @reg_mentioned_p(ptr noundef %0, ptr noundef %60) #23
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %82, label %63, !prof !728

63:                                               ; preds = %57
  %64 = load ptr, ptr %59, align 8, !tbaa !467
  %65 = tail call ptr @simplify_replace_rtx(ptr noundef %64, ptr noundef %0, ptr noundef %19) #23
  %66 = load ptr, ptr %59, align 8, !tbaa !467
  %67 = tail call i32 @rtx_equal_p(ptr noundef %65, ptr noundef %66) #23
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74, !prof !729

69:                                               ; preds = %63
  %70 = tail call zeroext i8 @validate_change(ptr noundef nonnull %2, ptr noundef nonnull %59, ptr noundef %65, i8 noundef zeroext 0) #23
  %71 = icmp ne i8 %70, 0
  %72 = or i1 %46, %71
  %73 = zext i1 %71 to i32
  br i1 %72, label %82, label %75, !prof !730

74:                                               ; preds = %63
  br i1 %46, label %86, label %75, !prof !731

75:                                               ; preds = %69, %74
  %76 = load ptr, ptr %58, align 8, !tbaa !467
  %77 = load i32, ptr %76, align 8
  %78 = trunc i32 %77 to i16
  switch i16 %78, label %79 [
    i16 120, label %99
    i16 40, label %99
  ], !prof !732

79:                                               ; preds = %75
  %80 = tail call ptr @copy_rtx(ptr noundef %65) #23
  %81 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %2, i32 noundef 4, ptr noundef %80) #23
  br label %82

82:                                               ; preds = %69, %79, %57, %56
  %83 = phi ptr [ %81, %79 ], [ %4, %57 ], [ %4, %56 ], [ %4, %69 ]
  %84 = phi i32 [ 0, %79 ], [ 0, %57 ], [ %44, %56 ], [ %73, %69 ]
  %85 = icmp eq ptr %83, null
  br i1 %85, label %99, label %86, !prof !733

86:                                               ; preds = %74, %82
  %87 = phi i32 [ %84, %82 ], [ 0, %74 ]
  %88 = phi ptr [ %83, %82 ], [ %4, %74 ]
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 16711680
  %91 = icmp eq i32 %90, 262144
  br i1 %91, label %92, label %99, !prof !734

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !467
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 37
  br i1 %97, label %98, label %99, !prof !735

98:                                               ; preds = %92
  tail call void @remove_note(ptr noundef nonnull %2, ptr noundef nonnull %88) #23
  br label %99

99:                                               ; preds = %75, %75, %98, %92, %86, %82
  %100 = phi i32 [ %87, %98 ], [ %87, %92 ], [ %87, %86 ], [ %84, %82 ], [ 0, %75 ], [ 0, %75 ]
  ret i32 %100
}

; Function Attrs: optsize
declare zeroext i8 @shared_const_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @onlyjump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cprop_jump(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !736 !PGOFuncName !737 {
  %6 = alloca %struct.edge_iterator, align 8
  %7 = tail call ptr @pc_set(ptr noundef %2) #23
  %8 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %2) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !711

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !467
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %5
  %17 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !467
  br label %19

19:                                               ; preds = %10, %16
  %20 = phi i1 [ true, %16 ], [ false, %10 ]
  %21 = phi ptr [ null, %16 ], [ %12, %10 ]
  %22 = phi ptr [ %18, %16 ], [ %12, %10 ]
  %23 = icmp eq ptr %1, null
  br i1 %23, label %61, label %24, !prof !710

24:                                               ; preds = %19
  %25 = tail call i32 @modified_between_p(ptr noundef %3, ptr noundef nonnull %1, ptr noundef %2) #23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %61, !prof !711

27:                                               ; preds = %24
  %28 = tail call i32 @modified_between_p(ptr noundef %4, ptr noundef nonnull %1, ptr noundef %2) #23
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %61, !prof !711

30:                                               ; preds = %27
  %31 = load i32, ptr %1, align 8
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -7
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %43, !prof !738

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !467
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 23
  br i1 %40, label %43, label %41, !prof !739

41:                                               ; preds = %35
  %42 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %37) #23
  br label %43

43:                                               ; preds = %30, %35, %41
  %44 = phi ptr [ %42, %41 ], [ null, %30 ], [ %37, %35 ]
  %45 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %1) #23
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47, !prof !740

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !467
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %56, !prof !741

53:                                               ; preds = %47, %43
  %54 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !467
  br label %56

56:                                               ; preds = %47, %53
  %57 = phi ptr [ %55, %53 ], [ %49, %47 ]
  %58 = getelementptr inbounds %struct.rtx_def, ptr %44, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !467
  %60 = tail call ptr @simplify_replace_rtx(ptr noundef %22, ptr noundef %59, ptr noundef %57) #23
  br label %61

61:                                               ; preds = %19, %24, %27, %56
  %62 = phi ptr [ %60, %56 ], [ %22, %27 ], [ %22, %24 ], [ %22, %19 ]
  %63 = phi ptr [ %1, %56 ], [ null, %27 ], [ null, %24 ], [ null, %19 ]
  %64 = tail call ptr @simplify_replace_rtx(ptr noundef %62, ptr noundef %3, ptr noundef %4) #23
  %65 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !467
  %67 = tail call i32 @rtx_equal_p(ptr noundef %64, ptr noundef %66) #23
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %144, !prof !711

69:                                               ; preds = %61
  %70 = load ptr, ptr @global_rtl, align 16, !tbaa !480
  %71 = icmp eq ptr %64, %70
  br i1 %71, label %72, label %74, !prof !742

72:                                               ; preds = %69
  %73 = tail call ptr @delete_insn(ptr noundef %2) #23
  br label %90

74:                                               ; preds = %69
  %75 = icmp eq ptr %63, null
  br i1 %75, label %79, label %76, !prof !743

76:                                               ; preds = %74
  %77 = tail call i32 @modified_in_p(ptr noundef %64, ptr noundef nonnull %63) #23
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %144, !prof !744

79:                                               ; preds = %76, %74
  %80 = tail call zeroext i8 @validate_unshare_change(ptr noundef %2, ptr noundef nonnull %65, ptr noundef %64, i8 noundef zeroext 0) #23
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %88, !prof !745

82:                                               ; preds = %79
  %83 = tail call i32 @rtx_equal_p(ptr noundef %64, ptr noundef %21) #23
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %144

85:                                               ; preds = %82
  %86 = tail call ptr @copy_rtx(ptr noundef %64) #23
  %87 = tail call ptr @set_unique_reg_note(ptr noundef %2, i32 noundef 4, ptr noundef %86) #23
  br label %144

88:                                               ; preds = %79
  br i1 %20, label %90, label %89, !prof !746

89:                                               ; preds = %88
  tail call void @remove_note(ptr noundef %2, ptr noundef %8) #23
  br label %90

90:                                               ; preds = %88, %89, %72
  %91 = load i32, ptr @global_const_prop_count, align 4, !tbaa !476
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr @global_const_prop_count, align 4, !tbaa !476
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95, !prof !747

95:                                               ; preds = %90
  %96 = tail call fastcc i32 @rhs_regno(ptr noundef %3) #22
  %97 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !467
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %93, ptr noundef nonnull @.str.13, i32 noundef %96, i32 noundef %98) #22
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !480
  tail call void @print_rtl(ptr noundef %100, ptr noundef %4) #23
  %101 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %102 = tail call i32 @fputc(i32 10, ptr %101)
  br label %103

103:                                              ; preds = %95, %90
  %104 = tail call zeroext i8 @purge_dead_edges(ptr noundef %0) #23
  %105 = load ptr, ptr @global_rtl, align 16, !tbaa !480
  %106 = icmp eq ptr %64, %105
  br i1 %106, label %144, label %107, !prof !748

107:                                              ; preds = %103
  %108 = tail call i32 @simplejump_p(ptr noundef %2) #23
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %144, label %110, !prof !745

110:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %112 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %111) #22
  store i32 0, ptr %6, align 8, !tbaa.struct !749
  %113 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %112, ptr %113, align 8, !tbaa.struct !750
  %114 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %112) #22
  %115 = icmp eq ptr %114, null
  br i1 %115, label %142, label %116, !prof !683

116:                                              ; preds = %110, %137
  %117 = phi ptr [ %140, %137 ], [ %114, %110 ]
  %118 = getelementptr inbounds %struct.edge_def, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !580
  %120 = load ptr, ptr @cfun, align 8, !tbaa !480
  %121 = getelementptr inbounds %struct.function, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !509
  %123 = getelementptr inbounds %struct.control_flow_graph, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !524
  %125 = icmp eq ptr %119, %124
  br i1 %125, label %137, label %126, !prof !745

126:                                              ; preds = %116
  %127 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1, i32 1, i32 0, i32 0, i64 2
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 7
  %129 = load ptr, ptr %128, align 8, !tbaa !467
  %130 = load ptr, ptr %129, align 8, !tbaa !751
  %131 = load ptr, ptr %127, align 8, !tbaa !467
  %132 = icmp eq ptr %130, %131
  br i1 %132, label %133, label %137, !prof !746

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.edge_def, ptr %117, i64 0, i32 7
  %135 = load i32, ptr %134, align 8, !tbaa !575
  %136 = or i32 %135, 1
  store i32 %136, ptr %134, align 8, !tbaa !575
  br label %142

137:                                              ; preds = %116, %126
  call fastcc void @ei_next(ptr noundef nonnull %6) #22
  %138 = load i32, ptr %6, align 8
  %139 = load ptr, ptr %113, align 8
  %140 = tail call fastcc ptr @ei_safe_edge(i32 %138, ptr %139) #22
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %116, !prof !752, !llvm.loop !753

142:                                              ; preds = %137, %110, %133
  %143 = tail call ptr @delete_insn(ptr noundef %2) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  br label %144

144:                                              ; preds = %103, %107, %142, %82, %85, %76, %61
  %145 = phi i32 [ 0, %61 ], [ 0, %76 ], [ 0, %85 ], [ 0, %82 ], [ 1, %142 ], [ 1, %107 ], [ 1, %103 ]
  ret i32 %145
}

; Function Attrs: optsize
declare ptr @pc_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @modified_between_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_replace_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @modified_in_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @validate_unshare_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @set_unique_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @purge_dead_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @simplejump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 !prof !754 !PGOFuncName !755 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !756 !PGOFuncName !757 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #22, !range !514
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !758

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #22
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !759 !PGOFuncName !760 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !761

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #22
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #22
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !762

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.15) #23
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !763
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !763
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !765 !PGOFuncName !766 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !767

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #22
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #22
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !768 !PGOFuncName !769 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !770

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #22
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #22
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !771 !PGOFuncName !772 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !773

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !774
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !776 !PGOFuncName !777 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !778

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 687, ptr noundef nonnull @.str.15) #23
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !480
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !779 !PGOFuncName !780 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !480
  ret ptr %5
}

; Function Attrs: optsize
declare void @validate_replace_src_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @num_changes_pending() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @apply_change_group() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @implicit_set_cond_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !781 !PGOFuncName !782 {
  %2 = alloca %struct.real_value, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !467
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !467
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !467
  switch i8 %12, label %40 [
    i8 8, label %13
    i8 9, label %13
    i8 11, label %13
    i8 17, label %13
  ], !prof !783

13:                                               ; preds = %1, %1, %1, %1
  %14 = and i8 %12, -2
  %15 = icmp eq i8 %14, 8
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %10
  %18 = load i8, ptr %17, align 1, !tbaa !467
  %19 = zext i8 %18 to i32
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i32 [ %7, %13 ], [ %19, %16 ]
  %22 = add nsw i32 %21, -38
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !480
  %26 = getelementptr inbounds %struct.real_format, ptr %25, i64 0, i32 14
  %27 = load i8, ptr %26, align 1, !tbaa !784
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
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #24
  %37 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %37, i64 32, i1 false), !tbaa.struct !786
  %38 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %2, ptr noundef nonnull @dconst0) #23
  %39 = icmp eq i8 %38, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #24
  br i1 %39, label %40, label %42

40:                                               ; preds = %1, %36, %20
  %41 = call fastcc zeroext i8 @gcse_constant_p(ptr noundef %9) #22, !range !514
  br label %42

42:                                               ; preds = %32, %36, %40
  %43 = phi i8 [ %41, %40 ], [ 0, %36 ], [ 0, %32 ]
  ret i8 %43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !787 !PGOFuncName !788 {
  %2 = load ptr, ptr %0, align 8, !tbaa !789
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @get_max_insn_count() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gmalloc(i64 noundef %0) unnamed_addr #0 !prof !651 !PGOFuncName !790 {
  %2 = load i32, ptr @bytes_used, align 4, !tbaa !476
  %3 = trunc i64 %0 to i32
  %4 = add i32 %2, %3
  store i32 %4, ptr @bytes_used, align 4, !tbaa !476
  %5 = tail call ptr @xmalloc(i64 noundef %0) #23
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_hash_table_work(ptr nocapture noundef %0) unnamed_addr #0 !prof !542 !PGOFuncName !791 {
  tail call fastcc void @clear_modify_mem_tables() #22
  %2 = tail call i32 @max_reg_num() #23
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 4
  %5 = tail call fastcc ptr @gmalloc(i64 noundef %4) #22
  store ptr %5, ptr @reg_avail_info, align 8, !tbaa !480
  %6 = tail call i32 @max_reg_num() #23
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %16, !prof !792

8:                                                ; preds = %1, %8
  %9 = phi i64 [ %12, %8 ], [ 0, %1 ]
  %10 = load ptr, ptr @reg_avail_info, align 8, !tbaa !480
  %11 = getelementptr inbounds %struct.reg_avail_info, ptr %10, i64 %9
  store ptr null, ptr %11, align 8, !tbaa !793
  %12 = add nuw nsw i64 %9, 1
  %13 = tail call i32 @max_reg_num() #23
  %14 = sext i32 %13 to i64
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %8, label %16, !prof !795, !llvm.loop !796

16:                                               ; preds = %8, %1
  %17 = load ptr, ptr @cfun, align 8, !tbaa !480
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !509
  %20 = load ptr, ptr %19, align 8, !tbaa !480
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !522
  store ptr %22, ptr @current_bb, align 8, !tbaa !480
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !524
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %131, label %26, !prof !797

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.hash_table_d, ptr %0, i64 0, i32 3
  br label %28

28:                                               ; preds = %26, %121
  %29 = phi ptr [ %22, %26 ], [ %124, %121 ]
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !467
  %32 = load ptr, ptr %31, align 8, !tbaa !467
  %33 = icmp eq ptr %32, null
  br i1 %33, label %76, label %34, !prof !797

34:                                               ; preds = %28, %71
  %35 = phi ptr [ %72, %71 ], [ %29, %28 ]
  %36 = phi ptr [ %74, %71 ], [ %32, %28 ]
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !467
  %39 = getelementptr inbounds %struct.rtl_bb_info, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !526
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !467
  %43 = icmp eq ptr %36, %42
  br i1 %43, label %76, label %44, !prof !798

44:                                               ; preds = %34
  %45 = load i32, ptr %36, align 8
  %46 = and i32 %45, 65535
  %47 = add nsw i32 %46, -7
  %48 = icmp ult i32 %47, 4
  br i1 %48, label %49, label %71, !prof !799

49:                                               ; preds = %44
  %50 = icmp eq i32 %46, 10
  br i1 %50, label %51, label %67, !prof !800

51:                                               ; preds = %49
  %52 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !801
  br label %53

53:                                               ; preds = %51, %62
  %54 = phi i64 [ %52, %51 ], [ %63, %62 ]
  %55 = phi i64 [ 0, %51 ], [ %64, %62 ]
  %56 = shl nuw nsw i64 1, %55
  %57 = and i64 %54, %56
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %62, label %59, !prof !802

59:                                               ; preds = %53
  %60 = trunc i64 %55 to i32
  tail call fastcc void @record_last_reg_set_info(ptr noundef nonnull %36, i32 noundef %60) #22
  %61 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !801
  br label %62

62:                                               ; preds = %53, %59
  %63 = phi i64 [ %54, %53 ], [ %61, %59 ]
  %64 = add nuw nsw i64 %55, 1
  %65 = icmp eq i64 %64, 53
  br i1 %65, label %66, label %53, !prof !803, !llvm.loop !804

66:                                               ; preds = %62
  tail call fastcc void @mark_call(ptr noundef nonnull %36) #22
  br label %67

67:                                               ; preds = %66, %49
  %68 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !467
  tail call void @note_stores(ptr noundef %69, ptr noundef nonnull @record_last_set_info, ptr noundef nonnull %36) #23
  %70 = load ptr, ptr @current_bb, align 8, !tbaa !480
  br label %71

71:                                               ; preds = %44, %67
  %72 = phi ptr [ %35, %44 ], [ %70, %67 ]
  %73 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  %74 = load ptr, ptr %73, align 8, !tbaa !467
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %34, !prof !805, !llvm.loop !806

76:                                               ; preds = %34, %71, %28
  %77 = phi ptr [ %29, %28 ], [ %35, %34 ], [ %72, %71 ]
  %78 = load i32, ptr %27, align 8, !tbaa !590
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %93, label %80, !prof !807

80:                                               ; preds = %76
  %81 = load ptr, ptr @implicit_sets, align 8, !tbaa !480
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 9
  %83 = load i32, ptr %82, align 8, !tbaa !584
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %81, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !480
  %87 = icmp eq ptr %86, null
  br i1 %87, label %93, label %88, !prof !808

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 7
  %90 = load ptr, ptr %89, align 8, !tbaa !467
  %91 = load ptr, ptr %90, align 8, !tbaa !751
  tail call fastcc void @hash_scan_set(ptr noundef nonnull %86, ptr noundef %91, ptr noundef nonnull %0) #22
  %92 = load ptr, ptr @current_bb, align 8, !tbaa !480
  br label %93

93:                                               ; preds = %88, %80, %76
  %94 = phi ptr [ %92, %88 ], [ %77, %80 ], [ %77, %76 ]
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !467
  %97 = load ptr, ptr %96, align 8, !tbaa !467
  %98 = icmp eq ptr %97, null
  br i1 %98, label %121, label %99, !prof !797

99:                                               ; preds = %93, %116
  %100 = phi ptr [ %117, %116 ], [ %94, %93 ]
  %101 = phi ptr [ %119, %116 ], [ %97, %93 ]
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !467
  %104 = getelementptr inbounds %struct.rtl_bb_info, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !526
  %106 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 2
  %107 = load ptr, ptr %106, align 8, !tbaa !467
  %108 = icmp eq ptr %101, %107
  br i1 %108, label %121, label %109, !prof !798

109:                                              ; preds = %99
  %110 = load i32, ptr %101, align 8
  %111 = and i32 %110, 65535
  %112 = add nsw i32 %111, -7
  %113 = icmp ult i32 %112, 4
  br i1 %113, label %114, label %116, !prof !799

114:                                              ; preds = %109
  tail call fastcc void @hash_scan_insn(ptr noundef nonnull %101, ptr noundef %0) #22
  %115 = load ptr, ptr @current_bb, align 8, !tbaa !480
  br label %116

116:                                              ; preds = %109, %114
  %117 = phi ptr [ %100, %109 ], [ %115, %114 ]
  %118 = getelementptr inbounds %struct.rtx_def, ptr %101, i64 0, i32 1, i32 0, i32 0, i64 2
  %119 = load ptr, ptr %118, align 8, !tbaa !467
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %99, !prof !805, !llvm.loop !809

121:                                              ; preds = %99, %116, %93
  %122 = phi ptr [ %94, %93 ], [ %100, %99 ], [ %117, %116 ]
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8, !tbaa !522
  store ptr %124, ptr @current_bb, align 8, !tbaa !480
  %125 = load ptr, ptr @cfun, align 8, !tbaa !480
  %126 = getelementptr inbounds %struct.function, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !509
  %128 = getelementptr inbounds %struct.control_flow_graph, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !524
  %130 = icmp eq ptr %124, %129
  br i1 %130, label %131, label %28, !prof !810, !llvm.loop !811

131:                                              ; preds = %121, %16
  %132 = load ptr, ptr @reg_avail_info, align 8, !tbaa !480
  tail call void @free(ptr noundef %132) #22
  store ptr null, ptr @reg_avail_info, align 8, !tbaa !480
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_modify_mem_tables() unnamed_addr #0 !prof !812 !PGOFuncName !813 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #24
  %3 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !480
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %1) #22
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #22, !range !514
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6, !prof !814

6:                                                ; preds = %0, %6
  %7 = load ptr, ptr @modify_mem_list, align 8, !tbaa !480
  %8 = load i32, ptr %1, align 4, !tbaa !476
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  tail call void @free_INSN_LIST_list(ptr noundef %10) #23
  %11 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !480
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  tail call fastcc void @free_insn_expr_list_list(ptr noundef %12) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #22
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #22, !range !514
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %6, !prof !815, !llvm.loop !816

15:                                               ; preds = %6
  %16 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !480
  br label %17

17:                                               ; preds = %15, %0
  %18 = phi ptr [ %16, %15 ], [ %3, %0 ]
  tail call void @bitmap_clear(ptr noundef %18) #23
  %19 = load ptr, ptr @blocks_with_calls, align 8, !tbaa !480
  tail call void @bitmap_clear(ptr noundef %19) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @record_last_reg_set_info(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 !prof !817 !PGOFuncName !818 {
  %3 = load ptr, ptr @reg_avail_info, align 8, !tbaa !480
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.reg_avail_info, ptr %3, i64 %4
  %6 = load ptr, ptr @df, align 8, !tbaa !480
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !819
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !467
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !480
  %14 = getelementptr inbounds %struct.df_insn_info, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !822
  %16 = getelementptr inbounds %struct.reg_avail_info, ptr %3, i64 %4, i32 2
  store i32 %15, ptr %16, align 4, !tbaa !824
  %17 = load ptr, ptr %5, align 8, !tbaa !793
  %18 = load ptr, ptr @current_bb, align 8, !tbaa !480
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %22, label %20, !prof !825

20:                                               ; preds = %2
  store ptr %18, ptr %5, align 8, !tbaa !793
  %21 = getelementptr inbounds %struct.reg_avail_info, ptr %3, i64 %4, i32 1
  store i32 %15, ptr %21, align 8, !tbaa !826
  br label %22

22:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_call(ptr noundef %0) unnamed_addr #0 !prof !827 !PGOFuncName !828 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, -2080374784
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !829

5:                                                ; preds = %1
  tail call fastcc void @record_last_mem_set_info(ptr noundef nonnull %0) #22
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @record_last_set_info(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !prof !830 !PGOFuncName !831 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %11, !prof !832

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !467
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ %4, %3 ]
  %13 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %14 = trunc i32 %12 to i16
  switch i16 %14, label %23 [
    i16 37, label %15
    i16 43, label %17
  ], !prof !833

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %13) #22
  tail call fastcc void @record_last_reg_set_info(ptr noundef %2, i32 noundef %16) #22
  br label %23

17:                                               ; preds = %11
  %18 = lshr i32 %12, 16
  %19 = and i32 %18, 255
  %20 = tail call i32 @push_operand(ptr noundef nonnull %13, i32 noundef %19) #23
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !834

22:                                               ; preds = %17
  tail call fastcc void @record_last_mem_set_info(ptr noundef %2) #22
  br label %23

23:                                               ; preds = %11, %17, %22, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @hash_scan_set(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !835 !PGOFuncName !836 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !467
  %7 = load ptr, ptr %4, align 8, !tbaa !467
  %8 = load i32, ptr %6, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 26
  br i1 %10, label %187, label %11, !prof !837

11:                                               ; preds = %3
  %12 = load i32, ptr %7, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %15, label %137, !prof !838

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %7) #22
  %17 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %1) #23
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19, !prof !839

19:                                               ; preds = %15
  %20 = load i32, ptr %17, align 8
  %21 = and i32 %20, 16711680
  %22 = icmp eq i32 %21, 262144
  br i1 %22, label %23, label %43, !prof !840

23:                                               ; preds = %19
  %24 = load i32, ptr %6, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %43, label %27, !prof !841

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !590
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !467
  br i1 %30, label %36, label %33, !prof !842

33:                                               ; preds = %27
  %34 = tail call fastcc zeroext i8 @gcse_constant_p(ptr noundef %32) #22, !range !514
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %39, !prof !843

36:                                               ; preds = %27
  %37 = tail call fastcc i32 @want_to_gcse_p(ptr noundef %32) #22, !range !507
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39, !prof !844

39:                                               ; preds = %36, %33
  %40 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !467
  %42 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %7, ptr noundef %41) #23
  br label %43

43:                                               ; preds = %39, %36, %33, %23, %19, %15
  %44 = phi ptr [ %6, %23 ], [ %41, %39 ], [ %6, %33 ], [ %6, %36 ], [ %6, %19 ], [ %6, %15 ]
  %45 = phi ptr [ %0, %23 ], [ %42, %39 ], [ %0, %33 ], [ %0, %36 ], [ %0, %19 ], [ %0, %15 ]
  %46 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !590
  %48 = icmp eq i32 %47, 0
  %49 = icmp ugt i32 %16, 52
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %94, !prof !845

51:                                               ; preds = %43
  %52 = load i32, ptr %7, align 8
  %53 = lshr i32 %52, 16
  %54 = and i32 %53, 255
  %55 = tail call zeroext i8 @can_copy_p(i32 noundef %54) #22, !range !514
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %94, label %57, !prof !846

57:                                               ; preds = %51
  %58 = tail call zeroext i8 @can_throw_internal(ptr noundef %1) #23
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %94, !prof !847

60:                                               ; preds = %57
  %61 = tail call fastcc i32 @want_to_gcse_p(ptr noundef %44) #22, !range !507
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %94, label %63, !prof !848

63:                                               ; preds = %60
  %64 = tail call i32 @set_noop_p(ptr noundef %45) #23
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %94, !prof !849

66:                                               ; preds = %63
  br i1 %18, label %73, label %67, !prof !850

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !467
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 43
  br i1 %72, label %94, label %73, !prof !851

73:                                               ; preds = %67, %66
  %74 = tail call fastcc i32 @oprs_anticipatable_p(ptr noundef %44, ptr noundef %1) #22, !range !507
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76, !prof !852

76:                                               ; preds = %73
  %77 = tail call i32 @multiple_sets(ptr noundef %1) #23
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i32 [ 0, %73 ], [ %79, %76 ]
  %82 = tail call fastcc i32 @oprs_available_p(ptr noundef %44, ptr noundef %1) #22, !range !507
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84, !prof !853

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
  tail call fastcc void @insert_expr_in_table(ptr noundef %44, i32 noundef %93, ptr noundef %1, i32 noundef %81, i32 noundef %90, ptr noundef nonnull %2) #22
  br label %187

94:                                               ; preds = %67, %63, %60, %57, %51, %43
  %95 = load i32, ptr %46, align 8, !tbaa !590
  %96 = icmp ne i32 %95, 0
  %97 = select i1 %96, i1 %49, i1 false
  br i1 %97, label %98, label %187, !prof !854

98:                                               ; preds = %94
  %99 = load i32, ptr %44, align 8
  %100 = and i32 %99, 65535
  %101 = icmp eq i32 %100, 37
  br i1 %101, label %102, label %114, !prof !855

102:                                              ; preds = %98
  %103 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %44) #22
  %104 = icmp ugt i32 %103, 52
  br i1 %104, label %105, label %114, !prof !856

105:                                              ; preds = %102
  %106 = load i32, ptr %7, align 8
  %107 = lshr i32 %106, 16
  %108 = and i32 %107, 255
  %109 = tail call zeroext i8 @can_copy_p(i32 noundef %108) #22, !range !514
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %114, label %111, !prof !857

111:                                              ; preds = %105
  %112 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %44) #22
  %113 = icmp eq i32 %112, %16
  br i1 %113, label %114, label %117, !prof !858

114:                                              ; preds = %111, %105, %102, %98
  %115 = tail call fastcc zeroext i8 @gcse_constant_p(ptr noundef nonnull %44) #22, !range !514
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %187, label %117, !prof !859

117:                                              ; preds = %114, %111
  %118 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !467
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !467
  %122 = getelementptr inbounds %struct.rtl_bb_info, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !526
  %124 = icmp eq ptr %123, %1
  br i1 %124, label %136, label %125, !prof !860

125:                                              ; preds = %117
  %126 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %1) #23
  %127 = icmp eq ptr %126, null
  br i1 %127, label %136, label %128, !prof !861

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1, i32 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !467
  %131 = load ptr, ptr %118, align 8, !tbaa !467
  %132 = icmp eq ptr %130, %131
  br i1 %132, label %133, label %136, !prof !862

133:                                              ; preds = %128
  %134 = tail call fastcc i32 @oprs_available_p(ptr noundef %45, ptr noundef nonnull %126) #22, !range !507
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %187, label %136, !prof !863

136:                                              ; preds = %133, %128, %125, %117
  tail call fastcc void @insert_set_in_table(ptr noundef %45, ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  br label %187

137:                                              ; preds = %11
  %138 = load i32, ptr @flag_gcse_las, align 4, !tbaa !476
  %139 = icmp ne i32 %138, 0
  %140 = icmp eq i32 %9, 37
  %141 = and i1 %140, %139
  %142 = icmp eq i32 %13, 43
  %143 = and i1 %142, %141
  br i1 %143, label %144, label %187, !prof !864

144:                                              ; preds = %137
  %145 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #22
  %146 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 3
  %147 = load i32, ptr %146, align 8, !tbaa !590
  %148 = icmp eq i32 %147, 0
  %149 = icmp ugt i32 %145, 52
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %151, label %187, !prof !865

151:                                              ; preds = %144
  %152 = lshr i32 %8, 16
  %153 = and i32 %152, 255
  %154 = tail call zeroext i8 @can_copy_p(i32 noundef %153) #22, !range !514
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %187, label %156, !prof !866

156:                                              ; preds = %151
  %157 = tail call zeroext i8 @can_throw_internal(ptr noundef %1) #23
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %187, !prof !867

159:                                              ; preds = %156
  %160 = tail call fastcc i32 @want_to_gcse_p(ptr noundef nonnull %7) #22, !range !507
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %187, label %162, !prof !866

162:                                              ; preds = %159
  %163 = tail call i32 @set_noop_p(ptr noundef nonnull %0) #23
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %187, !prof !867

165:                                              ; preds = %162
  %166 = tail call ptr @find_reg_note(ptr noundef %1, i32 noundef 3, ptr noundef null) #23
  %167 = icmp eq ptr %166, null
  br i1 %167, label %174, label %168, !prof !867

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !467
  %171 = load i32, ptr %170, align 8
  %172 = and i32 %171, 65535
  %173 = icmp eq i32 %172, 43
  br i1 %173, label %187, label %174

174:                                              ; preds = %168, %165
  %175 = tail call fastcc i32 @oprs_available_p(ptr noundef nonnull %7, ptr noundef %1) #22, !range !507
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %182, label %177, !prof !868

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
  tail call fastcc void @insert_expr_in_table(ptr noundef nonnull %7, i32 noundef %186, ptr noundef %1, i32 noundef 0, i32 noundef %183, ptr noundef nonnull %2) #22
  br label %187

187:                                              ; preds = %3, %144, %151, %156, %159, %162, %168, %182, %89, %136, %133, %114, %94, %137
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @hash_scan_insn(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !869 !PGOFuncName !870 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !467
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %31 [
    i16 23, label %12
    i16 15, label %7
  ], !prof !871

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !467
  %10 = load i32, ptr %9, align 8, !tbaa !626
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %13, label %31, !prof !872

12:                                               ; preds = %2
  tail call fastcc void @hash_scan_set(ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef %1) #22
  br label %31

13:                                               ; preds = %7, %25
  %14 = phi i32 [ %26, %25 ], [ %10, %7 ]
  %15 = phi ptr [ %27, %25 ], [ %9, %7 ]
  %16 = phi i64 [ %28, %25 ], [ 0, %7 ]
  %17 = getelementptr inbounds %struct.rtvec_def, ptr %15, i64 0, i32 1, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !480
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 23
  br i1 %21, label %22, label %25, !prof !873

22:                                               ; preds = %13
  tail call fastcc void @hash_scan_set(ptr noundef nonnull %18, ptr noundef %0, ptr noundef %1) #22
  %23 = load ptr, ptr %8, align 8, !tbaa !467
  %24 = load i32, ptr %23, align 8, !tbaa !626
  br label %25

25:                                               ; preds = %13, %22
  %26 = phi i32 [ %14, %13 ], [ %24, %22 ]
  %27 = phi ptr [ %15, %13 ], [ %23, %22 ]
  %28 = add nuw nsw i64 %16, 1
  %29 = sext i32 %26 to i64
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %13, label %31, !prof !874, !llvm.loop !875

31:                                               ; preds = %25, %7, %2, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #14 !prof !876 !PGOFuncName !877 {
  %4 = load ptr, ptr %1, align 8, !tbaa !878
  store ptr %4, ptr %0, align 8, !tbaa !880
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !882
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !883

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !880
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !884
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !886
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !801
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !887
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !476
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #15 !prof !888 !PGOFuncName !889 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !887
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !890

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !891

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !476
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !892, !llvm.loop !893

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !476
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !476
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !886
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !880
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !886
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !894

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !801
  store i64 %35, ptr %3, align 8, !tbaa !887
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !895

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !476
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !476
  %40 = load i32, ptr %23, align 8, !tbaa !886
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !886
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !896, !llvm.loop !897

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !898
  store ptr %44, ptr %0, align 8, !tbaa !880
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !899

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !884
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !476
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !887
  store i32 %16, ptr %1, align 4, !tbaa !476
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: optsize
declare void @free_INSN_LIST_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_insn_expr_list_list(ptr nocapture noundef %0) unnamed_addr #0 !prof !900 !PGOFuncName !901 {
  %2 = load ptr, ptr %0, align 8, !tbaa !480
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4, !prof !902

4:                                                ; preds = %1, %13
  %5 = phi ptr [ %7, %13 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !467
  %8 = load i32, ptr %5, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %12, !prof !903

11:                                               ; preds = %4
  tail call void @free_EXPR_LIST_node(ptr noundef nonnull %5) #23
  br label %13

12:                                               ; preds = %4
  tail call void @free_INSN_LIST_node(ptr noundef nonnull %5) #23
  br label %13

13:                                               ; preds = %11, %12
  %14 = icmp eq ptr %7, null
  br i1 %14, label %15, label %4, !prof !904, !llvm.loop !905

15:                                               ; preds = %13, %1
  store ptr null, ptr %0, align 8, !tbaa !480
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #16 !prof !906 !PGOFuncName !907 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !887
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !887
  %6 = load i32, ptr %1, align 4, !tbaa !476
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !476
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_EXPR_LIST_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_INSN_LIST_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_last_mem_set_info(ptr noundef %0) unnamed_addr #0 !prof !908 !PGOFuncName !909 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !467
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !584
  %6 = load ptr, ptr @modify_mem_list, align 8, !tbaa !480
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !480
  %10 = tail call ptr @alloc_INSN_LIST(ptr noundef %0, ptr noundef %9) #23
  %11 = load ptr, ptr @modify_mem_list, align 8, !tbaa !480
  %12 = getelementptr inbounds ptr, ptr %11, i64 %7
  store ptr %10, ptr %12, align 8, !tbaa !480
  %13 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !480
  %14 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %13, i32 noundef %5) #23
  %15 = load i32, ptr %0, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %27, !prof !910

18:                                               ; preds = %1
  %19 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !480
  %20 = getelementptr inbounds ptr, ptr %19, i64 %7
  %21 = load ptr, ptr %20, align 8, !tbaa !480
  %22 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %0, ptr noundef %21) #23
  %23 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !480
  %24 = getelementptr inbounds ptr, ptr %23, i64 %7
  store ptr %22, ptr %24, align 8, !tbaa !480
  %25 = load ptr, ptr @blocks_with_calls, align 8, !tbaa !480
  %26 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %25, i32 noundef %5) #23
  br label %30

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !467
  tail call void @note_stores(ptr noundef %29, ptr noundef nonnull @canon_list_insert, ptr noundef nonnull %0) #23
  br label %30

30:                                               ; preds = %27, %18
  ret void
}

; Function Attrs: optsize
declare ptr @alloc_INSN_LIST(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @canon_list_insert(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !prof !911 !PGOFuncName !912 {
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
  ], !prof !913

8:                                                ; preds = %4, %4, %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !467
  br label %4, !llvm.loop !914

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !467
  %14 = tail call ptr @get_addr(ptr noundef %13) #23
  %15 = tail call ptr @canon_rtx(ptr noundef %14) #23
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !467
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !584
  %20 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !480
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !480
  %24 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %15, ptr noundef %23) #23
  %25 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !480
  %26 = getelementptr inbounds ptr, ptr %25, i64 %21
  store ptr %24, ptr %26, align 8, !tbaa !480
  %27 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef nonnull %5, ptr noundef %24) #23
  %28 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !480
  %29 = getelementptr inbounds ptr, ptr %28, i64 %21
  store ptr %27, ptr %29, align 8, !tbaa !480
  br label %30

30:                                               ; preds = %4, %11
  ret void
}

; Function Attrs: optsize
declare ptr @get_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @canon_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @push_operand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @want_to_gcse_p(ptr noundef %0) unnamed_addr #0 !prof !915 !PGOFuncName !916 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 16711680
  switch i32 %3, label %23 [
    i32 2490368, label %4
    i32 2555904, label %12
    i32 2621440, label %20
  ], !prof !917

4:                                                ; preds = %1
  %5 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !476
  %6 = and i32 %5, 65536
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8, !prof !918

8:                                                ; preds = %4
  %9 = load i32, ptr @ix86_fpmath, align 4, !tbaa !476
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %23

12:                                               ; preds = %1
  %13 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !476
  %14 = and i32 %13, 131072
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !919

16:                                               ; preds = %12
  %17 = load i32, ptr @ix86_fpmath, align 4, !tbaa !476
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1, %16, %12, %8, %4
  %21 = tail call ptr @avoid_constant_pool_reference(ptr noundef nonnull %0) #23
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
  %30 = tail call zeroext i8 @can_assign_to_reg_without_clobbers_p(ptr noundef nonnull %25) #22, !range !514
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
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @set_noop_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @oprs_anticipatable_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !920 !PGOFuncName !921 {
  %3 = tail call fastcc i32 @oprs_unchanged_p(ptr noundef %0, ptr noundef %1, i32 noundef 0) #22, !range !507
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @multiple_sets(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @oprs_available_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !922 !PGOFuncName !923 {
  %3 = tail call fastcc i32 @oprs_unchanged_p(ptr noundef %0, ptr noundef %1, i32 noundef 1) #22, !range !507
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_expr_in_table(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) unnamed_addr #0 !prof !924 !PGOFuncName !925 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #24
  %8 = getelementptr inbounds %struct.hash_table_d, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !588
  %10 = call fastcc i32 @hash_expr(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %7, i32 noundef %9) #22
  %11 = load i32, ptr %7, align 4, !tbaa !476
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %88, !prof !926

13:                                               ; preds = %6
  %14 = load ptr, ptr %5, align 8, !tbaa !589
  %15 = zext i32 %10 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !480
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19, !prof !927

19:                                               ; preds = %13, %24
  %20 = phi ptr [ %26, %24 ], [ %17, %13 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !598
  %22 = call fastcc i32 @expr_equiv_p(ptr noundef %21, ptr noundef %0) #22
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44, !prof !928

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.expr, ptr %20, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !480
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !prof !929, !llvm.loop !930

28:                                               ; preds = %24, %13
  %29 = phi ptr [ null, %13 ], [ %20, %24 ]
  %30 = call fastcc ptr @gcse_alloc(i64 noundef 48) #22
  %31 = load i32, ptr @bytes_used, align 4, !tbaa !476
  %32 = add i32 %31, 48
  store i32 %32, ptr @bytes_used, align 4, !tbaa !476
  %33 = load ptr, ptr %5, align 8, !tbaa !589
  %34 = getelementptr inbounds ptr, ptr %33, i64 %15
  %35 = load ptr, ptr %34, align 8, !tbaa !480
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %struct.expr, ptr %29, i64 0, i32 2
  %38 = select i1 %36, ptr %34, ptr %37, !prof !931
  store ptr %30, ptr %38, align 8, !tbaa !480
  store ptr %0, ptr %30, align 8, !tbaa !598
  %39 = getelementptr inbounds %struct.hash_table_d, ptr %5, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !518
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4, !tbaa !518
  %42 = getelementptr inbounds %struct.expr, ptr %30, i64 0, i32 1
  store i32 %40, ptr %42, align 8, !tbaa !594
  %43 = getelementptr inbounds %struct.expr, ptr %30, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  br label %44

44:                                               ; preds = %19, %28
  %45 = phi ptr [ %30, %28 ], [ %20, %19 ]
  %46 = icmp eq i32 %3, 0
  br i1 %46, label %66, label %47, !prof !932

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.expr, ptr %45, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !933
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51, !prof !934

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.occr, ptr %49, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !935
  %54 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !467
  %56 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !467
  %58 = icmp eq ptr %55, %57
  br i1 %58, label %66, label %59, !prof !937

59:                                               ; preds = %47, %51
  %60 = call fastcc ptr @gcse_alloc(i64 noundef 24) #22
  %61 = load i32, ptr @bytes_used, align 4, !tbaa !476
  %62 = add i32 %61, 24
  store i32 %62, ptr @bytes_used, align 4, !tbaa !476
  %63 = getelementptr inbounds %struct.occr, ptr %60, i64 0, i32 1
  store ptr %2, ptr %63, align 8, !tbaa !935
  %64 = load ptr, ptr %48, align 8, !tbaa !933
  store ptr %64, ptr %60, align 8, !tbaa !938
  %65 = getelementptr inbounds %struct.occr, ptr %60, i64 0, i32 2
  store i8 0, ptr %65, align 8, !tbaa !939
  store ptr %60, ptr %48, align 8, !tbaa !933
  br label %66

66:                                               ; preds = %59, %51, %44
  %67 = icmp eq i32 %4, 0
  br i1 %67, label %88, label %68, !prof !940

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.expr, ptr %45, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !941
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72, !prof !942

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.occr, ptr %70, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !935
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !467
  %77 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !467
  %79 = icmp eq ptr %76, %78
  br i1 %79, label %80, label %81, !prof !943

80:                                               ; preds = %72
  store ptr %2, ptr %73, align 8, !tbaa !935
  br label %88

81:                                               ; preds = %72, %68
  %82 = call fastcc ptr @gcse_alloc(i64 noundef 24) #22
  %83 = load i32, ptr @bytes_used, align 4, !tbaa !476
  %84 = add i32 %83, 24
  store i32 %84, ptr @bytes_used, align 4, !tbaa !476
  %85 = getelementptr inbounds %struct.occr, ptr %82, i64 0, i32 1
  store ptr %2, ptr %85, align 8, !tbaa !935
  %86 = load ptr, ptr %69, align 8, !tbaa !941
  store ptr %86, ptr %82, align 8, !tbaa !938
  %87 = getelementptr inbounds %struct.occr, ptr %82, i64 0, i32 2
  store i8 0, ptr %87, align 8, !tbaa !939
  store ptr %82, ptr %69, align 8, !tbaa !941
  br label %88

88:                                               ; preds = %66, %81, %80, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  ret void
}

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_set_in_table(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !944 !PGOFuncName !945 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 23
  br i1 %6, label %7, label %13, !prof !946

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !467
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %16, label %13, !prof !946

13:                                               ; preds = %7, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 1207, ptr noundef nonnull @.str.15) #23
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !467
  br label %16

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %9, %7 ], [ %15, %13 ]
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef %17) #22
  %19 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !588
  %21 = tail call fastcc i32 @hash_set(i32 noundef %18, i32 noundef %20) #22
  %22 = load ptr, ptr %2, align 8, !tbaa !589
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !480
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27, !prof !947

27:                                               ; preds = %16, %32
  %28 = phi ptr [ %34, %32 ], [ %25, %16 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !598
  %30 = tail call fastcc i32 @expr_equiv_p(ptr noundef %29, ptr noundef nonnull %0) #22
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %54, !prof !948

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.expr, ptr %28, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !480
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %27, !prof !949, !llvm.loop !950

36:                                               ; preds = %32, %16
  %37 = phi ptr [ null, %16 ], [ %28, %32 ]
  %38 = tail call fastcc ptr @gcse_alloc(i64 noundef 48) #22
  %39 = load i32, ptr @bytes_used, align 4, !tbaa !476
  %40 = add i32 %39, 48
  store i32 %40, ptr @bytes_used, align 4, !tbaa !476
  %41 = load ptr, ptr %2, align 8, !tbaa !589
  %42 = getelementptr inbounds ptr, ptr %41, i64 %23
  %43 = load ptr, ptr %42, align 8, !tbaa !480
  %44 = icmp eq ptr %43, null
  %45 = getelementptr inbounds %struct.expr, ptr %37, i64 0, i32 2
  %46 = select i1 %44, ptr %42, ptr %45, !prof !951
  store ptr %38, ptr %46, align 8, !tbaa !480
  %47 = tail call ptr @copy_rtx(ptr noundef nonnull %0) #23
  store ptr %47, ptr %38, align 8, !tbaa !598
  %48 = getelementptr inbounds %struct.hash_table_d, ptr %2, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !518
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4, !tbaa !518
  %51 = getelementptr inbounds %struct.expr, ptr %38, i64 0, i32 1
  store i32 %49, ptr %51, align 8, !tbaa !594
  %52 = getelementptr inbounds %struct.expr, ptr %38, i64 0, i32 2
  %53 = getelementptr inbounds %struct.expr, ptr %38, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  br label %68

54:                                               ; preds = %27
  %55 = getelementptr inbounds %struct.expr, ptr %28, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !941
  %57 = getelementptr inbounds %struct.expr, ptr %28, i64 0, i32 4
  %58 = icmp eq ptr %56, null
  br i1 %58, label %68, label %59, !prof !952

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.occr, ptr %56, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !935
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !467
  %64 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !467
  %66 = icmp eq ptr %63, %65
  br i1 %66, label %67, label %68, !prof !953

67:                                               ; preds = %59
  store ptr %1, ptr %60, align 8, !tbaa !935
  br label %76

68:                                               ; preds = %36, %59, %54
  %69 = phi ptr [ %53, %36 ], [ %57, %59 ], [ %57, %54 ]
  %70 = tail call fastcc ptr @gcse_alloc(i64 noundef 24) #22
  %71 = load i32, ptr @bytes_used, align 4, !tbaa !476
  %72 = add i32 %71, 24
  store i32 %72, ptr @bytes_used, align 4, !tbaa !476
  %73 = getelementptr inbounds %struct.occr, ptr %70, i64 0, i32 1
  store ptr %1, ptr %73, align 8, !tbaa !935
  %74 = load ptr, ptr %69, align 8, !tbaa !941
  store ptr %74, ptr %70, align 8, !tbaa !938
  %75 = getelementptr inbounds %struct.occr, ptr %70, i64 0, i32 2
  store i8 0, ptr %75, align 8, !tbaa !939
  store ptr %70, ptr %69, align 8, !tbaa !941
  br label %76

76:                                               ; preds = %68, %67
  ret void
}

; Function Attrs: optsize
declare ptr @avoid_constant_pool_reference(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @oprs_unchanged_p(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !954 !PGOFuncName !955 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %104, label %5, !prof !683

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
  ], !prof !956

11:                                               ; preds = %7
  %12 = load ptr, ptr @reg_avail_info, align 8, !tbaa !480
  %13 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %8) #22
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.reg_avail_info, ptr %12, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !793
  %17 = load ptr, ptr @current_bb, align 8, !tbaa !480
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %38, !prof !957

19:                                               ; preds = %11
  %20 = icmp eq i32 %2, 0
  %21 = load ptr, ptr @df, align 8, !tbaa !480
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !819
  %24 = load i32, ptr %6, align 8, !tbaa !467
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !480
  %28 = getelementptr inbounds %struct.df_insn_info, ptr %27, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !822
  br i1 %20, label %34, label %30, !prof !958

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.reg_avail_info, ptr %12, i64 %14, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !824
  %33 = icmp slt i32 %32, %29
  br label %38

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.reg_avail_info, ptr %12, i64 %14, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !826
  %37 = icmp sge i32 %36, %29
  br label %38

38:                                               ; preds = %11, %34, %30
  %39 = phi i1 [ %33, %30 ], [ %37, %34 ], [ true, %11 ]
  %40 = zext i1 %39 to i32
  br label %104

41:                                               ; preds = %7
  %42 = load ptr, ptr @current_bb, align 8, !tbaa !480
  %43 = load ptr, ptr @df, align 8, !tbaa !480
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !819
  %46 = load i32, ptr %6, align 8, !tbaa !467
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !480
  %50 = getelementptr inbounds %struct.df_insn_info, ptr %49, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !822
  %52 = tail call fastcc i32 @load_killed_in_block_p(ptr noundef %42, i32 noundef %51, ptr noundef nonnull %8, i32 noundef %2) #22
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %104, !prof !959

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  br label %56

56:                                               ; preds = %81, %54
  %57 = phi ptr [ %55, %54 ], [ %69, %81 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !467
  %59 = icmp eq ptr %58, null
  br i1 %59, label %104, label %7, !prof !960

60:                                               ; preds = %7
  %61 = and i32 %9, 65535
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !467
  %65 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %62
  %66 = load ptr, ptr %65, align 8, !tbaa !480
  %67 = icmp eq i8 %64, 0
  br i1 %67, label %104, label %68, !prof !683

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %70 = zext i8 %64 to i64
  br label %71

71:                                               ; preds = %68, %101
  %72 = phi i64 [ %70, %68 ], [ %73, %101 ]
  %73 = add nsw i64 %72, -1
  %74 = getelementptr inbounds i8, ptr %66, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !467
  switch i8 %75, label %101 [
    i8 101, label %81
    i8 69, label %76
  ], !prof !961

76:                                               ; preds = %71
  %77 = getelementptr inbounds [1 x %union.rtunion_def], ptr %69, i64 0, i64 %73
  %78 = load ptr, ptr %77, align 8, !tbaa !467
  %79 = load i32, ptr %78, align 8, !tbaa !626
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %94, label %101

81:                                               ; preds = %71
  %82 = icmp eq i64 %73, 0
  br i1 %82, label %56, label %83, !prof !962

83:                                               ; preds = %81
  %84 = getelementptr inbounds [1 x %union.rtunion_def], ptr %69, i64 0, i64 %73
  %85 = load ptr, ptr %84, align 8, !tbaa !467
  %86 = tail call fastcc i32 @oprs_unchanged_p(ptr noundef %85, ptr noundef %1, i32 noundef %2) #22, !range !507
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %104, label %101, !prof !963

88:                                               ; preds = %94
  %89 = add nuw nsw i64 %95, 1
  %90 = load ptr, ptr %77, align 8, !tbaa !467
  %91 = load i32, ptr %90, align 8, !tbaa !626
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %89, %92
  br i1 %93, label %94, label %101, !llvm.loop !964

94:                                               ; preds = %76, %88
  %95 = phi i64 [ %89, %88 ], [ 0, %76 ]
  %96 = phi ptr [ %90, %88 ], [ %78, %76 ]
  %97 = getelementptr inbounds %struct.rtvec_def, ptr %96, i64 0, i32 1, i64 %95
  %98 = load ptr, ptr %97, align 8, !tbaa !480
  %99 = tail call fastcc i32 @oprs_unchanged_p(ptr noundef %98, ptr noundef %1, i32 noundef %2) #22, !range !507
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %88

101:                                              ; preds = %88, %76, %71, %83
  %102 = icmp sgt i64 %72, 1
  br i1 %102, label %71, label %104, !prof !965, !llvm.loop !966

103:                                              ; preds = %7, %7, %7, %7, %7, %7
  br label %104

104:                                              ; preds = %56, %41, %60, %83, %101, %94, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %103, %3, %38
  %105 = phi i32 [ %40, %38 ], [ 1, %3 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 0, %94 ], [ 0, %83 ], [ 1, %101 ], [ 1, %60 ], [ 1, %56 ], [ 0, %41 ], [ 0, %103 ]
  ret i32 %105
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @load_killed_in_block_p(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !967 !PGOFuncName !968 {
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 67108864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %48, !prof !969

8:                                                ; preds = %4
  %9 = load ptr, ptr @modify_mem_list, align 8, !tbaa !480
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !584
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !467
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16, !prof !970

16:                                               ; preds = %8
  %17 = icmp eq i32 %3, 0
  br label %18

18:                                               ; preds = %16, %44
  %19 = phi ptr [ %14, %16 ], [ %46, %44 ]
  %20 = load ptr, ptr @df, align 8, !tbaa !480
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !819
  %23 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !467
  %25 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !467
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %22, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !480
  %30 = getelementptr inbounds %struct.df_insn_info, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !822
  br i1 %17, label %34, label %32, !prof !971

32:                                               ; preds = %18
  %33 = icmp slt i32 %31, %1
  br i1 %33, label %44, label %36, !prof !972, !llvm.loop !973

34:                                               ; preds = %18
  %35 = icmp sgt i32 %31, %1
  br i1 %35, label %44, label %36, !prof !974, !llvm.loop !973

36:                                               ; preds = %32, %34
  %37 = load i32, ptr %24, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %48, label %40, !prof !975

40:                                               ; preds = %36
  store ptr %2, ptr @gcse_mem_operand, align 8, !tbaa !480
  store i1 false, ptr @gcse_mems_conflict_p, align 4
  %41 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !467
  tail call void @note_stores(ptr noundef %42, ptr noundef nonnull @mems_conflict_for_gcse_p, ptr noundef null) #23
  %43 = load i1, ptr @gcse_mems_conflict_p, align 4
  br i1 %43, label %48, label %44, !prof !976

44:                                               ; preds = %40, %32, %34
  %45 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !467
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %18, !prof !977

48:                                               ; preds = %44, %36, %40, %8, %4
  %49 = phi i32 [ 0, %4 ], [ 0, %8 ], [ 0, %44 ], [ 1, %36 ], [ 1, %40 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mems_conflict_for_gcse_p(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !prof !978 !PGOFuncName !979 {
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
  ], !prof !980

8:                                                ; preds = %4, %4, %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !467
  br label %4, !llvm.loop !981

11:                                               ; preds = %4
  %12 = load ptr, ptr @gcse_mem_operand, align 8, !tbaa !480
  %13 = tail call fastcc i32 @expr_equiv_p(ptr noundef nonnull %5, ptr noundef %12) #22
  %14 = icmp ne i32 %13, 0
  %15 = load ptr, ptr @pre_ldst_mems, align 8
  %16 = icmp ne ptr %15, null
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %21, !prof !982

18:                                               ; preds = %11
  %19 = tail call fastcc ptr @find_rtx_in_ldst(ptr noundef nonnull %5) #22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %29, !prof !983

21:                                               ; preds = %11
  %22 = load i32, ptr %5, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = load ptr, ptr @gcse_mem_operand, align 8, !tbaa !480
  %26 = tail call i32 @true_dependence(ptr noundef nonnull %5, i32 noundef %24, ptr noundef %25, ptr noundef nonnull @rtx_addr_varies_p) #23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28, !prof !984

28:                                               ; preds = %21, %18
  store i1 true, ptr @gcse_mems_conflict_p, align 4
  br label %29

29:                                               ; preds = %4, %28, %18, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @expr_equiv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !985 !PGOFuncName !986 {
  %3 = tail call i32 @exp_equiv_p(ptr noundef %0, ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1) #23
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_rtx_in_ldst(ptr noundef %0) unnamed_addr #0 !prof !987 !PGOFuncName !988 {
  %2 = alloca %struct.ls_expr, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #24
  %3 = load ptr, ptr @pre_ldst_table, align 8, !tbaa !480
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5, !prof !989

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ls_expr, ptr %2, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !990
  %7 = call ptr @htab_find_slot(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9, !prof !992

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !480
  %11 = getelementptr inbounds %struct.ls_expr, ptr %10, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !993
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr %10, ptr null, !prof !994
  br label %15

15:                                               ; preds = %9, %5, %1
  %16 = phi ptr [ null, %1 ], [ null, %5 ], [ %14, %9 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #24
  ret ptr %16
}

; Function Attrs: optsize
declare i32 @true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @rtx_addr_varies_p(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: optsize
declare i32 @exp_equiv_p(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @hash_expr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !924 !PGOFuncName !995 {
  store i32 0, ptr %2, align 4, !tbaa !476
  %5 = tail call i32 @hash_rtx(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #23
  %6 = urem i32 %5, %3
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gcse_alloc(i64 noundef %0) unnamed_addr #0 !prof !996 !PGOFuncName !997 {
  %2 = load i32, ptr @bytes_used, align 4, !tbaa !476
  %3 = trunc i64 %0 to i32
  %4 = add i32 %2, %3
  store i32 %4, ptr @bytes_used, align 4, !tbaa !476
  store i64 %0, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !537
  %5 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !539
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !541
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp slt i64 %9, %0
  br i1 %10, label %11, label %14, !prof !998

11:                                               ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @gcse_obstack, i32 noundef %3) #23
  %12 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !537
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !541
  br label %14

14:                                               ; preds = %1, %11
  %15 = phi ptr [ %6, %1 ], [ %13, %11 ]
  %16 = phi i64 [ %0, %1 ], [ %12, %11 ]
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  %18 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !540
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %23, !prof !999

20:                                               ; preds = %14
  %21 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 10), align 8
  %22 = or i8 %21, 2
  store i8 %22, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 10), align 8
  br label %23

23:                                               ; preds = %14, %20
  %24 = ptrtoint ptr %18 to i64
  store i64 %24, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !537
  %25 = ptrtoint ptr %17 to i64
  %26 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 6), align 8, !tbaa !1000
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = xor i32 %26, -1
  %30 = sext i32 %29 to i64
  %31 = and i64 %28, %30
  %32 = inttoptr i64 %31 to ptr
  store ptr %32, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !541
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 1), align 8, !tbaa !535
  %34 = ptrtoint ptr %33 to i64
  %35 = sub i64 %31, %34
  %36 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !539
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %37, %34
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %41, !prof !999

40:                                               ; preds = %23
  store ptr %36, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !541
  br label %41

41:                                               ; preds = %23, %40
  %42 = phi ptr [ %32, %23 ], [ %36, %40 ]
  store ptr %42, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !540
  ret ptr %18
}

; Function Attrs: optsize
declare i32 @hash_rtx(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @hash_set(i32 noundef %0, i32 noundef %1) unnamed_addr #10 !prof !1001 !PGOFuncName !1002 {
  %3 = urem i32 %0, %1
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @sbitmap_vector_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_local_properties(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !1003 !PGOFuncName !1004 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %17, label %6, !prof !1005

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hash_table_d, ptr %3, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !590
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr @cfun, align 8, !tbaa !480
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !509
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !517
  br i1 %9, label %16, label %15, !prof !1006

15:                                               ; preds = %6
  tail call void @sbitmap_vector_zero(ptr noundef nonnull %0, i32 noundef %14) #23
  br label %17

16:                                               ; preds = %6
  tail call void @sbitmap_vector_ones(ptr noundef nonnull %0, i32 noundef %14) #23
  br label %17

17:                                               ; preds = %15, %16, %4
  %18 = icmp eq ptr %1, null
  br i1 %18, label %25, label %19, !prof !1005

19:                                               ; preds = %17
  %20 = load ptr, ptr @cfun, align 8, !tbaa !480
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !509
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !517
  tail call void @sbitmap_vector_zero(ptr noundef nonnull %1, i32 noundef %24) #23
  br label %25

25:                                               ; preds = %19, %17
  %26 = icmp eq ptr %2, null
  br i1 %26, label %33, label %27, !prof !1007

27:                                               ; preds = %25
  %28 = load ptr, ptr @cfun, align 8, !tbaa !480
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !509
  %31 = getelementptr inbounds %struct.control_flow_graph, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !517
  tail call void @sbitmap_vector_zero(ptr noundef nonnull %2, i32 noundef %32) #23
  br label %33

33:                                               ; preds = %27, %25
  %34 = getelementptr inbounds %struct.hash_table_d, ptr %3, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !588
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %103, label %37, !prof !1008

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.hash_table_d, ptr %3, i64 0, i32 3
  br label %39

39:                                               ; preds = %37, %98
  %40 = phi i32 [ %35, %37 ], [ %99, %98 ]
  %41 = phi i64 [ 0, %37 ], [ %100, %98 ]
  %42 = load ptr, ptr %3, align 8, !tbaa !589
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !480
  %45 = icmp eq ptr %44, null
  br i1 %45, label %98, label %46, !prof !1009

46:                                               ; preds = %39, %91
  %47 = phi ptr [ %94, %91 ], [ %44, %39 ]
  %48 = getelementptr inbounds %struct.expr, ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !594
  br i1 %5, label %53, label %50, !prof !1010

50:                                               ; preds = %46
  %51 = load ptr, ptr %47, align 8, !tbaa !598
  %52 = load i32, ptr %38, align 8, !tbaa !590
  tail call fastcc void @compute_transp(ptr noundef %51, i32 noundef %49, ptr noundef nonnull %0, i32 noundef %52) #22
  br label %53

53:                                               ; preds = %50, %46
  br i1 %26, label %72, label %54, !prof !1011

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.expr, ptr %47, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !480
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %58, !prof !1012

58:                                               ; preds = %54, %58
  %59 = phi ptr [ %70, %58 ], [ %56, %54 ]
  %60 = getelementptr inbounds %struct.occr, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !935
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !467
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !584
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %2, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !480
  tail call fastcc void @SET_BIT(ptr noundef %68, i32 noundef %49) #22
  %69 = getelementptr inbounds %struct.occr, ptr %59, i64 0, i32 2
  store i8 0, ptr %69, align 8, !tbaa !939
  %70 = load ptr, ptr %59, align 8, !tbaa !480
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %58, !prof !1013, !llvm.loop !1014

72:                                               ; preds = %58, %54, %53
  br i1 %18, label %91, label %73, !prof !1010

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.expr, ptr %47, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !480
  %76 = icmp eq ptr %75, null
  br i1 %76, label %91, label %77, !prof !1015

77:                                               ; preds = %73, %77
  %78 = phi ptr [ %89, %77 ], [ %75, %73 ]
  %79 = getelementptr inbounds %struct.occr, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !935
  %81 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !467
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 9
  %84 = load i32, ptr %83, align 8, !tbaa !584
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %1, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !480
  tail call fastcc void @SET_BIT(ptr noundef %87, i32 noundef %49) #22
  %88 = getelementptr inbounds %struct.occr, ptr %78, i64 0, i32 3
  store i8 0, ptr %88, align 1, !tbaa !1016
  %89 = load ptr, ptr %78, align 8, !tbaa !480
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %77, !prof !1017, !llvm.loop !1018

91:                                               ; preds = %77, %73, %72
  %92 = getelementptr inbounds %struct.expr, ptr %47, i64 0, i32 5
  store ptr null, ptr %92, align 8, !tbaa !1019
  %93 = getelementptr inbounds %struct.expr, ptr %47, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !480
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %46, !prof !1020, !llvm.loop !1021

96:                                               ; preds = %91
  %97 = load i32, ptr %34, align 8, !tbaa !588
  br label %98

98:                                               ; preds = %96, %39
  %99 = phi i32 [ %97, %96 ], [ %40, %39 ]
  %100 = add nuw nsw i64 %41, 1
  %101 = zext i32 %99 to i64
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %39, label %103, !prof !1022, !llvm.loop !1023

103:                                              ; preds = %98, %33
  ret void
}

; Function Attrs: optsize
declare void @compute_available(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_vector_zero(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_vector_ones(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_transp(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !1024 !PGOFuncName !1025 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %170, label %8, !prof !683

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
  ], !prof !1026

14:                                               ; preds = %10
  %15 = load ptr, ptr @df, align 8, !tbaa !480
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !1027
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %11) #22
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !480
  %22 = load ptr, ptr %21, align 8, !tbaa !467
  %23 = icmp eq ptr %22, null
  br i1 %9, label %48, label %24, !prof !1028

24:                                               ; preds = %14
  br i1 %23, label %170, label %25, !prof !1029

25:                                               ; preds = %24, %37
  %26 = phi ptr [ %46, %37 ], [ %22, %24 ]
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %32, !prof !1030

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.df_artificial_ref, ptr %26, i64 0, i32 1
  br label %37

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !467
  %35 = load ptr, ptr %34, align 8, !tbaa !1031
  %36 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 1
  br label %37

37:                                               ; preds = %32, %30
  %38 = phi ptr [ %31, %30 ], [ %36, %32 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !467
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !584
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %2, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !480
  tail call fastcc void @SET_BIT(ptr noundef %44, i32 noundef %1) #22
  %45 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !467
  %47 = icmp eq ptr %46, null
  br i1 %47, label %170, label %25, !prof !1032, !llvm.loop !1033

48:                                               ; preds = %14
  br i1 %23, label %170, label %49, !prof !1034

49:                                               ; preds = %48, %61
  %50 = phi ptr [ %70, %61 ], [ %22, %48 ]
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 255
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %56, !prof !1035

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.df_artificial_ref, ptr %50, i64 0, i32 1
  br label %61

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.df_base_ref, ptr %50, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !467
  %59 = load ptr, ptr %58, align 8, !tbaa !1031
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 1
  br label %61

61:                                               ; preds = %56, %54
  %62 = phi ptr [ %55, %54 ], [ %60, %56 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !467
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %65 = load i32, ptr %64, align 8, !tbaa !584
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %2, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !480
  tail call fastcc void @RESET_BIT(ptr noundef %68, i32 noundef %1) #22
  %69 = getelementptr inbounds %struct.df_base_ref, ptr %50, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !467
  %71 = icmp eq ptr %70, null
  br i1 %71, label %170, label %49, !prof !1036, !llvm.loop !1037

72:                                               ; preds = %10
  %73 = and i32 %12, 67108864
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %126, !prof !1038

75:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  %76 = load ptr, ptr @blocks_with_calls, align 8, !tbaa !480
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %76, ptr noundef nonnull %6) #22
  %77 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !514
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %89, label %79, !prof !1039

79:                                               ; preds = %75, %86
  %80 = load i32, ptr %6, align 4, !tbaa !476
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %2, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !480
  br i1 %9, label %85, label %84, !prof !1040

84:                                               ; preds = %79
  tail call fastcc void @SET_BIT(ptr noundef %83, i32 noundef %1) #22
  br label %86

85:                                               ; preds = %79
  tail call fastcc void @RESET_BIT(ptr noundef %83, i32 noundef %1) #22
  br label %86

86:                                               ; preds = %84, %85
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %87 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !514
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %79, !prof !1041, !llvm.loop !1042

89:                                               ; preds = %86, %75
  %90 = load ptr, ptr @modify_mem_list_set, align 8, !tbaa !480
  call fastcc void @bmp_iter_and_compl_init(ptr noundef nonnull %5, ptr noundef %90, ptr noundef %76, ptr noundef nonnull %6) #22
  %91 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !514
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %125, label %93, !prof !1039

93:                                               ; preds = %89, %122
  %94 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !480
  %95 = load i32, ptr %6, align 4, !tbaa !476
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds ptr, ptr %94, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !467
  %99 = icmp eq ptr %98, null
  br i1 %99, label %122, label %104, !prof !1043

100:                                              ; preds = %104
  %101 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1, i32 0, i32 0, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !467
  %103 = icmp eq ptr %102, null
  br i1 %103, label %122, label %104, !prof !1044

104:                                              ; preds = %93, %100
  %105 = phi ptr [ %102, %100 ], [ %98, %93 ]
  %106 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !467
  %108 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !467
  %110 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !467
  %112 = load i32, ptr %107, align 8
  %113 = lshr i32 %112, 16
  %114 = and i32 %113, 255
  %115 = tail call i32 @canon_true_dependence(ptr noundef nonnull %107, i32 noundef %114, ptr noundef %111, ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull @rtx_addr_varies_p) #23
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %100, label %117, !prof !1045

117:                                              ; preds = %104
  %118 = getelementptr inbounds ptr, ptr %2, i64 %96
  %119 = load ptr, ptr %118, align 8, !tbaa !480
  br i1 %9, label %121, label %120, !prof !1046

120:                                              ; preds = %117
  tail call fastcc void @SET_BIT(ptr noundef %119, i32 noundef %1) #22
  br label %122

121:                                              ; preds = %117
  tail call fastcc void @RESET_BIT(ptr noundef %119, i32 noundef %1) #22
  br label %122

122:                                              ; preds = %100, %93, %120, %121
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %123 = call fastcc zeroext i8 @bmp_iter_and_compl(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !514
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %93, !prof !1047, !llvm.loop !1048

125:                                              ; preds = %122, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  br label %126

126:                                              ; preds = %125, %72
  %127 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  br label %128

128:                                              ; preds = %153, %126
  %129 = phi ptr [ %127, %126 ], [ %141, %153 ]
  %130 = load ptr, ptr %129, align 8, !tbaa !467
  %131 = icmp eq ptr %130, null
  br i1 %131, label %170, label %10, !prof !1049

132:                                              ; preds = %10
  %133 = and i32 %12, 65535
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !467
  %137 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %134
  %138 = load ptr, ptr %137, align 8, !tbaa !480
  %139 = icmp eq i8 %136, 0
  br i1 %139, label %170, label %140, !prof !683

140:                                              ; preds = %132
  %141 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %142 = zext i8 %136 to i64
  br label %143

143:                                              ; preds = %140, %168
  %144 = phi i64 [ %142, %140 ], [ %145, %168 ]
  %145 = add nsw i64 %144, -1
  %146 = getelementptr inbounds i8, ptr %138, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !467
  switch i8 %147, label %168 [
    i8 101, label %153
    i8 69, label %148
  ], !prof !1050

148:                                              ; preds = %143
  %149 = getelementptr inbounds [1 x %union.rtunion_def], ptr %141, i64 0, i64 %145
  %150 = load ptr, ptr %149, align 8, !tbaa !467
  %151 = load i32, ptr %150, align 8, !tbaa !626
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %158, label %168

153:                                              ; preds = %143
  %154 = icmp eq i64 %145, 0
  br i1 %154, label %128, label %155, !prof !1051

155:                                              ; preds = %153
  %156 = getelementptr inbounds [1 x %union.rtunion_def], ptr %141, i64 0, i64 %145
  %157 = load ptr, ptr %156, align 8, !tbaa !467
  tail call fastcc void @compute_transp(ptr noundef %157, i32 noundef %1, ptr noundef %2, i32 noundef %3) #22
  br label %168

158:                                              ; preds = %148, %158
  %159 = phi i64 [ %163, %158 ], [ 0, %148 ]
  %160 = phi ptr [ %164, %158 ], [ %150, %148 ]
  %161 = getelementptr inbounds %struct.rtvec_def, ptr %160, i64 0, i32 1, i64 %159
  %162 = load ptr, ptr %161, align 8, !tbaa !480
  tail call fastcc void @compute_transp(ptr noundef %162, i32 noundef %1, ptr noundef %2, i32 noundef %3) #22
  %163 = add nuw nsw i64 %159, 1
  %164 = load ptr, ptr %149, align 8, !tbaa !467
  %165 = load i32, ptr %164, align 8, !tbaa !626
  %166 = sext i32 %165 to i64
  %167 = icmp slt i64 %163, %166
  br i1 %167, label %158, label %168, !llvm.loop !1052

168:                                              ; preds = %158, %148, %143, %155
  %169 = icmp sgt i64 %144, 1
  br i1 %169, label %143, label %170, !prof !1053, !llvm.loop !1054

170:                                              ; preds = %128, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %10, %132, %168, %37, %61, %4, %24, %48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #13 !prof !1055 !PGOFuncName !1056 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1057
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1059

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
  %15 = load i64, ptr %14, align 8, !tbaa !801
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !467
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !467
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !801
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !801
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #13 !prof !1060 !PGOFuncName !1061 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1057
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1062

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
  %15 = load i64, ptr %14, align 8, !tbaa !801
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !467
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !467
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !801
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !801
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_and_compl_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #17 !prof !1063 !PGOFuncName !1064 {
  %5 = load ptr, ptr %1, align 8, !tbaa !878
  store ptr %5, ptr %0, align 8, !tbaa !880
  %6 = load ptr, ptr %2, align 8, !tbaa !878
  %7 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !882
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %10, !prof !1065

9:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !880
  br label %10

10:                                               ; preds = %4, %9
  %11 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %9 ]
  %12 = icmp eq ptr %6, null
  %13 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !884
  br i1 %12, label %29, label %15, !prof !1066

15:                                               ; preds = %10, %20
  %16 = phi ptr [ %21, %20 ], [ %6, %10 ]
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !884
  %19 = icmp ult i32 %18, %14
  br i1 %19, label %20, label %29, !prof !1067

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8, !tbaa !898
  store ptr %21, ptr %7, align 8, !tbaa !882
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !prof !1068, !llvm.loop !1069

23:                                               ; preds = %20
  %24 = shl i32 %14, 7
  %25 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %25, align 8, !tbaa !886
  %26 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !801
  %28 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %27, ptr %28, align 8, !tbaa !887
  br label %56

29:                                               ; preds = %15, %10
  %30 = phi ptr [ null, %10 ], [ %16, %15 ]
  %31 = icmp eq i32 %14, 0
  br i1 %31, label %38, label %32, !prof !1070

32:                                               ; preds = %29
  %33 = shl i32 %14, 7
  %34 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %34, align 8, !tbaa !886
  %35 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !801
  %37 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %36, ptr %37, align 8, !tbaa !887
  br i1 %12, label %56, label %43, !prof !1071

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %39, align 8, !tbaa !886
  %40 = getelementptr inbounds %struct.bitmap_element_def, ptr %11, i64 0, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !801
  %42 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %41, ptr %42, align 8, !tbaa !887
  br i1 %12, label %56, label %43, !prof !1072

43:                                               ; preds = %32, %38
  %44 = phi ptr [ %37, %32 ], [ %42, %38 ]
  %45 = phi i64 [ %36, %32 ], [ %41, %38 ]
  %46 = phi i32 [ %33, %32 ], [ 0, %38 ]
  %47 = phi i32 [ %14, %32 ], [ 0, %38 ]
  %48 = getelementptr inbounds %struct.bitmap_element_def, ptr %30, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !884
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %56, !prof !1073

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.bitmap_element_def, ptr %30, i64 0, i32 3, i64 0
  %53 = load i64, ptr %52, align 8, !tbaa !801
  %54 = xor i64 %53, -1
  %55 = and i64 %45, %54
  store i64 %55, ptr %44, align 8, !tbaa !887
  br label %56

56:                                               ; preds = %23, %32, %51, %43, %38
  %57 = phi i32 [ %46, %51 ], [ %46, %43 ], [ 0, %38 ], [ %33, %32 ], [ %24, %23 ]
  %58 = phi i64 [ %55, %51 ], [ %45, %43 ], [ %41, %38 ], [ %36, %32 ], [ %27, %23 ]
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = or disjoint i32 %57, %60
  store i32 %61, ptr %3, align 4, !tbaa !476
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_and_compl(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #15 !prof !1074 !PGOFuncName !1075 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !887
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !1076

6:                                                ; preds = %51, %2
  %7 = phi i64 [ %4, %2 ], [ %52, %51 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %79, !prof !1077

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !476
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %78, !prof !1078, !llvm.loop !1079

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !476
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !476
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !886
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %0, align 8, !tbaa !880
  br label %28

28:                                               ; preds = %19, %76
  %29 = phi ptr [ %27, %19 ], [ %61, %76 ]
  %30 = phi i32 [ %25, %19 ], [ 0, %76 ]
  store i32 %30, ptr %23, align 8, !tbaa !886
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %60, label %32, !prof !1080

32:                                               ; preds = %28
  %33 = load ptr, ptr %26, align 8, !tbaa !882
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 2
  %36 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 2
  br label %37

37:                                               ; preds = %32, %54
  %38 = phi i32 [ %30, %32 ], [ %58, %54 ]
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 3, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !801
  store i64 %41, ptr %3, align 8, !tbaa !887
  br i1 %34, label %51, label %42, !prof !1081

42:                                               ; preds = %37
  %43 = load i32, ptr %35, align 8, !tbaa !884
  %44 = load i32, ptr %36, align 8, !tbaa !884
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51, !prof !1082

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 %39
  %48 = load i64, ptr %47, align 8, !tbaa !801
  %49 = xor i64 %48, -1
  %50 = and i64 %41, %49
  store i64 %50, ptr %3, align 8, !tbaa !887
  br label %51

51:                                               ; preds = %42, %46, %37
  %52 = phi i64 [ %50, %46 ], [ %41, %37 ], [ %41, %42 ]
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %6, !prof !1083

54:                                               ; preds = %51
  %55 = load i32, ptr %1, align 4, !tbaa !476
  %56 = add i32 %55, 64
  store i32 %56, ptr %1, align 4, !tbaa !476
  %57 = load i32, ptr %23, align 8, !tbaa !886
  %58 = add i32 %57, 1
  store i32 %58, ptr %23, align 8, !tbaa !886
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %37, !prof !1084, !llvm.loop !1085

60:                                               ; preds = %54, %28
  %61 = load ptr, ptr %29, align 8, !tbaa !898
  store ptr %61, ptr %0, align 8, !tbaa !880
  %62 = icmp eq ptr %61, null
  br i1 %62, label %79, label %63, !prof !1086

63:                                               ; preds = %60
  %64 = load ptr, ptr %26, align 8, !tbaa !882
  %65 = icmp eq ptr %64, null
  %66 = getelementptr inbounds %struct.bitmap_element_def, ptr %61, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !884
  br i1 %65, label %76, label %68, !prof !1087

68:                                               ; preds = %63, %73
  %69 = phi ptr [ %74, %73 ], [ %64, %63 ]
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !884
  %72 = icmp ult i32 %71, %67
  br i1 %72, label %73, label %76, !prof !1088

73:                                               ; preds = %68
  %74 = load ptr, ptr %69, align 8, !tbaa !898
  store ptr %74, ptr %26, align 8, !tbaa !882
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %68, !prof !1089, !llvm.loop !1090

76:                                               ; preds = %68, %73, %63
  %77 = shl i32 %67, 7
  store i32 %77, ptr %1, align 4, !tbaa !476
  br label %28

78:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !887
  store i32 %16, ptr %1, align 4, !tbaa !476
  br label %79

79:                                               ; preds = %60, %6, %78
  %80 = phi i8 [ 1, %78 ], [ 1, %6 ], [ 0, %60 ]
  ret i8 %80
}

; Function Attrs: optsize
declare i32 @canon_true_dependence(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @oprs_not_set_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1091 !PGOFuncName !1092 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %78, label %4, !prof !683

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
  ], !prof !1093

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !467
  %12 = load ptr, ptr @df, align 8, !tbaa !480
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !819
  %15 = load i32, ptr %9, align 8, !tbaa !467
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !480
  %19 = getelementptr inbounds %struct.df_insn_info, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !822
  %21 = tail call fastcc i32 @load_killed_in_block_p(ptr noundef %11, i32 noundef %20, ptr noundef nonnull %5, i32 noundef 0) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %78

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  br label %25

25:                                               ; preds = %56, %23
  %26 = phi ptr [ %24, %23 ], [ %44, %56 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !467
  %28 = icmp eq ptr %27, null
  br i1 %28, label %78, label %4, !prof !1094

29:                                               ; preds = %4
  %30 = load ptr, ptr @reg_set_bitmap, align 8, !tbaa !480
  %31 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #22
  %32 = tail call i32 @bitmap_bit_p(ptr noundef %30, i32 noundef %31) #23
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  br label %78

35:                                               ; preds = %4
  %36 = and i32 %6, 65535
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !467
  %40 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %37
  %41 = load ptr, ptr %40, align 8, !tbaa !480
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
  %50 = load i8, ptr %49, align 1, !tbaa !467
  switch i8 %50, label %76 [
    i8 101, label %56
    i8 69, label %51
  ]

51:                                               ; preds = %46
  %52 = getelementptr inbounds [1 x %union.rtunion_def], ptr %44, i64 0, i64 %48
  %53 = load ptr, ptr %52, align 8, !tbaa !467
  %54 = load i32, ptr %53, align 8, !tbaa !626
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %69, label %76

56:                                               ; preds = %46
  %57 = icmp eq i64 %48, 0
  br i1 %57, label %25, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds [1 x %union.rtunion_def], ptr %44, i64 0, i64 %48
  %60 = load ptr, ptr %59, align 8, !tbaa !467
  %61 = tail call fastcc i32 @oprs_not_set_p(ptr noundef %60, ptr noundef %1) #22, !range !507
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %78, label %76

63:                                               ; preds = %69
  %64 = add nuw nsw i64 %70, 1
  %65 = load ptr, ptr %52, align 8, !tbaa !467
  %66 = load i32, ptr %65, align 8, !tbaa !626
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %76, !llvm.loop !1095

69:                                               ; preds = %51, %63
  %70 = phi i64 [ %64, %63 ], [ 0, %51 ]
  %71 = phi ptr [ %65, %63 ], [ %53, %51 ]
  %72 = getelementptr inbounds %struct.rtvec_def, ptr %71, i64 0, i32 1, i64 %70
  %73 = load ptr, ptr %72, align 8, !tbaa !480
  %74 = tail call fastcc i32 @oprs_not_set_p(ptr noundef %73, ptr noundef %1) #22, !range !507
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %63

76:                                               ; preds = %63, %51, %46, %58
  %77 = icmp sgt i64 %47, 1
  br i1 %77, label %46, label %78, !llvm.loop !1096

78:                                               ; preds = %25, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %8, %35, %58, %76, %69, %2, %29
  %79 = phi i32 [ %34, %29 ], [ 1, %2 ], [ 0, %69 ], [ 0, %58 ], [ 1, %76 ], [ 1, %35 ], [ 1, %25 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 0, %8 ]
  ret i32 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_avail_set(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1097 !PGOFuncName !1098 {
  %3 = tail call fastcc ptr @lookup_set(i32 noundef %0) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %60, label %5, !prof !1099

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  br label %7

7:                                                ; preds = %5, %56
  %8 = phi ptr [ %3, %5 ], [ %58, %56 ]
  %9 = phi i32 [ %0, %5 ], [ %57, %56 ]
  %10 = phi ptr [ null, %5 ], [ %52, %56 ]
  %11 = load ptr, ptr @cprop_avin, align 8, !tbaa !480
  %12 = load ptr, ptr %6, align 8, !tbaa !467
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !584
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %11, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !480
  br label %18

18:                                               ; preds = %7, %31
  %19 = phi ptr [ %8, %7 ], [ %32, %31 ]
  %20 = getelementptr inbounds %struct.expr, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !594
  %22 = lshr i32 %21, 6
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %23
  %25 = load i64, ptr %24, align 8, !tbaa !801
  %26 = and i32 %21, 63
  %27 = zext nneg i32 %26 to i64
  %28 = shl nuw i64 1, %27
  %29 = and i64 %28, %25
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34, !prof !1100

31:                                               ; preds = %18
  %32 = tail call fastcc ptr @next_set(i32 noundef %9, ptr noundef nonnull %19) #22
  %33 = icmp eq ptr %32, null
  br i1 %33, label %60, label %18, !prof !1101, !llvm.loop !1102

34:                                               ; preds = %18
  %35 = load ptr, ptr %19, align 8, !tbaa !598
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 23
  br i1 %38, label %41, label %39, !prof !1103

39:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 2334, ptr noundef nonnull @.str.15) #23
  %40 = load ptr, ptr %19, align 8, !tbaa !598
  br label %41

41:                                               ; preds = %34, %39
  %42 = phi ptr [ %35, %34 ], [ %40, %39 ]
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !467
  %45 = tail call fastcc zeroext i8 @gcse_constant_p(ptr noundef %44) #22, !range !514
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50, !prof !1104

47:                                               ; preds = %41
  %48 = tail call fastcc i32 @oprs_not_set_p(ptr noundef %44, ptr noundef nonnull %1) #22, !range !507
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50, !prof !1105

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi ptr [ %19, %50 ], [ %10, %47 ]
  %53 = load i32, ptr %44, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 37
  br i1 %55, label %56, label %60, !prof !1104

56:                                               ; preds = %51
  %57 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %44) #22
  %58 = tail call fastcc ptr @lookup_set(i32 noundef %57) #22
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %7, !prof !1101

60:                                               ; preds = %51, %56, %31, %2
  %61 = phi ptr [ null, %2 ], [ %10, %31 ], [ %52, %56 ], [ %52, %51 ]
  ret ptr %61
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @lookup_set(i32 noundef %0) unnamed_addr #18 !prof !1106 !PGOFuncName !1107 {
  %2 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @set_hash_table, i64 0, i32 1), align 8, !tbaa !588
  %3 = tail call fastcc i32 @hash_set(i32 noundef %0, i32 noundef %2) #22
  %4 = load ptr, ptr @set_hash_table, align 8, !tbaa !589
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !480
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9, !prof !1108

9:                                                ; preds = %1, %16
  %10 = phi ptr [ %18, %16 ], [ %7, %1 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !598
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !467
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef %13) #22
  %15 = icmp eq i32 %14, %0
  br i1 %15, label %20, label %16, !prof !1109

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.expr, ptr %10, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !480
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !prof !1110, !llvm.loop !1111

20:                                               ; preds = %9, %16, %1
  %21 = phi ptr [ null, %1 ], [ null, %16 ], [ %10, %9 ]
  ret ptr %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_set(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #18 !prof !1112 !PGOFuncName !1113 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %1, %2 ], [ %6, %8 ]
  %5 = getelementptr inbounds %struct.expr, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1114
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8, !prof !1115

8:                                                ; preds = %3
  %9 = load ptr, ptr %6, align 8, !tbaa !598
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !467
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef %11) #22
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %14, label %3, !prof !1116, !llvm.loop !1117

14:                                               ; preds = %3, %8
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1118 !PGOFuncName !1119 {
  br label %3

3:                                                ; preds = %9, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %9 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !467
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %15 [
    i16 39, label %9
    i16 120, label %9
    i16 40, label %9
    i16 37, label %10
    i16 43, label %14
  ], !prof !1120

9:                                                ; preds = %3, %3, %3
  br label %3, !llvm.loop !1121

10:                                               ; preds = %3
  %11 = load ptr, ptr @reg_set_bitmap, align 8, !tbaa !480
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #22
  %13 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %12) #23
  br label %15

14:                                               ; preds = %3
  tail call fastcc void @record_last_mem_set_info(ptr noundef %1) #22
  br label %15

15:                                               ; preds = %3, %14, %10
  %16 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !467
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 26
  br i1 %20, label %21, label %22, !prof !1122

21:                                               ; preds = %15
  tail call fastcc void @mark_call(ptr noundef %1) #22
  br label %22

22:                                               ; preds = %21, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_clobber(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1123 !PGOFuncName !1124 {
  br label %3

3:                                                ; preds = %9, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %9 ]
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !467
  %7 = load i32, ptr %6, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %14 [
    i16 39, label %9
    i16 40, label %9
    i16 37, label %10
  ], !prof !1125

9:                                                ; preds = %3, %3
  br label %3, !llvm.loop !1126

10:                                               ; preds = %3
  %11 = load ptr, ptr @reg_set_bitmap, align 8, !tbaa !480
  %12 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #22
  %13 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %12) #23
  br label %15

14:                                               ; preds = %3
  tail call fastcc void @record_last_mem_set_info(ptr noundef %1) #22
  br label %15

15:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @computed_jump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bypass_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1127 !PGOFuncName !1128 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  %6 = icmp ne ptr %1, null
  %7 = select i1 %6, ptr %1, ptr %2, !prof !1129
  store i32 0, ptr @reg_use_count, align 4, !tbaa !476
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 1
  tail call void @note_uses(ptr noundef nonnull %8, ptr noundef nonnull @find_used_regs, ptr noundef null) #23
  %9 = tail call ptr @find_reg_equal_equiv_note(ptr noundef %7) #23
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !1129

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  tail call void @find_used_regs(ptr noundef nonnull %12, ptr noundef null) #22
  br label %13

13:                                               ; preds = %11, %3
  %14 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #22
  store i32 0, ptr %5, align 8, !tbaa.struct !749
  %15 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %14, ptr %15, align 8, !tbaa.struct !750
  %16 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %14, ptr noundef nonnull %4) #22, !range !514
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18, !prof !1130

18:                                               ; preds = %13, %24
  %19 = load ptr, ptr %4, align 8, !tbaa !480
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !575
  %22 = and i32 %21, 32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24, !prof !1131

24:                                               ; preds = %18
  call fastcc void @ei_next(ptr noundef nonnull %5) #22
  %25 = load i32, ptr %5, align 8
  %26 = load ptr, ptr %15, align 8
  %27 = call fastcc zeroext i8 @ei_cond(i32 %25, ptr %26, ptr noundef nonnull %4) #22, !range !514
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %18, !prof !1132, !llvm.loop !1133

29:                                               ; preds = %24, %18, %13
  %30 = phi i1 [ false, %13 ], [ %23, %18 ], [ %23, %24 ]
  store i32 0, ptr %5, align 8, !tbaa.struct !749
  store ptr %14, ptr %15, align 8, !tbaa.struct !750
  %31 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %14) #22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %196, label %33, !prof !683

33:                                               ; preds = %29, %190
  %34 = phi ptr [ %191, %190 ], [ %14, %29 ]
  %35 = phi i32 [ %192, %190 ], [ 0, %29 ]
  %36 = phi ptr [ %194, %190 ], [ %31, %29 ]
  %37 = phi i32 [ %193, %190 ], [ 0, %29 ]
  br label %38

38:                                               ; preds = %33, %46
  %39 = phi ptr [ %34, %33 ], [ %48, %46 ]
  %40 = phi i32 [ %35, %33 ], [ %47, %46 ]
  %41 = phi ptr [ %36, %33 ], [ %49, %46 ]
  %42 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !575
  %44 = and i32 %43, 14
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46, !prof !1134

46:                                               ; preds = %38, %57, %51
  call fastcc void @ei_next(ptr noundef nonnull %5) #22
  %47 = load i32, ptr %5, align 8
  %48 = load ptr, ptr %15, align 8
  %49 = tail call fastcc ptr @ei_safe_edge(i32 %47, ptr %48) #22
  %50 = icmp eq ptr %49, null
  br i1 %50, label %196, label %38, !prof !1135, !llvm.loop !1136

51:                                               ; preds = %38
  %52 = load ptr, ptr %41, align 8, !tbaa !1137
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !584
  %55 = load i32, ptr @bypass_last_basic_block, align 4, !tbaa !476
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %46, !prof !1134

57:                                               ; preds = %51
  %58 = and i32 %43, 32
  %59 = icmp eq i32 %58, 0
  %60 = and i1 %30, %59
  br i1 %60, label %46, label %61, !prof !1138

61:                                               ; preds = %57
  %62 = load i32, ptr @reg_use_count, align 4, !tbaa !476
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %187, !prof !1139

64:                                               ; preds = %61, %182
  %65 = phi i64 [ %183, %182 ], [ 0, %61 ]
  %66 = getelementptr inbounds [8 x %struct.reg_use], ptr @reg_use_table, i64 0, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !556
  %68 = tail call fastcc i32 @rhs_regno(ptr noundef %67) #22
  %69 = load ptr, ptr %41, align 8, !tbaa !1137
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !584
  %72 = tail call fastcc ptr @find_bypass_set(i32 noundef %68, i32 noundef %71) #22
  %73 = icmp eq ptr %72, null
  br i1 %73, label %182, label %74, !prof !1140

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !467
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78, !prof !1141

78:                                               ; preds = %74
  %79 = load ptr, ptr %66, align 8, !tbaa !556
  %80 = tail call fastcc zeroext i8 @reg_killed_on_edge(ptr noundef %79, ptr noundef nonnull %41) #22, !range !514
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %182, !prof !1142

82:                                               ; preds = %78, %74
  %83 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %84 = tail call ptr @pc_set(ptr noundef %2) #23
  %85 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !467
  br i1 %6, label %87, label %94, !prof !1143

87:                                               ; preds = %82
  %88 = load ptr, ptr %83, align 8, !tbaa !467
  %89 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !467
  %91 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 0, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !467
  %93 = tail call ptr @simplify_replace_rtx(ptr noundef %86, ptr noundef %90, ptr noundef %92) #23
  br label %94

94:                                               ; preds = %87, %82
  %95 = phi ptr [ %93, %87 ], [ %86, %82 ]
  %96 = load ptr, ptr %66, align 8, !tbaa !556
  %97 = load ptr, ptr %72, align 8, !tbaa !598
  %98 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !467
  %100 = tail call ptr @simplify_replace_rtx(ptr noundef %95, ptr noundef %96, ptr noundef %99) #23
  %101 = load ptr, ptr @global_rtl, align 16, !tbaa !480
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %103, label %121, !prof !1144

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !568
  %106 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %105, i32 noundef 0) #22
  %107 = getelementptr inbounds %struct.edge_def, ptr %106, i64 0, i32 7
  %108 = load i32, ptr %107, align 8, !tbaa !575
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113, !prof !1145

111:                                              ; preds = %103
  %112 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %105, i32 noundef 1) #22
  br label %113

113:                                              ; preds = %103, %111
  %114 = phi ptr [ %112, %111 ], [ %106, %103 ]
  %115 = getelementptr inbounds %struct.edge_def, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !467
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %182, !prof !1146

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.edge_def, ptr %114, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !580
  br label %136

121:                                              ; preds = %94
  %122 = load i32, ptr %100, align 8
  %123 = and i32 %122, 65535
  %124 = icmp eq i32 %123, 44
  br i1 %124, label %125, label %182, !prof !1147

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !467
  %128 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1, i32 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !467
  %130 = tail call ptr @find_edge(ptr noundef %0, ptr noundef %129) #23
  %131 = icmp eq ptr %130, null
  br i1 %131, label %136, label %132, !prof !1148

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.edge_def, ptr %130, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !467
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %182, !prof !1149

136:                                              ; preds = %118, %132, %125
  %137 = phi ptr [ %129, %132 ], [ %129, %125 ], [ %120, %118 ]
  %138 = icmp ne ptr %137, null
  %139 = and i1 %6, %138
  br i1 %139, label %140, label %144, !prof !1150

140:                                              ; preds = %136
  %141 = load ptr, ptr %41, align 8, !tbaa !1137
  %142 = tail call ptr @find_edge(ptr noundef %141, ptr noundef nonnull %137) #23
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %182, !prof !1151

144:                                              ; preds = %140, %136
  %145 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !580
  %147 = icmp eq ptr %137, null
  %148 = icmp eq ptr %137, %146
  %149 = select i1 %147, i1 true, i1 %148
  br i1 %149, label %182, label %150, !prof !1152

150:                                              ; preds = %144
  %151 = load ptr, ptr @cfun, align 8, !tbaa !480
  %152 = getelementptr inbounds %struct.function, ptr %151, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !509
  %154 = getelementptr inbounds %struct.control_flow_graph, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !524
  %156 = icmp eq ptr %137, %155
  br i1 %156, label %182, label %157, !prof !1153

157:                                              ; preds = %150
  %158 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %41, ptr noundef nonnull %137) #23
  br i1 %6, label %159, label %162, !prof !1151

159:                                              ; preds = %157
  %160 = load ptr, ptr %83, align 8, !tbaa !467
  %161 = tail call ptr @copy_insn(ptr noundef %160) #23
  tail call void @insert_insn_on_edge(ptr noundef %161, ptr noundef nonnull %41) #23
  br label %162

162:                                              ; preds = %159, %157
  %163 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %164 = icmp eq ptr %163, null
  br i1 %164, label %190, label %165, !prof !1151

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %167 = load i32, ptr %166, align 8, !tbaa !467
  %168 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %163, ptr noundef nonnull @.str.24, i32 noundef %68, i32 noundef %167) #22
  %169 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %170 = load ptr, ptr %72, align 8, !tbaa !598
  %171 = getelementptr inbounds %struct.rtx_def, ptr %170, i64 0, i32 1, i32 0, i32 0, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !467
  tail call void @print_rtl(ptr noundef %169, ptr noundef %172) #23
  %173 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %174 = load ptr, ptr %41, align 8, !tbaa !1137
  %175 = getelementptr inbounds %struct.basic_block_def, ptr %174, i64 0, i32 9
  %176 = load i32, ptr %175, align 8, !tbaa !584
  %177 = getelementptr inbounds %struct.basic_block_def, ptr %146, i64 0, i32 9
  %178 = load i32, ptr %177, align 8, !tbaa !584
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %137, i64 0, i32 9
  %180 = load i32, ptr %179, align 8, !tbaa !584
  %181 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef nonnull @.str.25, i32 noundef %176, i32 noundef %178, i32 noundef %180) #22
  br label %190

182:                                              ; preds = %140, %132, %121, %113, %64, %78, %150, %144
  %183 = add nuw nsw i64 %65, 1
  %184 = load i32, ptr @reg_use_count, align 4, !tbaa !476
  %185 = sext i32 %184 to i64
  %186 = icmp slt i64 %183, %185
  br i1 %186, label %64, label %187, !prof !1154, !llvm.loop !1155

187:                                              ; preds = %182, %61
  call fastcc void @ei_next(ptr noundef nonnull %5) #22
  %188 = load i32, ptr %5, align 8
  %189 = load ptr, ptr %15, align 8
  br label %190

190:                                              ; preds = %162, %165, %187
  %191 = phi ptr [ %189, %187 ], [ %39, %165 ], [ %39, %162 ]
  %192 = phi i32 [ %188, %187 ], [ %40, %165 ], [ %40, %162 ]
  %193 = phi i32 [ %37, %187 ], [ 1, %165 ], [ 1, %162 ]
  %194 = tail call fastcc ptr @ei_safe_edge(i32 %192, ptr %191) #22
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %33, !prof !1156, !llvm.loop !1136

196:                                              ; preds = %190, %46, %29
  %197 = phi i32 [ 0, %29 ], [ %37, %46 ], [ %193, %190 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret i32 %197
}

; Function Attrs: optsize
declare void @commit_edge_insertions() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1157 !PGOFuncName !1158 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #22, !range !514
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1159

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #22
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !480
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_bypass_set(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1160 !PGOFuncName !1161 {
  %3 = tail call fastcc ptr @lookup_set(i32 noundef %0) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %51, label %5, !prof !683

5:                                                ; preds = %2
  %6 = sext i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %47
  %8 = phi ptr [ %3, %5 ], [ %49, %47 ]
  %9 = phi i32 [ %0, %5 ], [ %48, %47 ]
  %10 = phi ptr [ null, %5 ], [ %43, %47 ]
  %11 = load ptr, ptr @cprop_avout, align 8, !tbaa !480
  %12 = getelementptr inbounds ptr, ptr %11, i64 %6
  %13 = load ptr, ptr %12, align 8, !tbaa !480
  br label %14

14:                                               ; preds = %7, %27
  %15 = phi ptr [ %8, %7 ], [ %28, %27 ]
  %16 = getelementptr inbounds %struct.expr, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !594
  %18 = lshr i32 %17, 6
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds %struct.simple_bitmap_def, ptr %13, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !801
  %22 = and i32 %17, 63
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = and i64 %24, %21
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30, !prof !1162

27:                                               ; preds = %14
  %28 = tail call fastcc ptr @next_set(i32 noundef %9, ptr noundef nonnull %15) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %14, !prof !1163, !llvm.loop !1164

30:                                               ; preds = %14
  %31 = load ptr, ptr %15, align 8, !tbaa !598
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 23
  br i1 %34, label %37, label %35, !prof !1165

35:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 2908, ptr noundef nonnull @.str.15) #23
  %36 = load ptr, ptr %15, align 8, !tbaa !598
  br label %37

37:                                               ; preds = %30, %35
  %38 = phi ptr [ %31, %30 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !467
  %41 = tail call fastcc zeroext i8 @gcse_constant_p(ptr noundef %40) #22, !range !514
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %42, ptr %10, ptr %15, !prof !1166
  %44 = load i32, ptr %40, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 37
  br i1 %46, label %47, label %51, !prof !1166

47:                                               ; preds = %37
  %48 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %40) #22
  %49 = tail call fastcc ptr @lookup_set(i32 noundef %48) #22
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %7, !prof !1167

51:                                               ; preds = %37, %47, %27, %2
  %52 = phi ptr [ null, %2 ], [ %10, %27 ], [ %43, %47 ], [ %43, %37 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reg_killed_on_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1168 !PGOFuncName !1169 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !467
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6, !prof !1170

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %17, %15 ], [ %4, %2 ]
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -7
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %15, !prof !1171

12:                                               ; preds = %6
  %13 = tail call i32 @reg_set_p(ptr noundef %0, ptr noundef nonnull %7) #23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19, !prof !1172

15:                                               ; preds = %6, %12
  %16 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !467
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !prof !1173, !llvm.loop !1174

19:                                               ; preds = %12, %15, %2
  %20 = phi i8 [ 0, %2 ], [ 0, %15 ], [ 1, %12 ]
  ret i8 %20
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @copy_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @reg_set_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_modify_mem_tables() unnamed_addr #0 !prof !542 !PGOFuncName !1175 {
  tail call fastcc void @clear_modify_mem_tables() #22
  %1 = load ptr, ptr @modify_mem_list, align 8, !tbaa !480
  tail call void @free(ptr noundef %1) #22
  %2 = load ptr, ptr @canon_modify_mem_list, align 8, !tbaa !480
  tail call void @free(ptr noundef %2) #22
  store ptr null, ptr @modify_mem_list, align 8, !tbaa !480
  store ptr null, ptr @canon_modify_mem_list, align 8, !tbaa !480
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_rtl_pre() #0 !prof !1176 !PGOFuncName !1177 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !476
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_gcse, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %19, !prof !1178

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !480
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19, !prof !1179

12:                                               ; preds = %6
  %13 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef nonnull %7) #23
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15, !prof !1180

15:                                               ; preds = %12
  %16 = tail call zeroext i8 @dbg_cnt(i32 noundef 23) #23
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %15, %12, %6, %0
  %20 = phi i8 [ 0, %12 ], [ 0, %6 ], [ 0, %0 ], [ %18, %15 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_rtl_pre() #0 !prof !1181 !PGOFuncName !1182 {
  %1 = tail call zeroext i8 @delete_unreachable_blocks() #23
  tail call void @df_analyze() #23
  %2 = tail call fastcc i32 @one_pre_gcse_pass() #22, !range !507
  %3 = load i32, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !476
  %4 = or i32 %3, %2
  store i32 %4, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !476
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @one_pre_gcse_pass() unnamed_addr #0 !prof !1181 !PGOFuncName !1183 {
  store i32 0, ptr @gcse_subst_count, align 4, !tbaa !476
  store i32 0, ptr @gcse_create_count, align 4, !tbaa !476
  %1 = load ptr, ptr @cfun, align 8, !tbaa !480
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !509
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !511
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %61, label %7, !prof !1184

7:                                                ; preds = %0
  %8 = tail call fastcc zeroext i8 @is_too_expensive(ptr noundef nonnull @.str.27) #22, !range !514
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %61, !prof !1185

10:                                               ; preds = %7
  tail call void @init_alias_analysis() #23
  store i32 0, ptr @bytes_used, align 4, !tbaa !476
  %11 = tail call i32 @_obstack_begin(ptr noundef nonnull @gcse_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #23
  tail call fastcc void @alloc_gcse_mem() #22
  tail call fastcc void @alloc_hash_table(ptr noundef nonnull @expr_hash_table, i32 noundef 0) #22
  tail call void @add_noreturn_fake_exit_edges() #23
  %12 = load i32, ptr @flag_gcse_lm, align 4, !tbaa !476
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !1186

14:                                               ; preds = %10
  tail call fastcc void @compute_ld_motion_mems() #22
  br label %15

15:                                               ; preds = %14, %10
  tail call fastcc void @compute_hash_table(ptr noundef nonnull @expr_hash_table) #22
  tail call fastcc void @trim_ld_motion_mems() #22
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !1185

18:                                               ; preds = %15
  tail call fastcc void @dump_hash_table(ptr noundef nonnull %16, ptr noundef nonnull @.str.28, ptr noundef nonnull @expr_hash_table) #22
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !518
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22, !prof !1187

22:                                               ; preds = %19
  %23 = load ptr, ptr @cfun, align 8, !tbaa !480
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !509
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !517
  tail call fastcc void @alloc_pre_mem(i32 noundef %27, i32 noundef %20) #22
  tail call fastcc void @compute_pre_data() #22
  %28 = tail call fastcc i32 @pre_gcse() #22, !range !507
  %29 = load ptr, ptr @edge_list, align 8, !tbaa !480
  tail call void @free_edge_list(ptr noundef %29) #23
  tail call fastcc void @free_pre_mem() #22
  br label %30

30:                                               ; preds = %22, %19
  %31 = phi i32 [ %28, %22 ], [ 0, %19 ]
  tail call fastcc void @free_ldst_mems() #22
  tail call void @remove_fake_exit_edges() #23
  tail call fastcc void @free_hash_table(ptr noundef nonnull @expr_hash_table) #22
  tail call fastcc void @free_gcse_mem() #22
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 1), align 8, !tbaa !535
  %33 = ptrtoint ptr %32 to i64
  %34 = sub i64 0, %33
  store i64 %34, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !537
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %43, !prof !1186

36:                                               ; preds = %30
  %37 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !539
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %38, %33
  %40 = icmp sgt i64 %39, %34
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = getelementptr inbounds i8, ptr %32, i64 %34
  store ptr %42, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !540
  store ptr %42, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !541
  br label %45

43:                                               ; preds = %36, %30
  %44 = getelementptr inbounds i8, ptr %32, i64 %34
  tail call void @obstack_free(ptr noundef nonnull @gcse_obstack, ptr noundef %44) #23
  br label %45

45:                                               ; preds = %43, %41
  tail call void @end_alias_analysis() #23
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %47 = icmp eq ptr %46, null
  br i1 %47, label %61, label %48, !prof !1185

48:                                               ; preds = %45
  %49 = tail call ptr @current_function_name() #23
  %50 = load ptr, ptr @cfun, align 8, !tbaa !480
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !509
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !511
  %55 = load i32, ptr @bytes_used, align 4, !tbaa !476
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %46, ptr noundef nonnull @.str.29, ptr noundef %49, i32 noundef %54, i32 noundef %55) #22
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %58 = load i32, ptr @gcse_subst_count, align 4, !tbaa !476
  %59 = load i32, ptr @gcse_create_count, align 4, !tbaa !476
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.30, i32 noundef %58, i32 noundef %59) #22
  br label %61

61:                                               ; preds = %45, %48, %0, %7
  %62 = phi i32 [ 0, %7 ], [ 0, %0 ], [ %31, %48 ], [ %31, %45 ]
  ret i32 %62
}

; Function Attrs: optsize
declare void @init_alias_analysis() local_unnamed_addr #3

; Function Attrs: optsize
declare void @add_noreturn_fake_exit_edges() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_ld_motion_mems() unnamed_addr #0 !prof !1188 !PGOFuncName !1189 {
  store ptr null, ptr @pre_ldst_mems, align 8, !tbaa !480
  %1 = tail call ptr @htab_create(i64 noundef 13, ptr noundef nonnull @pre_ldst_expr_hash, ptr noundef nonnull @pre_ldst_expr_eq, ptr noundef null) #23
  store ptr %1, ptr @pre_ldst_table, align 8, !tbaa !480
  %2 = load ptr, ptr @cfun, align 8, !tbaa !480
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !509
  %5 = load ptr, ptr %4, align 8, !tbaa !521
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !522
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !524
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %96, label %11, !prof !1190

11:                                               ; preds = %0, %87
  %12 = phi ptr [ %88, %87 ], [ %2, %0 ]
  %13 = phi ptr [ %90, %87 ], [ %7, %0 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !467
  %16 = load ptr, ptr %15, align 8, !tbaa !467
  %17 = icmp eq ptr %16, null
  br i1 %17, label %87, label %18, !prof !1190

18:                                               ; preds = %11, %81
  %19 = phi ptr [ %83, %81 ], [ %16, %11 ]
  %20 = load ptr, ptr %14, align 8, !tbaa !467
  %21 = getelementptr inbounds %struct.rtl_bb_info, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !526
  %23 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1, i32 0, i32 0, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !467
  %25 = icmp eq ptr %19, %24
  br i1 %25, label %85, label %26, !prof !1191

26:                                               ; preds = %18
  %27 = load i32, ptr %19, align 8
  %28 = and i32 %27, 65535
  %29 = add nsw i32 %28, -11
  %30 = icmp ult i32 %29, -3
  br i1 %30, label %81, label %31, !prof !1192

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !467
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 23
  br i1 %36, label %37, label %80, !prof !1193

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %39 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !467
  %41 = load ptr, ptr %38, align 8, !tbaa !467
  %42 = load i32, ptr %40, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 43
  br i1 %44, label %45, label %59, !prof !1194

45:                                               ; preds = %37
  %46 = tail call fastcc i32 @simple_mem(ptr noundef nonnull %40) #22, !range !507
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48, !prof !1195

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @ldst_entry(ptr noundef nonnull %40) #22
  %50 = load i32, ptr %41, align 8
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 37
  br i1 %52, label %53, label %57, !prof !1196

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.ls_expr, ptr %49, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !1197
  %56 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %19, ptr noundef %55) #23
  store ptr %56, ptr %54, align 8, !tbaa !1197
  br label %60

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.ls_expr, ptr %49, i64 0, i32 6
  store i32 1, ptr %58, align 8, !tbaa !993
  br label %60

59:                                               ; preds = %45, %37
  tail call fastcc void @invalidate_any_buried_refs(ptr noundef nonnull %40) #22
  br label %60

60:                                               ; preds = %53, %57, %59
  %61 = load i32, ptr %41, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 43
  br i1 %63, label %64, label %81, !prof !1198

64:                                               ; preds = %60
  %65 = tail call fastcc i32 @simple_mem(ptr noundef nonnull %41) #22, !range !507
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %81, label %67, !prof !1199

67:                                               ; preds = %64
  %68 = tail call fastcc ptr @ldst_entry(ptr noundef nonnull %41) #22
  %69 = load i32, ptr %40, align 8
  %70 = trunc i32 %69 to i16
  switch i16 %70, label %71 [
    i16 43, label %78
    i16 17, label %78
  ], !prof !1200

71:                                               ; preds = %67
  %72 = tail call zeroext i8 @can_assign_to_reg_without_clobbers_p(ptr noundef nonnull %40) #22, !range !514
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %78, label %74, !prof !1201

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.ls_expr, ptr %68, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !1202
  %77 = tail call ptr @alloc_INSN_LIST(ptr noundef nonnull %19, ptr noundef %76) #23
  store ptr %77, ptr %75, align 8, !tbaa !1202
  br label %81

78:                                               ; preds = %67, %67, %71
  %79 = getelementptr inbounds %struct.ls_expr, ptr %68, i64 0, i32 6
  store i32 1, ptr %79, align 8, !tbaa !993
  br label %81

80:                                               ; preds = %31
  tail call fastcc void @invalidate_any_buried_refs(ptr noundef nonnull %33) #22
  br label %81

81:                                               ; preds = %26, %60, %64, %78, %74, %80
  %82 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %83 = load ptr, ptr %82, align 8, !tbaa !467
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %18, !prof !1203, !llvm.loop !1204

85:                                               ; preds = %18, %81
  %86 = load ptr, ptr @cfun, align 8, !tbaa !480
  br label %87

87:                                               ; preds = %85, %11
  %88 = phi ptr [ %86, %85 ], [ %12, %11 ]
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !522
  %91 = getelementptr inbounds %struct.function, ptr %88, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !509
  %93 = getelementptr inbounds %struct.control_flow_graph, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !524
  %95 = icmp eq ptr %90, %94
  br i1 %95, label %96, label %11, !prof !1205, !llvm.loop !1206

96:                                               ; preds = %87, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @trim_ld_motion_mems() unnamed_addr #0 !prof !1188 !PGOFuncName !1207 {
  %1 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !480
  %2 = icmp eq ptr %1, null
  br i1 %2, label %43, label %3, !prof !1190

3:                                                ; preds = %0, %39
  %4 = phi ptr [ %41, %39 ], [ %1, %0 ]
  %5 = phi ptr [ %40, %39 ], [ @pre_ldst_mems, %0 ]
  %6 = getelementptr inbounds %struct.ls_expr, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !993
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33, !prof !1208

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ls_expr, ptr %4, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !1209
  %12 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !588
  %13 = urem i32 %11, %12
  %14 = load ptr, ptr @expr_hash_table, align 8, !tbaa !589
  %15 = zext i32 %13 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !480
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19, !prof !1210

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.ls_expr, ptr %4, i64 0, i32 1
  br label %21

21:                                               ; preds = %19, %27
  %22 = phi ptr [ %17, %19 ], [ %29, %27 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !598
  %24 = load ptr, ptr %20, align 8, !tbaa !990
  %25 = tail call fastcc i32 @expr_equiv_p(ptr noundef %23, ptr noundef %24) #22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31, !prof !1211

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.expr, ptr %22, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !480
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %21, !prof !1212, !llvm.loop !1213

31:                                               ; preds = %21
  store ptr %22, ptr %4, align 8, !tbaa !1214
  %32 = getelementptr inbounds %struct.ls_expr, ptr %4, i64 0, i32 5
  br label %39

33:                                               ; preds = %27, %9, %3
  %34 = getelementptr inbounds %struct.ls_expr, ptr %4, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !1215
  store ptr %35, ptr %5, align 8, !tbaa !480
  %36 = load ptr, ptr @pre_ldst_table, align 8, !tbaa !480
  %37 = getelementptr inbounds %struct.ls_expr, ptr %4, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !1209
  tail call void @htab_remove_elt_with_hash(ptr noundef %36, ptr noundef nonnull %4, i32 noundef %38) #23
  tail call fastcc void @free_ldst_entry(ptr noundef nonnull %4) #22
  br label %39

39:                                               ; preds = %33, %31
  %40 = phi ptr [ %32, %31 ], [ %5, %33 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !480
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %3, !prof !1216, !llvm.loop !1217

43:                                               ; preds = %39, %0
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46, !prof !1185

46:                                               ; preds = %43
  %47 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !480
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call fastcc void @print_ldst_list(ptr noundef nonnull %44) #22
  br label %50

50:                                               ; preds = %49, %46, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_pre_mem(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1218 !PGOFuncName !1219 {
  %3 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #23
  store ptr %3, ptr @transp, align 8, !tbaa !480
  %4 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #23
  store ptr %4, ptr @comp, align 8, !tbaa !480
  %5 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #23
  store ptr %5, ptr @antloc, align 8, !tbaa !480
  store ptr null, ptr @pre_insert_map, align 8, !tbaa !480
  store ptr null, ptr @pre_delete_map, align 8, !tbaa !480
  %6 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #23
  store ptr %6, ptr @ae_kill, align 8, !tbaa !480
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_pre_data() unnamed_addr #0 !prof !1218 !PGOFuncName !1220 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @transp, align 8, !tbaa !480
  %4 = load ptr, ptr @comp, align 8, !tbaa !480
  %5 = load ptr, ptr @antloc, align 8, !tbaa !480
  tail call fastcc void @compute_local_properties(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull @expr_hash_table) #22
  %6 = load ptr, ptr @ae_kill, align 8, !tbaa !480
  %7 = load ptr, ptr @cfun, align 8, !tbaa !480
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !509
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !517
  tail call void @sbitmap_vector_zero(ptr noundef %6, i32 noundef %11) #23
  %12 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !518
  %13 = tail call ptr @sbitmap_alloc(i32 noundef %12) #23
  tail call void @sbitmap_zero(ptr noundef %13) #23
  %14 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !588
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %42, label %16, !prof !1221

16:                                               ; preds = %0, %37
  %17 = phi i32 [ %38, %37 ], [ %14, %0 ]
  %18 = phi i64 [ %39, %37 ], [ 0, %0 ]
  %19 = load ptr, ptr @expr_hash_table, align 8, !tbaa !589
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !480
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23, !prof !1222

23:                                               ; preds = %16, %31
  %24 = phi ptr [ %33, %31 ], [ %21, %16 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !598
  %26 = tail call i32 @may_trap_p(ptr noundef %25) #23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28, !prof !1223

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.expr, ptr %24, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !594
  tail call fastcc void @SET_BIT(ptr noundef %13, i32 noundef %30) #22
  br label %31

31:                                               ; preds = %23, %28
  %32 = getelementptr inbounds %struct.expr, ptr %24, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !480
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %23, !prof !1224, !llvm.loop !1225

35:                                               ; preds = %31
  %36 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !588
  br label %37

37:                                               ; preds = %35, %16
  %38 = phi i32 [ %36, %35 ], [ %17, %16 ]
  %39 = add nuw nsw i64 %18, 1
  %40 = zext i32 %38 to i64
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %16, label %42, !prof !1226, !llvm.loop !1227

42:                                               ; preds = %37, %0
  %43 = load ptr, ptr @cfun, align 8, !tbaa !480
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !509
  %46 = load ptr, ptr %45, align 8, !tbaa !521
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !522
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !524
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %108, label %52, !prof !1221

52:                                               ; preds = %42
  %53 = getelementptr inbounds i8, ptr %2, i64 8
  br label %54

54:                                               ; preds = %52, %82
  %55 = phi ptr [ %48, %52 ], [ %101, %82 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #24
  %56 = tail call fastcc ptr @ei_start_1(ptr noundef %55) #22
  store i32 0, ptr %2, align 8, !tbaa.struct !749
  store ptr %56, ptr %53, align 8, !tbaa.struct !750
  %57 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %56, ptr noundef nonnull %1) #22, !range !514
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %82, label %59, !prof !1228

59:                                               ; preds = %54, %77
  %60 = load ptr, ptr %1, align 8, !tbaa !480
  %61 = getelementptr inbounds %struct.edge_def, ptr %60, i64 0, i32 7
  %62 = load i32, ptr %61, align 8, !tbaa !575
  %63 = and i32 %62, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %77, label %65, !prof !1229

65:                                               ; preds = %59
  %66 = load ptr, ptr @antloc, align 8, !tbaa !480
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !584
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %66, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !480
  tail call void @sbitmap_difference(ptr noundef %71, ptr noundef %71, ptr noundef %13) #23
  %72 = load ptr, ptr @transp, align 8, !tbaa !480
  %73 = load i32, ptr %67, align 8, !tbaa !584
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %72, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !480
  tail call void @sbitmap_difference(ptr noundef %76, ptr noundef %76, ptr noundef %13) #23
  br label %82

77:                                               ; preds = %59
  call fastcc void @ei_next(ptr noundef nonnull %2) #22
  %78 = load i32, ptr %2, align 8
  %79 = load ptr, ptr %53, align 8
  %80 = call fastcc zeroext i8 @ei_cond(i32 %78, ptr %79, ptr noundef nonnull %1) #22, !range !514
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %59, !prof !1230, !llvm.loop !1231

82:                                               ; preds = %77, %54, %65
  %83 = load ptr, ptr @ae_kill, align 8, !tbaa !480
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 9
  %85 = load i32, ptr %84, align 8, !tbaa !584
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %83, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !480
  %89 = load ptr, ptr @transp, align 8, !tbaa !480
  %90 = getelementptr inbounds ptr, ptr %89, i64 %86
  %91 = load ptr, ptr %90, align 8, !tbaa !480
  %92 = load ptr, ptr @comp, align 8, !tbaa !480
  %93 = getelementptr inbounds ptr, ptr %92, i64 %86
  %94 = load ptr, ptr %93, align 8, !tbaa !480
  tail call void @sbitmap_a_or_b(ptr noundef %88, ptr noundef %91, ptr noundef %94) #23
  %95 = load ptr, ptr @ae_kill, align 8, !tbaa !480
  %96 = load i32, ptr %84, align 8, !tbaa !584
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %95, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !480
  tail call void @sbitmap_not(ptr noundef %99, ptr noundef %99) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !522
  %102 = load ptr, ptr @cfun, align 8, !tbaa !480
  %103 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !509
  %105 = getelementptr inbounds %struct.control_flow_graph, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !524
  %107 = icmp eq ptr %101, %106
  br i1 %107, label %108, label %54, !prof !1232, !llvm.loop !1233

108:                                              ; preds = %82, %42
  %109 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !518
  %110 = load ptr, ptr @transp, align 8, !tbaa !480
  %111 = load ptr, ptr @comp, align 8, !tbaa !480
  %112 = load ptr, ptr @antloc, align 8, !tbaa !480
  %113 = load ptr, ptr @ae_kill, align 8, !tbaa !480
  %114 = tail call ptr @pre_edge_lcm(i32 noundef %109, ptr noundef %110, ptr noundef %111, ptr noundef %112, ptr noundef %113, ptr noundef nonnull @pre_insert_map, ptr noundef nonnull @pre_delete_map) #23
  store ptr %114, ptr @edge_list, align 8, !tbaa !480
  %115 = load ptr, ptr @antloc, align 8, !tbaa !480
  tail call void @free(ptr noundef %115) #22
  store ptr null, ptr @antloc, align 8, !tbaa !480
  %116 = load ptr, ptr @ae_kill, align 8, !tbaa !480
  tail call void @free(ptr noundef %116) #22
  store ptr null, ptr @ae_kill, align 8, !tbaa !480
  %117 = load ptr, ptr %13, align 8, !tbaa !1057
  tail call void @free(ptr noundef %117) #22
  tail call void @free(ptr noundef %13) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @pre_gcse() unnamed_addr #0 !prof !1218 !PGOFuncName !1234 {
  %1 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !518
  %2 = zext i32 %1 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 8) #23
  %4 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !588
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6, !prof !1221

6:                                                ; preds = %0
  %7 = zext i32 %4 to i64
  br label %8

8:                                                ; preds = %6, %23
  %9 = phi i64 [ 0, %6 ], [ %24, %23 ]
  %10 = load ptr, ptr @expr_hash_table, align 8, !tbaa !589
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !480
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !1222

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %21, %14 ], [ %12, %8 ]
  %16 = getelementptr inbounds %struct.expr, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !594
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %3, i64 %18
  store ptr %15, ptr %19, align 8, !tbaa !480
  %20 = getelementptr inbounds %struct.expr, ptr %15, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !480
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !prof !1224, !llvm.loop !1235

23:                                               ; preds = %14, %8
  %24 = add nuw nsw i64 %9, 1
  %25 = icmp eq i64 %24, %7
  br i1 %25, label %26, label %8, !prof !1236, !llvm.loop !1237

26:                                               ; preds = %23, %0
  %27 = tail call fastcc i32 @pre_delete() #22, !range !507
  %28 = load ptr, ptr @edge_list, align 8, !tbaa !480
  %29 = tail call fastcc i32 @pre_edge_insert(ptr noundef %28, ptr noundef %3) #22, !range !507
  tail call fastcc void @pre_insert_copies() #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31, !prof !1238

31:                                               ; preds = %26
  tail call void @commit_edge_insertions() #23
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i32 [ 1, %31 ], [ %27, %26 ]
  tail call void @free(ptr noundef %3) #22
  ret i32 %33
}

; Function Attrs: optsize
declare void @free_edge_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @free_pre_mem() unnamed_addr #5 !prof !1218 !PGOFuncName !1239 {
  %1 = load ptr, ptr @transp, align 8, !tbaa !480
  tail call void @free(ptr noundef %1) #22
  %2 = load ptr, ptr @comp, align 8, !tbaa !480
  tail call void @free(ptr noundef %2) #22
  %3 = load ptr, ptr @pre_insert_map, align 8, !tbaa !480
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !1240

5:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %3) #22
  br label %6

6:                                                ; preds = %5, %0
  %7 = load ptr, ptr @pre_delete_map, align 8, !tbaa !480
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !1240

9:                                                ; preds = %6
  tail call void @free(ptr noundef nonnull %7) #22
  br label %10

10:                                               ; preds = %9, %6
  store ptr null, ptr @comp, align 8, !tbaa !480
  store ptr null, ptr @transp, align 8, !tbaa !480
  store ptr null, ptr @pre_delete_map, align 8, !tbaa !480
  store ptr null, ptr @pre_insert_map, align 8, !tbaa !480
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_ldst_mems() unnamed_addr #0 !prof !1188 !PGOFuncName !1241 {
  %1 = load ptr, ptr @pre_ldst_table, align 8, !tbaa !480
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1186

3:                                                ; preds = %0
  tail call void @htab_delete(ptr noundef nonnull %1) #23
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @pre_ldst_table, align 8, !tbaa !480
  %5 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !480
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7, !prof !1190

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %11, %7 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.ls_expr, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !1215
  store ptr %10, ptr @pre_ldst_mems, align 8, !tbaa !480
  tail call fastcc void @free_ldst_entry(ptr noundef nonnull %8) #22
  %11 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !480
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !prof !1242, !llvm.loop !1243

13:                                               ; preds = %7, %4
  store ptr null, ptr @pre_ldst_mems, align 8, !tbaa !480
  ret void
}

; Function Attrs: optsize
declare void @remove_fake_exit_edges() local_unnamed_addr #3

; Function Attrs: optsize
declare void @end_alias_analysis() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pre_ldst_expr_hash(ptr nocapture noundef readonly %0) #0 !prof !1244 !PGOFuncName !1245 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  store i32 0, ptr %2, align 4, !tbaa !476
  %3 = getelementptr inbounds %struct.ls_expr, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !990
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = call i32 @hash_rtx(ptr noundef nonnull %4, i32 noundef %7, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pre_ldst_expr_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !1246 !PGOFuncName !1247 {
  %3 = getelementptr inbounds %struct.ls_expr, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !990
  %5 = getelementptr inbounds %struct.ls_expr, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !990
  %7 = tail call fastcc i32 @expr_equiv_p(ptr noundef %4, ptr noundef %6) #22
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @simple_mem(ptr noundef %0) unnamed_addr #0 !prof !1248 !PGOFuncName !1249 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 134283263
  %4 = icmp ne i32 %3, 43
  %5 = and i32 %2, 16711680
  %6 = icmp eq i32 %5, 65536
  %7 = or i1 %4, %6
  br i1 %7, label %37, label %8, !prof !1250

8:                                                ; preds = %1
  %9 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !476
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11, !prof !1251

11:                                               ; preds = %8
  %12 = tail call i32 @may_trap_p(ptr noundef nonnull %0) #23
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %11, %8
  %15 = tail call i32 @side_effects_p(ptr noundef nonnull %0) #23
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %37, !prof !1251

17:                                               ; preds = %14
  %18 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !480
  %19 = tail call i32 @reg_mentioned_p(ptr noundef %18, ptr noundef nonnull %0) #23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37, !prof !1252

21:                                               ; preds = %17
  %22 = load i32, ptr @flag_float_store, align 4, !tbaa !476
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24, !prof !1253

24:                                               ; preds = %21
  %25 = load i32, ptr %0, align 8
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !467
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
define internal fastcc ptr @ldst_entry(ptr noundef %0) unnamed_addr #0 !prof !1254 !PGOFuncName !1255 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ls_expr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  store i32 0, ptr %2, align 4, !tbaa !476
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #24
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = call i32 @hash_rtx(ptr noundef nonnull %0, i32 noundef %6, ptr noundef nonnull %2, ptr noundef null, i8 noundef zeroext 0) #23
  %8 = getelementptr inbounds %struct.ls_expr, ptr %3, i64 0, i32 1
  store ptr %0, ptr %8, align 8, !tbaa !990
  %9 = load ptr, ptr @pre_ldst_table, align 8, !tbaa !480
  %10 = call ptr @htab_find_slot_with_hash(ptr noundef %9, ptr noundef nonnull %3, i32 noundef %7, i32 noundef 1) #23
  %11 = load ptr, ptr %10, align 8, !tbaa !480
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %23, !prof !1256

13:                                               ; preds = %1
  %14 = call ptr @xmalloc(i64 noundef 72) #23
  %15 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !480
  %16 = getelementptr inbounds %struct.ls_expr, ptr %14, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !1215
  store ptr null, ptr %14, align 8, !tbaa !1214
  %17 = getelementptr inbounds %struct.ls_expr, ptr %14, i64 0, i32 1
  store ptr %0, ptr %17, align 8, !tbaa !990
  %18 = getelementptr inbounds %struct.ls_expr, ptr %14, i64 0, i32 2
  %19 = getelementptr inbounds %struct.ls_expr, ptr %14, i64 0, i32 9
  store ptr null, ptr %19, align 8, !tbaa !1257
  %20 = getelementptr inbounds %struct.ls_expr, ptr %14, i64 0, i32 6
  store i32 0, ptr %20, align 8, !tbaa !993
  %21 = getelementptr inbounds %struct.ls_expr, ptr %14, i64 0, i32 7
  store i32 0, ptr %21, align 4, !tbaa !1258
  %22 = getelementptr inbounds %struct.ls_expr, ptr %14, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  store i32 %7, ptr %22, align 8, !tbaa !1209
  store ptr %14, ptr @pre_ldst_mems, align 8, !tbaa !480
  store ptr %14, ptr %10, align 8, !tbaa !480
  br label %23

23:                                               ; preds = %1, %13
  %24 = phi ptr [ %14, %13 ], [ %11, %1 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @invalidate_any_buried_refs(ptr noundef %0) unnamed_addr #0 !prof !1259 !PGOFuncName !1260 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 43
  br i1 %4, label %5, label %11, !prof !1261

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @simple_mem(ptr noundef nonnull %0) #22, !range !507
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8, !prof !1262

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @ldst_entry(ptr noundef nonnull %0) #22
  %10 = getelementptr inbounds %struct.ls_expr, ptr %9, i64 0, i32 6
  store i32 1, ptr %10, align 8, !tbaa !993
  br label %11

11:                                               ; preds = %8, %5, %1
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 65535
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !480
  %17 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %14
  %18 = load i8, ptr %17, align 1, !tbaa !467
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %48, label %20, !prof !1263

20:                                               ; preds = %11
  %21 = zext i8 %18 to i64
  br label %22

22:                                               ; preds = %20, %46
  %23 = phi i64 [ %21, %20 ], [ %24, %46 ]
  %24 = add nsw i64 %23, -1
  %25 = getelementptr inbounds i8, ptr %16, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !467
  switch i8 %26, label %46 [
    i8 101, label %27
    i8 69, label %31
  ], !prof !1264

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %29 = getelementptr inbounds [1 x %union.rtunion_def], ptr %28, i64 0, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !467
  tail call fastcc void @invalidate_any_buried_refs(ptr noundef %30) #22
  br label %46

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %32, i64 0, i64 %24
  %34 = load ptr, ptr %33, align 8, !tbaa !467
  %35 = load i32, ptr %34, align 8, !tbaa !626
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %46, !prof !1265

37:                                               ; preds = %31
  %38 = zext nneg i32 %35 to i64
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i64 [ %38, %37 ], [ %41, %39 ]
  %41 = add nsw i64 %40, -1
  %42 = load ptr, ptr %33, align 8, !tbaa !467
  %43 = getelementptr inbounds %struct.rtvec_def, ptr %42, i64 0, i32 1, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !480
  tail call fastcc void @invalidate_any_buried_refs(ptr noundef %44) #22
  %45 = icmp ugt i64 %40, 1
  br i1 %45, label %39, label %46, !prof !1266, !llvm.loop !1267

46:                                               ; preds = %39, %31, %22, %27
  %47 = icmp sgt i64 %23, 1
  br i1 %47, label %22, label %48, !prof !1268, !llvm.loop !1269

48:                                               ; preds = %46, %11
  ret void
}

; Function Attrs: optsize
declare i32 @may_trap_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @side_effects_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @htab_remove_elt_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_ldst_entry(ptr noundef %0) unnamed_addr #0 !prof !1270 !PGOFuncName !1271 {
  %2 = getelementptr inbounds %struct.ls_expr, ptr %0, i64 0, i32 3
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %2) #23
  %3 = getelementptr inbounds %struct.ls_expr, ptr %0, i64 0, i32 4
  tail call void @free_INSN_LIST_list(ptr noundef nonnull %3) #23
  tail call void @free(ptr noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_ldst_list(ptr noundef %0) unnamed_addr #0 !prof !592 !PGOFuncName !1272 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 12, i64 1, ptr %0)
  %3 = tail call fastcc ptr @first_ls_expr() #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1, %27
  %6 = phi ptr [ %29, %27 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ls_expr, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !1258
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %8) #22
  %10 = getelementptr inbounds %struct.ls_expr, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !990
  tail call void @print_rtl(ptr noundef %0, ptr noundef %11) #23
  %12 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 11, i64 1, ptr %0)
  %13 = getelementptr inbounds %struct.ls_expr, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !1197
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  tail call void @print_rtl(ptr noundef %0, ptr noundef nonnull %14) #23
  br label %19

17:                                               ; preds = %5
  %18 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 5, i64 1, ptr %0)
  br label %19

19:                                               ; preds = %17, %16
  %20 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 11, i64 1, ptr %0)
  %21 = getelementptr inbounds %struct.ls_expr, ptr %6, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !1202
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @print_rtl(ptr noundef %0, ptr noundef nonnull %22) #23
  br label %27

25:                                               ; preds = %19
  %26 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 5, i64 1, ptr %0)
  br label %27

27:                                               ; preds = %25, %24
  %28 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 2, i64 1, ptr %0)
  %29 = tail call fastcc ptr @next_ls_expr(ptr noundef nonnull %6) #22
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %5, !llvm.loop !1273

31:                                               ; preds = %27, %1
  %32 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_ls_expr() unnamed_addr #19 !prof !592 !PGOFuncName !1274 {
  %1 = load ptr, ptr @pre_ldst_mems, align 8, !tbaa !480
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @next_ls_expr(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !592 !PGOFuncName !1275 {
  %2 = getelementptr inbounds %struct.ls_expr, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !1215
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_difference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_a_or_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_not(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pre_edge_lcm(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @pre_delete() unnamed_addr #0 !prof !1218 !PGOFuncName !1276 {
  %1 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !588
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %104, label %3, !prof !1221

3:                                                ; preds = %0, %98
  %4 = phi i32 [ %99, %98 ], [ %1, %0 ]
  %5 = phi i64 [ %101, %98 ], [ 0, %0 ]
  %6 = phi i32 [ %100, %98 ], [ 0, %0 ]
  %7 = load ptr, ptr @expr_hash_table, align 8, !tbaa !589
  %8 = getelementptr inbounds ptr, ptr %7, i64 %5
  %9 = load ptr, ptr %8, align 8, !tbaa !480
  %10 = icmp eq ptr %9, null
  br i1 %10, label %98, label %11, !prof !1222

11:                                               ; preds = %3, %91
  %12 = phi ptr [ %94, %91 ], [ %9, %3 ]
  %13 = phi i32 [ %92, %91 ], [ %6, %3 ]
  %14 = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !594
  %16 = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !480
  %18 = icmp eq ptr %17, null
  br i1 %18, label %91, label %19, !prof !1012

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
  %29 = load ptr, ptr %28, align 8, !tbaa !935
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %31 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !467
  %33 = load ptr, ptr @pre_delete_map, align 8, !tbaa !480
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !584
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %33, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !480
  %39 = getelementptr inbounds %struct.simple_bitmap_def, ptr %38, i64 0, i32 3, i64 %21
  %40 = load i64, ptr %39, align 8, !tbaa !801
  %41 = and i64 %40, %24
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %87, label %43, !prof !1277

43:                                               ; preds = %25
  %44 = load i32, ptr %29, align 8
  %45 = and i32 %44, 65535
  %46 = add nsw i32 %45, -7
  %47 = icmp ult i32 %46, 4
  br i1 %47, label %48, label %87, !prof !1278

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !467
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 23
  br i1 %53, label %57, label %54, !prof !1279

54:                                               ; preds = %48
  %55 = tail call ptr @single_set_2(ptr noundef nonnull %29, ptr noundef nonnull %50) #23
  %56 = icmp eq ptr %55, null
  br i1 %56, label %87, label %57, !prof !1280

57:                                               ; preds = %48, %54
  %58 = phi ptr [ %55, %54 ], [ %50, %48 ]
  %59 = tail call zeroext i8 @dbg_cnt(i32 noundef 24) #23
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %87, label %61, !prof !1281

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !1019
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %69, !prof !1282

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !467
  %68 = tail call ptr @gen_reg_rtx_and_attrs(ptr noundef %67) #23
  store ptr %68, ptr %62, align 8, !tbaa !1019
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi ptr [ %68, %65 ], [ %63, %61 ]
  %71 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !467
  tail call fastcc void @gcse_emit_move_after(ptr noundef %70, ptr noundef %72, ptr noundef nonnull %29) #22
  %73 = tail call ptr @delete_insn(ptr noundef nonnull %29) #23
  %74 = getelementptr inbounds %struct.occr, ptr %26, i64 0, i32 2
  store i8 1, ptr %74, align 8, !tbaa !939
  %75 = load i32, ptr @gcse_subst_count, align 4, !tbaa !476
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr @gcse_subst_count, align 4, !tbaa !476
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %78 = icmp eq ptr %77, null
  br i1 %78, label %87, label %79, !prof !1283

79:                                               ; preds = %69
  %80 = load i32, ptr %30, align 8, !tbaa !467
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %77, ptr noundef nonnull @.str.37, i32 noundef %80, i32 noundef %15) #22
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %83 = load i32, ptr %34, align 8, !tbaa !584
  %84 = load ptr, ptr %62, align 8, !tbaa !1019
  %85 = tail call fastcc i32 @rhs_regno(ptr noundef %84) #22
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.38, i32 noundef %83, i32 noundef %85) #22
  br label %87

87:                                               ; preds = %43, %69, %79, %57, %54, %25
  %88 = phi i32 [ 1, %79 ], [ 1, %69 ], [ %27, %57 ], [ %27, %54 ], [ %27, %25 ], [ %27, %43 ]
  %89 = load ptr, ptr %26, align 8, !tbaa !480
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %25, !prof !1013, !llvm.loop !1284

91:                                               ; preds = %87, %11
  %92 = phi i32 [ %13, %11 ], [ %88, %87 ]
  %93 = getelementptr inbounds %struct.expr, ptr %12, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !480
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %11, !prof !1224, !llvm.loop !1285

96:                                               ; preds = %91
  %97 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !588
  br label %98

98:                                               ; preds = %96, %3
  %99 = phi i32 [ %4, %3 ], [ %97, %96 ]
  %100 = phi i32 [ %6, %3 ], [ %92, %96 ]
  %101 = add nuw nsw i64 %5, 1
  %102 = zext i32 %99 to i64
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %3, label %104, !prof !1226, !llvm.loop !1286

104:                                              ; preds = %98, %0
  %105 = phi i32 [ 0, %0 ], [ %100, %98 ]
  ret i32 %105
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @pre_edge_insert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1218 !PGOFuncName !1287 {
  %3 = load ptr, ptr @pre_insert_map, align 8, !tbaa !480
  %4 = load ptr, ptr %3, align 8, !tbaa !480
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !1288
  %7 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !1289
  %9 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !518
  %10 = tail call ptr @sbitmap_vector_alloc(i32 noundef %8, i32 noundef %9) #23
  tail call void @sbitmap_vector_zero(ptr noundef %10, i32 noundef %8) #23
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %12, label %138, !prof !1291

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.edge_list, ptr %0, i64 0, i32 2
  %14 = icmp sgt i32 %6, 0
  %15 = zext nneg i32 %8 to i64
  %16 = zext nneg i32 %6 to i64
  br label %17

17:                                               ; preds = %12, %134
  %18 = phi i64 [ 0, %12 ], [ %136, %134 ]
  %19 = phi i32 [ 0, %12 ], [ %135, %134 ]
  %20 = load ptr, ptr %13, align 8, !tbaa !1292
  %21 = getelementptr inbounds ptr, ptr %20, i64 %18
  %22 = load ptr, ptr %21, align 8, !tbaa !480
  %23 = load ptr, ptr %22, align 8, !tbaa !1137
  br i1 %14, label %24, label %134, !prof !1293

24:                                               ; preds = %17
  %25 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4
  br label %26

26:                                               ; preds = %24, %127
  %27 = phi i32 [ %25, %24 ], [ %128, %127 ]
  %28 = phi i32 [ %25, %24 ], [ %129, %127 ]
  %29 = phi i64 [ 0, %24 ], [ %131, %127 ]
  %30 = phi i32 [ %19, %24 ], [ %130, %127 ]
  %31 = phi i32 [ 0, %24 ], [ %132, %127 ]
  %32 = load ptr, ptr @pre_insert_map, align 8, !tbaa !480
  %33 = getelementptr inbounds ptr, ptr %32, i64 %18
  %34 = load ptr, ptr %33, align 8, !tbaa !480
  %35 = getelementptr inbounds %struct.simple_bitmap_def, ptr %34, i64 0, i32 3, i64 %29
  %36 = load i64, ptr %35, align 8, !tbaa !801
  %37 = icmp ne i64 %36, 0
  %38 = icmp slt i32 %31, %28
  %39 = select i1 %37, i1 %38, i1 false, !prof !1294
  br i1 %39, label %40, label %127, !prof !1295

40:                                               ; preds = %26
  %41 = sext i32 %31 to i64
  br label %42

42:                                               ; preds = %40, %118
  %43 = phi i32 [ %27, %40 ], [ %119, %118 ]
  %44 = phi i64 [ %41, %40 ], [ %121, %118 ]
  %45 = phi i64 [ %36, %40 ], [ %122, %118 ]
  %46 = phi i32 [ %30, %40 ], [ %120, %118 ]
  %47 = and i64 %45, 1
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %118, label %49, !prof !1296

49:                                               ; preds = %42
  %50 = getelementptr inbounds ptr, ptr %1, i64 %44
  %51 = load ptr, ptr %50, align 8, !tbaa !480
  %52 = getelementptr inbounds %struct.expr, ptr %51, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !1019
  %54 = icmp eq ptr %53, null
  br i1 %54, label %118, label %55, !prof !1297

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.expr, ptr %51, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !480
  %58 = icmp eq ptr %57, null
  br i1 %58, label %118, label %59, !prof !1298

59:                                               ; preds = %55
  %60 = getelementptr inbounds ptr, ptr %10, i64 %18
  %61 = trunc i64 %44 to i32
  %62 = lshr i64 %44, 6
  %63 = and i64 %62, 67108863
  %64 = and i64 %44, 63
  %65 = shl nuw i64 1, %64
  br label %66

66:                                               ; preds = %59, %112
  %67 = phi ptr [ %57, %59 ], [ %114, %112 ]
  %68 = phi i32 [ %46, %59 ], [ %113, %112 ]
  %69 = getelementptr inbounds %struct.occr, ptr %67, i64 0, i32 2
  %70 = load i8, ptr %69, align 8, !tbaa !939
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %112, label %72, !prof !1299

72:                                               ; preds = %66
  %73 = load ptr, ptr %60, align 8, !tbaa !480
  %74 = getelementptr inbounds %struct.simple_bitmap_def, ptr %73, i64 0, i32 3, i64 %63
  %75 = load i64, ptr %74, align 8, !tbaa !801
  %76 = and i64 %75, %65
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %112, !prof !1300

78:                                               ; preds = %72
  %79 = load ptr, ptr %13, align 8, !tbaa !1292
  %80 = getelementptr inbounds ptr, ptr %79, i64 %18
  %81 = load ptr, ptr %80, align 8, !tbaa !480
  %82 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 7
  %83 = load i32, ptr %82, align 8, !tbaa !575
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  %86 = load ptr, ptr %50, align 8, !tbaa !480
  br i1 %85, label %88, label %87, !prof !1301

87:                                               ; preds = %78
  tail call fastcc void @insert_insn_end_basic_block(ptr noundef %86, ptr noundef %23) #22
  br label %90

88:                                               ; preds = %78
  %89 = tail call fastcc ptr @process_insert_insn(ptr noundef %86) #22
  tail call void @insert_insn_on_edge(ptr noundef %89, ptr noundef nonnull %81) #23
  br label %90

90:                                               ; preds = %88, %87
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %92 = icmp eq ptr %91, null
  br i1 %92, label %108, label %93, !prof !1301

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 9
  %95 = getelementptr inbounds %struct.expr, ptr %51, i64 0, i32 1
  %96 = load i32, ptr %94, align 8, !tbaa !584
  %97 = load ptr, ptr %13, align 8, !tbaa !1292
  %98 = getelementptr inbounds ptr, ptr %97, i64 %18
  %99 = load ptr, ptr %98, align 8, !tbaa !480
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !580
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %101, i64 0, i32 9
  %103 = load i32, ptr %102, align 8, !tbaa !584
  %104 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %91, ptr noundef nonnull @.str.39, i32 noundef %96, i32 noundef %103) #22
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %106 = load i32, ptr %95, align 8, !tbaa !594
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef nonnull @.str.40, i32 noundef %106) #22
  br label %108

108:                                              ; preds = %93, %90
  tail call fastcc void @update_ld_motion_stores(ptr noundef %51) #22
  %109 = load ptr, ptr %60, align 8, !tbaa !480
  tail call fastcc void @SET_BIT(ptr noundef %109, i32 noundef %61) #22
  %110 = load i32, ptr @gcse_create_count, align 4, !tbaa !476
  %111 = add nsw i32 %110, 1
  store i32 %111, ptr @gcse_create_count, align 4, !tbaa !476
  br label %112

112:                                              ; preds = %72, %108, %66
  %113 = phi i32 [ %68, %72 ], [ 1, %108 ], [ %68, %66 ]
  %114 = load ptr, ptr %67, align 8, !tbaa !480
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %66, !prof !1302, !llvm.loop !1303

116:                                              ; preds = %112
  %117 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4
  br label %118

118:                                              ; preds = %116, %55, %42, %49
  %119 = phi i32 [ %43, %49 ], [ %43, %42 ], [ %43, %55 ], [ %117, %116 ]
  %120 = phi i32 [ %46, %49 ], [ %46, %42 ], [ %46, %55 ], [ %113, %116 ]
  %121 = add nsw i64 %44, 1
  %122 = lshr i64 %45, 1
  %123 = icmp ugt i64 %45, 1
  %124 = sext i32 %119 to i64
  %125 = icmp slt i64 %121, %124
  %126 = select i1 %123, i1 %125, i1 false, !prof !1294
  br i1 %126, label %42, label %127, !prof !1304, !llvm.loop !1305

127:                                              ; preds = %118, %26
  %128 = phi i32 [ %27, %26 ], [ %119, %118 ]
  %129 = phi i32 [ %28, %26 ], [ %119, %118 ]
  %130 = phi i32 [ %30, %26 ], [ %120, %118 ]
  %131 = add nuw nsw i64 %29, 1
  %132 = add i32 %31, 64
  %133 = icmp eq i64 %131, %16
  br i1 %133, label %134, label %26, !prof !1306, !llvm.loop !1307

134:                                              ; preds = %127, %17
  %135 = phi i32 [ %19, %17 ], [ %130, %127 ]
  %136 = add nuw nsw i64 %18, 1
  %137 = icmp eq i64 %136, %15
  br i1 %137, label %138, label %17, !prof !1308, !llvm.loop !1309

138:                                              ; preds = %134, %2
  %139 = phi i32 [ 0, %2 ], [ %135, %134 ]
  tail call void @free(ptr noundef %10) #22
  ret i32 %139
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pre_insert_copies() unnamed_addr #0 !prof !1218 !PGOFuncName !1310 {
  %1 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !588
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %75, label %3, !prof !1221

3:                                                ; preds = %0, %70
  %4 = phi i32 [ %71, %70 ], [ %1, %0 ]
  %5 = phi i64 [ %72, %70 ], [ 0, %0 ]
  %6 = load ptr, ptr @expr_hash_table, align 8, !tbaa !589
  %7 = getelementptr inbounds ptr, ptr %6, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !480
  %9 = icmp eq ptr %8, null
  br i1 %9, label %70, label %10, !prof !1222

10:                                               ; preds = %3, %64
  %11 = phi ptr [ %66, %64 ], [ %8, %3 ]
  %12 = getelementptr inbounds %struct.expr, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !1019
  %14 = icmp eq ptr %13, null
  br i1 %14, label %64, label %15, !prof !1311

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.expr, ptr %11, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !480
  %18 = icmp eq ptr %17, null
  br i1 %18, label %64, label %19, !prof !1312

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.expr, ptr %11, i64 0, i32 4
  br label %21

21:                                               ; preds = %19, %57
  %22 = phi ptr [ %17, %19 ], [ %59, %57 ]
  %23 = phi i32 [ 0, %19 ], [ %58, %57 ]
  %24 = getelementptr inbounds %struct.occr, ptr %22, i64 0, i32 2
  %25 = load i8, ptr %24, align 8, !tbaa !939
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %57, label %27, !prof !1313

27:                                               ; preds = %21
  %28 = load ptr, ptr %20, align 8, !tbaa !480
  %29 = icmp eq ptr %28, null
  br i1 %29, label %57, label %30, !prof !1314

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.occr, ptr %22, i64 0, i32 1
  br label %32

32:                                               ; preds = %30, %53
  %33 = phi ptr [ %28, %30 ], [ %55, %53 ]
  %34 = phi i32 [ %23, %30 ], [ %54, %53 ]
  %35 = getelementptr inbounds %struct.occr, ptr %33, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !935
  %37 = getelementptr inbounds %struct.occr, ptr %33, i64 0, i32 3
  %38 = load i8, ptr %37, align 1, !tbaa !1016
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %53, !prof !1315

40:                                               ; preds = %32
  %41 = load i32, ptr %36, align 8
  %42 = and i32 %41, 134217728
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53, !prof !1316

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !467
  %47 = load ptr, ptr %31, align 8, !tbaa !935
  %48 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !467
  %50 = tail call fastcc i32 @pre_expr_reaches_here_p(ptr noundef %46, ptr noundef nonnull %11, ptr noundef %49) #22
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52, !prof !1317

52:                                               ; preds = %44
  tail call fastcc void @pre_insert_copy_insn(ptr noundef nonnull %11, ptr noundef nonnull %36) #22
  store i8 1, ptr %37, align 1, !tbaa !1016
  br label %53

53:                                               ; preds = %44, %40, %32, %52
  %54 = phi i32 [ 1, %52 ], [ %34, %32 ], [ %34, %40 ], [ %34, %44 ]
  %55 = load ptr, ptr %33, align 8, !tbaa !480
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %32, !prof !1318, !llvm.loop !1319

57:                                               ; preds = %53, %27, %21
  %58 = phi i32 [ %23, %21 ], [ %23, %27 ], [ %54, %53 ]
  %59 = load ptr, ptr %22, align 8, !tbaa !480
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %21, !prof !1320, !llvm.loop !1321

61:                                               ; preds = %57
  %62 = icmp eq i32 %58, 0
  br i1 %62, label %64, label %63, !prof !1322

63:                                               ; preds = %61
  tail call fastcc void @update_ld_motion_stores(ptr noundef nonnull %11) #22
  br label %64

64:                                               ; preds = %15, %61, %63, %10
  %65 = getelementptr inbounds %struct.expr, ptr %11, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !480
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %10, !prof !1224, !llvm.loop !1323

68:                                               ; preds = %64
  %69 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !588
  br label %70

70:                                               ; preds = %68, %3
  %71 = phi i32 [ %69, %68 ], [ %4, %3 ]
  %72 = add nuw nsw i64 %5, 1
  %73 = zext i32 %71 to i64
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %3, label %75, !prof !1226, !llvm.loop !1324

75:                                               ; preds = %70, %0
  ret void
}

; Function Attrs: optsize
declare ptr @gen_reg_rtx_and_attrs(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gcse_emit_move_after(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1325 !PGOFuncName !1326 {
  %4 = load i32, ptr %2, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %16, !prof !1278

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !467
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 23
  br i1 %13, label %16, label %14, !prof !1279

14:                                               ; preds = %8
  %15 = tail call ptr @single_set_2(ptr noundef nonnull %2, ptr noundef nonnull %10) #23
  br label %16

16:                                               ; preds = %3, %8, %14
  %17 = phi ptr [ %15, %14 ], [ null, %3 ], [ %10, %8 ]
  %18 = tail call ptr @gen_move_insn(ptr noundef %1, ptr noundef %0) #23
  %19 = tail call ptr @emit_insn_after(ptr noundef %18, ptr noundef nonnull %2) #23
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = add nsw i32 %21, -7
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %24, label %51, !prof !1278

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !467
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 23
  br i1 %29, label %33, label %30, !prof !1283

30:                                               ; preds = %24
  %31 = tail call ptr @single_set_2(ptr noundef nonnull %19, ptr noundef nonnull %26) #23
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33, !prof !1327

33:                                               ; preds = %24, %30
  %34 = phi ptr [ %31, %30 ], [ %26, %24 ]
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !467
  %37 = tail call i32 @rtx_equal_p(ptr noundef %36, ptr noundef %1) #23
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39, !prof !1281

39:                                               ; preds = %33
  %40 = tail call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %2) #23
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42, !prof !1328

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  br label %46

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi ptr [ %43, %42 ], [ %45, %44 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !467
  %49 = tail call ptr @copy_insn_1(ptr noundef %48) #23
  %50 = tail call ptr @set_unique_reg_note(ptr noundef nonnull %19, i32 noundef 4, ptr noundef %49) #23
  br label %51

51:                                               ; preds = %16, %30, %33, %46
  ret void
}

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @copy_insn_1(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_insn_end_basic_block(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !592 !PGOFuncName !1329 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !467
  %5 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !526
  %7 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !1019
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef %8) #22
  %10 = tail call fastcc ptr @process_insert_insn(ptr noundef %0) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %10, align 8
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -7
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 3425, ptr noundef nonnull @.str.15) #23
  br label %18

18:                                               ; preds = %12, %17
  br label %19

19:                                               ; preds = %18, %19
  %20 = phi ptr [ %22, %19 ], [ %10, %18 ]
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !467
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19, !llvm.loop !1330

24:                                               ; preds = %19
  %25 = load i32, ptr %6, align 8
  %26 = trunc i32 %25 to i16
  switch i16 %26, label %49 [
    i16 9, label %38
    i16 8, label %27
  ]

27:                                               ; preds = %24
  %28 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %1) #22, !range !514
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @single_succ_edge(ptr noundef %1) #22
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !575
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, ptr %6, align 8
  br label %49

38:                                               ; preds = %27, %30, %24
  %39 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !467
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65534
  %43 = icmp eq i32 %42, 20
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = tail call ptr @prev_real_insn(ptr noundef nonnull %6) #23
  br label %46

46:                                               ; preds = %38, %44
  %47 = phi ptr [ %45, %44 ], [ %6, %38 ]
  %48 = tail call ptr @emit_insn_before_noloc(ptr noundef %10, ptr noundef %47, ptr noundef %1) #23
  br label %81

49:                                               ; preds = %36, %24
  %50 = phi i32 [ %37, %36 ], [ %25, %24 ]
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %79

53:                                               ; preds = %49
  %54 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %1) #22, !range !514
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = tail call fastcc ptr @single_succ_edge(ptr noundef %1) #22
  %58 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 7
  %59 = load i32, ptr %58, align 8, !tbaa !575
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %53, %56
  %63 = load ptr, ptr %3, align 8, !tbaa !467
  %64 = load ptr, ptr %63, align 8, !tbaa !751
  %65 = tail call ptr @find_first_parameter_load(ptr noundef nonnull %6, ptr noundef %64) #23
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
  %72 = load i32, ptr %71, align 8, !tbaa !467
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %74, label %77

74:                                               ; preds = %66, %70
  %75 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1, i32 0, i32 0, i64 2
  %76 = load ptr, ptr %75, align 8, !tbaa !467
  br label %66, !llvm.loop !1331

77:                                               ; preds = %66, %70
  %78 = tail call ptr @emit_insn_before_noloc(ptr noundef %10, ptr noundef nonnull %67, ptr noundef %1) #23
  br label %81

79:                                               ; preds = %56, %49
  %80 = tail call ptr @emit_insn_after_noloc(ptr noundef %10, ptr noundef nonnull %6, ptr noundef %1) #23
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
  %91 = load ptr, ptr %90, align 8, !tbaa !467
  tail call fastcc void @add_label_notes(ptr noundef %91, ptr noundef %82) #22
  br label %92

92:                                               ; preds = %83, %89
  %93 = icmp eq ptr %84, %20
  br i1 %93, label %97, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 2
  %96 = load ptr, ptr %95, align 8, !tbaa !467
  br label %83

97:                                               ; preds = %92
  %98 = load i32, ptr @gcse_create_count, align 4, !tbaa !476
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr @gcse_create_count, align 4, !tbaa !476
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %104 = load i32, ptr %103, align 8, !tbaa !584
  %105 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !467
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %100, ptr noundef nonnull @.str.41, i32 noundef %104, i32 noundef %106) #22
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %109 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !594
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.42, i32 noundef %110, i32 noundef %9) #22
  br label %112

112:                                              ; preds = %102, %97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @process_insert_insn(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1332 !PGOFuncName !1333 {
  %2 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !1019
  %4 = load ptr, ptr %0, align 8, !tbaa !598
  %5 = tail call ptr @copy_rtx(ptr noundef %4) #23
  tail call void @start_sequence() #23
  %6 = load i32, ptr %3, align 8
  %7 = lshr i32 %6, 16
  %8 = and i32 %7, 255
  %9 = tail call i32 @general_operand(ptr noundef %5, i32 noundef %8) #23
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !1334

11:                                               ; preds = %1
  %12 = tail call ptr @emit_move_insn(ptr noundef nonnull %3, ptr noundef %5) #23
  br label %19

13:                                               ; preds = %1
  %14 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %3, ptr noundef %5) #23
  %15 = tail call ptr @emit_insn(ptr noundef %14) #23
  %16 = tail call i32 @insn_invalid_p(ptr noundef %15) #23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !1335

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 3397, ptr noundef nonnull @.str.15) #23
  br label %19

19:                                               ; preds = %13, %18, %11
  %20 = tail call ptr @get_insns() #23
  tail call void @end_sequence() #23
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_ld_motion_stores(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1336 !PGOFuncName !1337 {
  %2 = load ptr, ptr %0, align 8, !tbaa !598
  %3 = tail call fastcc ptr @find_rtx_in_ldst(ptr noundef %2) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5, !prof !1338

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ls_expr, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !467
  %8 = icmp eq ptr %7, null
  br i1 %8, label %47, label %9, !prof !1339

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 5
  br label %11

11:                                               ; preds = %9, %43
  %12 = phi ptr [ %7, %9 ], [ %45, %43 ]
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !467
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !467
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !467
  %19 = load ptr, ptr %10, align 8, !tbaa !1019
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %43, label %21, !prof !1340

21:                                               ; preds = %11
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24, !prof !1341

24:                                               ; preds = %21
  %25 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 38, i64 1, ptr nonnull %22)
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %27 = load ptr, ptr %10, align 8, !tbaa !1019
  tail call void @print_rtl(ptr noundef %26, ptr noundef %27) #23
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %29 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 3, i64 1, ptr %28)
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !480
  tail call void @print_inline_rtx(ptr noundef %30, ptr noundef nonnull %14, i32 noundef 8) #23
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %32 = tail call i32 @fputc(i32 10, ptr %31)
  %33 = load ptr, ptr %17, align 8, !tbaa !467
  br label %34

34:                                               ; preds = %24, %21
  %35 = phi ptr [ %33, %24 ], [ %18, %21 ]
  %36 = tail call ptr @copy_rtx(ptr noundef %35) #23
  %37 = tail call ptr @gen_move_insn(ptr noundef %19, ptr noundef %36) #23
  %38 = tail call ptr @emit_insn_before(ptr noundef %37, ptr noundef nonnull %14) #23
  store ptr %19, ptr %17, align 8, !tbaa !467
  %39 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %14) #23
  %40 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1, i32 1
  store i32 -1, ptr %40, align 8, !tbaa !467
  %41 = load i32, ptr @gcse_create_count, align 4, !tbaa !476
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr @gcse_create_count, align 4, !tbaa !476
  br label %43

43:                                               ; preds = %11, %34
  %44 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !467
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %11, !prof !1342, !llvm.loop !1343

47:                                               ; preds = %43, %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !592 !PGOFuncName !1344 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !568
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #22
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !592 !PGOFuncName !1345 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #22, !range !514
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 645, ptr noundef nonnull @.str.15) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !568
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #22
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @prev_real_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_insn_before_noloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_first_parameter_load(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_insn_after_noloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_label_notes(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !592 !PGOFuncName !1346 {
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 4030, ptr noundef nonnull @.str.15) #23
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !467
  tail call void @add_reg_note(ptr noundef nonnull %1, i32 noundef 10, ptr noundef %13) #23
  %14 = load ptr, ptr %12, align 8, !tbaa !467
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 12
  br i1 %17, label %18, label %57

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !467
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !467
  br label %57

22:                                               ; preds = %2
  %23 = and i32 %3, 65535
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !467
  %27 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %24
  %28 = load ptr, ptr %27, align 8, !tbaa !480
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
  %37 = load i8, ptr %36, align 1, !tbaa !467
  switch i8 %37, label %55 [
    i8 101, label %38
    i8 69, label %41
  ]

38:                                               ; preds = %33
  %39 = getelementptr inbounds [1 x %union.rtunion_def], ptr %31, i64 0, i64 %35
  %40 = load ptr, ptr %39, align 8, !tbaa !467
  tail call fastcc void @add_label_notes(ptr noundef %40, ptr noundef %1) #22
  br label %55

41:                                               ; preds = %33
  %42 = getelementptr inbounds [1 x %union.rtunion_def], ptr %31, i64 0, i64 %35
  %43 = load ptr, ptr %42, align 8, !tbaa !467
  %44 = load i32, ptr %43, align 8, !tbaa !626
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = zext nneg i32 %44 to i64
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i64 [ %47, %46 ], [ %50, %48 ]
  %50 = add nsw i64 %49, -1
  %51 = load ptr, ptr %42, align 8, !tbaa !467
  %52 = getelementptr inbounds %struct.rtvec_def, ptr %51, i64 0, i32 1, i64 %50
  %53 = load ptr, ptr %52, align 8, !tbaa !480
  tail call fastcc void @add_label_notes(ptr noundef %53, ptr noundef %1) #22
  %54 = icmp ugt i64 %49, 1
  br i1 %54, label %48, label %55, !llvm.loop !1347

55:                                               ; preds = %48, %41, %33, %38
  %56 = icmp sgt i64 %34, 1
  br i1 %56, label %33, label %57, !llvm.loop !1348

57:                                               ; preds = %55, %22, %11, %18
  ret void
}

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @insn_invalid_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @pre_expr_reaches_here_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !1349 !PGOFuncName !1350 {
  %4 = load ptr, ptr @cfun, align 8, !tbaa !480
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !509
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !517
  %9 = sext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 1) #23
  %11 = tail call fastcc i32 @pre_expr_reaches_here_p_work(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %10) #22
  tail call void @free(ptr noundef %10) #22
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pre_insert_copy_insn(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1351 !PGOFuncName !1352 {
  %3 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !1019
  %5 = tail call fastcc i32 @rhs_regno(ptr noundef %4) #22
  %6 = getelementptr inbounds %struct.expr, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !594
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !467
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i16
  switch i16 %12, label %57 [
    i16 23, label %58
    i16 15, label %13
  ], !prof !1353

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !467
  %16 = load i32, ptr %15, align 8, !tbaa !626
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %50, !prof !1354

18:                                               ; preds = %13, %39
  %19 = phi i32 [ %40, %39 ], [ %16, %13 ]
  %20 = phi ptr [ %41, %39 ], [ %15, %13 ]
  %21 = phi i64 [ %43, %39 ], [ 0, %13 ]
  %22 = phi ptr [ %42, %39 ], [ null, %13 ]
  %23 = getelementptr inbounds %struct.rtvec_def, ptr %20, i64 0, i32 1, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !480
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 23
  br i1 %27, label %28, label %39, !prof !1355

28:                                               ; preds = %18
  %29 = icmp eq ptr %22, null
  %30 = select i1 %29, ptr %24, ptr %22, !prof !1355
  %31 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !467
  %33 = load ptr, ptr %0, align 8, !tbaa !598
  %34 = tail call fastcc i32 @expr_equiv_p(ptr noundef %32, ptr noundef %33) #22
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46, !prof !1356

36:                                               ; preds = %28
  %37 = load ptr, ptr %14, align 8, !tbaa !467
  %38 = load i32, ptr %37, align 8, !tbaa !626
  br label %39

39:                                               ; preds = %36, %18
  %40 = phi i32 [ %19, %18 ], [ %38, %36 ]
  %41 = phi ptr [ %20, %18 ], [ %37, %36 ]
  %42 = phi ptr [ %22, %18 ], [ %30, %36 ]
  %43 = add nuw nsw i64 %21, 1
  %44 = sext i32 %40 to i64
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %18, label %46, !prof !1357, !llvm.loop !1358

46:                                               ; preds = %39, %28
  %47 = phi ptr [ %42, %39 ], [ %30, %28 ]
  %48 = phi ptr [ null, %39 ], [ %24, %28 ]
  %49 = icmp eq ptr %47, null
  br i1 %49, label %50, label %52, !prof !1152

50:                                               ; preds = %13, %46
  %51 = phi ptr [ %48, %46 ], [ null, %13 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 3676, ptr noundef nonnull @.str.15) #23
  br label %52

52:                                               ; preds = %46, %50
  %53 = phi ptr [ %48, %46 ], [ %51, %50 ]
  %54 = phi ptr [ %47, %46 ], [ null, %50 ]
  %55 = icmp eq ptr %53, null
  br i1 %55, label %56, label %58, !prof !1356

56:                                               ; preds = %52
  br label %58

57:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 3682, ptr noundef nonnull @.str.15) #23
  br label %58

58:                                               ; preds = %2, %52, %56, %57
  %59 = phi ptr [ undef, %57 ], [ %54, %56 ], [ %53, %52 ], [ %10, %2 ]
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !467
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 37
  br i1 %64, label %65, label %74, !prof !1359

65:                                               ; preds = %58
  %66 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %60, ptr noundef %4, i8 noundef zeroext 0) #23
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %71, label %68, !prof !1360

68:                                               ; preds = %65
  %69 = tail call ptr @gen_move_insn(ptr noundef nonnull %61, ptr noundef %4) #23
  %70 = tail call ptr @emit_insn_after(ptr noundef %69, ptr noundef %1) #23
  br label %84

71:                                               ; preds = %65
  %72 = tail call ptr @gen_move_insn(ptr noundef %4, ptr noundef nonnull %61) #23
  %73 = tail call ptr @emit_insn_after(ptr noundef %72, ptr noundef %1) #23
  br label %84

74:                                               ; preds = %58
  %75 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !467
  %77 = tail call ptr @gen_move_insn(ptr noundef %4, ptr noundef %76) #23
  %78 = tail call zeroext i8 @validate_change(ptr noundef %1, ptr noundef nonnull %75, ptr noundef %4, i8 noundef zeroext 0) #23
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %82, label %80, !prof !1361

80:                                               ; preds = %74
  %81 = tail call ptr @emit_insn_before(ptr noundef %77, ptr noundef %1) #23
  br label %84

82:                                               ; preds = %74
  %83 = tail call ptr @emit_insn_after(ptr noundef %77, ptr noundef %1) #23
  br label %84

84:                                               ; preds = %80, %82, %68, %71
  %85 = phi ptr [ %70, %68 ], [ %73, %71 ], [ %81, %80 ], [ %83, %82 ]
  %86 = load i32, ptr @gcse_create_count, align 4, !tbaa !476
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr @gcse_create_count, align 4, !tbaa !476
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %89 = icmp eq ptr %88, null
  br i1 %89, label %99, label %90, !prof !1362

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !467
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 9
  %94 = load i32, ptr %93, align 8, !tbaa !584
  %95 = getelementptr inbounds %struct.rtx_def, ptr %85, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !467
  %97 = load i32, ptr %8, align 8, !tbaa !467
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %88, ptr noundef nonnull @.str.45, i32 noundef %94, i32 noundef %96, i32 noundef %7, i32 noundef %97, i32 noundef %5) #22
  br label %99

99:                                               ; preds = %90, %84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @pre_expr_reaches_here_p_work(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !1363 !PGOFuncName !1364 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  %7 = tail call fastcc ptr @ei_start_1(ptr noundef %2) #22
  store i32 0, ptr %6, align 8, !tbaa.struct !749
  %8 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %7, ptr %8, align 8, !tbaa.struct !750
  %9 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %7, ptr noundef nonnull %5) #22, !range !514
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %61, label %11, !prof !1365

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.expr, ptr %1, i64 0, i32 1
  br label %13

13:                                               ; preds = %11, %56
  %14 = load ptr, ptr %5, align 8, !tbaa !480
  %15 = load ptr, ptr %14, align 8, !tbaa !1137
  %16 = load ptr, ptr @cfun, align 8, !tbaa !480
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !509
  %19 = load ptr, ptr %18, align 8, !tbaa !521
  %20 = icmp eq ptr %15, %19
  br i1 %20, label %56, label %21, !prof !1366

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %23 = load i32, ptr %22, align 8, !tbaa !584
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %3, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !467
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %56, !prof !1367

28:                                               ; preds = %21
  %29 = load ptr, ptr @comp, align 8, !tbaa !480
  %30 = getelementptr inbounds ptr, ptr %29, i64 %24
  %31 = load ptr, ptr %30, align 8, !tbaa !480
  %32 = load i32, ptr %12, align 8, !tbaa !594
  %33 = lshr i32 %32, 6
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds %struct.simple_bitmap_def, ptr %31, i64 0, i32 3, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !801
  %37 = and i32 %32, 63
  %38 = zext nneg i32 %37 to i64
  %39 = shl nuw i64 1, %38
  %40 = and i64 %39, %36
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %45, label %42, !prof !1368

42:                                               ; preds = %28
  %43 = icmp eq ptr %15, %0
  br i1 %43, label %61, label %44, !prof !1369

44:                                               ; preds = %42
  store i8 1, ptr %25, align 1, !tbaa !467
  br label %56

45:                                               ; preds = %28
  %46 = load ptr, ptr @transp, align 8, !tbaa !480
  %47 = getelementptr inbounds ptr, ptr %46, i64 %24
  %48 = load ptr, ptr %47, align 8, !tbaa !480
  %49 = getelementptr inbounds %struct.simple_bitmap_def, ptr %48, i64 0, i32 3, i64 %34
  %50 = load i64, ptr %49, align 8, !tbaa !801
  %51 = and i64 %50, %39
  %52 = icmp eq i64 %51, 0
  store i8 1, ptr %25, align 1, !tbaa !467
  br i1 %52, label %56, label %53, !prof !1370

53:                                               ; preds = %45
  %54 = tail call fastcc i32 @pre_expr_reaches_here_p_work(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %15, ptr noundef nonnull %3) #22
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61, !prof !1371

56:                                               ; preds = %45, %44, %53, %13, %21
  call fastcc void @ei_next(ptr noundef nonnull %6) #22
  %57 = load i32, ptr %6, align 8
  %58 = load ptr, ptr %8, align 8
  %59 = call fastcc zeroext i8 @ei_cond(i32 %57, ptr %58, ptr noundef nonnull %5) #22, !range !514
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %13, !prof !1372, !llvm.loop !1373

61:                                               ; preds = %53, %42, %56, %4
  %62 = phi i32 [ 0, %4 ], [ 0, %56 ], [ 1, %42 ], [ 1, %53 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  ret i32 %62
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_rtl_hoist() #0 !prof !1176 !PGOFuncName !1374 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !476
  %2 = icmp sgt i32 %1, 0
  %3 = load i32, ptr @flag_gcse, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %19, !prof !1178

6:                                                ; preds = %0
  %7 = load ptr, ptr @cfun, align 8, !tbaa !480
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19, !prof !1179

12:                                               ; preds = %6
  %13 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef nonnull %7) #23
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15, !prof !1375

15:                                               ; preds = %12
  %16 = tail call zeroext i8 @dbg_cnt(i32 noundef 16) #23
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %15, %12, %6, %0
  %20 = phi i8 [ 0, %12 ], [ 0, %6 ], [ 0, %0 ], [ %18, %15 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_rtl_hoist() #0 !prof !592 !PGOFuncName !1376 {
  %1 = tail call zeroext i8 @delete_unreachable_blocks() #23
  tail call void @df_analyze() #23
  %2 = tail call fastcc i32 @one_code_hoisting_pass() #22, !range !507
  %3 = load i32, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !476
  %4 = or i32 %3, %2
  store i32 %4, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !476
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @one_code_hoisting_pass() unnamed_addr #0 !prof !592 !PGOFuncName !1377 {
  store i32 0, ptr @gcse_subst_count, align 4, !tbaa !476
  store i32 0, ptr @gcse_create_count, align 4, !tbaa !476
  %1 = load ptr, ptr @cfun, align 8, !tbaa !480
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !509
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !511
  %6 = icmp slt i32 %5, 4
  br i1 %6, label %56, label %7

7:                                                ; preds = %0
  %8 = tail call fastcc zeroext i8 @is_too_expensive(ptr noundef nonnull @.str.47) #22, !range !514
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %7
  tail call void @init_alias_analysis() #23
  store i32 0, ptr @bytes_used, align 4, !tbaa !476
  %11 = tail call i32 @_obstack_begin(ptr noundef nonnull @gcse_obstack, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @xmalloc, ptr noundef nonnull @free) #23
  tail call fastcc void @alloc_gcse_mem() #22
  tail call fastcc void @alloc_hash_table(ptr noundef nonnull @expr_hash_table, i32 noundef 0) #22
  tail call fastcc void @compute_hash_table(ptr noundef nonnull @expr_hash_table) #22
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call fastcc void @dump_hash_table(ptr noundef nonnull %12, ptr noundef nonnull @.str.48, ptr noundef nonnull @expr_hash_table) #22
  br label %15

15:                                               ; preds = %14, %10
  %16 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !518
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @cfun, align 8, !tbaa !480
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !509
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !517
  tail call fastcc void @alloc_code_hoist_mem(i32 noundef %23, i32 noundef %16) #22
  tail call fastcc void @compute_code_hoist_data() #22
  %24 = tail call fastcc i32 @hoist_code() #22, !range !507
  tail call fastcc void @free_code_hoist_mem() #22
  br label %25

25:                                               ; preds = %18, %15
  %26 = phi i32 [ %24, %18 ], [ 0, %15 ]
  tail call fastcc void @free_hash_table(ptr noundef nonnull @expr_hash_table) #22
  tail call fastcc void @free_gcse_mem() #22
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 1), align 8, !tbaa !535
  %28 = ptrtoint ptr %27 to i64
  %29 = sub i64 0, %28
  store i64 %29, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 5), align 8, !tbaa !537
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 4), align 8, !tbaa !539
  %33 = ptrtoint ptr %32 to i64
  %34 = sub i64 %33, %28
  %35 = icmp sgt i64 %34, %29
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, ptr %27, i64 %29
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 2), align 8, !tbaa !540
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @gcse_obstack, i64 0, i32 3), align 8, !tbaa !541
  br label %40

38:                                               ; preds = %31, %25
  %39 = getelementptr inbounds i8, ptr %27, i64 %29
  tail call void @obstack_free(ptr noundef nonnull @gcse_obstack, ptr noundef %39) #23
  br label %40

40:                                               ; preds = %38, %36
  tail call void @end_alias_analysis() #23
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  %44 = tail call ptr @current_function_name() #23
  %45 = load ptr, ptr @cfun, align 8, !tbaa !480
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !509
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !511
  %50 = load i32, ptr @bytes_used, align 4, !tbaa !476
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %41, ptr noundef nonnull @.str.49, ptr noundef %44, i32 noundef %49, i32 noundef %50) #22
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %53 = load i32, ptr @gcse_subst_count, align 4, !tbaa !476
  %54 = load i32, ptr @gcse_create_count, align 4, !tbaa !476
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.30, i32 noundef %53, i32 noundef %54) #22
  br label %56

56:                                               ; preds = %40, %43, %0, %7
  %57 = phi i32 [ 0, %7 ], [ 0, %0 ], [ %26, %43 ], [ %26, %40 ]
  ret i32 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alloc_code_hoist_mem(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !592 !PGOFuncName !1378 {
  %3 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #23
  store ptr %3, ptr @antloc, align 8, !tbaa !480
  %4 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #23
  store ptr %4, ptr @transp, align 8, !tbaa !480
  %5 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #23
  store ptr %5, ptr @comp, align 8, !tbaa !480
  %6 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #23
  store ptr %6, ptr @hoist_vbein, align 8, !tbaa !480
  %7 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #23
  store ptr %7, ptr @hoist_vbeout, align 8, !tbaa !480
  %8 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #23
  store ptr %8, ptr @hoist_exprs, align 8, !tbaa !480
  %9 = tail call ptr @sbitmap_vector_alloc(i32 noundef %0, i32 noundef %1) #23
  store ptr %9, ptr @transpout, align 8, !tbaa !480
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_code_hoist_data() unnamed_addr #0 !prof !592 !PGOFuncName !1379 {
  %1 = load ptr, ptr @transp, align 8, !tbaa !480
  %2 = load ptr, ptr @comp, align 8, !tbaa !480
  %3 = load ptr, ptr @antloc, align 8, !tbaa !480
  tail call fastcc void @compute_local_properties(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @expr_hash_table) #22
  tail call fastcc void @compute_transpout() #22
  tail call fastcc void @compute_code_hoist_vbeinout() #22
  tail call void @calculate_dominance_info(i32 noundef 1) #23
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = tail call i32 @fputc(i32 10, ptr nonnull %4)
  br label %8

8:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @hoist_code() unnamed_addr #0 !prof !592 !PGOFuncName !1380 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = load ptr, ptr @hoist_exprs, align 8, !tbaa !480
  %4 = load ptr, ptr @cfun, align 8, !tbaa !480
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !509
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !517
  tail call void @sbitmap_vector_zero(ptr noundef %3, i32 noundef %8) #23
  %9 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 2), align 4, !tbaa !518
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 8) #23
  %12 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8, !tbaa !588
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %0
  %15 = zext i32 %12 to i64
  br label %16

16:                                               ; preds = %14, %31
  %17 = phi i64 [ 0, %14 ], [ %32, %31 ]
  %18 = load ptr, ptr @expr_hash_table, align 8, !tbaa !589
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !480
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %16, %22
  %23 = phi ptr [ %29, %22 ], [ %20, %16 ]
  %24 = getelementptr inbounds %struct.expr, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !594
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %11, i64 %26
  store ptr %23, ptr %27, align 8, !tbaa !480
  %28 = getelementptr inbounds %struct.expr, ptr %23, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !480
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %22, !llvm.loop !1381

31:                                               ; preds = %22, %16
  %32 = add nuw nsw i64 %17, 1
  %33 = icmp eq i64 %32, %15
  br i1 %33, label %34, label %16, !llvm.loop !1382

34:                                               ; preds = %31, %0
  %35 = load ptr, ptr @cfun, align 8, !tbaa !480
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !509
  %38 = load ptr, ptr %37, align 8, !tbaa !521
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !522
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !524
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %255, label %44

44:                                               ; preds = %34, %245
  %45 = phi ptr [ %248, %245 ], [ %40, %34 ]
  %46 = phi i32 [ %246, %245 ], [ 0, %34 ]
  %47 = tail call ptr @get_dominated_by(i32 noundef 1, ptr noundef %45) #23
  store ptr %47, ptr %2, align 8, !tbaa !480
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 9
  %49 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !480
  %50 = load i32, ptr %48, align 8, !tbaa !584
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !480
  %54 = getelementptr inbounds %struct.simple_bitmap_def, ptr %53, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !1383
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
  %66 = load i64, ptr %65, align 8, !tbaa !801
  %67 = and i32 %61, 63
  %68 = zext nneg i32 %67 to i64
  %69 = shl nuw i64 1, %68
  %70 = and i64 %66, %69
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %118, label %72

72:                                               ; preds = %57
  %73 = load ptr, ptr @transpout, align 8, !tbaa !480
  %74 = getelementptr inbounds ptr, ptr %73, i64 %60
  %75 = load ptr, ptr %74, align 8, !tbaa !480
  %76 = getelementptr inbounds %struct.simple_bitmap_def, ptr %75, i64 0, i32 3, i64 %64
  %77 = load i64, ptr %76, align 8, !tbaa !801
  %78 = and i64 %77, %69
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %118, label %80

80:                                               ; preds = %72
  %81 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %47, i32 noundef 0, ptr noundef nonnull %1) #22, !range !507
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %115, label %83

83:                                               ; preds = %80, %102
  %84 = phi i32 [ %104, %102 ], [ 0, %80 ]
  %85 = phi i32 [ %103, %102 ], [ 0, %80 ]
  %86 = load ptr, ptr %1, align 8, !tbaa !480
  %87 = icmp eq ptr %45, %86
  br i1 %87, label %102, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr @antloc, align 8, !tbaa !480
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %86, i64 0, i32 9
  %91 = load i32, ptr %90, align 8, !tbaa !584
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %89, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !480
  %95 = getelementptr inbounds %struct.simple_bitmap_def, ptr %94, i64 0, i32 3, i64 %64
  %96 = load i64, ptr %95, align 8, !tbaa !801
  %97 = and i64 %96, %69
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %88
  %100 = tail call fastcc i32 @hoist_expr_reaches_here_p(ptr noundef %45, i32 noundef %61, ptr noundef nonnull %86, ptr noundef null) #22, !range !507
  %101 = add nsw i32 %100, %85
  br label %102

102:                                              ; preds = %99, %88, %83
  %103 = phi i32 [ %85, %83 ], [ %85, %88 ], [ %101, %99 ]
  %104 = add i32 %84, 1
  %105 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %47, i32 noundef %104, ptr noundef nonnull %1) #22, !range !507
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %83, !llvm.loop !1384

107:                                              ; preds = %102
  %108 = icmp sgt i32 %103, 1
  %109 = load i32, ptr %48, align 8, !tbaa !584
  br i1 %108, label %110, label %118

110:                                              ; preds = %107
  %111 = load ptr, ptr @hoist_exprs, align 8, !tbaa !480
  %112 = sext i32 %109 to i64
  %113 = getelementptr inbounds ptr, ptr %111, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !480
  tail call fastcc void @SET_BIT(ptr noundef %114, i32 noundef %61) #22
  br label %115

115:                                              ; preds = %80, %110
  %116 = phi i32 [ 1, %110 ], [ %62, %80 ]
  %117 = load i32, ptr %48, align 8, !tbaa !584
  br label %118

118:                                              ; preds = %115, %107, %72, %57
  %119 = phi i32 [ %109, %107 ], [ %58, %72 ], [ %58, %57 ], [ %117, %115 ]
  %120 = phi i32 [ %62, %107 ], [ %62, %72 ], [ %62, %57 ], [ %116, %115 ]
  %121 = add nuw i32 %61, 1
  %122 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !480
  %123 = sext i32 %119 to i64
  %124 = getelementptr inbounds ptr, ptr %122, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !480
  %126 = getelementptr inbounds %struct.simple_bitmap_def, ptr %125, i64 0, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !1383
  %128 = icmp ult i32 %121, %127
  br i1 %128, label %57, label %129, !llvm.loop !1385

129:                                              ; preds = %118
  %130 = icmp eq i32 %120, 0
  br i1 %130, label %245, label %131

131:                                              ; preds = %129
  %132 = load ptr, ptr @hoist_exprs, align 8, !tbaa !480
  %133 = sext i32 %119 to i64
  %134 = getelementptr inbounds ptr, ptr %132, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !480
  %136 = getelementptr inbounds %struct.simple_bitmap_def, ptr %135, i64 0, i32 1
  %137 = load i32, ptr %136, align 8, !tbaa !1383
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
  %147 = load i64, ptr %146, align 8, !tbaa !801
  %148 = and i64 %141, 63
  %149 = shl nuw i64 1, %148
  %150 = and i64 %147, %149
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %233, label %152

152:                                              ; preds = %139
  %153 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %47, i32 noundef 0, ptr noundef nonnull %1) #22, !range !507
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %233, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds ptr, ptr %11, i64 %141
  br label %157

157:                                              ; preds = %155, %225
  %158 = phi i32 [ 0, %155 ], [ %228, %225 ]
  %159 = phi i32 [ 0, %155 ], [ %227, %225 ]
  %160 = phi i32 [ %143, %155 ], [ %226, %225 ]
  %161 = load ptr, ptr %1, align 8, !tbaa !480
  %162 = icmp eq ptr %45, %161
  br i1 %162, label %225, label %163

163:                                              ; preds = %157
  %164 = load ptr, ptr @antloc, align 8, !tbaa !480
  %165 = getelementptr inbounds %struct.basic_block_def, ptr %161, i64 0, i32 9
  %166 = load i32, ptr %165, align 8, !tbaa !584
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds ptr, ptr %164, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !480
  %170 = getelementptr inbounds %struct.simple_bitmap_def, ptr %169, i64 0, i32 3, i64 %145
  %171 = load i64, ptr %170, align 8, !tbaa !801
  %172 = and i64 %171, %149
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %225, label %174

174:                                              ; preds = %163
  %175 = tail call fastcc i32 @hoist_expr_reaches_here_p(ptr noundef %45, i32 noundef %144, ptr noundef nonnull %161, ptr noundef null) #22, !range !507
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %225, label %177

177:                                              ; preds = %174
  %178 = load ptr, ptr %156, align 8, !tbaa !480
  %179 = getelementptr inbounds %struct.expr, ptr %178, i64 0, i32 3
  br label %180

180:                                              ; preds = %180, %177
  %181 = phi ptr [ %179, %177 ], [ %182, %180 ]
  %182 = load ptr, ptr %181, align 8, !tbaa !480
  %183 = getelementptr inbounds %struct.occr, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !935
  %185 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 0, i32 1, i32 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !467
  %187 = icmp ne ptr %186, %161
  %188 = icmp ne ptr %182, null
  %189 = and i1 %188, %187
  br i1 %189, label %180, label %190, !llvm.loop !1386

190:                                              ; preds = %180
  %191 = load i32, ptr %184, align 8
  %192 = and i32 %191, 65535
  %193 = add nsw i32 %192, -7
  %194 = icmp ult i32 %193, 4
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.rtx_def, ptr %184, i64 1
  %197 = load ptr, ptr %196, align 8, !tbaa !467
  %198 = load i32, ptr %197, align 8
  %199 = and i32 %198, 65535
  %200 = icmp eq i32 %199, 23
  br i1 %200, label %205, label %201

201:                                              ; preds = %195
  %202 = tail call ptr @single_set_2(ptr noundef nonnull %184, ptr noundef nonnull %197) #23
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %190, %201
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 4387, ptr noundef nonnull @.str.15) #23
  br label %205

205:                                              ; preds = %195, %201, %204
  %206 = phi ptr [ %202, %201 ], [ null, %204 ], [ %197, %195 ]
  %207 = getelementptr inbounds %struct.expr, ptr %178, i64 0, i32 5
  %208 = load ptr, ptr %207, align 8, !tbaa !1019
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !467
  %213 = tail call ptr @gen_reg_rtx_and_attrs(ptr noundef %212) #23
  store ptr %213, ptr %207, align 8, !tbaa !1019
  br label %214

214:                                              ; preds = %210, %205
  %215 = phi ptr [ %213, %210 ], [ %208, %205 ]
  %216 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !467
  tail call fastcc void @gcse_emit_move_after(ptr noundef %215, ptr noundef %217, ptr noundef nonnull %184) #22
  %218 = tail call ptr @delete_insn(ptr noundef nonnull %184) #23
  %219 = getelementptr inbounds %struct.occr, ptr %182, i64 0, i32 2
  store i8 1, ptr %219, align 8, !tbaa !939
  %220 = load i32, ptr @gcse_subst_count, align 4, !tbaa !476
  %221 = add nsw i32 %220, 1
  store i32 %221, ptr @gcse_subst_count, align 4, !tbaa !476
  %222 = icmp eq i32 %159, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %214
  %224 = load ptr, ptr %156, align 8, !tbaa !480
  tail call fastcc void @insert_insn_end_basic_block(ptr noundef %224, ptr noundef %45) #22
  br label %225

225:                                              ; preds = %214, %223, %174, %163, %157
  %226 = phi i32 [ %160, %157 ], [ %160, %174 ], [ %160, %163 ], [ 1, %223 ], [ 1, %214 ]
  %227 = phi i32 [ %159, %157 ], [ %159, %174 ], [ %159, %163 ], [ 1, %223 ], [ 1, %214 ]
  %228 = add i32 %158, 1
  %229 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %47, i32 noundef %228, ptr noundef nonnull %1) #22, !range !507
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %157, !llvm.loop !1387

231:                                              ; preds = %225
  %232 = load ptr, ptr @hoist_exprs, align 8, !tbaa !480
  br label %233

233:                                              ; preds = %231, %152, %139
  %234 = phi ptr [ %140, %139 ], [ %140, %152 ], [ %232, %231 ]
  %235 = phi i32 [ %143, %139 ], [ %143, %152 ], [ %226, %231 ]
  %236 = add nuw nsw i64 %141, 1
  %237 = load i32, ptr %48, align 8, !tbaa !584
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds ptr, ptr %234, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !480
  %241 = getelementptr inbounds %struct.simple_bitmap_def, ptr %240, i64 0, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !1383
  %243 = zext i32 %242 to i64
  %244 = icmp ult i64 %236, %243
  br i1 %244, label %139, label %245, !llvm.loop !1388

245:                                              ; preds = %233, %131, %129, %44
  %246 = phi i32 [ %46, %44 ], [ %46, %129 ], [ %46, %131 ], [ %235, %233 ]
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %2) #22
  %247 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 6
  %248 = load ptr, ptr %247, align 8, !tbaa !522
  %249 = load ptr, ptr @cfun, align 8, !tbaa !480
  %250 = getelementptr inbounds %struct.function, ptr %249, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !509
  %252 = getelementptr inbounds %struct.control_flow_graph, ptr %251, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !524
  %254 = icmp eq ptr %248, %253
  br i1 %254, label %255, label %44, !llvm.loop !1389

255:                                              ; preds = %245, %34
  %256 = phi i32 [ 0, %34 ], [ %246, %245 ]
  tail call void @free(ptr noundef %11) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  ret i32 %256
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_code_hoist_mem() unnamed_addr #0 !prof !592 !PGOFuncName !1390 {
  %1 = load ptr, ptr @antloc, align 8, !tbaa !480
  tail call void @free(ptr noundef %1) #22
  %2 = load ptr, ptr @transp, align 8, !tbaa !480
  tail call void @free(ptr noundef %2) #22
  %3 = load ptr, ptr @comp, align 8, !tbaa !480
  tail call void @free(ptr noundef %3) #22
  %4 = load ptr, ptr @hoist_vbein, align 8, !tbaa !480
  tail call void @free(ptr noundef %4) #22
  %5 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !480
  tail call void @free(ptr noundef %5) #22
  %6 = load ptr, ptr @hoist_exprs, align 8, !tbaa !480
  tail call void @free(ptr noundef %6) #22
  %7 = load ptr, ptr @transpout, align 8, !tbaa !480
  tail call void @free(ptr noundef %7) #22
  tail call void @free_dominance_info(i32 noundef 1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_transpout() unnamed_addr #0 !prof !592 !PGOFuncName !1391 {
  %1 = load ptr, ptr @transpout, align 8, !tbaa !480
  %2 = load ptr, ptr @cfun, align 8, !tbaa !480
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !509
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !517
  tail call void @sbitmap_vector_ones(ptr noundef %1, i32 noundef %6) #23
  %7 = load ptr, ptr @cfun, align 8, !tbaa !480
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !509
  %10 = load ptr, ptr %9, align 8, !tbaa !521
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !522
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !524
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
  %24 = load ptr, ptr %23, align 8, !tbaa !467
  %25 = getelementptr inbounds %struct.rtl_bb_info, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !526
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
  %37 = load ptr, ptr @expr_hash_table, align 8, !tbaa !589
  %38 = getelementptr inbounds ptr, ptr %37, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !480
  %40 = icmp eq ptr %39, null
  br i1 %40, label %68, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr @transpout, align 8
  br label %43

43:                                               ; preds = %41, %62
  %44 = phi ptr [ %39, %41 ], [ %64, %62 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !598
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 43
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !467
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 67174399
  %54 = icmp eq i32 %53, 67108909
  br i1 %54, label %62, label %55

55:                                               ; preds = %49
  %56 = load i32, ptr %33, align 8, !tbaa !584
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %42, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !480
  %60 = getelementptr inbounds %struct.expr, ptr %44, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !594
  tail call fastcc void @RESET_BIT(ptr noundef %59, i32 noundef %61) #22
  br label %62

62:                                               ; preds = %49, %43, %55
  %63 = getelementptr inbounds %struct.expr, ptr %44, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !480
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %43, !llvm.loop !1392

66:                                               ; preds = %62
  %67 = load i32, ptr getelementptr inbounds (%struct.hash_table_d, ptr @expr_hash_table, i64 0, i32 1), align 8
  br label %68

68:                                               ; preds = %66, %34
  %69 = phi i32 [ %67, %66 ], [ %35, %34 ]
  %70 = add nuw nsw i64 %36, 1
  %71 = zext i32 %69 to i64
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %34, label %73, !llvm.loop !1393

73:                                               ; preds = %68
  %74 = load ptr, ptr @cfun, align 8, !tbaa !480
  br label %75

75:                                               ; preds = %73, %18
  %76 = phi ptr [ %74, %73 ], [ %19, %18 ]
  %77 = phi i32 [ %69, %73 ], [ %20, %18 ]
  %78 = phi i32 [ %69, %73 ], [ %21, %18 ]
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !522
  %81 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !509
  %83 = getelementptr inbounds %struct.control_flow_graph, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !524
  %85 = icmp eq ptr %80, %84
  br i1 %85, label %86, label %18, !llvm.loop !1394

86:                                               ; preds = %75, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_code_hoist_vbeinout() unnamed_addr #0 !prof !592 !PGOFuncName !1395 {
  %1 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !480
  %2 = load ptr, ptr @cfun, align 8, !tbaa !480
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !509
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !517
  tail call void @sbitmap_vector_zero(ptr noundef %1, i32 noundef %6) #23
  %7 = load ptr, ptr @hoist_vbein, align 8, !tbaa !480
  %8 = load ptr, ptr @cfun, align 8, !tbaa !480
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !509
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !517
  tail call void @sbitmap_vector_zero(ptr noundef %7, i32 noundef %12) #23
  %13 = load ptr, ptr @cfun, align 8, !tbaa !480
  br label %14

14:                                               ; preds = %0, %70
  %15 = phi ptr [ %13, %0 ], [ %65, %70 ]
  %16 = phi i32 [ 0, %0 ], [ %71, %70 ]
  %17 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !509
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !524
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !1396
  %23 = load ptr, ptr %18, align 8, !tbaa !521
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
  %32 = load ptr, ptr %31, align 8, !tbaa !522
  %33 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !524
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %27
  %37 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !480
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !584
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %37, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !480
  %43 = load ptr, ptr @hoist_vbein, align 8, !tbaa !480
  tail call void @sbitmap_intersection_of_succs(ptr noundef %42, ptr noundef %43, i32 noundef %39) #23
  br label %44

44:                                               ; preds = %36, %27
  %45 = load ptr, ptr @hoist_vbein, align 8, !tbaa !480
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !584
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %45, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !480
  %51 = load ptr, ptr @antloc, align 8, !tbaa !480
  %52 = getelementptr inbounds ptr, ptr %51, i64 %48
  %53 = load ptr, ptr %52, align 8, !tbaa !480
  %54 = load ptr, ptr @hoist_vbeout, align 8, !tbaa !480
  %55 = getelementptr inbounds ptr, ptr %54, i64 %48
  %56 = load ptr, ptr %55, align 8, !tbaa !480
  %57 = load ptr, ptr @transp, align 8, !tbaa !480
  %58 = getelementptr inbounds ptr, ptr %57, i64 %48
  %59 = load ptr, ptr %58, align 8, !tbaa !480
  %60 = tail call zeroext i8 @sbitmap_a_or_b_and_c_cg(ptr noundef %50, ptr noundef %53, ptr noundef %56, ptr noundef %59) #23
  %61 = zext i8 %60 to i32
  %62 = or i32 %30, %61
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !1396
  %65 = load ptr, ptr @cfun, align 8, !tbaa !480
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !509
  %68 = load ptr, ptr %67, align 8, !tbaa !521
  %69 = icmp eq ptr %64, %68
  br i1 %69, label %70, label %27, !llvm.loop !1397

70:                                               ; preds = %44
  %71 = add nuw nsw i32 %16, 1
  %72 = icmp eq i32 %62, 0
  br i1 %72, label %73, label %14, !llvm.loop !1398

73:                                               ; preds = %70, %25
  %74 = phi i32 [ %26, %25 ], [ %71, %70 ]
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !480
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %75, ptr noundef nonnull @.str.50, i32 noundef %74) #22
  br label %79

79:                                               ; preds = %77, %73
  ret void
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_intersection_of_succs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @sbitmap_a_or_b_and_c_cg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_dominated_by(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #16 !prof !592 !PGOFuncName !1399 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1400
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !480
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !480
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @hoist_expr_reaches_here_p(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !592 !PGOFuncName !1402 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  %7 = icmp eq ptr %3, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load ptr, ptr @cfun, align 8, !tbaa !480
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !509
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !517
  %14 = sext i32 %13 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 1) #23
  br label %16

16:                                               ; preds = %8, %4
  %17 = phi ptr [ %15, %8 ], [ %3, %4 ]
  %18 = tail call fastcc ptr @ei_start_1(ptr noundef %2) #22
  store i32 0, ptr %6, align 8, !tbaa.struct !749
  %19 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %18, ptr %19, align 8, !tbaa.struct !750
  %20 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %5) #22, !range !514
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
  %29 = load ptr, ptr %5, align 8, !tbaa !480
  %30 = load ptr, ptr %29, align 8, !tbaa !1137
  %31 = load ptr, ptr @cfun, align 8, !tbaa !480
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !509
  %34 = load ptr, ptr %33, align 8, !tbaa !521
  %35 = icmp eq ptr %30, %34
  br i1 %35, label %69, label %36

36:                                               ; preds = %28
  %37 = icmp eq ptr %30, %0
  br i1 %37, label %64, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !584
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %17, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !467
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = load ptr, ptr @comp, align 8, !tbaa !480
  %47 = getelementptr inbounds ptr, ptr %46, i64 %41
  %48 = load ptr, ptr %47, align 8, !tbaa !480
  %49 = getelementptr inbounds %struct.simple_bitmap_def, ptr %48, i64 0, i32 3, i64 %24
  %50 = load i64, ptr %49, align 8, !tbaa !801
  %51 = and i64 %50, %27
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %45
  %54 = load ptr, ptr @transp, align 8, !tbaa !480
  %55 = getelementptr inbounds ptr, ptr %54, i64 %41
  %56 = load ptr, ptr %55, align 8, !tbaa !480
  %57 = getelementptr inbounds %struct.simple_bitmap_def, ptr %56, i64 0, i32 3, i64 %24
  %58 = load i64, ptr %57, align 8, !tbaa !801
  %59 = and i64 %58, %27
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  store i8 1, ptr %42, align 1, !tbaa !467
  %62 = tail call fastcc i32 @hoist_expr_reaches_here_p(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %30, ptr noundef nonnull %17) #22, !range !507
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %38, %36, %61
  call fastcc void @ei_next(ptr noundef nonnull %6) #22
  %65 = load i32, ptr %6, align 8
  %66 = load ptr, ptr %19, align 8
  %67 = call fastcc zeroext i8 @ei_cond(i32 %65, ptr %66, ptr noundef nonnull %5) #22, !range !514
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %28, !llvm.loop !1403

69:                                               ; preds = %64, %61, %28, %45, %53, %16
  br i1 %7, label %70, label %71

70:                                               ; preds = %69
  tail call void @free(ptr noundef %17) #22
  br label %71

71:                                               ; preds = %70, %69
  %72 = load ptr, ptr %5, align 8, !tbaa !480
  %73 = icmp eq ptr %72, null
  %74 = zext i1 %73 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  ret i32 %74
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #5 !prof !592 !PGOFuncName !1404 {
  %2 = load ptr, ptr %0, align 8, !tbaa !480
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !480
  ret void
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) #3

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { optsize }
attributes #23 = { nounwind optsize }
attributes #24 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!464}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463}
!36 = !{ptr @can_copy_p, ptr @compute_can_copy, i64 2}
!37 = !{ptr @compute_can_copy, ptr @start_sequence, i64 1}
!38 = !{ptr @compute_can_copy, ptr @end_sequence, i64 1}
!39 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @general_operand, i64 750697}
!40 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @gen_rtx_REG, i64 2}
!41 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @gen_rtx_fmt_ee_stat, i64 2}
!42 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @make_insn_raw, i64 2}
!43 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @recog, i64 139286}
!44 = !{ptr @can_assign_to_reg_without_clobbers_p, ptr @added_clobbers_hard_reg_p, i64 64332}
!45 = !{ptr @fis_get_condition, ptr @get_condition, i64 619301}
!46 = !{ptr @gate_rtl_cprop, ptr @dbg_cnt, i64 19950}
!47 = !{ptr @execute_rtl_cprop, ptr @delete_unreachable_blocks, i64 19953}
!48 = !{ptr @execute_rtl_cprop, ptr @df_set_flags, i64 19953}
!49 = !{ptr @execute_rtl_cprop, ptr @df_analyze, i64 19953}
!50 = !{ptr @execute_rtl_cprop, ptr @one_cprop_pass, i64 19953}
!51 = !{ptr @one_cprop_pass, ptr @is_too_expensive, i64 14899}
!52 = !{ptr @one_cprop_pass, ptr @_obstack_begin, i64 14898}
!53 = !{ptr @one_cprop_pass, ptr @alloc_gcse_mem, i64 14898}
!54 = !{ptr @one_cprop_pass, ptr @local_cprop_pass, i64 14898}
!55 = !{ptr @one_cprop_pass, ptr @delete_unreachable_blocks, i64 2166}
!56 = !{ptr @one_cprop_pass, ptr @df_analyze, i64 2166}
!57 = !{ptr @one_cprop_pass, ptr @xcalloc, i64 14898}
!58 = !{ptr @one_cprop_pass, ptr @find_implicit_sets, i64 14898}
!59 = !{ptr @one_cprop_pass, ptr @alloc_hash_table, i64 14898}
!60 = !{ptr @one_cprop_pass, ptr @compute_hash_table, i64 14898}
!61 = !{ptr @one_cprop_pass, ptr @free, i64 14898}
!62 = !{ptr @one_cprop_pass, ptr @dump_hash_table, i64 1}
!63 = !{ptr @one_cprop_pass, ptr @alloc_cprop_mem, i64 12802}
!64 = !{ptr @one_cprop_pass, ptr @compute_cprop_data, i64 12802}
!65 = !{ptr @one_cprop_pass, ptr @reset_opr_set_tables, i64 759335}
!66 = !{ptr @one_cprop_pass, ptr @cprop_insn, i64 2957195}
!67 = !{ptr @one_cprop_pass, ptr @mark_oprs_set, i64 2957194}
!68 = !{ptr @one_cprop_pass, ptr @bypass_conditional_jumps, i64 12802}
!69 = !{ptr @one_cprop_pass, ptr @free_cprop_mem, i64 12802}
!70 = !{ptr @one_cprop_pass, ptr @free_hash_table, i64 14898}
!71 = !{ptr @one_cprop_pass, ptr @free_gcse_mem, i64 14898}
!72 = !{ptr @one_cprop_pass, ptr @obstack_free, i64 14897}
!73 = !{ptr @one_cprop_pass, ptr @current_function_name, i64 1}
!74 = !{ptr @one_cprop_pass, ptr @fprintf, i64 3}
!75 = !{ptr @is_too_expensive, ptr @warning, i64 2}
!76 = !{ptr @is_too_expensive, ptr @max_reg_num, i64 19872}
!77 = !{ptr @alloc_gcse_mem, ptr @bitmap_obstack_alloc_stat, i64 59616}
!78 = !{ptr @alloc_gcse_mem, ptr @gcalloc, i64 39744}
!79 = !{ptr @local_cprop_pass, ptr @cselib_init, i64 14899}
!80 = !{ptr @local_cprop_pass, ptr @find_reg_equal_equiv_note, i64 3157918}
!81 = !{ptr @local_cprop_pass, ptr @note_uses, i64 3181088}
!82 = !{ptr @local_cprop_pass, ptr @local_cprop_find_used_regs, i64 113313}
!83 = !{ptr @local_cprop_pass, ptr @do_local_cprop, i64 3338855}
!84 = !{ptr @local_cprop_pass, ptr @cselib_process_insn, i64 4362835}
!85 = !{ptr @local_cprop_pass, ptr @cselib_clear_table, i64 789538}
!86 = !{ptr @local_cprop_pass, ptr @cselib_finish, i64 14899}
!87 = !{ptr @find_implicit_sets, ptr @VEC_edge_base_length, i64 789538}
!88 = !{ptr @find_implicit_sets, ptr @fis_get_condition, i64 466065}
!89 = !{ptr @find_implicit_sets, ptr @rhs_regno, i64 314413}
!90 = !{ptr @find_implicit_sets, ptr @implicit_set_cond_p, i64 314411}
!91 = !{ptr @find_implicit_sets, ptr @VEC_edge_base_index, i64 429619}
!92 = !{ptr @find_implicit_sets, ptr @single_pred_p, i64 280502}
!93 = !{ptr @find_implicit_sets, ptr @gen_rtx_fmt_ee_stat, i64 145408}
!94 = !{ptr @find_implicit_sets, ptr @fprintf, i64 3}
!95 = !{ptr @alloc_hash_table, ptr @get_max_insn_count, i64 19872}
!96 = !{ptr @alloc_hash_table, ptr @gmalloc, i64 19872}
!97 = !{ptr @compute_hash_table, ptr @compute_hash_table_work, i64 19872}
!98 = !{ptr @alloc_cprop_mem, ptr @sbitmap_vector_alloc, i64 51216}
!99 = !{ptr @compute_cprop_data, ptr @compute_local_properties, i64 12804}
!100 = !{ptr @compute_cprop_data, ptr @compute_available, i64 12804}
!101 = !{ptr @reset_opr_set_tables, ptr @bitmap_clear, i64 759512}
!102 = !{ptr @reset_opr_set_tables, ptr @clear_modify_mem_tables, i64 759512}
!103 = !{ptr @cprop_insn, ptr @note_uses, i64 3000413}
!104 = !{ptr @cprop_insn, ptr @find_reg_equal_equiv_note, i64 3000413}
!105 = !{ptr @cprop_insn, ptr @find_used_regs, i64 85104}
!106 = !{ptr @cprop_insn, ptr @rhs_regno, i64 3124333}
!107 = !{ptr @cprop_insn, ptr @oprs_not_set_p, i64 3110372}
!108 = !{ptr @cprop_insn, ptr @find_avail_set, i64 1565195}
!109 = !{ptr @cprop_insn, ptr @fancy_abort, i64 1}
!110 = !{ptr @cprop_insn, ptr @gcse_constant_p, i64 17111}
!111 = !{ptr @cprop_insn, ptr @constprop_register, i64 3150}
!112 = !{ptr @cprop_insn, ptr @fprintf, i64 4}
!113 = !{ptr @cprop_insn, ptr @print_rtl, i64 1}
!114 = !{ptr @cprop_insn, ptr @fputc, i64 1}
!115 = !{ptr @cprop_insn, ptr @try_replace_reg, i64 13958}
!116 = !{ptr @mark_oprs_set, ptr @mark_set, i64 2919046}
!117 = !{ptr @mark_oprs_set, ptr @mark_clobber, i64 289185}
!118 = !{ptr @mark_oprs_set, ptr @mark_call, i64 76371}
!119 = !{ptr @bypass_conditional_jumps, ptr @mark_dfs_back_edges, i64 12803}
!120 = !{ptr @bypass_conditional_jumps, ptr @single_pred_p, i64 759394}
!121 = !{ptr @bypass_conditional_jumps, ptr @any_condjump_p, i64 45346}
!122 = !{ptr @bypass_conditional_jumps, ptr @computed_jump_p, i64 13}
!123 = !{ptr @bypass_conditional_jumps, ptr @onlyjump_p, i64 45334}
!124 = !{ptr @bypass_conditional_jumps, ptr @bypass_block, i64 45333}
!125 = !{ptr @bypass_conditional_jumps, ptr @commit_edge_insertions, i64 237}
!126 = !{ptr @free_cprop_mem, ptr @free, i64 51216}
!127 = !{ptr @free_hash_table, ptr @free, i64 19872}
!128 = !{ptr @free_gcse_mem, ptr @free_modify_mem_tables, i64 19872}
!129 = !{ptr @free_gcse_mem, ptr @bitmap_obstack_free, i64 39744}
!130 = !{ptr @gcalloc, ptr @xcalloc, i64 39744}
!131 = !{ptr @local_cprop_find_used_regs, ptr @find_used_regs, i64 4013138}
!132 = !{ptr @do_local_cprop, ptr @rhs_regno, i64 4536510}
!133 = !{ptr @do_local_cprop, ptr @asm_noperands, i64 1228689}
!134 = !{ptr @do_local_cprop, ptr @cselib_lookup, i64 3361402}
!135 = !{ptr @do_local_cprop, ptr @gcse_constant_p, i64 1884885}
!136 = !{ptr @do_local_cprop, ptr @find_reg_note, i64 630679}
!137 = !{ptr @do_local_cprop, ptr @constprop_register, i64 21733}
!138 = !{ptr @do_local_cprop, ptr @fprintf, i64 4}
!139 = !{ptr @do_local_cprop, ptr @print_rtl, i64 1}
!140 = !{ptr @do_local_cprop, ptr @fputc, i64 1}
!141 = !{ptr @do_local_cprop, ptr @try_replace_reg, i64 14951}
!142 = !{ptr @find_used_regs, ptr @find_used_regs, i64 8369352}
!143 = !{ptr @gcse_constant_p, ptr @rhs_regno, i64 2}
!144 = !{ptr @gcse_constant_p, ptr @shared_const_p, i64 4051}
!145 = !{ptr @constprop_register, ptr @single_set_2, i64 2}
!146 = !{ptr @constprop_register, ptr @any_condjump_p, i64 39300}
!147 = !{ptr @constprop_register, ptr @onlyjump_p, i64 1465}
!148 = !{ptr @constprop_register, ptr @cprop_jump, i64 1463}
!149 = !{ptr @constprop_register, ptr @try_replace_reg, i64 24829}
!150 = !{ptr @try_replace_reg, ptr @find_reg_equal_equiv_note, i64 53742}
!151 = !{ptr @try_replace_reg, ptr @single_set_2, i64 2}
!152 = !{ptr @try_replace_reg, ptr @copy_rtx, i64 54784}
!153 = !{ptr @try_replace_reg, ptr @validate_replace_src_group, i64 53742}
!154 = !{ptr @try_replace_reg, ptr @num_changes_pending, i64 53742}
!155 = !{ptr @try_replace_reg, ptr @apply_change_group, i64 52818}
!156 = !{ptr @try_replace_reg, ptr @simplify_rtx, i64 10358}
!157 = !{ptr @try_replace_reg, ptr @validate_change, i64 13239}
!158 = !{ptr @try_replace_reg, ptr @simplify_replace_rtx, i64 29996}
!159 = !{ptr @try_replace_reg, ptr @set_unique_reg_note, i64 17804}
!160 = !{ptr @try_replace_reg, ptr @reg_mentioned_p, i64 15373}
!161 = !{ptr @try_replace_reg, ptr @rtx_equal_p, i64 13234}
!162 = !{ptr @try_replace_reg, ptr @remove_note, i64 1}
!163 = !{ptr @cprop_jump, ptr @pc_set, i64 1463}
!164 = !{ptr @cprop_jump, ptr @find_reg_equal_equiv_note, i64 2923}
!165 = !{ptr @cprop_jump, ptr @modified_between_p, i64 2923}
!166 = !{ptr @cprop_jump, ptr @single_set_2, i64 1}
!167 = !{ptr @cprop_jump, ptr @simplify_replace_rtx, i64 2923}
!168 = !{ptr @cprop_jump, ptr @rtx_equal_p, i64 1464}
!169 = !{ptr @cprop_jump, ptr @delete_insn, i64 3}
!170 = !{ptr @cprop_jump, ptr @modified_in_p, i64 1459}
!171 = !{ptr @cprop_jump, ptr @validate_unshare_change, i64 3}
!172 = !{ptr @cprop_jump, ptr @remove_note, i64 1}
!173 = !{ptr @cprop_jump, ptr @rhs_regno, i64 1}
!174 = !{ptr @cprop_jump, ptr @fprintf, i64 1}
!175 = !{ptr @cprop_jump, ptr @print_rtl, i64 1}
!176 = !{ptr @cprop_jump, ptr @fputc, i64 1}
!177 = !{ptr @cprop_jump, ptr @purge_dead_edges, i64 4}
!178 = !{ptr @cprop_jump, ptr @simplejump_p, i64 2}
!179 = !{ptr @cprop_jump, ptr @ei_start_1, i64 1}
!180 = !{ptr @cprop_jump, ptr @ei_safe_edge, i64 2}
!181 = !{ptr @cprop_jump, ptr @ei_next, i64 1}
!182 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 176395}
!183 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 130470}
!184 = !{ptr @ei_next, ptr @ei_container, i64 12459677}
!185 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 6229839}
!186 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!187 = !{ptr @ei_end_p, ptr @ei_container, i64 19129049}
!188 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 9564525}
!189 = !{ptr @ei_edge, ptr @ei_container, i64 12539639}
!190 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 6269820}
!191 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!192 = !{ptr @implicit_set_cond_p, ptr @real_compare, i64 1}
!193 = !{ptr @implicit_set_cond_p, ptr @gcse_constant_p, i64 314432}
!194 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 1040037}
!195 = !{ptr @gmalloc, ptr @xmalloc, i64 39744}
!196 = !{ptr @compute_hash_table_work, ptr @clear_modify_mem_tables, i64 19872}
!197 = !{ptr @compute_hash_table_work, ptr @max_reg_num, i64 4805893}
!198 = !{ptr @compute_hash_table_work, ptr @gmalloc, i64 19872}
!199 = !{ptr @compute_hash_table_work, ptr @record_last_reg_set_info, i64 15756731}
!200 = !{ptr @compute_hash_table_work, ptr @mark_call, i64 342539}
!201 = !{ptr @compute_hash_table_work, ptr @note_stores, i64 4189411}
!202 = !{ptr @compute_hash_table_work, ptr @hash_scan_set, i64 145414}
!203 = !{ptr @compute_hash_table_work, ptr @hash_scan_insn, i64 4189411}
!204 = !{ptr @compute_hash_table_work, ptr @free, i64 19872}
!205 = !{ptr @clear_modify_mem_tables, ptr @bmp_iter_set_init, i64 799256}
!206 = !{ptr @clear_modify_mem_tables, ptr @bmp_iter_set, i64 1370676}
!207 = !{ptr @clear_modify_mem_tables, ptr @free_INSN_LIST_list, i64 571420}
!208 = !{ptr @clear_modify_mem_tables, ptr @free_insn_expr_list_list, i64 571420}
!209 = !{ptr @clear_modify_mem_tables, ptr @bmp_iter_next, i64 571420}
!210 = !{ptr @clear_modify_mem_tables, ptr @bitmap_clear, i64 1598512}
!211 = !{ptr @mark_call, ptr @record_last_mem_set_info, i64 555117}
!212 = !{ptr @record_last_set_info, ptr @rhs_regno, i64 3053673}
!213 = !{ptr @record_last_set_info, ptr @record_last_reg_set_info, i64 3053673}
!214 = !{ptr @record_last_set_info, ptr @push_operand, i64 867640}
!215 = !{ptr @record_last_set_info, ptr @record_last_mem_set_info, i64 867639}
!216 = !{ptr @hash_scan_set, ptr @rhs_regno, i64 3389604}
!217 = !{ptr @hash_scan_set, ptr @find_reg_equal_equiv_note, i64 2556552}
!218 = !{ptr @hash_scan_set, ptr @gcse_constant_p, i64 1323290}
!219 = !{ptr @hash_scan_set, ptr @want_to_gcse_p, i64 635953}
!220 = !{ptr @hash_scan_set, ptr @gen_rtx_fmt_ee_stat, i64 3523}
!221 = !{ptr @hash_scan_set, ptr @can_copy_p, i64 606722}
!222 = !{ptr @hash_scan_set, ptr @can_throw_internal, i64 553115}
!223 = !{ptr @hash_scan_set, ptr @set_noop_p, i64 375049}
!224 = !{ptr @hash_scan_set, ptr @oprs_anticipatable_p, i64 225695}
!225 = !{ptr @hash_scan_set, ptr @multiple_sets, i64 131503}
!226 = !{ptr @hash_scan_set, ptr @oprs_available_p, i64 587336}
!227 = !{ptr @hash_scan_set, ptr @insert_expr_in_table, i64 369306}
!228 = !{ptr @hash_scan_set, ptr @next_nonnote_insn, i64 218489}
!229 = !{ptr @hash_scan_set, ptr @insert_set_in_table, i64 335663}
!230 = !{ptr @hash_scan_set, ptr @find_reg_note, i64 143611}
!231 = !{ptr @hash_scan_insn, ptr @hash_scan_set, i64 4138527}
!232 = !{ptr @free_insn_expr_list_list, ptr @free_EXPR_LIST_node, i64 2948279}
!233 = !{ptr @free_insn_expr_list_list, ptr @free_INSN_LIST_node, i64 555119}
!234 = !{ptr @record_last_mem_set_info, ptr @alloc_INSN_LIST, i64 2584864}
!235 = !{ptr @record_last_mem_set_info, ptr @bitmap_set_bit, i64 2584864}
!236 = !{ptr @record_last_mem_set_info, ptr @note_stores, i64 1474626}
!237 = !{ptr @canon_list_insert, ptr @get_addr, i64 1474141}
!238 = !{ptr @canon_list_insert, ptr @canon_rtx, i64 1474141}
!239 = !{ptr @canon_list_insert, ptr @alloc_EXPR_LIST, i64 2948282}
!240 = !{ptr @want_to_gcse_p, ptr @avoid_constant_pool_reference, i64 1036}
!241 = !{ptr @want_to_gcse_p, ptr @can_assign_to_reg_without_clobbers_p, i64 430374}
!242 = !{ptr @oprs_anticipatable_p, ptr @oprs_unchanged_p, i64 225698}
!243 = !{ptr @oprs_available_p, ptr @oprs_unchanged_p, i64 587347}
!244 = !{ptr @insert_expr_in_table, ptr @hash_expr, i64 369314}
!245 = !{ptr @insert_expr_in_table, ptr @expr_equiv_p, i64 443141}
!246 = !{ptr @insert_expr_in_table, ptr @gcse_alloc, i64 376197}
!247 = !{ptr @insert_set_in_table, ptr @fancy_abort, i64 2}
!248 = !{ptr @insert_set_in_table, ptr @rhs_regno, i64 335664}
!249 = !{ptr @insert_set_in_table, ptr @hash_set, i64 335664}
!250 = !{ptr @insert_set_in_table, ptr @expr_equiv_p, i64 2052167}
!251 = !{ptr @insert_set_in_table, ptr @gcse_alloc, i64 474383}
!252 = !{ptr @insert_set_in_table, ptr @copy_rtx, i64 138720}
!253 = !{ptr @oprs_unchanged_p, ptr @rhs_regno, i64 955773}
!254 = !{ptr @oprs_unchanged_p, ptr @load_killed_in_block_p, i64 769086}
!255 = !{ptr @oprs_unchanged_p, ptr @oprs_unchanged_p, i64 837478}
!256 = !{ptr @load_killed_in_block_p, ptr @note_stores, i64 212258}
!257 = !{ptr @mems_conflict_for_gcse_p, ptr @expr_equiv_p, i64 188652}
!258 = !{ptr @mems_conflict_for_gcse_p, ptr @find_rtx_in_ldst, i64 40753}
!259 = !{ptr @mems_conflict_for_gcse_p, ptr @true_dependence, i64 147899}
!260 = !{ptr @expr_equiv_p, ptr @exp_equiv_p, i64 4975010}
!261 = !{ptr @find_rtx_in_ldst, ptr @htab_find_slot, i64 48897}
!262 = !{ptr @hash_expr, ptr @hash_rtx, i64 369314}
!263 = !{ptr @gcse_alloc, ptr @_obstack_newchunk, i64 5927}
!264 = !{ptr @compute_local_properties, ptr @sbitmap_vector_zero, i64 35516}
!265 = !{ptr @compute_local_properties, ptr @sbitmap_vector_ones, i64 4955}
!266 = !{ptr @compute_local_properties, ptr @compute_transp, i64 427677}
!267 = !{ptr @compute_local_properties, ptr @SET_BIT, i64 638135}
!268 = !{ptr @compute_transp, ptr @rhs_regno, i64 465542}
!269 = !{ptr @compute_transp, ptr @SET_BIT, i64 9586998}
!270 = !{ptr @compute_transp, ptr @RESET_BIT, i64 33666288}
!271 = !{ptr @compute_transp, ptr @bmp_iter_set_init, i64 138593}
!272 = !{ptr @compute_transp, ptr @bmp_iter_set, i64 27836136}
!273 = !{ptr @compute_transp, ptr @bmp_iter_next, i64 45031757}
!274 = !{ptr @compute_transp, ptr @bmp_iter_and_compl_init, i64 138593}
!275 = !{ptr @compute_transp, ptr @bmp_iter_and_compl, i64 17472807}
!276 = !{ptr @compute_transp, ptr @canon_true_dependence, i64 22860550}
!277 = !{ptr @compute_transp, ptr @compute_transp, i64 390436}
!278 = !{ptr @oprs_not_set_p, ptr @load_killed_in_block_p, i64 1}
!279 = !{ptr @oprs_not_set_p, ptr @rhs_regno, i64 3100055}
!280 = !{ptr @oprs_not_set_p, ptr @bitmap_bit_p, i64 3100055}
!281 = !{ptr @oprs_not_set_p, ptr @oprs_not_set_p, i64 23}
!282 = !{ptr @find_avail_set, ptr @lookup_set, i64 1592150}
!283 = !{ptr @find_avail_set, ptr @next_set, i64 1386987}
!284 = !{ptr @find_avail_set, ptr @fancy_abort, i64 2}
!285 = !{ptr @find_avail_set, ptr @gcse_constant_p, i64 32973}
!286 = !{ptr @find_avail_set, ptr @oprs_not_set_p, i64 26954}
!287 = !{ptr @find_avail_set, ptr @rhs_regno, i64 26954}
!288 = !{ptr @lookup_set, ptr @hash_set, i64 1686008}
!289 = !{ptr @lookup_set, ptr @rhs_regno, i64 771924}
!290 = !{ptr @next_set, ptr @rhs_regno, i64 424352}
!291 = !{ptr @mark_set, ptr @rhs_regno, i64 1866779}
!292 = !{ptr @mark_set, ptr @bitmap_set_bit, i64 1866779}
!293 = !{ptr @mark_set, ptr @record_last_mem_set_info, i64 606485}
!294 = !{ptr @mark_set, ptr @mark_call, i64 168367}
!295 = !{ptr @mark_clobber, ptr @rhs_regno, i64 288683}
!296 = !{ptr @mark_clobber, ptr @bitmap_set_bit, i64 288683}
!297 = !{ptr @mark_clobber, ptr @record_last_mem_set_info, i64 502}
!298 = !{ptr @bypass_block, ptr @note_uses, i64 45925}
!299 = !{ptr @bypass_block, ptr @find_reg_equal_equiv_note, i64 45925}
!300 = !{ptr @bypass_block, ptr @find_used_regs, i64 1}
!301 = !{ptr @bypass_block, ptr @ei_start_1, i64 45925}
!302 = !{ptr @bypass_block, ptr @ei_cond, i64 171098}
!303 = !{ptr @bypass_block, ptr @ei_next, i64 1772922}
!304 = !{ptr @bypass_block, ptr @ei_safe_edge, i64 1706039}
!305 = !{ptr @bypass_block, ptr @rhs_regno, i64 1319702}
!306 = !{ptr @bypass_block, ptr @find_bypass_set, i64 1319702}
!307 = !{ptr @bypass_block, ptr @reg_killed_on_edge, i64 1115}
!308 = !{ptr @bypass_block, ptr @pc_set, i64 30720}
!309 = !{ptr @bypass_block, ptr @simplify_replace_rtx, i64 61428}
!310 = !{ptr @bypass_block, ptr @VEC_edge_base_index, i64 8324}
!311 = !{ptr @bypass_block, ptr @find_edge, i64 19474}
!312 = !{ptr @bypass_block, ptr @redirect_edge_and_branch_force, i64 12364}
!313 = !{ptr @bypass_block, ptr @copy_insn, i64 12351}
!314 = !{ptr @bypass_block, ptr @insert_insn_on_edge, i64 12351}
!315 = !{ptr @bypass_block, ptr @fprintf, i64 26}
!316 = !{ptr @bypass_block, ptr @print_rtl, i64 13}
!317 = !{ptr @ei_cond, ptr @ei_end_p, i64 9388130}
!318 = !{ptr @ei_cond, ptr @ei_edge, i64 6139350}
!319 = !{ptr @find_bypass_set, ptr @lookup_set, i64 106902}
!320 = !{ptr @find_bypass_set, ptr @next_set, i64 108198}
!321 = !{ptr @find_bypass_set, ptr @fancy_abort, i64 1}
!322 = !{ptr @find_bypass_set, ptr @gcse_constant_p, i64 6535}
!323 = !{ptr @find_bypass_set, ptr @rhs_regno, i64 4018}
!324 = !{ptr @reg_killed_on_edge, ptr @reg_set_p, i64 136}
!325 = !{ptr @free_modify_mem_tables, ptr @clear_modify_mem_tables, i64 19872}
!326 = !{ptr @free_modify_mem_tables, ptr @free, i64 39744}
!327 = !{ptr @gate_rtl_pre, ptr @optimize_function_for_speed_p, i64 6648}
!328 = !{ptr @gate_rtl_pre, ptr @dbg_cnt, i64 6647}
!329 = !{ptr @execute_rtl_pre, ptr @delete_unreachable_blocks, i64 6651}
!330 = !{ptr @execute_rtl_pre, ptr @df_analyze, i64 6651}
!331 = !{ptr @execute_rtl_pre, ptr @one_pre_gcse_pass, i64 6651}
!332 = !{ptr @one_pre_gcse_pass, ptr @is_too_expensive, i64 4973}
!333 = !{ptr @one_pre_gcse_pass, ptr @init_alias_analysis, i64 4972}
!334 = !{ptr @one_pre_gcse_pass, ptr @_obstack_begin, i64 4972}
!335 = !{ptr @one_pre_gcse_pass, ptr @alloc_gcse_mem, i64 4972}
!336 = !{ptr @one_pre_gcse_pass, ptr @alloc_hash_table, i64 4972}
!337 = !{ptr @one_pre_gcse_pass, ptr @add_noreturn_fake_exit_edges, i64 4972}
!338 = !{ptr @one_pre_gcse_pass, ptr @compute_ld_motion_mems, i64 4971}
!339 = !{ptr @one_pre_gcse_pass, ptr @compute_hash_table, i64 4972}
!340 = !{ptr @one_pre_gcse_pass, ptr @trim_ld_motion_mems, i64 4972}
!341 = !{ptr @one_pre_gcse_pass, ptr @dump_hash_table, i64 1}
!342 = !{ptr @one_pre_gcse_pass, ptr @alloc_pre_mem, i64 4953}
!343 = !{ptr @one_pre_gcse_pass, ptr @compute_pre_data, i64 4953}
!344 = !{ptr @one_pre_gcse_pass, ptr @pre_gcse, i64 4953}
!345 = !{ptr @one_pre_gcse_pass, ptr @free_edge_list, i64 4953}
!346 = !{ptr @one_pre_gcse_pass, ptr @free_pre_mem, i64 4953}
!347 = !{ptr @one_pre_gcse_pass, ptr @free_ldst_mems, i64 4972}
!348 = !{ptr @one_pre_gcse_pass, ptr @remove_fake_exit_edges, i64 4972}
!349 = !{ptr @one_pre_gcse_pass, ptr @free_hash_table, i64 4972}
!350 = !{ptr @one_pre_gcse_pass, ptr @free_gcse_mem, i64 4972}
!351 = !{ptr @one_pre_gcse_pass, ptr @obstack_free, i64 4971}
!352 = !{ptr @one_pre_gcse_pass, ptr @end_alias_analysis, i64 4972}
!353 = !{ptr @one_pre_gcse_pass, ptr @current_function_name, i64 1}
!354 = !{ptr @one_pre_gcse_pass, ptr @fprintf, i64 2}
!355 = !{ptr @compute_ld_motion_mems, ptr @htab_create, i64 4973}
!356 = !{ptr @compute_ld_motion_mems, ptr @simple_mem, i64 383677}
!357 = !{ptr @compute_ld_motion_mems, ptr @ldst_entry, i64 230849}
!358 = !{ptr @compute_ld_motion_mems, ptr @alloc_INSN_LIST, i64 230840}
!359 = !{ptr @compute_ld_motion_mems, ptr @invalidate_any_buried_refs, i64 875067}
!360 = !{ptr @compute_ld_motion_mems, ptr @can_assign_to_reg_without_clobbers_p, i64 58348}
!361 = !{ptr @trim_ld_motion_mems, ptr @expr_equiv_p, i64 275373}
!362 = !{ptr @trim_ld_motion_mems, ptr @htab_remove_elt_with_hash, i64 73784}
!363 = !{ptr @trim_ld_motion_mems, ptr @free_ldst_entry, i64 73784}
!364 = !{ptr @trim_ld_motion_mems, ptr @print_ldst_list, i64 1}
!365 = !{ptr @alloc_pre_mem, ptr @sbitmap_vector_alloc, i64 19820}
!366 = !{ptr @compute_pre_data, ptr @compute_local_properties, i64 4955}
!367 = !{ptr @compute_pre_data, ptr @sbitmap_vector_zero, i64 4955}
!368 = !{ptr @compute_pre_data, ptr @sbitmap_alloc, i64 4955}
!369 = !{ptr @compute_pre_data, ptr @sbitmap_zero, i64 4955}
!370 = !{ptr @compute_pre_data, ptr @may_trap_p, i64 184334}
!371 = !{ptr @compute_pre_data, ptr @SET_BIT, i64 114355}
!372 = !{ptr @compute_pre_data, ptr @ei_start_1, i64 269993}
!373 = !{ptr @compute_pre_data, ptr @ei_cond, i64 698062}
!374 = !{ptr @compute_pre_data, ptr @sbitmap_difference, i64 2}
!375 = !{ptr @compute_pre_data, ptr @ei_next, i64 428069}
!376 = !{ptr @compute_pre_data, ptr @sbitmap_a_or_b, i64 269993}
!377 = !{ptr @compute_pre_data, ptr @sbitmap_not, i64 269993}
!378 = !{ptr @compute_pre_data, ptr @pre_edge_lcm, i64 4955}
!379 = !{ptr @compute_pre_data, ptr @free, i64 19820}
!380 = !{ptr @pre_gcse, ptr @xcalloc, i64 4955}
!381 = !{ptr @pre_gcse, ptr @pre_delete, i64 4955}
!382 = !{ptr @pre_gcse, ptr @pre_edge_insert, i64 4955}
!383 = !{ptr @pre_gcse, ptr @pre_insert_copies, i64 4955}
!384 = !{ptr @pre_gcse, ptr @commit_edge_insertions, i64 699}
!385 = !{ptr @pre_gcse, ptr @free, i64 4955}
!386 = !{ptr @free_pre_mem, ptr @free, i64 19818}
!387 = !{ptr @free_ldst_mems, ptr @htab_delete, i64 4972}
!388 = !{ptr @free_ldst_mems, ptr @free_ldst_entry, i64 127125}
!389 = !{ptr @pre_ldst_expr_hash, ptr @hash_rtx, i64 284789}
!390 = !{ptr @pre_ldst_expr_eq, ptr @expr_equiv_p, i64 901431}
!391 = !{ptr @simple_mem, ptr @may_trap_p, i64 1}
!392 = !{ptr @simple_mem, ptr @side_effects_p, i64 530299}
!393 = !{ptr @simple_mem, ptr @reg_mentioned_p, i64 530298}
!394 = !{ptr @ldst_entry, ptr @hash_rtx, i64 375026}
!395 = !{ptr @ldst_entry, ptr @htab_find_slot_with_hash, i64 375026}
!396 = !{ptr @ldst_entry, ptr @xmalloc, i64 208114}
!397 = !{ptr @invalidate_any_buried_refs, ptr @simple_mem, i64 140725}
!398 = !{ptr @invalidate_any_buried_refs, ptr @ldst_entry, i64 140476}
!399 = !{ptr @invalidate_any_buried_refs, ptr @invalidate_any_buried_refs, i64 2241814}
!400 = !{ptr @free_ldst_entry, ptr @free_INSN_LIST_list, i64 416228}
!401 = !{ptr @free_ldst_entry, ptr @free, i64 208114}
!402 = !{ptr @pre_delete, ptr @single_set_2, i64 1}
!403 = !{ptr @pre_delete, ptr @dbg_cnt, i64 5199}
!404 = !{ptr @pre_delete, ptr @gen_reg_rtx_and_attrs, i64 2811}
!405 = !{ptr @pre_delete, ptr @gcse_emit_move_after, i64 5198}
!406 = !{ptr @pre_delete, ptr @delete_insn, i64 5198}
!407 = !{ptr @pre_delete, ptr @fprintf, i64 2}
!408 = !{ptr @pre_delete, ptr @rhs_regno, i64 1}
!409 = !{ptr @pre_edge_insert, ptr @sbitmap_vector_alloc, i64 4955}
!410 = !{ptr @pre_edge_insert, ptr @sbitmap_vector_zero, i64 4955}
!411 = !{ptr @pre_edge_insert, ptr @insert_insn_end_basic_block, i64 1}
!412 = !{ptr @pre_edge_insert, ptr @process_insert_insn, i64 5659}
!413 = !{ptr @pre_edge_insert, ptr @insert_insn_on_edge, i64 5659}
!414 = !{ptr @pre_edge_insert, ptr @fprintf, i64 2}
!415 = !{ptr @pre_edge_insert, ptr @update_ld_motion_stores, i64 5660}
!416 = !{ptr @pre_edge_insert, ptr @SET_BIT, i64 5660}
!417 = !{ptr @pre_edge_insert, ptr @free, i64 4955}
!418 = !{ptr @pre_insert_copies, ptr @pre_expr_reaches_here_p, i64 244432}
!419 = !{ptr @pre_insert_copies, ptr @pre_insert_copy_insn, i64 5162}
!420 = !{ptr @pre_insert_copies, ptr @update_ld_motion_stores, i64 2483}
!421 = !{ptr @gcse_emit_move_after, ptr @single_set_2, i64 2}
!422 = !{ptr @gcse_emit_move_after, ptr @gen_move_insn, i64 5200}
!423 = !{ptr @gcse_emit_move_after, ptr @emit_insn_after, i64 5200}
!424 = !{ptr @gcse_emit_move_after, ptr @rtx_equal_p, i64 5199}
!425 = !{ptr @gcse_emit_move_after, ptr @find_reg_equal_equiv_note, i64 5198}
!426 = !{ptr @gcse_emit_move_after, ptr @copy_insn_1, i64 5198}
!427 = !{ptr @gcse_emit_move_after, ptr @set_unique_reg_note, i64 5198}
!428 = !{ptr @process_insert_insn, ptr @copy_rtx, i64 5661}
!429 = !{ptr @process_insert_insn, ptr @start_sequence, i64 5661}
!430 = !{ptr @process_insert_insn, ptr @general_operand, i64 5661}
!431 = !{ptr @process_insert_insn, ptr @emit_move_insn, i64 4696}
!432 = !{ptr @process_insert_insn, ptr @gen_rtx_fmt_ee_stat, i64 965}
!433 = !{ptr @process_insert_insn, ptr @emit_insn, i64 965}
!434 = !{ptr @process_insert_insn, ptr @insn_invalid_p, i64 965}
!435 = !{ptr @process_insert_insn, ptr @fancy_abort, i64 1}
!436 = !{ptr @process_insert_insn, ptr @get_insns, i64 5661}
!437 = !{ptr @process_insert_insn, ptr @end_sequence, i64 5661}
!438 = !{ptr @update_ld_motion_stores, ptr @find_rtx_in_ldst, i64 8144}
!439 = !{ptr @update_ld_motion_stores, ptr @fwrite, i64 2}
!440 = !{ptr @update_ld_motion_stores, ptr @print_rtl, i64 1}
!441 = !{ptr @update_ld_motion_stores, ptr @print_inline_rtx, i64 1}
!442 = !{ptr @update_ld_motion_stores, ptr @fputc, i64 1}
!443 = !{ptr @update_ld_motion_stores, ptr @copy_rtx, i64 4167}
!444 = !{ptr @update_ld_motion_stores, ptr @gen_move_insn, i64 4167}
!445 = !{ptr @update_ld_motion_stores, ptr @emit_insn_before, i64 4167}
!446 = !{ptr @update_ld_motion_stores, ptr @df_insn_rescan, i64 4167}
!447 = !{ptr @pre_expr_reaches_here_p, ptr @xcalloc, i64 244497}
!448 = !{ptr @pre_expr_reaches_here_p, ptr @pre_expr_reaches_here_p_work, i64 244497}
!449 = !{ptr @pre_expr_reaches_here_p, ptr @free, i64 244497}
!450 = !{ptr @pre_insert_copy_insn, ptr @rhs_regno, i64 5162}
!451 = !{ptr @pre_insert_copy_insn, ptr @expr_equiv_p, i64 702}
!452 = !{ptr @pre_insert_copy_insn, ptr @fancy_abort, i64 7}
!453 = !{ptr @pre_insert_copy_insn, ptr @validate_change, i64 5162}
!454 = !{ptr @pre_insert_copy_insn, ptr @gen_move_insn, i64 5162}
!455 = !{ptr @pre_insert_copy_insn, ptr @emit_insn_after, i64 4097}
!456 = !{ptr @pre_insert_copy_insn, ptr @emit_insn_before, i64 1065}
!457 = !{ptr @pre_insert_copy_insn, ptr @fprintf, i64 1}
!458 = !{ptr @pre_expr_reaches_here_p_work, ptr @ei_start_1, i64 2971822}
!459 = !{ptr @pre_expr_reaches_here_p_work, ptr @ei_cond, i64 8555345}
!460 = !{ptr @pre_expr_reaches_here_p_work, ptr @pre_expr_reaches_here_p_work, i64 2741552}
!461 = !{ptr @pre_expr_reaches_here_p_work, ptr @ei_next, i64 5583523}
!462 = !{ptr @gate_rtl_hoist, ptr @optimize_function_for_size_p, i64 6648}
!463 = !{ptr @gate_rtl_hoist, ptr @dbg_cnt, i64 1}
!464 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!465 = !{!"function_entry_count", i64 1775717}
!466 = !{!"branch_weights", i32 1775717, i32 2}
!467 = !{!468, !468, i64 0}
!468 = !{!"omnipotent char", !469, i64 0}
!469 = !{!"Simple C/C++ TBAA"}
!470 = !{!"function_entry_count", i64 1}
!471 = !{!"gcse.c:compute_can_copy"}
!472 = !{!"branch_weights", i32 2, i32 86}
!473 = distinct !{!473, !474}
!474 = !{!"llvm.loop.mustprogress"}
!475 = !{!"function_entry_count", i64 750697}
!476 = !{!477, !477, i64 0}
!477 = !{!"int", !468, i64 0}
!478 = !{!"branch_weights", i32 139287, i32 611412}
!479 = !{!"branch_weights", i32 1, i32 139287}
!480 = !{!481, !481, i64 0}
!481 = !{!"any pointer", !468, i64 0}
!482 = !{!"branch_weights", i32 2, i32 139286}
!483 = !{!"branch_weights", i32 20718, i32 118570}
!484 = !{!"branch_weights", i32 64334, i32 54237}
!485 = !{!"branch_weights", i32 1, i32 64334}
!486 = !{!487, !481, i64 1016}
!487 = !{!"gcc_target", !488, i64 0, !490, i64 368, !491, i64 664, !477, i64 744, !481, i64 752, !481, i64 760, !481, i64 768, !481, i64 776, !481, i64 784, !481, i64 792, !481, i64 800, !481, i64 808, !481, i64 816, !481, i64 824, !481, i64 832, !481, i64 840, !481, i64 848, !481, i64 856, !481, i64 864, !481, i64 872, !481, i64 880, !481, i64 888, !481, i64 896, !481, i64 904, !481, i64 912, !481, i64 920, !481, i64 928, !481, i64 936, !481, i64 944, !481, i64 952, !481, i64 960, !481, i64 968, !481, i64 976, !481, i64 984, !481, i64 992, !481, i64 1000, !481, i64 1008, !481, i64 1016, !481, i64 1024, !481, i64 1032, !481, i64 1040, !481, i64 1048, !481, i64 1056, !492, i64 1064, !492, i64 1072, !481, i64 1080, !481, i64 1088, !481, i64 1096, !481, i64 1104, !481, i64 1112, !481, i64 1120, !481, i64 1128, !481, i64 1136, !481, i64 1144, !481, i64 1152, !481, i64 1160, !481, i64 1168, !493, i64 1176, !481, i64 1232, !481, i64 1240, !481, i64 1248, !481, i64 1256, !481, i64 1264, !481, i64 1272, !481, i64 1280, !481, i64 1288, !481, i64 1296, !481, i64 1304, !481, i64 1312, !481, i64 1320, !481, i64 1328, !481, i64 1336, !481, i64 1344, !481, i64 1352, !481, i64 1360, !481, i64 1368, !481, i64 1376, !481, i64 1384, !481, i64 1392, !481, i64 1400, !481, i64 1408, !481, i64 1416, !481, i64 1424, !481, i64 1432, !481, i64 1440, !481, i64 1448, !481, i64 1456, !492, i64 1464, !494, i64 1472, !481, i64 1664, !481, i64 1672, !481, i64 1680, !481, i64 1688, !481, i64 1696, !481, i64 1704, !481, i64 1712, !481, i64 1720, !481, i64 1728, !481, i64 1736, !481, i64 1744, !481, i64 1752, !481, i64 1760, !481, i64 1768, !481, i64 1776, !495, i64 1784, !496, i64 1792, !497, i64 1896, !498, i64 1968, !481, i64 2016, !468, i64 2024, !468, i64 2025, !468, i64 2026, !468, i64 2027, !468, i64 2028, !468, i64 2029, !468, i64 2030, !468, i64 2031, !468, i64 2032, !468, i64 2033, !468, i64 2034, !468, i64 2035}
!488 = !{!"asm_out", !481, i64 0, !481, i64 8, !481, i64 16, !489, i64 24, !489, i64 56, !481, i64 88, !481, i64 96, !481, i64 104, !481, i64 112, !481, i64 120, !481, i64 128, !481, i64 136, !481, i64 144, !481, i64 152, !481, i64 160, !481, i64 168, !481, i64 176, !481, i64 184, !481, i64 192, !481, i64 200, !481, i64 208, !481, i64 216, !481, i64 224, !481, i64 232, !481, i64 240, !481, i64 248, !481, i64 256, !481, i64 264, !481, i64 272, !481, i64 280, !481, i64 288, !481, i64 296, !481, i64 304, !481, i64 312, !481, i64 320, !481, i64 328, !481, i64 336, !481, i64 344, !481, i64 352, !481, i64 360}
!489 = !{!"asm_int_op", !481, i64 0, !481, i64 8, !481, i64 16, !481, i64 24}
!490 = !{!"sched", !481, i64 0, !481, i64 8, !481, i64 16, !481, i64 24, !481, i64 32, !481, i64 40, !481, i64 48, !481, i64 56, !481, i64 64, !481, i64 72, !481, i64 80, !481, i64 88, !481, i64 96, !481, i64 104, !481, i64 112, !481, i64 120, !481, i64 128, !481, i64 136, !481, i64 144, !481, i64 152, !481, i64 160, !481, i64 168, !481, i64 176, !481, i64 184, !481, i64 192, !481, i64 200, !481, i64 208, !481, i64 216, !481, i64 224, !481, i64 232, !481, i64 240, !481, i64 248, !481, i64 256, !481, i64 264, !481, i64 272, !481, i64 280, !481, i64 288}
!491 = !{!"vectorize", !481, i64 0, !481, i64 8, !481, i64 16, !481, i64 24, !481, i64 32, !481, i64 40, !481, i64 48, !481, i64 56, !481, i64 64, !481, i64 72}
!492 = !{!"long", !468, i64 0}
!493 = !{!"addr_space", !481, i64 0, !481, i64 8, !481, i64 16, !481, i64 24, !481, i64 32, !481, i64 40, !481, i64 48}
!494 = !{!"calls", !481, i64 0, !481, i64 8, !481, i64 16, !481, i64 24, !481, i64 32, !481, i64 40, !481, i64 48, !481, i64 56, !481, i64 64, !481, i64 72, !481, i64 80, !481, i64 88, !481, i64 96, !481, i64 104, !481, i64 112, !481, i64 120, !481, i64 128, !481, i64 136, !481, i64 144, !481, i64 152, !481, i64 160, !481, i64 168, !481, i64 176, !481, i64 184}
!495 = !{!"c", !481, i64 0}
!496 = !{!"cxx", !481, i64 0, !481, i64 8, !481, i64 16, !481, i64 24, !481, i64 32, !481, i64 40, !481, i64 48, !481, i64 56, !481, i64 64, !481, i64 72, !481, i64 80, !481, i64 88, !481, i64 96}
!497 = !{!"emutls", !481, i64 0, !481, i64 8, !481, i64 16, !481, i64 24, !481, i64 32, !481, i64 40, !481, i64 48, !481, i64 56, !468, i64 64, !468, i64 65}
!498 = !{!"target_option_hooks", !481, i64 0, !481, i64 8, !481, i64 16, !481, i64 24, !481, i64 32, !481, i64 40}
!499 = !{!"branch_weights", i32 54237, i32 1}
!500 = !{!"function_entry_count", i64 619301}
!501 = !{!"function_entry_count", i64 19956}
!502 = !{!"gcse.c:gate_rtl_cprop"}
!503 = !{!"branch_weights", i32 398281849, i32 39915}
!504 = !{!"branch_weights", i32 19954, i32 4}
!505 = !{!"function_entry_count", i64 19953}
!506 = !{!"gcse.c:execute_rtl_cprop"}
!507 = !{i32 0, i32 2}
!508 = !{!"gcse.c:one_cprop_pass"}
!509 = !{!510, !481, i64 8}
!510 = !{!"function", !481, i64 0, !481, i64 8, !481, i64 16, !481, i64 24, !481, i64 32, !481, i64 40, !481, i64 48, !481, i64 56, !481, i64 64, !481, i64 72, !481, i64 80, !481, i64 88, !481, i64 96, !477, i64 104, !477, i64 108, !477, i64 112, !477, i64 116, !477, i64 120, !477, i64 124, !481, i64 128, !477, i64 136, !477, i64 137, !477, i64 138, !477, i64 138, !477, i64 138, !477, i64 138, !477, i64 138, !477, i64 138, !477, i64 138, !477, i64 139, !477, i64 139, !477, i64 139, !477, i64 139, !477, i64 139, !477, i64 139, !477, i64 139}
!511 = !{!512, !477, i64 24}
!512 = !{!"control_flow_graph", !481, i64 0, !481, i64 8, !481, i64 16, !477, i64 24, !477, i64 28, !477, i64 32, !481, i64 40, !477, i64 48, !468, i64 52, !468, i64 60, !477, i64 68, !477, i64 72}
!513 = !{!"branch_weights", i32 5055, i32 14900}
!514 = !{i8 0, i8 2}
!515 = !{!"branch_weights", i32 14900, i32 1}
!516 = !{!"branch_weights", i32 12734, i32 2167}
!517 = !{!512, !477, i64 32}
!518 = !{!519, !477, i64 12}
!519 = !{!"hash_table_d", !481, i64 0, !477, i64 8, !477, i64 12, !477, i64 16}
!520 = !{!"branch_weights", i32 2096, i32 12805}
!521 = !{!512, !481, i64 0}
!522 = !{!523, !481, i64 56}
!523 = !{!"basic_block_def", !481, i64 0, !481, i64 8, !481, i64 16, !481, i64 24, !468, i64 32, !481, i64 48, !481, i64 56, !468, i64 64, !492, i64 72, !477, i64 80, !477, i64 84, !477, i64 88, !477, i64 92, !477, i64 96}
!524 = !{!512, !481, i64 8}
!525 = !{!"branch_weights", i32 1, i32 12804}
!526 = !{!527, !481, i64 8}
!527 = !{!"rtl_bb_info", !481, i64 0, !481, i64 8, !481, i64 16, !481, i64 24, !477, i64 32}
!528 = !{!"branch_weights", i32 759513, i32 4171670}
!529 = !{!"branch_weights", i32 -1025036288, i32 1276462367}
!530 = !{!"branch_weights", i32 1, i32 3000415}
!531 = !{!"branch_weights", i32 12804, i32 4905574}
!532 = distinct !{!532, !474}
!533 = !{!"branch_weights", i32 12804, i32 746709}
!534 = distinct !{!534, !474}
!535 = !{!536, !481, i64 8}
!536 = !{!"obstack", !492, i64 0, !481, i64 8, !481, i64 16, !481, i64 24, !481, i64 32, !492, i64 40, !477, i64 48, !481, i64 56, !481, i64 64, !481, i64 72, !477, i64 80, !477, i64 80, !477, i64 80}
!537 = !{!536, !492, i64 40}
!538 = !{!"branch_weights", i32 1, i32 14900}
!539 = !{!536, !481, i64 32}
!540 = !{!536, !481, i64 16}
!541 = !{!536, !481, i64 24}
!542 = !{!"function_entry_count", i64 19872}
!543 = !{!"gcse.c:is_too_expensive"}
!544 = !{!512, !477, i64 28}
!545 = !{!"branch_weights", i32 1, i32 19873}
!546 = !{!547, !477, i64 8}
!547 = !{!"param_info", !481, i64 0, !477, i64 8, !468, i64 12, !477, i64 16, !477, i64 20, !481, i64 24}
!548 = !{!"gcse.c:alloc_gcse_mem"}
!549 = !{!"function_entry_count", i64 14899}
!550 = !{!"gcse.c:local_cprop_pass"}
!551 = !{!"branch_weights", i32 1, i32 14899}
!552 = !{!"branch_weights", i32 789591, i32 4433508}
!553 = !{!"branch_weights", i32 -263824191, i32 1538098615}
!554 = !{!"branch_weights", i32 3117469, i32 115148}
!555 = !{!"branch_weights", i32 3209071, i32 1}
!556 = !{!557, !481, i64 0}
!557 = !{!"reg_use", !481, i64 0}
!558 = !{!"branch_weights", i32 3345859, i32 23545}
!559 = !{!"branch_weights", i32 160332, i32 3209071}
!560 = distinct !{!560, !474}
!561 = !{!"branch_weights", i32 18582017, i32 -1762325518}
!562 = distinct !{!562, !474}
!563 = !{!"branch_weights", i32 14899, i32 5193300}
!564 = distinct !{!564, !474}
!565 = !{!"branch_weights", i32 14899, i32 774692}
!566 = distinct !{!566, !474}
!567 = !{!"gcse.c:find_implicit_sets"}
!568 = !{!523, !481, i64 8}
!569 = !{!"branch_weights", i32 466097, i32 323495}
!570 = !{!"branch_weights", i32 2560, i32 463538}
!571 = !{!"branch_weights", i32 -1102366816, i32 470748236}
!572 = !{!"branch_weights", i32 314435, i32 89539}
!573 = !{!"branch_weights", i32 314435, i32 1}
!574 = !{!"branch_weights", i32 33910, i32 280526}
!575 = !{!576, !477, i64 48}
!576 = !{!"edge_def", !481, i64 0, !481, i64 8, !468, i64 16, !481, i64 24, !481, i64 32, !477, i64 40, !477, i64 44, !477, i64 48, !477, i64 52, !492, i64 56}
!577 = !{!"branch_weights", i32 163735, i32 116792}
!578 = !{!"branch_weights", i32 186958, i32 93569}
!579 = !{!"branch_weights", i32 227020, i32 53507}
!580 = !{!576, !481, i64 8}
!581 = !{!"branch_weights", i32 1, i32 280526}
!582 = !{!"branch_weights", i32 135105, i32 145422}
!583 = !{!"branch_weights", i32 1, i32 145422}
!584 = !{!523, !477, i64 80}
!585 = !{!"branch_weights", i32 145422, i32 1}
!586 = distinct !{!586, !474}
!587 = !{!"gcse.c:alloc_hash_table"}
!588 = !{!519, !477, i64 8}
!589 = !{!519, !481, i64 0}
!590 = !{!519, !477, i64 16}
!591 = !{!"gcse.c:compute_hash_table"}
!592 = !{!"function_entry_count", i64 0}
!593 = !{!"gcse.c:dump_hash_table"}
!594 = !{!595, !477, i64 8}
!595 = !{!"expr", !481, i64 0, !477, i64 8, !481, i64 16, !481, i64 24, !481, i64 32, !481, i64 40}
!596 = distinct !{!596, !474}
!597 = distinct !{!597, !474}
!598 = !{!595, !481, i64 0}
!599 = distinct !{!599, !474}
!600 = !{!"function_entry_count", i64 12804}
!601 = !{!"gcse.c:alloc_cprop_mem"}
!602 = !{!"gcse.c:compute_cprop_data"}
!603 = !{!"function_entry_count", i64 759512}
!604 = !{!"gcse.c:reset_opr_set_tables"}
!605 = !{!"function_entry_count", i64 3000414}
!606 = !{!"gcse.c:cprop_insn"}
!607 = !{!"branch_weights", i32 -1807085446, i32 829}
!608 = !{!"branch_weights", i32 2915312, i32 85104}
!609 = !{!"branch_weights", i32 3000414, i32 1}
!610 = !{!"branch_weights", i32 1545178, i32 1565197}
!611 = !{!"branch_weights", i32 1548087, i32 17111}
!612 = !{!"branch_weights", i32 17111, i32 1}
!613 = !{!"branch_weights", i32 13962, i32 3150}
!614 = !{!"branch_weights", i32 1547, i32 1604}
!615 = !{!"branch_weights", i32 1604, i32 1}
!616 = !{!"branch_weights", i32 13962, i32 1}
!617 = !{!"branch_weights", i32 27925, i32 194937444}
!618 = !{!"branch_weights", i32 665, i32 13298}
!619 = !{!"branch_weights", i32 13298, i32 1}
!620 = !{!"branch_weights", i32 109960, i32 3000414}
!621 = distinct !{!621, !474}
!622 = !{!"branch_weights", i32 2136868673, i32 10614975}
!623 = !{!"branch_weights", i32 1, i32 14831}
!624 = !{!"gcse.c:mark_oprs_set"}
!625 = !{!"branch_weights", i32 8756063, i32 -1159742558, i32 348121576, i32 11941, i32 91155258}
!626 = !{!627, !477, i64 0}
!627 = !{!"rtvec_def", !477, i64 0, !468, i64 8}
!628 = !{!"branch_weights", i32 291496, i32 1}
!629 = !{!"branch_weights", i32 34879193, i32 -603522373, i32 -661608052, i32 540081}
!630 = !{!"branch_weights", i32 294297, i32 291496}
!631 = distinct !{!631, !474}
!632 = !{!"gcse.c:bypass_conditional_jumps"}
!633 = !{!"branch_weights", i32 1, i32 12805}
!634 = !{!"branch_weights", i32 217738, i32 541776}
!635 = !{!"branch_weights", i32 1, i32 3763}
!636 = !{!"branch_weights", i32 13905, i32 781297}
!637 = !{!"branch_weights", i32 -237803248, i32 33451106, i32 -1499034484, i32 430201688}
!638 = !{!"branch_weights", i32 212017, i32 86540}
!639 = !{!"branch_weights", i32 184981, i32 27037}
!640 = !{!"branch_weights", i32 144231, i32 40751}
!641 = !{!"branch_weights", i32 13, i32 45926}
!642 = !{!"branch_weights", i32 13, i32 1}
!643 = !{!"branch_weights", i32 1, i32 45926}
!644 = !{!"branch_weights", i32 3763, i32 787675}
!645 = distinct !{!645, !474}
!646 = distinct !{!646, !474}
!647 = !{!"branch_weights", i32 2107737173, i32 39746475}
!648 = !{!"gcse.c:free_cprop_mem"}
!649 = !{!"gcse.c:free_hash_table"}
!650 = !{!"gcse.c:free_gcse_mem"}
!651 = !{!"function_entry_count", i64 39744}
!652 = !{!"gcse.c:gcalloc"}
!653 = !{!"function_entry_count", i64 4013215}
!654 = !{!"gcse.c:local_cprop_find_used_regs"}
!655 = !{!"branch_weights", i32 1, i32 4013216}
!656 = !{!"branch_weights", i32 4010453, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2764}
!657 = !{!"branch_weights", i32 67, i32 2698}
!658 = !{!"function_entry_count", i64 3369402}
!659 = !{!"gcse.c:do_local_cprop"}
!660 = !{!"branch_weights", i32 3369403, i32 1}
!661 = !{!"branch_weights", i32 2132716, i32 1236688}
!662 = !{!"branch_weights", i32 7998, i32 1228691}
!663 = !{!"branch_weights", i32 1228691, i32 1}
!664 = !{!"branch_weights", i32 2379292, i32 982115}
!665 = !{!"branch_weights", i32 1, i32 982114}
!666 = !{!667, !481, i64 8}
!667 = !{!"elt_loc_list", !481, i64 0, !481, i64 8, !481, i64 16}
!668 = !{!"branch_weights", i32 1863156, i32 21733}
!669 = !{!"branch_weights", i32 1167108, i32 717781}
!670 = !{!"branch_weights", i32 630681, i32 536428}
!671 = !{!667, !481, i64 16}
!672 = !{!"branch_weights", i32 630681, i32 1}
!673 = !{!"branch_weights", i32 982114, i32 902774}
!674 = distinct !{!674, !474}
!675 = !{!"branch_weights", i32 2099962470, i32 47521178}
!676 = !{!"branch_weights", i32 12889, i32 8845}
!677 = !{!"branch_weights", i32 8845, i32 1}
!678 = !{!"branch_weights", i32 2114494921, i32 32988727}
!679 = !{!"branch_weights", i32 251, i32 14701}
!680 = !{!"branch_weights", i32 14701, i32 1}
!681 = !{!"function_entry_count", i64 14680398}
!682 = !{!"gcse.c:find_used_regs"}
!683 = !{!"branch_weights", i32 1, i32 127}
!684 = !{!"branch_weights", i32 6534863, i32 16402642}
!685 = !{!"branch_weights", i32 181, i32 6534683}
!686 = !{!"branch_weights", i32 1, i32 14680218}
!687 = !{!"branch_weights", i32 -649470780, i32 1790266808, i32 117}
!688 = !{!"branch_weights", i32 8257106, i32 6924209}
!689 = !{!"branch_weights", i32 127, i32 -1358966911}
!690 = distinct !{!690, !474}
!691 = !{!"branch_weights", i32 31414604, i32 14680218}
!692 = distinct !{!692, !474}
!693 = !{!"function_entry_count", i64 22245777}
!694 = !{!"gcse.c:rhs_regno"}
!695 = !{!"function_entry_count", i64 3625319}
!696 = !{!"gcse.c:gcse_constant_p"}
!697 = !{!"branch_weights", i32 382477, i32 3242844}
!698 = !{!"branch_weights", i32 -1163206655, i32 1220608, i32 278526}
!699 = !{!"branch_weights", i32 149, i32 1}
!700 = !{!"branch_weights", i32 1, i32 34}
!701 = !{!"branch_weights", i32 603670, i32 3021503}
!702 = !{!"branch_weights", i32 4051, i32 599620}
!703 = !{!"function_entry_count", i64 24881}
!704 = !{!"gcse.c:constprop_register"}
!705 = !{!"branch_weights", i32 -1184709945, i32 117649}
!706 = !{!"branch_weights", i32 10400, i32 1}
!707 = !{!"branch_weights", i32 53221906, i32 2094261742}
!708 = !{!"branch_weights", i32 14, i32 24857}
!709 = !{!"branch_weights", i32 23394, i32 1464}
!710 = !{!"branch_weights", i32 1, i32 1464}
!711 = !{!"branch_weights", i32 1464, i32 1}
!712 = !{!"branch_weights", i32 1462, i32 3}
!713 = !{!"branch_weights", i32 24832, i32 49}
!714 = !{!"branch_weights", i32 14387, i32 10446}
!715 = !{!"branch_weights", i32 14435, i32 1}
!716 = !{!"function_entry_count", i64 53742}
!717 = !{!"gcse.c:try_replace_reg"}
!718 = !{!"branch_weights", i32 3439589, i32 27}
!719 = !{!"branch_weights", i32 34683, i32 1}
!720 = !{!"branch_weights", i32 924, i32 52820}
!721 = !{!"branch_weights", i32 14465, i32 38356}
!722 = !{!"branch_weights", i32 71318, i32 2147412330}
!723 = !{!"branch_weights", i32 10359, i32 27997}
!724 = !{!"branch_weights", i32 10354, i32 6}
!725 = !{!"branch_weights", i32 16764, i32 36980}
!726 = !{!"branch_weights", i32 16764, i32 1}
!727 = !{!"branch_weights", i32 236590500, i32 590475916}
!728 = !{!"branch_weights", i32 2140, i32 13236}
!729 = !{!"branch_weights", i32 13236, i32 1}
!730 = !{!"branch_weights", i32 -1098624805, i32 273657636}
!731 = !{!"branch_weights", i32 1976991340, i32 170492308}
!732 = !{!"branch_weights", i32 1092025, i32 1046, i32 1045}
!733 = !{!"branch_weights", i32 1468195394, i32 679288254}
!734 = !{!"branch_weights", i32 16999, i32 1}
!735 = !{!"branch_weights", i32 1, i32 16999}
!736 = !{!"function_entry_count", i64 1463}
!737 = !{!"gcse.c:cprop_jump"}
!738 = !{!"branch_weights", i32 11719, i32 1}
!739 = !{!"branch_weights", i32 1410, i32 1}
!740 = !{!"branch_weights", i32 1429, i32 36}
!741 = !{!"branch_weights", i32 1, i32 36}
!742 = !{!"branch_weights", i32 2, i32 1463}
!743 = !{!"branch_weights", i32 1, i32 1463}
!744 = !{!"branch_weights", i32 2, i32 1462}
!745 = !{!"branch_weights", i32 1, i32 2}
!746 = !{!"branch_weights", i32 2, i32 1}
!747 = !{!"branch_weights", i32 3, i32 1}
!748 = !{!"branch_weights", i32 2, i32 2}
!749 = !{i64 0, i64 4, !476, i64 8, i64 8, !480}
!750 = !{i64 0, i64 8, !480}
!751 = !{!527, !481, i64 0}
!752 = !{!"branch_weights", i32 127, i32 129}
!753 = distinct !{!753, !474}
!754 = !{!"function_entry_count", i64 3333719}
!755 = !{!"gcse.c:ei_start_1"}
!756 = !{!"function_entry_count", i64 176395}
!757 = !{!"gcse.c:ei_safe_edge"}
!758 = !{!"branch_weights", i32 130471, i32 45926}
!759 = !{!"function_entry_count", i64 6229839}
!760 = !{!"gcse.c:ei_next"}
!761 = !{!"branch_weights", i32 1, i32 6229840}
!762 = !{!"branch_weights", i32 6229840, i32 1}
!763 = !{!764, !477, i64 0}
!764 = !{!"", !477, i64 0, !481, i64 8}
!765 = !{!"function_entry_count", i64 9564525}
!766 = !{!"gcse.c:ei_end_p"}
!767 = !{!"branch_weights", i32 1, i32 9564526}
!768 = !{!"function_entry_count", i64 6269820}
!769 = !{!"gcse.c:ei_edge"}
!770 = !{!"branch_weights", i32 1, i32 6269821}
!771 = !{!"function_entry_count", i64 17623991}
!772 = !{!"gcse.c:VEC_edge_base_length"}
!773 = !{!"branch_weights", i32 1, i32 17623992}
!774 = !{!775, !477, i64 0}
!775 = !{!"VEC_edge_base", !477, i64 0, !477, i64 4, !468, i64 8}
!776 = !{!"function_entry_count", i64 44128368}
!777 = !{!"gcse.c:ei_container"}
!778 = !{!"branch_weights", i32 1, i32 44128369}
!779 = !{!"function_entry_count", i64 6831700}
!780 = !{!"gcse.c:VEC_edge_base_index"}
!781 = !{!"function_entry_count", i64 314434}
!782 = !{!"gcse.c:implicit_set_cond_p"}
!783 = !{!"branch_weights", i32 -2072355020, i32 7068, i32 7068, i32 7068, i32 7068}
!784 = !{!785, !468, i64 49}
!785 = !{!"real_format", !481, i64 0, !481, i64 8, !477, i64 16, !477, i64 20, !477, i64 24, !477, i64 28, !477, i64 32, !477, i64 36, !477, i64 40, !468, i64 44, !468, i64 45, !468, i64 46, !468, i64 47, !468, i64 48, !468, i64 49, !468, i64 50, !468, i64 51}
!786 = !{i64 0, i64 4, !476, i64 0, i64 4, !476, i64 0, i64 4, !476, i64 0, i64 4, !476, i64 0, i64 4, !476, i64 0, i64 4, !476, i64 8, i64 24, !467}
!787 = !{!"function_entry_count", i64 1040037}
!788 = !{!"gcse.c:single_pred_p"}
!789 = !{!523, !481, i64 0}
!790 = !{!"gcse.c:gmalloc"}
!791 = !{!"gcse.c:compute_hash_table_work"}
!792 = !{!"branch_weights", i32 19872, i32 1}
!793 = !{!794, !481, i64 0}
!794 = !{!"reg_avail_info", !481, i64 0, !477, i64 8, !477, i64 12}
!795 = !{!"branch_weights", i32 4746517, i32 19872}
!796 = distinct !{!796, !474}
!797 = !{!"branch_weights", i32 1, i32 19872}
!798 = !{!"branch_weights", i32 1059712, i32 5903449}
!799 = !{!"branch_weights", i32 -1066903610, i32 1248878245}
!800 = !{!"branch_weights", i32 348035, i32 3908600}
!801 = !{!492, !492, i64 0}
!802 = !{!"branch_weights", i32 2436239, i32 16009565}
!803 = !{!"branch_weights", i32 348035, i32 18097768}
!804 = distinct !{!804, !474}
!805 = !{!"branch_weights", i32 19872, i32 6923416}
!806 = distinct !{!806, !474}
!807 = !{!"branch_weights", i32 270122, i32 789591}
!808 = !{!"branch_weights", i32 644170, i32 145422}
!809 = distinct !{!809, !474}
!810 = !{!"branch_weights", i32 19872, i32 1039840}
!811 = distinct !{!811, !474}
!812 = !{!"function_entry_count", i64 799256}
!813 = !{!"gcse.c:clear_modify_mem_tables"}
!814 = !{!"branch_weights", i32 227836, i32 571421}
!815 = !{!"branch_weights", i32 571421, i32 0}
!816 = distinct !{!816, !474}
!817 = !{!"function_entry_count", i64 19063237}
!818 = !{!"gcse.c:record_last_reg_set_info"}
!819 = !{!820, !481, i64 248}
!820 = !{!"df", !468, i64 0, !468, i64 64, !481, i64 128, !821, i64 136, !821, i64 176, !481, i64 216, !481, i64 224, !481, i64 232, !477, i64 240, !477, i64 244, !481, i64 248, !477, i64 256, !477, i64 260, !481, i64 264, !481, i64 272, !481, i64 280, !481, i64 288, !481, i64 296, !481, i64 304, !481, i64 312, !481, i64 320, !481, i64 328, !481, i64 336, !477, i64 344, !477, i64 348, !481, i64 352, !477, i64 360, !477, i64 364, !468, i64 365, !468, i64 366}
!821 = !{!"df_ref_info", !481, i64 0, !481, i64 8, !481, i64 16, !477, i64 24, !477, i64 28, !477, i64 32, !477, i64 36}
!822 = !{!823, !477, i64 40}
!823 = !{!"df_insn_info", !481, i64 0, !481, i64 8, !481, i64 16, !481, i64 24, !481, i64 32, !477, i64 40}
!824 = !{!794, !477, i64 12}
!825 = !{!"branch_weights", i32 5050601, i32 14012638}
!826 = !{!794, !477, i64 8}
!827 = !{!"function_entry_count", i64 592771}
!828 = !{!"gcse.c:mark_call"}
!829 = !{!"branch_weights", i32 -1735122491, i32 173635263}
!830 = !{!"function_entry_count", i64 4544058}
!831 = !{!"gcse.c:record_last_set_info"}
!832 = !{!"branch_weights", i32 1, i32 4544059}
!833 = !{!"branch_weights", i32 453189414, i32 -2072723140, i32 631406249}
!834 = !{!"branch_weights", i32 867641, i32 1}
!835 = !{!"function_entry_count", i64 4283949}
!836 = !{!"gcse.c:hash_scan_set"}
!837 = !{!"branch_weights", i32 237394, i32 4046557}
!838 = !{!"branch_weights", i32 2556554, i32 1490004}
!839 = !{!"branch_weights", i32 2443691, i32 112864}
!840 = !{!"branch_weights", i32 89923, i32 22942}
!841 = !{!"branch_weights", i32 7081, i32 82843}
!842 = !{!"branch_weights", i32 82843, i32 1}
!843 = !{!"branch_weights", i32 62129, i32 1}
!844 = !{!"branch_weights", i32 19835, i32 881}
!845 = !{!"branch_weights", i32 481926644, i32 -1768188222}
!846 = !{!"branch_weights", i32 1, i32 409503}
!847 = !{!"branch_weights", i32 409503, i32 1}
!848 = !{!"branch_weights", i32 178065, i32 231439}
!849 = !{!"branch_weights", i32 231439, i32 1}
!850 = !{!"branch_weights", i32 222528, i32 8912}
!851 = !{!"branch_weights", i32 5741, i32 3172}
!852 = !{!"branch_weights", i32 94194, i32 131506}
!853 = !{!"branch_weights", i32 75521, i32 150179}
!854 = !{!"branch_weights", i32 -1667581842, i32 1820374537}
!855 = !{!"branch_weights", i32 204244, i32 1172644}
!856 = !{!"branch_weights", i32 53605, i32 150640}
!857 = !{!"branch_weights", i32 1, i32 53605}
!858 = !{!"branch_weights", i32 7, i32 53599}
!859 = !{!"branch_weights", i32 1031302, i32 291988}
!860 = !{!"branch_weights", i32 127096, i32 218491}
!861 = !{!"branch_weights", i32 159, i32 218333}
!862 = !{!"branch_weights", i32 218034, i32 300}
!863 = !{!"branch_weights", i32 9922, i32 208113}
!864 = !{!"branch_weights", i32 1847992634, i32 -1355936029}
!865 = !{!"branch_weights", i32 1289429330, i32 -420008429}
!866 = !{!"branch_weights", i32 1, i32 143617}
!867 = !{!"branch_weights", i32 143617, i32 1}
!868 = !{!"branch_weights", i32 119105, i32 24513}
!869 = !{!"function_entry_count", i64 4256633}
!870 = !{!"gcse.c:hash_scan_insn"}
!871 = !{!"branch_weights", i32 107457373, i32 -992754467, i32 362266555}
!872 = !{!"branch_weights", i32 408818, i32 1}
!873 = !{!"branch_weights", i32 -1742707944, i32 -1758170966}
!874 = !{!"branch_weights", i32 412643, i32 408818}
!875 = distinct !{!875, !474}
!876 = !{!"function_entry_count", i64 939475}
!877 = !{!"gcse.c:bmp_iter_set_init"}
!878 = !{!879, !481, i64 0}
!879 = !{!"bitmap_head_def", !481, i64 0, !481, i64 8, !477, i64 16, !481, i64 24}
!880 = !{!881, !481, i64 0}
!881 = !{!"", !481, i64 0, !481, i64 8, !477, i64 16, !492, i64 24}
!882 = !{!881, !481, i64 8}
!883 = !{!"branch_weights", i32 549568, i32 389909}
!884 = !{!885, !477, i64 16}
!885 = !{!"bitmap_element_def", !481, i64 0, !481, i64 8, !477, i64 16, !468, i64 24}
!886 = !{!881, !477, i64 16}
!887 = !{!881, !492, i64 24}
!888 = !{!"function_entry_count", i64 29533566}
!889 = !{!"gcse.c:bmp_iter_set"}
!890 = !{!"branch_weights", i32 2902338, i32 26631230}
!891 = !{!"branch_weights", i32 28594091, i32 1}
!892 = !{!"branch_weights", i32 64523034, i32 28594091}
!893 = distinct !{!893, !474}
!894 = !{!"branch_weights", i32 1, i32 1872303}
!895 = !{!"branch_weights", i32 842270, i32 1962863}
!896 = !{!"branch_weights", i32 1872303, i32 932829}
!897 = distinct !{!897, !474}
!898 = !{!885, !481, i64 0}
!899 = !{!"branch_weights", i32 939476, i32 932829}
!900 = !{!"function_entry_count", i64 571420}
!901 = !{!"gcse.c:free_insn_expr_list_list"}
!902 = !{!"branch_weights", i32 1, i32 571420}
!903 = !{!"branch_weights", i32 2948285, i32 555120}
!904 = !{!"branch_weights", i32 571420, i32 2931984}
!905 = distinct !{!905, !474}
!906 = !{!"function_entry_count", i64 46131783}
!907 = !{!"gcse.c:bmp_iter_next"}
!908 = !{!"function_entry_count", i64 2029745}
!909 = !{!"gcse.c:record_last_mem_set_info"}
!910 = !{!"branch_weights", i32 555120, i32 1474627}
!911 = !{!"function_entry_count", i64 1493317}
!912 = !{!"gcse.c:canon_list_insert"}
!913 = !{!"branch_weights", i32 28358623, i32 1478, i32 1478, i32 1478, i32 -2114915886}
!914 = distinct !{!914, !474}
!915 = !{!"function_entry_count", i64 573832}
!916 = !{!"gcse.c:want_to_gcse_p"}
!917 = !{!"branch_weights", i32 -1948790783, i32 987136, i32 3256318, i32 4095}
!918 = !{!"branch_weights", i32 241, i32 1}
!919 = !{!"branch_weights", i32 795, i32 1}
!920 = !{!"function_entry_count", i64 225698}
!921 = !{!"gcse.c:oprs_anticipatable_p"}
!922 = !{!"function_entry_count", i64 587347}
!923 = !{!"gcse.c:oprs_available_p"}
!924 = !{!"function_entry_count", i64 369314}
!925 = !{!"gcse.c:insert_expr_in_table"}
!926 = !{!"branch_weights", i32 369315, i32 1}
!927 = !{!"branch_weights", i32 1, i32 184370}
!928 = !{!"branch_weights", i32 184232, i32 369315}
!929 = !{!"branch_weights", i32 184370, i32 184806}
!930 = distinct !{!930, !474}
!931 = !{!"branch_weights", i32 139061, i32 45311}
!932 = !{!"branch_weights", i32 237810, i32 131506}
!933 = !{!595, !481, i64 24}
!934 = !{!"branch_weights", i32 89049, i32 42458}
!935 = !{!936, !481, i64 8}
!936 = !{!"occr", !481, i64 0, !481, i64 8, !468, i64 16, !468, i64 17}
!937 = !{!"branch_weights", i32 50, i32 131457}
!938 = !{!936, !481, i64 0}
!939 = !{!936, !468, i64 16}
!940 = !{!"branch_weights", i32 194625, i32 174691}
!941 = !{!595, !481, i64 32}
!942 = !{!"branch_weights", i32 121419, i32 53273}
!943 = !{!"branch_weights", i32 3640, i32 49634}
!944 = !{!"function_entry_count", i64 335664}
!945 = !{!"gcse.c:insert_set_in_table"}
!946 = !{!"branch_weights", i32 335665, i32 1}
!947 = !{!"branch_weights", i32 1, i32 243331}
!948 = !{!"branch_weights", i32 3161980, i32 335665}
!949 = !{!"branch_weights", i32 243331, i32 3010982}
!950 = distinct !{!950, !474}
!951 = !{!"branch_weights", i32 182407, i32 60926}
!952 = !{!"branch_weights", i32 1140677565, i32 1006806083}
!953 = !{!"branch_weights", i32 1, i32 92334}
!954 = !{!"function_entry_count", i64 2159103}
!955 = !{!"gcse.c:oprs_unchanged_p"}
!956 = !{!"branch_weights", i32 541602, i32 601668, i32 484147, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 16884, i32 463262, i32 617, i32 1, i32 1, i32 49224, i32 1707, i32 1, i32 1}
!957 = !{!"branch_weights", i32 250293, i32 351376}
!958 = !{!"branch_weights", i32 76309, i32 173985}
!959 = !{!"branch_weights", i32 283712, i32 200436}
!960 = !{!"branch_weights", i32 127, i32 276365185}
!961 = !{!"branch_weights", i32 49, i32 8498784, i32 7}
!962 = !{!"branch_weights", i32 531005, i32 531344}
!963 = !{!"branch_weights", i32 10598, i32 520747}
!964 = distinct !{!964, !474}
!965 = !{!"branch_weights", i32 135981185, i32 127}
!966 = distinct !{!966, !474}
!967 = !{!"function_entry_count", i64 484146}
!968 = !{!"gcse.c:load_killed_in_block_p"}
!969 = !{!"branch_weights", i32 475083, i32 9065}
!970 = !{!"branch_weights", i32 1, i32 274647}
!971 = !{!"branch_weights", i32 601188, i32 440624}
!972 = !{!"branch_weights", i32 168656, i32 271969}
!973 = distinct !{!973, !474}
!974 = !{!"branch_weights", i32 521307, i32 79882}
!975 = !{!"branch_weights", i32 163199, i32 188652}
!976 = !{!"branch_weights", i32 37238, i32 151415}
!977 = !{!"branch_weights", i32 274647, i32 767164}
!978 = !{!"function_entry_count", i64 192896}
!979 = !{!"gcse.c:mems_conflict_for_gcse_p"}
!980 = !{!"branch_weights", i32 55409210, i32 13055, i32 13055, i32 13055, i32 -1831920819}
!981 = distinct !{!981, !474}
!982 = !{!"branch_weights", i32 830485012, i32 -1281040719}
!983 = !{!"branch_weights", i32 9456, i32 31300}
!984 = !{!"branch_weights", i32 120116, i32 27785}
!985 = !{!"function_entry_count", i64 4975010}
!986 = !{!"gcse.c:expr_equiv_p"}
!987 = !{!"function_entry_count", i64 48898}
!988 = !{!"gcse.c:find_rtx_in_ldst"}
!989 = !{!"branch_weights", i32 1, i32 48899}
!990 = !{!991, !481, i64 8}
!991 = !{!"ls_expr", !481, i64 0, !481, i64 8, !481, i64 16, !481, i64 24, !481, i64 32, !481, i64 40, !477, i64 48, !477, i64 52, !477, i64 56, !481, i64 64}
!992 = !{!"branch_weights", i32 9782, i32 39118}
!993 = !{!991, !477, i64 48}
!994 = !{!"branch_weights", i32 35943, i32 3176}
!995 = !{!"gcse.c:hash_expr"}
!996 = !{!"function_entry_count", i64 1065872}
!997 = !{!"gcse.c:gcse_alloc"}
!998 = !{!"branch_weights", i32 5927, i32 1059947}
!999 = !{!"branch_weights", i32 1, i32 1065873}
!1000 = !{!536, !477, i64 48}
!1001 = !{!"function_entry_count", i64 2021672}
!1002 = !{!"gcse.c:hash_set"}
!1003 = !{!"function_entry_count", i64 17759}
!1004 = !{!"gcse.c:compute_local_properties"}
!1005 = !{!"branch_weights", i32 1, i32 17760}
!1006 = !{!"branch_weights", i32 4956, i32 12805}
!1007 = !{!"branch_weights", i32 12805, i32 4956}
!1008 = !{!"branch_weights", i32 1, i32 17759}
!1009 = !{!"branch_weights", i32 1418540, i32 427702}
!1010 = !{!"branch_weights", i32 1, i32 427702}
!1011 = !{!"branch_weights", i32 243332, i32 184371}
!1012 = !{!"branch_weights", i32 52914, i32 131457}
!1013 = !{!"branch_weights", i32 131457, i32 0}
!1014 = distinct !{!1014, !474}
!1015 = !{!"branch_weights", i32 1, i32 427701}
!1016 = !{!936, !468, i64 17}
!1017 = !{!"branch_weights", i32 427701, i32 79015}
!1018 = distinct !{!1018, !474}
!1019 = !{!595, !481, i64 40}
!1020 = !{!"branch_weights", i32 427702, i32 0}
!1021 = distinct !{!1021, !474}
!1022 = !{!"branch_weights", i32 1828483, i32 17759}
!1023 = distinct !{!1023, !474}
!1024 = !{!"function_entry_count", i64 825811}
!1025 = !{!"gcse.c:compute_transp"}
!1026 = !{!"branch_weights", i32 402920, i32 471004, i32 144552, i32 1, i32 1, i32 5662, i32 326642, i32 666, i32 1, i32 1, i32 20989, i32 854, i32 1, i32 1}
!1027 = !{!820, !481, i64 216}
!1028 = !{!"branch_weights", i32 186593, i32 284412}
!1029 = !{!"branch_weights", i32 1, i32 284411}
!1030 = !{!"branch_weights", i32 1, i32 9699487}
!1031 = !{!823, !481, i64 0}
!1032 = !{!"branch_weights", i32 284411, i32 9415076}
!1033 = distinct !{!1033, !474}
!1034 = !{!"branch_weights", i32 1, i32 186592}
!1035 = !{!"branch_weights", i32 19934, i32 1065756}
!1036 = !{!"branch_weights", i32 186592, i32 899097}
!1037 = distinct !{!1037, !474}
!1038 = !{!"branch_weights", i32 140220, i32 4333}
!1039 = !{!"branch_weights", i32 1, i32 140219}
!1040 = !{!"branch_weights", i32 28022672, i32 1}
!1041 = !{!"branch_weights", i32 140219, i32 27882453}
!1042 = distinct !{!1042, !474}
!1043 = !{!"branch_weights", i32 1, i32 13394722}
!1044 = !{!"branch_weights", i32 13394722, i32 5951149}
!1045 = !{!"branch_weights", i32 15202901, i32 4142971}
!1046 = !{!"branch_weights", i32 4142971, i32 1}
!1047 = !{!"branch_weights", i32 140219, i32 17397474}
!1048 = distinct !{!1048, !474}
!1049 = !{!"branch_weights", i32 127, i32 175779969}
!1050 = !{!"branch_weights", i32 16, i32 4005150, i32 4}
!1051 = !{!"branch_weights", i32 402920, i32 398111}
!1052 = distinct !{!1052, !474}
!1053 = !{!"branch_weights", i32 102532097, i32 127}
!1054 = distinct !{!1054, !474}
!1055 = !{!"function_entry_count", i64 10457696}
!1056 = !{!"gcse.c:SET_BIT"}
!1057 = !{!1058, !481, i64 0}
!1058 = !{!"simple_bitmap_def", !481, i64 0, !477, i64 8, !477, i64 12, !468, i64 16}
!1059 = !{!"branch_weights", i32 10457697, i32 1}
!1060 = !{!"function_entry_count", i64 33251329}
!1061 = !{!"gcse.c:RESET_BIT"}
!1062 = !{!"branch_weights", i32 33251330, i32 1}
!1063 = !{!"function_entry_count", i64 140219}
!1064 = !{!"gcse.c:bmp_iter_and_compl_init"}
!1065 = !{!"branch_weights", i32 2555, i32 137666}
!1066 = !{!"branch_weights", i32 1, i32 6901}
!1067 = !{!"branch_weights", i32 1, i32 140220}
!1068 = !{!"branch_weights", i32 6901, i32 126418}
!1069 = distinct !{!1069, !474}
!1070 = !{!"branch_weights", i32 2146948415, i32 535233}
!1071 = !{!"branch_weights", i32 102680349, i32 2044803299}
!1072 = !{!"branch_weights", i32 6902, i32 133319}
!1073 = !{!"branch_weights", i32 133189, i32 131}
!1074 = !{!"function_entry_count", i64 17677911}
!1075 = !{!"gcse.c:bmp_iter_and_compl"}
!1076 = !{!"branch_weights", i32 1966889, i32 15711024}
!1077 = !{!"branch_weights", i32 17537692, i32 1}
!1078 = !{!"branch_weights", i32 72296535, i32 17537692}
!1079 = distinct !{!1079, !474}
!1080 = !{!"branch_weights", i32 1, i32 1080413}
!1081 = !{!"branch_weights", i32 15276, i32 2005333}
!1082 = !{!"branch_weights", i32 1991185, i32 14149}
!1083 = !{!"branch_weights", i32 193939, i32 1826670}
!1084 = !{!"branch_weights", i32 1080413, i32 940195}
!1085 = distinct !{!1085, !474}
!1086 = !{!"branch_weights", i32 140220, i32 940195}
!1087 = !{!"branch_weights", i32 1, i32 4187}
!1088 = !{!"branch_weights", i32 932412, i32 940195}
!1089 = !{!"branch_weights", i32 4187, i32 1864232}
!1090 = distinct !{!1090, !474}
!1091 = !{!"function_entry_count", i64 3124477}
!1092 = !{!"gcse.c:oprs_not_set_p"}
!1093 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3124478}
!1094 = !{!"branch_weights", i32 127, i32 399933057}
!1095 = distinct !{!1095, !474}
!1096 = distinct !{!1096, !474}
!1097 = !{!"function_entry_count", i64 1565196}
!1098 = !{!"gcse.c:find_avail_set"}
!1099 = !{!"branch_weights", i32 75998, i32 743025}
!1100 = !{!"branch_weights", i32 725772, i32 17254}
!1101 = !{!"branch_weights", i32 743025, i32 0}
!1102 = distinct !{!1102, !474}
!1103 = !{!"branch_weights", i32 17254, i32 1}
!1104 = !{!"branch_weights", i32 14105, i32 3150}
!1105 = !{!"branch_weights", i32 91, i32 14015}
!1106 = !{!"function_entry_count", i64 1686008}
!1107 = !{!"gcse.c:lookup_set"}
!1108 = !{!"branch_weights", i32 675972, i32 570844}
!1109 = !{!"branch_weights", i32 1686009, i32 131651}
!1110 = !{!"branch_weights", i32 570844, i32 0}
!1111 = distinct !{!1111, !474}
!1112 = !{!"function_entry_count", i64 828755}
!1113 = !{!"gcse.c:next_set"}
!1114 = !{!595, !481, i64 16}
!1115 = !{!"branch_weights", i32 415722, i32 428171}
!1116 = !{!"branch_weights", i32 828756, i32 15137}
!1117 = distinct !{!1117, !474}
!1118 = !{!"function_entry_count", i64 2919047}
!1119 = !{!"gcse.c:mark_set"}
!1120 = !{!"branch_weights", i32 617668257, i32 321477, i32 1383, i32 321452, i32 -1708396569, i32 840333324}
!1121 = distinct !{!1121, !474}
!1122 = !{!"branch_weights", i32 168367, i32 2750682}
!1123 = !{!"function_entry_count", i64 289185}
!1124 = !{!"gcse.c:mark_clobber"}
!1125 = !{!"branch_weights", i32 5004588, i32 9969, i32 9969, i32 -1416980172}
!1126 = distinct !{!1126, !474}
!1127 = !{!"function_entry_count", i64 45925}
!1128 = !{!"gcse.c:bypass_block"}
!1129 = !{!"branch_weights", i32 45926, i32 1}
!1130 = !{!"branch_weights", i32 1, i32 36184}
!1131 = !{!"branch_weights", i32 9742, i32 117637}
!1132 = !{!"branch_weights", i32 36184, i32 91194}
!1133 = distinct !{!1133, !474}
!1134 = !{!"branch_weights", i32 130470, i32 1}
!1135 = !{!"branch_weights", i32 45925, i32 84545}
!1136 = distinct !{!1136, !474}
!1137 = !{!576, !481, i64 0}
!1138 = !{!"branch_weights", i32 212214705, i32 -1783208463}
!1139 = !{!"branch_weights", i32 102885, i32 16454}
!1140 = !{!"branch_weights", i32 100490, i32 2396}
!1141 = !{!"branch_weights", i32 2310, i32 87}
!1142 = !{!"branch_weights", i32 87, i32 1}
!1143 = !{!"branch_weights", i32 2396, i32 1}
!1144 = !{!"branch_weights", i32 416, i32 1981}
!1145 = !{!"branch_weights", i32 234, i32 183}
!1146 = !{!"branch_weights", i32 416, i32 1}
!1147 = !{!"branch_weights", i32 553, i32 1429}
!1148 = !{!"branch_weights", i32 1, i32 553}
!1149 = !{!"branch_weights", i32 553, i32 1}
!1150 = !{!"branch_weights", i32 -2147483648, i32 0}
!1151 = !{!"branch_weights", i32 968, i32 1}
!1152 = !{!"branch_weights", i32 0, i32 -2147483648}
!1153 = !{!"branch_weights", i32 1, i32 968}
!1154 = !{!"branch_weights", i32 0, i32 102885}
!1155 = distinct !{!1155, !474}
!1156 = !{!"branch_weights", i32 127, i32 5878273}
!1157 = !{!"function_entry_count", i64 9388130}
!1158 = !{!"gcse.c:ei_cond"}
!1159 = !{!"branch_weights", i32 6139351, i32 3248781}
!1160 = !{!"function_entry_count", i64 102884}
!1161 = !{!"gcse.c:find_bypass_set"}
!1162 = !{!"branch_weights", i32 102985, i32 6220}
!1163 = !{!"branch_weights", i32 100489, i32 8715}
!1164 = distinct !{!1164, !474}
!1165 = !{!"branch_weights", i32 6220, i32 1}
!1166 = !{!"branch_weights", i32 3825, i32 2396}
!1167 = !{!"branch_weights", i32 127, i32 12862465}
!1168 = !{!"function_entry_count", i64 86}
!1169 = !{!"gcse.c:reg_killed_on_edge"}
!1170 = !{!"branch_weights", i32 1, i32 173}
!1171 = !{!"branch_weights", i32 1111, i32 1}
!1172 = !{!"branch_weights", i32 138, i32 1}
!1173 = !{!"branch_weights", i32 173, i32 103}
!1174 = distinct !{!1174, !474}
!1175 = !{!"gcse.c:free_modify_mem_tables"}
!1176 = !{!"function_entry_count", i64 6652}
!1177 = !{!"gcse.c:gate_rtl_pre"}
!1178 = !{!"branch_weights", i32 44262409, i32 13307}
!1179 = !{!"branch_weights", i32 6652, i32 2}
!1180 = !{!"branch_weights", i32 1, i32 6652}
!1181 = !{!"function_entry_count", i64 6651}
!1182 = !{!"gcse.c:execute_rtl_pre"}
!1183 = !{!"gcse.c:one_pre_gcse_pass"}
!1184 = !{!"branch_weights", i32 1679, i32 4974}
!1185 = !{!"branch_weights", i32 4974, i32 1}
!1186 = !{!"branch_weights", i32 1, i32 4974}
!1187 = !{!"branch_weights", i32 19, i32 4956}
!1188 = !{!"function_entry_count", i64 4973}
!1189 = !{!"gcse.c:compute_ld_motion_mems"}
!1190 = !{!"branch_weights", i32 1, i32 4973}
!1191 = !{!"branch_weights", i32 270122, i32 1486739}
!1192 = !{!"branch_weights", i32 1374182649, i32 -832136765}
!1193 = !{!"branch_weights", i32 932145, i32 132216}
!1194 = !{!"branch_weights", i32 175266, i32 756880}
!1195 = !{!"branch_weights", i32 1, i32 175266}
!1196 = !{!"branch_weights", i32 175266, i32 1}
!1197 = !{!991, !481, i64 24}
!1198 = !{!"branch_weights", i32 214563, i32 717583}
!1199 = !{!"branch_weights", i32 155278, i32 59286}
!1200 = !{!"branch_weights", i32 -780137500, i32 59287, i32 59286}
!1201 = !{!"branch_weights", i32 6, i32 59281}
!1202 = !{!991, !481, i64 32}
!1203 = !{!"branch_weights", i32 4973, i32 1746914}
!1204 = distinct !{!1204, !474}
!1205 = !{!"branch_weights", i32 4973, i32 265149}
!1206 = distinct !{!1206, !474}
!1207 = !{!"gcse.c:trim_ld_motion_mems"}
!1208 = !{!"branch_weights", i32 142791, i32 65325}
!1209 = !{!991, !477, i64 56}
!1210 = !{!"branch_weights", i32 1, i32 15640}
!1211 = !{!"branch_weights", i32 133584, i32 127151}
!1212 = !{!"branch_weights", i32 15640, i32 245094}
!1213 = distinct !{!1213, !474}
!1214 = !{!991, !481, i64 0}
!1215 = !{!991, !481, i64 40}
!1216 = !{!"branch_weights", i32 4973, i32 203142}
!1217 = distinct !{!1217, !474}
!1218 = !{!"function_entry_count", i64 4955}
!1219 = !{!"gcse.c:alloc_pre_mem"}
!1220 = !{!"gcse.c:compute_pre_data"}
!1221 = !{!"branch_weights", i32 1, i32 4955}
!1222 = !{!"branch_weights", i32 280789, i32 184371}
!1223 = !{!"branch_weights", i32 69993, i32 114379}
!1224 = !{!"branch_weights", i32 184371, i32 0}
!1225 = distinct !{!1225, !474}
!1226 = !{!"branch_weights", i32 460205, i32 4955}
!1227 = distinct !{!1227, !474}
!1228 = !{!"branch_weights", i32 1, i32 270046}
!1229 = !{!"branch_weights", i32 428157, i32 1}
!1230 = !{!"branch_weights", i32 270046, i32 158111}
!1231 = distinct !{!1231, !474}
!1232 = !{!"branch_weights", i32 4955, i32 265092}
!1233 = distinct !{!1233, !474}
!1234 = !{!"gcse.c:pre_gcse"}
!1235 = distinct !{!1235, !474}
!1236 = !{!"branch_weights", i32 4955, i32 460205}
!1237 = distinct !{!1237, !474}
!1238 = !{!"branch_weights", i32 4258, i32 699}
!1239 = !{!"gcse.c:free_pre_mem"}
!1240 = !{!"branch_weights", i32 1, i32 4956}
!1241 = !{!"gcse.c:free_ldst_mems"}
!1242 = !{!"branch_weights", i32 4973, i32 122178}
!1243 = distinct !{!1243, !474}
!1244 = !{!"function_entry_count", i64 284789}
!1245 = !{!"gcse.c:pre_ldst_expr_hash"}
!1246 = !{!"function_entry_count", i64 901431}
!1247 = !{!"gcse.c:pre_ldst_expr_eq"}
!1248 = !{!"function_entry_count", i64 530551}
!1249 = !{!"gcse.c:simple_mem"}
!1250 = !{!"branch_weights", i32 1052808, i32 -2070628547}
!1251 = !{!"branch_weights", i32 530304, i32 1}
!1252 = !{!"branch_weights", i32 375027, i32 155278}
!1253 = !{!"branch_weights", i32 375027, i32 1}
!1254 = !{!"function_entry_count", i64 375026}
!1255 = !{!"gcse.c:ldst_entry"}
!1256 = !{!"branch_weights", i32 208115, i32 166913}
!1257 = !{!991, !481, i64 64}
!1258 = !{!991, !477, i64 52}
!1259 = !{!"function_entry_count", i64 3130907}
!1260 = !{!"gcse.c:invalidate_any_buried_refs"}
!1261 = !{!"branch_weights", i32 140725, i32 2990184}
!1262 = !{!"branch_weights", i32 249, i32 140477}
!1263 = !{!"branch_weights", i32 1, i32 3130907}
!1264 = !{!"branch_weights", i32 -253973288, i32 2048849386, i32 102479758}
!1265 = !{!"branch_weights", i32 101890, i32 1}
!1266 = !{!"branch_weights", i32 102847, i32 101890}
!1267 = distinct !{!1267, !474}
!1268 = !{!"branch_weights", i32 3025838, i32 3130907}
!1269 = distinct !{!1269, !474}
!1270 = !{!"function_entry_count", i64 208114}
!1271 = !{!"gcse.c:free_ldst_entry"}
!1272 = !{!"gcse.c:print_ldst_list"}
!1273 = distinct !{!1273, !474}
!1274 = !{!"gcse.c:first_ls_expr"}
!1275 = !{!"gcse.c:next_ls_expr"}
!1276 = !{!"gcse.c:pre_delete"}
!1277 = !{!"branch_weights", i32 126257, i32 5201}
!1278 = !{!"branch_weights", i32 41615, i32 1}
!1279 = !{!"branch_weights", i32 3777, i32 1}
!1280 = !{!"branch_weights", i32 1364708332, i32 782775316}
!1281 = !{!"branch_weights", i32 1, i32 5201}
!1282 = !{!"branch_weights", i32 2813, i32 2389}
!1283 = !{!"branch_weights", i32 5201, i32 1}
!1284 = distinct !{!1284, !474}
!1285 = distinct !{!1285, !474}
!1286 = distinct !{!1286, !474}
!1287 = !{!"gcse.c:pre_edge_insert"}
!1288 = !{!1058, !477, i64 12}
!1289 = !{!1290, !477, i64 4}
!1290 = !{!"edge_list", !477, i64 0, !477, i64 4, !481, i64 8}
!1291 = !{!"branch_weights", i32 4955, i32 1}
!1292 = !{!1290, !481, i64 8}
!1293 = !{!"branch_weights", i32 438162, i32 1}
!1294 = !{!"branch_weights", i32 109774, i32 4045977}
!1295 = !{!"branch_weights", i32 109774, i32 3936203}
!1296 = !{!"branch_weights", i32 104113, i32 5662}
!1297 = !{!"branch_weights", i32 1, i32 5662}
!1298 = !{!"branch_weights", i32 1, i32 5661}
!1299 = !{!"branch_weights", i32 538046, i32 49699}
!1300 = !{!"branch_weights", i32 5662, i32 44038}
!1301 = !{!"branch_weights", i32 5662, i32 1}
!1302 = !{!"branch_weights", i32 5661, i32 582083}
!1303 = distinct !{!1303, !474}
!1304 = !{!"branch_weights", i32 0, i32 109774}
!1305 = distinct !{!1305, !474}
!1306 = !{!"branch_weights", i32 438162, i32 3607815}
!1307 = distinct !{!1307, !474}
!1308 = !{!"branch_weights", i32 4955, i32 433208}
!1309 = distinct !{!1309, !474}
!1310 = !{!"gcse.c:pre_insert_copies"}
!1311 = !{!"branch_weights", i32 181559, i32 2813}
!1312 = !{!"branch_weights", i32 1, i32 2812}
!1313 = !{!"branch_weights", i32 12441, i32 5201}
!1314 = !{!"branch_weights", i32 1, i32 5200}
!1315 = !{!"branch_weights", i32 286305, i32 28144}
!1316 = !{!"branch_weights", i32 244498, i32 41808}
!1317 = !{!"branch_weights", i32 239336, i32 5163}
!1318 = !{!"branch_weights", i32 5200, i32 309248}
!1319 = distinct !{!1319, !474}
!1320 = !{!"branch_weights", i32 2812, i32 14829}
!1321 = distinct !{!1321, !474}
!1322 = !{!"branch_weights", i32 251162974, i32 1896320674}
!1323 = distinct !{!1323, !474}
!1324 = distinct !{!1324, !474}
!1325 = !{!"function_entry_count", i64 5200}
!1326 = !{!"gcse.c:gcse_emit_move_after"}
!1327 = !{!"branch_weights", i32 1879091760, i32 268391888}
!1328 = !{!"branch_weights", i32 5175, i32 27}
!1329 = !{!"gcse.c:insert_insn_end_basic_block"}
!1330 = distinct !{!1330, !474}
!1331 = distinct !{!1331, !474}
!1332 = !{!"function_entry_count", i64 5661}
!1333 = !{!"gcse.c:process_insert_insn"}
!1334 = !{!"branch_weights", i32 965, i32 4698}
!1335 = !{!"branch_weights", i32 965, i32 1}
!1336 = !{!"function_entry_count", i64 8144}
!1337 = !{!"gcse.c:update_ld_motion_stores"}
!1338 = !{!"branch_weights", i32 3502, i32 4644}
!1339 = !{!"branch_weights", i32 1, i32 4643}
!1340 = !{!"branch_weights", i32 17477, i32 4168}
!1341 = !{!"branch_weights", i32 4168, i32 1}
!1342 = !{!"branch_weights", i32 4643, i32 17001}
!1343 = distinct !{!1343, !474}
!1344 = !{!"gcse.c:single_succ_p"}
!1345 = !{!"gcse.c:single_succ_edge"}
!1346 = !{!"gcse.c:add_label_notes"}
!1347 = distinct !{!1347, !474}
!1348 = distinct !{!1348, !474}
!1349 = !{!"function_entry_count", i64 244497}
!1350 = !{!"gcse.c:pre_expr_reaches_here_p"}
!1351 = !{!"function_entry_count", i64 5162}
!1352 = !{!"gcse.c:pre_insert_copy_insn"}
!1353 = !{!"branch_weights", i32 1, i32 4457, i32 707}
!1354 = !{!"branch_weights", i32 127, i32 1}
!1355 = !{!"branch_weights", i32 707, i32 1}
!1356 = !{!"branch_weights", i32 1, i32 707}
!1357 = !{!"branch_weights", i32 90369, i32 127}
!1358 = distinct !{!1358, !474}
!1359 = !{!"branch_weights", i32 4098, i32 1066}
!1360 = !{!"branch_weights", i32 1, i32 4098}
!1361 = !{!"branch_weights", i32 1, i32 1066}
!1362 = !{!"branch_weights", i32 5163, i32 1}
!1363 = !{!"function_entry_count", i64 2971822}
!1364 = !{!"gcse.c:pre_expr_reaches_here_p_work"}
!1365 = !{!"branch_weights", i32 1, i32 2942550}
!1366 = !{!"branch_weights", i32 582, i32 5583237}
!1367 = !{!"branch_weights", i32 4539864, i32 1043374}
!1368 = !{!"branch_weights", i32 3867014, i32 672851}
!1369 = !{!"branch_weights", i32 5163, i32 667689}
!1370 = !{!"branch_weights", i32 1139689, i32 2727326}
!1371 = !{!"branch_weights", i32 2703216, i32 24111}
!1372 = !{!"branch_weights", i32 2942550, i32 2641268}
!1373 = distinct !{!1373, !474}
!1374 = !{!"gcse.c:gate_rtl_hoist"}
!1375 = !{!"branch_weights", i32 6652, i32 1}
!1376 = !{!"gcse.c:execute_rtl_hoist"}
!1377 = !{!"gcse.c:one_code_hoisting_pass"}
!1378 = !{!"gcse.c:alloc_code_hoist_mem"}
!1379 = !{!"gcse.c:compute_code_hoist_data"}
!1380 = !{!"gcse.c:hoist_code"}
!1381 = distinct !{!1381, !474}
!1382 = distinct !{!1382, !474}
!1383 = !{!1058, !477, i64 8}
!1384 = distinct !{!1384, !474}
!1385 = distinct !{!1385, !474}
!1386 = distinct !{!1386, !474}
!1387 = distinct !{!1387, !474}
!1388 = distinct !{!1388, !474}
!1389 = distinct !{!1389, !474}
!1390 = !{!"gcse.c:free_code_hoist_mem"}
!1391 = !{!"gcse.c:compute_transpout"}
!1392 = distinct !{!1392, !474}
!1393 = distinct !{!1393, !474}
!1394 = distinct !{!1394, !474}
!1395 = !{!"gcse.c:compute_code_hoist_vbeinout"}
!1396 = !{!523, !481, i64 48}
!1397 = distinct !{!1397, !474}
!1398 = distinct !{!1398, !474}
!1399 = !{!"gcse.c:VEC_basic_block_base_iterate"}
!1400 = !{!1401, !477, i64 0}
!1401 = !{!"VEC_basic_block_base", !477, i64 0, !477, i64 4, !468, i64 8}
!1402 = !{!"gcse.c:hoist_expr_reaches_here_p"}
!1403 = distinct !{!1403, !474}
!1404 = !{!"gcse.c:VEC_basic_block_heap_free"}
