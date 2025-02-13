; ModuleID = 'df-scan.c'
source_filename = "df-scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.df_problem = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_scan_problem_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bitmap_obstack, %struct.bitmap_obstack }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_scan_bb_info = type { ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df_reg_info = type { ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.df_artificial_ref = type { %struct.df_base_ref, ptr }
%struct.df_collection_rec = type { ptr, ptr, ptr, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.df_mw_hardreg = type { ptr, i32, i32, i32, i32 }
%struct.df_regular_ref = type { %struct.df_base_ref, ptr }
%struct.df_extract_ref = type { %struct.df_regular_ref, i32, i32, i32 }
%struct.VEC_df_mw_hardreg_ptr_base = type { i32, i32, [1 x ptr] }
%struct.VEC_df_ref_base = type { i32, i32, [1 x ptr] }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.rtvec_def = type { i32, [1 x ptr] }

@df = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"df_scan_block pool\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"df_scan ref base\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"df_scan ref artificial\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"df_scan ref regular\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"df_scan ref extract\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"df_scan insn\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"df_scan reg\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"df_scan mw_reg\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@problem_SCAN = internal global %struct.df_problem { i32 0, i32 0, ptr @df_scan_alloc, ptr null, ptr @df_scan_free_bb_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @df_scan_free, ptr null, ptr @df_scan_start_dump, ptr @df_scan_start_block, ptr null, ptr null, ptr null, ptr null, i32 28, i8 0 }, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"df-scan.c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c";;  invalidated by call \09\00", align 1
@regs_invalidated_by_call_regset = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c";;  hardware regs used \09\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c";;  regular block artificial uses \09\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c";;  eh block artificial uses \09\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c";;  entry block defs \09\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c";;  exit block uses \09\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c";;  regs ever live \09\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c" %d[%s]\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@.str.18 = private unnamed_addr constant [17 x i8] c"\0A;;  ref usage \09\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"r%d={\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%dd\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%s%du\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%s%dd\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"} \00", align 1
@.str.26 = private unnamed_addr constant [75 x i8] c"\0A;;    total ref usage %d{%dd,%du,%de} in %d{%d regular + %d call} insns.\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c";; bb %d artificial_defs: \00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"\0A;; bb %d artificial_uses: \00", align 1
@reload_completed = external local_unnamed_addr global i32, align 4
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@flag_pic = external local_unnamed_addr global i32, align 4
@pic_offset_table_rtx = external local_unnamed_addr global ptr, align 8
@epilogue_completed = external local_unnamed_addr global i32, align 4
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@elim_reg_set = internal unnamed_addr global i1 false, align 8
@df_null_ref_rec = internal global [1 x ptr] zeroinitializer, align 8
@df_null_mw_rec = internal global [1 x ptr] zeroinitializer, align 8
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@.str.30 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [43 x i8] c"deferring deletion of insn with uid = %d.\0A\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"deleting insn with uid = %d.\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"no bb for insn with uid = %d.\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"deferring rescan insn with uid = %d.\0A\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"verify found no changes in insn with uid = %d.\0A\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"rescanning insn with uid = %d.\0A\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"scanning new insn with uid = %d.\0A\00", align 1
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@df_bitmap_obstack = external global %struct.bitmap_obstack, align 8
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@.str.38 = private unnamed_addr constant [36 x i8] c"deleting debug_insn with uid = %d.\0A\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"starting the processing of deferred insns\0A\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"ending the processing of deferred insns\0A\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"changing bb of uid %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"  unscanned insn\0A\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"  from %d to %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"  to %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"changing reg in insn %d\0A\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@initialized = internal unnamed_addr global i1 false, align 1
@regs_ever_live = internal unnamed_addr global [53 x i8] zeroinitializer, align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.46 = private unnamed_addr constant [20 x i8] c"entry_block_defs = \00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"df->entry_block_defs = \00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"exit_block_uses = \00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"df->exit_block_uses = \00", align 1
@switch.table.df_ref_create = private unnamed_addr constant [5 x i32] [i32 2, i32 1, i32 2, i32 1, i32 2], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_scan_alloc(ptr nocapture readnone %0) #0 !prof !425 {
  %2 = tail call i32 @get_max_uid() #21
  %3 = load ptr, ptr @df, align 8, !tbaa !426
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !426
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !430
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !433

9:                                                ; preds = %1
  tail call fastcc void @df_scan_free_internal() #22
  br label %10

10:                                               ; preds = %9, %1
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str, i64 noundef 16, i64 noundef 400) #21
  %12 = load ptr, ptr @df, align 8, !tbaa !426
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !426
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  store ptr %11, ptr %15, align 8, !tbaa !434
  %16 = tail call ptr @xmalloc(i64 noundef 264) #21
  %17 = load ptr, ptr @df, align 8, !tbaa !426
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !426
  %20 = getelementptr inbounds %struct.dataflow, ptr %19, i64 0, i32 5
  store ptr %16, ptr %20, align 8, !tbaa !430
  %21 = load ptr, ptr %18, align 8, !tbaa !426
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 7
  store i8 1, ptr %22, align 4, !tbaa !435
  %23 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.1, i64 noundef 64, i64 noundef 400) #21
  store ptr %23, ptr %16, align 8, !tbaa !436
  %24 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.2, i64 noundef 72, i64 noundef 400) #21
  %25 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !441
  %26 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.3, i64 noundef 72, i64 noundef 400) #21
  %27 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !442
  %28 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.4, i64 noundef 88, i64 noundef 400) #21
  %29 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !443
  %30 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.5, i64 noundef 48, i64 noundef 400) #21
  %31 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 4
  store ptr %30, ptr %31, align 8, !tbaa !444
  %32 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.6, i64 noundef 16, i64 noundef 400) #21
  %33 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 5
  store ptr %32, ptr %33, align 8, !tbaa !445
  %34 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.7, i64 noundef 24, i64 noundef 400) #21
  %35 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 6
  store ptr %34, ptr %35, align 8, !tbaa !446
  %36 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 7
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull %36) #21
  %37 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 8
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull %37) #21
  tail call void @df_grow_reg_info() #22
  tail call void @df_grow_insn_info() #22
  %38 = load ptr, ptr @df, align 8, !tbaa !426
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !426
  tail call void @df_grow_bb_info(ptr noundef %40) #21
  %41 = load ptr, ptr @cfun, align 8, !tbaa !426
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !447
  %44 = load ptr, ptr %43, align 8, !tbaa !426
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46, !prof !449

46:                                               ; preds = %10, %59
  %47 = phi ptr [ %62, %59 ], [ %44, %10 ]
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !450
  %50 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %49) #22
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %59, !prof !452

52:                                               ; preds = %46
  %53 = load ptr, ptr @df, align 8, !tbaa !426
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !426
  %56 = getelementptr inbounds %struct.dataflow, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !434
  %58 = tail call ptr @pool_alloc(ptr noundef %57) #21
  tail call fastcc void @df_scan_set_bb_info(i32 noundef %49, ptr noundef %58) #22
  br label %59

59:                                               ; preds = %52, %46
  %60 = phi ptr [ %50, %46 ], [ %58, %52 ]
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  %62 = load ptr, ptr %61, align 8, !tbaa !426
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %46, !prof !453, !llvm.loop !454

64:                                               ; preds = %59, %10
  %65 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %36) #21
  %66 = load ptr, ptr @df, align 8, !tbaa !426
  %67 = getelementptr inbounds %struct.df, ptr %66, i64 0, i32 13
  store ptr %65, ptr %67, align 8, !tbaa !456
  %68 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %36) #21
  %69 = load ptr, ptr @df, align 8, !tbaa !426
  %70 = getelementptr inbounds %struct.df, ptr %69, i64 0, i32 14
  store ptr %68, ptr %70, align 8, !tbaa !459
  %71 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %36) #21
  %72 = load ptr, ptr @df, align 8, !tbaa !426
  %73 = getelementptr inbounds %struct.df, ptr %72, i64 0, i32 15
  store ptr %71, ptr %73, align 8, !tbaa !460
  %74 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %36) #21
  %75 = load ptr, ptr @df, align 8, !tbaa !426
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 16
  store ptr %74, ptr %76, align 8, !tbaa !461
  %77 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %36) #21
  %78 = load ptr, ptr @df, align 8, !tbaa !426
  %79 = getelementptr inbounds %struct.df, ptr %78, i64 0, i32 17
  store ptr %77, ptr %79, align 8, !tbaa !462
  %80 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %37) #21
  %81 = load ptr, ptr @df, align 8, !tbaa !426
  %82 = getelementptr inbounds %struct.df, ptr %81, i64 0, i32 18
  store ptr %80, ptr %82, align 8, !tbaa !463
  %83 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %37) #21
  %84 = load ptr, ptr @df, align 8, !tbaa !426
  %85 = getelementptr inbounds %struct.df, ptr %84, i64 0, i32 19
  store ptr %83, ptr %85, align 8, !tbaa !464
  %86 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %37) #21
  %87 = load ptr, ptr @df, align 8, !tbaa !426
  %88 = getelementptr inbounds %struct.df, ptr %87, i64 0, i32 20
  store ptr %86, ptr %88, align 8, !tbaa !465
  %89 = getelementptr inbounds %struct.df, ptr %87, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !426
  %91 = getelementptr inbounds %struct.dataflow, ptr %90, i64 0, i32 9
  store i8 0, ptr %91, align 2, !tbaa !466
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_scan_free_internal() unnamed_addr #0 !prof !425 !PGOFuncName !467 {
  %1 = load ptr, ptr @df, align 8, !tbaa !426
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !426
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !430
  %6 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !468
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %56, label %9, !prof !449

9:                                                ; preds = %0, %49
  %10 = phi i64 [ %50, %49 ], [ 0, %0 ]
  %11 = phi ptr [ %51, %49 ], [ %1, %0 ]
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !469
  %14 = getelementptr inbounds ptr, ptr %13, i64 %10
  %15 = load ptr, ptr %14, align 8, !tbaa !426
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17, !prof !470

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.df_insn_info, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !471
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !473

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !426
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !474

24:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %19) #22
  br label %25

25:                                               ; preds = %17, %21, %24
  %26 = getelementptr inbounds %struct.df_insn_info, ptr %15, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !475
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29, !prof !473

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !426
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !476

32:                                               ; preds = %29
  tail call void @free(ptr noundef nonnull %27) #22
  br label %33

33:                                               ; preds = %25, %29, %32
  %34 = getelementptr inbounds %struct.df_insn_info, ptr %15, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !477
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37, !prof !473

37:                                               ; preds = %33
  %38 = load ptr, ptr %35, align 8, !tbaa !426
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40, !prof !478

40:                                               ; preds = %37
  tail call void @free(ptr noundef nonnull %35) #22
  br label %41

41:                                               ; preds = %33, %37, %40
  %42 = getelementptr inbounds %struct.df_insn_info, ptr %15, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !479
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45, !prof !473

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 8, !tbaa !426
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48, !prof !480

48:                                               ; preds = %45
  tail call void @free(ptr noundef nonnull %43) #22
  br label %49

49:                                               ; preds = %41, %45, %48, %9
  %50 = add nuw nsw i64 %10, 1
  %51 = load ptr, ptr @df, align 8, !tbaa !426
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 11
  %53 = load i32, ptr %52, align 8, !tbaa !468
  %54 = zext i32 %53 to i64
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %9, label %56, !prof !481, !llvm.loop !482

56:                                               ; preds = %49, %0
  %57 = phi ptr [ %1, %0 ], [ %51, %49 ]
  %58 = load ptr, ptr @cfun, align 8, !tbaa !426
  %59 = getelementptr inbounds %struct.function, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !447
  %61 = load ptr, ptr %60, align 8, !tbaa !426
  %62 = icmp eq ptr %61, null
  br i1 %62, label %90, label %63, !prof !449

63:                                               ; preds = %56, %84
  %64 = phi ptr [ %86, %84 ], [ %61, %56 ]
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !450
  %67 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %66) #22
  %68 = icmp eq ptr %67, null
  br i1 %68, label %84, label %69, !prof !483

69:                                               ; preds = %63
  %70 = load ptr, ptr %67, align 8, !tbaa !484
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72, !prof !483

72:                                               ; preds = %69
  %73 = load ptr, ptr %70, align 8, !tbaa !426
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75, !prof !486

75:                                               ; preds = %72
  tail call void @free(ptr noundef nonnull %70) #22
  br label %76

76:                                               ; preds = %69, %72, %75
  %77 = getelementptr inbounds %struct.df_scan_bb_info, ptr %67, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !487
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80, !prof !483

80:                                               ; preds = %76
  %81 = load ptr, ptr %78, align 8, !tbaa !426
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83, !prof !488

83:                                               ; preds = %80
  tail call void @free(ptr noundef nonnull %78) #22
  br label %84

84:                                               ; preds = %76, %80, %83, %63
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !426
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %63, !prof !489, !llvm.loop !490

88:                                               ; preds = %84
  %89 = load ptr, ptr @df, align 8, !tbaa !426
  br label %90

90:                                               ; preds = %88, %56
  %91 = phi ptr [ %89, %88 ], [ %57, %56 ]
  %92 = getelementptr inbounds %struct.df, ptr %91, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !491
  tail call void @free(ptr noundef %93) #22
  %94 = load ptr, ptr @df, align 8, !tbaa !426
  %95 = getelementptr inbounds %struct.df, ptr %94, i64 0, i32 3, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !492
  tail call void @free(ptr noundef %96) #22
  %97 = load ptr, ptr @df, align 8, !tbaa !426
  %98 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 3, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !493
  tail call void @free(ptr noundef %99) #22
  %100 = load ptr, ptr @df, align 8, !tbaa !426
  %101 = getelementptr inbounds %struct.df, ptr %100, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %101, i8 0, i64 40, i1 false)
  %102 = getelementptr inbounds %struct.df, ptr %100, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !494
  tail call void @free(ptr noundef %103) #22
  %104 = load ptr, ptr @df, align 8, !tbaa !426
  %105 = getelementptr inbounds %struct.df, ptr %104, i64 0, i32 4, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !495
  tail call void @free(ptr noundef %106) #22
  %107 = load ptr, ptr @df, align 8, !tbaa !426
  %108 = getelementptr inbounds %struct.df, ptr %107, i64 0, i32 4, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !496
  tail call void @free(ptr noundef %109) #22
  %110 = load ptr, ptr @df, align 8, !tbaa !426
  %111 = getelementptr inbounds %struct.df, ptr %110, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %111, i8 0, i64 40, i1 false)
  %112 = getelementptr inbounds %struct.df, ptr %110, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !497
  tail call void @free(ptr noundef %113) #22
  %114 = load ptr, ptr @df, align 8, !tbaa !426
  %115 = getelementptr inbounds %struct.df, ptr %114, i64 0, i32 5
  store ptr null, ptr %115, align 8, !tbaa !497
  %116 = getelementptr inbounds %struct.df, ptr %114, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !498
  tail call void @free(ptr noundef %117) #22
  %118 = load ptr, ptr @df, align 8, !tbaa !426
  %119 = getelementptr inbounds %struct.df, ptr %118, i64 0, i32 6
  store ptr null, ptr %119, align 8, !tbaa !498
  %120 = getelementptr inbounds %struct.df, ptr %118, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !499
  tail call void @free(ptr noundef %121) #22
  %122 = load ptr, ptr @df, align 8, !tbaa !426
  %123 = getelementptr inbounds %struct.df, ptr %122, i64 0, i32 7
  %124 = getelementptr inbounds %struct.df, ptr %122, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %123, i8 0, i64 16, i1 false)
  %125 = load ptr, ptr %124, align 8, !tbaa !469
  tail call void @free(ptr noundef %125) #22
  %126 = load ptr, ptr @df, align 8, !tbaa !426
  %127 = getelementptr inbounds %struct.df, ptr %126, i64 0, i32 10
  store ptr null, ptr %127, align 8, !tbaa !469
  %128 = getelementptr inbounds %struct.df, ptr %126, i64 0, i32 11
  store i32 0, ptr %128, align 8, !tbaa !468
  %129 = getelementptr inbounds %struct.df, ptr %126, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !426
  %131 = getelementptr inbounds %struct.dataflow, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !500
  tail call void @free(ptr noundef %132) #22
  %133 = load ptr, ptr @df, align 8, !tbaa !426
  %134 = getelementptr inbounds %struct.df, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !426
  %136 = getelementptr inbounds %struct.dataflow, ptr %135, i64 0, i32 1
  store ptr null, ptr %136, align 8, !tbaa !500
  %137 = load ptr, ptr %134, align 8, !tbaa !426
  %138 = getelementptr inbounds %struct.dataflow, ptr %137, i64 0, i32 2
  store i32 0, ptr %138, align 8, !tbaa !501
  %139 = getelementptr inbounds %struct.df, ptr %133, i64 0, i32 13
  %140 = load ptr, ptr %139, align 8, !tbaa !456
  tail call void @bitmap_obstack_free(ptr noundef %140) #21
  %141 = load ptr, ptr @df, align 8, !tbaa !426
  %142 = getelementptr inbounds %struct.df, ptr %141, i64 0, i32 13
  store ptr null, ptr %142, align 8, !tbaa !456
  %143 = getelementptr inbounds %struct.df, ptr %141, i64 0, i32 14
  %144 = load ptr, ptr %143, align 8, !tbaa !459
  tail call void @bitmap_obstack_free(ptr noundef %144) #21
  %145 = load ptr, ptr @df, align 8, !tbaa !426
  %146 = getelementptr inbounds %struct.df, ptr %145, i64 0, i32 14
  store ptr null, ptr %146, align 8, !tbaa !459
  %147 = getelementptr inbounds %struct.df, ptr %145, i64 0, i32 15
  %148 = load ptr, ptr %147, align 8, !tbaa !460
  tail call void @bitmap_obstack_free(ptr noundef %148) #21
  %149 = load ptr, ptr @df, align 8, !tbaa !426
  %150 = getelementptr inbounds %struct.df, ptr %149, i64 0, i32 15
  store ptr null, ptr %150, align 8, !tbaa !460
  %151 = getelementptr inbounds %struct.df, ptr %149, i64 0, i32 16
  %152 = load ptr, ptr %151, align 8, !tbaa !461
  tail call void @bitmap_obstack_free(ptr noundef %152) #21
  %153 = load ptr, ptr @df, align 8, !tbaa !426
  %154 = getelementptr inbounds %struct.df, ptr %153, i64 0, i32 16
  store ptr null, ptr %154, align 8, !tbaa !461
  %155 = getelementptr inbounds %struct.df, ptr %153, i64 0, i32 17
  %156 = load ptr, ptr %155, align 8, !tbaa !462
  tail call void @bitmap_obstack_free(ptr noundef %156) #21
  %157 = load ptr, ptr @df, align 8, !tbaa !426
  %158 = getelementptr inbounds %struct.df, ptr %157, i64 0, i32 17
  store ptr null, ptr %158, align 8, !tbaa !462
  %159 = getelementptr inbounds %struct.df, ptr %157, i64 0, i32 18
  %160 = load ptr, ptr %159, align 8, !tbaa !463
  tail call void @bitmap_obstack_free(ptr noundef %160) #21
  %161 = load ptr, ptr @df, align 8, !tbaa !426
  %162 = getelementptr inbounds %struct.df, ptr %161, i64 0, i32 18
  store ptr null, ptr %162, align 8, !tbaa !463
  %163 = getelementptr inbounds %struct.df, ptr %161, i64 0, i32 19
  %164 = load ptr, ptr %163, align 8, !tbaa !464
  tail call void @bitmap_obstack_free(ptr noundef %164) #21
  %165 = load ptr, ptr @df, align 8, !tbaa !426
  %166 = getelementptr inbounds %struct.df, ptr %165, i64 0, i32 19
  store ptr null, ptr %166, align 8, !tbaa !464
  %167 = getelementptr inbounds %struct.df, ptr %165, i64 0, i32 20
  %168 = load ptr, ptr %167, align 8, !tbaa !465
  tail call void @bitmap_obstack_free(ptr noundef %168) #21
  %169 = load ptr, ptr @df, align 8, !tbaa !426
  %170 = getelementptr inbounds %struct.df, ptr %169, i64 0, i32 20
  store ptr null, ptr %170, align 8, !tbaa !465
  %171 = getelementptr inbounds %struct.df, ptr %169, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !426
  %173 = getelementptr inbounds %struct.dataflow, ptr %172, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !434
  tail call void @free_alloc_pool(ptr noundef %174) #21
  %175 = load ptr, ptr %5, align 8, !tbaa !436
  tail call void @free_alloc_pool(ptr noundef %175) #21
  %176 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !441
  tail call void @free_alloc_pool(ptr noundef %177) #21
  %178 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !442
  tail call void @free_alloc_pool(ptr noundef %179) #21
  %180 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !443
  tail call void @free_alloc_pool(ptr noundef %181) #21
  %182 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !444
  tail call void @free_alloc_pool(ptr noundef %183) #21
  %184 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 5
  %185 = load ptr, ptr %184, align 8, !tbaa !445
  tail call void @free_alloc_pool(ptr noundef %185) #21
  %186 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 6
  %187 = load ptr, ptr %186, align 8, !tbaa !446
  tail call void @free_alloc_pool(ptr noundef %187) #21
  %188 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 7
  tail call void @bitmap_obstack_release(ptr noundef nonnull %188) #21
  %189 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 8
  tail call void @bitmap_obstack_release(ptr noundef nonnull %189) #21
  %190 = load ptr, ptr @df, align 8, !tbaa !426
  %191 = getelementptr inbounds %struct.df, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !426
  %193 = getelementptr inbounds %struct.dataflow, ptr %192, i64 0, i32 5
  %194 = load ptr, ptr %193, align 8, !tbaa !430
  tail call void @free(ptr noundef %194) #22
  ret void
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_grow_reg_info() local_unnamed_addr #0 !prof !502 {
  %1 = tail call i32 @max_reg_num() #21
  %2 = load ptr, ptr @df, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !426
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !430
  %7 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !503
  %9 = icmp ult i32 %8, %1
  br i1 %9, label %10, label %52, !prof !504

10:                                               ; preds = %0
  %11 = lshr i32 %1, 2
  %12 = add i32 %11, %1
  %13 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !497
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = tail call ptr @xrealloc(ptr noundef %14, i64 noundef %16) #21
  %18 = load ptr, ptr @df, align 8, !tbaa !426
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 5
  store ptr %17, ptr %19, align 8, !tbaa !497
  %20 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !498
  %22 = tail call ptr @xrealloc(ptr noundef %21, i64 noundef %16) #21
  %23 = load ptr, ptr @df, align 8, !tbaa !426
  %24 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 6
  store ptr %22, ptr %24, align 8, !tbaa !498
  %25 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !499
  %27 = tail call ptr @xrealloc(ptr noundef %26, i64 noundef %16) #21
  %28 = load ptr, ptr @df, align 8, !tbaa !426
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 7
  store ptr %27, ptr %29, align 8, !tbaa !499
  %30 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 3, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !492
  %32 = shl nuw nsw i64 %15, 2
  %33 = tail call ptr @xrealloc(ptr noundef %31, i64 noundef %32) #21
  %34 = load ptr, ptr @df, align 8, !tbaa !426
  %35 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 3, i32 1
  store ptr %33, ptr %35, align 8, !tbaa !492
  %36 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 3, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !493
  %38 = tail call ptr @xrealloc(ptr noundef %37, i64 noundef %32) #21
  %39 = load ptr, ptr @df, align 8, !tbaa !426
  %40 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 3, i32 2
  store ptr %38, ptr %40, align 8, !tbaa !493
  %41 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 4, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !495
  %43 = tail call ptr @xrealloc(ptr noundef %42, i64 noundef %32) #21
  %44 = load ptr, ptr @df, align 8, !tbaa !426
  %45 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 4, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !495
  %46 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 4, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !496
  %48 = tail call ptr @xrealloc(ptr noundef %47, i64 noundef %32) #21
  %49 = load ptr, ptr @df, align 8, !tbaa !426
  %50 = getelementptr inbounds %struct.df, ptr %49, i64 0, i32 4, i32 2
  store ptr %48, ptr %50, align 8, !tbaa !496
  %51 = getelementptr inbounds %struct.df, ptr %49, i64 0, i32 8
  store i32 %12, ptr %51, align 8, !tbaa !503
  br label %52

52:                                               ; preds = %10, %0
  %53 = phi ptr [ %49, %10 ], [ %2, %0 ]
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 9
  %55 = load i32, ptr %54, align 4, !tbaa !505
  %56 = icmp ult i32 %55, %1
  br i1 %56, label %57, label %96, !prof !506

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.df_scan_problem_data, ptr %6, i64 0, i32 5
  %59 = zext i32 %55 to i64
  br label %60

60:                                               ; preds = %57, %60
  %61 = phi i64 [ %59, %57 ], [ %93, %60 ]
  %62 = load ptr, ptr %58, align 8, !tbaa !445
  %63 = tail call ptr @pool_alloc(ptr noundef %62) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  %64 = load ptr, ptr @df, align 8, !tbaa !426
  %65 = getelementptr inbounds %struct.df, ptr %64, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !497
  %67 = getelementptr inbounds ptr, ptr %66, i64 %61
  store ptr %63, ptr %67, align 8, !tbaa !426
  %68 = load ptr, ptr %58, align 8, !tbaa !445
  %69 = tail call ptr @pool_alloc(ptr noundef %68) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  %70 = load ptr, ptr @df, align 8, !tbaa !426
  %71 = getelementptr inbounds %struct.df, ptr %70, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !498
  %73 = getelementptr inbounds ptr, ptr %72, i64 %61
  store ptr %69, ptr %73, align 8, !tbaa !426
  %74 = load ptr, ptr %58, align 8, !tbaa !445
  %75 = tail call ptr @pool_alloc(ptr noundef %74) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, i8 0, i64 16, i1 false)
  %76 = load ptr, ptr @df, align 8, !tbaa !426
  %77 = getelementptr inbounds %struct.df, ptr %76, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !499
  %79 = getelementptr inbounds ptr, ptr %78, i64 %61
  store ptr %75, ptr %79, align 8, !tbaa !426
  %80 = load ptr, ptr @df, align 8, !tbaa !426
  %81 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 3, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !492
  %83 = getelementptr inbounds i32, ptr %82, i64 %61
  store i32 0, ptr %83, align 4, !tbaa !507
  %84 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 3, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !493
  %86 = getelementptr inbounds i32, ptr %85, i64 %61
  store i32 0, ptr %86, align 4, !tbaa !507
  %87 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 4, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !495
  %89 = getelementptr inbounds i32, ptr %88, i64 %61
  store i32 0, ptr %89, align 4, !tbaa !507
  %90 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 4, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !496
  %92 = getelementptr inbounds i32, ptr %91, i64 %61
  store i32 0, ptr %92, align 4, !tbaa !507
  %93 = add nuw nsw i64 %61, 1
  %94 = trunc i64 %93 to i32
  %95 = icmp eq i32 %1, %94
  br i1 %95, label %96, label %60, !prof !508, !llvm.loop !509

96:                                               ; preds = %60, %52
  %97 = phi ptr [ %53, %52 ], [ %80, %60 ]
  %98 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 9
  store i32 %1, ptr %98, align 4, !tbaa !505
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_grow_insn_info() local_unnamed_addr #0 !prof !510 {
  %1 = tail call i32 @get_max_uid() #21
  %2 = add nsw i32 %1, 1
  %3 = load ptr, ptr @df, align 8, !tbaa !426
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 8, !tbaa !468
  %6 = icmp ult i32 %5, %2
  br i1 %6, label %7, label %26, !prof !511

7:                                                ; preds = %0
  %8 = lshr i32 %2, 2
  %9 = add i32 %8, %2
  %10 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !469
  %12 = zext i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = tail call ptr @xrealloc(ptr noundef %11, i64 noundef %13) #21
  %15 = load ptr, ptr @df, align 8, !tbaa !426
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 10
  store ptr %14, ptr %16, align 8, !tbaa !469
  %17 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 11
  %18 = load i32, ptr %17, align 8, !tbaa !468
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %14, i64 %19
  %21 = sub i32 %9, %18
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 %23, i1 false)
  %24 = load ptr, ptr @df, align 8, !tbaa !426
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 11
  store i32 %9, ptr %25, align 8, !tbaa !468
  br label %26

26:                                               ; preds = %7, %0
  ret void
}

; Function Attrs: optsize
declare void @df_grow_bb_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_scan_get_bb_info(i32 noundef %0) unnamed_addr #3 !prof !512 !PGOFuncName !513 {
  %2 = load ptr, ptr @df, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !426
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !501
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !514

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !500
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !426
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_scan_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !515 !PGOFuncName !516 {
  %3 = load ptr, ptr @df, align 8, !tbaa !426
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !426
  tail call void @df_grow_bb_info(ptr noundef %5) #21
  %6 = load ptr, ptr @df, align 8, !tbaa !426
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !426
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !500
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  store ptr %1, ptr %12, align 8, !tbaa !426
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_scan_add_problem() local_unnamed_addr #0 !prof !517 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_SCAN) #21
  ret void
}

; Function Attrs: optsize
declare void @df_add_problem(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_scan_free_bb_info(ptr noundef %0, ptr noundef %1) #0 !prof !518 !PGOFuncName !519 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !450
  %5 = icmp eq ptr %1, null
  br i1 %5, label %52, label %6, !prof !520

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !521
  %9 = load ptr, ptr %8, align 8, !tbaa !521
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11, !prof !522

11:                                               ; preds = %6, %27
  %12 = phi ptr [ %29, %27 ], [ %9, %6 ]
  %13 = load ptr, ptr %7, align 8, !tbaa !521
  %14 = getelementptr inbounds %struct.rtl_bb_info, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !523
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !521
  %18 = icmp eq ptr %12, %17
  br i1 %18, label %31, label %19, !prof !525

19:                                               ; preds = %11
  %20 = load i32, ptr %12, align 8
  %21 = and i32 %20, 65535
  %22 = add nsw i32 %21, -7
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !521
  tail call void @df_insn_delete(ptr noundef nonnull %0, i32 noundef %26) #22
  br label %27

27:                                               ; preds = %19, %24
  %28 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !521
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %11, !prof !526, !llvm.loop !527

31:                                               ; preds = %11, %27, %6
  %32 = load ptr, ptr @df, align 8, !tbaa !426
  %33 = getelementptr inbounds %struct.df, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !426
  %35 = getelementptr inbounds %struct.dataflow, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !501
  %37 = icmp ult i32 %4, %36
  br i1 %37, label %38, label %40, !prof !525

38:                                               ; preds = %31
  %39 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %4) #22
  br label %40

40:                                               ; preds = %38, %31
  %41 = phi ptr [ %39, %38 ], [ %1, %31 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !484
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %42) #22
  %43 = getelementptr inbounds %struct.df_scan_bb_info, ptr %41, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !487
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %44) #22
  %45 = load ptr, ptr %41, align 8, !tbaa !484
  tail call fastcc void @df_ref_chain_delete(ptr noundef %45) #22
  %46 = load ptr, ptr %43, align 8, !tbaa !487
  tail call fastcc void @df_ref_chain_delete(ptr noundef %46) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %47 = load ptr, ptr @df, align 8, !tbaa !426
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !426
  %50 = getelementptr inbounds %struct.dataflow, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !434
  tail call void @pool_free(ptr noundef %51, ptr noundef nonnull %41) #21
  br label %52

52:                                               ; preds = %40, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_scan_free() #0 !prof !517 !PGOFuncName !528 {
  %1 = load ptr, ptr @df, align 8, !tbaa !426
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !426
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !430
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !529

7:                                                ; preds = %0
  tail call fastcc void @df_scan_free_internal() #22
  %8 = load ptr, ptr @df, align 8, !tbaa !426
  br label %9

9:                                                ; preds = %7, %0
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !530
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !531

14:                                               ; preds = %9
  tail call void @bitmap_obstack_free(ptr noundef nonnull %12) #21
  %15 = load ptr, ptr @df, align 8, !tbaa !426
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 2
  store ptr null, ptr %16, align 8, !tbaa !530
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi ptr [ %15, %14 ], [ %10, %9 ]
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !426
  tail call void @free(ptr noundef %20) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_scan_start_dump(ptr noundef %0) #0 !prof !532 !PGOFuncName !533 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 25, i64 1, ptr %0)
  %3 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !426
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %3) #21
  %4 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 24, i64 1, ptr %0)
  %5 = load ptr, ptr @df, align 8, !tbaa !426
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !456
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %7) #21
  %8 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 35, i64 1, ptr %0)
  %9 = load ptr, ptr @df, align 8, !tbaa !426
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !459
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %11) #21
  %12 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 30, i64 1, ptr %0)
  %13 = load ptr, ptr @df, align 8, !tbaa !426
  %14 = getelementptr inbounds %struct.df, ptr %13, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !460
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %15) #21
  %16 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 22, i64 1, ptr %0)
  %17 = load ptr, ptr @df, align 8, !tbaa !426
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !461
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %19) #21
  %20 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 21, i64 1, ptr %0)
  %21 = load ptr, ptr @df, align 8, !tbaa !426
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !462
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %23) #21
  %24 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 20, i64 1, ptr %0)
  br label %25

25:                                               ; preds = %1, %34
  %26 = phi i64 [ 0, %1 ], [ %35, %34 ]
  %27 = trunc i64 %26 to i32
  %28 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %27) #22
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %26
  %32 = load ptr, ptr %31, align 8, !tbaa !426
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %27, ptr noundef %32) #22
  br label %34

34:                                               ; preds = %25, %30
  %35 = add nuw nsw i64 %26, 1
  %36 = icmp eq i64 %35, 53
  br i1 %36, label %37, label %25, !llvm.loop !534

37:                                               ; preds = %34
  %38 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 16, i64 1, ptr %0)
  %39 = load ptr, ptr @df, align 8, !tbaa !426
  %40 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 9
  %41 = load i32, ptr %40, align 4, !tbaa !505
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %149

43:                                               ; preds = %37, %139
  %44 = phi ptr [ %140, %139 ], [ %39, %37 ]
  %45 = phi i64 [ %144, %139 ], [ 0, %37 ]
  %46 = phi i32 [ %143, %139 ], [ 0, %37 ]
  %47 = phi i32 [ %142, %139 ], [ 0, %37 ]
  %48 = phi i32 [ %141, %139 ], [ 0, %37 ]
  %49 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !497
  %51 = getelementptr inbounds ptr, ptr %50, i64 %45
  %52 = load ptr, ptr %51, align 8, !tbaa !426
  %53 = getelementptr inbounds %struct.df_reg_info, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !535
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !498
  %59 = getelementptr inbounds ptr, ptr %58, i64 %45
  %60 = load ptr, ptr %59, align 8, !tbaa !426
  %61 = getelementptr inbounds %struct.df_reg_info, ptr %60, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !535
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !499
  %67 = getelementptr inbounds ptr, ptr %66, i64 %45
  %68 = load ptr, ptr %67, align 8, !tbaa !426
  %69 = getelementptr inbounds %struct.df_reg_info, ptr %68, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !535
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %139, label %72

72:                                               ; preds = %64, %56, %43
  %73 = trunc i64 %45 to i32
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %73) #22
  %75 = load ptr, ptr @df, align 8, !tbaa !426
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !497
  %78 = getelementptr inbounds ptr, ptr %77, i64 %45
  %79 = load ptr, ptr %78, align 8, !tbaa !426
  %80 = getelementptr inbounds %struct.df_reg_info, ptr %79, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !535
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %72
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %81) #22
  %85 = load ptr, ptr @df, align 8, !tbaa !426
  %86 = getelementptr inbounds %struct.df, ptr %85, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !497
  %88 = getelementptr inbounds ptr, ptr %87, i64 %45
  %89 = load ptr, ptr %88, align 8, !tbaa !426
  %90 = getelementptr inbounds %struct.df_reg_info, ptr %89, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !535
  %92 = add i32 %91, %48
  br label %93

93:                                               ; preds = %83, %72
  %94 = phi ptr [ %85, %83 ], [ %75, %72 ]
  %95 = phi i32 [ %92, %83 ], [ %48, %72 ]
  %96 = phi ptr [ @.str.22, %83 ], [ @.str.19, %72 ]
  %97 = getelementptr inbounds %struct.df, ptr %94, i64 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !498
  %99 = getelementptr inbounds ptr, ptr %98, i64 %45
  %100 = load ptr, ptr %99, align 8, !tbaa !426
  %101 = getelementptr inbounds %struct.df_reg_info, ptr %100, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !535
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %93
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %96, i32 noundef %102) #22
  %106 = load ptr, ptr @df, align 8, !tbaa !426
  %107 = getelementptr inbounds %struct.df, ptr %106, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !498
  %109 = getelementptr inbounds ptr, ptr %108, i64 %45
  %110 = load ptr, ptr %109, align 8, !tbaa !426
  %111 = getelementptr inbounds %struct.df_reg_info, ptr %110, i64 0, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !535
  %113 = add i32 %112, %47
  br label %114

114:                                              ; preds = %104, %93
  %115 = phi ptr [ %106, %104 ], [ %94, %93 ]
  %116 = phi i32 [ %113, %104 ], [ %47, %93 ]
  %117 = phi ptr [ @.str.22, %104 ], [ %96, %93 ]
  %118 = getelementptr inbounds %struct.df, ptr %115, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !499
  %120 = getelementptr inbounds ptr, ptr %119, i64 %45
  %121 = load ptr, ptr %120, align 8, !tbaa !426
  %122 = getelementptr inbounds %struct.df_reg_info, ptr %121, i64 0, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !535
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %114
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %117, i32 noundef %123) #22
  %127 = load ptr, ptr @df, align 8, !tbaa !426
  %128 = getelementptr inbounds %struct.df, ptr %127, i64 0, i32 7
  %129 = load ptr, ptr %128, align 8, !tbaa !499
  %130 = getelementptr inbounds ptr, ptr %129, i64 %45
  %131 = load ptr, ptr %130, align 8, !tbaa !426
  %132 = getelementptr inbounds %struct.df_reg_info, ptr %131, i64 0, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !535
  %134 = add i32 %133, %46
  br label %135

135:                                              ; preds = %125, %114
  %136 = phi i32 [ %134, %125 ], [ %46, %114 ]
  %137 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 2, i64 1, ptr %0)
  %138 = load ptr, ptr @df, align 8, !tbaa !426
  br label %139

139:                                              ; preds = %64, %135
  %140 = phi ptr [ %138, %135 ], [ %44, %64 ]
  %141 = phi i32 [ %95, %135 ], [ %48, %64 ]
  %142 = phi i32 [ %116, %135 ], [ %47, %64 ]
  %143 = phi i32 [ %136, %135 ], [ %46, %64 ]
  %144 = add nuw nsw i64 %45, 1
  %145 = getelementptr inbounds %struct.df, ptr %140, i64 0, i32 9
  %146 = load i32, ptr %145, align 4, !tbaa !505
  %147 = sext i32 %146 to i64
  %148 = icmp slt i64 %144, %147
  br i1 %148, label %43, label %149, !llvm.loop !537

149:                                              ; preds = %139, %37
  %150 = phi i32 [ 0, %37 ], [ %141, %139 ]
  %151 = phi i32 [ 0, %37 ], [ %142, %139 ]
  %152 = phi i32 [ 0, %37 ], [ %143, %139 ]
  %153 = load ptr, ptr @cfun, align 8, !tbaa !426
  %154 = getelementptr inbounds %struct.function, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !447
  %156 = load ptr, ptr %155, align 8, !tbaa !538
  %157 = getelementptr inbounds %struct.control_flow_graph, ptr %155, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !540
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %156, i64 0, i32 6
  %160 = load ptr, ptr %159, align 8, !tbaa !541
  %161 = icmp eq ptr %160, %158
  br i1 %161, label %203, label %162

162:                                              ; preds = %149, %197
  %163 = phi ptr [ %201, %197 ], [ %160, %149 ]
  %164 = phi i32 [ %199, %197 ], [ 0, %149 ]
  %165 = phi i32 [ %198, %197 ], [ 0, %149 ]
  %166 = getelementptr inbounds %struct.basic_block_def, ptr %163, i64 0, i32 7
  %167 = load ptr, ptr %166, align 8, !tbaa !521
  %168 = load ptr, ptr %167, align 8, !tbaa !521
  %169 = icmp eq ptr %168, null
  br i1 %169, label %197, label %170

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.rtl_bb_info, ptr %167, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !523
  %173 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1, i32 0, i32 0, i64 2
  %174 = load ptr, ptr %173, align 8, !tbaa !521
  br label %175

175:                                              ; preds = %170, %191
  %176 = phi ptr [ %168, %170 ], [ %195, %191 ]
  %177 = phi i32 [ %164, %170 ], [ %193, %191 ]
  %178 = phi i32 [ %165, %170 ], [ %192, %191 ]
  %179 = icmp eq ptr %176, %174
  br i1 %179, label %197, label %180

180:                                              ; preds = %175
  %181 = load i32, ptr %176, align 8
  %182 = and i32 %181, 65535
  %183 = add nsw i32 %182, -7
  %184 = icmp ult i32 %183, 4
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = icmp eq i32 %182, 10
  br i1 %186, label %187, label %189

187:                                              ; preds = %185
  %188 = add nsw i32 %177, 1
  br label %191

189:                                              ; preds = %185
  %190 = add nsw i32 %178, 1
  br label %191

191:                                              ; preds = %180, %189, %187
  %192 = phi i32 [ %178, %187 ], [ %190, %189 ], [ %178, %180 ]
  %193 = phi i32 [ %188, %187 ], [ %177, %189 ], [ %177, %180 ]
  %194 = getelementptr inbounds %struct.rtx_def, ptr %176, i64 0, i32 1, i32 0, i32 0, i64 2
  %195 = load ptr, ptr %194, align 8, !tbaa !521
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %175, !llvm.loop !542

197:                                              ; preds = %191, %175, %162
  %198 = phi i32 [ %165, %162 ], [ %178, %175 ], [ %192, %191 ]
  %199 = phi i32 [ %164, %162 ], [ %177, %175 ], [ %193, %191 ]
  %200 = getelementptr inbounds %struct.basic_block_def, ptr %163, i64 0, i32 6
  %201 = load ptr, ptr %200, align 8, !tbaa !541
  %202 = icmp eq ptr %201, %158
  br i1 %202, label %203, label %162, !llvm.loop !543

203:                                              ; preds = %197, %149
  %204 = phi i32 [ 0, %149 ], [ %198, %197 ]
  %205 = phi i32 [ 0, %149 ], [ %199, %197 ]
  %206 = add nsw i32 %151, %150
  %207 = add nsw i32 %206, %152
  %208 = add nsw i32 %205, %204
  %209 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %207, i32 noundef %150, i32 noundef %151, i32 noundef %152, i32 noundef %208, i32 noundef %204, i32 noundef %205) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_scan_start_block(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !532 !PGOFuncName !544 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !450
  %5 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %4) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %4) #22
  %9 = load ptr, ptr %5, align 8, !tbaa !484
  tail call void @df_refs_chain_dump(ptr noundef %9, i8 noundef zeroext 1, ptr noundef %1) #21
  %10 = load i32, ptr %3, align 8, !tbaa !450
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %10) #22
  %12 = getelementptr inbounds %struct.df_scan_bb_info, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !487
  tail call void @df_refs_chain_dump(ptr noundef %13, i8 noundef zeroext 1, ptr noundef %1) #21
  %14 = tail call i32 @fputc(i32 10, ptr %1)
  br label %15

15:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_insn_delete(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !545 {
  %3 = load ptr, ptr @df, align 8, !tbaa !426
  %4 = icmp eq ptr %3, null
  br i1 %4, label %106, label %5, !prof !546

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !426
  tail call void @df_grow_bb_info(ptr noundef %7) #21
  tail call void @df_grow_reg_info() #22
  %8 = icmp eq ptr %0, null
  br i1 %8, label %10, label %9, !prof !547

9:                                                ; preds = %5
  tail call void @df_set_bb_dirty(ptr noundef nonnull %0) #21
  br label %10

10:                                               ; preds = %9, %5
  %11 = load ptr, ptr @df, align 8, !tbaa !426
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !468
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %15, label %25, !prof !548

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !469
  %18 = zext i32 %1 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !426
  %21 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 27
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 32
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %49, label %30, !prof !549

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 27
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 32
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %49, label %44, !prof !549

30:                                               ; preds = %15
  %31 = icmp eq ptr %20, null
  br i1 %31, label %44, label %32, !prof !550

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !464
  %35 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %34, i32 noundef %1) #21
  %36 = load ptr, ptr @df, align 8, !tbaa !426
  %37 = getelementptr inbounds %struct.df, ptr %36, i64 0, i32 20
  %38 = load ptr, ptr %37, align 8, !tbaa !465
  %39 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %38, i32 noundef %1) #21
  %40 = load ptr, ptr @df, align 8, !tbaa !426
  %41 = getelementptr inbounds %struct.df, ptr %40, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !463
  %43 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %42, i32 noundef %1) #21
  br label %44

44:                                               ; preds = %25, %32, %30
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %46 = icmp eq ptr %45, null
  br i1 %46, label %106, label %47, !prof !551

47:                                               ; preds = %44
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %45, ptr noundef nonnull @.str.31, i32 noundef %1) #22
  br label %106

49:                                               ; preds = %25, %15
  %50 = phi ptr [ null, %25 ], [ %20, %15 ]
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53, !prof !552

53:                                               ; preds = %49
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %51, ptr noundef nonnull @.str.32, i32 noundef %1) #22
  %55 = load ptr, ptr @df, align 8, !tbaa !426
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi ptr [ %55, %53 ], [ %11, %49 ]
  %58 = getelementptr inbounds %struct.df, ptr %57, i64 0, i32 18
  %59 = load ptr, ptr %58, align 8, !tbaa !463
  %60 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %59, i32 noundef %1) #21
  %61 = load ptr, ptr @df, align 8, !tbaa !426
  %62 = getelementptr inbounds %struct.df, ptr %61, i64 0, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !464
  %64 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %63, i32 noundef %1) #21
  %65 = load ptr, ptr @df, align 8, !tbaa !426
  %66 = getelementptr inbounds %struct.df, ptr %65, i64 0, i32 20
  %67 = load ptr, ptr %66, align 8, !tbaa !465
  %68 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %67, i32 noundef %1) #21
  %69 = icmp eq ptr %50, null
  br i1 %69, label %106, label %70, !prof !553

70:                                               ; preds = %56
  %71 = load ptr, ptr @df, align 8, !tbaa !426
  %72 = getelementptr inbounds %struct.df, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !426
  %74 = getelementptr inbounds %struct.dataflow, ptr %73, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !430
  %76 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !471
  %78 = icmp eq ptr %77, null
  br i1 %78, label %98, label %79, !prof !554

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !479
  tail call fastcc void @df_mw_hardreg_chain_delete(ptr noundef %81) #22
  %82 = load ptr, ptr @df, align 8, !tbaa !426
  %83 = getelementptr inbounds %struct.df, ptr %82, i64 0, i32 1, i64 4
  %84 = load ptr, ptr %83, align 8, !tbaa !426
  %85 = icmp eq ptr %84, null
  br i1 %85, label %92, label %86, !prof !555

86:                                               ; preds = %79
  %87 = load ptr, ptr %76, align 8, !tbaa !471
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %87) #22
  %88 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !475
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %89) #22
  %90 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !477
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %91) #22
  br label %92

92:                                               ; preds = %86, %79
  %93 = load ptr, ptr %76, align 8, !tbaa !471
  tail call fastcc void @df_ref_chain_delete(ptr noundef %93) #22
  %94 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !475
  tail call fastcc void @df_ref_chain_delete(ptr noundef %95) #22
  %96 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !477
  tail call fastcc void @df_ref_chain_delete(ptr noundef %97) #22
  br label %98

98:                                               ; preds = %92, %70
  %99 = getelementptr inbounds %struct.df_scan_problem_data, ptr %75, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !444
  tail call void @pool_free(ptr noundef %100, ptr noundef nonnull %50) #21
  %101 = load ptr, ptr @df, align 8, !tbaa !426
  %102 = getelementptr inbounds %struct.df, ptr %101, i64 0, i32 10
  %103 = load ptr, ptr %102, align 8, !tbaa !469
  %104 = zext i32 %1 to i64
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  store ptr null, ptr %105, align 8, !tbaa !426
  br label %106

106:                                              ; preds = %56, %98, %44, %47, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_ref_chain_delete_du_chain(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !556 !PGOFuncName !557 {
  %2 = load ptr, ptr %0, align 8, !tbaa !426
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4, !prof !558

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %13, %11 ], [ %2, %1 ]
  %6 = phi ptr [ %12, %11 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.df_base_ref, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !521
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !559

10:                                               ; preds = %4
  tail call void @df_chain_unlink(ptr noundef nonnull %5) #21
  br label %11

11:                                               ; preds = %10, %4
  %12 = getelementptr inbounds ptr, ptr %6, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !426
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %4, !prof !560, !llvm.loop !561

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_ref_chain_delete(ptr nocapture noundef %0) unnamed_addr #0 !prof !562 !PGOFuncName !563 {
  %2 = load ptr, ptr %0, align 8, !tbaa !426
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4, !prof !564

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %8, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %7, %4 ], [ %0, %1 ]
  tail call fastcc void @df_reg_chain_unlink(ptr noundef nonnull %5) #22
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !426
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4, !prof !565, !llvm.loop !566

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !426
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !567

13:                                               ; preds = %10
  tail call void @free(ptr noundef nonnull %0) #22
  br label %14

14:                                               ; preds = %1, %13, %10
  ret void
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_chain_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_reg_chain_unlink(ptr noundef %0) unnamed_addr #0 !prof !568 !PGOFuncName !569 {
  %2 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !521
  %4 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !521
  %6 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !521
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65280
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr @df, align 8, !tbaa !426
  br i1 %10, label %12, label %21, !prof !570

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !521
  %15 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !497
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !426
  %20 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 3
  br label %42

21:                                               ; preds = %1
  %22 = and i32 %8, 262144
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !521
  %26 = zext i32 %25 to i64
  br i1 %23, label %36, label %27, !prof !571

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !499
  %30 = getelementptr inbounds ptr, ptr %29, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !426
  %32 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 4, i32 6
  %33 = load i32, ptr %32, align 4, !tbaa !572
  switch i32 %33, label %73 [
    i32 2, label %34
    i32 4, label %34
    i32 6, label %34
  ], !prof !573

34:                                               ; preds = %27, %27, %27
  %35 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 4
  br label %42

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !498
  %39 = getelementptr inbounds ptr, ptr %38, i64 %26
  %40 = load ptr, ptr %39, align 8, !tbaa !426
  %41 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 4
  br label %42

42:                                               ; preds = %36, %34, %12
  %43 = phi ptr [ %20, %12 ], [ %35, %34 ], [ %41, %36 ]
  %44 = phi ptr [ %19, %12 ], [ %31, %34 ], [ %40, %36 ]
  %45 = load ptr, ptr %43, align 8, !tbaa !426
  %46 = icmp eq ptr %45, null
  br i1 %46, label %73, label %47, !prof !574

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 28
  %49 = load i8, ptr %48, align 1, !tbaa !575
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %70, label %51, !prof !576

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !530
  %54 = and i32 %8, 255
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %58, !prof !577

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  br label %63

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !521
  %61 = load ptr, ptr %60, align 8, !tbaa !578
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 1
  br label %63

63:                                               ; preds = %58, %56
  %64 = phi ptr [ %57, %56 ], [ %62, %58 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !521
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 9
  %67 = load i32, ptr %66, align 8, !tbaa !450
  %68 = tail call i32 @bitmap_bit_p(ptr noundef %53, i32 noundef %67) #21
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70, !prof !579

70:                                               ; preds = %47, %63
  %71 = sext i32 %7 to i64
  %72 = getelementptr inbounds ptr, ptr %45, i64 %71
  store ptr null, ptr %72, align 8, !tbaa !426
  br label %73

73:                                               ; preds = %70, %27, %63, %42
  %74 = phi ptr [ %44, %63 ], [ %44, %42 ], [ %31, %27 ], [ %44, %70 ]
  %75 = load ptr, ptr @df, align 8, !tbaa !426
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 4
  %77 = load ptr, ptr %76, align 8, !tbaa !426
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79, !prof !580

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !521
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83, !prof !581

83:                                               ; preds = %79
  tail call void @df_chain_unlink(ptr noundef nonnull %0) #21
  br label %84

84:                                               ; preds = %83, %79, %73
  %85 = getelementptr inbounds %struct.df_reg_info, ptr %74, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !535
  %87 = add i32 %86, -1
  store i32 %87, ptr %85, align 8, !tbaa !535
  %88 = load i32, ptr %0, align 8
  %89 = and i32 %88, 524288
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %106, label %91, !prof !582

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %93 = load i32, ptr %92, align 8, !tbaa !521
  %94 = icmp ult i32 %93, 53
  br i1 %94, label %97, label %95, !prof !583

95:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 937, ptr noundef nonnull @.str.9) #21
  %96 = load i32, ptr %92, align 8, !tbaa !521
  br label %97

97:                                               ; preds = %91, %95
  %98 = phi i32 [ %93, %91 ], [ %96, %95 ]
  %99 = load ptr, ptr @df, align 8, !tbaa !426
  %100 = getelementptr inbounds %struct.df, ptr %99, i64 0, i32 25
  %101 = load ptr, ptr %100, align 8, !tbaa !584
  %102 = zext i32 %98 to i64
  %103 = getelementptr inbounds i32, ptr %101, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !507
  %105 = add i32 %104, -1
  store i32 %105, ptr %103, align 4, !tbaa !507
  br label %106

106:                                              ; preds = %97, %84
  %107 = icmp eq ptr %5, null
  br i1 %107, label %110, label %108, !prof !585

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.df_base_ref, ptr %5, i64 0, i32 4
  br label %114

110:                                              ; preds = %106
  %111 = load ptr, ptr %74, align 8, !tbaa !586
  %112 = icmp eq ptr %111, %0
  br i1 %112, label %114, label %113, !prof !587

113:                                              ; preds = %110
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 947, ptr noundef nonnull @.str.9) #21
  br label %114

114:                                              ; preds = %113, %110, %108
  %115 = phi ptr [ %109, %108 ], [ %74, %110 ], [ %74, %113 ]
  store ptr %3, ptr %115, align 8, !tbaa !521
  %116 = icmp eq ptr %3, null
  br i1 %116, label %119, label %117, !prof !588

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.df_base_ref, ptr %3, i64 0, i32 5
  store ptr %5, ptr %118, align 8, !tbaa !521
  br label %119

119:                                              ; preds = %117, %114
  tail call fastcc void @df_free_ref(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_free_ref(ptr noundef %0) unnamed_addr #0 !prof !589 !PGOFuncName !590 {
  %2 = load ptr, ptr @df, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !426
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !430
  %7 = load i32, ptr %0, align 8
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %18 [
    i8 0, label %15
    i8 1, label %9
    i8 2, label %11
    i8 3, label %13
  ], !prof !591

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.df_scan_problem_data, ptr %6, i64 0, i32 1
  br label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.df_scan_problem_data, ptr %6, i64 0, i32 2
  br label %15

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.df_scan_problem_data, ptr %6, i64 0, i32 3
  br label %15

15:                                               ; preds = %1, %9, %11, %13
  %16 = phi ptr [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %6, %1 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !426
  tail call void @pool_free(ptr noundef %17, ptr noundef nonnull %0) #21
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare void @df_print_regset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @df_regs_ever_live_p(i32 noundef %0) local_unnamed_addr #7 !prof !592 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [53 x i8], ptr @regs_ever_live, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !521
  ret i8 %4
}

; Function Attrs: optsize
declare void @df_refs_chain_dump(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_scan_blocks() local_unnamed_addr #0 !prof !425 {
  %1 = load ptr, ptr @df, align 8, !tbaa !426
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 3, i32 6
  store i32 0, ptr %2, align 4, !tbaa !593
  %3 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 4, i32 6
  store i32 0, ptr %3, align 4, !tbaa !572
  %4 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !459
  tail call fastcc void @df_get_regular_block_artificial_uses(ptr noundef %5) #22
  %6 = load ptr, ptr @df, align 8, !tbaa !426
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !460
  tail call fastcc void @df_get_eh_block_artificial_uses(ptr noundef %8) #22
  %9 = load ptr, ptr @df, align 8, !tbaa !426
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !460
  %12 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !459
  %14 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %11, ptr noundef %13) #21
  %15 = load ptr, ptr @df, align 8, !tbaa !426
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 16
  %17 = load ptr, ptr %16, align 8, !tbaa !461
  tail call fastcc void @df_get_entry_block_def_set(ptr noundef %17) #22
  %18 = load ptr, ptr @df, align 8, !tbaa !426
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !461
  tail call fastcc void @df_record_entry_block_defs(ptr noundef %20) #22
  %21 = load ptr, ptr @df, align 8, !tbaa !426
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !462
  tail call fastcc void @df_get_exit_block_use_set(ptr noundef %23) #22
  %24 = load ptr, ptr @df, align 8, !tbaa !426
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !462
  tail call fastcc void @df_record_exit_block_uses(ptr noundef %26) #22
  %27 = load ptr, ptr @cfun, align 8, !tbaa !426
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !447
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !594
  %32 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %31, i32 noundef 0) #22
  tail call void @df_set_bb_dirty(ptr noundef %32) #21
  %33 = load ptr, ptr @cfun, align 8, !tbaa !426
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !447
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !594
  %38 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %37, i32 noundef 1) #22
  tail call void @df_set_bb_dirty(ptr noundef %38) #21
  %39 = load ptr, ptr @cfun, align 8, !tbaa !426
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !447
  %42 = load ptr, ptr %41, align 8, !tbaa !538
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !541
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !540
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %60, label %48, !prof !449

48:                                               ; preds = %0, %48
  %49 = phi ptr [ %53, %48 ], [ %44, %0 ]
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !450
  tail call void @df_bb_refs_record(i32 noundef %51, i8 noundef zeroext 1) #22
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !541
  %54 = load ptr, ptr @cfun, align 8, !tbaa !426
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !447
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !540
  %59 = icmp eq ptr %53, %58
  br i1 %59, label %60, label %48, !prof !595, !llvm.loop !596

60:                                               ; preds = %48, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_get_regular_block_artificial_uses(ptr noundef %0) unnamed_addr #0 !prof !425 !PGOFuncName !597 {
  tail call void @bitmap_clear(ptr noundef %0) #21
  %2 = load i32, ptr @reload_completed, align 4, !tbaa !507
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4, !prof !433

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !598
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %37, label %34, !prof !529

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 20) #21
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 6) #21
  %10 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !521
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12, !prof !529

12:                                               ; preds = %7
  %13 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 16) #21
  br label %14

14:                                               ; preds = %12, %7
  %15 = load i32, ptr @flag_pic, align 4, !tbaa !507
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %37, label %17, !prof !531

17:                                               ; preds = %14
  %18 = load i32, ptr @reload_completed, align 4, !tbaa !507
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !531

20:                                               ; preds = %17
  %21 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !426
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef %21) #22
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %37, label %27

24:                                               ; preds = %17
  %25 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 3), align 1, !tbaa !521
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %34

27:                                               ; preds = %20
  %28 = zext i32 %22 to i64
  %29 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !521
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc i32 @rhs_regno(ptr noundef %21) #22
  br label %34

34:                                               ; preds = %32, %24, %4
  %35 = phi i32 [ 6, %4 ], [ %33, %32 ], [ 3, %24 ]
  %36 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %35) #21
  br label %37

37:                                               ; preds = %34, %27, %14, %20, %24, %4
  %38 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 7) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_get_eh_block_artificial_uses(ptr noundef %0) unnamed_addr #0 !prof !425 !PGOFuncName !607 {
  tail call void @bitmap_clear(ptr noundef %0) #21
  %2 = load i32, ptr @reload_completed, align 4, !tbaa !507
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4, !prof !433

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !598
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7, !prof !529

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 20) #21
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 6) #21
  br label %10

10:                                               ; preds = %7, %4
  %11 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !521
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13, !prof !529

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 16) #21
  br label %15

15:                                               ; preds = %10, %13, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_get_entry_block_def_set(ptr noundef %0) unnamed_addr #0 !prof !608 !PGOFuncName !609 {
  tail call void @bitmap_clear(ptr noundef %0) #21
  br label %2

2:                                                ; preds = %1, %8
  %3 = phi i32 [ 0, %1 ], [ %9, %8 ]
  %4 = tail call zeroext i8 @ix86_function_arg_regno_p(i32 noundef %3) #21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6, !prof !610

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %3) #21
  br label %8

8:                                                ; preds = %2, %6
  %9 = add nuw nsw i32 %3, 1
  %10 = icmp eq i32 %9, 53
  br i1 %10, label %11, label %2, !prof !611, !llvm.loop !612

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 7) #21
  %13 = load i32, ptr @epilogue_completed, align 4, !tbaa !507
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15, !prof !613

15:                                               ; preds = %11, %26
  %16 = phi i64 [ %27, %26 ], [ 0, %11 ]
  %17 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !521
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %26, !prof !614

20:                                               ; preds = %15
  %21 = trunc i64 %16 to i32
  %22 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %21) #22
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24, !prof !615

24:                                               ; preds = %20
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %21) #21
  br label %26

26:                                               ; preds = %15, %20, %24
  %27 = add nuw nsw i64 %16, 1
  %28 = icmp eq i64 %27, 53
  br i1 %28, label %29, label %15, !prof !616, !llvm.loop !617

29:                                               ; preds = %26, %11
  %30 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !618
  %31 = load ptr, ptr @current_function_decl, align 8, !tbaa !426
  %32 = tail call ptr %30(ptr noundef %31, i32 noundef 1) #21
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34, !prof !630

34:                                               ; preds = %29
  %35 = load i32, ptr %32, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 37
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %32) #22
  %40 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %39) #21
  br label %41

41:                                               ; preds = %38, %34, %29
  %42 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !631
  %43 = load ptr, ptr @current_function_decl, align 8, !tbaa !426
  %44 = tail call ptr %42(ptr noundef %43, i8 noundef zeroext 1) #21
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46, !prof !630

46:                                               ; preds = %41
  %47 = load i32, ptr %44, align 8
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %44) #22
  %52 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %51) #21
  br label %53

53:                                               ; preds = %50, %46, %41
  %54 = load i32, ptr @reload_completed, align 4, !tbaa !507
  %55 = icmp eq i32 %54, 0
  %56 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %57 = icmp ne i8 %56, 0
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %92, !prof !632

59:                                               ; preds = %53
  %60 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 20) #21
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 6) #21
  %62 = load i32, ptr @reload_completed, align 4, !tbaa !507
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %92, !prof !633

64:                                               ; preds = %59
  %65 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !521
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67, !prof !634

67:                                               ; preds = %64
  %68 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 16) #21
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i32, ptr @flag_pic, align 4, !tbaa !507
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %92, label %72, !prof !635

72:                                               ; preds = %69
  %73 = load i32, ptr @reload_completed, align 4, !tbaa !507
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75, !prof !635

75:                                               ; preds = %72
  %76 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !426
  %77 = tail call fastcc i32 @rhs_regno(ptr noundef %76) #22
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %92, label %82

79:                                               ; preds = %72
  %80 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 3), align 1, !tbaa !521
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %92, label %89

82:                                               ; preds = %75
  %83 = zext i32 %77 to i64
  %84 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !521
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = tail call fastcc i32 @rhs_regno(ptr noundef %76) #22
  br label %89

89:                                               ; preds = %79, %87
  %90 = phi i32 [ %88, %87 ], [ 3, %79 ]
  %91 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %90) #21
  br label %92

92:                                               ; preds = %53, %82, %69, %75, %79, %89, %59
  %93 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef 7) #21
  %94 = tail call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %93) #21
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 37
  br i1 %97, label %98, label %103, !prof !636

98:                                               ; preds = %92
  %99 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef 7) #21
  %100 = tail call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %99) #21
  %101 = tail call fastcc i32 @rhs_regno(ptr noundef %100) #22
  %102 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %101) #21
  br label %103

103:                                              ; preds = %98, %92
  %104 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 108), align 8, !tbaa !637
  tail call void %104(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_record_entry_block_defs(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !638 !PGOFuncName !639 {
  %2 = alloca %struct.df_collection_rec, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %4 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 53) #22, !range !640
  %5 = alloca i8, i64 %4, align 16
  %6 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 53, ptr noundef nonnull %5) #22
  store ptr %6, ptr %2, align 8, !tbaa !641
  call fastcc void @df_entry_block_defs_collect(ptr noundef nonnull %2, ptr noundef %0) #22
  %7 = load ptr, ptr @cfun, align 8, !tbaa !426
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !447
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !594
  %12 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %11, i32 noundef 0) #22
  call fastcc void @df_refs_add_to_chains(ptr noundef nonnull %2, ptr noundef %12, ptr noundef null) #22
  call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_get_exit_block_use_set(ptr noundef %0) unnamed_addr #0 !prof !643 !PGOFuncName !644 {
  tail call void @bitmap_clear(ptr noundef %0) #21
  %2 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 7) #21
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !507
  %4 = icmp eq i32 %3, 0
  %5 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %6 = icmp ne i8 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %8, label %11, !prof !645

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 20) #21
  %10 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 6) #21
  br label %11

11:                                               ; preds = %1, %8
  %12 = load i32, ptr @flag_pic, align 4, !tbaa !507
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %35, label %14, !prof !646

14:                                               ; preds = %11
  %15 = load i32, ptr @reload_completed, align 4, !tbaa !507
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !646

17:                                               ; preds = %14
  %18 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !426
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef %18) #22
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %35, label %24

21:                                               ; preds = %14
  %22 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 3), align 1, !tbaa !521
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %32

24:                                               ; preds = %17
  %25 = zext i32 %19 to i64
  %26 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !521
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !426
  %31 = tail call fastcc i32 @rhs_regno(ptr noundef %30) #22
  br label %32

32:                                               ; preds = %21, %29
  %33 = phi i32 [ %31, %29 ], [ 3, %21 ]
  %34 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %33) #21
  br label %35

35:                                               ; preds = %24, %11, %32, %21, %17
  br label %36

36:                                               ; preds = %35, %44
  %37 = phi i64 [ %45, %44 ], [ 0, %35 ]
  %38 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !521
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41, !prof !647

41:                                               ; preds = %36
  %42 = trunc i64 %37 to i32
  %43 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %42) #21
  br label %44

44:                                               ; preds = %36, %41
  %45 = add nuw nsw i64 %37, 1
  %46 = icmp eq i64 %45, 53
  br i1 %46, label %47, label %36, !prof !648, !llvm.loop !649

47:                                               ; preds = %44
  %48 = load i32, ptr @epilogue_completed, align 4, !tbaa !507
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %65, label %50, !prof !650

50:                                               ; preds = %47, %62
  %51 = phi i64 [ %63, %62 ], [ 0, %47 ]
  %52 = trunc i64 %51 to i32
  %53 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %52) #22
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %62, label %55, !prof !651

55:                                               ; preds = %50
  %56 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !652
  %57 = shl nuw nsw i64 1, %51
  %58 = and i64 %56, %57
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62, !prof !653

60:                                               ; preds = %55
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %52) #21
  br label %62

62:                                               ; preds = %50, %55, %60
  %63 = add nuw nsw i64 %51, 1
  %64 = icmp eq i64 %63, 53
  br i1 %64, label %65, label %50, !prof !616, !llvm.loop !654

65:                                               ; preds = %62, %47
  %66 = load i32, ptr @reload_completed, align 4, !tbaa !507
  %67 = icmp ne i32 %66, 0
  %68 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 29), align 1
  %69 = icmp ne i8 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %75, !prof !655

71:                                               ; preds = %65
  %72 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 0) #21
  %73 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 1) #21
  %74 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 29), align 1
  br label %75

75:                                               ; preds = %71, %65
  %76 = phi i8 [ %74, %71 ], [ %68, %65 ]
  %77 = load i32, ptr @epilogue_completed, align 4, !tbaa !507
  %78 = icmp eq i32 %77, 0
  %79 = icmp ne i8 %76, 0
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %89, !prof !656

81:                                               ; preds = %75
  %82 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef 2) #21
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %82, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 37
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  tail call void @df_mark_reg(ptr noundef nonnull %82, ptr noundef %0) #22
  br label %89

89:                                               ; preds = %81, %84, %88, %75
  tail call void @diddle_return_value(ptr noundef nonnull @df_mark_reg, ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_record_exit_block_uses(ptr noundef %0) unnamed_addr #0 !prof !657 !PGOFuncName !658 {
  %2 = alloca %struct.df_collection_rec, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %3 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 53) #22, !range !640
  %4 = alloca i8, i64 %3, align 16
  %5 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 53, ptr noundef nonnull %4) #22
  %6 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !659
  call fastcc void @df_exit_block_uses_collect(ptr noundef nonnull %2, ptr noundef %0) #22
  %7 = load ptr, ptr @cfun, align 8, !tbaa !426
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !447
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !594
  %12 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %11, i32 noundef 1) #22
  call fastcc void @df_refs_add_to_chains(ptr noundef nonnull %2, ptr noundef %12, ptr noundef null) #22
  call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare void @df_set_bb_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !660 !PGOFuncName !661 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !426
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_bb_refs_record(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !662 {
  %3 = alloca %struct.df_collection_rec, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !426
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !447
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !594
  %9 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %8, i32 noundef %0) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %10 = load ptr, ptr @df, align 8, !tbaa !426
  %11 = icmp eq ptr %10, null
  br i1 %11, label %84, label %12, !prof !663

12:                                               ; preds = %2
  %13 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21, !prof !664

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !426
  %18 = getelementptr inbounds %struct.dataflow, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !434
  %20 = tail call ptr @pool_alloc(ptr noundef %19) #21
  tail call fastcc void @df_scan_set_bb_info(i32 noundef %0, ptr noundef %20) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  br label %21

21:                                               ; preds = %15, %12
  %22 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 128) #22, !range !640
  %23 = alloca i8, i64 %22, align 16
  %24 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 128, ptr noundef nonnull %23) #22
  store ptr %24, ptr %3, align 8, !tbaa !641
  %25 = call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 32) #22, !range !640
  %26 = alloca i8, i64 %25, align 16
  %27 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %26) #22
  %28 = getelementptr inbounds %struct.df_collection_rec, ptr %3, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !659
  %29 = alloca i8, i64 %25, align 16
  %30 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %29) #22
  %31 = getelementptr inbounds %struct.df_collection_rec, ptr %3, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !665
  %32 = alloca [264 x i8], align 16
  %33 = call fastcc ptr @VEC_df_mw_hardreg_ptr_stack_alloc1(ptr noundef nonnull %32) #22
  %34 = getelementptr inbounds %struct.df_collection_rec, ptr %3, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !666
  %35 = icmp eq i8 %1, 0
  br i1 %35, label %83, label %36, !prof !664

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !521
  %39 = load ptr, ptr %38, align 8, !tbaa !521
  %40 = icmp eq ptr %39, null
  br i1 %40, label %83, label %41, !prof !667

41:                                               ; preds = %36, %77
  %42 = phi ptr [ %81, %77 ], [ %39, %36 ]
  %43 = phi i32 [ %78, %77 ], [ 0, %36 ]
  %44 = load ptr, ptr %37, align 8, !tbaa !521
  %45 = getelementptr inbounds %struct.rtl_bb_info, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !523
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !521
  %49 = icmp eq ptr %42, %48
  br i1 %49, label %83, label %50, !prof !668

50:                                               ; preds = %41
  %51 = load ptr, ptr @df, align 8, !tbaa !426
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !469
  %54 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !521
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !426
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60, !prof !669

60:                                               ; preds = %50
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3744, ptr noundef nonnull @.str.9) #21
  br label %61

61:                                               ; preds = %50, %60
  %62 = call ptr @df_insn_create_insn_record(ptr noundef nonnull %42) #22
  %63 = load i32, ptr %42, align 8
  %64 = and i32 %63, 65535
  %65 = add nsw i32 %64, -7
  %66 = icmp ult i32 %65, 4
  br i1 %66, label %67, label %77, !prof !670

67:                                               ; preds = %61
  %68 = add nsw i32 %43, 1
  %69 = getelementptr inbounds %struct.df_insn_info, ptr %62, i64 0, i32 5
  store i32 %43, ptr %69, align 8, !tbaa !671
  %70 = load ptr, ptr @df, align 8, !tbaa !426
  %71 = getelementptr inbounds %struct.df, ptr %70, i64 0, i32 10
  %72 = load ptr, ptr %71, align 8, !tbaa !469
  %73 = load i32, ptr %54, align 8, !tbaa !521
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %72, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !426
  call fastcc void @df_insn_refs_collect(ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %76) #22
  call fastcc void @df_refs_add_to_chains(ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull %42) #22
  br label %77

77:                                               ; preds = %61, %67
  %78 = phi i32 [ %68, %67 ], [ %43, %61 ]
  %79 = getelementptr inbounds %struct.df_insn_info, ptr %62, i64 0, i32 5
  store i32 %78, ptr %79, align 8, !tbaa !671
  %80 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !521
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %41, !prof !672, !llvm.loop !673

83:                                               ; preds = %77, %41, %36, %21
  call fastcc void @df_bb_refs_collect(ptr noundef nonnull %3, ptr noundef %9) #22
  call fastcc void @df_refs_add_to_chains(ptr noundef nonnull %3, ptr noundef %9, ptr noundef null) #22
  call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %3) #22
  call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %28) #22
  call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %31) #22
  call fastcc void @VEC_df_mw_hardreg_ptr_stack_free(ptr noundef nonnull %34) #22
  call void @df_set_bb_dirty(ptr noundef %9) #21
  br label %84

84:                                               ; preds = %2, %83
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !674 !PGOFuncName !675 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !521
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @ix86_function_arg_regno_p(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !676 !PGOFuncName !677 {
  %3 = tail call ptr @vec_stack_p_reserve_exact_1(i32 noundef %0, ptr noundef %1) #21
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef %0) unnamed_addr #9 !prof !676 !PGOFuncName !678 {
  %2 = zext nneg i32 %0 to i64
  %3 = shl nuw nsw i64 %2, 3
  %4 = add nuw nsw i64 %3, 8
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_entry_block_defs_collect(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !638 !PGOFuncName !679 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #22
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !680
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7, !prof !681

7:                                                ; preds = %2, %7
  %8 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !426
  %9 = load i32, ptr %3, align 4, !tbaa !507
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !426
  %13 = load ptr, ptr @cfun, align 8, !tbaa !426
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !447
  %16 = load ptr, ptr %15, align 8, !tbaa !538
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef %0, ptr noundef %12, ptr noundef null, ptr noundef %16, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #22
  %17 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !680
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %7, !prof !682, !llvm.loop !683

19:                                               ; preds = %7, %2
  tail call fastcc void @df_canonize_collection_rec(ptr noundef %0) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_refs_add_to_chains(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 !prof !684 !PGOFuncName !685 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %89, label %5, !prof !686

5:                                                ; preds = %3
  %6 = load ptr, ptr @df, align 8, !tbaa !426
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !469
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !521
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !426
  %14 = load ptr, ptr %0, align 8, !tbaa !641
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16, !prof !687

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.df_insn_info, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !471
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20, !prof !688

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !426
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  tail call void @free(ptr noundef nonnull %18) #22
  %24 = load ptr, ptr %0, align 8, !tbaa !641
  %25 = load ptr, ptr @df, align 8, !tbaa !426
  br label %26

26:                                               ; preds = %23, %20, %16
  %27 = phi ptr [ %25, %23 ], [ %6, %20 ], [ %6, %16 ]
  %28 = phi ptr [ %24, %23 ], [ %14, %20 ], [ %14, %16 ]
  %29 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !497
  %31 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 3
  %32 = tail call fastcc ptr @df_install_refs(ptr noundef %1, ptr noundef %28, ptr noundef %30, ptr noundef nonnull %31, i8 noundef zeroext 0) #22
  store ptr %32, ptr %17, align 8, !tbaa !471
  br label %33

33:                                               ; preds = %26, %5
  %34 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !659
  %36 = icmp eq ptr %35, null
  br i1 %36, label %53, label %37, !prof !687

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.df_insn_info, ptr %13, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !475
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41, !prof !688

41:                                               ; preds = %37
  %42 = load ptr, ptr %39, align 8, !tbaa !426
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  tail call void @free(ptr noundef nonnull %39) #22
  %45 = load ptr, ptr %34, align 8, !tbaa !659
  br label %46

46:                                               ; preds = %44, %41, %37
  %47 = phi ptr [ %45, %44 ], [ %35, %41 ], [ %35, %37 ]
  %48 = load ptr, ptr @df, align 8, !tbaa !426
  %49 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !498
  %51 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 4
  %52 = tail call fastcc ptr @df_install_refs(ptr noundef %1, ptr noundef %47, ptr noundef %50, ptr noundef nonnull %51, i8 noundef zeroext 0) #22
  store ptr %52, ptr %38, align 8, !tbaa !475
  br label %53

53:                                               ; preds = %46, %33
  %54 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !665
  %56 = icmp eq ptr %55, null
  br i1 %56, label %73, label %57, !prof !689

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.df_insn_info, ptr %13, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !477
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61, !prof !690

61:                                               ; preds = %57
  %62 = load ptr, ptr %59, align 8, !tbaa !426
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  tail call void @free(ptr noundef nonnull %59) #22
  %65 = load ptr, ptr %54, align 8, !tbaa !665
  br label %66

66:                                               ; preds = %64, %61, %57
  %67 = phi ptr [ %65, %64 ], [ %55, %61 ], [ %55, %57 ]
  %68 = load ptr, ptr @df, align 8, !tbaa !426
  %69 = getelementptr inbounds %struct.df, ptr %68, i64 0, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !499
  %71 = getelementptr inbounds %struct.df, ptr %68, i64 0, i32 4
  %72 = tail call fastcc ptr @df_install_refs(ptr noundef %1, ptr noundef %67, ptr noundef %70, ptr noundef nonnull %71, i8 noundef zeroext 1) #22
  store ptr %72, ptr %58, align 8, !tbaa !477
  br label %73

73:                                               ; preds = %66, %53
  %74 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !666
  %76 = icmp eq ptr %75, null
  br i1 %76, label %121, label %77, !prof !687

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.df_insn_info, ptr %13, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !479
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81, !prof !688

81:                                               ; preds = %77
  %82 = load ptr, ptr %79, align 8, !tbaa !426
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  tail call void @free(ptr noundef nonnull %79) #22
  %85 = load ptr, ptr %74, align 8, !tbaa !666
  br label %86

86:                                               ; preds = %84, %81, %77
  %87 = phi ptr [ %85, %84 ], [ %75, %81 ], [ %75, %77 ]
  %88 = tail call fastcc ptr @df_install_mws(ptr noundef %87) #22
  store ptr %88, ptr %78, align 8, !tbaa !479
  br label %121

89:                                               ; preds = %3
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %91 = load i32, ptr %90, align 8, !tbaa !450
  %92 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %91) #22
  %93 = load ptr, ptr %92, align 8, !tbaa !484
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95, !prof !691

95:                                               ; preds = %89
  %96 = load ptr, ptr %93, align 8, !tbaa !426
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98, !prof !692

98:                                               ; preds = %95
  tail call void @free(ptr noundef nonnull %93) #22
  br label %99

99:                                               ; preds = %98, %95, %89
  %100 = load ptr, ptr %0, align 8, !tbaa !641
  %101 = load ptr, ptr @df, align 8, !tbaa !426
  %102 = getelementptr inbounds %struct.df, ptr %101, i64 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !497
  %104 = getelementptr inbounds %struct.df, ptr %101, i64 0, i32 3
  %105 = tail call fastcc ptr @df_install_refs(ptr noundef nonnull %1, ptr noundef %100, ptr noundef %103, ptr noundef nonnull %104, i8 noundef zeroext 0) #22
  store ptr %105, ptr %92, align 8, !tbaa !484
  %106 = getelementptr inbounds %struct.df_scan_bb_info, ptr %92, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !487
  %108 = icmp eq ptr %107, null
  br i1 %108, label %113, label %109, !prof !693

109:                                              ; preds = %99
  %110 = load ptr, ptr %107, align 8, !tbaa !426
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112, !prof !694

112:                                              ; preds = %109
  tail call void @free(ptr noundef nonnull %107) #22
  br label %113

113:                                              ; preds = %112, %109, %99
  %114 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !659
  %116 = load ptr, ptr @df, align 8, !tbaa !426
  %117 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 6
  %118 = load ptr, ptr %117, align 8, !tbaa !498
  %119 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 4
  %120 = tail call fastcc ptr @df_install_refs(ptr noundef nonnull %1, ptr noundef %115, ptr noundef %118, ptr noundef nonnull %119, i8 noundef zeroext 0) #22
  store ptr %120, ptr %106, align 8, !tbaa !487
  br label %121

121:                                              ; preds = %73, %86, %113
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_stack_free(ptr nocapture noundef %0) unnamed_addr #0 !prof !676 !PGOFuncName !695 {
  %2 = load ptr, ptr %0, align 8, !tbaa !426
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !696

4:                                                ; preds = %1
  tail call void @vec_stack_free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !426
  ret void
}

; Function Attrs: optsize
declare ptr @vec_stack_p_reserve_exact_1(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !697 !PGOFuncName !698 {
  %4 = load ptr, ptr %1, align 8, !tbaa !699
  store ptr %4, ptr %0, align 8, !tbaa !701
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !703
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !704

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !701
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !705
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !707

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !708
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !652
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !709
  %21 = icmp eq i64 %19, 0
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %16, %22
  store i32 %23, ptr %2, align 4, !tbaa !507
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 !prof !710 !PGOFuncName !711 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !709
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !712

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !713

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !507
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !714, !llvm.loop !715

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !507
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !507
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !708
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !701
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !708
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !716

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !652
  store i64 %35, ptr %3, align 8, !tbaa !709
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !717

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !507
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !507
  %40 = load i32, ptr %23, align 8, !tbaa !708
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !708
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !718, !llvm.loop !719

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !720
  store ptr %44, ptr %0, align 8, !tbaa !701
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !721

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !705
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !507
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !709
  store i32 %16, ptr %1, align 4, !tbaa !507
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_ref_record(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #0 !prof !722 !PGOFuncName !723 {
  %12 = load i32, ptr %2, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %14 [
    i16 37, label %16
    i16 39, label %16
  ], !prof !724

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2918, ptr noundef nonnull @.str.9) #21
  %15 = load i32, ptr %2, align 8
  br label %16

16:                                               ; preds = %11, %11, %14
  %17 = phi i32 [ %12, %11 ], [ %12, %11 ], [ %15, %14 ]
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 39
  br i1 %19, label %20, label %23, !prof !725

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !521
  br label %23

23:                                               ; preds = %16, %20
  %24 = phi ptr [ %22, %20 ], [ %2, %16 ]
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef %24) #22
  %26 = icmp ult i32 %25, 53
  br i1 %26, label %27, label %106, !prof !726

27:                                               ; preds = %23
  %28 = load ptr, ptr @df, align 8, !tbaa !426
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !426
  %31 = getelementptr inbounds %struct.dataflow, ptr %30, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !430
  br i1 %19, label %33, label %47, !prof !727

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !521
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load i32, ptr %39, align 8, !tbaa !521
  %41 = lshr i32 %17, 16
  %42 = and i32 %41, 255
  %43 = tail call i32 @subreg_regno_offset(i32 noundef %25, i32 noundef %38, i32 noundef %40, i32 noundef %42) #21
  %44 = add i32 %43, %25
  %45 = tail call i32 @subreg_nregs(ptr noundef nonnull %2) #21
  %46 = add i32 %44, %45
  br label %52

47:                                               ; preds = %27
  %48 = lshr i32 %17, 16
  %49 = and i32 %48, 255
  %50 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #22
  %51 = tail call fastcc i32 @end_hard_regno(i32 noundef %49, i32 noundef %50) #22
  br label %52

52:                                               ; preds = %47, %33
  %53 = phi i32 [ %44, %33 ], [ %25, %47 ]
  %54 = phi i32 [ %46, %33 ], [ %51, %47 ]
  %55 = add i32 %53, 1
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %84, label %57, !prof !728

57:                                               ; preds = %52
  %58 = icmp eq ptr %5, null
  br i1 %58, label %84, label %59, !prof !729

59:                                               ; preds = %57
  %60 = load i32, ptr %2, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 39
  br i1 %62, label %63, label %65, !prof !729

63:                                               ; preds = %59
  %64 = or i32 %7, 16
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i32 [ %64, %63 ], [ %7, %59 ]
  %67 = or i32 %66, 4096
  %68 = getelementptr inbounds %struct.df_scan_problem_data, ptr %32, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !446
  %70 = tail call ptr @pool_alloc(ptr noundef %69) #21
  %71 = getelementptr inbounds %struct.df_mw_hardreg, ptr %70, i64 0, i32 1
  %72 = and i32 %6, 65535
  %73 = shl i32 %67, 16
  %74 = or disjoint i32 %73, %72
  store i32 %74, ptr %71, align 8
  store ptr %2, ptr %70, align 8, !tbaa !730
  %75 = getelementptr inbounds %struct.df_mw_hardreg, ptr %70, i64 0, i32 2
  store i32 %53, ptr %75, align 4, !tbaa !732
  %76 = add i32 %54, -1
  %77 = getelementptr inbounds %struct.df_mw_hardreg, ptr %70, i64 0, i32 3
  store i32 %76, ptr %77, align 8, !tbaa !733
  %78 = load ptr, ptr @df, align 8, !tbaa !426
  %79 = getelementptr inbounds %struct.df, ptr %78, i64 0, i32 26
  %80 = load i32, ptr %79, align 8, !tbaa !734
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 8, !tbaa !734
  %82 = getelementptr inbounds %struct.df_mw_hardreg, ptr %70, i64 0, i32 4
  store i32 %80, ptr %82, align 4, !tbaa !735
  %83 = getelementptr inbounds %struct.df_collection_rec, ptr %1, i64 0, i32 3
  tail call fastcc void @VEC_df_mw_hardreg_ptr_stack_safe_push(ptr noundef nonnull %83, ptr noundef nonnull %70) #22
  br label %84

84:                                               ; preds = %65, %57, %52
  %85 = phi i32 [ %67, %65 ], [ %7, %57 ], [ %7, %52 ]
  %86 = icmp ult i32 %53, %54
  br i1 %86, label %87, label %108, !prof !736

87:                                               ; preds = %84
  %88 = zext i32 %53 to i64
  br label %89

89:                                               ; preds = %87, %102
  %90 = phi i64 [ %88, %87 ], [ %103, %102 ]
  %91 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !426
  %92 = getelementptr inbounds ptr, ptr %91, i64 %90
  %93 = load ptr, ptr %92, align 8, !tbaa !426
  %94 = tail call fastcc ptr @df_ref_create_structure(i32 noundef %0, ptr noundef %1, ptr noundef %93, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %85, i32 noundef %8, i32 noundef %9, i32 noundef %10) #22
  %95 = getelementptr inbounds %struct.df_base_ref, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !521
  %97 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1, i32 0, i32 0, i64 1
  %98 = load i32, ptr %97, align 8, !tbaa !521
  %99 = zext i32 %98 to i64
  %100 = icmp eq i64 %90, %99
  br i1 %100, label %102, label %101, !prof !737

101:                                              ; preds = %89
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2967, ptr noundef nonnull @.str.9) #21
  br label %102

102:                                              ; preds = %101, %89
  %103 = add nuw nsw i64 %90, 1
  %104 = trunc i64 %103 to i32
  %105 = icmp eq i32 %54, %104
  br i1 %105, label %108, label %89, !prof !738, !llvm.loop !739

106:                                              ; preds = %23
  %107 = tail call fastcc ptr @df_ref_create_structure(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #22
  br label %108

108:                                              ; preds = %102, %84, %106
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !740 !PGOFuncName !741 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !709
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !709
  %6 = load i32, ptr %1, align 4, !tbaa !507
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !507
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_canonize_collection_rec(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !742 !PGOFuncName !743 {
  tail call fastcc void @df_sort_and_compress_refs(ptr noundef %0) #22
  %2 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  tail call fastcc void @df_sort_and_compress_refs(ptr noundef nonnull %2) #22
  %3 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  tail call fastcc void @df_sort_and_compress_refs(ptr noundef nonnull %3) #22
  %4 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  tail call fastcc void @df_sort_and_compress_mws(ptr noundef nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_nregs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #7 !prof !744 !PGOFuncName !745 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !521
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_stack_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !746 !PGOFuncName !747 {
  tail call fastcc void @VEC_df_mw_hardreg_ptr_stack_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !426
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @df_ref_create_structure(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #0 !prof !748 !PGOFuncName !749 {
  %12 = load i32, ptr %2, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 39
  br i1 %14, label %15, label %18, !prof !750

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !521
  br label %18

18:                                               ; preds = %11, %15
  %19 = phi ptr [ %17, %15 ], [ %2, %11 ]
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef %19) #22
  %21 = load ptr, ptr @df, align 8, !tbaa !426
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !426
  %24 = getelementptr inbounds %struct.dataflow, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !430
  switch i32 %0, label %54 [
    i32 0, label %26
    i32 1, label %30
    i32 2, label %36
    i32 3, label %42
  ], !prof !751

26:                                               ; preds = %18
  %27 = load ptr, ptr %25, align 8, !tbaa !436
  %28 = tail call ptr @pool_alloc(ptr noundef %27) #21
  %29 = icmp eq ptr %3, null
  br i1 %29, label %54, label %51, !prof !752

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.df_scan_problem_data, ptr %25, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !441
  %33 = tail call ptr @pool_alloc(ptr noundef %32) #21
  %34 = getelementptr inbounds %struct.df_artificial_ref, ptr %33, i64 0, i32 1
  store ptr %4, ptr %34, align 8, !tbaa !521
  %35 = icmp eq ptr %3, null
  br i1 %35, label %54, label %51, !prof !753

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.df_scan_problem_data, ptr %25, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !442
  %39 = tail call ptr @pool_alloc(ptr noundef %38) #21
  %40 = getelementptr inbounds %struct.df_regular_ref, ptr %39, i64 0, i32 1
  store ptr %3, ptr %40, align 8, !tbaa !521
  %41 = icmp eq ptr %3, null
  br i1 %41, label %51, label %54, !prof !754

42:                                               ; preds = %18
  %43 = getelementptr inbounds %struct.df_scan_problem_data, ptr %25, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !443
  %45 = tail call ptr @pool_alloc(ptr noundef %44) #21
  %46 = getelementptr inbounds %struct.df_extract_ref, ptr %45, i64 0, i32 1
  store i32 %8, ptr %46, align 8, !tbaa !521
  %47 = getelementptr inbounds %struct.df_extract_ref, ptr %45, i64 0, i32 2
  store i32 %9, ptr %47, align 4, !tbaa !521
  %48 = getelementptr inbounds %struct.df_extract_ref, ptr %45, i64 0, i32 3
  store i32 %10, ptr %48, align 8, !tbaa !521
  %49 = getelementptr inbounds %struct.df_regular_ref, ptr %45, i64 0, i32 1
  store ptr %3, ptr %49, align 8, !tbaa !521
  %50 = icmp eq ptr %3, null
  br i1 %50, label %51, label %54, !prof !755

51:                                               ; preds = %42, %36, %30, %26
  %52 = phi i32 [ 2827, %26 ], [ 2833, %30 ], [ 2839, %36 ], [ 2848, %42 ]
  %53 = phi ptr [ %28, %26 ], [ %33, %30 ], [ %39, %36 ], [ %45, %42 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef %52, ptr noundef nonnull @.str.9) #21
  br label %54

54:                                               ; preds = %51, %42, %36, %30, %26, %18
  %55 = phi ptr [ null, %18 ], [ %45, %42 ], [ %39, %36 ], [ %33, %30 ], [ %28, %26 ], [ %53, %51 ]
  %56 = and i32 %0, 255
  %57 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 7
  store i32 -1, ptr %57, align 4, !tbaa !521
  %58 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 1
  store ptr %2, ptr %58, align 8, !tbaa !521
  %59 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 6
  store i32 %20, ptr %59, align 8, !tbaa !521
  %60 = shl i32 %6, 8
  %61 = and i32 %60, 65280
  %62 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 3
  store ptr %5, ptr %62, align 8, !tbaa !521
  %63 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 2
  store ptr null, ptr %63, align 8, !tbaa !521
  %64 = shl i32 %7, 16
  %65 = or disjoint i32 %61, %64
  %66 = or disjoint i32 %65, %56
  store i32 %66, ptr %55, align 8
  %67 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %67, i8 0, i64 16, i1 false)
  %68 = load ptr, ptr @df, align 8, !tbaa !426
  %69 = getelementptr inbounds %struct.df, ptr %68, i64 0, i32 26
  %70 = load i32, ptr %69, align 8, !tbaa !734
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 8, !tbaa !734
  %72 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 8
  store i32 %70, ptr %72, align 8, !tbaa !521
  %73 = load i32, ptr %55, align 8
  %74 = and i32 %73, -524289
  store i32 %74, ptr %55, align 8
  %75 = icmp sgt i32 %20, 52
  %76 = and i32 %73, 255
  %77 = icmp eq i32 %76, 1
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %97, label %79, !prof !756

79:                                               ; preds = %54
  %80 = and i32 %73, 65280
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85, !prof !757

82:                                               ; preds = %79
  %83 = and i32 %73, 4194304
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %95, label %97, !prof !758

85:                                               ; preds = %79
  %86 = load i1, ptr @elim_reg_set, align 8
  %87 = select i1 %86, i64 1114112, i64 0
  %88 = zext nneg i32 %20 to i64
  %89 = shl nuw i64 1, %88
  %90 = and i64 %87, %89
  %91 = icmp ne i64 %90, 0
  %92 = and i32 %20, -5
  %93 = icmp eq i32 %92, 16
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %97, label %95, !prof !759

95:                                               ; preds = %85, %82
  %96 = or i32 %73, 524288
  store i32 %96, ptr %55, align 8
  br label %97

97:                                               ; preds = %95, %85, %82, %54
  %98 = phi i32 [ %74, %85 ], [ %74, %82 ], [ %74, %54 ], [ %96, %95 ]
  %99 = icmp eq ptr %1, null
  br i1 %99, label %112, label %100, !prof !760

100:                                              ; preds = %97
  %101 = and i32 %98, 65280
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103, !prof !761

103:                                              ; preds = %100
  %104 = and i32 %98, 262144
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106, !prof !762

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.df_collection_rec, ptr %1, i64 0, i32 2
  br label %110

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.df_collection_rec, ptr %1, i64 0, i32 1
  br label %110

110:                                              ; preds = %100, %106, %108
  %111 = phi ptr [ %109, %108 ], [ %107, %106 ], [ %1, %100 ]
  tail call fastcc void @VEC_df_ref_stack_safe_push(ptr noundef nonnull %111, ptr noundef nonnull %55) #22
  br label %112

112:                                              ; preds = %110, %97
  ret ptr %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_stack_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !746 !PGOFuncName !763 {
  %2 = load ptr, ptr %0, align 8, !tbaa !426
  %3 = tail call fastcc i32 @VEC_df_mw_hardreg_ptr_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !729

5:                                                ; preds = %1
  %6 = tail call ptr @vec_stack_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !426
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !746 !PGOFuncName !764 {
  %3 = load i32, ptr %0, align 8, !tbaa !765
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !765
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !426
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_df_mw_hardreg_ptr_base_space(ptr noundef readonly %0) unnamed_addr #8 !prof !746 !PGOFuncName !767 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !729

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !768
  %6 = load i32, ptr %0, align 8, !tbaa !765
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_stack_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_stack_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !769 !PGOFuncName !770 {
  tail call fastcc void @VEC_df_ref_stack_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !426
  tail call fastcc void @VEC_df_ref_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_stack_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !769 !PGOFuncName !771 {
  %2 = load ptr, ptr %0, align 8, !tbaa !426
  %3 = tail call fastcc i32 @VEC_df_ref_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !772

5:                                                ; preds = %1
  %6 = tail call ptr @vec_stack_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !426
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_df_ref_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !769 !PGOFuncName !773 {
  %3 = load i32, ptr %0, align 8, !tbaa !774
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !774
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !426
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_df_ref_base_space(ptr noundef readonly %0) unnamed_addr #8 !prof !769 !PGOFuncName !776 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !772

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !777
  %6 = load i32, ptr %0, align 8, !tbaa !774
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_sort_and_compress_refs(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !778 !PGOFuncName !779 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !426
  %7 = tail call fastcc i32 @VEC_df_ref_base_length(ptr noundef %6) #22
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %66, label %9, !prof !780

9:                                                ; preds = %1
  %10 = icmp eq i32 %7, 2
  br i1 %10, label %13, label %11, !prof !781

11:                                               ; preds = %9
  %12 = add i32 %7, -1
  br label %20

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %14 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %6, i32 noundef 0) #22
  store ptr %14, ptr %2, align 8, !tbaa !426
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %15 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %6, i32 noundef 1) #22
  store ptr %15, ptr %3, align 8, !tbaa !426
  %16 = call i32 @df_ref_compare(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %19, !prof !782

18:                                               ; preds = %13
  tail call fastcc void @df_swap_refs(ptr noundef nonnull %0) #22
  br label %19

19:                                               ; preds = %18, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  br label %34

20:                                               ; preds = %11, %23
  %21 = phi i32 [ %25, %23 ], [ 0, %11 ]
  %22 = icmp eq i32 %21, %12
  br i1 %22, label %66, label %23, !prof !783

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %24 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %6, i32 noundef %21) #22
  store ptr %24, ptr %4, align 8, !tbaa !426
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %25 = add i32 %21, 1
  %26 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %6, i32 noundef %25) #22
  store ptr %26, ptr %5, align 8, !tbaa !426
  %27 = call i32 @df_ref_compare(ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %28 = icmp sgt i32 %27, -1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br i1 %28, label %29, label %20

29:                                               ; preds = %23
  %30 = icmp eq i32 %21, %12
  br i1 %30, label %66, label %31, !prof !550

31:                                               ; preds = %29
  %32 = tail call fastcc ptr @VEC_df_ref_base_address(ptr noundef %6) #22
  %33 = zext i32 %7 to i64
  tail call void @spec_qsort(ptr noundef %32, i64 noundef %33, i64 noundef 8, ptr noundef nonnull @df_ref_compare) #21
  br label %34

34:                                               ; preds = %19, %31
  br label %35

35:                                               ; preds = %34, %60
  %36 = phi i32 [ %61, %60 ], [ 0, %34 ]
  %37 = phi i32 [ %38, %60 ], [ 0, %34 ]
  %38 = add nuw i32 %37, 1
  %39 = add i32 %38, %36
  %40 = icmp ult i32 %39, %7
  br i1 %40, label %41, label %60, !prof !784

41:                                               ; preds = %35, %49
  %42 = phi i32 [ %53, %49 ], [ %39, %35 ]
  %43 = phi i32 [ %52, %49 ], [ %36, %35 ]
  %44 = load ptr, ptr %0, align 8, !tbaa !426
  %45 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %44, i32 noundef %37) #22
  %46 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %44, i32 noundef %42) #22
  %47 = tail call fastcc zeroext i8 @df_ref_equal_p(ptr noundef %45, ptr noundef %46) #22, !range !680
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49, !prof !785

49:                                               ; preds = %41
  %50 = load ptr, ptr %0, align 8, !tbaa !426
  %51 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %50, i32 noundef %42) #22
  tail call fastcc void @df_free_ref(ptr noundef %51) #22
  %52 = add i32 %43, 1
  %53 = add i32 %38, %52
  %54 = icmp ult i32 %53, %7
  br i1 %54, label %41, label %60, !prof !786, !llvm.loop !787

55:                                               ; preds = %41
  %56 = icmp eq i32 %43, 0
  br i1 %56, label %60, label %57, !prof !785

57:                                               ; preds = %55
  %58 = load ptr, ptr %0, align 8, !tbaa !426
  %59 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %58, i32 noundef %42) #22
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %58, i32 noundef %38, ptr noundef %59) #22
  br label %60

60:                                               ; preds = %49, %35, %55, %57
  %61 = phi i32 [ 0, %55 ], [ %43, %57 ], [ %36, %35 ], [ %52, %49 ]
  %62 = sub i32 %7, %61
  %63 = icmp ult i32 %38, %62
  br i1 %63, label %35, label %64, !prof !788, !llvm.loop !789

64:                                               ; preds = %60
  %65 = load ptr, ptr %0, align 8, !tbaa !426
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %65, i32 noundef %62) #22
  br label %66

66:                                               ; preds = %20, %29, %1, %64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_sort_and_compress_mws(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !742 !PGOFuncName !790 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @df, align 8, !tbaa !426
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !426
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !430
  %9 = load ptr, ptr %0, align 8, !tbaa !426
  %10 = tail call fastcc i32 @VEC_df_mw_hardreg_ptr_base_length(ptr noundef %9) #22
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %55, label %12, !prof !791

12:                                               ; preds = %1
  %13 = icmp eq i32 %10, 2
  br i1 %13, label %14, label %22, !prof !792

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %15 = tail call fastcc ptr @VEC_df_mw_hardreg_ptr_base_index(ptr noundef %9, i32 noundef 0) #22
  store ptr %15, ptr %2, align 8, !tbaa !426
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %16 = tail call fastcc ptr @VEC_df_mw_hardreg_ptr_base_index(ptr noundef %9, i32 noundef 1) #22
  store ptr %16, ptr %3, align 8, !tbaa !426
  %17 = call i32 @df_mw_compare(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %21, !prof !793

19:                                               ; preds = %14
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_replace(ptr noundef %9, i32 noundef 0, ptr noundef %16) #22
  %20 = load ptr, ptr %0, align 8, !tbaa !426
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_replace(ptr noundef %20, i32 noundef 1, ptr noundef %15) #22
  br label %21

21:                                               ; preds = %19, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  br label %25

22:                                               ; preds = %12
  %23 = tail call fastcc ptr @VEC_df_mw_hardreg_ptr_base_address(ptr noundef %9) #22
  %24 = zext i32 %10 to i64
  tail call void @spec_qsort(ptr noundef %23, i64 noundef %24, i64 noundef 8, ptr noundef nonnull @df_mw_compare) #21
  br label %25

25:                                               ; preds = %21, %22
  br label %26

26:                                               ; preds = %25, %49
  %27 = phi i32 [ 0, %25 ], [ %50, %49 ]
  %28 = phi i32 [ 0, %25 ], [ %29, %49 ]
  %29 = add nuw i32 %28, 1
  %30 = add i32 %29, %27
  %31 = icmp ult i32 %30, %10
  br i1 %31, label %32, label %49, !prof !794

32:                                               ; preds = %26, %40
  %33 = phi i32 [ %44, %40 ], [ %30, %26 ]
  %34 = phi i32 [ %43, %40 ], [ %27, %26 ]
  %35 = load ptr, ptr %0, align 8, !tbaa !426
  %36 = tail call fastcc ptr @VEC_df_mw_hardreg_ptr_base_index(ptr noundef %35, i32 noundef %28) #22
  %37 = tail call fastcc ptr @VEC_df_mw_hardreg_ptr_base_index(ptr noundef %35, i32 noundef %33) #22
  %38 = tail call fastcc zeroext i8 @df_mw_equal_p(ptr noundef %36, ptr noundef %37) #22, !range !680
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40, !prof !795

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.df_scan_problem_data, ptr %8, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !446
  tail call void @pool_free(ptr noundef %42, ptr noundef %37) #21
  %43 = add i32 %34, 1
  %44 = add i32 %29, %43
  %45 = icmp ult i32 %44, %10
  br i1 %45, label %32, label %49, !prof !796, !llvm.loop !797

46:                                               ; preds = %32
  %47 = icmp eq i32 %34, 0
  br i1 %47, label %49, label %48, !prof !798

48:                                               ; preds = %46
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_replace(ptr noundef %35, i32 noundef %29, ptr noundef %37) #22
  br label %49

49:                                               ; preds = %40, %26, %46, %48
  %50 = phi i32 [ 0, %46 ], [ %34, %48 ], [ %27, %26 ], [ %43, %40 ]
  %51 = sub i32 %10, %50
  %52 = icmp ult i32 %29, %51
  br i1 %52, label %26, label %53, !prof !799, !llvm.loop !800

53:                                               ; preds = %49
  %54 = load ptr, ptr %0, align 8, !tbaa !426
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_truncate(ptr noundef %54, i32 noundef %51) #22
  br label %55

55:                                               ; preds = %1, %53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_df_ref_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !801 !PGOFuncName !802 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !803

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !774
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_df_ref_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !804 !PGOFuncName !805 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !426
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @df_ref_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !806 !PGOFuncName !807 {
  %3 = load ptr, ptr %0, align 8, !tbaa !426
  %4 = load ptr, ptr %1, align 8, !tbaa !426
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %108, label %6, !prof !808

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 8
  %8 = and i32 %7, 255
  %9 = load i32, ptr %4, align 8
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %14, label %12, !prof !809

12:                                               ; preds = %6
  %13 = sub nsw i32 %8, %10
  br label %108

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %3, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !521
  %17 = getelementptr inbounds %struct.df_base_ref, ptr %4, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !521
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %22, label %20, !prof !810

20:                                               ; preds = %14
  %21 = sub nsw i32 %16, %18
  br label %108

22:                                               ; preds = %14
  %23 = lshr i32 %7, 8
  %24 = and i32 %23, 255
  %25 = lshr i32 %9, 8
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %30, label %28, !prof !811

28:                                               ; preds = %22
  %29 = sub nsw i32 %24, %26
  br label %108

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.df_base_ref, ptr %3, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !521
  %33 = getelementptr inbounds %struct.df_base_ref, ptr %4, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !521
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %42, label %36, !prof !812

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.df_base_ref, ptr %3, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !521
  %39 = getelementptr inbounds %struct.df_base_ref, ptr %4, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !521
  %41 = sub nsw i32 %38, %40
  br label %108

42:                                               ; preds = %30
  %43 = trunc i32 %7 to i8
  switch i8 %43, label %47 [
    i8 1, label %67
    i8 2, label %44
    i8 3, label %44
  ], !prof !813

44:                                               ; preds = %42, %42
  %45 = getelementptr inbounds %struct.df_regular_ref, ptr %3, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !521
  br label %47

47:                                               ; preds = %42, %44
  %48 = phi ptr [ %46, %44 ], [ null, %42 ]
  %49 = and i32 %9, 254
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %54, !prof !814

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.df_regular_ref, ptr %4, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !521
  br label %54

54:                                               ; preds = %47, %51
  %55 = phi ptr [ %53, %51 ], [ null, %47 ]
  %56 = icmp eq ptr %48, %55
  br i1 %56, label %63, label %57, !prof !815

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.df_base_ref, ptr %3, i64 0, i32 8
  %59 = load i32, ptr %58, align 8, !tbaa !521
  %60 = getelementptr inbounds %struct.df_base_ref, ptr %4, i64 0, i32 8
  %61 = load i32, ptr %60, align 8, !tbaa !521
  %62 = sub nsw i32 %59, %61
  br label %108

63:                                               ; preds = %54
  %64 = ashr i32 %7, 16
  %65 = ashr i32 %9, 16
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %84, label %71, !prof !816

67:                                               ; preds = %42
  %68 = ashr i32 %7, 16
  %69 = ashr i32 %9, 16
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %108, label %71, !prof !816

71:                                               ; preds = %67, %63
  %72 = phi i32 [ %69, %67 ], [ %65, %63 ]
  %73 = phi i32 [ %68, %67 ], [ %64, %63 ]
  %74 = and i32 %7, 268435456
  %75 = lshr exact i32 %74, 28
  %76 = lshr i32 %9, 28
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %81, !prof !817

79:                                               ; preds = %71
  %80 = sub nsw i32 %73, %72
  br label %108

81:                                               ; preds = %71
  %82 = icmp eq i32 %74, 0
  %83 = select i1 %82, i32 1, i32 -1
  br label %108

84:                                               ; preds = %63
  %85 = icmp eq i32 %8, 3
  br i1 %85, label %86, label %108

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.df_extract_ref, ptr %3, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !521
  %89 = getelementptr inbounds %struct.df_extract_ref, ptr %4, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !521
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = sub nsw i32 %88, %90
  br label %108

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.df_extract_ref, ptr %3, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !521
  %97 = getelementptr inbounds %struct.df_extract_ref, ptr %4, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !521
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %102, label %100

100:                                              ; preds = %94
  %101 = sub nsw i32 %96, %98
  br label %108

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.df_extract_ref, ptr %3, i64 0, i32 3
  %104 = load i32, ptr %103, align 8, !tbaa !521
  %105 = getelementptr inbounds %struct.df_extract_ref, ptr %4, i64 0, i32 3
  %106 = load i32, ptr %105, align 8, !tbaa !521
  %107 = sub i32 %104, %106
  br label %108

108:                                              ; preds = %67, %102, %84, %81, %2, %100, %92, %79, %57, %36, %28, %20, %12
  %109 = phi i32 [ %13, %12 ], [ %21, %20 ], [ %29, %28 ], [ %41, %36 ], [ %62, %57 ], [ %80, %79 ], [ %93, %92 ], [ %101, %100 ], [ 0, %2 ], [ %83, %81 ], [ 0, %84 ], [ %107, %102 ], [ 0, %67 ]
  ret i32 %109
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @df_swap_refs(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !818 !PGOFuncName !819 {
  %2 = load ptr, ptr %0, align 8, !tbaa !426
  %3 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %2, i32 noundef 0) #22
  %4 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %2, i32 noundef 1) #22
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %2, i32 noundef 0, ptr noundef %4) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !426
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %5, i32 noundef 1, ptr noundef %3) #22
  ret void
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_df_ref_base_address(ptr noundef readnone %0) unnamed_addr #9 !prof !820 !PGOFuncName !821 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !822
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @df_ref_equal_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !823 !PGOFuncName !824 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %92, label %4, !prof !825

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %92, label %6, !prof !825

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 255
  %9 = load i32, ptr %1, align 8
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %92, !prof !826

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !521
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !521
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %92, !prof !827

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !521
  %21 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !521
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %24, label %92, !prof !828

24:                                               ; preds = %18
  %25 = xor i32 %9, %7
  %26 = and i32 %25, -1342177536
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %92, !prof !829

28:                                               ; preds = %24
  %29 = icmp eq i32 %8, 1
  br i1 %29, label %30, label %33, !prof !830

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  %32 = getelementptr inbounds %struct.df_artificial_ref, ptr %1, i64 0, i32 1
  br label %42

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !521
  %36 = load ptr, ptr %35, align 8, !tbaa !578
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 1
  %38 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !521
  %40 = load ptr, ptr %39, align 8, !tbaa !578
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 1
  br label %42

42:                                               ; preds = %33, %30
  %43 = phi ptr [ %31, %30 ], [ %37, %33 ]
  %44 = phi ptr [ %32, %30 ], [ %41, %33 ]
  %45 = load ptr, ptr %43, align 8, !tbaa !521
  %46 = load ptr, ptr %44, align 8, !tbaa !521
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %92, !prof !831

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !521
  %51 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !521
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %54, label %92, !prof !831

54:                                               ; preds = %48
  %55 = trunc i32 %7 to i8
  switch i8 %55, label %91 [
    i8 1, label %92
    i8 0, label %92
    i8 3, label %56
    i8 2, label %74
  ], !prof !832

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.df_extract_ref, ptr %0, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !521
  %59 = getelementptr inbounds %struct.df_extract_ref, ptr %1, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !521
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %92, !prof !833

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.df_extract_ref, ptr %0, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !521
  %65 = getelementptr inbounds %struct.df_extract_ref, ptr %1, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !521
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %92, !prof !833

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.df_extract_ref, ptr %0, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !521
  %71 = getelementptr inbounds %struct.df_extract_ref, ptr %1, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !521
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %92, !prof !833

74:                                               ; preds = %68, %54
  %75 = and i32 %7, 254
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %80, !prof !834

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.df_regular_ref, ptr %0, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !521
  br label %80

80:                                               ; preds = %74, %77
  %81 = phi ptr [ %79, %77 ], [ null, %74 ]
  %82 = and i32 %9, 254
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %87, !prof !834

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.df_regular_ref, ptr %1, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !521
  br label %87

87:                                               ; preds = %80, %84
  %88 = phi ptr [ %86, %84 ], [ null, %80 ]
  %89 = icmp eq ptr %81, %88
  %90 = zext i1 %89 to i8
  br label %92

91:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2351, ptr noundef nonnull @.str.9) #21
  br label %92

92:                                               ; preds = %56, %62, %68, %54, %54, %6, %12, %18, %24, %42, %48, %4, %2, %91, %87
  %93 = phi i8 [ 0, %91 ], [ %90, %87 ], [ 0, %2 ], [ 1, %4 ], [ 0, %48 ], [ 0, %42 ], [ 0, %24 ], [ 0, %18 ], [ 0, %12 ], [ 0, %6 ], [ 1, %54 ], [ 1, %54 ], [ 0, %68 ], [ 0, %62 ], [ 0, %56 ]
  ret i8 %93
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_df_ref_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #12 !prof !835 !PGOFuncName !836 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !426
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_df_ref_base_truncate(ptr noundef writeonly %0, i32 noundef %1) unnamed_addr #14 !prof !837 !PGOFuncName !838 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4, !prof !839

4:                                                ; preds = %2
  store i32 %1, ptr %0, align 8, !tbaa !774
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_df_mw_hardreg_ptr_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !840 !PGOFuncName !841 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !842

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !765
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_df_mw_hardreg_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !843 !PGOFuncName !844 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !426
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @df_mw_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !845 !PGOFuncName !846 {
  %3 = load ptr, ptr %0, align 8, !tbaa !426
  %4 = load ptr, ptr %1, align 8, !tbaa !426
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %48, label %6, !prof !847

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.df_mw_hardreg, ptr %3, i64 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = getelementptr inbounds %struct.df_mw_hardreg, ptr %4, i64 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %16, label %14, !prof !848

14:                                               ; preds = %6
  %15 = sub nsw i32 %9, %12
  br label %48

16:                                               ; preds = %6
  %17 = ashr i32 %8, 16
  %18 = ashr i32 %11, 16
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %22, label %20, !prof !849

20:                                               ; preds = %16
  %21 = sub nsw i32 %17, %18
  br label %48

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.df_mw_hardreg, ptr %3, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !732
  %25 = getelementptr inbounds %struct.df_mw_hardreg, ptr %4, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !732
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %30, label %28, !prof !850

28:                                               ; preds = %22
  %29 = sub i32 %24, %26
  br label %48

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.df_mw_hardreg, ptr %3, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !733
  %33 = getelementptr inbounds %struct.df_mw_hardreg, ptr %4, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !733
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %38, label %36, !prof !851

36:                                               ; preds = %30
  %37 = sub i32 %32, %34
  br label %48

38:                                               ; preds = %30
  %39 = load ptr, ptr %3, align 8, !tbaa !730
  %40 = load ptr, ptr %4, align 8, !tbaa !730
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %48, label %42, !prof !851

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.df_mw_hardreg, ptr %3, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !735
  %45 = getelementptr inbounds %struct.df_mw_hardreg, ptr %4, i64 0, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !735
  %47 = sub i32 %44, %46
  br label %48

48:                                               ; preds = %38, %2, %42, %36, %28, %20, %14
  %49 = phi i32 [ %15, %14 ], [ %21, %20 ], [ %29, %28 ], [ %37, %36 ], [ %47, %42 ], [ 0, %2 ], [ 0, %38 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #12 !prof !852 !PGOFuncName !853 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !426
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_df_mw_hardreg_ptr_base_address(ptr noundef readnone %0) unnamed_addr #9 !prof !854 !PGOFuncName !855 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !856
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @df_mw_equal_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #8 !prof !857 !PGOFuncName !858 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %29, label %4, !prof !859

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %29, label %6, !prof !859

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !730
  %8 = load ptr, ptr %1, align 8, !tbaa !730
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %29, !prof !860

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.df_mw_hardreg, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %29, !prof !861

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !732
  %19 = getelementptr inbounds %struct.df_mw_hardreg, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !732
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %29, !prof !862

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !733
  %25 = getelementptr inbounds %struct.df_mw_hardreg, ptr %1, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !733
  %27 = icmp eq i32 %24, %26
  %28 = zext i1 %27 to i8
  br label %29

29:                                               ; preds = %4, %22, %16, %10, %6, %2
  %30 = phi i8 [ 0, %2 ], [ 1, %4 ], [ 0, %16 ], [ 0, %10 ], [ 0, %6 ], [ %28, %22 ]
  ret i8 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_base_truncate(ptr noundef writeonly %0, i32 noundef %1) unnamed_addr #14 !prof !863 !PGOFuncName !864 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4, !prof !865

4:                                                ; preds = %2
  store i32 %1, ptr %0, align 8, !tbaa !765
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_install_refs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !866 !PGOFuncName !867 {
  %6 = alloca ptr, align 8
  %7 = tail call fastcc i32 @VEC_df_ref_base_length(ptr noundef %1) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %51, label %9, !prof !868

9:                                                ; preds = %5
  %10 = add i32 %7, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = tail call ptr @xmalloc(i64 noundef %12) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  %14 = getelementptr inbounds %struct.df_ref_info, ptr %3, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !869
  switch i32 %15, label %31 [
    i32 2, label %16
    i32 4, label %16
    i32 6, label %16
    i32 1, label %17
    i32 3, label %17
    i32 5, label %17
  ], !prof !870

16:                                               ; preds = %9, %9, %9
  store i32 2, ptr %14, align 4, !tbaa !869
  br label %19

17:                                               ; preds = %9, %9, %9
  store i32 1, ptr %14, align 4, !tbaa !869
  %18 = icmp eq i8 %4, 0
  br i1 %18, label %19, label %31, !prof !871

19:                                               ; preds = %16, %17
  %20 = load ptr, ptr @df, align 8, !tbaa !426
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 28
  %22 = load i8, ptr %21, align 1, !tbaa !575
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %24, !prof !872

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !530
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !450
  %29 = tail call i32 @bitmap_bit_p(ptr noundef %26, i32 noundef %28) #21
  %30 = trunc i32 %29 to i8
  br label %31

31:                                               ; preds = %9, %24, %19, %17
  %32 = phi i8 [ %30, %24 ], [ 1, %19 ], [ 0, %17 ], [ 0, %9 ]
  %33 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %6) #22, !range !873
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35, !prof !874

35:                                               ; preds = %31, %35
  %36 = phi i32 [ %45, %35 ], [ 0, %31 ]
  %37 = load ptr, ptr %6, align 8, !tbaa !426
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds ptr, ptr %13, i64 %38
  store ptr %37, ptr %39, align 8, !tbaa !426
  %40 = getelementptr inbounds %struct.df_base_ref, ptr %37, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !521
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %2, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !426
  tail call fastcc void @df_install_ref(ptr noundef %37, ptr noundef %44, ptr noundef %3, i8 noundef zeroext %32) #22
  %45 = add i32 %36, 1
  %46 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %1, i32 noundef %45, ptr noundef nonnull %6) #22, !range !873
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %35, !prof !875, !llvm.loop !876

48:                                               ; preds = %35, %31
  %49 = zext i32 %7 to i64
  %50 = getelementptr inbounds ptr, ptr %13, i64 %49
  store ptr null, ptr %50, align 8, !tbaa !426
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  br label %51

51:                                               ; preds = %5, %48
  %52 = phi ptr [ %13, %48 ], [ @df_null_ref_rec, %5 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_install_mws(ptr noundef %0) unnamed_addr #0 !prof !877 !PGOFuncName !878 {
  %2 = tail call fastcc i32 @VEC_df_mw_hardreg_ptr_base_length(ptr noundef %0) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4, !prof !879

4:                                                ; preds = %1
  %5 = add i32 %2, 1
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = tail call ptr @xmalloc(i64 noundef %7) #21
  %9 = tail call fastcc ptr @VEC_df_mw_hardreg_ptr_base_address(ptr noundef %0) #22
  %10 = zext i32 %2 to i64
  %11 = shl nuw nsw i64 %10, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 %11, i1 false)
  %12 = getelementptr inbounds ptr, ptr %8, i64 %10
  store ptr null, ptr %12, align 8, !tbaa !426
  br label %13

13:                                               ; preds = %1, %4
  %14 = phi ptr [ %8, %4 ], [ @df_null_mw_rec, %1 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_df_ref_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 !prof !880 !PGOFuncName !881 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !882

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !774
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !883

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !426
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !426
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_install_ref(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !884 !PGOFuncName !885 {
  %5 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !521
  %7 = load ptr, ptr %1, align 8, !tbaa !586
  store ptr %0, ptr %1, align 8, !tbaa !586
  %8 = getelementptr inbounds %struct.df_reg_info, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !535
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !535
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 524288
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14, !prof !886

14:                                               ; preds = %4
  %15 = icmp ult i32 %6, 53
  br i1 %15, label %17, label %16, !prof !887

16:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2627, ptr noundef nonnull @.str.9) #21
  br label %17

17:                                               ; preds = %14, %16
  %18 = load ptr, ptr @df, align 8, !tbaa !426
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 25
  %20 = load ptr, ptr %19, align 8, !tbaa !584
  %21 = zext i32 %6 to i64
  %22 = getelementptr inbounds i32, ptr %20, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !507
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4, !tbaa !507
  br label %25

25:                                               ; preds = %17, %4
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !521
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33, !prof !888

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !521
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33, !prof !888

33:                                               ; preds = %29, %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2632, ptr noundef nonnull @.str.9) #21
  br label %34

34:                                               ; preds = %29, %33
  store ptr %7, ptr %26, align 8, !tbaa !521
  %35 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 5
  store ptr null, ptr %35, align 8, !tbaa !521
  %36 = icmp eq ptr %7, null
  br i1 %36, label %39, label %37, !prof !889

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 5
  store ptr %0, ptr %38, align 8, !tbaa !521
  br label %39

39:                                               ; preds = %37, %34
  %40 = icmp eq i8 %3, 0
  br i1 %40, label %54, label %41, !prof !890

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.df_ref_info, ptr %2, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !869
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46, !prof !891

45:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2644, ptr noundef nonnull @.str.9) #21
  br label %46

46:                                               ; preds = %41, %45
  tail call fastcc void @df_check_and_grow_ref_info(ptr noundef nonnull %2) #22
  %47 = getelementptr inbounds %struct.df_ref_info, ptr %2, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !892
  %49 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  store i32 %48, ptr %49, align 4, !tbaa !521
  %50 = load ptr, ptr %2, align 8, !tbaa !893
  %51 = zext i32 %48 to i64
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  store ptr %0, ptr %52, align 8, !tbaa !426
  %53 = add i32 %48, 1
  store i32 %53, ptr %47, align 4, !tbaa !892
  br label %56

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  store i32 -1, ptr %55, align 4, !tbaa !521
  br label %56

56:                                               ; preds = %54, %46
  %57 = getelementptr inbounds %struct.df_ref_info, ptr %2, i64 0, i32 5
  %58 = load i32, ptr %57, align 8, !tbaa !894
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 8, !tbaa !894
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_check_and_grow_ref_info(ptr nocapture noundef %0) unnamed_addr #0 !prof !895 !PGOFuncName !896 {
  %2 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !897
  %4 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !894
  %6 = add i32 %5, 1
  %7 = icmp ult i32 %3, %6
  br i1 %7, label %8, label %11, !prof !898

8:                                                ; preds = %1
  %9 = lshr i32 %5, 2
  %10 = add i32 %6, %9
  tail call fastcc void @df_grow_ref_info(ptr noundef nonnull %0, i32 noundef %10) #22
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_grow_ref_info(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !899 !PGOFuncName !900 {
  %3 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !897
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %17, !prof !901

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !893
  %8 = zext i32 %1 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = tail call ptr @xrealloc(ptr noundef %7, i64 noundef %9) #21
  store ptr %10, ptr %0, align 8, !tbaa !893
  %11 = load i32, ptr %3, align 8, !tbaa !897
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = sub i32 %1, %11
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 %16, i1 false)
  store i32 %1, ptr %3, align 8, !tbaa !897
  br label %17

17:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: optsize
declare void @vec_stack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_mark_reg(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !902 !PGOFuncName !903 {
  %3 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #22
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 16711680
  %6 = icmp eq i32 %5, 65536
  br i1 %6, label %7, label %8, !prof !904

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3877, ptr noundef nonnull @.str.9) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = icmp slt i32 %3, 53
  br i1 %9, label %10, label %19, !prof !905

10:                                               ; preds = %8
  %11 = sext i32 %3 to i64
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %11, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !521
  %18 = zext i8 %17 to i32
  tail call void @bitmap_set_range(ptr noundef %1, i32 noundef %3, i32 noundef %18) #21
  br label %21

19:                                               ; preds = %8
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %1, i32 noundef %3) #21
  br label %21

21:                                               ; preds = %19, %10
  ret void
}

; Function Attrs: optsize
declare void @diddle_return_value(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_set_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_exit_block_uses_collect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !657 !PGOFuncName !906 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #22
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !680
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7, !prof !907

7:                                                ; preds = %2, %7
  %8 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !426
  %9 = load i32, ptr %3, align 4, !tbaa !507
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !426
  %13 = load ptr, ptr @cfun, align 8, !tbaa !426
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !447
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !540
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef %0, ptr noundef %12, ptr noundef null, ptr noundef %17, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #22
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !680
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %7, !prof !908, !llvm.loop !909

20:                                               ; preds = %7, %2
  %21 = load i32, ptr @reload_completed, align 4, !tbaa !507
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %46, label %23, !prof !910

23:                                               ; preds = %20
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef 16) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %46, !prof !694

26:                                               ; preds = %23
  %27 = load ptr, ptr @cfun, align 8, !tbaa !426
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !447
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !540
  %32 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef %31) #22, !range !680
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %46, label %34, !prof !694

34:                                               ; preds = %26
  %35 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !521
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !426
  %39 = getelementptr inbounds ptr, ptr %38, i64 16
  %40 = load ptr, ptr %39, align 8, !tbaa !426
  %41 = load ptr, ptr @cfun, align 8, !tbaa !426
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !447
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !540
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef %0, ptr noundef %40, ptr noundef null, ptr noundef %45, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %46

46:                                               ; preds = %37, %34, %26, %23, %20
  tail call fastcc void @df_canonize_collection_rec(ptr noundef %0) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_eh_pred(ptr noundef %0) unnamed_addr #0 !prof !911 !PGOFuncName !912 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #22
  store i32 0, ptr %3, align 8, !tbaa.struct !913
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !914
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #22, !range !680
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8, !prof !915

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !426
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !916
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !918

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #22
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #22, !range !680
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !prof !919, !llvm.loop !920

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #9 !prof !911 !PGOFuncName !921 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !922 !PGOFuncName !923 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #22, !range !680
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !924

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #22
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !426
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !925 !PGOFuncName !926 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !927

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #22
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #22
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !918

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 738, ptr noundef nonnull @.str.9) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !928
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !928
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !922 !PGOFuncName !930 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !931

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !925 !PGOFuncName !932 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !927

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #22
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #22
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !933 !PGOFuncName !934 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !935

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !936
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !938 !PGOFuncName !939 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !940

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.30, i32 noundef 687, ptr noundef nonnull @.str.9) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !426
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !prof !925 !PGOFuncName !941 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !426
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @df_ref_create(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 !prof !942 {
  tail call void @df_grow_reg_info() #22
  %10 = icmp eq ptr %2, null
  br i1 %10, label %11, label %12, !prof !943

11:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 734, ptr noundef nonnull @.str.9) #21
  br label %12

12:                                               ; preds = %9, %11
  %13 = and i32 %7, %6
  %14 = icmp eq i32 %13, -1
  %15 = icmp eq ptr %1, null
  %16 = select i1 %15, i32 0, i32 2
  %17 = select i1 %14, i32 %16, i32 3, !prof !944
  %18 = load ptr, ptr @df, align 8, !tbaa !426
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !469
  %21 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !521
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !426
  %26 = tail call fastcc ptr @df_ref_create_structure(i32 noundef %17, ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %25, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #22
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65280
  %29 = icmp eq i32 %28, 0
  %30 = load i32, ptr %21, align 8, !tbaa !521
  %31 = sext i32 %30 to i64
  br i1 %29, label %32, label %45, !prof !943

32:                                               ; preds = %12
  %33 = load ptr, ptr @df, align 8, !tbaa !426
  %34 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !497
  %36 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 3
  %37 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !469
  %39 = getelementptr inbounds ptr, ptr %38, i64 %31
  %40 = load ptr, ptr %39, align 8, !tbaa !426
  %41 = getelementptr inbounds %struct.df_insn_info, ptr %40, i64 0, i32 1
  %42 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 3, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !869
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %80, label %65, !prof !945

45:                                               ; preds = %12
  %46 = and i32 %27, 262144
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr @df, align 8, !tbaa !426
  %49 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 4
  %50 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !469
  %52 = getelementptr inbounds ptr, ptr %51, i64 %31
  %53 = load ptr, ptr %52, align 8, !tbaa !426
  %54 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 4, i32 6
  %55 = load i32, ptr %54, align 4, !tbaa !869
  br i1 %47, label %60, label %56, !prof !946

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !499
  %59 = getelementptr inbounds %struct.df_insn_info, ptr %53, i64 0, i32 3
  switch i32 %55, label %80 [
    i32 2, label %65
    i32 4, label %65
    i32 6, label %65
  ], !prof !947

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !498
  %63 = getelementptr inbounds %struct.df_insn_info, ptr %53, i64 0, i32 2
  %64 = icmp eq i32 %55, 0
  br i1 %64, label %80, label %65, !prof !945

65:                                               ; preds = %56, %56, %56, %32, %60
  %66 = phi ptr [ %48, %60 ], [ %33, %32 ], [ %48, %56 ], [ %48, %56 ], [ %48, %56 ]
  %67 = phi ptr [ %62, %60 ], [ %35, %32 ], [ %58, %56 ], [ %58, %56 ], [ %58, %56 ]
  %68 = phi ptr [ %63, %60 ], [ %41, %32 ], [ %59, %56 ], [ %59, %56 ], [ %59, %56 ]
  %69 = phi ptr [ %49, %60 ], [ %36, %32 ], [ %49, %56 ], [ %49, %56 ], [ %49, %56 ]
  %70 = getelementptr inbounds %struct.df, ptr %66, i64 0, i32 28
  %71 = load i8, ptr %70, align 1, !tbaa !575
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %80, label %73, !prof !948

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.df, ptr %66, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !530
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !450
  %78 = tail call i32 @bitmap_bit_p(ptr noundef %75, i32 noundef %77) #21
  %79 = trunc i32 %78 to i8
  br label %80

80:                                               ; preds = %56, %32, %73, %65, %60
  %81 = phi ptr [ %67, %73 ], [ %67, %65 ], [ %62, %60 ], [ %35, %32 ], [ %58, %56 ]
  %82 = phi ptr [ %68, %73 ], [ %68, %65 ], [ %63, %60 ], [ %41, %32 ], [ %59, %56 ]
  %83 = phi ptr [ %69, %73 ], [ %69, %65 ], [ %49, %60 ], [ %36, %32 ], [ %49, %56 ]
  %84 = phi i8 [ %79, %73 ], [ 1, %65 ], [ 0, %60 ], [ 0, %32 ], [ 0, %56 ]
  %85 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 6
  %86 = load i32, ptr %85, align 8, !tbaa !521
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %81, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !426
  tail call fastcc void @df_install_ref(ptr noundef nonnull %26, ptr noundef %89, ptr noundef nonnull %83, i8 noundef zeroext %84) #22
  %90 = icmp eq i8 %84, 0
  br i1 %90, label %102, label %91, !prof !943

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.df_ref_info, ptr %83, i64 0, i32 6
  %93 = load i32, ptr %92, align 4, !tbaa !869
  %94 = add i32 %93, -2
  %95 = icmp ult i32 %94, 5
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = zext nneg i32 %94 to i64
  %98 = getelementptr inbounds [5 x i32], ptr @switch.table.df_ref_create, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4
  br label %100

100:                                              ; preds = %91, %96
  %101 = phi i32 [ %99, %96 ], [ 1, %91 ]
  store i32 %101, ptr %92, align 4, !tbaa !869
  br label %102

102:                                              ; preds = %100, %80
  %103 = load ptr, ptr %82, align 8, !tbaa !426
  %104 = load ptr, ptr %103, align 8, !tbaa !426
  %105 = icmp eq ptr %104, null
  br i1 %105, label %125, label %106, !prof !949

106:                                              ; preds = %102, %106
  %107 = phi i32 [ %109, %106 ], [ 0, %102 ]
  %108 = phi ptr [ %110, %106 ], [ %103, %102 ]
  %109 = add i32 %107, 1
  %110 = getelementptr inbounds ptr, ptr %108, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !426
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %106, !prof !950, !llvm.loop !951

113:                                              ; preds = %106
  %114 = icmp eq i32 %109, 0
  br i1 %114, label %125, label %115, !prof !952

115:                                              ; preds = %113
  %116 = add i32 %107, 3
  %117 = zext i32 %116 to i64
  %118 = shl nuw nsw i64 %117, 3
  %119 = tail call ptr @xrealloc(ptr noundef nonnull %103, i64 noundef %118) #21
  store ptr %119, ptr %82, align 8, !tbaa !426
  %120 = zext i32 %109 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  store ptr %26, ptr %121, align 8, !tbaa !426
  %122 = add i32 %107, 2
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds ptr, ptr %119, i64 %123
  store ptr null, ptr %124, align 8, !tbaa !426
  tail call void @spec_qsort(ptr noundef %119, i64 noundef %123, i64 noundef 8, ptr noundef nonnull @df_ref_compare) #21
  br label %128

125:                                              ; preds = %102, %113
  %126 = tail call ptr @xmalloc(i64 noundef 16) #21
  store ptr %26, ptr %126, align 8, !tbaa !426
  %127 = getelementptr inbounds ptr, ptr %126, i64 1
  store ptr null, ptr %127, align 8, !tbaa !426
  store ptr %126, ptr %82, align 8, !tbaa !426
  br label %128

128:                                              ; preds = %125, %115
  %129 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !521
  %131 = load ptr, ptr %130, align 8, !tbaa !578
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 7
  br i1 %134, label %136, label %135, !prof !943

135:                                              ; preds = %128
  tail call void @df_set_bb_dirty(ptr noundef %3) #21
  br label %136

136:                                              ; preds = %135, %128
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_ref_remove(ptr noundef %0) local_unnamed_addr #0 !prof !953 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65280
  %4 = icmp eq i32 %3, 0
  %5 = and i32 %2, 255
  %6 = icmp eq i32 %5, 1
  br i1 %4, label %7, label %27, !prof !954

7:                                                ; preds = %1
  br i1 %6, label %8, label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !521
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !450
  %13 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %12) #22
  tail call fastcc void @df_ref_compress_rec(ptr noundef %13, ptr noundef nonnull %0) #22
  br label %53

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !521
  %17 = load ptr, ptr %16, align 8, !tbaa !578
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !521
  %20 = load ptr, ptr @df, align 8, !tbaa !426
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !469
  %23 = zext i32 %19 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !426
  %26 = getelementptr inbounds %struct.df_insn_info, ptr %25, i64 0, i32 1
  tail call fastcc void @df_ref_compress_rec(ptr noundef nonnull %26, ptr noundef nonnull %0) #22
  br label %53

27:                                               ; preds = %1
  br i1 %6, label %28, label %35, !prof !954

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !521
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !450
  %33 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %32) #22
  %34 = getelementptr inbounds %struct.df_scan_bb_info, ptr %33, i64 0, i32 1
  tail call fastcc void @df_ref_compress_rec(ptr noundef nonnull %34, ptr noundef nonnull %0) #22
  br label %53

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !521
  %38 = load ptr, ptr %37, align 8, !tbaa !578
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !521
  %41 = load ptr, ptr @df, align 8, !tbaa !426
  %42 = getelementptr inbounds %struct.df, ptr %41, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !469
  %44 = zext i32 %40 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !426
  %47 = and i32 %2, 262144
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49, !prof !955

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.df_insn_info, ptr %46, i64 0, i32 3
  tail call fastcc void @df_ref_compress_rec(ptr noundef nonnull %50, ptr noundef nonnull %0) #22
  br label %53

51:                                               ; preds = %35
  %52 = getelementptr inbounds %struct.df_insn_info, ptr %46, i64 0, i32 2
  tail call fastcc void @df_ref_compress_rec(ptr noundef nonnull %52, ptr noundef nonnull %0) #22
  br label %53

53:                                               ; preds = %49, %51, %28, %8, %14
  %54 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !521
  %56 = load ptr, ptr %55, align 8, !tbaa !578
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 7
  br i1 %59, label %71, label %60, !prof !954

60:                                               ; preds = %53
  %61 = load i32, ptr %0, align 8
  %62 = and i32 %61, 255
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %66, !prof !954

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  br label %68

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 1
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi ptr [ %65, %64 ], [ %67, %66 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !521
  tail call void @df_set_bb_dirty(ptr noundef %70) #21
  br label %71

71:                                               ; preds = %68, %53
  tail call fastcc void @df_reg_chain_unlink(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_ref_compress_rec(ptr nocapture noundef %0, ptr noundef readnone %1) unnamed_addr #0 !prof !953 !PGOFuncName !956 {
  %3 = load ptr, ptr %0, align 8, !tbaa !426
  %4 = getelementptr inbounds ptr, ptr %3, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !426
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7, !prof !957

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %13, %7 ], [ %3, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !426
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %9, %1
  %12 = or i1 %10, %11
  %13 = getelementptr inbounds ptr, ptr %8, i64 1
  br i1 %12, label %14, label %7, !prof !958, !llvm.loop !959

14:                                               ; preds = %7
  br i1 %10, label %21, label %15, !prof !960

15:                                               ; preds = %14, %15
  %16 = phi ptr [ %17, %15 ], [ %8, %14 ]
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !426
  store ptr %18, ptr %16, align 8, !tbaa !426
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %15, !prof !961, !llvm.loop !962

20:                                               ; preds = %2
  tail call void @free(ptr noundef nonnull %3) #22
  store ptr @df_null_ref_rec, ptr %0, align 8, !tbaa !426
  br label %21

21:                                               ; preds = %15, %14, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @df_insn_create_insn_record(ptr noundef %0) local_unnamed_addr #0 !prof !963 {
  %2 = load ptr, ptr @df, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !426
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !430
  tail call void @df_grow_insn_info() #22
  %7 = load ptr, ptr @df, align 8, !tbaa !426
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !469
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !521
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !426
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %26, !prof !964

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.df_scan_problem_data, ptr %6, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !444
  %19 = tail call ptr @pool_alloc(ptr noundef %18) #21
  %20 = load ptr, ptr @df, align 8, !tbaa !426
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !469
  %23 = load i32, ptr %10, align 8, !tbaa !521
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  store ptr %19, ptr %25, align 8, !tbaa !426
  br label %26

26:                                               ; preds = %16, %1
  %27 = phi ptr [ %14, %1 ], [ %19, %16 ]
  %28 = getelementptr inbounds i8, ptr %27, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %28, i8 0, i64 40, i1 false)
  store ptr %0, ptr %27, align 8, !tbaa !578
  ret ptr %27
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_mw_hardreg_chain_delete(ptr noundef readonly %0) unnamed_addr #0 !prof !965 !PGOFuncName !966 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3, !prof !967

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !426
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6, !prof !968

6:                                                ; preds = %3
  %7 = load ptr, ptr @df, align 8, !tbaa !426
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !426
  %10 = getelementptr inbounds %struct.dataflow, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !430
  %12 = getelementptr inbounds %struct.df_scan_problem_data, ptr %11, i64 0, i32 6
  br label %13

13:                                               ; preds = %6, %13
  %14 = phi ptr [ %4, %6 ], [ %18, %13 ]
  %15 = phi ptr [ %0, %6 ], [ %17, %13 ]
  %16 = load ptr, ptr %12, align 8, !tbaa !446
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %14) #21
  %17 = getelementptr inbounds ptr, ptr %15, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !426
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !prof !969, !llvm.loop !970

20:                                               ; preds = %13, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @df_insn_rescan(ptr noundef %0) local_unnamed_addr #0 !prof !971 {
  %2 = alloca %struct.df_collection_rec, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !521
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !521
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %7 = load ptr, ptr @df, align 8, !tbaa !426
  %8 = icmp eq ptr %7, null
  br i1 %8, label %147, label %9, !prof !972

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = add nsw i32 %11, -7
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %147, !prof !973

14:                                               ; preds = %9
  %15 = icmp eq ptr %6, null
  br i1 %15, label %16, label %21, !prof !974

16:                                               ; preds = %14
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %18 = icmp eq ptr %17, null
  br i1 %18, label %147, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %17, ptr noundef nonnull @.str.33, i32 noundef %4) #22
  br label %147

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 27
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %147, !prof !975

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !426
  tail call void @df_grow_bb_info(ptr noundef %28) #21
  tail call void @df_grow_reg_info() #22
  %29 = load ptr, ptr @df, align 8, !tbaa !426
  %30 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 11
  %31 = load i32, ptr %30, align 8, !tbaa !468
  %32 = icmp ult i32 %4, %31
  br i1 %32, label %33, label %44, !prof !976

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !469
  %36 = zext i32 %4 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !426
  %39 = icmp eq ptr %38, null
  %40 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 27
  %41 = load i8, ptr %40, align 4
  %42 = and i8 %41, 32
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %75, label %49, !prof !977

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 27
  %46 = load i8, ptr %45, align 4
  %47 = and i8 %46, 32
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %75, label %50, !prof !977

49:                                               ; preds = %33
  br i1 %39, label %50, label %56, !prof !978

50:                                               ; preds = %44, %49
  %51 = tail call ptr @df_insn_create_insn_record(ptr noundef nonnull %0) #22
  %52 = getelementptr inbounds %struct.df_insn_info, ptr %51, i64 0, i32 1
  store ptr @df_null_ref_rec, ptr %52, align 8, !tbaa !471
  %53 = getelementptr inbounds %struct.df_insn_info, ptr %51, i64 0, i32 2
  store ptr @df_null_ref_rec, ptr %53, align 8, !tbaa !475
  %54 = getelementptr inbounds %struct.df_insn_info, ptr %51, i64 0, i32 3
  store ptr @df_null_ref_rec, ptr %54, align 8, !tbaa !477
  %55 = getelementptr inbounds %struct.df_insn_info, ptr %51, i64 0, i32 4
  store ptr @df_null_mw_rec, ptr %55, align 8, !tbaa !479
  br label %56

56:                                               ; preds = %50, %49
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59, !prof !979

59:                                               ; preds = %56
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %57, ptr noundef nonnull @.str.34, i32 noundef %4) #22
  br label %61

61:                                               ; preds = %59, %56
  %62 = load ptr, ptr @df, align 8, !tbaa !426
  %63 = getelementptr inbounds %struct.df, ptr %62, i64 0, i32 18
  %64 = load ptr, ptr %63, align 8, !tbaa !463
  %65 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %64, i32 noundef %4) #21
  %66 = load ptr, ptr @df, align 8, !tbaa !426
  %67 = getelementptr inbounds %struct.df, ptr %66, i64 0, i32 20
  %68 = load ptr, ptr %67, align 8, !tbaa !465
  %69 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %68, i32 noundef %4) #21
  %70 = load ptr, ptr @df, align 8, !tbaa !426
  %71 = getelementptr inbounds %struct.df, ptr %70, i64 0, i32 19
  %72 = load ptr, ptr %71, align 8, !tbaa !464
  %73 = load i32, ptr %3, align 8, !tbaa !521
  %74 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %72, i32 noundef %73) #21
  br label %147

75:                                               ; preds = %44, %33
  %76 = phi i1 [ true, %44 ], [ %39, %33 ]
  %77 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 128) #22, !range !640
  %78 = alloca i8, i64 %77, align 16
  %79 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 128, ptr noundef nonnull %78) #22
  store ptr %79, ptr %2, align 8, !tbaa !641
  %80 = call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 32) #22, !range !640
  %81 = alloca i8, i64 %80, align 16
  %82 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %81) #22
  %83 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 1
  store ptr %82, ptr %83, align 8, !tbaa !659
  %84 = alloca i8, i64 %80, align 16
  %85 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %84) #22
  %86 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 2
  store ptr %85, ptr %86, align 8, !tbaa !665
  %87 = alloca [264 x i8], align 16
  %88 = call fastcc ptr @VEC_df_mw_hardreg_ptr_stack_alloc1(ptr noundef nonnull %87) #22
  %89 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 3
  store ptr %88, ptr %89, align 8, !tbaa !666
  %90 = load ptr, ptr @df, align 8, !tbaa !426
  %91 = getelementptr inbounds %struct.df, ptr %90, i64 0, i32 18
  %92 = load ptr, ptr %91, align 8, !tbaa !463
  %93 = call zeroext i8 @bitmap_clear_bit(ptr noundef %92, i32 noundef %4) #21
  %94 = load ptr, ptr @df, align 8, !tbaa !426
  %95 = getelementptr inbounds %struct.df, ptr %94, i64 0, i32 19
  %96 = load ptr, ptr %95, align 8, !tbaa !464
  %97 = call zeroext i8 @bitmap_clear_bit(ptr noundef %96, i32 noundef %4) #21
  %98 = load ptr, ptr @df, align 8, !tbaa !426
  %99 = getelementptr inbounds %struct.df, ptr %98, i64 0, i32 20
  %100 = load ptr, ptr %99, align 8, !tbaa !465
  %101 = call zeroext i8 @bitmap_clear_bit(ptr noundef %100, i32 noundef %4) #21
  br i1 %76, label %134, label %102, !prof !980

102:                                              ; preds = %75
  %103 = call fastcc zeroext i8 @df_insn_refs_verify(ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %0, i8 noundef zeroext 0) #22, !range !680
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %110, label %105, !prof !981

105:                                              ; preds = %102
  call fastcc void @df_free_collection_rec(ptr noundef nonnull %2) #22
  %106 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %107 = icmp eq ptr %106, null
  br i1 %107, label %147, label %108, !prof !982

108:                                              ; preds = %105
  %109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %106, ptr noundef nonnull @.str.35, i32 noundef %4) #22
  br label %147

110:                                              ; preds = %102
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113, !prof !983

113:                                              ; preds = %110
  %114 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %111, ptr noundef nonnull @.str.36, i32 noundef %4) #22
  br label %115

115:                                              ; preds = %110, %113
  %116 = load ptr, ptr @df, align 8, !tbaa !426
  %117 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 10
  %118 = load ptr, ptr %117, align 8, !tbaa !469
  %119 = load i32, ptr %3, align 8, !tbaa !521
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %118, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !426
  %123 = getelementptr inbounds %struct.df_insn_info, ptr %122, i64 0, i32 5
  %124 = load i32, ptr %123, align 8, !tbaa !671
  call void @df_insn_delete(ptr noundef null, i32 noundef %4) #22
  %125 = call ptr @df_insn_create_insn_record(ptr noundef nonnull %0) #22
  %126 = load ptr, ptr @df, align 8, !tbaa !426
  %127 = getelementptr inbounds %struct.df, ptr %126, i64 0, i32 10
  %128 = load ptr, ptr %127, align 8, !tbaa !469
  %129 = load i32, ptr %3, align 8, !tbaa !521
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %128, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !426
  %133 = getelementptr inbounds %struct.df_insn_info, ptr %132, i64 0, i32 5
  store i32 %124, ptr %133, align 8, !tbaa !671
  br label %140

134:                                              ; preds = %75
  %135 = call ptr @df_insn_create_insn_record(ptr noundef nonnull %0) #22
  call fastcc void @df_insn_refs_collect(ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef %135) #22
  %136 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138, !prof !984

138:                                              ; preds = %134
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %136, ptr noundef nonnull @.str.37, i32 noundef %4) #22
  br label %140

140:                                              ; preds = %115, %134, %138
  call fastcc void @df_refs_add_to_chains(ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %0) #22
  %141 = load i32, ptr %0, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 7
  br i1 %143, label %144, label %145, !prof !985

144:                                              ; preds = %140
  call void @df_set_bb_dirty_nonlr(ptr noundef nonnull %6) #21
  br label %146

145:                                              ; preds = %140
  call void @df_set_bb_dirty(ptr noundef nonnull %6) #21
  br label %146

146:                                              ; preds = %145, %144
  call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %2) #22
  call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %83) #22
  call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %86) #22
  call fastcc void @VEC_df_mw_hardreg_ptr_stack_free(ptr noundef nonnull %89) #22
  br label %147

147:                                              ; preds = %108, %105, %9, %21, %16, %19, %1, %146, %61
  %148 = phi i8 [ 0, %61 ], [ 1, %146 ], [ 0, %9 ], [ 0, %1 ], [ 0, %19 ], [ 0, %16 ], [ 0, %21 ], [ 0, %105 ], [ 0, %108 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret i8 %148
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_df_mw_hardreg_ptr_stack_alloc1(ptr noundef %0) unnamed_addr #0 !prof !986 !PGOFuncName !987 {
  %2 = tail call ptr @vec_stack_p_reserve_exact_1(i32 noundef 32, ptr noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @df_insn_refs_verify(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !988 !PGOFuncName !989 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !521
  %7 = load ptr, ptr @df, align 8, !tbaa !426
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !469
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !426
  tail call fastcc void @df_insn_refs_collect(ptr noundef %0, ptr noundef %1, ptr noundef %12) #22
  %13 = load ptr, ptr @df, align 8, !tbaa !426
  %14 = getelementptr inbounds %struct.df, ptr %13, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !469
  %16 = zext i32 %6 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !426
  %19 = getelementptr inbounds %struct.df_insn_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !471
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %32, !prof !990

22:                                               ; preds = %4
  %23 = icmp eq i8 %3, 0
  br i1 %23, label %72, label %24

24:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4512, ptr noundef nonnull @.str.9) #21
  %25 = load ptr, ptr @df, align 8, !tbaa !426
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !469
  %28 = getelementptr inbounds ptr, ptr %27, i64 %16
  %29 = load ptr, ptr %28, align 8, !tbaa !426
  %30 = getelementptr inbounds %struct.df_insn_info, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !471
  br label %32

32:                                               ; preds = %24, %4
  %33 = phi ptr [ %31, %24 ], [ %20, %4 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !641
  %35 = tail call fastcc zeroext i8 @df_refs_verify(ptr noundef %34, ptr noundef %33, i8 noundef zeroext %3) #22, !range !680
  %36 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !659
  %38 = load ptr, ptr @df, align 8, !tbaa !426
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !469
  %41 = getelementptr inbounds ptr, ptr %40, i64 %16
  %42 = load ptr, ptr %41, align 8, !tbaa !426
  %43 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !475
  %45 = tail call fastcc zeroext i8 @df_refs_verify(ptr noundef %37, ptr noundef %44, i8 noundef zeroext %3) #22, !range !680
  %46 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !665
  %48 = load ptr, ptr @df, align 8, !tbaa !426
  %49 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !469
  %51 = getelementptr inbounds ptr, ptr %50, i64 %16
  %52 = load ptr, ptr %51, align 8, !tbaa !426
  %53 = getelementptr inbounds %struct.df_insn_info, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !477
  %55 = tail call fastcc zeroext i8 @df_refs_verify(ptr noundef %47, ptr noundef %54, i8 noundef zeroext %3) #22, !range !680
  %56 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !666
  %58 = load ptr, ptr @df, align 8, !tbaa !426
  %59 = getelementptr inbounds %struct.df, ptr %58, i64 0, i32 10
  %60 = load ptr, ptr %59, align 8, !tbaa !469
  %61 = getelementptr inbounds ptr, ptr %60, i64 %16
  %62 = load ptr, ptr %61, align 8, !tbaa !426
  %63 = getelementptr inbounds %struct.df_insn_info, ptr %62, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !479
  %65 = tail call fastcc zeroext i8 @df_mws_verify(ptr noundef %57, ptr noundef %64, i8 noundef zeroext %3) #22, !range !680
  %66 = icmp ne i8 %35, 0
  %67 = icmp ne i8 %45, 0
  %68 = select i1 %66, i1 %67, i1 false
  %69 = icmp ne i8 %55, 0
  %70 = select i1 %68, i1 %69, i1 false
  %71 = select i1 %70, i8 %65, i8 0, !prof !991
  br label %72

72:                                               ; preds = %22, %32
  %73 = phi i8 [ %71, %32 ], [ 0, %22 ]
  ret i8 %73
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_free_collection_rec(ptr nocapture noundef %0) unnamed_addr #0 !prof !992 !PGOFuncName !993 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @df, align 8, !tbaa !426
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !426
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !430
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %9 = load ptr, ptr %0, align 8, !tbaa !641
  %10 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %2) #22, !range !873
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17, !prof !994

12:                                               ; preds = %17, %1
  %13 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !659
  %15 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %2) #22, !range !873
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %29, !prof !994

17:                                               ; preds = %1, %17
  %18 = phi i32 [ %20, %17 ], [ 0, %1 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !426
  tail call fastcc void @df_free_ref(ptr noundef %19) #22
  %20 = add i32 %18, 1
  %21 = load ptr, ptr %0, align 8, !tbaa !641
  %22 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %21, i32 noundef %20, ptr noundef nonnull %2) #22, !range !873
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %12, label %17, !prof !995, !llvm.loop !996

24:                                               ; preds = %29, %12
  %25 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !665
  %27 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %2) #22, !range !873
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %43, !prof !997

29:                                               ; preds = %12, %29
  %30 = phi i32 [ %32, %29 ], [ 0, %12 ]
  %31 = load ptr, ptr %2, align 8, !tbaa !426
  tail call fastcc void @df_free_ref(ptr noundef %31) #22
  %32 = add i32 %30, 1
  %33 = load ptr, ptr %13, align 8, !tbaa !659
  %34 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %33, i32 noundef %32, ptr noundef nonnull %2) #22, !range !873
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %24, label %29, !prof !998, !llvm.loop !999

36:                                               ; preds = %43, %24
  %37 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !666
  %39 = call fastcc i32 @VEC_df_mw_hardreg_ptr_base_iterate(ptr noundef %38, i32 noundef 0, ptr noundef nonnull %3) #22, !range !873
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %58, label %41, !prof !1000

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.df_scan_problem_data, ptr %8, i64 0, i32 6
  br label %50

43:                                               ; preds = %24, %43
  %44 = phi i32 [ %46, %43 ], [ 0, %24 ]
  %45 = load ptr, ptr %2, align 8, !tbaa !426
  tail call fastcc void @df_free_ref(ptr noundef %45) #22
  %46 = add i32 %44, 1
  %47 = load ptr, ptr %25, align 8, !tbaa !665
  %48 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %47, i32 noundef %46, ptr noundef nonnull %2) #22, !range !873
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %36, label %43, !prof !1001, !llvm.loop !1002

50:                                               ; preds = %41, %50
  %51 = phi i32 [ 0, %41 ], [ %54, %50 ]
  %52 = load ptr, ptr %42, align 8, !tbaa !446
  %53 = load ptr, ptr %3, align 8, !tbaa !426
  tail call void @pool_free(ptr noundef %52, ptr noundef %53) #21
  %54 = add i32 %51, 1
  %55 = load ptr, ptr %37, align 8, !tbaa !666
  %56 = call fastcc i32 @VEC_df_mw_hardreg_ptr_base_iterate(ptr noundef %55, i32 noundef %54, ptr noundef nonnull %3) #22, !range !873
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %50, !prof !1003, !llvm.loop !1004

58:                                               ; preds = %50, %36
  tail call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %0) #22
  tail call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %13) #22
  tail call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %25) #22
  tail call fastcc void @VEC_df_mw_hardreg_ptr_stack_free(ptr noundef nonnull %37) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_insn_refs_collect(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1005 !PGOFuncName !1006 {
  %4 = load ptr, ptr %2, align 8, !tbaa !578
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !521
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 14
  %10 = load ptr, ptr %0, align 8, !tbaa !641
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %10, i32 noundef 0) #22
  %11 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !659
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %12, i32 noundef 0) #22
  %13 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !665
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %14, i32 noundef 0) #22
  %15 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !666
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_truncate(ptr noundef %16, i32 noundef 0) #22
  %17 = load ptr, ptr %2, align 8, !tbaa !578
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !521
  tail call fastcc void @df_defs_record(ptr noundef nonnull %0, ptr noundef %19, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0) #22
  %20 = load ptr, ptr %2, align 8, !tbaa !578
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 1, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !521
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24, !prof !1007

24:                                               ; preds = %3, %38
  %25 = phi ptr [ %40, %38 ], [ %22, %3 ]
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 16
  %28 = trunc i32 %27 to i8
  switch i8 %28, label %38 [
    i8 3, label %29
    i8 4, label %29
    i8 28, label %31
  ], !prof !1008

29:                                               ; preds = %24, %24
  %30 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  tail call fastcc void @df_uses_record(i32 noundef 2, ptr noundef nonnull %0, ptr noundef nonnull %30, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 4, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %38

31:                                               ; preds = %24
  %32 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !426
  %33 = getelementptr inbounds ptr, ptr %32, i64 20
  %34 = load ptr, ptr %33, align 8, !tbaa !426
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %34, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  %35 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !426
  %36 = getelementptr inbounds ptr, ptr %35, i64 6
  %37 = load ptr, ptr %36, align 8, !tbaa !426
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %37, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %38

38:                                               ; preds = %29, %31, %24
  %39 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !521
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %24, !prof !1009, !llvm.loop !1010

42:                                               ; preds = %38
  %43 = load ptr, ptr %2, align 8, !tbaa !578
  br label %44

44:                                               ; preds = %42, %3
  %45 = phi ptr [ %43, %42 ], [ %20, %3 ]
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %52, !prof !1011

49:                                               ; preds = %44
  %50 = zext i1 %9 to i32
  tail call fastcc void @df_get_call_refs(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %50) #22
  %51 = load ptr, ptr %2, align 8, !tbaa !578
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi ptr [ %51, %49 ], [ %45, %44 ]
  %54 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 1
  tail call fastcc void @df_uses_record(i32 noundef 2, ptr noundef nonnull %0, ptr noundef nonnull %54, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br i1 %9, label %55, label %56, !prof !1012

55:                                               ; preds = %52
  tail call fastcc void @df_get_conditional_uses(ptr noundef nonnull %0) #22
  br label %56

56:                                               ; preds = %55, %52
  tail call fastcc void @df_canonize_collection_rec(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: optsize
declare void @df_set_bb_dirty_nonlr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_stack_free(ptr nocapture noundef %0) unnamed_addr #0 !prof !986 !PGOFuncName !1013 {
  %2 = load ptr, ptr %0, align 8, !tbaa !426
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1014

4:                                                ; preds = %1
  tail call void @vec_stack_free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !426
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @df_refs_verify(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !1015 !PGOFuncName !1016 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %5 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #22, !range !873
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7, !prof !1017

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  br label %9

9:                                                ; preds = %7, %33
  %10 = phi i32 [ 0, %7 ], [ %35, %33 ]
  %11 = phi ptr [ %1, %7 ], [ %34, %33 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !426
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14, !prof !1018

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8, !tbaa !426
  %16 = tail call fastcc zeroext i8 @df_ref_equal_p(ptr noundef %15, ptr noundef nonnull %12) #22, !range !680
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20, !prof !1019

18:                                               ; preds = %14, %9
  br i1 %8, label %47, label %19, !prof !1020

19:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4431, ptr noundef nonnull @.str.9) #21
  br label %21

20:                                               ; preds = %14
  br i1 %8, label %33, label %21, !prof !1021

21:                                               ; preds = %19, %20
  %22 = load ptr, ptr %11, align 8, !tbaa !426
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 1073741824
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4440, ptr noundef nonnull @.str.9) #21
  %27 = load ptr, ptr %11, align 8, !tbaa !426
  %28 = load i32, ptr %27, align 8
  br label %29

29:                                               ; preds = %21, %26
  %30 = phi i32 [ %23, %21 ], [ %28, %26 ]
  %31 = phi ptr [ %22, %21 ], [ %27, %26 ]
  %32 = and i32 %30, -1073741825
  store i32 %32, ptr %31, align 8
  br label %33

33:                                               ; preds = %29, %20
  %34 = getelementptr inbounds ptr, ptr %11, i64 1
  %35 = add i32 %10, 1
  %36 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %0, i32 noundef %35, ptr noundef nonnull %4) #22, !range !873
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %9, !prof !1022, !llvm.loop !1023

38:                                               ; preds = %33, %3
  %39 = phi ptr [ %1, %3 ], [ %34, %33 ]
  %40 = icmp eq i8 %2, 0
  %41 = load ptr, ptr %39, align 8, !tbaa !426
  %42 = icmp eq ptr %41, null
  br i1 %40, label %45, label %43, !prof !1024

43:                                               ; preds = %38
  br i1 %42, label %47, label %44

44:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4448, ptr noundef nonnull @.str.9) #21
  br label %47

45:                                               ; preds = %38
  %46 = zext i1 %42 to i8
  br label %47

47:                                               ; preds = %18, %44, %43, %45
  %48 = phi i8 [ %46, %45 ], [ 0, %43 ], [ 0, %44 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret i8 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @df_mws_verify(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !988 !PGOFuncName !1025 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %5 = call fastcc i32 @VEC_df_mw_hardreg_ptr_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #22, !range !873
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7, !prof !1026

7:                                                ; preds = %3, %19
  %8 = phi i32 [ %21, %19 ], [ 0, %3 ]
  %9 = phi ptr [ %20, %19 ], [ %1, %3 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !426
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !1027

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 8, !tbaa !426
  %14 = tail call fastcc zeroext i8 @df_mw_equal_p(ptr noundef %13, ptr noundef nonnull %10) #22, !range !680
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19, !prof !1027

16:                                               ; preds = %12, %7
  %17 = icmp eq i8 %2, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4470, ptr noundef nonnull @.str.9) #21
  br label %19

19:                                               ; preds = %18, %12
  %20 = getelementptr inbounds ptr, ptr %9, i64 1
  %21 = add i32 %8, 1
  %22 = call fastcc i32 @VEC_df_mw_hardreg_ptr_base_iterate(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %4) #22, !range !873
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %7, !prof !1028, !llvm.loop !1029

24:                                               ; preds = %19, %3
  %25 = phi ptr [ %1, %3 ], [ %20, %19 ]
  %26 = icmp eq i8 %2, 0
  %27 = load ptr, ptr %25, align 8, !tbaa !426
  %28 = icmp eq ptr %27, null
  br i1 %26, label %31, label %29, !prof !1030

29:                                               ; preds = %24
  br i1 %28, label %33, label %30

30:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4478, ptr noundef nonnull @.str.9) #21
  br label %33

31:                                               ; preds = %24
  %32 = zext i1 %28 to i8
  br label %33

33:                                               ; preds = %16, %30, %29, %31
  %34 = phi i8 [ %32, %31 ], [ 0, %29 ], [ 0, %30 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret i8 %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_df_mw_hardreg_ptr_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 !prof !1031 !PGOFuncName !1032 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1033

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !765
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1034

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !426
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !426
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_defs_record(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !1035 !PGOFuncName !1036 {
  br label %6

6:                                                ; preds = %16, %5
  %7 = phi ptr [ %1, %5 ], [ %18, %16 ]
  %8 = phi i32 [ %4, %5 ], [ 1, %16 ]
  %9 = load i32, ptr %7, align 8
  %10 = trunc i32 %9 to i16
  switch i16 %10, label %33 [
    i16 25, label %11
    i16 23, label %11
    i16 14, label %16
    i16 15, label %19
  ], !prof !1037

11:                                               ; preds = %6, %6
  %12 = and i32 %9, 65535
  %13 = icmp eq i32 %12, 25
  %14 = select i1 %13, i32 128, i32 0
  %15 = or i32 %14, %8
  tail call fastcc void @df_def_record_1(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3, i32 noundef %15) #22
  br label %33

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !521
  br label %6

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !521
  %22 = load i32, ptr %21, align 8, !tbaa !1038
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %33, !prof !1040

24:                                               ; preds = %19
  %25 = zext nneg i32 %22 to i64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ %25, %24 ], [ %28, %26 ]
  %28 = add nsw i64 %27, -1
  %29 = load ptr, ptr %20, align 8, !tbaa !521
  %30 = getelementptr inbounds %struct.rtvec_def, ptr %29, i64 0, i32 1, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !426
  tail call fastcc void @df_defs_record(ptr noundef %0, ptr noundef %31, ptr noundef %2, ptr noundef %3, i32 noundef %8) #22
  %32 = icmp ugt i64 %27, 1
  br i1 %32, label %26, label %33, !prof !1041, !llvm.loop !1042

33:                                               ; preds = %6, %26, %19, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_uses_record(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 !prof !1043 !PGOFuncName !1044 {
  %11 = load ptr, ptr %2, align 8, !tbaa !426
  %12 = icmp eq ptr %11, null
  br i1 %12, label %208, label %13, !prof !1045

13:                                               ; preds = %10, %36
  %14 = phi ptr [ %44, %36 ], [ %11, %10 ]
  %15 = phi i32 [ %43, %36 ], [ %9, %10 ]
  %16 = phi i32 [ %42, %36 ], [ %8, %10 ]
  %17 = phi i32 [ %41, %36 ], [ %7, %10 ]
  %18 = phi i32 [ %40, %36 ], [ %6, %10 ]
  %19 = phi i32 [ %39, %36 ], [ %3, %10 ]
  %20 = phi ptr [ %38, %36 ], [ %2, %10 ]
  %21 = phi i32 [ %37, %36 ], [ %0, %10 ]
  br label %22

22:                                               ; preds = %13, %205
  %23 = phi ptr [ %14, %13 ], [ %206, %205 ]
  %24 = phi ptr [ %20, %13 ], [ %178, %205 ]
  %25 = load i32, ptr %23, align 8
  %26 = and i32 %25, 65535
  %27 = trunc i32 %25 to i16
  switch i16 %27, label %170 [
    i16 44, label %208
    i16 45, label %208
    i16 30, label %208
    i16 35, label %208
    i16 32, label %208
    i16 31, label %208
    i16 33, label %208
    i16 36, label %208
    i16 46, label %208
    i16 20, label %208
    i16 21, label %208
    i16 25, label %28
    i16 43, label %46
    i16 39, label %49
    i16 37, label %56
    i16 119, label %58
    i16 120, label %58
    i16 23, label %85
    i16 79, label %160
    i16 17, label %142
    i16 19, label %142
    i16 29, label %142
    i16 16, label %142
    i16 138, label %158
    i16 74, label %160
    i16 76, label %160
    i16 75, label %160
    i16 77, label %160
    i16 78, label %160
  ], !prof !1046

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !521
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 43
  br i1 %33, label %34, label %208, !prof !1047

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  br label %36

36:                                               ; preds = %109, %103, %81, %83, %34, %46, %98, %101, %137, %139, %158, %49, %124
  %37 = phi i32 [ %21, %34 ], [ %21, %46 ], [ %21, %98 ], [ %21, %101 ], [ 3, %137 ], [ %21, %139 ], [ %21, %158 ], [ %21, %49 ], [ 3, %124 ], [ 3, %83 ], [ 3, %81 ], [ %21, %103 ], [ %21, %109 ]
  %38 = phi ptr [ %35, %34 ], [ %47, %46 ], [ %99, %98 ], [ %102, %101 ], [ %138, %137 ], [ %112, %139 ], [ %159, %158 ], [ %51, %49 ], [ %112, %124 ], [ %71, %83 ], [ %71, %81 ], [ %104, %103 ], [ %110, %109 ]
  %39 = phi i32 [ 3, %34 ], [ 2, %46 ], [ 1, %98 ], [ 3, %101 ], [ 3, %137 ], [ 1, %139 ], [ 1, %158 ], [ %19, %49 ], [ 1, %124 ], [ %19, %83 ], [ %19, %81 ], [ 1, %103 ], [ 1, %109 ]
  %40 = phi i32 [ %18, %34 ], [ %48, %46 ], [ %100, %98 ], [ %18, %101 ], [ 512, %137 ], [ 544, %139 ], [ %18, %158 ], [ %50, %49 ], [ 544, %124 ], [ %84, %83 ], [ %82, %81 ], [ 1056, %103 ], [ 1056, %109 ]
  %41 = phi i32 [ %17, %34 ], [ %17, %46 ], [ %17, %98 ], [ %17, %101 ], [ %127, %137 ], [ %17, %139 ], [ %17, %158 ], [ %17, %49 ], [ %127, %124 ], [ %74, %83 ], [ %74, %81 ], [ %17, %103 ], [ %17, %109 ]
  %42 = phi i32 [ %16, %34 ], [ %16, %46 ], [ %16, %98 ], [ %16, %101 ], [ %130, %137 ], [ %16, %139 ], [ %16, %158 ], [ %16, %49 ], [ %130, %124 ], [ %77, %83 ], [ %77, %81 ], [ %16, %103 ], [ %16, %109 ]
  %43 = phi i32 [ %15, %34 ], [ %15, %46 ], [ %15, %98 ], [ %15, %101 ], [ %132, %137 ], [ %15, %139 ], [ %15, %158 ], [ %15, %49 ], [ %132, %124 ], [ %79, %83 ], [ %79, %81 ], [ %15, %103 ], [ %15, %109 ]
  %44 = load ptr, ptr %38, align 8, !tbaa !426
  %45 = icmp eq ptr %44, null
  br i1 %45, label %208, label %13, !prof !1048

46:                                               ; preds = %22
  %47 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %48 = and i32 %18, 4
  br label %36

49:                                               ; preds = %22
  %50 = or i32 %18, 16
  %51 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !521
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 37
  br i1 %55, label %56, label %36, !prof !1049

56:                                               ; preds = %49, %22
  %57 = phi i32 [ %18, %22 ], [ %50, %49 ]
  tail call fastcc void @df_ref_record(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef %4, ptr noundef %5, i32 noundef %19, i32 noundef %57, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  br label %208

58:                                               ; preds = %22, %22
  %59 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !521
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 30
  br i1 %63, label %64, label %170, !prof !1050

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %66 = load ptr, ptr %65, align 8, !tbaa !521
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 30
  br i1 %69, label %70, label %170, !prof !1051

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %72 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !521
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !521
  %77 = trunc i64 %76 to i32
  %78 = lshr i32 %25, 16
  %79 = and i32 %78, 255
  %80 = icmp eq i32 %26, 120
  br i1 %80, label %81, label %83, !prof !1052

81:                                               ; preds = %70
  %82 = or i32 %18, 512
  br label %36

83:                                               ; preds = %70
  %84 = or i32 %18, 256
  br label %36

85:                                               ; preds = %22
  %86 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !521
  %88 = and i32 %18, 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90, !prof !1053

90:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3229, ptr noundef nonnull @.str.9) #21
  br label %91

91:                                               ; preds = %85, %90
  %92 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call fastcc void @df_uses_record(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %92, i32 noundef 1, ptr noundef %4, ptr noundef %5, i32 noundef %18, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  %93 = load i32, ptr %87, align 8
  %94 = trunc i32 %93 to i16
  switch i16 %94, label %141 [
    i16 39, label %95
    i16 37, label %208
    i16 15, label %208
    i16 38, label %208
    i16 36, label %208
    i16 46, label %208
    i16 43, label %101
    i16 40, label %103
    i16 120, label %111
  ], !prof !1054

95:                                               ; preds = %91
  %96 = tail call zeroext i8 @df_read_modify_subreg_p(ptr noundef nonnull %87) #22, !range !680
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %208, label %98, !prof !1055

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %100 = or i32 %18, 2080
  br label %36

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  br label %36

103:                                              ; preds = %91
  %104 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !521
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 39
  br i1 %108, label %109, label %36, !prof !1056

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  br label %36

111:                                              ; preds = %91
  %112 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %113 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !521
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 30
  br i1 %117, label %118, label %139, !prof !1057

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 2
  %120 = load ptr, ptr %119, align 8, !tbaa !521
  %121 = load i32, ptr %120, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 30
  br i1 %123, label %124, label %139, !prof !1057

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %126 = load i64, ptr %125, align 8, !tbaa !521
  %127 = trunc i64 %126 to i32
  %128 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !521
  %130 = trunc i64 %129 to i32
  %131 = lshr i32 %93, 16
  %132 = and i32 %131, 255
  %133 = load ptr, ptr %112, align 8, !tbaa !521
  %134 = load i32, ptr %133, align 8
  %135 = and i32 %134, 65535
  %136 = icmp eq i32 %135, 43
  br i1 %136, label %137, label %36, !prof !1058

137:                                              ; preds = %124
  %138 = getelementptr inbounds %struct.rtx_def, ptr %133, i64 0, i32 1
  br label %36

139:                                              ; preds = %118, %111
  tail call fastcc void @df_uses_record(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %113, i32 noundef 1, ptr noundef %4, ptr noundef %5, i32 noundef %18, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  %140 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call fastcc void @df_uses_record(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %140, i32 noundef 1, ptr noundef %4, ptr noundef %5, i32 noundef %18, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  br label %36

141:                                              ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3314, ptr noundef nonnull @.str.9) #21
  br label %208

142:                                              ; preds = %22, %22, %22, %22
  %143 = icmp eq i32 %26, 17
  br i1 %143, label %144, label %170

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !521
  %147 = load i32, ptr %146, align 8, !tbaa !1038
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %208

149:                                              ; preds = %144, %149
  %150 = phi i64 [ %153, %149 ], [ 0, %144 ]
  %151 = phi ptr [ %154, %149 ], [ %146, %144 ]
  %152 = getelementptr inbounds %struct.rtvec_def, ptr %151, i64 0, i32 1, i64 %150
  tail call fastcc void @df_uses_record(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %152, i32 noundef 1, ptr noundef %4, ptr noundef %5, i32 noundef %18, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  %153 = add nuw nsw i64 %150, 1
  %154 = load ptr, ptr %145, align 8, !tbaa !521
  %155 = load i32, ptr %154, align 8, !tbaa !1038
  %156 = sext i32 %155 to i64
  %157 = icmp slt i64 %153, %156
  br i1 %157, label %149, label %208, !llvm.loop !1059

158:                                              ; preds = %22
  %159 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %36

160:                                              ; preds = %22, %22, %22, %22, %22, %22
  %161 = load ptr, ptr %5, align 8, !tbaa !578
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 65535
  %164 = icmp eq i32 %163, 7
  br i1 %164, label %165, label %166, !prof !1060

165:                                              ; preds = %160
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3379, ptr noundef nonnull @.str.9) #21
  br label %166

166:                                              ; preds = %160, %165
  %167 = or i32 %18, 32800
  %168 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !521
  tail call fastcc void @df_ref_record(i32 noundef %21, ptr noundef %1, ptr noundef %169, ptr noundef nonnull %168, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %167, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  br label %170

170:                                              ; preds = %166, %22, %142, %58, %64
  %171 = zext nneg i32 %26 to i64
  %172 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !426
  %174 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %171
  %175 = load i8, ptr %174, align 1, !tbaa !521
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %208, label %177, !prof !1061

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %179 = zext i8 %175 to i64
  br label %180

180:                                              ; preds = %177, %203
  %181 = phi i64 [ %179, %177 ], [ %182, %203 ]
  %182 = add nsw i64 %181, -1
  %183 = getelementptr inbounds i8, ptr %173, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !521
  switch i8 %184, label %203 [
    i8 101, label %190
    i8 69, label %185
  ], !prof !1062

185:                                              ; preds = %180
  %186 = getelementptr inbounds [1 x %union.rtunion_def], ptr %178, i64 0, i64 %182
  %187 = load ptr, ptr %186, align 8, !tbaa !521
  %188 = load i32, ptr %187, align 8, !tbaa !1038
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %194, label %203, !prof !1063

190:                                              ; preds = %180
  %191 = icmp eq i64 %182, 0
  br i1 %191, label %205, label %192, !prof !1064

192:                                              ; preds = %190
  %193 = getelementptr inbounds [1 x %union.rtunion_def], ptr %178, i64 0, i64 %182
  tail call fastcc void @df_uses_record(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %193, i32 noundef %19, ptr noundef %4, ptr noundef %5, i32 noundef %18, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  br label %203

194:                                              ; preds = %185, %194
  %195 = phi i64 [ %198, %194 ], [ 0, %185 ]
  %196 = phi ptr [ %199, %194 ], [ %187, %185 ]
  %197 = getelementptr inbounds %struct.rtvec_def, ptr %196, i64 0, i32 1, i64 %195
  tail call fastcc void @df_uses_record(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %197, i32 noundef %19, ptr noundef %4, ptr noundef %5, i32 noundef %18, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  %198 = add nuw nsw i64 %195, 1
  %199 = load ptr, ptr %186, align 8, !tbaa !521
  %200 = load i32, ptr %199, align 8, !tbaa !1038
  %201 = sext i32 %200 to i64
  %202 = icmp slt i64 %198, %201
  br i1 %202, label %194, label %203, !prof !1065, !llvm.loop !1066

203:                                              ; preds = %194, %185, %180, %192
  %204 = icmp sgt i64 %181, 1
  br i1 %204, label %180, label %208, !prof !1067, !llvm.loop !1068

205:                                              ; preds = %190
  %206 = load ptr, ptr %178, align 8, !tbaa !426
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %22, !prof !1069

208:                                              ; preds = %95, %91, %91, %91, %91, %91, %28, %36, %205, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %170, %203, %149, %10, %144, %141, %56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_get_call_refs(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !1070 !PGOFuncName !1071 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %9 = load ptr, ptr %0, align 8, !tbaa !641
  %10 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %7) #22, !range !873
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12, !prof !1072

12:                                               ; preds = %4, %12
  %13 = phi i32 [ %18, %12 ], [ 0, %4 ]
  %14 = load ptr, ptr %7, align 8, !tbaa !426
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %14, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !521
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %8, i32 noundef %16) #21
  %18 = add i32 %13, 1
  %19 = load ptr, ptr %0, align 8, !tbaa !641
  %20 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %19, i32 noundef %18, ptr noundef nonnull %7) #22, !range !873
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %12, !prof !1073, !llvm.loop !1074

22:                                               ; preds = %12, %4
  %23 = load ptr, ptr %2, align 8, !tbaa !578
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !521
  %26 = icmp eq ptr %25, null
  br i1 %26, label %52, label %27, !prof !1075

27:                                               ; preds = %22, %48
  %28 = phi ptr [ %50, %48 ], [ %25, %22 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !521
  %31 = load i32, ptr %30, align 8
  %32 = trunc i32 %31 to i16
  switch i16 %32, label %48 [
    i16 24, label %33
    i16 25, label %35
  ], !prof !1076

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  tail call fastcc void @df_uses_record(i32 noundef 2, ptr noundef nonnull %0, ptr noundef nonnull %34, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %48

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !521
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 37
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %37) #22
  %43 = tail call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %42) #21
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load ptr, ptr %29, align 8, !tbaa !521
  tail call fastcc void @df_defs_record(ptr noundef nonnull %0, ptr noundef %46, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3) #22
  br label %48

47:                                               ; preds = %35
  tail call fastcc void @df_uses_record(i32 noundef 2, ptr noundef nonnull %0, ptr noundef nonnull %29, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %48

48:                                               ; preds = %41, %45, %27, %33, %47
  %49 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !521
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %27, !prof !1077, !llvm.loop !1078

52:                                               ; preds = %48, %22
  %53 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !426
  %54 = getelementptr inbounds ptr, ptr %53, i64 7
  %55 = load ptr, ptr %54, align 8, !tbaa !426
  %56 = or i32 %3, 8192
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %55, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %56, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %57

57:                                               ; preds = %52, %69
  %58 = phi i64 [ 0, %52 ], [ %70, %69 ]
  %59 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !521
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %69, label %62, !prof !1079

62:                                               ; preds = %57
  %63 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !426
  %64 = getelementptr inbounds ptr, ptr %63, i64 %58
  %65 = load ptr, ptr %64, align 8, !tbaa !426
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %65, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %3, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  %66 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !426
  %67 = getelementptr inbounds ptr, ptr %66, i64 %58
  %68 = load ptr, ptr %67, align 8, !tbaa !426
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %68, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %3, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %69

69:                                               ; preds = %57, %62
  %70 = add nuw nsw i64 %58, 1
  %71 = icmp eq i64 %70, 53
  br i1 %71, label %72, label %57, !prof !1080, !llvm.loop !1081

72:                                               ; preds = %69
  %73 = load ptr, ptr %2, align 8, !tbaa !578
  %74 = load i32, ptr %73, align 8
  %75 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !426
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %75, ptr noundef nonnull %6) #22
  %76 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !680
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %110, label %78, !prof !1082

78:                                               ; preds = %72
  %79 = and i32 %74, 16777216
  %80 = icmp eq i32 %79, 0
  %81 = or i32 %3, 64
  br label %82

82:                                               ; preds = %78, %107
  %83 = load i32, ptr %6, align 4, !tbaa !507
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !521
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %107, !prof !1083

88:                                               ; preds = %82
  %89 = tail call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %83) #21
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %107, !prof !1084

91:                                               ; preds = %88
  br i1 %80, label %103, label %92, !prof !1085

92:                                               ; preds = %91
  %93 = load ptr, ptr @df, align 8, !tbaa !426
  %94 = getelementptr inbounds %struct.df, ptr %93, i64 0, i32 17
  %95 = load ptr, ptr %94, align 8, !tbaa !462
  %96 = tail call i32 @bitmap_bit_p(ptr noundef %95, i32 noundef %83) #21
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98, !prof !1086

98:                                               ; preds = %92
  %99 = add i32 %83, 1
  %100 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !1087
  %101 = tail call i32 @refers_to_regno_p(i32 noundef %83, i32 noundef %99, ptr noundef %100, ptr noundef null) #21
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98, %92, %91
  %104 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !426
  %105 = getelementptr inbounds ptr, ptr %104, i64 %84
  %106 = load ptr, ptr %105, align 8, !tbaa !426
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %106, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %81, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %107

107:                                              ; preds = %82, %88, %98, %103
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %108 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !680
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %82, !prof !1088, !llvm.loop !1089

110:                                              ; preds = %107, %72
  tail call void @bitmap_obstack_free(ptr noundef %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_get_conditional_uses(ptr noundef %0) unnamed_addr #0 !prof !532 !PGOFuncName !1090 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %3 = load ptr, ptr %0, align 8, !tbaa !641
  %4 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #22, !range !873
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %64, label %6

6:                                                ; preds = %1, %59
  %7 = phi ptr [ %60, %59 ], [ %3, %1 ]
  %8 = phi i32 [ %61, %59 ], [ 0, %1 ]
  %9 = load ptr, ptr %2, align 8, !tbaa !426
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %59, label %13

13:                                               ; preds = %6
  %14 = and i32 %10, 50331648
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.df_extract_ref, ptr %9, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !521
  %19 = getelementptr inbounds %struct.df_extract_ref, ptr %9, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !521
  %21 = getelementptr inbounds %struct.df_extract_ref, ptr %9, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !521
  br label %23

23:                                               ; preds = %16, %13
  %24 = phi i32 [ %18, %16 ], [ -1, %13 ]
  %25 = phi i32 [ %20, %16 ], [ -1, %13 ]
  %26 = phi i32 [ %22, %16 ], [ 0, %13 ]
  %27 = and i32 %10, 255
  %28 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !521
  %30 = and i32 %10, 254
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.df_regular_ref, ptr %9, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !521
  br label %41

35:                                               ; preds = %23
  %36 = icmp eq i32 %27, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.df_artificial_ref, ptr %9, i64 0, i32 1
  %39 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !521
  br label %47

41:                                               ; preds = %32, %35
  %42 = phi ptr [ %34, %32 ], [ null, %35 ]
  %43 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !521
  %45 = load ptr, ptr %44, align 8, !tbaa !578
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 1
  br label %47

47:                                               ; preds = %41, %37
  %48 = phi ptr [ %40, %37 ], [ %44, %41 ]
  %49 = phi ptr [ null, %37 ], [ %42, %41 ]
  %50 = phi ptr [ %38, %37 ], [ %46, %41 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !521
  %52 = ashr i32 %10, 16
  %53 = and i32 %52, -2
  %54 = tail call fastcc ptr @df_ref_create_structure(i32 noundef %27, ptr noundef nonnull %0, ptr noundef %29, ptr noundef %49, ptr noundef %51, ptr noundef %48, i32 noundef 1, i32 noundef %53, i32 noundef %24, i32 noundef %25, i32 noundef %26) #22
  %55 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 6
  %56 = load i32, ptr %55, align 8, !tbaa !521
  %57 = getelementptr inbounds %struct.df_base_ref, ptr %54, i64 0, i32 6
  store i32 %56, ptr %57, align 8, !tbaa !521
  %58 = load ptr, ptr %0, align 8, !tbaa !641
  br label %59

59:                                               ; preds = %6, %47
  %60 = phi ptr [ %7, %6 ], [ %58, %47 ]
  %61 = add i32 %8, 1
  %62 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %60, i32 noundef %61, ptr noundef nonnull %2) #22, !range !873
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %6, !llvm.loop !1091

64:                                               ; preds = %59, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_def_record_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !1092 !PGOFuncName !1093 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !426
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %37 [
    i16 15, label %10
    i16 40, label %32
  ], !prof !1094

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !521
  %13 = load i32, ptr %12, align 8, !tbaa !1038
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %100

15:                                               ; preds = %10
  %16 = or i32 %4, 128
  %17 = zext nneg i32 %13 to i64
  br label %18

18:                                               ; preds = %15, %30
  %19 = phi i64 [ %17, %15 ], [ %20, %30 ]
  %20 = add nsw i64 %19, -1
  %21 = load ptr, ptr %11, align 8, !tbaa !521
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %21, i64 0, i32 1, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !426
  %24 = load i32, ptr %23, align 8
  %25 = trunc i32 %24 to i16
  switch i16 %25, label %30 [
    i16 3, label %26
    i16 25, label %26
    i16 23, label %26
  ]

26:                                               ; preds = %18, %18, %18
  %27 = and i32 %24, 65535
  %28 = icmp eq i32 %27, 25
  %29 = select i1 %28, i32 %16, i32 %4
  tail call fastcc void @df_def_record_1(ptr noundef %0, ptr noundef nonnull %23, ptr noundef %2, ptr noundef %3, i32 noundef %29) #22
  br label %30

30:                                               ; preds = %18, %26
  %31 = icmp ugt i64 %19, 1
  br i1 %31, label %18, label %100, !llvm.loop !1095

32:                                               ; preds = %5
  %33 = or i32 %4, 1072
  %34 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !426
  %36 = load i32, ptr %35, align 8
  br label %37

37:                                               ; preds = %5, %32
  %38 = phi i32 [ %36, %32 ], [ %8, %5 ]
  %39 = phi ptr [ %34, %32 ], [ %6, %5 ]
  %40 = phi ptr [ %35, %32 ], [ %7, %5 ]
  %41 = phi i32 [ %33, %32 ], [ %4, %5 ]
  %42 = and i32 %38, 65535
  %43 = icmp eq i32 %42, 120
  br i1 %43, label %44, label %74, !prof !1096

44:                                               ; preds = %37
  %45 = or i32 %41, 560
  %46 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %47 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !521
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 30
  br i1 %51, label %52, label %67, !prof !1057

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !521
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 30
  br i1 %57, label %58, label %67, !prof !1057

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !521
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !521
  %64 = trunc i64 %63 to i32
  %65 = lshr i32 %38, 16
  %66 = and i32 %65, 255
  br label %67

67:                                               ; preds = %58, %52, %44
  %68 = phi i32 [ %64, %58 ], [ -1, %52 ], [ -1, %44 ]
  %69 = phi i32 [ %61, %58 ], [ -1, %52 ], [ -1, %44 ]
  %70 = phi i32 [ %66, %58 ], [ 0, %52 ], [ 0, %44 ]
  %71 = phi i32 [ 3, %58 ], [ 2, %52 ], [ 2, %44 ]
  %72 = load ptr, ptr %46, align 8, !tbaa !426
  %73 = load i32, ptr %72, align 8
  br label %74

74:                                               ; preds = %67, %37
  %75 = phi i32 [ %73, %67 ], [ %38, %37 ]
  %76 = phi ptr [ %46, %67 ], [ %39, %37 ]
  %77 = phi ptr [ %72, %67 ], [ %40, %37 ]
  %78 = phi i32 [ %68, %67 ], [ -1, %37 ]
  %79 = phi i32 [ %69, %67 ], [ -1, %37 ]
  %80 = phi i32 [ %70, %67 ], [ 0, %37 ]
  %81 = phi i32 [ %71, %67 ], [ 2, %37 ]
  %82 = phi i32 [ %45, %67 ], [ %41, %37 ]
  %83 = trunc i32 %75 to i16
  switch i16 %83, label %100 [
    i16 37, label %84
    i16 39, label %88
  ], !prof !1097

84:                                               ; preds = %74
  tail call fastcc void @df_ref_record(i32 noundef %81, ptr noundef %0, ptr noundef nonnull %77, ptr noundef nonnull %76, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef %82, i32 noundef %79, i32 noundef %78, i32 noundef %80) #22
  %85 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %77) #22
  %86 = icmp eq i32 %85, 7
  br i1 %86, label %87, label %100, !prof !1098

87:                                               ; preds = %84
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef %0, ptr noundef nonnull %77, ptr noundef null, ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef %82, i32 noundef %79, i32 noundef %78, i32 noundef %80) #22
  br label %100

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !521
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 37
  br i1 %93, label %94, label %100, !prof !1099

94:                                               ; preds = %88
  %95 = tail call zeroext i8 @df_read_modify_subreg_p(ptr noundef nonnull %77) #22, !range !680
  %96 = icmp eq i8 %95, 0
  %97 = or i32 %82, 48
  %98 = select i1 %96, i32 %82, i32 %97, !prof !1055
  %99 = or i32 %98, 2048
  tail call fastcc void @df_ref_record(i32 noundef %81, ptr noundef %0, ptr noundef nonnull %77, ptr noundef nonnull %76, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef %99, i32 noundef %79, i32 noundef %78, i32 noundef %80) #22
  br label %100

100:                                              ; preds = %30, %10, %87, %84, %94, %88, %74
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @df_read_modify_subreg_p(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !1100 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %23, !prof !1101

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !521
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !521
  %14 = lshr i32 %2, 16
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !521
  %19 = icmp ugt i8 %13, %18
  %20 = icmp ugt i8 %13, 4
  %21 = and i1 %20, %19
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %1, %5
  %24 = phi i8 [ %22, %5 ], [ 0, %1 ]
  ret i8 %24
}

; Function Attrs: optsize
declare i32 @refers_to_regno_p(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @df_insn_rescan_debug_internal(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !532 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !521
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 7
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !521
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !521
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 25
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !521
  %18 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !426
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %7, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1331, ptr noundef nonnull @.str.9) #21
  br label %21

21:                                               ; preds = %15, %20
  %22 = load ptr, ptr @df, align 8, !tbaa !426
  %23 = icmp eq ptr %22, null
  br i1 %23, label %91, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %2, align 8, !tbaa !521
  %26 = getelementptr inbounds %struct.df, ptr %22, i64 0, i32 11
  %27 = load i32, ptr %26, align 8, !tbaa !468
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %91

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.df, ptr %22, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !469
  %32 = sext i32 %25 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !426
  %35 = icmp eq ptr %34, null
  br i1 %35, label %91, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %37, ptr noundef nonnull @.str.38, i32 noundef %3) #22
  %41 = load ptr, ptr @df, align 8, !tbaa !426
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi ptr [ %41, %39 ], [ %22, %36 ]
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 18
  %45 = load ptr, ptr %44, align 8, !tbaa !463
  %46 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %45, i32 noundef %3) #21
  %47 = load ptr, ptr @df, align 8, !tbaa !426
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 19
  %49 = load ptr, ptr %48, align 8, !tbaa !464
  %50 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %49, i32 noundef %3) #21
  %51 = load ptr, ptr @df, align 8, !tbaa !426
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 20
  %53 = load ptr, ptr %52, align 8, !tbaa !465
  %54 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %53, i32 noundef %3) #21
  %55 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !471
  %57 = icmp eq ptr %56, null
  br i1 %57, label %91, label %58

58:                                               ; preds = %42
  %59 = icmp eq ptr %56, @df_null_ref_rec
  br i1 %59, label %60, label %72

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !475
  %63 = icmp eq ptr %62, @df_null_ref_rec
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !477
  %67 = icmp eq ptr %66, @df_null_ref_rec
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !479
  %71 = icmp eq ptr %70, @df_null_mw_rec
  br i1 %71, label %91, label %72

72:                                               ; preds = %68, %64, %60, %58
  %73 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !479
  tail call fastcc void @df_mw_hardreg_chain_delete(ptr noundef %74) #22
  %75 = load ptr, ptr @df, align 8, !tbaa !426
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 4
  %77 = load ptr, ptr %76, align 8, !tbaa !426
  %78 = icmp eq ptr %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr %55, align 8, !tbaa !471
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %80) #22
  %81 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !475
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %82) #22
  %83 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !477
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %84) #22
  br label %85

85:                                               ; preds = %79, %72
  %86 = load ptr, ptr %55, align 8, !tbaa !471
  tail call fastcc void @df_ref_chain_delete(ptr noundef %86) #22
  %87 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !475
  tail call fastcc void @df_ref_chain_delete(ptr noundef %88) #22
  %89 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !477
  tail call fastcc void @df_ref_chain_delete(ptr noundef %90) #22
  store ptr @df_null_ref_rec, ptr %55, align 8, !tbaa !471
  store ptr @df_null_ref_rec, ptr %87, align 8, !tbaa !475
  store ptr @df_null_ref_rec, ptr %89, align 8, !tbaa !477
  store ptr @df_null_mw_rec, ptr %73, align 8, !tbaa !479
  br label %91

91:                                               ; preds = %24, %68, %42, %29, %21, %85
  %92 = phi i8 [ 1, %85 ], [ 0, %21 ], [ 0, %29 ], [ 0, %42 ], [ 0, %68 ], [ 0, %24 ]
  ret i8 %92
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_insn_rescan_all() local_unnamed_addr #0 !prof !532 {
  %1 = alloca %struct.bitmap_iterator, align 8
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %4 = load ptr, ptr @df, align 8, !tbaa !426
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 27
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = tail call i32 @df_clear_flags(i32 noundef 16) #21
  %11 = load ptr, ptr @df, align 8, !tbaa !426
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 27
  %13 = load i8, ptr %12, align 4
  br label %14

14:                                               ; preds = %9, %0
  %15 = phi i8 [ %13, %9 ], [ %6, %0 ]
  %16 = phi ptr [ %11, %9 ], [ %4, %0 ]
  %17 = and i8 %15, 32
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = tail call i32 @df_clear_flags(i32 noundef 32) #21
  %21 = load ptr, ptr @df, align 8, !tbaa !426
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi ptr [ %21, %19 ], [ %16, %14 ]
  %24 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !463
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %25) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #22
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !680
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr @df, align 8, !tbaa !426
  br label %30

30:                                               ; preds = %28, %45
  %31 = phi ptr [ %29, %28 ], [ %46, %45 ]
  %32 = load i32, ptr %2, align 4, !tbaa !507
  %33 = getelementptr inbounds %struct.df, ptr %31, i64 0, i32 11
  %34 = load i32, ptr %33, align 8, !tbaa !468
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.df, ptr %31, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !469
  %39 = zext i32 %32 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !426
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  tail call void @df_insn_delete(ptr noundef null, i32 noundef %32) #22
  %44 = load ptr, ptr @df, align 8, !tbaa !426
  br label %45

45:                                               ; preds = %30, %43, %36
  %46 = phi ptr [ %31, %30 ], [ %44, %43 ], [ %31, %36 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %47 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !680
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %30, !llvm.loop !1102

49:                                               ; preds = %45, %22
  tail call void @bitmap_obstack_free(ptr noundef %3) #21
  %50 = load ptr, ptr @df, align 8, !tbaa !426
  %51 = getelementptr inbounds %struct.df, ptr %50, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !463
  tail call void @bitmap_clear(ptr noundef %52) #21
  %53 = load ptr, ptr @df, align 8, !tbaa !426
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !464
  tail call void @bitmap_clear(ptr noundef %55) #21
  %56 = load ptr, ptr @df, align 8, !tbaa !426
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 20
  %58 = load ptr, ptr %57, align 8, !tbaa !465
  tail call void @bitmap_clear(ptr noundef %58) #21
  %59 = load ptr, ptr @cfun, align 8, !tbaa !426
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !447
  %62 = load ptr, ptr %61, align 8, !tbaa !538
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !541
  %65 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !540
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %99, label %68

68:                                               ; preds = %49, %90
  %69 = phi ptr [ %91, %90 ], [ %59, %49 ]
  %70 = phi ptr [ %93, %90 ], [ %64, %49 ]
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !521
  %73 = load ptr, ptr %72, align 8, !tbaa !521
  %74 = icmp eq ptr %73, null
  br i1 %74, label %90, label %75

75:                                               ; preds = %68, %83
  %76 = phi ptr [ %86, %83 ], [ %73, %68 ]
  %77 = load ptr, ptr %71, align 8, !tbaa !521
  %78 = getelementptr inbounds %struct.rtl_bb_info, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !523
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !521
  %82 = icmp eq ptr %76, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %75
  %84 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %76) #22, !range !680
  %85 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !521
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %75, !llvm.loop !1103

88:                                               ; preds = %83, %75
  %89 = load ptr, ptr @cfun, align 8, !tbaa !426
  br label %90

90:                                               ; preds = %88, %68
  %91 = phi ptr [ %89, %88 ], [ %69, %68 ]
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !541
  %94 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !447
  %96 = getelementptr inbounds %struct.control_flow_graph, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !540
  %98 = icmp eq ptr %93, %97
  br i1 %98, label %99, label %68, !llvm.loop !1104

99:                                               ; preds = %90, %49
  br i1 %8, label %102, label %100

100:                                              ; preds = %99
  %101 = tail call i32 @df_set_flags(i32 noundef 16) #21
  br label %102

102:                                              ; preds = %100, %99
  br i1 %18, label %105, label %103

103:                                              ; preds = %102
  %104 = tail call i32 @df_set_flags(i32 noundef 32) #21
  br label %105

105:                                              ; preds = %103, %102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #23
  ret void
}

; Function Attrs: optsize
declare i32 @df_clear_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_process_deferred_rescans() local_unnamed_addr #0 !prof !1105 {
  %1 = alloca %struct.bitmap_iterator, align 8
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %4 = load ptr, ptr @df, align 8, !tbaa !426
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 27
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9, !prof !1106

9:                                                ; preds = %0
  %10 = tail call i32 @df_clear_flags(i32 noundef 16) #21
  %11 = load ptr, ptr @df, align 8, !tbaa !426
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 27
  %13 = load i8, ptr %12, align 4
  br label %14

14:                                               ; preds = %9, %0
  %15 = phi i8 [ %13, %9 ], [ %6, %0 ]
  %16 = and i8 %15, 32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18, !prof !1107

18:                                               ; preds = %14
  %19 = tail call i32 @df_clear_flags(i32 noundef 32) #21
  br label %20

20:                                               ; preds = %18, %14
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !1106

23:                                               ; preds = %20
  %24 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 42, i64 1, ptr nonnull %21)
  br label %25

25:                                               ; preds = %23, %20
  %26 = load ptr, ptr @df, align 8, !tbaa !426
  %27 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 18
  %28 = load ptr, ptr %27, align 8, !tbaa !463
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %28) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #22
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !680
  %30 = icmp eq i8 %29, 0
  %31 = load ptr, ptr @df, align 8, !tbaa !426
  br i1 %30, label %51, label %32, !prof !1108

32:                                               ; preds = %25, %47
  %33 = phi ptr [ %48, %47 ], [ %31, %25 ]
  %34 = load i32, ptr %2, align 4, !tbaa !507
  %35 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 11
  %36 = load i32, ptr %35, align 8, !tbaa !468
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %47, !prof !1109

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !469
  %41 = zext i32 %34 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !426
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !550

45:                                               ; preds = %38
  tail call void @df_insn_delete(ptr noundef null, i32 noundef %34) #22
  %46 = load ptr, ptr @df, align 8, !tbaa !426
  br label %47

47:                                               ; preds = %32, %45, %38
  %48 = phi ptr [ %33, %32 ], [ %46, %45 ], [ %33, %38 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !680
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %32, !prof !1110, !llvm.loop !1111

51:                                               ; preds = %47, %25
  %52 = phi ptr [ %31, %25 ], [ %48, %47 ]
  %53 = getelementptr inbounds %struct.df, ptr %52, i64 0, i32 19
  %54 = load ptr, ptr %53, align 8, !tbaa !464
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %54) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #22
  %55 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !680
  %56 = icmp eq i8 %55, 0
  %57 = load ptr, ptr @df, align 8, !tbaa !426
  br i1 %56, label %79, label %58, !prof !1112

58:                                               ; preds = %51, %75
  %59 = phi ptr [ %76, %75 ], [ %57, %51 ]
  %60 = load i32, ptr %2, align 4, !tbaa !507
  %61 = getelementptr inbounds %struct.df, ptr %59, i64 0, i32 11
  %62 = load i32, ptr %61, align 8, !tbaa !468
  %63 = icmp ult i32 %60, %62
  br i1 %63, label %64, label %75, !prof !1113

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.df, ptr %59, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !469
  %67 = zext i32 %60 to i64
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !426
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71, !prof !550

71:                                               ; preds = %64
  %72 = load ptr, ptr %69, align 8, !tbaa !578
  %73 = tail call zeroext i8 @df_insn_rescan(ptr noundef %72) #22, !range !680
  %74 = load ptr, ptr @df, align 8, !tbaa !426
  br label %75

75:                                               ; preds = %58, %71, %64
  %76 = phi ptr [ %59, %58 ], [ %74, %71 ], [ %59, %64 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %77 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !680
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %58, !prof !1114, !llvm.loop !1115

79:                                               ; preds = %75, %51
  %80 = phi ptr [ %57, %51 ], [ %76, %75 ]
  %81 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 20
  %82 = load ptr, ptr %81, align 8, !tbaa !465
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %82) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #22
  %83 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !680
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %107, label %85, !prof !1116

85:                                               ; preds = %79
  %86 = load ptr, ptr @df, align 8, !tbaa !426
  br label %87

87:                                               ; preds = %85, %103
  %88 = phi ptr [ %86, %85 ], [ %104, %103 ]
  %89 = load i32, ptr %2, align 4, !tbaa !507
  %90 = getelementptr inbounds %struct.df, ptr %88, i64 0, i32 11
  %91 = load i32, ptr %90, align 8, !tbaa !468
  %92 = icmp ult i32 %89, %91
  br i1 %92, label %93, label %103, !prof !1117

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.df, ptr %88, i64 0, i32 10
  %95 = load ptr, ptr %94, align 8, !tbaa !469
  %96 = zext i32 %89 to i64
  %97 = getelementptr inbounds ptr, ptr %95, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !426
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100, !prof !550

100:                                              ; preds = %93
  %101 = load ptr, ptr %98, align 8, !tbaa !578
  tail call void @df_notes_rescan(ptr noundef %101) #22
  %102 = load ptr, ptr @df, align 8, !tbaa !426
  br label %103

103:                                              ; preds = %87, %100, %93
  %104 = phi ptr [ %88, %87 ], [ %102, %100 ], [ %88, %93 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %105 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !680
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %87, !prof !1118, !llvm.loop !1119

107:                                              ; preds = %103, %79
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110, !prof !1106

110:                                              ; preds = %107
  %111 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 40, i64 1, ptr nonnull %108)
  br label %112

112:                                              ; preds = %110, %107
  tail call void @bitmap_obstack_free(ptr noundef %3) #21
  %113 = load ptr, ptr @df, align 8, !tbaa !426
  %114 = getelementptr inbounds %struct.df, ptr %113, i64 0, i32 18
  %115 = load ptr, ptr %114, align 8, !tbaa !463
  tail call void @bitmap_clear(ptr noundef %115) #21
  %116 = load ptr, ptr @df, align 8, !tbaa !426
  %117 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 19
  %118 = load ptr, ptr %117, align 8, !tbaa !464
  tail call void @bitmap_clear(ptr noundef %118) #21
  %119 = load ptr, ptr @df, align 8, !tbaa !426
  %120 = getelementptr inbounds %struct.df, ptr %119, i64 0, i32 20
  %121 = load ptr, ptr %120, align 8, !tbaa !465
  tail call void @bitmap_clear(ptr noundef %121) #21
  br i1 %8, label %124, label %122, !prof !1106

122:                                              ; preds = %112
  %123 = tail call i32 @df_set_flags(i32 noundef 16) #21
  br label %124

124:                                              ; preds = %122, %112
  br i1 %17, label %127, label %125, !prof !1107

125:                                              ; preds = %124
  %126 = tail call i32 @df_set_flags(i32 noundef 32) #21
  br label %127

127:                                              ; preds = %125, %124
  %128 = load ptr, ptr @df, align 8, !tbaa !426
  %129 = getelementptr inbounds %struct.df, ptr %128, i64 0, i32 29
  %130 = load i8, ptr %129, align 2, !tbaa !1120
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %135, label %132, !prof !1121

132:                                              ; preds = %127
  tail call void @df_update_entry_exit_and_calls() #22
  %133 = load ptr, ptr @df, align 8, !tbaa !426
  %134 = getelementptr inbounds %struct.df, ptr %133, i64 0, i32 29
  store i8 0, ptr %134, align 2, !tbaa !1120
  br label %135

135:                                              ; preds = %132, %127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_notes_rescan(ptr noundef %0) local_unnamed_addr #0 !prof !1122 {
  %2 = alloca %struct.df_collection_rec, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !521
  %5 = load ptr, ptr @df, align 8, !tbaa !426
  %6 = icmp eq ptr %5, null
  br i1 %6, label %156, label %7, !prof !1123

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 27
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %156, !prof !1124

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !521
  %15 = icmp eq ptr %14, null
  br i1 %15, label %156, label %16, !prof !1125

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !426
  tail call void @df_grow_bb_info(ptr noundef %18) #21
  tail call void @df_grow_reg_info() #22
  %19 = load i32, ptr %3, align 8, !tbaa !521
  %20 = load ptr, ptr @df, align 8, !tbaa !426
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 11
  %22 = load i32, ptr %21, align 8, !tbaa !468
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %34, !prof !1126

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !469
  %27 = sext i32 %19 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !426
  %30 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 27
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 32
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %64, label %39, !prof !1127

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 27
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, 32
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %64, label %41, !prof !1127

39:                                               ; preds = %24
  %40 = icmp eq ptr %29, null
  br i1 %40, label %41, label %48, !prof !1128

41:                                               ; preds = %34, %39
  %42 = tail call ptr @df_insn_create_insn_record(ptr noundef nonnull %0) #22
  %43 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 1
  store ptr @df_null_ref_rec, ptr %43, align 8, !tbaa !471
  %44 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 2
  store ptr @df_null_ref_rec, ptr %44, align 8, !tbaa !475
  %45 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 3
  store ptr @df_null_ref_rec, ptr %45, align 8, !tbaa !477
  %46 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 4
  store ptr @df_null_mw_rec, ptr %46, align 8, !tbaa !479
  %47 = load ptr, ptr @df, align 8, !tbaa !426
  br label %48

48:                                               ; preds = %41, %39
  %49 = phi ptr [ %47, %41 ], [ %20, %39 ]
  %50 = getelementptr inbounds %struct.df, ptr %49, i64 0, i32 18
  %51 = load ptr, ptr %50, align 8, !tbaa !463
  %52 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %51, i32 noundef %4) #21
  %53 = load ptr, ptr @df, align 8, !tbaa !426
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !464
  %56 = tail call i32 @bitmap_bit_p(ptr noundef %55, i32 noundef %4) #21
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %156, !prof !1129

58:                                               ; preds = %48
  %59 = load ptr, ptr @df, align 8, !tbaa !426
  %60 = getelementptr inbounds %struct.df, ptr %59, i64 0, i32 20
  %61 = load ptr, ptr %60, align 8, !tbaa !465
  %62 = load i32, ptr %3, align 8, !tbaa !521
  %63 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %61, i32 noundef %62) #21
  br label %156

64:                                               ; preds = %34, %24
  %65 = phi ptr [ null, %34 ], [ %29, %24 ]
  %66 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 18
  %67 = load ptr, ptr %66, align 8, !tbaa !463
  %68 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %67, i32 noundef %4) #21
  %69 = load ptr, ptr @df, align 8, !tbaa !426
  %70 = getelementptr inbounds %struct.df, ptr %69, i64 0, i32 20
  %71 = load ptr, ptr %70, align 8, !tbaa !465
  %72 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %71, i32 noundef %4) #21
  %73 = icmp eq ptr %65, null
  br i1 %73, label %154, label %74, !prof !1130

74:                                               ; preds = %64
  %75 = load ptr, ptr %13, align 8, !tbaa !521
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  %76 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 32) #22, !range !640
  %77 = alloca i8, i64 %76, align 16
  %78 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %77) #22
  %79 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 2
  store ptr %78, ptr %79, align 8, !tbaa !665
  %80 = alloca [264 x i8], align 16
  %81 = call fastcc ptr @VEC_df_mw_hardreg_ptr_stack_alloc1(ptr noundef nonnull %80) #22
  %82 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 3
  store ptr %81, ptr %82, align 8, !tbaa !666
  %83 = call fastcc i32 @df_mw_hardreg_chain_delete_eq_uses(ptr noundef nonnull %65) #22
  %84 = getelementptr inbounds %struct.df_insn_info, ptr %65, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !477
  call fastcc void @df_ref_chain_delete(ptr noundef %85) #22
  store ptr null, ptr %84, align 8, !tbaa !477
  %86 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !521
  %88 = icmp eq ptr %87, null
  br i1 %88, label %102, label %89, !prof !1131

89:                                               ; preds = %74, %98
  %90 = phi ptr [ %100, %98 ], [ %87, %74 ]
  %91 = load i32, ptr %90, align 8
  %92 = lshr i32 %91, 16
  %93 = trunc i32 %92 to i8
  %94 = add i8 %93, -3
  %95 = icmp ult i8 %94, 2
  br i1 %95, label %96, label %98, !prof !1132

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  call fastcc void @df_uses_record(i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull %97, i32 noundef 1, ptr noundef %75, ptr noundef nonnull %65, i32 noundef 4, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %98

98:                                               ; preds = %89, %96
  %99 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !521
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %89, !prof !1133, !llvm.loop !1134

102:                                              ; preds = %98, %74
  call fastcc void @df_canonize_collection_rec(ptr noundef nonnull %2) #22
  %103 = load ptr, ptr %82, align 8
  %104 = call fastcc i32 @VEC_df_mw_hardreg_ptr_base_length(ptr noundef %103) #22
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %153, label %106, !prof !1135

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.df_insn_info, ptr %65, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !479
  %109 = load ptr, ptr %108, align 8, !tbaa !426
  %110 = icmp eq ptr %109, null
  br i1 %110, label %142, label %111

111:                                              ; preds = %106, %111
  %112 = phi ptr [ %115, %111 ], [ %108, %106 ]
  %113 = phi i32 [ %114, %111 ], [ 0, %106 ]
  %114 = add i32 %113, 1
  %115 = getelementptr inbounds ptr, ptr %112, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !426
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %111, !llvm.loop !1136

118:                                              ; preds = %111
  %119 = icmp eq i32 %114, 0
  br i1 %119, label %142, label %120

120:                                              ; preds = %118
  %121 = icmp ugt i32 %104, %83
  br i1 %121, label %122, label %129

122:                                              ; preds = %120
  %123 = add i32 %104, 1
  %124 = add i32 %123, %114
  %125 = zext i32 %124 to i64
  %126 = shl nuw nsw i64 %125, 3
  %127 = call ptr @xrealloc(ptr noundef nonnull %108, i64 noundef %126) #21
  store ptr %127, ptr %107, align 8, !tbaa !479
  %128 = load ptr, ptr %82, align 8
  br label %129

129:                                              ; preds = %122, %120
  %130 = phi ptr [ %128, %122 ], [ %103, %120 ]
  %131 = phi ptr [ %127, %122 ], [ %108, %120 ]
  %132 = zext i32 %114 to i64
  %133 = getelementptr inbounds ptr, ptr %131, i64 %132
  %134 = call fastcc ptr @VEC_df_mw_hardreg_ptr_base_address(ptr noundef %130) #22
  %135 = zext i32 %104 to i64
  %136 = shl nuw nsw i64 %135, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %133, ptr align 8 %134, i64 %136, i1 false)
  %137 = load ptr, ptr %107, align 8, !tbaa !479
  %138 = add i32 %114, %104
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %137, i64 %139
  store ptr null, ptr %140, align 8, !tbaa !426
  %141 = load ptr, ptr %107, align 8, !tbaa !479
  call void @spec_qsort(ptr noundef %141, i64 noundef %139, i64 noundef 8, ptr noundef nonnull @df_mw_compare) #21
  br label %153

142:                                              ; preds = %106, %118
  %143 = add i32 %104, 1
  %144 = zext i32 %143 to i64
  %145 = shl nuw nsw i64 %144, 3
  %146 = call ptr @xmalloc(i64 noundef %145) #21
  store ptr %146, ptr %107, align 8, !tbaa !479
  %147 = load ptr, ptr %82, align 8
  %148 = call fastcc ptr @VEC_df_mw_hardreg_ptr_base_address(ptr noundef %147) #22
  %149 = zext i32 %104 to i64
  %150 = shl nuw nsw i64 %149, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %146, ptr align 8 %148, i64 %150, i1 false)
  %151 = load ptr, ptr %107, align 8, !tbaa !479
  %152 = getelementptr inbounds ptr, ptr %151, i64 %149
  store ptr null, ptr %152, align 8, !tbaa !426
  br label %153

153:                                              ; preds = %129, %142, %102
  call fastcc void @VEC_df_mw_hardreg_ptr_stack_free(ptr noundef nonnull %82) #22
  call fastcc void @df_refs_add_to_chains(ptr noundef nonnull %2, ptr noundef %75, ptr noundef %0) #22
  call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %79) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  br label %156

154:                                              ; preds = %64
  %155 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %0) #22, !range !680
  br label %156

156:                                              ; preds = %153, %154, %48, %58, %12, %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_update_entry_exit_and_calls() local_unnamed_addr #0 !prof !1137 {
  tail call void @df_update_entry_block_defs() #22
  tail call void @df_update_exit_block_uses() #22
  %1 = load ptr, ptr @cfun, align 8, !tbaa !426
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !447
  %4 = load ptr, ptr %3, align 8, !tbaa !538
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !541
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !540
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %46, label %10, !prof !1138

10:                                               ; preds = %0, %37
  %11 = phi ptr [ %38, %37 ], [ %1, %0 ]
  %12 = phi ptr [ %40, %37 ], [ %6, %0 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !521
  %15 = load ptr, ptr %14, align 8, !tbaa !521
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17, !prof !1139

17:                                               ; preds = %10, %31
  %18 = phi ptr [ %33, %31 ], [ %15, %10 ]
  %19 = load ptr, ptr %13, align 8, !tbaa !521
  %20 = getelementptr inbounds %struct.rtl_bb_info, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !523
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !521
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %35, label %25, !prof !1140

25:                                               ; preds = %17
  %26 = load i32, ptr %18, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %31, !prof !1141

29:                                               ; preds = %25
  %30 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %18) #22, !range !680
  br label %31

31:                                               ; preds = %25, %29
  %32 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !521
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %17, !prof !1142, !llvm.loop !1143

35:                                               ; preds = %31, %17
  %36 = load ptr, ptr @cfun, align 8, !tbaa !426
  br label %37

37:                                               ; preds = %35, %10
  %38 = phi ptr [ %36, %35 ], [ %11, %10 ]
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !541
  %41 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !447
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !540
  %45 = icmp eq ptr %40, %44
  br i1 %45, label %46, label %10, !prof !1144, !llvm.loop !1145

46:                                               ; preds = %37, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_maybe_reorganize_use_refs(i32 noundef %0) local_unnamed_addr #0 !prof !1146 {
  %2 = load ptr, ptr @df, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 4
  %4 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 4, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !572
  %6 = icmp eq i32 %5, %0
  br i1 %6, label %21, label %7, !prof !1147

7:                                                ; preds = %1
  switch i32 %0, label %18 [
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 6, label %11
    i32 0, label %12
    i32 1, label %17
    i32 2, label %17
  ], !prof !1148

8:                                                ; preds = %7
  tail call fastcc void @df_reorganize_refs_by_reg(ptr noundef nonnull %3, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #22
  br label %18

9:                                                ; preds = %7
  tail call fastcc void @df_reorganize_refs_by_reg(ptr noundef nonnull %3, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #22
  br label %18

10:                                               ; preds = %7
  tail call fastcc void @df_reorganize_refs_by_insn(ptr noundef nonnull %3, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #22
  br label %18

11:                                               ; preds = %7
  tail call fastcc void @df_reorganize_refs_by_insn(ptr noundef nonnull %3, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #22
  br label %18

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !tbaa !494
  tail call void @free(ptr noundef %13) #22
  %14 = load ptr, ptr @df, align 8, !tbaa !426
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 4
  store ptr null, ptr %15, align 8, !tbaa !494
  %16 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 4, i32 3
  store i32 0, ptr %16, align 8, !tbaa !1149
  br label %18

17:                                               ; preds = %7, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1928, ptr noundef nonnull @.str.9) #21
  br label %18

18:                                               ; preds = %7, %17, %12, %11, %10, %9, %8
  %19 = load ptr, ptr @df, align 8, !tbaa !426
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 4, i32 6
  store i32 %0, ptr %20, align 4, !tbaa !572
  br label %21

21:                                               ; preds = %1, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_reorganize_refs_by_reg(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !1150 !PGOFuncName !1151 {
  %5 = load ptr, ptr @df, align 8, !tbaa !426
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 28
  %7 = load i8, ptr %6, align 1, !tbaa !575
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !1152

9:                                                ; preds = %4
  tail call fastcc void @df_reorganize_refs_by_reg_by_insn(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  br label %11

10:                                               ; preds = %4
  tail call fastcc void @df_reorganize_refs_by_reg_by_reg(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_reorganize_refs_by_insn(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !425 !PGOFuncName !1153 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = tail call fastcc i32 @df_count_refs(i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  %8 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 5
  store i32 %7, ptr %8, align 8, !tbaa !894
  tail call fastcc void @df_check_and_grow_ref_info(ptr noundef %0) #22
  %9 = load ptr, ptr @df, align 8, !tbaa !426
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !530
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13, !prof !1154

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %6) #22
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !680
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %13, %16
  %17 = phi i32 [ %25, %16 ], [ 0, %13 ]
  %18 = load ptr, ptr @cfun, align 8, !tbaa !426
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !447
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !594
  %23 = load i32, ptr %6, align 4, !tbaa !507
  %24 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %22, i32 noundef %23) #22
  %25 = tail call fastcc i32 @df_reorganize_refs_by_insn_bb(ptr noundef %24, i32 noundef %17, ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !680
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %16, !llvm.loop !1155

28:                                               ; preds = %16, %13
  %29 = phi i32 [ 0, %13 ], [ %25, %16 ]
  %30 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 4
  store i32 %29, ptr %30, align 4, !tbaa !892
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %47

31:                                               ; preds = %4
  %32 = load ptr, ptr @cfun, align 8, !tbaa !426
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !447
  %35 = load ptr, ptr %34, align 8, !tbaa !426
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !449

37:                                               ; preds = %31, %37
  %38 = phi ptr [ %42, %37 ], [ %35, %31 ]
  %39 = phi i32 [ %40, %37 ], [ 0, %31 ]
  %40 = tail call fastcc i32 @df_reorganize_refs_by_insn_bb(ptr noundef nonnull %38, i32 noundef %39, ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !426
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %37, !prof !1156, !llvm.loop !1157

44:                                               ; preds = %37, %31
  %45 = phi i32 [ 0, %31 ], [ %40, %37 ]
  %46 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 4
  store i32 %45, ptr %46, align 4, !tbaa !892
  br label %47

47:                                               ; preds = %44, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_reorganize_refs_by_reg_by_insn(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !1158 !PGOFuncName !1159 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %7 = load ptr, ptr @df, align 8, !tbaa !426
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !505
  %10 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 27
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 0, i32 53
  %15 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !1160
  %17 = zext i32 %9 to i64
  %18 = shl nuw nsw i64 %17, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %16, i8 0, i64 %18, i1 false)
  %19 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !1161
  %21 = load ptr, ptr @df, align 8, !tbaa !426
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 4, !tbaa !505
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %20, i8 0, i64 %25, i1 false)
  %26 = tail call fastcc i32 @df_count_refs(i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  %27 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 5
  store i32 %26, ptr %27, align 8, !tbaa !894
  tail call fastcc void @df_check_and_grow_ref_info(ptr noundef %0) #22
  %28 = load ptr, ptr @df, align 8, !tbaa !426
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !530
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %30, ptr noundef nonnull %6) #22
  %31 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !680
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %43, label %33, !prof !1162

33:                                               ; preds = %4
  %34 = load ptr, ptr @cfun, align 8, !tbaa !426
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !447
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !594
  %39 = icmp eq i8 %1, 0
  %40 = icmp eq i8 %2, 0
  %41 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 10
  %42 = icmp eq i8 %3, 0
  br label %49

43:                                               ; preds = %185, %4
  %44 = icmp ult i32 %14, %9
  br i1 %44, label %45, label %197, !prof !1163

45:                                               ; preds = %43
  %46 = load ptr, ptr %15, align 8, !tbaa !1160
  %47 = load ptr, ptr %19, align 8, !tbaa !1161
  %48 = zext nneg i32 %14 to i64
  br label %188

49:                                               ; preds = %33, %185
  %50 = load i32, ptr %6, align 4, !tbaa !507
  %51 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %38, i32 noundef %50) #22
  br i1 %39, label %70, label %52, !prof !1164

52:                                               ; preds = %49
  %53 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %50) #22
  %54 = load ptr, ptr %53, align 8, !tbaa !426
  %55 = icmp eq ptr %54, null
  br i1 %55, label %70, label %56, !prof !1165

56:                                               ; preds = %52
  %57 = load ptr, ptr %19, align 8, !tbaa !1161
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi ptr [ %54, %56 ], [ %68, %58 ]
  %60 = phi ptr [ %53, %56 ], [ %67, %58 ]
  %61 = getelementptr inbounds %struct.df_base_ref, ptr %59, i64 0, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !521
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %57, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !507
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4, !tbaa !507
  %67 = getelementptr inbounds ptr, ptr %60, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !426
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %58, !prof !526, !llvm.loop !1166

70:                                               ; preds = %58, %52, %49
  br i1 %40, label %89, label %71, !prof !1167

71:                                               ; preds = %70
  %72 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %50) #22
  %73 = load ptr, ptr %72, align 8, !tbaa !426
  %74 = icmp eq ptr %73, null
  br i1 %74, label %89, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %19, align 8, !tbaa !1161
  br label %77

77:                                               ; preds = %75, %77
  %78 = phi ptr [ %73, %75 ], [ %87, %77 ]
  %79 = phi ptr [ %72, %75 ], [ %86, %77 ]
  %80 = getelementptr inbounds %struct.df_base_ref, ptr %78, i64 0, i32 6
  %81 = load i32, ptr %80, align 8, !tbaa !521
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, ptr %76, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !507
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 4, !tbaa !507
  %86 = getelementptr inbounds ptr, ptr %79, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !426
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %77, !llvm.loop !1168

89:                                               ; preds = %77, %71, %70
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !521
  %92 = load ptr, ptr %91, align 8, !tbaa !521
  %93 = icmp eq ptr %92, null
  br i1 %93, label %185, label %94, !prof !1169

94:                                               ; preds = %89, %181
  %95 = phi ptr [ %183, %181 ], [ %92, %89 ]
  %96 = load ptr, ptr %90, align 8, !tbaa !521
  %97 = getelementptr inbounds %struct.rtl_bb_info, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !523
  %99 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1, i32 0, i32 0, i64 2
  %100 = load ptr, ptr %99, align 8, !tbaa !521
  %101 = icmp eq ptr %95, %100
  br i1 %101, label %185, label %102, !prof !1170

102:                                              ; preds = %94
  %103 = load i32, ptr %95, align 8
  %104 = and i32 %103, 65535
  %105 = add nsw i32 %104, -7
  %106 = icmp ult i32 %105, 4
  br i1 %106, label %107, label %181, !prof !1171

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %109 = load i32, ptr %108, align 8, !tbaa !521
  br i1 %39, label %133, label %110, !prof !1172

110:                                              ; preds = %107
  %111 = load ptr, ptr %41, align 8, !tbaa !469
  %112 = zext i32 %109 to i64
  %113 = getelementptr inbounds ptr, ptr %111, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !426
  %115 = getelementptr inbounds %struct.df_insn_info, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !471
  %117 = load ptr, ptr %116, align 8, !tbaa !426
  %118 = icmp eq ptr %117, null
  br i1 %118, label %133, label %119, !prof !1173

119:                                              ; preds = %110
  %120 = load ptr, ptr %19, align 8, !tbaa !1161
  br label %121

121:                                              ; preds = %119, %121
  %122 = phi ptr [ %117, %119 ], [ %131, %121 ]
  %123 = phi ptr [ %116, %119 ], [ %130, %121 ]
  %124 = getelementptr inbounds %struct.df_base_ref, ptr %122, i64 0, i32 6
  %125 = load i32, ptr %124, align 8, !tbaa !521
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, ptr %120, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !507
  %129 = add i32 %128, 1
  store i32 %129, ptr %127, align 4, !tbaa !507
  %130 = getelementptr inbounds ptr, ptr %123, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !426
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %121, !prof !1174, !llvm.loop !1175

133:                                              ; preds = %121, %110, %107
  br i1 %40, label %157, label %134, !prof !1176

134:                                              ; preds = %133
  %135 = load ptr, ptr %41, align 8, !tbaa !469
  %136 = zext i32 %109 to i64
  %137 = getelementptr inbounds ptr, ptr %135, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !426
  %139 = getelementptr inbounds %struct.df_insn_info, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !475
  %141 = load ptr, ptr %140, align 8, !tbaa !426
  %142 = icmp eq ptr %141, null
  br i1 %142, label %157, label %143

143:                                              ; preds = %134
  %144 = load ptr, ptr %19, align 8, !tbaa !1161
  br label %145

145:                                              ; preds = %143, %145
  %146 = phi ptr [ %141, %143 ], [ %155, %145 ]
  %147 = phi ptr [ %140, %143 ], [ %154, %145 ]
  %148 = getelementptr inbounds %struct.df_base_ref, ptr %146, i64 0, i32 6
  %149 = load i32, ptr %148, align 8, !tbaa !521
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, ptr %144, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !507
  %153 = add i32 %152, 1
  store i32 %153, ptr %151, align 4, !tbaa !507
  %154 = getelementptr inbounds ptr, ptr %147, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !426
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %145, !llvm.loop !1177

157:                                              ; preds = %145, %134, %133
  br i1 %42, label %181, label %158, !prof !1176

158:                                              ; preds = %157
  %159 = load ptr, ptr %41, align 8, !tbaa !469
  %160 = zext i32 %109 to i64
  %161 = getelementptr inbounds ptr, ptr %159, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !426
  %163 = getelementptr inbounds %struct.df_insn_info, ptr %162, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !477
  %165 = load ptr, ptr %164, align 8, !tbaa !426
  %166 = icmp eq ptr %165, null
  br i1 %166, label %181, label %167

167:                                              ; preds = %158
  %168 = load ptr, ptr %19, align 8, !tbaa !1161
  br label %169

169:                                              ; preds = %167, %169
  %170 = phi ptr [ %165, %167 ], [ %179, %169 ]
  %171 = phi ptr [ %164, %167 ], [ %178, %169 ]
  %172 = getelementptr inbounds %struct.df_base_ref, ptr %170, i64 0, i32 6
  %173 = load i32, ptr %172, align 8, !tbaa !521
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32, ptr %168, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !507
  %177 = add i32 %176, 1
  store i32 %177, ptr %175, align 4, !tbaa !507
  %178 = getelementptr inbounds ptr, ptr %171, i64 1
  %179 = load ptr, ptr %178, align 8, !tbaa !426
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %169, !llvm.loop !1178

181:                                              ; preds = %169, %158, %102, %157
  %182 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 2
  %183 = load ptr, ptr %182, align 8, !tbaa !521
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %94, !prof !1179, !llvm.loop !1180

185:                                              ; preds = %94, %181, %89
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %186 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !680
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %43, label %49, !prof !1181, !llvm.loop !1182

188:                                              ; preds = %45, %188
  %189 = phi i64 [ %48, %45 ], [ %195, %188 ]
  %190 = phi i32 [ 0, %45 ], [ %194, %188 ]
  %191 = getelementptr inbounds i32, ptr %46, i64 %189
  store i32 %190, ptr %191, align 4, !tbaa !507
  %192 = getelementptr inbounds i32, ptr %47, i64 %189
  %193 = load i32, ptr %192, align 4, !tbaa !507
  %194 = add i32 %193, %190
  store i32 0, ptr %192, align 4, !tbaa !507
  %195 = add nuw nsw i64 %189, 1
  %196 = icmp eq i64 %195, %17
  br i1 %196, label %197, label %188, !prof !1183, !llvm.loop !1184

197:                                              ; preds = %188, %43
  %198 = phi i32 [ 0, %43 ], [ %194, %188 ]
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %30, ptr noundef nonnull %6) #22
  %199 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !680
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %405, label %201, !prof !1162

201:                                              ; preds = %197
  %202 = icmp eq i8 %1, 0
  %203 = icmp eq i8 %2, 0
  %204 = icmp eq i8 %3, 0
  br label %205

205:                                              ; preds = %201, %402
  %206 = load ptr, ptr @cfun, align 8, !tbaa !426
  %207 = getelementptr inbounds %struct.function, ptr %206, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !447
  %209 = getelementptr inbounds %struct.control_flow_graph, ptr %208, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !594
  %211 = load i32, ptr %6, align 4, !tbaa !507
  %212 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %210, i32 noundef %211) #22
  br i1 %202, label %241, label %213, !prof !1164

213:                                              ; preds = %205
  %214 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %211) #22
  %215 = load ptr, ptr %214, align 8, !tbaa !426
  %216 = icmp eq ptr %215, null
  br i1 %216, label %241, label %217, !prof !1165

217:                                              ; preds = %213, %237
  %218 = phi ptr [ %239, %237 ], [ %215, %213 ]
  %219 = phi ptr [ %238, %237 ], [ %214, %213 ]
  %220 = getelementptr inbounds %struct.df_base_ref, ptr %218, i64 0, i32 6
  %221 = load i32, ptr %220, align 8, !tbaa !521
  %222 = icmp ult i32 %221, %14
  br i1 %222, label %237, label %223

223:                                              ; preds = %217
  %224 = load ptr, ptr %15, align 8, !tbaa !1160
  %225 = zext i32 %221 to i64
  %226 = getelementptr inbounds i32, ptr %224, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !507
  %228 = load ptr, ptr %19, align 8, !tbaa !1161
  %229 = getelementptr inbounds i32, ptr %228, i64 %225
  %230 = load i32, ptr %229, align 4, !tbaa !507
  %231 = add i32 %230, 1
  store i32 %231, ptr %229, align 4, !tbaa !507
  %232 = add i32 %230, %227
  %233 = getelementptr inbounds %struct.df_base_ref, ptr %218, i64 0, i32 7
  store i32 %232, ptr %233, align 4, !tbaa !521
  %234 = load ptr, ptr %0, align 8, !tbaa !893
  %235 = zext i32 %232 to i64
  %236 = getelementptr inbounds ptr, ptr %234, i64 %235
  store ptr %218, ptr %236, align 8, !tbaa !426
  br label %237

237:                                              ; preds = %223, %217
  %238 = getelementptr inbounds ptr, ptr %219, i64 1
  %239 = load ptr, ptr %238, align 8, !tbaa !426
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %217, !prof !526, !llvm.loop !1185

241:                                              ; preds = %237, %213, %205
  br i1 %203, label %270, label %242, !prof !1167

242:                                              ; preds = %241
  %243 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %211) #22
  %244 = load ptr, ptr %243, align 8, !tbaa !426
  %245 = icmp eq ptr %244, null
  br i1 %245, label %270, label %246

246:                                              ; preds = %242, %266
  %247 = phi ptr [ %268, %266 ], [ %244, %242 ]
  %248 = phi ptr [ %267, %266 ], [ %243, %242 ]
  %249 = getelementptr inbounds %struct.df_base_ref, ptr %247, i64 0, i32 6
  %250 = load i32, ptr %249, align 8, !tbaa !521
  %251 = icmp ult i32 %250, %14
  br i1 %251, label %266, label %252

252:                                              ; preds = %246
  %253 = load ptr, ptr %15, align 8, !tbaa !1160
  %254 = zext i32 %250 to i64
  %255 = getelementptr inbounds i32, ptr %253, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !507
  %257 = load ptr, ptr %19, align 8, !tbaa !1161
  %258 = getelementptr inbounds i32, ptr %257, i64 %254
  %259 = load i32, ptr %258, align 4, !tbaa !507
  %260 = add i32 %259, 1
  store i32 %260, ptr %258, align 4, !tbaa !507
  %261 = add i32 %259, %256
  %262 = getelementptr inbounds %struct.df_base_ref, ptr %247, i64 0, i32 7
  store i32 %261, ptr %262, align 4, !tbaa !521
  %263 = load ptr, ptr %0, align 8, !tbaa !893
  %264 = zext i32 %261 to i64
  %265 = getelementptr inbounds ptr, ptr %263, i64 %264
  store ptr %247, ptr %265, align 8, !tbaa !426
  br label %266

266:                                              ; preds = %252, %246
  %267 = getelementptr inbounds ptr, ptr %248, i64 1
  %268 = load ptr, ptr %267, align 8, !tbaa !426
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %246, !llvm.loop !1186

270:                                              ; preds = %266, %242, %241
  %271 = getelementptr inbounds %struct.basic_block_def, ptr %212, i64 0, i32 7
  %272 = load ptr, ptr %271, align 8, !tbaa !521
  %273 = load ptr, ptr %272, align 8, !tbaa !521
  %274 = icmp eq ptr %273, null
  br i1 %274, label %402, label %275, !prof !1169

275:                                              ; preds = %270, %398
  %276 = phi ptr [ %400, %398 ], [ %273, %270 ]
  %277 = load ptr, ptr %271, align 8, !tbaa !521
  %278 = getelementptr inbounds %struct.rtl_bb_info, ptr %277, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !523
  %280 = getelementptr inbounds %struct.rtx_def, ptr %279, i64 0, i32 1, i32 0, i32 0, i64 2
  %281 = load ptr, ptr %280, align 8, !tbaa !521
  %282 = icmp eq ptr %276, %281
  br i1 %282, label %402, label %283, !prof !1170

283:                                              ; preds = %275
  %284 = load i32, ptr %276, align 8
  %285 = and i32 %284, 65535
  %286 = add nsw i32 %285, -7
  %287 = icmp ult i32 %286, 4
  br i1 %287, label %288, label %398, !prof !1171

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.rtx_def, ptr %276, i64 0, i32 1
  %290 = load i32, ptr %289, align 8, !tbaa !521
  br i1 %202, label %326, label %291, !prof !1172

291:                                              ; preds = %288
  %292 = load ptr, ptr @df, align 8, !tbaa !426
  %293 = getelementptr inbounds %struct.df, ptr %292, i64 0, i32 10
  %294 = load ptr, ptr %293, align 8, !tbaa !469
  %295 = zext i32 %290 to i64
  %296 = getelementptr inbounds ptr, ptr %294, i64 %295
  %297 = load ptr, ptr %296, align 8, !tbaa !426
  %298 = getelementptr inbounds %struct.df_insn_info, ptr %297, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !471
  %300 = load ptr, ptr %299, align 8, !tbaa !426
  %301 = icmp eq ptr %300, null
  br i1 %301, label %326, label %302, !prof !1173

302:                                              ; preds = %291, %322
  %303 = phi ptr [ %324, %322 ], [ %300, %291 ]
  %304 = phi ptr [ %323, %322 ], [ %299, %291 ]
  %305 = getelementptr inbounds %struct.df_base_ref, ptr %303, i64 0, i32 6
  %306 = load i32, ptr %305, align 8, !tbaa !521
  %307 = icmp ult i32 %306, %14
  br i1 %307, label %322, label %308, !prof !1187

308:                                              ; preds = %302
  %309 = load ptr, ptr %15, align 8, !tbaa !1160
  %310 = zext i32 %306 to i64
  %311 = getelementptr inbounds i32, ptr %309, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !507
  %313 = load ptr, ptr %19, align 8, !tbaa !1161
  %314 = getelementptr inbounds i32, ptr %313, i64 %310
  %315 = load i32, ptr %314, align 4, !tbaa !507
  %316 = add i32 %315, 1
  store i32 %316, ptr %314, align 4, !tbaa !507
  %317 = add i32 %315, %312
  %318 = getelementptr inbounds %struct.df_base_ref, ptr %303, i64 0, i32 7
  store i32 %317, ptr %318, align 4, !tbaa !521
  %319 = load ptr, ptr %0, align 8, !tbaa !893
  %320 = zext i32 %317 to i64
  %321 = getelementptr inbounds ptr, ptr %319, i64 %320
  store ptr %303, ptr %321, align 8, !tbaa !426
  br label %322

322:                                              ; preds = %308, %302
  %323 = getelementptr inbounds ptr, ptr %304, i64 1
  %324 = load ptr, ptr %323, align 8, !tbaa !426
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %302, !prof !1174, !llvm.loop !1188

326:                                              ; preds = %322, %291, %288
  br i1 %203, label %362, label %327, !prof !1176

327:                                              ; preds = %326
  %328 = load ptr, ptr @df, align 8, !tbaa !426
  %329 = getelementptr inbounds %struct.df, ptr %328, i64 0, i32 10
  %330 = load ptr, ptr %329, align 8, !tbaa !469
  %331 = zext i32 %290 to i64
  %332 = getelementptr inbounds ptr, ptr %330, i64 %331
  %333 = load ptr, ptr %332, align 8, !tbaa !426
  %334 = getelementptr inbounds %struct.df_insn_info, ptr %333, i64 0, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !475
  %336 = load ptr, ptr %335, align 8, !tbaa !426
  %337 = icmp eq ptr %336, null
  br i1 %337, label %362, label %338

338:                                              ; preds = %327, %358
  %339 = phi ptr [ %360, %358 ], [ %336, %327 ]
  %340 = phi ptr [ %359, %358 ], [ %335, %327 ]
  %341 = getelementptr inbounds %struct.df_base_ref, ptr %339, i64 0, i32 6
  %342 = load i32, ptr %341, align 8, !tbaa !521
  %343 = icmp ult i32 %342, %14
  br i1 %343, label %358, label %344

344:                                              ; preds = %338
  %345 = load ptr, ptr %15, align 8, !tbaa !1160
  %346 = zext i32 %342 to i64
  %347 = getelementptr inbounds i32, ptr %345, i64 %346
  %348 = load i32, ptr %347, align 4, !tbaa !507
  %349 = load ptr, ptr %19, align 8, !tbaa !1161
  %350 = getelementptr inbounds i32, ptr %349, i64 %346
  %351 = load i32, ptr %350, align 4, !tbaa !507
  %352 = add i32 %351, 1
  store i32 %352, ptr %350, align 4, !tbaa !507
  %353 = add i32 %351, %348
  %354 = getelementptr inbounds %struct.df_base_ref, ptr %339, i64 0, i32 7
  store i32 %353, ptr %354, align 4, !tbaa !521
  %355 = load ptr, ptr %0, align 8, !tbaa !893
  %356 = zext i32 %353 to i64
  %357 = getelementptr inbounds ptr, ptr %355, i64 %356
  store ptr %339, ptr %357, align 8, !tbaa !426
  br label %358

358:                                              ; preds = %344, %338
  %359 = getelementptr inbounds ptr, ptr %340, i64 1
  %360 = load ptr, ptr %359, align 8, !tbaa !426
  %361 = icmp eq ptr %360, null
  br i1 %361, label %362, label %338, !llvm.loop !1189

362:                                              ; preds = %358, %327, %326
  br i1 %204, label %398, label %363, !prof !1176

363:                                              ; preds = %362
  %364 = load ptr, ptr @df, align 8, !tbaa !426
  %365 = getelementptr inbounds %struct.df, ptr %364, i64 0, i32 10
  %366 = load ptr, ptr %365, align 8, !tbaa !469
  %367 = zext i32 %290 to i64
  %368 = getelementptr inbounds ptr, ptr %366, i64 %367
  %369 = load ptr, ptr %368, align 8, !tbaa !426
  %370 = getelementptr inbounds %struct.df_insn_info, ptr %369, i64 0, i32 3
  %371 = load ptr, ptr %370, align 8, !tbaa !477
  %372 = load ptr, ptr %371, align 8, !tbaa !426
  %373 = icmp eq ptr %372, null
  br i1 %373, label %398, label %374

374:                                              ; preds = %363, %394
  %375 = phi ptr [ %396, %394 ], [ %372, %363 ]
  %376 = phi ptr [ %395, %394 ], [ %371, %363 ]
  %377 = getelementptr inbounds %struct.df_base_ref, ptr %375, i64 0, i32 6
  %378 = load i32, ptr %377, align 8, !tbaa !521
  %379 = icmp ult i32 %378, %14
  br i1 %379, label %394, label %380

380:                                              ; preds = %374
  %381 = load ptr, ptr %15, align 8, !tbaa !1160
  %382 = zext i32 %378 to i64
  %383 = getelementptr inbounds i32, ptr %381, i64 %382
  %384 = load i32, ptr %383, align 4, !tbaa !507
  %385 = load ptr, ptr %19, align 8, !tbaa !1161
  %386 = getelementptr inbounds i32, ptr %385, i64 %382
  %387 = load i32, ptr %386, align 4, !tbaa !507
  %388 = add i32 %387, 1
  store i32 %388, ptr %386, align 4, !tbaa !507
  %389 = add i32 %387, %384
  %390 = getelementptr inbounds %struct.df_base_ref, ptr %375, i64 0, i32 7
  store i32 %389, ptr %390, align 4, !tbaa !521
  %391 = load ptr, ptr %0, align 8, !tbaa !893
  %392 = zext i32 %389 to i64
  %393 = getelementptr inbounds ptr, ptr %391, i64 %392
  store ptr %375, ptr %393, align 8, !tbaa !426
  br label %394

394:                                              ; preds = %380, %374
  %395 = getelementptr inbounds ptr, ptr %376, i64 1
  %396 = load ptr, ptr %395, align 8, !tbaa !426
  %397 = icmp eq ptr %396, null
  br i1 %397, label %398, label %374, !llvm.loop !1190

398:                                              ; preds = %394, %363, %283, %362
  %399 = getelementptr inbounds %struct.rtx_def, ptr %276, i64 0, i32 1, i32 0, i32 0, i64 2
  %400 = load ptr, ptr %399, align 8, !tbaa !521
  %401 = icmp eq ptr %400, null
  br i1 %401, label %402, label %275, !prof !1179, !llvm.loop !1191

402:                                              ; preds = %275, %398, %270
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %403 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !680
  %404 = icmp eq i8 %403, 0
  br i1 %404, label %405, label %205, !prof !1181, !llvm.loop !1192

405:                                              ; preds = %402, %197
  %406 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 4
  store i32 %198, ptr %406, align 4, !tbaa !892
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_reorganize_refs_by_reg_by_reg(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !517 !PGOFuncName !1193 {
  %5 = load ptr, ptr @df, align 8, !tbaa !426
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !505
  %8 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 27
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12, !prof !531

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !1160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %14, i8 0, i64 212, i1 false)
  %15 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !1161
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %16, i8 0, i64 212, i1 false)
  br label %17

17:                                               ; preds = %4, %12
  %18 = phi i32 [ 53, %12 ], [ 0, %4 ]
  %19 = tail call fastcc i32 @df_count_refs(i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  %20 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 5
  store i32 %19, ptr %20, align 8, !tbaa !894
  tail call fastcc void @df_check_and_grow_ref_info(ptr noundef %0) #22
  %21 = icmp ult i32 %18, %7
  br i1 %21, label %22, label %124, !prof !1194

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 1
  %24 = icmp eq i8 %1, 0
  %25 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 3
  %26 = icmp eq i8 %2, 0
  %27 = icmp eq i8 %3, 0
  %28 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 2
  %29 = zext nneg i32 %18 to i64
  %30 = zext i32 %7 to i64
  br label %31

31:                                               ; preds = %22, %117
  %32 = phi i64 [ %29, %22 ], [ %122, %117 ]
  %33 = phi i32 [ 0, %22 ], [ %118, %117 ]
  %34 = load ptr, ptr %23, align 8, !tbaa !1160
  %35 = getelementptr inbounds i32, ptr %34, i64 %32
  store i32 %33, ptr %35, align 4, !tbaa !507
  br i1 %24, label %61, label %36, !prof !1195

36:                                               ; preds = %31
  %37 = load ptr, ptr @df, align 8, !tbaa !426
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !497
  %40 = getelementptr inbounds ptr, ptr %39, i64 %32
  %41 = load ptr, ptr %40, align 8, !tbaa !426
  %42 = load ptr, ptr %41, align 8, !tbaa !586
  %43 = icmp eq ptr %42, null
  br i1 %43, label %61, label %44, !prof !1196

44:                                               ; preds = %36, %59
  %45 = phi ptr [ %55, %59 ], [ %42, %36 ]
  %46 = phi i32 [ %53, %59 ], [ 0, %36 ]
  %47 = phi i32 [ %51, %59 ], [ %33, %36 ]
  %48 = load ptr, ptr %0, align 8, !tbaa !893
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  store ptr %45, ptr %50, align 8, !tbaa !426
  %51 = add i32 %47, 1
  %52 = getelementptr inbounds %struct.df_base_ref, ptr %45, i64 0, i32 7
  store i32 %47, ptr %52, align 4, !tbaa !521
  %53 = add nuw nsw i32 %46, 1
  %54 = getelementptr inbounds %struct.df_base_ref, ptr %45, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !521
  %56 = load i32, ptr %25, align 8, !tbaa !897
  %57 = icmp ult i32 %51, %56
  br i1 %57, label %59, label %58, !prof !1197

58:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1573, ptr noundef nonnull @.str.9) #21
  br label %59

59:                                               ; preds = %44, %58
  %60 = icmp eq ptr %55, null
  br i1 %60, label %61, label %44, !prof !1198, !llvm.loop !1199

61:                                               ; preds = %59, %36, %31
  %62 = phi i32 [ %33, %31 ], [ %33, %36 ], [ %51, %59 ]
  %63 = phi i32 [ 0, %31 ], [ 0, %36 ], [ %53, %59 ]
  br i1 %26, label %89, label %64, !prof !1200

64:                                               ; preds = %61
  %65 = load ptr, ptr @df, align 8, !tbaa !426
  %66 = getelementptr inbounds %struct.df, ptr %65, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !498
  %68 = getelementptr inbounds ptr, ptr %67, i64 %32
  %69 = load ptr, ptr %68, align 8, !tbaa !426
  %70 = load ptr, ptr %69, align 8, !tbaa !586
  %71 = icmp eq ptr %70, null
  br i1 %71, label %89, label %72

72:                                               ; preds = %64, %87
  %73 = phi ptr [ %83, %87 ], [ %70, %64 ]
  %74 = phi i32 [ %81, %87 ], [ %63, %64 ]
  %75 = phi i32 [ %79, %87 ], [ %62, %64 ]
  %76 = load ptr, ptr %0, align 8, !tbaa !893
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77
  store ptr %73, ptr %78, align 8, !tbaa !426
  %79 = add i32 %75, 1
  %80 = getelementptr inbounds %struct.df_base_ref, ptr %73, i64 0, i32 7
  store i32 %75, ptr %80, align 4, !tbaa !521
  %81 = add nuw nsw i32 %74, 1
  %82 = getelementptr inbounds %struct.df_base_ref, ptr %73, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !521
  %84 = load i32, ptr %25, align 8, !tbaa !897
  %85 = icmp ult i32 %79, %84
  br i1 %85, label %87, label %86

86:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1585, ptr noundef nonnull @.str.9) #21
  br label %87

87:                                               ; preds = %72, %86
  %88 = icmp eq ptr %83, null
  br i1 %88, label %89, label %72, !llvm.loop !1201

89:                                               ; preds = %87, %64, %61
  %90 = phi i32 [ %62, %61 ], [ %62, %64 ], [ %79, %87 ]
  %91 = phi i32 [ %63, %61 ], [ %63, %64 ], [ %81, %87 ]
  br i1 %27, label %117, label %92, !prof !1200

92:                                               ; preds = %89
  %93 = load ptr, ptr @df, align 8, !tbaa !426
  %94 = getelementptr inbounds %struct.df, ptr %93, i64 0, i32 7
  %95 = load ptr, ptr %94, align 8, !tbaa !499
  %96 = getelementptr inbounds ptr, ptr %95, i64 %32
  %97 = load ptr, ptr %96, align 8, !tbaa !426
  %98 = load ptr, ptr %97, align 8, !tbaa !586
  %99 = icmp eq ptr %98, null
  br i1 %99, label %117, label %100

100:                                              ; preds = %92, %115
  %101 = phi ptr [ %111, %115 ], [ %98, %92 ]
  %102 = phi i32 [ %109, %115 ], [ %91, %92 ]
  %103 = phi i32 [ %107, %115 ], [ %90, %92 ]
  %104 = load ptr, ptr %0, align 8, !tbaa !893
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds ptr, ptr %104, i64 %105
  store ptr %101, ptr %106, align 8, !tbaa !426
  %107 = add i32 %103, 1
  %108 = getelementptr inbounds %struct.df_base_ref, ptr %101, i64 0, i32 7
  store i32 %103, ptr %108, align 4, !tbaa !521
  %109 = add nsw i32 %102, 1
  %110 = getelementptr inbounds %struct.df_base_ref, ptr %101, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !521
  %112 = load i32, ptr %25, align 8, !tbaa !897
  %113 = icmp ult i32 %107, %112
  br i1 %113, label %115, label %114

114:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1597, ptr noundef nonnull @.str.9) #21
  br label %115

115:                                              ; preds = %100, %114
  %116 = icmp eq ptr %111, null
  br i1 %116, label %117, label %100, !llvm.loop !1202

117:                                              ; preds = %115, %92, %89
  %118 = phi i32 [ %90, %89 ], [ %90, %92 ], [ %107, %115 ]
  %119 = phi i32 [ %91, %89 ], [ %91, %92 ], [ %109, %115 ]
  %120 = load ptr, ptr %28, align 8, !tbaa !1161
  %121 = getelementptr inbounds i32, ptr %120, i64 %32
  store i32 %119, ptr %121, align 4, !tbaa !507
  %122 = add nuw nsw i64 %32, 1
  %123 = icmp eq i64 %122, %30
  br i1 %123, label %124, label %31, !prof !1203, !llvm.loop !1204

124:                                              ; preds = %117, %17
  %125 = phi i32 [ 0, %17 ], [ %118, %117 ]
  %126 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 4
  store i32 %125, ptr %126, align 4, !tbaa !892
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @df_count_refs(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #16 !prof !899 !PGOFuncName !1205 {
  %4 = load ptr, ptr @df, align 8, !tbaa !426
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !505
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %48, label %8, !prof !1206

8:                                                ; preds = %3
  %9 = icmp eq i8 %0, 0
  %10 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 5
  %11 = icmp eq i8 %1, 0
  %12 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 6
  %13 = icmp eq i8 %2, 0
  %14 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 7
  %15 = zext i32 %6 to i64
  br label %16

16:                                               ; preds = %8, %44
  %17 = phi i64 [ 0, %8 ], [ %46, %44 ]
  %18 = phi i32 [ 0, %8 ], [ %45, %44 ]
  br i1 %9, label %26, label %19, !prof !1207

19:                                               ; preds = %16
  %20 = load ptr, ptr %10, align 8, !tbaa !497
  %21 = getelementptr inbounds ptr, ptr %20, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !426
  %23 = getelementptr inbounds %struct.df_reg_info, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !535
  %25 = add i32 %24, %18
  br label %26

26:                                               ; preds = %19, %16
  %27 = phi i32 [ %25, %19 ], [ %18, %16 ]
  br i1 %11, label %35, label %28, !prof !1208

28:                                               ; preds = %26
  %29 = load ptr, ptr %12, align 8, !tbaa !498
  %30 = getelementptr inbounds ptr, ptr %29, i64 %17
  %31 = load ptr, ptr %30, align 8, !tbaa !426
  %32 = getelementptr inbounds %struct.df_reg_info, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !535
  %34 = add i32 %33, %27
  br label %35

35:                                               ; preds = %28, %26
  %36 = phi i32 [ %34, %28 ], [ %27, %26 ]
  br i1 %13, label %44, label %37, !prof !1208

37:                                               ; preds = %35
  %38 = load ptr, ptr %14, align 8, !tbaa !499
  %39 = getelementptr inbounds ptr, ptr %38, i64 %17
  %40 = load ptr, ptr %39, align 8, !tbaa !426
  %41 = getelementptr inbounds %struct.df_reg_info, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !535
  %43 = add i32 %42, %36
  br label %44

44:                                               ; preds = %35, %37
  %45 = phi i32 [ %43, %37 ], [ %36, %35 ]
  %46 = add nuw nsw i64 %17, 1
  %47 = icmp eq i64 %46, %15
  br i1 %47, label %48, label %16, !prof !1209, !llvm.loop !1210

48:                                               ; preds = %44, %3
  %49 = phi i32 [ 0, %3 ], [ %45, %44 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_defs(i32 noundef %0) unnamed_addr #3 !prof !1211 !PGOFuncName !1212 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #22
  %3 = load ptr, ptr %2, align 8, !tbaa !484
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_uses(i32 noundef %0) unnamed_addr #3 !prof !1213 !PGOFuncName !1214 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #22
  %3 = getelementptr inbounds %struct.df_scan_bb_info, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !487
  ret ptr %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @df_reorganize_refs_by_insn_bb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #17 !prof !1213 !PGOFuncName !1215 {
  %7 = icmp eq i8 %3, 0
  br i1 %7, label %13, label %8, !prof !1216

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !450
  %11 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %10) #22
  %12 = tail call fastcc i32 @df_add_refs_to_table(i32 noundef %1, ptr noundef %2, ptr noundef %11) #22
  br label %13

13:                                               ; preds = %8, %6
  %14 = phi i32 [ %12, %8 ], [ %1, %6 ]
  %15 = icmp eq i8 %4, 0
  br i1 %15, label %21, label %16, !prof !1217

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !450
  %19 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %18) #22
  %20 = tail call fastcc i32 @df_add_refs_to_table(i32 noundef %14, ptr noundef %2, ptr noundef %19) #22
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i32 [ %20, %16 ], [ %14, %13 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !521
  %25 = load ptr, ptr %24, align 8, !tbaa !521
  %26 = icmp eq ptr %25, null
  br i1 %26, label %85, label %27, !prof !1218

27:                                               ; preds = %21
  %28 = icmp eq i8 %5, 0
  br label %29

29:                                               ; preds = %27, %80
  %30 = phi ptr [ %25, %27 ], [ %83, %80 ]
  %31 = phi i32 [ %22, %27 ], [ %81, %80 ]
  %32 = load ptr, ptr %23, align 8, !tbaa !521
  %33 = getelementptr inbounds %struct.rtl_bb_info, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !523
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !521
  %37 = icmp eq ptr %30, %36
  br i1 %37, label %85, label %38, !prof !1219

38:                                               ; preds = %29
  %39 = load i32, ptr %30, align 8
  %40 = and i32 %39, 65535
  %41 = add nsw i32 %40, -7
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %43, label %80, !prof !1220

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !521
  br i1 %7, label %56, label %46, !prof !1221

46:                                               ; preds = %43
  %47 = load ptr, ptr @df, align 8, !tbaa !426
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !469
  %50 = zext i32 %45 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !426
  %53 = getelementptr inbounds %struct.df_insn_info, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !471
  %55 = tail call fastcc i32 @df_add_refs_to_table(i32 noundef %31, ptr noundef %2, ptr noundef %54) #22
  br label %56

56:                                               ; preds = %46, %43
  %57 = phi i32 [ %55, %46 ], [ %31, %43 ]
  br i1 %15, label %68, label %58, !prof !1222

58:                                               ; preds = %56
  %59 = load ptr, ptr @df, align 8, !tbaa !426
  %60 = getelementptr inbounds %struct.df, ptr %59, i64 0, i32 10
  %61 = load ptr, ptr %60, align 8, !tbaa !469
  %62 = zext i32 %45 to i64
  %63 = getelementptr inbounds ptr, ptr %61, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !426
  %65 = getelementptr inbounds %struct.df_insn_info, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !475
  %67 = tail call fastcc i32 @df_add_refs_to_table(i32 noundef %57, ptr noundef %2, ptr noundef %66) #22
  br label %68

68:                                               ; preds = %58, %56
  %69 = phi i32 [ %67, %58 ], [ %57, %56 ]
  br i1 %28, label %80, label %70, !prof !1222

70:                                               ; preds = %68
  %71 = load ptr, ptr @df, align 8, !tbaa !426
  %72 = getelementptr inbounds %struct.df, ptr %71, i64 0, i32 10
  %73 = load ptr, ptr %72, align 8, !tbaa !469
  %74 = zext i32 %45 to i64
  %75 = getelementptr inbounds ptr, ptr %73, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !426
  %77 = getelementptr inbounds %struct.df_insn_info, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !477
  %79 = tail call fastcc i32 @df_add_refs_to_table(i32 noundef %69, ptr noundef %2, ptr noundef %78) #22
  br label %80

80:                                               ; preds = %38, %68, %70
  %81 = phi i32 [ %31, %38 ], [ %79, %70 ], [ %69, %68 ]
  %82 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %83 = load ptr, ptr %82, align 8, !tbaa !521
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %29, !prof !1223, !llvm.loop !1224

85:                                               ; preds = %29, %80, %21
  %86 = phi i32 [ %22, %21 ], [ %81, %80 ], [ %31, %29 ]
  ret i32 %86
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @df_add_refs_to_table(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #17 !prof !1225 !PGOFuncName !1226 {
  %4 = load ptr, ptr %2, align 8, !tbaa !426
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6, !prof !1227

6:                                                ; preds = %3
  %7 = load ptr, ptr @df, align 8, !tbaa !426
  br label %8

8:                                                ; preds = %6, %29
  %9 = phi ptr [ %30, %29 ], [ %7, %6 ]
  %10 = phi ptr [ %33, %29 ], [ %4, %6 ]
  %11 = phi i32 [ %31, %29 ], [ %0, %6 ]
  %12 = phi ptr [ %32, %29 ], [ %2, %6 ]
  %13 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 27
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17, !prof !1228

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !521
  %20 = icmp ugt i32 %19, 52
  br i1 %20, label %21, label %29

21:                                               ; preds = %17, %8
  %22 = load ptr, ptr %1, align 8, !tbaa !893
  %23 = zext i32 %11 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  store ptr %10, ptr %24, align 8, !tbaa !426
  %25 = add i32 %11, 1
  %26 = load ptr, ptr %12, align 8, !tbaa !426
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 7
  store i32 %11, ptr %27, align 4, !tbaa !521
  %28 = load ptr, ptr @df, align 8, !tbaa !426
  br label %29

29:                                               ; preds = %21, %17
  %30 = phi ptr [ %28, %21 ], [ %9, %17 ]
  %31 = phi i32 [ %25, %21 ], [ %11, %17 ]
  %32 = getelementptr inbounds ptr, ptr %12, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !426
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %8, !prof !1229, !llvm.loop !1230

35:                                               ; preds = %29, %3
  %36 = phi i32 [ %0, %3 ], [ %31, %29 ]
  ret i32 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_maybe_reorganize_def_refs(i32 noundef %0) local_unnamed_addr #0 !prof !1231 {
  %2 = load ptr, ptr @df, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 3
  %4 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 3, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !593
  %6 = icmp eq i32 %5, %0
  br i1 %6, label %19, label %7, !prof !1232

7:                                                ; preds = %1
  switch i32 %0, label %16 [
    i32 3, label %8
    i32 5, label %9
    i32 0, label %10
    i32 6, label %15
    i32 4, label %15
    i32 1, label %15
    i32 2, label %15
  ], !prof !1233

8:                                                ; preds = %7
  tail call fastcc void @df_reorganize_refs_by_reg(ptr noundef nonnull %3, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  br label %16

9:                                                ; preds = %7
  tail call fastcc void @df_reorganize_refs_by_insn(ptr noundef nonnull %3, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  br label %16

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !tbaa !491
  tail call void @free(ptr noundef %11) #22
  %12 = load ptr, ptr @df, align 8, !tbaa !426
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 3
  store ptr null, ptr %13, align 8, !tbaa !491
  %14 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 3, i32 3
  store i32 0, ptr %14, align 8, !tbaa !1234
  br label %16

15:                                               ; preds = %7, %7, %7, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1964, ptr noundef nonnull @.str.9) #21
  br label %16

16:                                               ; preds = %7, %15, %10, %9, %8
  %17 = load ptr, ptr @df, align 8, !tbaa !426
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 3, i32 6
  store i32 %0, ptr %18, align 4, !tbaa !593
  br label %19

19:                                               ; preds = %1, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_insn_change_bb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !1235 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !521
  %6 = load i32, ptr %3, align 8, !tbaa !521
  %7 = icmp eq ptr %5, %1
  br i1 %7, label %58, label %8, !prof !1236

8:                                                ; preds = %2
  store ptr %1, ptr %4, align 8, !tbaa !521
  %9 = load ptr, ptr @df, align 8, !tbaa !426
  %10 = icmp eq ptr %9, null
  br i1 %10, label %58, label %11, !prof !1237

11:                                               ; preds = %8
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !1238

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.41, i32 noundef %6) #22
  %16 = load ptr, ptr @df, align 8, !tbaa !426
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi ptr [ %16, %14 ], [ %9, %11 ]
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !468
  %21 = icmp ult i32 %6, %20
  br i1 %21, label %22, label %29, !prof !1239

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !469
  %25 = zext i32 %6 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !426
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36, !prof !1240

29:                                               ; preds = %17, %22
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32, !prof !1241

32:                                               ; preds = %29
  %33 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 17, i64 1, ptr nonnull %30)
  br label %34

34:                                               ; preds = %32, %29
  %35 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %0) #22, !range !680
  br label %58

36:                                               ; preds = %22
  %37 = load i32, ptr %0, align 8
  %38 = and i32 %37, 65535
  %39 = add nsw i32 %38, -7
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %41, label %58, !prof !1242

41:                                               ; preds = %36
  tail call void @df_set_bb_dirty(ptr noundef %1) #21
  %42 = icmp eq ptr %5, null
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %44 = icmp eq ptr %43, null
  br i1 %42, label %53, label %45, !prof !1243

45:                                               ; preds = %41
  br i1 %44, label %52, label %46, !prof !1244

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !450
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !450
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %43, ptr noundef nonnull @.str.43, i32 noundef %48, i32 noundef %50) #22
  br label %52

52:                                               ; preds = %46, %45
  tail call void @df_set_bb_dirty(ptr noundef nonnull %5) #21
  br label %58

53:                                               ; preds = %41
  br i1 %44, label %58, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !450
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %43, ptr noundef nonnull @.str.44, i32 noundef %56) #22
  br label %58

58:                                               ; preds = %36, %52, %54, %53, %8, %2, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_ref_change_reg_with_loc(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !1245 {
  %4 = load ptr, ptr @df, align 8, !tbaa !426
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i32 %0, -1
  %7 = or i1 %6, %5
  %8 = icmp eq i32 %0, %1
  %9 = or i1 %8, %7
  br i1 %9, label %34, label %10, !prof !1246

10:                                               ; preds = %3
  tail call void @df_grow_reg_info() #22
  %11 = load ptr, ptr @df, align 8, !tbaa !426
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !497
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !426
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds ptr, ptr %13, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !426
  tail call fastcc void @df_ref_change_reg_with_loc_1(ptr noundef %16, ptr noundef %19, i32 noundef %1, ptr noundef %2) #22
  %20 = load ptr, ptr @df, align 8, !tbaa !426
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !498
  %23 = getelementptr inbounds ptr, ptr %22, i64 %14
  %24 = load ptr, ptr %23, align 8, !tbaa !426
  %25 = getelementptr inbounds ptr, ptr %22, i64 %17
  %26 = load ptr, ptr %25, align 8, !tbaa !426
  tail call fastcc void @df_ref_change_reg_with_loc_1(ptr noundef %24, ptr noundef %26, i32 noundef %1, ptr noundef %2) #22
  %27 = load ptr, ptr @df, align 8, !tbaa !426
  %28 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !499
  %30 = getelementptr inbounds ptr, ptr %29, i64 %14
  %31 = load ptr, ptr %30, align 8, !tbaa !426
  %32 = getelementptr inbounds ptr, ptr %29, i64 %17
  %33 = load ptr, ptr %32, align 8, !tbaa !426
  tail call fastcc void @df_ref_change_reg_with_loc_1(ptr noundef %31, ptr noundef %33, i32 noundef %1, ptr noundef %2) #22
  br label %34

34:                                               ; preds = %3, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_ref_change_reg_with_loc_1(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef readnone %3) unnamed_addr #0 !prof !1247 !PGOFuncName !1248 {
  %5 = load ptr, ptr %0, align 8, !tbaa !586
  %6 = icmp eq ptr %5, null
  br i1 %6, label %100, label %7, !prof !1249

7:                                                ; preds = %4, %97
  %8 = phi ptr [ %98, %97 ], [ %5, %4 ]
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 254
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %94, !prof !1250

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.df_regular_ref, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !521
  %15 = icmp eq ptr %14, null
  br i1 %15, label %94, label %16, !prof !1251

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !426
  %18 = icmp eq ptr %17, %3
  br i1 %18, label %19, label %94, !prof !1252

19:                                               ; preds = %16
  %20 = sext i32 %2 to i64
  %21 = getelementptr inbounds %struct.df_base_ref, ptr %8, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !521
  %23 = getelementptr inbounds %struct.df_base_ref, ptr %8, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !521
  %25 = getelementptr inbounds %struct.df_base_ref, ptr %8, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !521
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %8, i64 0, i32 6
  store i32 %2, ptr %27, align 8, !tbaa !521
  %28 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !426
  %29 = getelementptr inbounds ptr, ptr %28, i64 %20
  %30 = load ptr, ptr %29, align 8, !tbaa !426
  %31 = getelementptr inbounds %struct.df_base_ref, ptr %8, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !521
  %32 = icmp eq ptr %24, null
  %33 = getelementptr inbounds %struct.df_base_ref, ptr %24, i64 0, i32 4
  %34 = select i1 %32, ptr %0, ptr %33, !prof !1253
  store ptr %22, ptr %34, align 8, !tbaa !521
  %35 = icmp eq ptr %22, null
  br i1 %35, label %38, label %36, !prof !1254

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.df_base_ref, ptr %22, i64 0, i32 5
  store ptr %24, ptr %37, align 8, !tbaa !521
  br label %38

38:                                               ; preds = %36, %19
  %39 = getelementptr inbounds %struct.df_reg_info, ptr %0, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !535
  %41 = add i32 %40, -1
  store i32 %41, ptr %39, align 8, !tbaa !535
  store ptr null, ptr %23, align 8, !tbaa !521
  %42 = load ptr, ptr %1, align 8, !tbaa !586
  store ptr %42, ptr %21, align 8, !tbaa !521
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44, !prof !1255

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.df_base_ref, ptr %42, i64 0, i32 5
  store ptr %8, ptr %45, align 8, !tbaa !521
  br label %46

46:                                               ; preds = %44, %38
  %47 = getelementptr inbounds %struct.df_reg_info, ptr %1, i64 0, i32 1
  store ptr %8, ptr %1, align 8, !tbaa !586
  %48 = load i32, ptr %47, align 8, !tbaa !535
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8, !tbaa !535
  %50 = load i32, ptr %8, align 8
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %56, !prof !1256

53:                                               ; preds = %46
  %54 = load ptr, ptr %13, align 8, !tbaa !521
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %62

56:                                               ; preds = %46
  %57 = load ptr, ptr %25, align 8, !tbaa !521
  %58 = load ptr, ptr %57, align 8, !tbaa !578
  %59 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !521
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62, !prof !1256

62:                                               ; preds = %56, %53
  %63 = phi ptr [ %54, %53 ], [ %60, %56 ]
  tail call void @df_set_bb_dirty(ptr noundef nonnull %63) #21
  %64 = load i32, ptr %8, align 8
  br label %65

65:                                               ; preds = %62, %56, %53
  %66 = phi i32 [ %64, %62 ], [ %50, %56 ], [ %50, %53 ]
  %67 = and i32 %66, 262144
  %68 = icmp eq i32 %67, 0
  %69 = getelementptr inbounds %struct.df_insn_info, ptr %26, i64 0, i32 3
  %70 = getelementptr inbounds %struct.df_insn_info, ptr %26, i64 0, i32 2
  %71 = select i1 %68, ptr %70, ptr %69, !prof !1257
  %72 = load ptr, ptr %71, align 8, !tbaa !426
  %73 = load ptr, ptr @dump_file, align 8, !tbaa !426
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75, !prof !1252

75:                                               ; preds = %65
  %76 = load ptr, ptr %25, align 8, !tbaa !521
  %77 = load ptr, ptr %76, align 8, !tbaa !578
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !521
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %73, ptr noundef nonnull @.str.45, i32 noundef %79) #22
  br label %81

81:                                               ; preds = %75, %65
  %82 = load ptr, ptr %72, align 8, !tbaa !426
  %83 = icmp eq ptr %82, null
  br i1 %83, label %91, label %84, !prof !1258

84:                                               ; preds = %81, %84
  %85 = phi i32 [ %87, %84 ], [ 0, %81 ]
  %86 = phi ptr [ %88, %84 ], [ %72, %81 ]
  %87 = add i32 %85, 1
  %88 = getelementptr inbounds ptr, ptr %86, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !426
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %84, !prof !1259, !llvm.loop !1260

91:                                               ; preds = %84, %81
  %92 = phi i32 [ 0, %81 ], [ %87, %84 ]
  %93 = zext i32 %92 to i64
  tail call void @spec_qsort(ptr noundef nonnull %72, i64 noundef %93, i64 noundef 8, ptr noundef nonnull @df_ref_compare) #21
  br label %97

94:                                               ; preds = %7, %16, %12
  %95 = getelementptr inbounds %struct.df_base_ref, ptr %8, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !521
  br label %97

97:                                               ; preds = %94, %91
  %98 = phi ptr [ %96, %94 ], [ %22, %91 ]
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %7, !prof !1261, !llvm.loop !1262

100:                                              ; preds = %97, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @df_mw_hardreg_chain_delete_eq_uses(ptr nocapture noundef %0) unnamed_addr #0 !prof !1263 !PGOFuncName !1264 {
  %2 = getelementptr inbounds %struct.df_insn_info, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !479
  %4 = load ptr, ptr %3, align 8, !tbaa !426
  %5 = icmp eq ptr %4, null
  br i1 %5, label %52, label %6, !prof !1265

6:                                                ; preds = %1
  %7 = load ptr, ptr @df, align 8, !tbaa !426
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !426
  %10 = getelementptr inbounds %struct.dataflow, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !430
  br label %12

12:                                               ; preds = %6, %36
  %13 = phi i32 [ 0, %6 ], [ %39, %36 ]
  %14 = phi i32 [ 0, %6 ], [ %38, %36 ]
  %15 = phi ptr [ %3, %6 ], [ %37, %36 ]
  %16 = phi ptr [ %4, %6 ], [ %40, %36 ]
  %17 = getelementptr inbounds %struct.df_mw_hardreg, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 262144
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21, !prof !1266

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.df_scan_problem_data, ptr %11, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !446
  tail call void @pool_free(ptr noundef %23, ptr noundef nonnull %16) #21
  %24 = load ptr, ptr %15, align 8, !tbaa !426
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %28, %26 ], [ %15, %21 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !426
  store ptr %29, ptr %27, align 8, !tbaa !426
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26, !llvm.loop !1267

31:                                               ; preds = %26, %21
  %32 = add i32 %14, 1
  br label %36

33:                                               ; preds = %12
  %34 = getelementptr inbounds ptr, ptr %15, i64 1
  %35 = add i32 %13, 1
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi ptr [ %15, %31 ], [ %34, %33 ]
  %38 = phi i32 [ %32, %31 ], [ %14, %33 ]
  %39 = phi i32 [ %13, %31 ], [ %35, %33 ]
  %40 = load ptr, ptr %37, align 8, !tbaa !426
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %12, !prof !1268, !llvm.loop !1269

42:                                               ; preds = %36
  %43 = icmp eq i32 %39, 0
  br i1 %43, label %44, label %52, !prof !1270

44:                                               ; preds = %42
  %45 = load ptr, ptr %2, align 8, !tbaa !479
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %45, align 8, !tbaa !426
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void @free(ptr noundef nonnull %45) #22
  br label %51

51:                                               ; preds = %50, %47, %44
  store ptr @df_null_mw_rec, ptr %2, align 8, !tbaa !479
  br label %52

52:                                               ; preds = %42, %1, %51
  %53 = phi i32 [ 0, %51 ], [ 0, %1 ], [ %38, %42 ]
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_recompute_luids(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !532 {
  tail call void @df_grow_insn_info() #22
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !521
  %4 = load ptr, ptr %3, align 8, !tbaa !521
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %1, %33
  %7 = phi ptr [ %43, %33 ], [ %4, %1 ]
  %8 = phi i32 [ %41, %33 ], [ 0, %1 ]
  %9 = load ptr, ptr %2, align 8, !tbaa !521
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !523
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !521
  %14 = icmp eq ptr %7, %13
  br i1 %14, label %45, label %15

15:                                               ; preds = %6
  %16 = load ptr, ptr @df, align 8, !tbaa !426
  %17 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !469
  %19 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !521
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !426
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = load i32, ptr %7, align 8
  %27 = and i32 %26, 65535
  %28 = add nsw i32 %27, -7
  %29 = icmp ult i32 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3633, ptr noundef nonnull @.str.9) #21
  br label %31

31:                                               ; preds = %25, %30
  %32 = tail call ptr @df_insn_create_insn_record(ptr noundef nonnull %7) #22
  br label %33

33:                                               ; preds = %31, %15
  %34 = phi ptr [ %23, %15 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 5
  store i32 %8, ptr %35, align 8, !tbaa !671
  %36 = load i32, ptr %7, align 8
  %37 = and i32 %36, 65535
  %38 = add nsw i32 %37, -7
  %39 = icmp ult i32 %38, 4
  %40 = zext i1 %39 to i32
  %41 = add nuw nsw i32 %8, %40
  %42 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !521
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %6, !llvm.loop !1271

45:                                               ; preds = %6, %33, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_bb_refs_collect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1272 !PGOFuncName !1273 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 8, !tbaa !641
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %5, i32 noundef 0) #22
  %6 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !659
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %7, i32 noundef 0) #22
  %8 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !665
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %9, i32 noundef 0) #22
  %10 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !666
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_truncate(ptr noundef %11, i32 noundef 0) #22
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !450
  switch i32 %13, label %22 [
    i32 0, label %14
    i32 1, label %18
  ], !prof !1274

14:                                               ; preds = %2
  %15 = load ptr, ptr @df, align 8, !tbaa !426
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 16
  %17 = load ptr, ptr %16, align 8, !tbaa !461
  tail call fastcc void @df_entry_block_defs_collect(ptr noundef nonnull %0, ptr noundef %17) #22
  br label %64

18:                                               ; preds = %2
  %19 = load ptr, ptr @df, align 8, !tbaa !426
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !462
  tail call fastcc void @df_exit_block_uses_collect(ptr noundef nonnull %0, ptr noundef %21) #22
  br label %64

22:                                               ; preds = %2
  %23 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef nonnull %1) #22, !range !680
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25, !prof !1275

25:                                               ; preds = %22
  %26 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !426
  %27 = load ptr, ptr %26, align 8, !tbaa !426
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef nonnull %0, ptr noundef %27, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 2, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  %28 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !426
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !426
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef nonnull %0, ptr noundef %30, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 2, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %31

31:                                               ; preds = %25, %22
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %33 = load i32, ptr %32, align 8, !tbaa !1276
  %34 = and i32 %33, 256
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !1275

36:                                               ; preds = %31
  %37 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !426
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef nonnull %0, ptr noundef %37, ptr noundef null, ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, i32 noundef 2, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, ptr %12, align 8, !tbaa !450
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %63, !prof !1275

41:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %42 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef nonnull %1) #22, !range !680
  %43 = icmp eq i8 %42, 0
  %44 = load ptr, ptr @df, align 8, !tbaa !426
  br i1 %43, label %47, label %45, !prof !1275

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 15
  br label %49

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 14
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi ptr [ %46, %45 ], [ %48, %47 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !426
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %51, ptr noundef nonnull %4) #22
  %52 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #22, !range !680
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %62, label %54, !prof !1277

54:                                               ; preds = %49, %54
  %55 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !426
  %56 = load i32, ptr %4, align 4, !tbaa !507
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !426
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef nonnull %0, ptr noundef %59, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %60 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #22, !range !680
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %54, !prof !1278, !llvm.loop !1279

62:                                               ; preds = %54, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %63

63:                                               ; preds = %62, %38
  tail call fastcc void @df_canonize_collection_rec(ptr noundef nonnull %0) #22
  br label %64

64:                                               ; preds = %63, %18, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_update_entry_block_defs() local_unnamed_addr #0 !prof !1137 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  tail call fastcc void @df_get_entry_block_def_set(ptr noundef %1) #22
  %2 = load ptr, ptr @df, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !461
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6, !prof !1280

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @bitmap_equal_p(ptr noundef nonnull %4, ptr noundef %1) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %32, !prof !1281

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef 0) #22
  %11 = load ptr, ptr %10, align 8, !tbaa !484
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %11) #22
  %12 = load ptr, ptr %10, align 8, !tbaa !484
  tail call fastcc void @df_ref_chain_delete(ptr noundef %12) #22
  store ptr null, ptr %10, align 8, !tbaa !484
  br label %22

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !426
  %16 = getelementptr inbounds %struct.dataflow, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !430
  %18 = getelementptr inbounds %struct.df_scan_problem_data, ptr %17, i64 0, i32 7
  %19 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %18) #21
  %20 = load ptr, ptr @df, align 8, !tbaa !426
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 16
  store ptr %19, ptr %21, align 8, !tbaa !461
  br label %22

22:                                               ; preds = %13, %9
  tail call fastcc void @df_record_entry_block_defs(ptr noundef %1) #22
  %23 = load ptr, ptr @df, align 8, !tbaa !426
  %24 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !461
  tail call void @bitmap_copy(ptr noundef %25, ptr noundef %1) #21
  %26 = load ptr, ptr @cfun, align 8, !tbaa !426
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !447
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !594
  %31 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %30, i32 noundef 0) #22
  tail call void @df_set_bb_dirty(ptr noundef %31) #21
  br label %32

32:                                               ; preds = %6, %22
  tail call void @bitmap_obstack_free(ptr noundef %1) #21
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_update_exit_block_uses() local_unnamed_addr #0 !prof !1282 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  tail call fastcc void @df_get_exit_block_use_set(ptr noundef %1) #22
  %2 = load ptr, ptr @df, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !462
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !1283

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @bitmap_equal_p(ptr noundef nonnull %4, ptr noundef %1) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %33, !prof !1284

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef 1) #22
  %11 = getelementptr inbounds %struct.df_scan_bb_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !487
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %12) #22
  %13 = load ptr, ptr %11, align 8, !tbaa !487
  tail call fastcc void @df_ref_chain_delete(ptr noundef %13) #22
  store ptr null, ptr %11, align 8, !tbaa !487
  br label %23

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !426
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !430
  %19 = getelementptr inbounds %struct.df_scan_problem_data, ptr %18, i64 0, i32 7
  %20 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %19) #21
  %21 = load ptr, ptr @df, align 8, !tbaa !426
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 17
  store ptr %20, ptr %22, align 8, !tbaa !462
  br label %23

23:                                               ; preds = %14, %9
  tail call fastcc void @df_record_exit_block_uses(ptr noundef %1) #22
  %24 = load ptr, ptr @df, align 8, !tbaa !426
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !462
  tail call void @bitmap_copy(ptr noundef %26, ptr noundef %1) #21
  %27 = load ptr, ptr @cfun, align 8, !tbaa !426
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !447
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !594
  %32 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %31, i32 noundef 1) #22
  tail call void @df_set_bb_dirty(ptr noundef %32) #21
  br label %33

33:                                               ; preds = %6, %23
  tail call void @bitmap_obstack_free(ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @df_hard_reg_init() local_unnamed_addr #18 !prof !517 {
  %1 = load i1, ptr @initialized, align 1
  br i1 %1, label %3, label %2, !prof !1285

2:                                                ; preds = %0
  store i1 true, ptr @elim_reg_set, align 8
  store i1 true, ptr @initialized, align 1
  br label %3

3:                                                ; preds = %0, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @df_hard_reg_used_p(i32 noundef %0) local_unnamed_addr #3 !prof !1286 {
  %2 = load ptr, ptr @df, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !584
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !507
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @df_hard_reg_used_count(i32 noundef %0) local_unnamed_addr #3 !prof !532 {
  %2 = load ptr, ptr @df, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !584
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !507
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @df_set_regs_ever_live(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #19 !prof !1287 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [53 x i8], ptr @regs_ever_live, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !521
  %6 = icmp eq i8 %5, %1
  br i1 %6, label %12, label %7, !prof !1288

7:                                                ; preds = %2
  store i8 %1, ptr %4, align 1, !tbaa !521
  %8 = load ptr, ptr @df, align 8, !tbaa !426
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1289

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 29
  store i8 1, ptr %11, align 2, !tbaa !1120
  br label %12

12:                                               ; preds = %2, %10, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_compute_regs_ever_live(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !1290 {
  %2 = load ptr, ptr @df, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 29
  %4 = load i8, ptr %3, align 2, !tbaa !1120
  %5 = icmp eq i8 %0, 0
  br i1 %5, label %7, label %6, !prof !1291

6:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(53) @regs_ever_live, i8 0, i64 53, i1 false)
  br label %7

7:                                                ; preds = %6, %1
  %8 = icmp eq i8 %4, 0
  br label %9

9:                                                ; preds = %24, %7
  %10 = phi i64 [ %26, %24 ], [ 0, %7 ]
  %11 = phi i1 [ false, %24 ], [ %8, %7 ]
  br label %12

12:                                               ; preds = %9, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %9 ]
  %14 = getelementptr inbounds [53 x i8], ptr @regs_ever_live, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !521
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21, !prof !1292

17:                                               ; preds = %12
  %18 = trunc i64 %13 to i32
  %19 = tail call zeroext i8 @df_hard_reg_used_p(i32 noundef %18) #22, !range !680
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24, !prof !1293

21:                                               ; preds = %12, %17
  %22 = add nuw nsw i64 %13, 1
  %23 = icmp eq i64 %22, 53
  br i1 %23, label %28, label %12, !prof !1294, !llvm.loop !1295

24:                                               ; preds = %17
  %25 = getelementptr inbounds [53 x i8], ptr @regs_ever_live, i64 0, i64 %13
  store i8 1, ptr %25, align 1, !tbaa !521
  %26 = add nuw nsw i64 %13, 1
  %27 = icmp eq i64 %26, 53
  br i1 %27, label %29, label %9, !prof !1294, !llvm.loop !1295

28:                                               ; preds = %21
  br i1 %11, label %31, label %29, !prof !1021

29:                                               ; preds = %24, %28
  tail call void @df_update_entry_exit_and_calls() #22
  %30 = load ptr, ptr @df, align 8, !tbaa !426
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi ptr [ %30, %29 ], [ %2, %28 ]
  %33 = getelementptr inbounds %struct.df, ptr %32, i64 0, i32 29
  store i8 0, ptr %33, align 2, !tbaa !1120
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_scan_verify() local_unnamed_addr #0 !prof !532 {
  %1 = load ptr, ptr @df, align 8, !tbaa !426
  %2 = icmp eq ptr %1, null
  br i1 %2, label %129, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !505
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %70, label %7

7:                                                ; preds = %3, %63
  %8 = phi i64 [ %65, %63 ], [ 0, %3 ]
  %9 = phi ptr [ %64, %63 ], [ %1, %3 ]
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !497
  %12 = getelementptr inbounds ptr, ptr %11, i64 %8
  %13 = load ptr, ptr %12, align 8, !tbaa !426
  %14 = load ptr, ptr %13, align 8, !tbaa !586
  %15 = trunc i64 %8 to i32
  %16 = tail call fastcc i32 @df_reg_chain_mark(ptr noundef %14, i32 noundef %15, i8 noundef zeroext 1, i8 noundef zeroext 0) #22
  %17 = load ptr, ptr @df, align 8, !tbaa !426
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !497
  %20 = getelementptr inbounds ptr, ptr %19, i64 %8
  %21 = load ptr, ptr %20, align 8, !tbaa !426
  %22 = getelementptr inbounds %struct.df_reg_info, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !535
  %24 = icmp eq i32 %16, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4647, ptr noundef nonnull @.str.9) #21
  %26 = load ptr, ptr @df, align 8, !tbaa !426
  br label %27

27:                                               ; preds = %7, %25
  %28 = phi ptr [ %17, %7 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !498
  %31 = getelementptr inbounds ptr, ptr %30, i64 %8
  %32 = load ptr, ptr %31, align 8, !tbaa !426
  %33 = load ptr, ptr %32, align 8, !tbaa !586
  %34 = tail call fastcc i32 @df_reg_chain_mark(ptr noundef %33, i32 noundef %15, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  %35 = load ptr, ptr @df, align 8, !tbaa !426
  %36 = getelementptr inbounds %struct.df, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !498
  %38 = getelementptr inbounds ptr, ptr %37, i64 %8
  %39 = load ptr, ptr %38, align 8, !tbaa !426
  %40 = getelementptr inbounds %struct.df_reg_info, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !535
  %42 = icmp eq i32 %34, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4649, ptr noundef nonnull @.str.9) #21
  %44 = load ptr, ptr @df, align 8, !tbaa !426
  br label %45

45:                                               ; preds = %27, %43
  %46 = phi ptr [ %35, %27 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.df, ptr %46, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !499
  %49 = getelementptr inbounds ptr, ptr %48, i64 %8
  %50 = load ptr, ptr %49, align 8, !tbaa !426
  %51 = load ptr, ptr %50, align 8, !tbaa !586
  %52 = tail call fastcc i32 @df_reg_chain_mark(ptr noundef %51, i32 noundef %15, i8 noundef zeroext 0, i8 noundef zeroext 1) #22
  %53 = load ptr, ptr @df, align 8, !tbaa !426
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !499
  %56 = getelementptr inbounds ptr, ptr %55, i64 %8
  %57 = load ptr, ptr %56, align 8, !tbaa !426
  %58 = getelementptr inbounds %struct.df_reg_info, ptr %57, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !535
  %60 = icmp eq i32 %52, %59
  br i1 %60, label %63, label %61

61:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4651, ptr noundef nonnull @.str.9) #21
  %62 = load ptr, ptr @df, align 8, !tbaa !426
  br label %63

63:                                               ; preds = %45, %61
  %64 = phi ptr [ %53, %45 ], [ %62, %61 ]
  %65 = add nuw nsw i64 %8, 1
  %66 = getelementptr inbounds %struct.df, ptr %64, i64 0, i32 9
  %67 = load i32, ptr %66, align 4, !tbaa !505
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %7, label %70, !llvm.loop !1296

70:                                               ; preds = %63, %3
  %71 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %72 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  tail call fastcc void @df_get_regular_block_artificial_uses(ptr noundef %71) #22
  tail call fastcc void @df_get_eh_block_artificial_uses(ptr noundef %72) #22
  %73 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %72, ptr noundef %71) #21
  %74 = load ptr, ptr @df, align 8, !tbaa !426
  %75 = getelementptr inbounds %struct.df, ptr %74, i64 0, i32 14
  %76 = load ptr, ptr %75, align 8, !tbaa !459
  %77 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %71, ptr noundef %76) #21
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4668, ptr noundef nonnull @.str.9) #21
  br label %80

80:                                               ; preds = %70, %79
  %81 = load ptr, ptr @df, align 8, !tbaa !426
  %82 = getelementptr inbounds %struct.df, ptr %81, i64 0, i32 15
  %83 = load ptr, ptr %82, align 8, !tbaa !460
  %84 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %72, ptr noundef %83) #21
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4670, ptr noundef nonnull @.str.9) #21
  br label %87

87:                                               ; preds = %80, %86
  tail call void @bitmap_obstack_free(ptr noundef %71) #21
  tail call void @bitmap_obstack_free(ptr noundef %72) #21
  tail call fastcc void @df_entry_block_bitmap_verify() #22
  tail call fastcc void @df_exit_block_bitmap_verify() #22
  %88 = load ptr, ptr @cfun, align 8, !tbaa !426
  %89 = getelementptr inbounds %struct.function, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !447
  %91 = load ptr, ptr %90, align 8, !tbaa !426
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %98, %87
  %94 = load ptr, ptr @df, align 8, !tbaa !426
  %95 = getelementptr inbounds %struct.df, ptr %94, i64 0, i32 9
  %96 = load i32, ptr %95, align 4, !tbaa !505
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %129, label %103

98:                                               ; preds = %87, %98
  %99 = phi ptr [ %101, %98 ], [ %91, %87 ]
  tail call fastcc void @df_bb_verify(ptr noundef nonnull %99) #22
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !426
  %102 = icmp eq ptr %101, null
  br i1 %102, label %93, label %98, !llvm.loop !1297

103:                                              ; preds = %93, %103
  %104 = phi i64 [ %123, %103 ], [ 0, %93 ]
  %105 = phi ptr [ %124, %103 ], [ %94, %93 ]
  %106 = getelementptr inbounds %struct.df, ptr %105, i64 0, i32 5
  %107 = load ptr, ptr %106, align 8, !tbaa !497
  %108 = getelementptr inbounds ptr, ptr %107, i64 %104
  %109 = load ptr, ptr %108, align 8, !tbaa !426
  %110 = load ptr, ptr %109, align 8, !tbaa !586
  tail call fastcc void @df_reg_chain_verify_unmarked(ptr noundef %110) #22
  %111 = load ptr, ptr @df, align 8, !tbaa !426
  %112 = getelementptr inbounds %struct.df, ptr %111, i64 0, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !498
  %114 = getelementptr inbounds ptr, ptr %113, i64 %104
  %115 = load ptr, ptr %114, align 8, !tbaa !426
  %116 = load ptr, ptr %115, align 8, !tbaa !586
  tail call fastcc void @df_reg_chain_verify_unmarked(ptr noundef %116) #22
  %117 = load ptr, ptr @df, align 8, !tbaa !426
  %118 = getelementptr inbounds %struct.df, ptr %117, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !499
  %120 = getelementptr inbounds ptr, ptr %119, i64 %104
  %121 = load ptr, ptr %120, align 8, !tbaa !426
  %122 = load ptr, ptr %121, align 8, !tbaa !586
  tail call fastcc void @df_reg_chain_verify_unmarked(ptr noundef %122) #22
  %123 = add nuw nsw i64 %104, 1
  %124 = load ptr, ptr @df, align 8, !tbaa !426
  %125 = getelementptr inbounds %struct.df, ptr %124, i64 0, i32 9
  %126 = load i32, ptr %125, align 4, !tbaa !505
  %127 = zext i32 %126 to i64
  %128 = icmp ult i64 %123, %127
  br i1 %128, label %103, label %129, !llvm.loop !1298

129:                                              ; preds = %103, %93, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @df_reg_chain_mark(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !532 !PGOFuncName !1299 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %67, label %6

6:                                                ; preds = %4
  %7 = icmp eq i8 %2, 0
  %8 = icmp eq i8 %3, 0
  br label %9

9:                                                ; preds = %6, %61
  %10 = phi ptr [ %0, %6 ], [ %62, %61 ]
  %11 = phi i32 [ 0, %6 ], [ %63, %61 ]
  %12 = load i32, ptr %10, align 8
  %13 = and i32 %12, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4378, ptr noundef nonnull @.str.9) #21
  br label %16

16:                                               ; preds = %9, %15
  %17 = load ptr, ptr @df, align 8, !tbaa !426
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 4
  %19 = load ptr, ptr %18, align 8, !tbaa !426
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !521
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4383, ptr noundef nonnull @.str.9) #21
  br label %26

26:                                               ; preds = %25, %21, %16
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !521
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4386, ptr noundef nonnull @.str.9) #21
  br label %31

31:                                               ; preds = %26, %30
  %32 = load i32, ptr %10, align 8
  %33 = and i32 %32, 65280
  %34 = icmp eq i32 %33, 0
  br i1 %7, label %36, label %35

35:                                               ; preds = %31
  br i1 %34, label %39, label %37

36:                                               ; preds = %31
  br i1 %34, label %37, label %39

37:                                               ; preds = %36, %35
  %38 = phi i32 [ 4388, %35 ], [ 4390, %36 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef %38, ptr noundef nonnull @.str.9) #21
  br label %39

39:                                               ; preds = %37, %36, %35
  %40 = load i32, ptr %10, align 8
  %41 = and i32 %40, 262144
  %42 = icmp eq i32 %41, 0
  br i1 %8, label %44, label %43

43:                                               ; preds = %39
  br i1 %42, label %45, label %47

44:                                               ; preds = %39
  br i1 %42, label %47, label %45

45:                                               ; preds = %44, %43
  %46 = phi i32 [ 4393, %43 ], [ 4395, %44 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef %46, ptr noundef nonnull @.str.9) #21
  br label %47

47:                                               ; preds = %45, %44, %43
  %48 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !521
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = add i32 %11, 1
  %53 = load i32, ptr %10, align 8
  %54 = or i32 %53, 1073741824
  store i32 %54, ptr %10, align 8
  br label %67

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.df_base_ref, ptr %49, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !521
  %58 = icmp eq ptr %57, %10
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4398, ptr noundef nonnull @.str.9) #21
  %60 = load ptr, ptr %48, align 8, !tbaa !521
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi ptr [ %60, %59 ], [ %49, %55 ]
  %63 = add i32 %11, 1
  %64 = load i32, ptr %10, align 8
  %65 = or i32 %64, 1073741824
  store i32 %65, ptr %10, align 8
  %66 = icmp eq ptr %62, null
  br i1 %66, label %67, label %9, !llvm.loop !1300

67:                                               ; preds = %61, %51, %4
  %68 = phi i32 [ 0, %4 ], [ %52, %51 ], [ %63, %61 ]
  ret i32 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_entry_block_bitmap_verify() unnamed_addr #0 !prof !532 !PGOFuncName !1301 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  tail call fastcc void @df_get_entry_block_def_set(ptr noundef %1) #22
  %2 = load ptr, ptr @df, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !461
  %5 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %1, ptr noundef %4) #21
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !426
  tail call void @print_current_pass(ptr noundef %8) #21
  %9 = load ptr, ptr @stderr, align 8, !tbaa !426
  %10 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 19, i64 1, ptr %9) #24
  %11 = load ptr, ptr @stderr, align 8, !tbaa !426
  tail call void @df_print_regset(ptr noundef %11, ptr noundef %1) #21
  %12 = load ptr, ptr @stderr, align 8, !tbaa !426
  %13 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 23, i64 1, ptr %12) #24
  %14 = load ptr, ptr @stderr, align 8, !tbaa !426
  %15 = load ptr, ptr @df, align 8, !tbaa !426
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 16
  %17 = load ptr, ptr %16, align 8, !tbaa !461
  tail call void @df_print_regset(ptr noundef %14, ptr noundef %17) #21
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4589, ptr noundef nonnull @.str.9) #21
  br label %18

18:                                               ; preds = %7, %0
  tail call void @bitmap_obstack_free(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_exit_block_bitmap_verify() unnamed_addr #0 !prof !532 !PGOFuncName !1302 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  tail call fastcc void @df_get_exit_block_use_set(ptr noundef %1) #22
  %2 = load ptr, ptr @df, align 8, !tbaa !426
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !462
  %5 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %1, ptr noundef %4) #21
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !426
  tail call void @print_current_pass(ptr noundef %8) #21
  %9 = load ptr, ptr @stderr, align 8, !tbaa !426
  %10 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 18, i64 1, ptr %9) #24
  %11 = load ptr, ptr @stderr, align 8, !tbaa !426
  tail call void @df_print_regset(ptr noundef %11, ptr noundef %1) #21
  %12 = load ptr, ptr @stderr, align 8, !tbaa !426
  %13 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 22, i64 1, ptr %12) #24
  %14 = load ptr, ptr @stderr, align 8, !tbaa !426
  %15 = load ptr, ptr @df, align 8, !tbaa !426
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !462
  tail call void @df_print_regset(ptr noundef %14, ptr noundef %17) #21
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4618, ptr noundef nonnull @.str.9) #21
  br label %18

18:                                               ; preds = %7, %0
  tail call void @bitmap_obstack_free(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_bb_verify(ptr noundef %0) unnamed_addr #0 !prof !532 !PGOFuncName !1303 {
  %2 = alloca %struct.df_collection_rec, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !450
  %5 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %4) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %6 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 128) #22, !range !640
  %7 = alloca i8, i64 %6, align 16
  %8 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 128, ptr noundef nonnull %7) #22
  store ptr %8, ptr %2, align 8, !tbaa !641
  %9 = call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 32) #22, !range !640
  %10 = alloca i8, i64 %9, align 16
  %11 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %10) #22
  %12 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !659
  %13 = alloca i8, i64 %9, align 16
  %14 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %13) #22
  %15 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !665
  %16 = alloca [264 x i8], align 16
  %17 = call fastcc ptr @VEC_df_mw_hardreg_ptr_stack_alloc1(ptr noundef nonnull %16) #22
  %18 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !666
  %19 = icmp eq ptr %5, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4548, ptr noundef nonnull @.str.9) #21
  br label %21

21:                                               ; preds = %1, %20
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !521
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !521
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %21, %41
  %28 = phi ptr [ %43, %41 ], [ %25, %21 ]
  %29 = load ptr, ptr %22, align 8, !tbaa !521
  %30 = load ptr, ptr %29, align 8, !tbaa !1304
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !521
  %33 = icmp eq ptr %28, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %27
  %35 = load i32, ptr %28, align 8
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -7
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call fastcc zeroext i8 @df_insn_refs_verify(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %28, i8 noundef zeroext 1) #22, !range !680
  call fastcc void @df_free_collection_rec(ptr noundef nonnull %2) #22
  br label %41

41:                                               ; preds = %34, %39
  %42 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !521
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %27, !llvm.loop !1305

45:                                               ; preds = %27, %41, %21
  call fastcc void @df_bb_refs_collect(ptr noundef nonnull %2, ptr noundef nonnull %0) #22
  %46 = load ptr, ptr %2, align 8, !tbaa !641
  %47 = load i32, ptr %3, align 8, !tbaa !450
  %48 = call fastcc ptr @df_get_artificial_defs(i32 noundef %47) #22
  %49 = call fastcc zeroext i8 @df_refs_verify(ptr noundef %46, ptr noundef %48, i8 noundef zeroext 1) #22, !range !680
  %50 = load ptr, ptr %12, align 8, !tbaa !659
  %51 = load i32, ptr %3, align 8, !tbaa !450
  %52 = call fastcc ptr @df_get_artificial_uses(i32 noundef %51) #22
  %53 = call fastcc zeroext i8 @df_refs_verify(ptr noundef %50, ptr noundef %52, i8 noundef zeroext 1) #22, !range !680
  call fastcc void @df_free_collection_rec(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_reg_chain_verify_unmarked(ptr noundef readonly %0) unnamed_addr #0 !prof !532 !PGOFuncName !1306 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1, %9
  %4 = phi ptr [ %11, %9 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1073741824
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4413, ptr noundef nonnull @.str.9) #21
  br label %9

9:                                                ; preds = %3, %8
  %10 = getelementptr inbounds %struct.df_base_ref, ptr %4, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !521
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %3, !llvm.loop !1307

13:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: optsize
declare void @print_current_pass(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nounwind optsize }
attributes #22 = { optsize }
attributes #23 = { nounwind }
attributes #24 = { cold }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!424}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!36 = !{ptr @df_scan_alloc, ptr @get_max_uid, i64 13304}
!37 = !{ptr @df_scan_alloc, ptr @df_scan_free_internal, i64 6652}
!38 = !{ptr @df_scan_alloc, ptr @create_alloc_pool, i64 106432}
!39 = !{ptr @df_scan_alloc, ptr @xmalloc, i64 13304}
!40 = !{ptr @df_scan_alloc, ptr @bitmap_obstack_initialize, i64 26608}
!41 = !{ptr @df_scan_alloc, ptr @df_grow_reg_info, i64 13304}
!42 = !{ptr @df_scan_alloc, ptr @df_grow_insn_info, i64 13304}
!43 = !{ptr @df_scan_alloc, ptr @df_grow_bb_info, i64 13304}
!44 = !{ptr @df_scan_alloc, ptr @df_scan_get_bb_info, i64 557825}
!45 = !{ptr @df_scan_alloc, ptr @pool_alloc, i64 557824}
!46 = !{ptr @df_scan_alloc, ptr @df_scan_set_bb_info, i64 557824}
!47 = !{ptr @df_scan_alloc, ptr @bitmap_obstack_alloc_stat, i64 106432}
!48 = !{ptr @df_scan_free_internal, ptr @free, i64 4084234}
!49 = !{ptr @df_scan_free_internal, ptr @df_scan_get_bb_info, i64 534495}
!50 = !{ptr @df_scan_free_internal, ptr @bitmap_obstack_free, i64 106432}
!51 = !{ptr @df_scan_free_internal, ptr @free_alloc_pool, i64 106432}
!52 = !{ptr @df_scan_free_internal, ptr @bitmap_obstack_release, i64 26608}
!53 = !{ptr @df_grow_reg_info, ptr @max_reg_num, i64 4236344}
!54 = !{ptr @df_grow_reg_info, ptr @xrealloc, i64 93331}
!55 = !{ptr @df_grow_reg_info, ptr @pool_alloc, i64 8128680}
!56 = !{ptr @df_grow_insn_info, ptr @get_max_uid, i64 4585321}
!57 = !{ptr @df_grow_insn_info, ptr @xrealloc, i64 18377}
!58 = !{ptr @df_scan_set_bb_info, ptr @df_grow_bb_info, i64 642227}
!59 = !{ptr @df_scan_add_problem, ptr @df_add_problem, i64 6652}
!60 = !{ptr @df_scan_free_bb_info, ptr @df_scan_get_bb_info, i64 107691}
!61 = !{ptr @df_scan_free_bb_info, ptr @df_ref_chain_delete_du_chain, i64 215384}
!62 = !{ptr @df_scan_free_bb_info, ptr @df_ref_chain_delete, i64 215384}
!63 = !{ptr @df_scan_free_bb_info, ptr @pool_free, i64 107692}
!64 = !{ptr @df_scan_free, ptr @df_scan_free_internal, i64 6651}
!65 = !{ptr @df_scan_free, ptr @bitmap_obstack_free, i64 1}
!66 = !{ptr @df_scan_free, ptr @free, i64 6652}
!67 = !{ptr @df_insn_delete, ptr @df_grow_bb_info, i64 1629555}
!68 = !{ptr @df_insn_delete, ptr @df_grow_reg_info, i64 1629555}
!69 = !{ptr @df_insn_delete, ptr @df_set_bb_dirty, i64 105339}
!70 = !{ptr @df_insn_delete, ptr @bitmap_clear_bit, i64 4762369}
!71 = !{ptr @df_insn_delete, ptr @bitmap_set_bit, i64 125186}
!72 = !{ptr @df_insn_delete, ptr @fprintf, i64 2}
!73 = !{ptr @df_insn_delete, ptr @df_mw_hardreg_chain_delete, i64 1158187}
!74 = !{ptr @df_insn_delete, ptr @df_ref_chain_delete_du_chain, i64 3}
!75 = !{ptr @df_insn_delete, ptr @df_ref_chain_delete, i64 3474561}
!76 = !{ptr @df_insn_delete, ptr @pool_free, i64 1385267}
!77 = !{ptr @df_ref_chain_delete_du_chain, ptr @df_chain_unlink, i64 1}
!78 = !{ptr @df_ref_chain_delete, ptr @df_reg_chain_unlink, i64 2831650}
!79 = !{ptr @df_ref_chain_delete, ptr @free, i64 1862944}
!80 = !{ptr @df_reg_chain_unlink, ptr @bitmap_bit_p, i64 14010}
!81 = !{ptr @df_reg_chain_unlink, ptr @df_chain_unlink, i64 1}
!82 = !{ptr @df_reg_chain_unlink, ptr @fancy_abort, i64 2}
!83 = !{ptr @df_reg_chain_unlink, ptr @df_free_ref, i64 2866662}
!84 = !{ptr @df_free_ref, ptr @pool_free, i64 20936685}
!85 = !{ptr @df_scan_blocks, ptr @df_get_regular_block_artificial_uses, i64 13304}
!86 = !{ptr @df_scan_blocks, ptr @df_get_eh_block_artificial_uses, i64 13304}
!87 = !{ptr @df_scan_blocks, ptr @bitmap_ior_into, i64 13304}
!88 = !{ptr @df_scan_blocks, ptr @df_get_entry_block_def_set, i64 13304}
!89 = !{ptr @df_scan_blocks, ptr @df_record_entry_block_defs, i64 13304}
!90 = !{ptr @df_scan_blocks, ptr @df_get_exit_block_use_set, i64 13304}
!91 = !{ptr @df_scan_blocks, ptr @df_record_exit_block_uses, i64 13304}
!92 = !{ptr @df_scan_blocks, ptr @VEC_basic_block_base_index, i64 26608}
!93 = !{ptr @df_scan_blocks, ptr @df_set_bb_dirty, i64 26608}
!94 = !{ptr @df_scan_blocks, ptr @df_bb_refs_record, i64 531219}
!95 = !{ptr @df_get_regular_block_artificial_uses, ptr @bitmap_clear, i64 13304}
!96 = !{ptr @df_get_regular_block_artificial_uses, ptr @bitmap_set_bit, i64 39911}
!97 = !{ptr @df_get_eh_block_artificial_uses, ptr @bitmap_clear, i64 13304}
!98 = !{ptr @df_get_eh_block_artificial_uses, ptr @bitmap_set_bit, i64 19953}
!99 = !{ptr @df_get_entry_block_def_set, ptr @bitmap_clear, i64 41986}
!100 = !{ptr @df_get_entry_block_def_set, ptr @ix86_function_arg_regno_p, i64 2225206}
!101 = !{ptr @df_get_entry_block_def_set, ptr @bitmap_set_bit, i64 295267}
!102 = !{ptr @df_get_entry_block_def_set, ptr @df_regs_ever_live_p, i64 35639}
!103 = !{ptr @df_get_entry_block_def_set, ptr @gen_rtx_REG, i64 41987}
!104 = !{ptr @df_get_entry_block_def_set, ptr @gen_rtx_MEM, i64 41987}
!105 = !{ptr @df_get_entry_block_def_set, ptr @rhs_regno, i64 1}
!106 = !{ptr @df_record_entry_block_defs, ptr @VEC_df_ref_base_embedded_size, i64 25054}
!107 = !{ptr @df_record_entry_block_defs, ptr @VEC_df_ref_stack_alloc1, i64 25054}
!108 = !{ptr @df_record_entry_block_defs, ptr @df_entry_block_defs_collect, i64 25054}
!109 = !{ptr @df_record_entry_block_defs, ptr @VEC_basic_block_base_index, i64 25054}
!110 = !{ptr @df_record_entry_block_defs, ptr @df_refs_add_to_chains, i64 25054}
!111 = !{ptr @df_record_entry_block_defs, ptr @VEC_df_ref_stack_free, i64 25054}
!112 = !{ptr @df_get_exit_block_use_set, ptr @bitmap_clear, i64 48536}
!113 = !{ptr @df_get_exit_block_use_set, ptr @bitmap_set_bit, i64 177180}
!114 = !{ptr @df_get_exit_block_use_set, ptr @df_regs_ever_live_p, i64 472212}
!115 = !{ptr @df_get_exit_block_use_set, ptr @gen_rtx_REG, i64 1}
!116 = !{ptr @df_get_exit_block_use_set, ptr @diddle_return_value, i64 48536}
!117 = !{ptr @df_record_exit_block_uses, ptr @VEC_df_ref_base_embedded_size, i64 18402}
!118 = !{ptr @df_record_exit_block_uses, ptr @VEC_df_ref_stack_alloc1, i64 18402}
!119 = !{ptr @df_record_exit_block_uses, ptr @df_exit_block_uses_collect, i64 18402}
!120 = !{ptr @df_record_exit_block_uses, ptr @VEC_basic_block_base_index, i64 18402}
!121 = !{ptr @df_record_exit_block_uses, ptr @df_refs_add_to_chains, i64 18402}
!122 = !{ptr @df_record_exit_block_uses, ptr @VEC_df_ref_stack_free, i64 18402}
!123 = !{ptr @df_bb_refs_record, ptr @VEC_basic_block_base_index, i64 690701}
!124 = !{ptr @df_bb_refs_record, ptr @df_scan_get_bb_info, i64 615618}
!125 = !{ptr @df_bb_refs_record, ptr @pool_alloc, i64 84362}
!126 = !{ptr @df_bb_refs_record, ptr @df_scan_set_bb_info, i64 84362}
!127 = !{ptr @df_bb_refs_record, ptr @VEC_df_ref_base_embedded_size, i64 1231236}
!128 = !{ptr @df_bb_refs_record, ptr @VEC_df_ref_stack_alloc1, i64 1846854}
!129 = !{ptr @df_bb_refs_record, ptr @VEC_df_mw_hardreg_ptr_stack_alloc1, i64 615618}
!130 = !{ptr @df_bb_refs_record, ptr @fancy_abort, i64 1}
!131 = !{ptr @df_bb_refs_record, ptr @df_insn_create_insn_record, i64 3147685}
!132 = !{ptr @df_bb_refs_record, ptr @df_insn_refs_collect, i64 2271827}
!133 = !{ptr @df_bb_refs_record, ptr @df_refs_add_to_chains, i64 2887445}
!134 = !{ptr @df_bb_refs_record, ptr @df_bb_refs_collect, i64 615618}
!135 = !{ptr @df_bb_refs_record, ptr @VEC_df_ref_stack_free, i64 1846854}
!136 = !{ptr @df_bb_refs_record, ptr @VEC_df_mw_hardreg_ptr_stack_free, i64 615618}
!137 = !{ptr @df_bb_refs_record, ptr @df_set_bb_dirty, i64 615618}
!138 = !{ptr @VEC_df_ref_stack_alloc1, ptr @vec_stack_p_reserve_exact_1, i64 7087833}
!139 = !{ptr @df_entry_block_defs_collect, ptr @bmp_iter_set_init, i64 25054}
!140 = !{ptr @df_entry_block_defs_collect, ptr @bmp_iter_set, i64 194561}
!141 = !{ptr @df_entry_block_defs_collect, ptr @df_ref_record, i64 169507}
!142 = !{ptr @df_entry_block_defs_collect, ptr @bmp_iter_next, i64 169507}
!143 = !{ptr @df_entry_block_defs_collect, ptr @df_canonize_collection_rec, i64 25054}
!144 = !{ptr @df_refs_add_to_chains, ptr @free, i64 6}
!145 = !{ptr @df_refs_add_to_chains, ptr @df_install_refs, i64 11812816}
!146 = !{ptr @df_refs_add_to_chains, ptr @df_install_mws, i64 3394285}
!147 = !{ptr @df_refs_add_to_chains, ptr @df_scan_get_bb_info, i64 659076}
!148 = !{ptr @VEC_df_ref_stack_free, ptr @vec_stack_free, i64 7087832}
!149 = !{ptr @df_ref_record, ptr @fancy_abort, i64 2}
!150 = !{ptr @df_ref_record, ptr @rhs_regno, i64 67734638}
!151 = !{ptr @df_ref_record, ptr @subreg_regno_offset, i64 1367}
!152 = !{ptr @df_ref_record, ptr @subreg_nregs, i64 1367}
!153 = !{ptr @df_ref_record, ptr @end_hard_regno, i64 32816945}
!154 = !{ptr @df_ref_record, ptr @pool_alloc, i64 1923}
!155 = !{ptr @df_ref_record, ptr @VEC_df_mw_hardreg_ptr_stack_safe_push, i64 1923}
!156 = !{ptr @df_ref_record, ptr @df_ref_create_structure, i64 34919616}
!157 = !{ptr @df_canonize_collection_rec, ptr @df_sort_and_compress_refs, i64 14688165}
!158 = !{ptr @df_canonize_collection_rec, ptr @df_sort_and_compress_mws, i64 4896055}
!159 = !{ptr @VEC_df_mw_hardreg_ptr_stack_safe_push, ptr @VEC_df_mw_hardreg_ptr_stack_reserve, i64 1923}
!160 = !{ptr @VEC_df_mw_hardreg_ptr_stack_safe_push, ptr @VEC_df_mw_hardreg_ptr_base_quick_push, i64 1923}
!161 = !{ptr @df_ref_create_structure, ptr @rhs_regno, i64 34932472}
!162 = !{ptr @df_ref_create_structure, ptr @pool_alloc, i64 34932471}
!163 = !{ptr @df_ref_create_structure, ptr @fancy_abort, i64 4}
!164 = !{ptr @df_ref_create_structure, ptr @VEC_df_ref_stack_safe_push, i64 34919615}
!165 = !{ptr @VEC_df_mw_hardreg_ptr_stack_reserve, ptr @VEC_df_mw_hardreg_ptr_base_space, i64 1923}
!166 = !{ptr @VEC_df_mw_hardreg_ptr_stack_reserve, ptr @vec_stack_p_reserve, i64 1}
!167 = !{ptr @VEC_df_ref_stack_safe_push, ptr @VEC_df_ref_stack_reserve, i64 34919616}
!168 = !{ptr @VEC_df_ref_stack_safe_push, ptr @VEC_df_ref_base_quick_push, i64 34919616}
!169 = !{ptr @VEC_df_ref_stack_reserve, ptr @VEC_df_ref_base_space, i64 34919616}
!170 = !{ptr @VEC_df_ref_stack_reserve, ptr @vec_stack_p_reserve, i64 1}
!171 = !{ptr @df_sort_and_compress_refs, ptr @VEC_df_ref_base_length, i64 14688165}
!172 = !{ptr @df_sort_and_compress_refs, ptr @VEC_df_ref_base_index, i64 65276806}
!173 = !{ptr @df_sort_and_compress_refs, ptr @df_ref_compare, i64 13207585}
!174 = !{ptr @df_sort_and_compress_refs, ptr @df_swap_refs, i64 439479}
!175 = !{ptr @df_sort_and_compress_refs, ptr @VEC_df_ref_base_address, i64 373006}
!176 = !{ptr @df_sort_and_compress_refs, ptr @spec_qsort, i64 373006}
!177 = !{ptr @df_sort_and_compress_refs, ptr @df_ref_equal_p, i64 19430817}
!178 = !{ptr @df_sort_and_compress_refs, ptr @df_free_ref, i64 1}
!179 = !{ptr @df_sort_and_compress_refs, ptr @VEC_df_ref_base_replace, i64 1}
!180 = !{ptr @df_sort_and_compress_refs, ptr @VEC_df_ref_base_truncate, i64 1644415}
!181 = !{ptr @df_sort_and_compress_mws, ptr @VEC_df_mw_hardreg_ptr_base_length, i64 4896055}
!182 = !{ptr @df_sort_and_compress_mws, ptr @VEC_df_mw_hardreg_ptr_base_index, i64 600}
!183 = !{ptr @df_sort_and_compress_mws, ptr @df_mw_compare, i64 84}
!184 = !{ptr @df_sort_and_compress_mws, ptr @VEC_df_mw_hardreg_ptr_base_replace, i64 17}
!185 = !{ptr @df_sort_and_compress_mws, ptr @VEC_df_mw_hardreg_ptr_base_address, i64 17}
!186 = !{ptr @df_sort_and_compress_mws, ptr @spec_qsort, i64 17}
!187 = !{ptr @df_sort_and_compress_mws, ptr @df_mw_equal_p, i64 216}
!188 = !{ptr @df_sort_and_compress_mws, ptr @pool_free, i64 4}
!189 = !{ptr @df_sort_and_compress_mws, ptr @VEC_df_mw_hardreg_ptr_base_truncate, i64 101}
!190 = !{ptr @df_swap_refs, ptr @VEC_df_ref_base_index, i64 878958}
!191 = !{ptr @df_swap_refs, ptr @VEC_df_ref_base_replace, i64 878958}
!192 = !{ptr @df_ref_equal_p, ptr @fancy_abort, i64 1}
!193 = !{ptr @df_install_refs, ptr @VEC_df_ref_base_length, i64 11812818}
!194 = !{ptr @df_install_refs, ptr @xmalloc, i64 5797473}
!195 = !{ptr @df_install_refs, ptr @bitmap_bit_p, i64 12961}
!196 = !{ptr @df_install_refs, ptr @VEC_df_ref_base_iterate, i64 22647063}
!197 = !{ptr @df_install_refs, ptr @df_install_ref, i64 16849590}
!198 = !{ptr @df_install_mws, ptr @VEC_df_mw_hardreg_ptr_base_length, i64 3394286}
!199 = !{ptr @df_install_mws, ptr @xmalloc, i64 1386}
!200 = !{ptr @df_install_mws, ptr @VEC_df_mw_hardreg_ptr_base_address, i64 1386}
!201 = !{ptr @df_install_ref, ptr @fancy_abort, i64 4}
!202 = !{ptr @df_install_ref, ptr @df_check_and_grow_ref_info, i64 25330}
!203 = !{ptr @df_check_and_grow_ref_info, ptr @df_grow_ref_info, i64 41237}
!204 = !{ptr @df_grow_ref_info, ptr @xrealloc, i64 41236}
!205 = !{ptr @df_mark_reg, ptr @rhs_regno, i64 29797}
!206 = !{ptr @df_mark_reg, ptr @fancy_abort, i64 1}
!207 = !{ptr @df_mark_reg, ptr @bitmap_set_range, i64 29796}
!208 = !{ptr @df_mark_reg, ptr @bitmap_set_bit, i64 1}
!209 = !{ptr @df_exit_block_uses_collect, ptr @bmp_iter_set_init, i64 18402}
!210 = !{ptr @df_exit_block_uses_collect, ptr @bmp_iter_set, i64 97134}
!211 = !{ptr @df_exit_block_uses_collect, ptr @df_ref_record, i64 78733}
!212 = !{ptr @df_exit_block_uses_collect, ptr @bmp_iter_next, i64 78732}
!213 = !{ptr @df_exit_block_uses_collect, ptr @bitmap_bit_p, i64 11750}
!214 = !{ptr @df_exit_block_uses_collect, ptr @bb_has_eh_pred, i64 11749}
!215 = !{ptr @df_exit_block_uses_collect, ptr @df_canonize_collection_rec, i64 18402}
!216 = !{ptr @bb_has_eh_pred, ptr @ei_start_1, i64 1242988}
!217 = !{ptr @bb_has_eh_pred, ptr @ei_cond, i64 2949327}
!218 = !{ptr @bb_has_eh_pred, ptr @ei_next, i64 1706339}
!219 = !{ptr @ei_cond, ptr @ei_end_p, i64 2949329}
!220 = !{ptr @ei_cond, ptr @ei_edge, i64 1706341}
!221 = !{ptr @ei_next, ptr @ei_container, i64 3412681}
!222 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 1706341}
!223 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!224 = !{ptr @ei_end_p, ptr @ei_container, i64 5729935}
!225 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 2949329}
!226 = !{ptr @ei_edge, ptr @ei_container, i64 3412681}
!227 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 1706341}
!228 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!229 = !{ptr @df_ref_create, ptr @df_grow_reg_info, i64 12856}
!230 = !{ptr @df_ref_create, ptr @fancy_abort, i64 1}
!231 = !{ptr @df_ref_create, ptr @df_ref_create_structure, i64 12856}
!232 = !{ptr @df_ref_create, ptr @bitmap_bit_p, i64 1}
!233 = !{ptr @df_ref_create, ptr @df_install_ref, i64 12856}
!234 = !{ptr @df_ref_create, ptr @xrealloc, i64 6187}
!235 = !{ptr @df_ref_create, ptr @spec_qsort, i64 6187}
!236 = !{ptr @df_ref_create, ptr @xmalloc, i64 6669}
!237 = !{ptr @df_ref_create, ptr @df_set_bb_dirty, i64 12855}
!238 = !{ptr @df_ref_remove, ptr @df_scan_get_bb_info, i64 1}
!239 = !{ptr @df_ref_remove, ptr @df_ref_compress_rec, i64 35011}
!240 = !{ptr @df_ref_remove, ptr @df_set_bb_dirty, i64 35011}
!241 = !{ptr @df_ref_remove, ptr @df_reg_chain_unlink, i64 35012}
!242 = !{ptr @df_ref_compress_rec, ptr @free, i64 16575}
!243 = !{ptr @df_insn_create_insn_record, ptr @df_grow_insn_info, i64 4476324}
!244 = !{ptr @df_insn_create_insn_record, ptr @pool_alloc, i64 4476323}
!245 = !{ptr @df_mw_hardreg_chain_delete, ptr @pool_free, i64 1243}
!246 = !{ptr @df_insn_rescan, ptr @fprintf, i64 5}
!247 = !{ptr @df_insn_rescan, ptr @df_grow_bb_info, i64 1845199}
!248 = !{ptr @df_insn_rescan, ptr @df_grow_reg_info, i64 1845199}
!249 = !{ptr @df_insn_rescan, ptr @df_insn_create_insn_record, i64 1102700}
!250 = !{ptr @df_insn_rescan, ptr @bitmap_clear_bit, i64 5318965}
!251 = !{ptr @df_insn_rescan, ptr @bitmap_set_bit, i64 216632}
!252 = !{ptr @df_insn_rescan, ptr @VEC_df_ref_base_embedded_size, i64 3257134}
!253 = !{ptr @df_insn_rescan, ptr @VEC_df_ref_stack_alloc1, i64 4885701}
!254 = !{ptr @df_insn_rescan, ptr @VEC_df_mw_hardreg_ptr_stack_alloc1, i64 1628567}
!255 = !{ptr @df_insn_rescan, ptr @df_insn_refs_verify, i64 1184924}
!256 = !{ptr @df_insn_rescan, ptr @df_free_collection_rec, i64 530883}
!257 = !{ptr @df_insn_rescan, ptr @df_insn_delete, i64 654041}
!258 = !{ptr @df_insn_rescan, ptr @df_insn_refs_collect, i64 443643}
!259 = !{ptr @df_insn_rescan, ptr @df_refs_add_to_chains, i64 1097684}
!260 = !{ptr @df_insn_rescan, ptr @df_set_bb_dirty_nonlr, i64 1}
!261 = !{ptr @df_insn_rescan, ptr @df_set_bb_dirty, i64 1097683}
!262 = !{ptr @df_insn_rescan, ptr @VEC_df_ref_stack_free, i64 3293052}
!263 = !{ptr @df_insn_rescan, ptr @VEC_df_mw_hardreg_ptr_stack_free, i64 1097684}
!264 = !{ptr @VEC_df_mw_hardreg_ptr_stack_alloc1, ptr @vec_stack_p_reserve_exact_1, i64 2555999}
!265 = !{ptr @df_insn_refs_verify, ptr @df_insn_refs_collect, i64 1184927}
!266 = !{ptr @df_insn_refs_verify, ptr @fancy_abort, i64 1}
!267 = !{ptr @df_insn_refs_verify, ptr @df_refs_verify, i64 3554781}
!268 = !{ptr @df_insn_refs_verify, ptr @df_mws_verify, i64 1184927}
!269 = !{ptr @df_free_collection_rec, ptr @VEC_df_ref_base_iterate, i64 19662645}
!270 = !{ptr @df_free_collection_rec, ptr @df_free_ref, i64 18069993}
!271 = !{ptr @df_free_collection_rec, ptr @VEC_df_mw_hardreg_ptr_base_iterate, i64 531305}
!272 = !{ptr @df_free_collection_rec, ptr @pool_free, i64 421}
!273 = !{ptr @df_free_collection_rec, ptr @VEC_df_ref_stack_free, i64 1592652}
!274 = !{ptr @df_free_collection_rec, ptr @VEC_df_mw_hardreg_ptr_stack_free, i64 530884}
!275 = !{ptr @df_insn_refs_collect, ptr @VEC_df_ref_base_truncate, i64 11775510}
!276 = !{ptr @df_insn_refs_collect, ptr @VEC_df_mw_hardreg_ptr_base_truncate, i64 3925170}
!277 = !{ptr @df_insn_refs_collect, ptr @df_defs_record, i64 3925170}
!278 = !{ptr @df_insn_refs_collect, ptr @df_uses_record, i64 4102851}
!279 = !{ptr @df_insn_refs_collect, ptr @df_ref_record, i64 2}
!280 = !{ptr @df_insn_refs_collect, ptr @df_get_call_refs, i64 566759}
!281 = !{ptr @df_insn_refs_collect, ptr @df_get_conditional_uses, i64 1}
!282 = !{ptr @df_insn_refs_collect, ptr @df_canonize_collection_rec, i64 3925170}
!283 = !{ptr @VEC_df_mw_hardreg_ptr_stack_free, ptr @vec_stack_free, i64 2555998}
!284 = !{ptr @df_refs_verify, ptr @VEC_df_ref_base_iterate, i64 22689984}
!285 = !{ptr @df_refs_verify, ptr @df_ref_equal_p, i64 19826362}
!286 = !{ptr @df_refs_verify, ptr @fancy_abort, i64 3}
!287 = !{ptr @df_mws_verify, ptr @VEC_df_mw_hardreg_ptr_base_iterate, i64 1185368}
!288 = !{ptr @df_mws_verify, ptr @df_mw_equal_p, i64 440}
!289 = !{ptr @df_mws_verify, ptr @fancy_abort, i64 3}
!290 = !{ptr @df_defs_record, ptr @df_def_record_1, i64 3083705}
!291 = !{ptr @df_defs_record, ptr @df_defs_record, i64 1999752}
!292 = !{ptr @df_uses_record, ptr @df_ref_record, i64 4723059}
!293 = !{ptr @df_uses_record, ptr @fancy_abort, i64 3}
!294 = !{ptr @df_uses_record, ptr @df_uses_record, i64 11220285}
!295 = !{ptr @df_uses_record, ptr @df_read_modify_subreg_p, i64 322}
!296 = !{ptr @df_get_call_refs, ptr @bitmap_obstack_alloc_stat, i64 566758}
!297 = !{ptr @df_get_call_refs, ptr @VEC_df_ref_base_iterate, i64 959326}
!298 = !{ptr @df_get_call_refs, ptr @bitmap_set_bit, i64 392568}
!299 = !{ptr @df_get_call_refs, ptr @df_uses_record, i64 184719}
!300 = !{ptr @df_get_call_refs, ptr @df_ref_record, i64 26245098}
!301 = !{ptr @df_get_call_refs, ptr @bmp_iter_set_init, i64 566758}
!302 = !{ptr @df_get_call_refs, ptr @bmp_iter_set, i64 26637581}
!303 = !{ptr @df_get_call_refs, ptr @bitmap_bit_p, i64 26637015}
!304 = !{ptr @df_get_call_refs, ptr @refers_to_regno_p, i64 1}
!305 = !{ptr @df_get_call_refs, ptr @bmp_iter_next, i64 26070823}
!306 = !{ptr @df_get_call_refs, ptr @bitmap_obstack_free, i64 566758}
!307 = !{ptr @df_def_record_1, ptr @df_def_record_1, i64 15}
!308 = !{ptr @df_def_record_1, ptr @df_ref_record, i64 2525189}
!309 = !{ptr @df_def_record_1, ptr @rhs_regno, i64 2478368}
!310 = !{ptr @df_def_record_1, ptr @df_read_modify_subreg_p, i64 275}
!311 = !{ptr @df_process_deferred_rescans, ptr @bitmap_obstack_alloc_stat, i64 428463}
!312 = !{ptr @df_process_deferred_rescans, ptr @df_clear_flags, i64 67510}
!313 = !{ptr @df_process_deferred_rescans, ptr @fwrite, i64 2}
!314 = !{ptr @df_process_deferred_rescans, ptr @bitmap_copy, i64 1285389}
!315 = !{ptr @df_process_deferred_rescans, ptr @bmp_iter_set_init, i64 1285389}
!316 = !{ptr @df_process_deferred_rescans, ptr @bmp_iter_set, i64 1656150}
!317 = !{ptr @df_process_deferred_rescans, ptr @df_insn_delete, i64 125260}
!318 = !{ptr @df_process_deferred_rescans, ptr @bmp_iter_next, i64 370761}
!319 = !{ptr @df_process_deferred_rescans, ptr @df_insn_rescan, i64 164264}
!320 = !{ptr @df_process_deferred_rescans, ptr @df_notes_rescan, i64 81234}
!321 = !{ptr @df_process_deferred_rescans, ptr @bitmap_obstack_free, i64 428463}
!322 = !{ptr @df_process_deferred_rescans, ptr @bitmap_clear, i64 1285389}
!323 = !{ptr @df_process_deferred_rescans, ptr @df_set_flags, i64 67510}
!324 = !{ptr @df_process_deferred_rescans, ptr @df_update_entry_exit_and_calls, i64 6653}
!325 = !{ptr @df_notes_rescan, ptr @df_grow_bb_info, i64 441140}
!326 = !{ptr @df_notes_rescan, ptr @df_grow_reg_info, i64 441140}
!327 = !{ptr @df_notes_rescan, ptr @df_insn_create_insn_record, i64 1}
!328 = !{ptr @df_notes_rescan, ptr @bitmap_clear_bit, i64 752949}
!329 = !{ptr @df_notes_rescan, ptr @bitmap_bit_p, i64 129333}
!330 = !{ptr @df_notes_rescan, ptr @bitmap_set_bit, i64 112265}
!331 = !{ptr @df_notes_rescan, ptr @VEC_df_ref_base_embedded_size, i64 311807}
!332 = !{ptr @df_notes_rescan, ptr @VEC_df_ref_stack_alloc1, i64 311807}
!333 = !{ptr @df_notes_rescan, ptr @VEC_df_mw_hardreg_ptr_stack_alloc1, i64 311807}
!334 = !{ptr @df_notes_rescan, ptr @df_mw_hardreg_chain_delete_eq_uses, i64 311807}
!335 = !{ptr @df_notes_rescan, ptr @df_ref_chain_delete, i64 311807}
!336 = !{ptr @df_notes_rescan, ptr @df_uses_record, i64 239590}
!337 = !{ptr @df_notes_rescan, ptr @df_canonize_collection_rec, i64 311807}
!338 = !{ptr @df_notes_rescan, ptr @VEC_df_mw_hardreg_ptr_base_length, i64 311807}
!339 = !{ptr @df_notes_rescan, ptr @xmalloc, i64 1}
!340 = !{ptr @df_notes_rescan, ptr @VEC_df_mw_hardreg_ptr_base_address, i64 1}
!341 = !{ptr @df_notes_rescan, ptr @VEC_df_mw_hardreg_ptr_stack_free, i64 311807}
!342 = !{ptr @df_notes_rescan, ptr @df_refs_add_to_chains, i64 311807}
!343 = !{ptr @df_notes_rescan, ptr @VEC_df_ref_stack_free, i64 311807}
!344 = !{ptr @df_notes_rescan, ptr @df_insn_rescan, i64 1}
!345 = !{ptr @df_update_entry_exit_and_calls, ptr @df_update_entry_block_defs, i64 28682}
!346 = !{ptr @df_update_entry_exit_and_calls, ptr @df_update_exit_block_uses, i64 28682}
!347 = !{ptr @df_update_entry_exit_and_calls, ptr @df_insn_rescan, i64 375239}
!348 = !{ptr @df_maybe_reorganize_use_refs, ptr @df_reorganize_refs_by_reg, i64 2}
!349 = !{ptr @df_maybe_reorganize_use_refs, ptr @df_reorganize_refs_by_insn, i64 13302}
!350 = !{ptr @df_maybe_reorganize_use_refs, ptr @free, i64 13301}
!351 = !{ptr @df_maybe_reorganize_use_refs, ptr @fancy_abort, i64 2}
!352 = !{ptr @df_reorganize_refs_by_reg, ptr @df_reorganize_refs_by_reg_by_insn, i64 21280}
!353 = !{ptr @df_reorganize_refs_by_reg, ptr @df_reorganize_refs_by_reg_by_reg, i64 6653}
!354 = !{ptr @df_reorganize_refs_by_insn, ptr @df_count_refs, i64 13304}
!355 = !{ptr @df_reorganize_refs_by_insn, ptr @df_check_and_grow_ref_info, i64 13304}
!356 = !{ptr @df_reorganize_refs_by_insn, ptr @bmp_iter_set_init, i64 1}
!357 = !{ptr @df_reorganize_refs_by_insn, ptr @bmp_iter_set, i64 21}
!358 = !{ptr @df_reorganize_refs_by_insn, ptr @VEC_basic_block_base_index, i64 20}
!359 = !{ptr @df_reorganize_refs_by_insn, ptr @df_reorganize_refs_by_insn_bb, i64 547600}
!360 = !{ptr @df_reorganize_refs_by_insn, ptr @bmp_iter_next, i64 20}
!361 = !{ptr @df_reorganize_refs_by_reg_by_insn, ptr @df_count_refs, i64 21281}
!362 = !{ptr @df_reorganize_refs_by_reg_by_insn, ptr @df_check_and_grow_ref_info, i64 21281}
!363 = !{ptr @df_reorganize_refs_by_reg_by_insn, ptr @bmp_iter_set_init, i64 42562}
!364 = !{ptr @df_reorganize_refs_by_reg_by_insn, ptr @bmp_iter_set, i64 635454}
!365 = !{ptr @df_reorganize_refs_by_reg_by_insn, ptr @VEC_basic_block_base_index, i64 592892}
!366 = !{ptr @df_reorganize_refs_by_reg_by_insn, ptr @df_get_artificial_defs, i64 592890}
!367 = !{ptr @df_reorganize_refs_by_reg_by_insn, ptr @df_get_artificial_uses, i64 2}
!368 = !{ptr @df_reorganize_refs_by_reg_by_insn, ptr @bmp_iter_next, i64 592892}
!369 = !{ptr @df_reorganize_refs_by_reg_by_reg, ptr @df_count_refs, i64 6652}
!370 = !{ptr @df_reorganize_refs_by_reg_by_reg, ptr @df_check_and_grow_ref_info, i64 6652}
!371 = !{ptr @df_reorganize_refs_by_reg_by_reg, ptr @fancy_abort, i64 21}
!372 = !{ptr @df_get_artificial_defs, ptr @df_scan_get_bb_info, i64 592918}
!373 = !{ptr @df_get_artificial_uses, ptr @df_scan_get_bb_info, i64 547661}
!374 = !{ptr @df_reorganize_refs_by_insn_bb, ptr @df_get_artificial_defs, i64 1}
!375 = !{ptr @df_reorganize_refs_by_insn_bb, ptr @df_add_refs_to_table, i64 4771792}
!376 = !{ptr @df_reorganize_refs_by_insn_bb, ptr @df_get_artificial_uses, i64 547660}
!377 = !{ptr @df_maybe_reorganize_def_refs, ptr @df_reorganize_refs_by_reg, i64 27930}
!378 = !{ptr @df_maybe_reorganize_def_refs, ptr @df_reorganize_refs_by_insn, i64 1}
!379 = !{ptr @df_maybe_reorganize_def_refs, ptr @free, i64 27930}
!380 = !{ptr @df_maybe_reorganize_def_refs, ptr @fancy_abort, i64 4}
!381 = !{ptr @df_insn_change_bb, ptr @fprintf, i64 3}
!382 = !{ptr @df_insn_change_bb, ptr @fwrite, i64 1}
!383 = !{ptr @df_insn_change_bb, ptr @df_insn_rescan, i64 111207}
!384 = !{ptr @df_insn_change_bb, ptr @df_set_bb_dirty, i64 269489}
!385 = !{ptr @df_ref_change_reg_with_loc, ptr @df_grow_reg_info, i64 272852}
!386 = !{ptr @df_ref_change_reg_with_loc, ptr @df_ref_change_reg_with_loc_1, i64 818556}
!387 = !{ptr @df_ref_change_reg_with_loc_1, ptr @df_set_bb_dirty, i64 1}
!388 = !{ptr @df_ref_change_reg_with_loc_1, ptr @spec_qsort, i64 1}
!389 = !{ptr @df_mw_hardreg_chain_delete_eq_uses, ptr @pool_free, i64 1}
!390 = !{ptr @df_bb_refs_collect, ptr @VEC_df_ref_base_truncate, i64 1846857}
!391 = !{ptr @df_bb_refs_collect, ptr @VEC_df_mw_hardreg_ptr_base_truncate, i64 615619}
!392 = !{ptr @df_bb_refs_collect, ptr @df_entry_block_defs_collect, i64 1}
!393 = !{ptr @df_bb_refs_collect, ptr @df_exit_block_uses_collect, i64 1}
!394 = !{ptr @df_bb_refs_collect, ptr @bb_has_eh_pred, i64 1231233}
!395 = !{ptr @df_bb_refs_collect, ptr @df_ref_record, i64 1853298}
!396 = !{ptr @df_bb_refs_collect, ptr @bmp_iter_set_init, i64 615616}
!397 = !{ptr @df_bb_refs_collect, ptr @bmp_iter_set, i64 2468911}
!398 = !{ptr @df_bb_refs_collect, ptr @bmp_iter_next, i64 1853295}
!399 = !{ptr @df_bb_refs_collect, ptr @df_canonize_collection_rec, i64 615617}
!400 = !{ptr @df_update_entry_block_defs, ptr @bitmap_obstack_alloc_stat, i64 28683}
!401 = !{ptr @df_update_entry_block_defs, ptr @df_get_entry_block_def_set, i64 28682}
!402 = !{ptr @df_update_entry_block_defs, ptr @bitmap_equal_p, i64 28681}
!403 = !{ptr @df_update_entry_block_defs, ptr @df_scan_get_bb_info, i64 11750}
!404 = !{ptr @df_update_entry_block_defs, ptr @df_ref_chain_delete_du_chain, i64 11750}
!405 = !{ptr @df_update_entry_block_defs, ptr @df_ref_chain_delete, i64 11750}
!406 = !{ptr @df_update_entry_block_defs, ptr @df_record_entry_block_defs, i64 11751}
!407 = !{ptr @df_update_entry_block_defs, ptr @bitmap_copy, i64 11751}
!408 = !{ptr @df_update_entry_block_defs, ptr @VEC_basic_block_base_index, i64 11751}
!409 = !{ptr @df_update_entry_block_defs, ptr @df_set_bb_dirty, i64 11751}
!410 = !{ptr @df_update_entry_block_defs, ptr @bitmap_obstack_free, i64 28682}
!411 = !{ptr @df_update_exit_block_uses, ptr @bitmap_obstack_alloc_stat, i64 35233}
!412 = !{ptr @df_update_exit_block_uses, ptr @df_get_exit_block_use_set, i64 35232}
!413 = !{ptr @df_update_exit_block_uses, ptr @bitmap_equal_p, i64 35231}
!414 = !{ptr @df_update_exit_block_uses, ptr @df_scan_get_bb_info, i64 5099}
!415 = !{ptr @df_update_exit_block_uses, ptr @df_ref_chain_delete_du_chain, i64 5099}
!416 = !{ptr @df_update_exit_block_uses, ptr @df_ref_chain_delete, i64 5099}
!417 = !{ptr @df_update_exit_block_uses, ptr @df_record_exit_block_uses, i64 5100}
!418 = !{ptr @df_update_exit_block_uses, ptr @bitmap_copy, i64 5100}
!419 = !{ptr @df_update_exit_block_uses, ptr @VEC_basic_block_base_index, i64 5100}
!420 = !{ptr @df_update_exit_block_uses, ptr @df_set_bb_dirty, i64 5100}
!421 = !{ptr @df_update_exit_block_uses, ptr @bitmap_obstack_free, i64 35232}
!422 = !{ptr @df_compute_regs_ever_live, ptr @df_hard_reg_used_p, i64 11004056}
!423 = !{ptr @df_compute_regs_ever_live, ptr @df_update_entry_exit_and_calls, i64 784}
!424 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!425 = !{!"function_entry_count", i64 13304}
!426 = !{!427, !427, i64 0}
!427 = !{!"any pointer", !428, i64 0}
!428 = !{!"omnipotent char", !429, i64 0}
!429 = !{!"Simple C/C++ TBAA"}
!430 = !{!431, !427, i64 40}
!431 = !{!"dataflow", !427, i64 0, !427, i64 8, !432, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !432, i64 48, !428, i64 52, !428, i64 53, !428, i64 54}
!432 = !{!"int", !428, i64 0}
!433 = !{!"branch_weights", i32 6653, i32 6653}
!434 = !{!431, !427, i64 24}
!435 = !{!431, !428, i64 52}
!436 = !{!437, !427, i64 0}
!437 = !{!"df_scan_problem_data", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48, !438, i64 56, !438, i64 160}
!438 = !{!"bitmap_obstack", !427, i64 0, !427, i64 8, !439, i64 16}
!439 = !{!"obstack", !440, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !440, i64 40, !432, i64 48, !427, i64 56, !427, i64 64, !427, i64 72, !432, i64 80, !432, i64 80, !432, i64 80}
!440 = !{!"long", !428, i64 0}
!441 = !{!437, !427, i64 8}
!442 = !{!437, !427, i64 16}
!443 = !{!437, !427, i64 24}
!444 = !{!437, !427, i64 32}
!445 = !{!437, !427, i64 40}
!446 = !{!437, !427, i64 48}
!447 = !{!448, !427, i64 8}
!448 = !{!"function", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48, !427, i64 56, !427, i64 64, !427, i64 72, !427, i64 80, !427, i64 88, !427, i64 96, !432, i64 104, !432, i64 108, !432, i64 112, !432, i64 116, !432, i64 120, !432, i64 124, !427, i64 128, !432, i64 136, !432, i64 137, !432, i64 138, !432, i64 138, !432, i64 138, !432, i64 138, !432, i64 138, !432, i64 138, !432, i64 138, !432, i64 139, !432, i64 139, !432, i64 139, !432, i64 139, !432, i64 139, !432, i64 139, !432, i64 139}
!449 = !{!"branch_weights", i32 1, i32 13304}
!450 = !{!451, !432, i64 80}
!451 = !{!"basic_block_def", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !428, i64 32, !427, i64 48, !427, i64 56, !428, i64 64, !440, i64 72, !432, i64 80, !432, i64 84, !432, i64 88, !432, i64 92, !432, i64 96}
!452 = !{!"branch_weights", i32 557867, i32 1}
!453 = !{!"branch_weights", i32 13304, i32 544563}
!454 = distinct !{!454, !455}
!455 = !{!"llvm.loop.mustprogress"}
!456 = !{!457, !427, i64 264}
!457 = !{!"df", !428, i64 0, !428, i64 64, !427, i64 128, !458, i64 136, !458, i64 176, !427, i64 216, !427, i64 224, !427, i64 232, !432, i64 240, !432, i64 244, !427, i64 248, !432, i64 256, !432, i64 260, !427, i64 264, !427, i64 272, !427, i64 280, !427, i64 288, !427, i64 296, !427, i64 304, !427, i64 312, !427, i64 320, !427, i64 328, !427, i64 336, !432, i64 344, !432, i64 348, !427, i64 352, !432, i64 360, !432, i64 364, !428, i64 365, !428, i64 366}
!458 = !{!"df_ref_info", !427, i64 0, !427, i64 8, !427, i64 16, !432, i64 24, !432, i64 28, !432, i64 32, !432, i64 36}
!459 = !{!457, !427, i64 272}
!460 = !{!457, !427, i64 280}
!461 = !{!457, !427, i64 288}
!462 = !{!457, !427, i64 296}
!463 = !{!457, !427, i64 304}
!464 = !{!457, !427, i64 312}
!465 = !{!457, !427, i64 320}
!466 = !{!431, !428, i64 54}
!467 = !{!"df-scan.c:df_scan_free_internal"}
!468 = !{!457, !432, i64 256}
!469 = !{!457, !427, i64 248}
!470 = !{!"branch_weights", i32 2639121, i32 3091056}
!471 = !{!472, !427, i64 8}
!472 = !{!"df_insn_info", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !432, i64 40}
!473 = !{!"branch_weights", i32 849945, i32 2241112}
!474 = !{!"branch_weights", i32 930853, i32 1310260}
!475 = !{!472, !427, i64 16}
!476 = !{!"branch_weights", i32 279190, i32 1961923}
!477 = !{!472, !427, i64 24}
!478 = !{!"branch_weights", i32 2123204, i32 117909}
!479 = !{!472, !427, i64 32}
!480 = !{!"branch_weights", i32 2240854, i32 259}
!481 = !{!"branch_weights", i32 5716872, i32 13304}
!482 = distinct !{!482, !455}
!483 = !{!"branch_weights", i32 1, i32 534535}
!484 = !{!485, !427, i64 0}
!485 = !{!"df_scan_bb_info", !427, i64 0, !427, i64 8}
!486 = !{!"branch_weights", i32 521231, i32 13305}
!487 = !{!485, !427, i64 8}
!488 = !{!"branch_weights", i32 13305, i32 521231}
!489 = !{!"branch_weights", i32 13304, i32 521231}
!490 = distinct !{!490, !455}
!491 = !{!457, !427, i64 136}
!492 = !{!457, !427, i64 144}
!493 = !{!457, !427, i64 152}
!494 = !{!457, !427, i64 176}
!495 = !{!457, !427, i64 184}
!496 = !{!457, !427, i64 192}
!497 = !{!457, !427, i64 216}
!498 = !{!457, !427, i64 224}
!499 = !{!457, !427, i64 232}
!500 = !{!431, !427, i64 8}
!501 = !{!431, !432, i64 16}
!502 = !{!"function_entry_count", i64 4236344}
!503 = !{!457, !432, i64 240}
!504 = !{!"branch_weights", i32 13333, i32 4223013}
!505 = !{!457, !432, i64 244}
!506 = !{!"branch_weights", i32 2709561, i32 1526784}
!507 = !{!432, !432, i64 0}
!508 = !{!"branch_weights", i32 2709561, i32 0}
!509 = distinct !{!509, !455}
!510 = !{!"function_entry_count", i64 4585321}
!511 = !{!"branch_weights", i32 18377, i32 4566946}
!512 = !{!"function_entry_count", i64 3632214}
!513 = !{!"df-scan.c:df_scan_get_bb_info"}
!514 = !{!"branch_weights", i32 3632215, i32 1}
!515 = !{!"function_entry_count", i64 642227}
!516 = !{!"df-scan.c:df_scan_set_bb_info"}
!517 = !{!"function_entry_count", i64 6652}
!518 = !{!"function_entry_count", i64 107693}
!519 = !{!"df-scan.c:df_scan_free_bb_info"}
!520 = !{!"branch_weights", i32 1, i32 107694}
!521 = !{!428, !428, i64 0}
!522 = !{!"branch_weights", i32 107693, i32 1}
!523 = !{!524, !427, i64 8}
!524 = !{!"rtl_bb_info", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !432, i64 32}
!525 = !{!"branch_weights", i32 107694, i32 1}
!526 = !{!"branch_weights", i32 1, i32 0}
!527 = distinct !{!527, !455}
!528 = !{!"df-scan.c:df_scan_free"}
!529 = !{!"branch_weights", i32 1, i32 6653}
!530 = !{!457, !427, i64 128}
!531 = !{!"branch_weights", i32 6653, i32 1}
!532 = !{!"function_entry_count", i64 0}
!533 = !{!"df-scan.c:df_scan_start_dump"}
!534 = distinct !{!534, !455}
!535 = !{!536, !432, i64 8}
!536 = !{!"df_reg_info", !427, i64 0, !432, i64 8}
!537 = distinct !{!537, !455}
!538 = !{!539, !427, i64 0}
!539 = !{!"control_flow_graph", !427, i64 0, !427, i64 8, !427, i64 16, !432, i64 24, !432, i64 28, !432, i64 32, !427, i64 40, !432, i64 48, !428, i64 52, !428, i64 60, !432, i64 68, !432, i64 72}
!540 = !{!539, !427, i64 8}
!541 = !{!451, !427, i64 56}
!542 = distinct !{!542, !455}
!543 = distinct !{!543, !455}
!544 = !{!"df-scan.c:df_scan_start_block"}
!545 = !{!"function_entry_count", i64 1782162}
!546 = !{!"branch_weights", i32 152607, i32 1629557}
!547 = !{!"branch_weights", i32 1524219, i32 105339}
!548 = !{!"branch_weights", i32 1624764, i32 4794}
!549 = !{!"branch_weights", i32 1504002, i32 125556}
!550 = !{!"branch_weights", i32 0, i32 -2147483648}
!551 = !{!"branch_weights", i32 125556, i32 1}
!552 = !{!"branch_weights", i32 1504002, i32 1}
!553 = !{!"branch_weights", i32 118733, i32 1385270}
!554 = !{!"branch_weights", i32 227080, i32 1158191}
!555 = !{!"branch_weights", i32 1158191, i32 1}
!556 = !{!"function_entry_count", i64 232234}
!557 = !{!"df-scan.c:df_ref_chain_delete_du_chain"}
!558 = !{!"branch_weights", i32 1, i32 232234}
!559 = !{!"branch_weights", i32 413923, i32 1}
!560 = !{!"branch_weights", i32 232234, i32 181689}
!561 = distinct !{!561, !455}
!562 = !{!"function_entry_count", i64 4018614}
!563 = !{!"df-scan.c:df_ref_chain_delete"}
!564 = !{!"branch_weights", i32 1186964, i32 2831651}
!565 = !{!"branch_weights", i32 2831651, i32 0}
!566 = distinct !{!566, !455}
!567 = !{!"branch_weights", i32 734653136, i32 1412830512}
!568 = !{!"function_entry_count", i64 2866662}
!569 = !{!"df-scan.c:df_reg_chain_unlink"}
!570 = !{!"branch_weights", i32 1202325, i32 1664339}
!571 = !{!"branch_weights", i32 1451996, i32 212344}
!572 = !{!457, !432, i64 212}
!573 = !{!"branch_weights", i32 211713, i32 630, i32 1, i32 3}
!574 = !{!"branch_weights", i32 2101375447, i32 46108201}
!575 = !{!457, !428, i64 365}
!576 = !{!"branch_weights", i32 42995, i32 14010}
!577 = !{!"branch_weights", i32 1, i32 14010}
!578 = !{!472, !427, i64 0}
!579 = !{!"branch_weights", i32 3410, i32 10601}
!580 = !{!"branch_weights", i32 2866347, i32 317}
!581 = !{!"branch_weights", i32 317, i32 1}
!582 = !{!"branch_weights", i32 1943240, i32 923424}
!583 = !{!"branch_weights", i32 923424, i32 1}
!584 = !{!457, !427, i64 352}
!585 = !{!"branch_weights", i32 901219, i32 1965445}
!586 = !{!536, !427, i64 0}
!587 = !{!"branch_weights", i32 901219, i32 1}
!588 = !{!"branch_weights", i32 945793, i32 1920871}
!589 = !{!"function_entry_count", i64 20936686}
!590 = !{!"df-scan.c:df_free_ref"}
!591 = !{!"branch_weights", i32 1, i32 17866345, i32 413923, i32 2650967, i32 5455}
!592 = !{!"function_entry_count", i64 6941943}
!593 = !{!457, !432, i64 172}
!594 = !{!539, !427, i64 16}
!595 = !{!"branch_weights", i32 13304, i32 517955}
!596 = distinct !{!596, !455}
!597 = !{!"df-scan.c:df_get_regular_block_artificial_uses"}
!598 = !{!599, !428, i64 477}
!599 = !{!"rtl_data", !600, i64 0, !601, i64 40, !602, i64 96, !603, i64 112, !605, i64 208, !606, i64 248, !432, i64 312, !427, i64 320, !427, i64 328, !427, i64 336, !427, i64 344, !427, i64 352, !427, i64 360, !427, i64 368, !427, i64 376, !427, i64 384, !427, i64 392, !440, i64 400, !427, i64 408, !427, i64 416, !427, i64 424, !432, i64 432, !432, i64 436, !432, i64 440, !432, i64 444, !432, i64 448, !432, i64 452, !427, i64 456, !428, i64 464, !428, i64 465, !428, i64 466, !428, i64 467, !428, i64 468, !428, i64 469, !428, i64 470, !428, i64 471, !428, i64 472, !428, i64 473, !428, i64 474, !428, i64 475, !428, i64 476, !428, i64 477, !428, i64 478, !428, i64 479, !428, i64 480, !428, i64 481, !428, i64 482, !428, i64 483, !428, i64 484, !428, i64 485}
!600 = !{!"expr_status", !432, i64 0, !432, i64 4, !432, i64 8, !427, i64 16, !427, i64 24, !427, i64 32}
!601 = !{!"emit_status", !432, i64 0, !432, i64 4, !427, i64 8, !427, i64 16, !427, i64 24, !432, i64 32, !432, i64 36, !432, i64 40, !432, i64 44, !427, i64 48}
!602 = !{!"varasm_status", !427, i64 0, !432, i64 8}
!603 = !{!"incoming_args", !432, i64 0, !432, i64 4, !432, i64 8, !427, i64 16, !604, i64 24, !427, i64 88}
!604 = !{!"ix86_args", !432, i64 0, !432, i64 4, !432, i64 8, !432, i64 12, !432, i64 16, !432, i64 20, !432, i64 24, !432, i64 28, !432, i64 32, !432, i64 36, !432, i64 40, !432, i64 44, !432, i64 48, !432, i64 52, !432, i64 56, !432, i64 60}
!605 = !{!"function_subsections", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32}
!606 = !{!"rtl_eh", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !428, i64 48}
!607 = !{!"df-scan.c:df_get_eh_block_artificial_uses"}
!608 = !{!"function_entry_count", i64 41986}
!609 = !{!"df-scan.c:df_get_entry_block_def_set"}
!610 = !{!"branch_weights", i32 2099301, i32 125959}
!611 = !{!"branch_weights", i32 41987, i32 2183272}
!612 = distinct !{!612, !455}
!613 = !{!"branch_weights", i32 33077, i32 8911}
!614 = !{!"branch_weights", i32 35641, i32 436591}
!615 = !{!"branch_weights", i32 12058, i32 23584}
!616 = !{!"branch_weights", i32 8911, i32 463320}
!617 = distinct !{!617, !455}
!618 = !{!619, !427, i64 1488}
!619 = !{!"gcc_target", !620, i64 0, !622, i64 368, !623, i64 664, !432, i64 744, !427, i64 752, !427, i64 760, !427, i64 768, !427, i64 776, !427, i64 784, !427, i64 792, !427, i64 800, !427, i64 808, !427, i64 816, !427, i64 824, !427, i64 832, !427, i64 840, !427, i64 848, !427, i64 856, !427, i64 864, !427, i64 872, !427, i64 880, !427, i64 888, !427, i64 896, !427, i64 904, !427, i64 912, !427, i64 920, !427, i64 928, !427, i64 936, !427, i64 944, !427, i64 952, !427, i64 960, !427, i64 968, !427, i64 976, !427, i64 984, !427, i64 992, !427, i64 1000, !427, i64 1008, !427, i64 1016, !427, i64 1024, !427, i64 1032, !427, i64 1040, !427, i64 1048, !427, i64 1056, !440, i64 1064, !440, i64 1072, !427, i64 1080, !427, i64 1088, !427, i64 1096, !427, i64 1104, !427, i64 1112, !427, i64 1120, !427, i64 1128, !427, i64 1136, !427, i64 1144, !427, i64 1152, !427, i64 1160, !427, i64 1168, !624, i64 1176, !427, i64 1232, !427, i64 1240, !427, i64 1248, !427, i64 1256, !427, i64 1264, !427, i64 1272, !427, i64 1280, !427, i64 1288, !427, i64 1296, !427, i64 1304, !427, i64 1312, !427, i64 1320, !427, i64 1328, !427, i64 1336, !427, i64 1344, !427, i64 1352, !427, i64 1360, !427, i64 1368, !427, i64 1376, !427, i64 1384, !427, i64 1392, !427, i64 1400, !427, i64 1408, !427, i64 1416, !427, i64 1424, !427, i64 1432, !427, i64 1440, !427, i64 1448, !427, i64 1456, !440, i64 1464, !625, i64 1472, !427, i64 1664, !427, i64 1672, !427, i64 1680, !427, i64 1688, !427, i64 1696, !427, i64 1704, !427, i64 1712, !427, i64 1720, !427, i64 1728, !427, i64 1736, !427, i64 1744, !427, i64 1752, !427, i64 1760, !427, i64 1768, !427, i64 1776, !626, i64 1784, !627, i64 1792, !628, i64 1896, !629, i64 1968, !427, i64 2016, !428, i64 2024, !428, i64 2025, !428, i64 2026, !428, i64 2027, !428, i64 2028, !428, i64 2029, !428, i64 2030, !428, i64 2031, !428, i64 2032, !428, i64 2033, !428, i64 2034, !428, i64 2035}
!620 = !{!"asm_out", !427, i64 0, !427, i64 8, !427, i64 16, !621, i64 24, !621, i64 56, !427, i64 88, !427, i64 96, !427, i64 104, !427, i64 112, !427, i64 120, !427, i64 128, !427, i64 136, !427, i64 144, !427, i64 152, !427, i64 160, !427, i64 168, !427, i64 176, !427, i64 184, !427, i64 192, !427, i64 200, !427, i64 208, !427, i64 216, !427, i64 224, !427, i64 232, !427, i64 240, !427, i64 248, !427, i64 256, !427, i64 264, !427, i64 272, !427, i64 280, !427, i64 288, !427, i64 296, !427, i64 304, !427, i64 312, !427, i64 320, !427, i64 328, !427, i64 336, !427, i64 344, !427, i64 352, !427, i64 360}
!621 = !{!"asm_int_op", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24}
!622 = !{!"sched", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48, !427, i64 56, !427, i64 64, !427, i64 72, !427, i64 80, !427, i64 88, !427, i64 96, !427, i64 104, !427, i64 112, !427, i64 120, !427, i64 128, !427, i64 136, !427, i64 144, !427, i64 152, !427, i64 160, !427, i64 168, !427, i64 176, !427, i64 184, !427, i64 192, !427, i64 200, !427, i64 208, !427, i64 216, !427, i64 224, !427, i64 232, !427, i64 240, !427, i64 248, !427, i64 256, !427, i64 264, !427, i64 272, !427, i64 280, !427, i64 288}
!623 = !{!"vectorize", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48, !427, i64 56, !427, i64 64, !427, i64 72}
!624 = !{!"addr_space", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48}
!625 = !{!"calls", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48, !427, i64 56, !427, i64 64, !427, i64 72, !427, i64 80, !427, i64 88, !427, i64 96, !427, i64 104, !427, i64 112, !427, i64 120, !427, i64 128, !427, i64 136, !427, i64 144, !427, i64 152, !427, i64 160, !427, i64 168, !427, i64 176, !427, i64 184}
!626 = !{!"c", !427, i64 0}
!627 = !{!"cxx", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48, !427, i64 56, !427, i64 64, !427, i64 72, !427, i64 80, !427, i64 88, !427, i64 96}
!628 = !{!"emutls", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40, !427, i64 48, !427, i64 56, !428, i64 64, !428, i64 65}
!629 = !{!"target_option_hooks", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24, !427, i64 32, !427, i64 40}
!630 = !{!"branch_weights", i32 41987, i32 1}
!631 = !{!619, !427, i64 1640}
!632 = !{!"branch_weights", i32 932783193, i32 22215}
!633 = !{!"branch_weights", i32 1011317649, i32 1136165999}
!634 = !{!"branch_weights", i32 1, i32 19773}
!635 = !{!"branch_weights", i32 19773, i32 1}
!636 = !{!"branch_weights", i32 1, i32 41987}
!637 = !{!619, !427, i64 2016}
!638 = !{!"function_entry_count", i64 25054}
!639 = !{!"df-scan.c:df_record_entry_block_defs"}
!640 = !{i64 264, i64 1033}
!641 = !{!642, !427, i64 0}
!642 = !{!"df_collection_rec", !427, i64 0, !427, i64 8, !427, i64 16, !427, i64 24}
!643 = !{!"function_entry_count", i64 48536}
!644 = !{!"df-scan.c:df_get_exit_block_use_set"}
!645 = !{!"branch_weights", i32 1078297993, i32 22215}
!646 = !{!"branch_weights", i32 48537, i32 1}
!647 = !{!"branch_weights", i32 2572409, i32 1}
!648 = !{!"branch_weights", i32 48537, i32 2523872}
!649 = distinct !{!649, !455}
!650 = !{!"branch_weights", i32 39627, i32 8911}
!651 = !{!"branch_weights", i32 414569, i32 57663}
!652 = !{!440, !440, i64 0}
!653 = !{!"branch_weights", i32 31572, i32 26092}
!654 = distinct !{!654, !455}
!655 = !{!"branch_weights", i32 22215, i32 1078297993}
!656 = !{!"branch_weights", i32 39627, i32 1923424237}
!657 = !{!"function_entry_count", i64 18402}
!658 = !{!"df-scan.c:df_record_exit_block_uses"}
!659 = !{!642, !427, i64 8}
!660 = !{!"function_entry_count", i64 1370531}
!661 = !{!"df-scan.c:VEC_basic_block_base_index"}
!662 = !{!"function_entry_count", i64 690701}
!663 = !{!"branch_weights", i32 75083, i32 615620}
!664 = !{!"branch_weights", i32 84362, i32 531259}
!665 = !{!642, !427, i64 16}
!666 = !{!642, !427, i64 24}
!667 = !{!"branch_weights", i32 1, i32 6652}
!668 = !{!"branch_weights", i32 531259, i32 3182012}
!669 = !{!"branch_weights", i32 3182012, i32 1}
!670 = !{!"branch_weights", i32 -2049422166, i32 865725561}
!671 = !{!472, !432, i64 40}
!672 = !{!"branch_weights", i32 6652, i32 3699966}
!673 = distinct !{!673, !455}
!674 = !{!"function_entry_count", i64 105175278}
!675 = !{!"df-scan.c:rhs_regno"}
!676 = !{!"function_entry_count", i64 7087833}
!677 = !{!"df-scan.c:VEC_df_ref_stack_alloc1"}
!678 = !{!"df-scan.c:VEC_df_ref_base_embedded_size"}
!679 = !{!"df-scan.c:df_entry_block_defs_collect"}
!680 = !{i8 0, i8 2}
!681 = !{!"branch_weights", i32 1, i32 25054}
!682 = !{!"branch_weights", i32 25054, i32 144460}
!683 = distinct !{!683, !455}
!684 = !{!"function_entry_count", i64 4365171}
!685 = !{!"df-scan.c:df_refs_add_to_chains"}
!686 = !{!"branch_weights", i32 659076, i32 3706097}
!687 = !{!"branch_weights", i32 311811, i32 3394287}
!688 = !{!"branch_weights", i32 3394287, i32 1}
!689 = !{!"branch_weights", i32 1, i32 3706097}
!690 = !{!"branch_weights", i32 3706097, i32 1}
!691 = !{!"branch_weights", i32 653978, i32 5099}
!692 = !{!"branch_weights", i32 5099, i32 1}
!693 = !{!"branch_weights", i32 647326, i32 11751}
!694 = !{!"branch_weights", i32 11751, i32 1}
!695 = !{!"df-scan.c:VEC_df_ref_stack_free"}
!696 = !{!"branch_weights", i32 1, i32 7087834}
!697 = !{!"function_entry_count", i64 2553784}
!698 = !{!"df-scan.c:bmp_iter_set_init"}
!699 = !{!700, !427, i64 0}
!700 = !{!"bitmap_head_def", !427, i64 0, !427, i64 8, !432, i64 16, !427, i64 24}
!701 = !{!702, !427, i64 0}
!702 = !{!"", !427, i64 0, !427, i64 8, !432, i64 16, !440, i64 24}
!703 = !{!702, !427, i64 8}
!704 = !{!"branch_weights", i32 1247070, i32 1306716}
!705 = !{!706, !432, i64 16}
!706 = !{!"bitmap_element_def", !427, i64 0, !427, i64 8, !432, i64 16, !428, i64 24}
!707 = !{!"branch_weights", i32 2534107, i32 19679}
!708 = !{!702, !432, i64 16}
!709 = !{!702, !440, i64 24}
!710 = !{!"function_entry_count", i64 31689882}
!711 = !{!"df-scan.c:bmp_iter_set"}
!712 = !{!"branch_weights", i32 2698514, i32 28991370}
!713 = !{!"branch_weights", i32 18497398, i32 10638701}
!714 = !{!"branch_weights", i32 0, i32 18497398}
!715 = distinct !{!715, !455}
!716 = !{!"branch_weights", i32 1, i32 2629224}
!717 = !{!"branch_weights", i32 2559936, i32 144730}
!718 = !{!"branch_weights", i32 2629224, i32 75441}
!719 = distinct !{!719, !455}
!720 = !{!706, !427, i64 0}
!721 = !{!"branch_weights", i32 2553785, i32 75441}
!722 = !{!"function_entry_count", i64 34917693}
!723 = !{!"df-scan.c:df_ref_record"}
!724 = !{!"branch_weights", i32 84, i32 -1353111995, i32 3643143}
!725 = !{!"branch_weights", i32 43189, i32 34874506}
!726 = !{!"branch_weights", i32 32818314, i32 2099381}
!727 = !{!"branch_weights", i32 1367, i32 32816948}
!728 = !{!"branch_weights", i32 32816391, i32 1924}
!729 = !{!"branch_weights", i32 1, i32 1924}
!730 = !{!731, !427, i64 0}
!731 = !{!"df_mw_hardreg", !427, i64 0, !432, i64 8, !432, i64 10, !432, i64 12, !432, i64 16, !432, i64 20}
!732 = !{!731, !432, i64 12}
!733 = !{!731, !432, i64 16}
!734 = !{!457, !432, i64 360}
!735 = !{!731, !432, i64 20}
!736 = !{!"branch_weights", i32 32818313, i32 1}
!737 = !{!"branch_weights", i32 32820237, i32 1}
!738 = !{!"branch_weights", i32 32818313, i32 1924}
!739 = distinct !{!739, !455}
!740 = !{!"function_entry_count", i64 29136098}
!741 = !{!"df-scan.c:bmp_iter_next"}
!742 = !{!"function_entry_count", i64 4896055}
!743 = !{!"df-scan.c:df_canonize_collection_rec"}
!744 = !{!"function_entry_count", i64 32816947}
!745 = !{!"df-scan.c:end_hard_regno"}
!746 = !{!"function_entry_count", i64 1923}
!747 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_stack_safe_push"}
!748 = !{!"function_entry_count", i64 34932472}
!749 = !{!"df-scan.c:df_ref_create_structure"}
!750 = !{!"branch_weights", i32 41823, i32 34890651}
!751 = !{!"branch_weights", i32 1, i32 26291688, i32 2101555, i32 6532808, i32 6425}
!752 = !{!"branch_weights", i32 26291688, i32 1}
!753 = !{!"branch_weights", i32 2101555, i32 1}
!754 = !{!"branch_weights", i32 1, i32 6532808}
!755 = !{!"branch_weights", i32 1, i32 6425}
!756 = !{!"branch_weights", i32 527563683, i32 -449010660}
!757 = !{!"branch_weights", i32 27431873, i32 3286811}
!758 = !{!"branch_weights", i32 1753489, i32 25678385}
!759 = !{!"branch_weights", i32 79317858, i32 -1726883400}
!760 = !{!"branch_weights", i32 12857, i32 34919617}
!761 = !{!"branch_weights", i32 28343460, i32 6576158}
!762 = !{!"branch_weights", i32 6240174, i32 335985}
!763 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_stack_reserve"}
!764 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_base_quick_push"}
!765 = !{!766, !432, i64 0}
!766 = !{!"VEC_df_mw_hardreg_ptr_base", !432, i64 0, !432, i64 4, !428, i64 8}
!767 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_base_space"}
!768 = !{!766, !432, i64 4}
!769 = !{!"function_entry_count", i64 34919616}
!770 = !{!"df-scan.c:VEC_df_ref_stack_safe_push"}
!771 = !{!"df-scan.c:VEC_df_ref_stack_reserve"}
!772 = !{!"branch_weights", i32 1, i32 34919617}
!773 = !{!"df-scan.c:VEC_df_ref_base_quick_push"}
!774 = !{!775, !432, i64 0}
!775 = !{!"VEC_df_ref_base", !432, i64 0, !432, i64 4, !428, i64 8}
!776 = !{!"df-scan.c:VEC_df_ref_base_space"}
!777 = !{!775, !432, i64 4}
!778 = !{!"function_entry_count", i64 14688165}
!779 = !{!"df-scan.c:df_sort_and_compress_refs"}
!780 = !{!"branch_weights", i32 12380967, i32 2307200}
!781 = !{!"branch_weights", i32 1271410, i32 1035791}
!782 = !{!"branch_weights", i32 439480, i32 831931}
!783 = !{!"branch_weights", i32 535198, i32 9638448}
!784 = !{!"branch_weights", i32 1772002, i32 1}
!785 = !{!"branch_weights", i32 20938442, i32 1}
!786 = !{!"branch_weights", i32 17394438, i32 1772002}
!787 = distinct !{!787, !455}
!788 = !{!"branch_weights", i32 19166439, i32 1772003}
!789 = distinct !{!789, !455}
!790 = !{!"df-scan.c:df_sort_and_compress_mws"}
!791 = !{!"branch_weights", i32 4895956, i32 101}
!792 = !{!"branch_weights", i32 85, i32 17}
!793 = !{!"branch_weights", i32 8, i32 78}
!794 = !{!"branch_weights", i32 201, i32 1}
!795 = !{!"branch_weights", i32 216, i32 4}
!796 = !{!"branch_weights", i32 37, i32 201}
!797 = distinct !{!797, !455}
!798 = !{!"branch_weights", i32 2132722762, i32 14760886}
!799 = !{!"branch_weights", i32 115, i32 101}
!800 = distinct !{!800, !455}
!801 = !{!"function_entry_count", i64 26500983}
!802 = !{!"df-scan.c:VEC_df_ref_base_length"}
!803 = !{!"branch_weights", i32 753989, i32 25746996}
!804 = !{!"function_entry_count", i64 61031548}
!805 = !{!"df-scan.c:VEC_df_ref_base_index"}
!806 = !{!"function_entry_count", i64 67760298}
!807 = !{!"df-scan.c:df_ref_compare"}
!808 = !{!"branch_weights", i32 1, i32 67760299}
!809 = !{!"branch_weights", i32 56417727, i32 11342573}
!810 = !{!"branch_weights", i32 151384, i32 56266344}
!811 = !{!"branch_weights", i32 68344, i32 83041}
!812 = !{!"branch_weights", i32 68248, i32 97}
!813 = !{!"branch_weights", i32 4770028, i32 56251, i32 -479555392, i32 18911760}
!814 = !{!"branch_weights", i32 28765209, i32 421}
!815 = !{!"branch_weights", i32 1, i32 68164}
!816 = !{!"branch_weights", i32 1, i32 85}
!817 = !{!"branch_weights", i32 85, i32 1}
!818 = !{!"function_entry_count", i64 439479}
!819 = !{!"df-scan.c:df_swap_refs"}
!820 = !{!"function_entry_count", i64 500593}
!821 = !{!"df-scan.c:VEC_df_ref_base_address"}
!822 = !{!"branch_weights", i32 1, i32 500594}
!823 = !{!"function_entry_count", i64 38417847}
!824 = !{!"df-scan.c:df_ref_equal_p"}
!825 = !{!"branch_weights", i32 1, i32 38417848}
!826 = !{!"branch_weights", i32 37862154, i32 555695}
!827 = !{!"branch_weights", i32 19047899, i32 18814256}
!828 = !{!"branch_weights", i32 19047760, i32 140}
!829 = !{!"branch_weights", i32 -1540120253, i32 7019881}
!830 = !{!"branch_weights", i32 1, i32 18999348}
!831 = !{!"branch_weights", i32 18999348, i32 1}
!832 = !{!"branch_weights", i32 1, i32 1, i32 17647410, i32 278, i32 1351662}
!833 = !{!"branch_weights", i32 278, i32 1}
!834 = !{!"branch_weights", i32 377190982, i32 278}
!835 = !{!"function_entry_count", i64 878958}
!836 = !{!"df-scan.c:VEC_df_ref_base_replace"}
!837 = !{!"function_entry_count", i64 15394369}
!838 = !{!"df-scan.c:VEC_df_ref_base_truncate"}
!839 = !{!"branch_weights", i32 1, i32 15394370}
!840 = !{!"function_entry_count", i64 8602151}
!841 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_base_length"}
!842 = !{!"branch_weights", i32 43457, i32 8558696}
!843 = !{!"function_entry_count", i64 421}
!844 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_base_index"}
!845 = !{!"function_entry_count", i64 133}
!846 = !{!"df-scan.c:df_mw_compare"}
!847 = !{!"branch_weights", i32 1, i32 134}
!848 = !{!"branch_weights", i32 28, i32 107}
!849 = !{!"branch_weights", i32 9, i32 20}
!850 = !{!"branch_weights", i32 4, i32 6}
!851 = !{!"branch_weights", i32 4, i32 1}
!852 = !{!"function_entry_count", i64 14}
!853 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_base_replace"}
!854 = !{!"function_entry_count", i64 1401}
!855 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_base_address"}
!856 = !{!"branch_weights", i32 1, i32 1402}
!857 = !{!"function_entry_count", i64 558}
!858 = !{!"df-scan.c:df_mw_equal_p"}
!859 = !{!"branch_weights", i32 1, i32 559}
!860 = !{!"branch_weights", i32 518, i32 42}
!861 = !{!"branch_weights", i32 198468, i32 34044}
!862 = !{!"branch_weights", i32 444, i32 1}
!863 = !{!"function_entry_count", i64 4540889}
!864 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_base_truncate"}
!865 = !{!"branch_weights", i32 1, i32 4540890}
!866 = !{!"function_entry_count", i64 11812818}
!867 = !{!"df-scan.c:df_install_refs"}
!868 = !{!"branch_weights", i32 6015346, i32 5797474}
!869 = !{!458, !432, i64 36}
!870 = !{!"branch_weights", i32 5784513, i32 1, i32 1, i32 1, i32 11251, i32 1712, i32 1}
!871 = !{!"branch_weights", i32 2146657226, i32 826422}
!872 = !{!"branch_weights", i32 1, i32 12962}
!873 = !{i32 0, i32 2}
!874 = !{!"branch_weights", i32 1, i32 5797473}
!875 = !{!"branch_weights", i32 5797473, i32 11052120}
!876 = distinct !{!876, !455}
!877 = !{!"function_entry_count", i64 3394286}
!878 = !{!"df-scan.c:df_install_mws"}
!879 = !{!"branch_weights", i32 3392902, i32 1386}
!880 = !{!"function_entry_count", i64 65404140}
!881 = !{!"df-scan.c:VEC_df_ref_base_iterate"}
!882 = !{!"branch_weights", i32 1, i32 65404141}
!883 = !{!"branch_weights", i32 54587244, i32 10816898}
!884 = !{!"function_entry_count", i64 16862448}
!885 = !{!"df-scan.c:df_install_ref"}
!886 = !{!"branch_weights", i32 12884149, i32 3978301}
!887 = !{!"branch_weights", i32 3978301, i32 1}
!888 = !{!"branch_weights", i32 16862449, i32 1}
!889 = !{!"branch_weights", i32 1822321, i32 15040129}
!890 = !{!"branch_weights", i32 16837120, i32 25330}
!891 = !{!"branch_weights", i32 1, i32 25330}
!892 = !{!458, !432, i64 28}
!893 = !{!458, !427, i64 0}
!894 = !{!458, !432, i64 32}
!895 = !{!"function_entry_count", i64 66566}
!896 = !{!"df-scan.c:df_check_and_grow_ref_info"}
!897 = !{!458, !432, i64 24}
!898 = !{!"branch_weights", i32 41238, i32 25330}
!899 = !{!"function_entry_count", i64 41237}
!900 = !{!"df-scan.c:df_grow_ref_info"}
!901 = !{!"branch_weights", i32 41238, i32 1}
!902 = !{!"function_entry_count", i64 29797}
!903 = !{!"df-scan.c:df_mark_reg"}
!904 = !{!"branch_weights", i32 1, i32 29798}
!905 = !{!"branch_weights", i32 29798, i32 1}
!906 = !{!"df-scan.c:df_exit_block_uses_collect"}
!907 = !{!"branch_weights", i32 1, i32 18402}
!908 = !{!"branch_weights", i32 18402, i32 60334}
!909 = distinct !{!909, !455}
!910 = !{!"branch_weights", i32 6653, i32 11751}
!911 = !{!"function_entry_count", i64 1242988}
!912 = !{!"df-scan.c:bb_has_eh_pred"}
!913 = !{i64 0, i64 4, !507, i64 8, i64 8, !426}
!914 = !{i64 0, i64 8, !426}
!915 = !{!"branch_weights", i32 1, i32 1242988}
!916 = !{!917, !432, i64 48}
!917 = !{!"edge_def", !427, i64 0, !427, i64 8, !428, i64 16, !427, i64 24, !427, i64 32, !432, i64 40, !432, i64 44, !432, i64 48, !432, i64 52, !440, i64 56}
!918 = !{!"branch_weights", i32 1706342, i32 1}
!919 = !{!"branch_weights", i32 1242988, i32 463354}
!920 = distinct !{!920, !455}
!921 = !{!"df-scan.c:ei_start_1"}
!922 = !{!"function_entry_count", i64 2949329}
!923 = !{!"df-scan.c:ei_cond"}
!924 = !{!"branch_weights", i32 1706342, i32 1242989}
!925 = !{!"function_entry_count", i64 1706341}
!926 = !{!"df-scan.c:ei_next"}
!927 = !{!"branch_weights", i32 1, i32 1706342}
!928 = !{!929, !432, i64 0}
!929 = !{!"", !432, i64 0, !427, i64 8}
!930 = !{!"df-scan.c:ei_end_p"}
!931 = !{!"branch_weights", i32 168723, i32 2780608}
!932 = !{!"df-scan.c:ei_edge"}
!933 = !{!"function_entry_count", i64 4655670}
!934 = !{!"df-scan.c:VEC_edge_base_length"}
!935 = !{!"branch_weights", i32 168723, i32 4486949}
!936 = !{!937, !432, i64 0}
!937 = !{!"VEC_edge_base", !432, i64 0, !432, i64 4, !428, i64 8}
!938 = !{!"function_entry_count", i64 12555300}
!939 = !{!"df-scan.c:ei_container"}
!940 = !{!"branch_weights", i32 1, i32 12555301}
!941 = !{!"df-scan.c:VEC_edge_base_index"}
!942 = !{!"function_entry_count", i64 12856}
!943 = !{!"branch_weights", i32 1, i32 12857}
!944 = !{!"branch_weights", i32 165302449, i32 25715}
!945 = !{!"branch_weights", i32 947, i32 2147482701}
!946 = !{!"branch_weights", i32 12233, i32 625}
!947 = !{!"branch_weights", i32 1, i32 625, i32 1, i32 1}
!948 = !{!"branch_weights", i32 12857, i32 1}
!949 = !{!"branch_weights", i32 6462, i32 6395}
!950 = !{!"branch_weights", i32 6395, i32 0}
!951 = distinct !{!951, !455}
!952 = !{!"branch_weights", i32 69673591, i32 2077810057}
!953 = !{!"function_entry_count", i64 35012}
!954 = !{!"branch_weights", i32 1, i32 35013}
!955 = !{!"branch_weights", i32 34382, i32 632}
!956 = !{!"df-scan.c:df_ref_compress_rec"}
!957 = !{!"branch_weights", i32 16576, i32 18438}
!958 = !{!"branch_weights", i32 580662550, i32 411083514}
!959 = distinct !{!959, !455}
!960 = !{!"branch_weights", i32 1, i32 18437}
!961 = !{!"branch_weights", i32 18437, i32 5965}
!962 = distinct !{!962, !455}
!963 = !{!"function_entry_count", i64 4476324}
!964 = !{!"branch_weights", i32 4476325, i32 1}
!965 = !{!"function_entry_count", i64 1158190}
!966 = !{!"df-scan.c:df_mw_hardreg_chain_delete"}
!967 = !{!"branch_weights", i32 1, i32 1158191}
!968 = !{!"branch_weights", i32 1156948, i32 1243}
!969 = !{!"branch_weights", i32 1243, i32 0}
!970 = distinct !{!970, !455}
!971 = !{!"function_entry_count", i64 2244873}
!972 = !{!"branch_weights", i32 148599, i32 2096276}
!973 = !{!"branch_weights", i32 -2020159285, i32 123731091}
!974 = !{!"branch_weights", i32 1, i32 1988138}
!975 = !{!"branch_weights", i32 1845203, i32 142936}
!976 = !{!"branch_weights", i32 1844224, i32 980}
!977 = !{!"branch_weights", i32 1628571, i32 216633}
!978 = !{!"branch_weights", i32 48608668, i32 2098874980}
!979 = !{!"branch_weights", i32 216633, i32 1}
!980 = !{!"branch_weights", i32 443644, i32 1184928}
!981 = !{!"branch_weights", i32 654044, i32 530885}
!982 = !{!"branch_weights", i32 530885, i32 1}
!983 = !{!"branch_weights", i32 654044, i32 1}
!984 = !{!"branch_weights", i32 443644, i32 1}
!985 = !{!"branch_weights", i32 1, i32 1097687}
!986 = !{!"function_entry_count", i64 2555999}
!987 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_stack_alloc1"}
!988 = !{!"function_entry_count", i64 1184927}
!989 = !{!"df-scan.c:df_insn_refs_verify"}
!990 = !{!"branch_weights", i32 1, i32 1184928}
!991 = !{!"branch_weights", i32 -1935584106, i32 -1388220733}
!992 = !{!"function_entry_count", i64 530884}
!993 = !{!"df-scan.c:df_free_collection_rec"}
!994 = !{!"branch_weights", i32 1, i32 530884}
!995 = !{!"branch_weights", i32 530884, i32 16883375}
!996 = distinct !{!996, !455}
!997 = !{!"branch_weights", i32 529619, i32 1266}
!998 = !{!"branch_weights", i32 530884, i32 123618}
!999 = distinct !{!999, !455}
!1000 = !{!"branch_weights", i32 530464, i32 421}
!1001 = !{!"branch_weights", i32 1266, i32 0}
!1002 = distinct !{!1002, !455}
!1003 = !{!"branch_weights", i32 421, i32 0}
!1004 = distinct !{!1004, !455}
!1005 = !{!"function_entry_count", i64 3925170}
!1006 = !{!"df-scan.c:df_insn_refs_collect"}
!1007 = !{!"branch_weights", i32 1718509, i32 2206662}
!1008 = !{!"branch_weights", i32 2028983, i32 89609, i32 88072, i32 1}
!1009 = !{!"branch_weights", i32 2206662, i32 0}
!1010 = distinct !{!1010, !455}
!1011 = !{!"branch_weights", i32 566759, i32 3358413}
!1012 = !{!"branch_weights", i32 1, i32 3925171}
!1013 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_stack_free"}
!1014 = !{!"branch_weights", i32 1, i32 2556000}
!1015 = !{!"function_entry_count", i64 3554781}
!1016 = !{!"df-scan.c:df_refs_verify"}
!1017 = !{!"branch_weights", i32 1, i32 2860014}
!1018 = !{!"branch_weights", i32 23652, i32 19251409}
!1019 = !{!"branch_weights", i32 671117, i32 18580293}
!1020 = !{!"branch_weights", i32 694768, i32 1}
!1021 = !{!"branch_weights", i32 -2147483648, i32 0}
!1022 = !{!"branch_weights", i32 2860014, i32 16415046}
!1023 = distinct !{!1023, !455}
!1024 = !{!"branch_weights", i32 2860015, i32 1}
!1025 = !{!"df-scan.c:df_mws_verify"}
!1026 = !{!"branch_weights", i32 1184487, i32 441}
!1027 = !{!"branch_weights", i32 1, i32 441}
!1028 = !{!"branch_weights", i32 441, i32 0}
!1029 = distinct !{!1029, !455}
!1030 = !{!"branch_weights", i32 1184928, i32 1}
!1031 = !{!"function_entry_count", i64 1716671}
!1032 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_base_iterate"}
!1033 = !{!"branch_weights", i32 1, i32 1716672}
!1034 = !{!"branch_weights", i32 861, i32 1715812}
!1035 = !{!"function_entry_count", i64 4625554}
!1036 = !{!"df-scan.c:df_defs_record"}
!1037 = !{!"branch_weights", i32 846659741, i32 -2016749483, i32 -2016749483, i32 4218, i32 1431553853}
!1038 = !{!1039, !432, i64 0}
!1039 = !{!"rtvec_def", !432, i64 0, !428, i64 8}
!1040 = !{!"branch_weights", i32 339324, i32 1}
!1041 = !{!"branch_weights", i32 361061, i32 339324}
!1042 = distinct !{!1042, !455}
!1043 = !{!"function_entry_count", i64 16228221}
!1044 = !{!"df-scan.c:df_uses_record"}
!1045 = !{!"branch_weights", i32 1, i32 127}
!1046 = !{!"branch_weights", i32 4611939, i32 981969, i32 759715, i32 3499142, i32 88653, i32 1931, i32 1, i32 1, i32 751473, i32 1, i32 1, i32 1, i32 318065, i32 1654884, i32 43149, i32 3987074, i32 1, i32 13113, i32 3767482, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 15823, i32 1, i32 1, i32 1, i32 1}
!1047 = !{!"branch_weights", i32 17801, i32 300265}
!1048 = !{!"branch_weights", i32 127, i32 16129}
!1049 = !{!"branch_weights", i32 42914, i32 236}
!1050 = !{!"branch_weights", i32 13113, i32 1}
!1051 = !{!"branch_weights", i32 6654, i32 6460}
!1052 = !{!"branch_weights", i32 6654, i32 1}
!1053 = !{!"branch_weights", i32 3767482, i32 1}
!1054 = !{!"branch_weights", i32 1, i32 276, i32 2171640, i32 1, i32 1, i32 978463, i32 1, i32 609899, i32 6922, i32 287}
!1055 = !{!"branch_weights", i32 162, i32 115}
!1056 = !{!"branch_weights", i32 1, i32 6922}
!1057 = !{!"branch_weights", i32 287, i32 1}
!1058 = !{!"branch_weights", i32 1, i32 287}
!1059 = distinct !{!1059, !455}
!1060 = !{!"branch_weights", i32 1, i32 15823}
!1061 = !{!"branch_weights", i32 1, i32 368042}
!1062 = !{!"branch_weights", i32 6192116, i32 -1083490409, i32 118524778}
!1063 = !{!"branch_weights", i32 339622, i32 1}
!1064 = !{!"branch_weights", i32 4266177, i32 4936021}
!1065 = !{!"branch_weights", i32 361149, i32 339622}
!1066 = distinct !{!1066, !455}
!1067 = !{!"branch_weights", i32 9191519, i32 368042}
!1068 = distinct !{!1068, !455}
!1069 = !{!"branch_weights", i32 127, i32 -1671684479}
!1070 = !{!"function_entry_count", i64 566758}
!1071 = !{!"df-scan.c:df_get_call_refs"}
!1072 = !{!"branch_weights", i32 174190, i32 392569}
!1073 = !{!"branch_weights", i32 392569, i32 0}
!1074 = distinct !{!1074, !455}
!1075 = !{!"branch_weights", i32 382039, i32 184720}
!1076 = !{!"branch_weights", i32 1, i32 369440, i32 1}
!1077 = !{!"branch_weights", i32 184720, i32 0}
!1078 = distinct !{!1078, !455}
!1079 = !{!"branch_weights", i32 30038175, i32 1}
!1080 = !{!"branch_weights", i32 566759, i32 29471416}
!1081 = distinct !{!1081, !455}
!1082 = !{!"branch_weights", i32 1, i32 566758}
!1083 = !{!"branch_weights", i32 26070869, i32 1}
!1084 = !{!"branch_weights", i32 25678385, i32 392485}
!1085 = !{!"branch_weights", i32 25112192, i32 566194}
!1086 = !{!"branch_weights", i32 566194, i32 1}
!1087 = !{!599, !427, i64 320}
!1088 = !{!"branch_weights", i32 566758, i32 25504111}
!1089 = distinct !{!1089, !455}
!1090 = !{!"df-scan.c:df_get_conditional_uses"}
!1091 = distinct !{!1091, !455}
!1092 = !{!"function_entry_count", i64 4085545}
!1093 = !{!"df-scan.c:df_def_record_1"}
!1094 = !{!"branch_weights", i32 -226751951, i32 997, i32 6904333}
!1095 = distinct !{!1095, !455}
!1096 = !{!"branch_weights", i32 287, i32 4085260}
!1097 = !{!"branch_weights", i32 -1772920484, i32 -405141379, i32 433184}
!1098 = !{!"branch_weights", i32 46546, i32 2431825}
!1099 = !{!"branch_weights", i32 276, i32 1}
!1100 = !{!"function_entry_count", i64 550}
!1101 = !{!"branch_weights", i32 551, i32 1}
!1102 = distinct !{!1102, !455}
!1103 = distinct !{!1103, !455}
!1104 = distinct !{!1104, !455}
!1105 = !{!"function_entry_count", i64 428463}
!1106 = !{!"branch_weights", i32 428464, i32 1}
!1107 = !{!"branch_weights", i32 360956, i32 67509}
!1108 = !{!"branch_weights", i32 303203, i32 125261}
!1109 = !{!"branch_weights", i32 125261, i32 1}
!1110 = !{!"branch_weights", i32 125261, i32 0}
!1111 = distinct !{!1111, !455}
!1112 = !{!"branch_weights", i32 264199, i32 164265}
!1113 = !{!"branch_weights", i32 164265, i32 1}
!1114 = !{!"branch_weights", i32 164265, i32 0}
!1115 = distinct !{!1115, !455}
!1116 = !{!"branch_weights", i32 347229, i32 81235}
!1117 = !{!"branch_weights", i32 81235, i32 1}
!1118 = !{!"branch_weights", i32 81235, i32 0}
!1119 = distinct !{!1119, !455}
!1120 = !{!457, !428, i64 366}
!1121 = !{!"branch_weights", i32 421812, i32 6653}
!1122 = !{!"function_entry_count", i64 481761}
!1123 = !{!"branch_weights", i32 40612, i32 441151}
!1124 = !{!"branch_weights", i32 441151, i32 1}
!1125 = !{!"branch_weights", i32 8, i32 441144}
!1126 = !{!"branch_weights", i32 441144, i32 1}
!1127 = !{!"branch_weights", i32 311811, i32 129334}
!1128 = !{!"branch_weights", i32 11736, i32 2147471912}
!1129 = !{!"branch_weights", i32 112267, i32 17068}
!1130 = !{!"branch_weights", i32 1, i32 311811}
!1131 = !{!"branch_weights", i32 1, i32 311810}
!1132 = !{!"branch_weights", i32 239594, i32 243122}
!1133 = !{!"branch_weights", i32 311810, i32 170904}
!1134 = distinct !{!1134, !455}
!1135 = !{!"branch_weights", i32 311811, i32 1}
!1136 = distinct !{!1136, !455}
!1137 = !{!"function_entry_count", i64 28682}
!1138 = !{!"branch_weights", i32 1, i32 28682}
!1139 = !{!"branch_weights", i32 1, i32 13117}
!1140 = !{!"branch_weights", i32 1055440, i32 6487039}
!1141 = !{!"branch_weights", i32 213761206, i32 -852833841}
!1142 = !{!"branch_weights", i32 13117, i32 7516244}
!1143 = distinct !{!1143, !455}
!1144 = !{!"branch_weights", i32 28682, i32 1026758}
!1145 = distinct !{!1145, !455}
!1146 = !{!"function_entry_count", i64 238058}
!1147 = !{!"branch_weights", i32 211451, i32 26609}
!1148 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 13305, i32 13305, i32 1, i32 1}
!1149 = !{!457, !432, i64 200}
!1150 = !{!"function_entry_count", i64 27933}
!1151 = !{!"df-scan.c:df_reorganize_refs_by_reg"}
!1152 = !{!"branch_weights", i32 6653, i32 21282}
!1153 = !{!"df-scan.c:df_reorganize_refs_by_insn"}
!1154 = !{!"branch_weights", i32 13305, i32 1}
!1155 = distinct !{!1155, !455}
!1156 = !{!"branch_weights", i32 13304, i32 534358}
!1157 = distinct !{!1157, !455}
!1158 = !{!"function_entry_count", i64 21281}
!1159 = !{!"df-scan.c:df_reorganize_refs_by_reg_by_insn"}
!1160 = !{!458, !427, i64 8}
!1161 = !{!458, !427, i64 16}
!1162 = !{!"branch_weights", i32 1, i32 21281}
!1163 = !{!"branch_weights", i32 21281, i32 1}
!1164 = !{!"branch_weights", i32 1, i32 296460}
!1165 = !{!"branch_weights", i32 296459, i32 1}
!1166 = distinct !{!1166, !455}
!1167 = !{!"branch_weights", i32 296460, i32 1}
!1168 = distinct !{!1168, !455}
!1169 = !{!"branch_weights", i32 1, i32 303}
!1170 = !{!"branch_weights", i32 296460, i32 1478683}
!1171 = !{!"branch_weights", i32 -528354852, i32 1788489158}
!1172 = !{!"branch_weights", i32 1, i32 1002613}
!1173 = !{!"branch_weights", i32 1, i32 1002612}
!1174 = !{!"branch_weights", i32 1002612, i32 2344466}
!1175 = distinct !{!1175, !455}
!1176 = !{!"branch_weights", i32 1002613, i32 1}
!1177 = distinct !{!1177, !455}
!1178 = distinct !{!1178, !455}
!1179 = !{!"branch_weights", i32 303, i32 1774536}
!1180 = distinct !{!1180, !455}
!1181 = !{!"branch_weights", i32 21281, i32 275179}
!1182 = distinct !{!1182, !455}
!1183 = !{!"branch_weights", i32 21281, i32 28085849}
!1184 = distinct !{!1184, !455}
!1185 = distinct !{!1185, !455}
!1186 = distinct !{!1186, !455}
!1187 = !{!"branch_weights", i32 1, i32 3347078}
!1188 = distinct !{!1188, !455}
!1189 = distinct !{!1189, !455}
!1190 = distinct !{!1190, !455}
!1191 = distinct !{!1191, !455}
!1192 = distinct !{!1192, !455}
!1193 = !{!"df-scan.c:df_reorganize_refs_by_reg_by_reg"}
!1194 = !{!"branch_weights", i32 6652, i32 1}
!1195 = !{!"branch_weights", i32 1, i32 1318053}
!1196 = !{!"branch_weights", i32 1, i32 1318052}
!1197 = !{!"branch_weights", i32 5028031, i32 1}
!1198 = !{!"branch_weights", i32 1318052, i32 3709979}
!1199 = distinct !{!1199, !455}
!1200 = !{!"branch_weights", i32 1318053, i32 1}
!1201 = distinct !{!1201, !455}
!1202 = distinct !{!1202, !455}
!1203 = !{!"branch_weights", i32 6652, i32 1311401}
!1204 = distinct !{!1204, !455}
!1205 = !{!"df-scan.c:df_count_refs"}
!1206 = !{!"branch_weights", i32 1, i32 41237}
!1207 = !{!"branch_weights", i32 2621294, i32 29425182}
!1208 = !{!"branch_weights", i32 29425182, i32 2621294}
!1209 = !{!"branch_weights", i32 41237, i32 32005238}
!1210 = distinct !{!1210, !455}
!1211 = !{!"function_entry_count", i64 592918}
!1212 = !{!"df-scan.c:df_get_artificial_defs"}
!1213 = !{!"function_entry_count", i64 547661}
!1214 = !{!"df-scan.c:df_get_artificial_uses"}
!1215 = !{!"df-scan.c:df_reorganize_refs_by_insn_bb"}
!1216 = !{!"branch_weights", i32 547662, i32 1}
!1217 = !{!"branch_weights", i32 1, i32 547662}
!1218 = !{!"branch_weights", i32 1, i32 39912}
!1219 = !{!"branch_weights", i32 547662, i32 3049664}
!1220 = !{!"branch_weights", i32 -948465784, i32 1201336735}
!1221 = !{!"branch_weights", i32 2244077, i32 1}
!1222 = !{!"branch_weights", i32 1, i32 2244077}
!1223 = !{!"branch_weights", i32 39912, i32 3517501}
!1224 = distinct !{!1224, !455}
!1225 = !{!"function_entry_count", i64 5035813}
!1226 = !{!"df-scan.c:df_add_refs_to_table"}
!1227 = !{!"branch_weights", i32 312595, i32 4723219}
!1228 = !{!"branch_weights", i32 4723219, i32 1}
!1229 = !{!"branch_weights", i32 4723219, i32 0}
!1230 = distinct !{!1230, !455}
!1231 = !{!"function_entry_count", i64 252687}
!1232 = !{!"branch_weights", i32 196822, i32 55867}
!1233 = !{!"branch_weights", i32 1, i32 27934, i32 1, i32 27934, i32 1, i32 1, i32 1, i32 1}
!1234 = !{!457, !432, i64 160}
!1235 = !{!"function_entry_count", i64 2391675}
!1236 = !{!"branch_weights", i32 273731, i32 2117946}
!1237 = !{!"branch_weights", i32 1868037, i32 249910}
!1238 = !{!"branch_weights", i32 249910, i32 1}
!1239 = !{!"branch_weights", i32 248987, i32 924}
!1240 = !{!"branch_weights", i32 110693, i32 139218}
!1241 = !{!"branch_weights", i32 110693, i32 1}
!1242 = !{!"branch_weights", i32 -414426707, i32 113979021}
!1243 = !{!"branch_weights", i32 1, i32 135246}
!1244 = !{!"branch_weights", i32 135246, i32 1}
!1245 = !{!"function_entry_count", i64 988689}
!1246 = !{!"branch_weights", i32 -1698648969, i32 989625113}
!1247 = !{!"function_entry_count", i64 818556}
!1248 = !{!"df-scan.c:df_ref_change_reg_with_loc_1"}
!1249 = !{!"branch_weights", i32 1, i32 818556}
!1250 = !{!"branch_weights", i32 -1250359925, i32 5311741}
!1251 = !{!"branch_weights", i32 3165123, i32 1}
!1252 = !{!"branch_weights", i32 1022871, i32 1}
!1253 = !{!"branch_weights", i32 1007357, i32 15515}
!1254 = !{!"branch_weights", i32 543832, i32 479040}
!1255 = !{!"branch_weights", i32 46115, i32 976757}
!1256 = !{!"branch_weights", i32 1, i32 1022871}
!1257 = !{!"branch_weights", i32 986279, i32 36593}
!1258 = !{!"branch_weights", i32 1, i32 1022870}
!1259 = !{!"branch_weights", i32 1022870, i32 230180}
!1260 = distinct !{!1260, !455}
!1261 = !{!"branch_weights", i32 818556, i32 2718993}
!1262 = distinct !{!1262, !455}
!1263 = !{!"function_entry_count", i64 311810}
!1264 = !{!"df-scan.c:df_mw_hardreg_chain_delete_eq_uses"}
!1265 = !{!"branch_weights", i32 311705, i32 107}
!1266 = !{!"branch_weights", i32 107, i32 1}
!1267 = distinct !{!1267, !455}
!1268 = !{!"branch_weights", i32 107, i32 0}
!1269 = distinct !{!1269, !455}
!1270 = !{!"branch_weights", i32 1, i32 107}
!1271 = distinct !{!1271, !455}
!1272 = !{!"function_entry_count", i64 615619}
!1273 = !{!"df-scan.c:df_bb_refs_collect"}
!1274 = !{!"branch_weights", i32 -1334123668, i32 4809, i32 4809}
!1275 = !{!"branch_weights", i32 615620, i32 1}
!1276 = !{!451, !432, i64 96}
!1277 = !{!"branch_weights", i32 1, i32 615619}
!1278 = !{!"branch_weights", i32 615619, i32 1237688}
!1279 = distinct !{!1279, !455}
!1280 = !{!"branch_weights", i32 1, i32 28683}
!1281 = !{!"branch_weights", i32 11751, i32 16933}
!1282 = !{!"function_entry_count", i64 35232}
!1283 = !{!"branch_weights", i32 1, i32 35233}
!1284 = !{!"branch_weights", i32 5099, i32 30135}
!1285 = !{!"branch_weights", i32 6652, i32 2}
!1286 = !{!"function_entry_count", i64 11004105}
!1287 = !{!"function_entry_count", i64 285132}
!1288 = !{!"branch_weights", i32 259735, i32 25399}
!1289 = !{!"branch_weights", i32 1, i32 25399}
!1290 = !{!"function_entry_count", i64 223665}
!1291 = !{!"branch_weights", i32 210362, i32 13305}
!1292 = !{!"branch_weights", i32 11004106, i32 850141}
!1293 = !{!"branch_weights", i32 10962549, i32 41558}
!1294 = !{!"branch_weights", i32 223666, i32 11630580}
!1295 = distinct !{!1295, !455}
!1296 = distinct !{!1296, !455}
!1297 = distinct !{!1297, !455}
!1298 = distinct !{!1298, !455}
!1299 = !{!"df-scan.c:df_reg_chain_mark"}
!1300 = distinct !{!1300, !455}
!1301 = !{!"df-scan.c:df_entry_block_bitmap_verify"}
!1302 = !{!"df-scan.c:df_exit_block_bitmap_verify"}
!1303 = !{!"df-scan.c:df_bb_verify"}
!1304 = !{!524, !427, i64 0}
!1305 = distinct !{!1305, !455}
!1306 = !{!"df-scan.c:df_reg_chain_verify_unmarked"}
!1307 = distinct !{!1307, !455}
