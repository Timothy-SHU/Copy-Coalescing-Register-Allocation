; ModuleID = 'df-scan.c'
source_filename = "df-scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.df_problem = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
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
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.df_scan_problem_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bitmap_obstack, %struct.bitmap_obstack }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.df_scan_bb_info = type { ptr, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.df_collection_rec = type { ptr, ptr, ptr, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.df_artificial_ref = type { %struct.df_base_ref, ptr }
%struct.df_regular_ref = type { %struct.df_base_ref, ptr }
%struct.df_extract_ref = type { %struct.df_regular_ref, i32, i32, i32 }
%struct.df_reg_info = type { ptr, i32 }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.df_mw_hardreg = type { ptr, i32, i32, i32, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.VEC_df_mw_hardreg_ptr_base = type { i32, i32, [1 x ptr] }
%struct.VEC_df_ref_base = type { i32, i32, [1 x ptr] }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

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
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [43 x i8] c"deferring deletion of insn with uid = %d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"deleting insn with uid = %d.\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"no bb for insn with uid = %d.\0A\00", align 1
@df_null_ref_rec = internal global [1 x ptr] zeroinitializer, align 8
@df_null_mw_rec = internal global [1 x ptr] zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [38 x i8] c"deferring rescan insn with uid = %d.\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"verify found no changes in insn with uid = %d.\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"rescanning insn with uid = %d.\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"scanning new insn with uid = %d.\0A\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@.str.17 = private unnamed_addr constant [36 x i8] c"deleting debug_insn with uid = %d.\0A\00", align 1
@df_bitmap_obstack = external global %struct.bitmap_obstack, align 8
@.str.18 = private unnamed_addr constant [43 x i8] c"starting the processing of deferred insns\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"ending the processing of deferred insns\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"changing bb of uid %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"  unscanned insn\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"  from %d to %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"  to %d\0A\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@initialized = internal unnamed_addr global i1 false, align 1
@elim_reg_set = internal unnamed_addr global i1 false, align 8
@regs_ever_live = internal unnamed_addr global [53 x i8] zeroinitializer, align 16
@.str.24 = private unnamed_addr constant [26 x i8] c";;  invalidated by call \09\00", align 1
@regs_invalidated_by_call_regset = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [25 x i8] c";;  hardware regs used \09\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c";;  regular block artificial uses \09\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c";;  eh block artificial uses \09\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c";;  entry block defs \09\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c";;  exit block uses \09\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c";;  regs ever live \09\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c" %d[%s]\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@.str.32 = private unnamed_addr constant [17 x i8] c"\0A;;  ref usage \09\00", align 1
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"r%d={\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"%dd\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"%s%du\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"%s%dd\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"} \00", align 1
@.str.40 = private unnamed_addr constant [75 x i8] c"\0A;;    total ref usage %d{%dd,%du,%de} in %d{%d regular + %d call} insns.\0A\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c";; bb %d artificial_defs: \00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"\0A;; bb %d artificial_uses: \00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@.str.44 = private unnamed_addr constant [25 x i8] c"changing reg in insn %d\0A\00", align 1
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@global_regs = external local_unnamed_addr global [53 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@reload_completed = external local_unnamed_addr global i32, align 4
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@.str.45 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@flag_pic = external local_unnamed_addr global i32, align 4
@pic_offset_table_rtx = external local_unnamed_addr global ptr, align 8
@epilogue_completed = external local_unnamed_addr global i32, align 4
@call_used_regs = external local_unnamed_addr global [53 x i8], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@regs_invalidated_by_call = external local_unnamed_addr global i64, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.46 = private unnamed_addr constant [20 x i8] c"entry_block_defs = \00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"df->entry_block_defs = \00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"exit_block_uses = \00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"df->exit_block_uses = \00", align 1
@switch.table.df_ref_create = private unnamed_addr constant [5 x i32] [i32 2, i32 1, i32 2, i32 1, i32 2], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_scan_alloc(ptr nocapture readnone %0) #0 !prof !397 {
  %2 = tail call i32 @get_max_uid() #21
  %3 = load ptr, ptr @df, align 8, !tbaa !398
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !398
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !402
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !405

9:                                                ; preds = %1
  tail call fastcc void @df_scan_free_internal() #22
  br label %10

10:                                               ; preds = %9, %1
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str, i64 noundef 16, i64 noundef 400) #21
  %12 = load ptr, ptr @df, align 8, !tbaa !398
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !398
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  store ptr %11, ptr %15, align 8, !tbaa !406
  %16 = tail call ptr @xmalloc(i64 noundef 264) #21
  %17 = load ptr, ptr @df, align 8, !tbaa !398
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !398
  %20 = getelementptr inbounds %struct.dataflow, ptr %19, i64 0, i32 5
  store ptr %16, ptr %20, align 8, !tbaa !402
  %21 = load ptr, ptr %18, align 8, !tbaa !398
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 7
  store i8 1, ptr %22, align 4, !tbaa !407
  %23 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.1, i64 noundef 64, i64 noundef 400) #21
  store ptr %23, ptr %16, align 8, !tbaa !408
  %24 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.2, i64 noundef 72, i64 noundef 400) #21
  %25 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !413
  %26 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.3, i64 noundef 72, i64 noundef 400) #21
  %27 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !414
  %28 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.4, i64 noundef 88, i64 noundef 400) #21
  %29 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !415
  %30 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.5, i64 noundef 48, i64 noundef 400) #21
  %31 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 4
  store ptr %30, ptr %31, align 8, !tbaa !416
  %32 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.6, i64 noundef 16, i64 noundef 400) #21
  %33 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 5
  store ptr %32, ptr %33, align 8, !tbaa !417
  %34 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.7, i64 noundef 24, i64 noundef 400) #21
  %35 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 6
  store ptr %34, ptr %35, align 8, !tbaa !418
  %36 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 7
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull %36) #21
  %37 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 8
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull %37) #21
  tail call void @df_grow_reg_info() #22
  tail call void @df_grow_insn_info() #22
  %38 = load ptr, ptr @df, align 8, !tbaa !398
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !398
  tail call void @df_grow_bb_info(ptr noundef %40) #21
  %41 = load ptr, ptr @cfun, align 8, !tbaa !398
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !419
  %44 = load ptr, ptr %43, align 8, !tbaa !398
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46, !prof !421

46:                                               ; preds = %10, %59
  %47 = phi ptr [ %62, %59 ], [ %44, %10 ]
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !422
  %50 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %49) #22
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %59, !prof !424

52:                                               ; preds = %46
  %53 = load ptr, ptr @df, align 8, !tbaa !398
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !398
  %56 = getelementptr inbounds %struct.dataflow, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !406
  %58 = tail call ptr @pool_alloc(ptr noundef %57) #21
  tail call fastcc void @df_scan_set_bb_info(i32 noundef %49, ptr noundef %58) #22
  br label %59

59:                                               ; preds = %52, %46
  %60 = phi ptr [ %50, %46 ], [ %58, %52 ]
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  %62 = load ptr, ptr %61, align 8, !tbaa !398
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %46, !prof !425, !llvm.loop !426

64:                                               ; preds = %59, %10
  %65 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %36) #21
  %66 = load ptr, ptr @df, align 8, !tbaa !398
  %67 = getelementptr inbounds %struct.df, ptr %66, i64 0, i32 13
  store ptr %65, ptr %67, align 8, !tbaa !428
  %68 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %36) #21
  %69 = load ptr, ptr @df, align 8, !tbaa !398
  %70 = getelementptr inbounds %struct.df, ptr %69, i64 0, i32 14
  store ptr %68, ptr %70, align 8, !tbaa !431
  %71 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %36) #21
  %72 = load ptr, ptr @df, align 8, !tbaa !398
  %73 = getelementptr inbounds %struct.df, ptr %72, i64 0, i32 15
  store ptr %71, ptr %73, align 8, !tbaa !432
  %74 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %36) #21
  %75 = load ptr, ptr @df, align 8, !tbaa !398
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 16
  store ptr %74, ptr %76, align 8, !tbaa !433
  %77 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %36) #21
  %78 = load ptr, ptr @df, align 8, !tbaa !398
  %79 = getelementptr inbounds %struct.df, ptr %78, i64 0, i32 17
  store ptr %77, ptr %79, align 8, !tbaa !434
  %80 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %37) #21
  %81 = load ptr, ptr @df, align 8, !tbaa !398
  %82 = getelementptr inbounds %struct.df, ptr %81, i64 0, i32 18
  store ptr %80, ptr %82, align 8, !tbaa !435
  %83 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %37) #21
  %84 = load ptr, ptr @df, align 8, !tbaa !398
  %85 = getelementptr inbounds %struct.df, ptr %84, i64 0, i32 19
  store ptr %83, ptr %85, align 8, !tbaa !436
  %86 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %37) #21
  %87 = load ptr, ptr @df, align 8, !tbaa !398
  %88 = getelementptr inbounds %struct.df, ptr %87, i64 0, i32 20
  store ptr %86, ptr %88, align 8, !tbaa !437
  %89 = getelementptr inbounds %struct.df, ptr %87, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !398
  %91 = getelementptr inbounds %struct.dataflow, ptr %90, i64 0, i32 9
  store i8 0, ptr %91, align 2, !tbaa !438
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_scan_free_internal() unnamed_addr #0 !prof !397 !PGOFuncName !439 {
  %1 = load ptr, ptr @df, align 8, !tbaa !398
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !398
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !402
  %6 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !440
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %56, label %9, !prof !421

9:                                                ; preds = %0, %49
  %10 = phi i64 [ %50, %49 ], [ 0, %0 ]
  %11 = phi ptr [ %51, %49 ], [ %1, %0 ]
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !441
  %14 = getelementptr inbounds ptr, ptr %13, i64 %10
  %15 = load ptr, ptr %14, align 8, !tbaa !398
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17, !prof !442

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.df_insn_info, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !443
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !445

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !398
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !446

24:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %19) #22
  br label %25

25:                                               ; preds = %17, %21, %24
  %26 = getelementptr inbounds %struct.df_insn_info, ptr %15, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !447
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29, !prof !445

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !398
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !448

32:                                               ; preds = %29
  tail call void @free(ptr noundef nonnull %27) #22
  br label %33

33:                                               ; preds = %25, %29, %32
  %34 = getelementptr inbounds %struct.df_insn_info, ptr %15, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !449
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37, !prof !445

37:                                               ; preds = %33
  %38 = load ptr, ptr %35, align 8, !tbaa !398
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40, !prof !450

40:                                               ; preds = %37
  tail call void @free(ptr noundef nonnull %35) #22
  br label %41

41:                                               ; preds = %33, %37, %40
  %42 = getelementptr inbounds %struct.df_insn_info, ptr %15, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !451
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45, !prof !445

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 8, !tbaa !398
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48, !prof !452

48:                                               ; preds = %45
  tail call void @free(ptr noundef nonnull %43) #22
  br label %49

49:                                               ; preds = %41, %45, %48, %9
  %50 = add nuw nsw i64 %10, 1
  %51 = load ptr, ptr @df, align 8, !tbaa !398
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 11
  %53 = load i32, ptr %52, align 8, !tbaa !440
  %54 = zext i32 %53 to i64
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %9, label %56, !prof !453, !llvm.loop !454

56:                                               ; preds = %49, %0
  %57 = phi ptr [ %1, %0 ], [ %51, %49 ]
  %58 = load ptr, ptr @cfun, align 8, !tbaa !398
  %59 = getelementptr inbounds %struct.function, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !419
  %61 = load ptr, ptr %60, align 8, !tbaa !398
  %62 = icmp eq ptr %61, null
  br i1 %62, label %90, label %63, !prof !421

63:                                               ; preds = %56, %84
  %64 = phi ptr [ %86, %84 ], [ %61, %56 ]
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !422
  %67 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %66) #22
  %68 = icmp eq ptr %67, null
  br i1 %68, label %84, label %69, !prof !455

69:                                               ; preds = %63
  %70 = load ptr, ptr %67, align 8, !tbaa !456
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72, !prof !455

72:                                               ; preds = %69
  %73 = load ptr, ptr %70, align 8, !tbaa !398
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75, !prof !458

75:                                               ; preds = %72
  tail call void @free(ptr noundef nonnull %70) #22
  br label %76

76:                                               ; preds = %69, %72, %75
  %77 = getelementptr inbounds %struct.df_scan_bb_info, ptr %67, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !459
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80, !prof !455

80:                                               ; preds = %76
  %81 = load ptr, ptr %78, align 8, !tbaa !398
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83, !prof !460

83:                                               ; preds = %80
  tail call void @free(ptr noundef nonnull %78) #22
  br label %84

84:                                               ; preds = %76, %80, %83, %63
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !398
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %63, !prof !461, !llvm.loop !462

88:                                               ; preds = %84
  %89 = load ptr, ptr @df, align 8, !tbaa !398
  br label %90

90:                                               ; preds = %88, %56
  %91 = phi ptr [ %89, %88 ], [ %57, %56 ]
  %92 = getelementptr inbounds %struct.df, ptr %91, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !463
  tail call void @free(ptr noundef %93) #22
  %94 = load ptr, ptr @df, align 8, !tbaa !398
  %95 = getelementptr inbounds %struct.df, ptr %94, i64 0, i32 3, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !464
  tail call void @free(ptr noundef %96) #22
  %97 = load ptr, ptr @df, align 8, !tbaa !398
  %98 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 3, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !465
  tail call void @free(ptr noundef %99) #22
  %100 = load ptr, ptr @df, align 8, !tbaa !398
  %101 = getelementptr inbounds %struct.df, ptr %100, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %101, i8 0, i64 40, i1 false)
  %102 = getelementptr inbounds %struct.df, ptr %100, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !466
  tail call void @free(ptr noundef %103) #22
  %104 = load ptr, ptr @df, align 8, !tbaa !398
  %105 = getelementptr inbounds %struct.df, ptr %104, i64 0, i32 4, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !467
  tail call void @free(ptr noundef %106) #22
  %107 = load ptr, ptr @df, align 8, !tbaa !398
  %108 = getelementptr inbounds %struct.df, ptr %107, i64 0, i32 4, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !468
  tail call void @free(ptr noundef %109) #22
  %110 = load ptr, ptr @df, align 8, !tbaa !398
  %111 = getelementptr inbounds %struct.df, ptr %110, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %111, i8 0, i64 40, i1 false)
  %112 = getelementptr inbounds %struct.df, ptr %110, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !469
  tail call void @free(ptr noundef %113) #22
  %114 = load ptr, ptr @df, align 8, !tbaa !398
  %115 = getelementptr inbounds %struct.df, ptr %114, i64 0, i32 5
  store ptr null, ptr %115, align 8, !tbaa !469
  %116 = getelementptr inbounds %struct.df, ptr %114, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !470
  tail call void @free(ptr noundef %117) #22
  %118 = load ptr, ptr @df, align 8, !tbaa !398
  %119 = getelementptr inbounds %struct.df, ptr %118, i64 0, i32 6
  store ptr null, ptr %119, align 8, !tbaa !470
  %120 = getelementptr inbounds %struct.df, ptr %118, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !471
  tail call void @free(ptr noundef %121) #22
  %122 = load ptr, ptr @df, align 8, !tbaa !398
  %123 = getelementptr inbounds %struct.df, ptr %122, i64 0, i32 7
  %124 = getelementptr inbounds %struct.df, ptr %122, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %123, i8 0, i64 16, i1 false)
  %125 = load ptr, ptr %124, align 8, !tbaa !441
  tail call void @free(ptr noundef %125) #22
  %126 = load ptr, ptr @df, align 8, !tbaa !398
  %127 = getelementptr inbounds %struct.df, ptr %126, i64 0, i32 10
  store ptr null, ptr %127, align 8, !tbaa !441
  %128 = getelementptr inbounds %struct.df, ptr %126, i64 0, i32 11
  store i32 0, ptr %128, align 8, !tbaa !440
  %129 = getelementptr inbounds %struct.df, ptr %126, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !398
  %131 = getelementptr inbounds %struct.dataflow, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !472
  tail call void @free(ptr noundef %132) #22
  %133 = load ptr, ptr @df, align 8, !tbaa !398
  %134 = getelementptr inbounds %struct.df, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !398
  %136 = getelementptr inbounds %struct.dataflow, ptr %135, i64 0, i32 1
  store ptr null, ptr %136, align 8, !tbaa !472
  %137 = load ptr, ptr %134, align 8, !tbaa !398
  %138 = getelementptr inbounds %struct.dataflow, ptr %137, i64 0, i32 2
  store i32 0, ptr %138, align 8, !tbaa !473
  %139 = getelementptr inbounds %struct.df, ptr %133, i64 0, i32 13
  %140 = load ptr, ptr %139, align 8, !tbaa !428
  tail call void @bitmap_obstack_free(ptr noundef %140) #21
  %141 = load ptr, ptr @df, align 8, !tbaa !398
  %142 = getelementptr inbounds %struct.df, ptr %141, i64 0, i32 13
  store ptr null, ptr %142, align 8, !tbaa !428
  %143 = getelementptr inbounds %struct.df, ptr %141, i64 0, i32 14
  %144 = load ptr, ptr %143, align 8, !tbaa !431
  tail call void @bitmap_obstack_free(ptr noundef %144) #21
  %145 = load ptr, ptr @df, align 8, !tbaa !398
  %146 = getelementptr inbounds %struct.df, ptr %145, i64 0, i32 14
  store ptr null, ptr %146, align 8, !tbaa !431
  %147 = getelementptr inbounds %struct.df, ptr %145, i64 0, i32 15
  %148 = load ptr, ptr %147, align 8, !tbaa !432
  tail call void @bitmap_obstack_free(ptr noundef %148) #21
  %149 = load ptr, ptr @df, align 8, !tbaa !398
  %150 = getelementptr inbounds %struct.df, ptr %149, i64 0, i32 15
  store ptr null, ptr %150, align 8, !tbaa !432
  %151 = getelementptr inbounds %struct.df, ptr %149, i64 0, i32 16
  %152 = load ptr, ptr %151, align 8, !tbaa !433
  tail call void @bitmap_obstack_free(ptr noundef %152) #21
  %153 = load ptr, ptr @df, align 8, !tbaa !398
  %154 = getelementptr inbounds %struct.df, ptr %153, i64 0, i32 16
  store ptr null, ptr %154, align 8, !tbaa !433
  %155 = getelementptr inbounds %struct.df, ptr %153, i64 0, i32 17
  %156 = load ptr, ptr %155, align 8, !tbaa !434
  tail call void @bitmap_obstack_free(ptr noundef %156) #21
  %157 = load ptr, ptr @df, align 8, !tbaa !398
  %158 = getelementptr inbounds %struct.df, ptr %157, i64 0, i32 17
  store ptr null, ptr %158, align 8, !tbaa !434
  %159 = getelementptr inbounds %struct.df, ptr %157, i64 0, i32 18
  %160 = load ptr, ptr %159, align 8, !tbaa !435
  tail call void @bitmap_obstack_free(ptr noundef %160) #21
  %161 = load ptr, ptr @df, align 8, !tbaa !398
  %162 = getelementptr inbounds %struct.df, ptr %161, i64 0, i32 18
  store ptr null, ptr %162, align 8, !tbaa !435
  %163 = getelementptr inbounds %struct.df, ptr %161, i64 0, i32 19
  %164 = load ptr, ptr %163, align 8, !tbaa !436
  tail call void @bitmap_obstack_free(ptr noundef %164) #21
  %165 = load ptr, ptr @df, align 8, !tbaa !398
  %166 = getelementptr inbounds %struct.df, ptr %165, i64 0, i32 19
  store ptr null, ptr %166, align 8, !tbaa !436
  %167 = getelementptr inbounds %struct.df, ptr %165, i64 0, i32 20
  %168 = load ptr, ptr %167, align 8, !tbaa !437
  tail call void @bitmap_obstack_free(ptr noundef %168) #21
  %169 = load ptr, ptr @df, align 8, !tbaa !398
  %170 = getelementptr inbounds %struct.df, ptr %169, i64 0, i32 20
  store ptr null, ptr %170, align 8, !tbaa !437
  %171 = getelementptr inbounds %struct.df, ptr %169, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !398
  %173 = getelementptr inbounds %struct.dataflow, ptr %172, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !406
  tail call void @free_alloc_pool(ptr noundef %174) #21
  %175 = load ptr, ptr %5, align 8, !tbaa !408
  tail call void @free_alloc_pool(ptr noundef %175) #21
  %176 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !413
  tail call void @free_alloc_pool(ptr noundef %177) #21
  %178 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !414
  tail call void @free_alloc_pool(ptr noundef %179) #21
  %180 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !415
  tail call void @free_alloc_pool(ptr noundef %181) #21
  %182 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !416
  tail call void @free_alloc_pool(ptr noundef %183) #21
  %184 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 5
  %185 = load ptr, ptr %184, align 8, !tbaa !417
  tail call void @free_alloc_pool(ptr noundef %185) #21
  %186 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 6
  %187 = load ptr, ptr %186, align 8, !tbaa !418
  tail call void @free_alloc_pool(ptr noundef %187) #21
  %188 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 7
  tail call void @bitmap_obstack_release(ptr noundef nonnull %188) #21
  %189 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 8
  tail call void @bitmap_obstack_release(ptr noundef nonnull %189) #21
  %190 = load ptr, ptr @df, align 8, !tbaa !398
  %191 = getelementptr inbounds %struct.df, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !398
  %193 = getelementptr inbounds %struct.dataflow, ptr %192, i64 0, i32 5
  %194 = load ptr, ptr %193, align 8, !tbaa !402
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
define dso_local void @df_grow_reg_info() local_unnamed_addr #0 !prof !474 {
  %1 = tail call i32 @max_reg_num() #21
  %2 = load ptr, ptr @df, align 8, !tbaa !398
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !398
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !402
  %7 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !475
  %9 = icmp ult i32 %8, %1
  br i1 %9, label %10, label %52, !prof !476

10:                                               ; preds = %0
  %11 = lshr i32 %1, 2
  %12 = add i32 %11, %1
  %13 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !469
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = tail call ptr @xrealloc(ptr noundef %14, i64 noundef %16) #21
  %18 = load ptr, ptr @df, align 8, !tbaa !398
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 5
  store ptr %17, ptr %19, align 8, !tbaa !469
  %20 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !470
  %22 = tail call ptr @xrealloc(ptr noundef %21, i64 noundef %16) #21
  %23 = load ptr, ptr @df, align 8, !tbaa !398
  %24 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 6
  store ptr %22, ptr %24, align 8, !tbaa !470
  %25 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !471
  %27 = tail call ptr @xrealloc(ptr noundef %26, i64 noundef %16) #21
  %28 = load ptr, ptr @df, align 8, !tbaa !398
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 7
  store ptr %27, ptr %29, align 8, !tbaa !471
  %30 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 3, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !464
  %32 = shl nuw nsw i64 %15, 2
  %33 = tail call ptr @xrealloc(ptr noundef %31, i64 noundef %32) #21
  %34 = load ptr, ptr @df, align 8, !tbaa !398
  %35 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 3, i32 1
  store ptr %33, ptr %35, align 8, !tbaa !464
  %36 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 3, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !465
  %38 = tail call ptr @xrealloc(ptr noundef %37, i64 noundef %32) #21
  %39 = load ptr, ptr @df, align 8, !tbaa !398
  %40 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 3, i32 2
  store ptr %38, ptr %40, align 8, !tbaa !465
  %41 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 4, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !467
  %43 = tail call ptr @xrealloc(ptr noundef %42, i64 noundef %32) #21
  %44 = load ptr, ptr @df, align 8, !tbaa !398
  %45 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 4, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !467
  %46 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 4, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !468
  %48 = tail call ptr @xrealloc(ptr noundef %47, i64 noundef %32) #21
  %49 = load ptr, ptr @df, align 8, !tbaa !398
  %50 = getelementptr inbounds %struct.df, ptr %49, i64 0, i32 4, i32 2
  store ptr %48, ptr %50, align 8, !tbaa !468
  %51 = getelementptr inbounds %struct.df, ptr %49, i64 0, i32 8
  store i32 %12, ptr %51, align 8, !tbaa !475
  br label %52

52:                                               ; preds = %10, %0
  %53 = phi ptr [ %49, %10 ], [ %2, %0 ]
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 9
  %55 = load i32, ptr %54, align 4, !tbaa !477
  %56 = icmp ult i32 %55, %1
  br i1 %56, label %57, label %96, !prof !478

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.df_scan_problem_data, ptr %6, i64 0, i32 5
  %59 = zext i32 %55 to i64
  br label %60

60:                                               ; preds = %57, %60
  %61 = phi i64 [ %59, %57 ], [ %93, %60 ]
  %62 = load ptr, ptr %58, align 8, !tbaa !417
  %63 = tail call ptr @pool_alloc(ptr noundef %62) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  %64 = load ptr, ptr @df, align 8, !tbaa !398
  %65 = getelementptr inbounds %struct.df, ptr %64, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !469
  %67 = getelementptr inbounds ptr, ptr %66, i64 %61
  store ptr %63, ptr %67, align 8, !tbaa !398
  %68 = load ptr, ptr %58, align 8, !tbaa !417
  %69 = tail call ptr @pool_alloc(ptr noundef %68) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  %70 = load ptr, ptr @df, align 8, !tbaa !398
  %71 = getelementptr inbounds %struct.df, ptr %70, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !470
  %73 = getelementptr inbounds ptr, ptr %72, i64 %61
  store ptr %69, ptr %73, align 8, !tbaa !398
  %74 = load ptr, ptr %58, align 8, !tbaa !417
  %75 = tail call ptr @pool_alloc(ptr noundef %74) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, i8 0, i64 16, i1 false)
  %76 = load ptr, ptr @df, align 8, !tbaa !398
  %77 = getelementptr inbounds %struct.df, ptr %76, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !471
  %79 = getelementptr inbounds ptr, ptr %78, i64 %61
  store ptr %75, ptr %79, align 8, !tbaa !398
  %80 = load ptr, ptr @df, align 8, !tbaa !398
  %81 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 3, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !464
  %83 = getelementptr inbounds i32, ptr %82, i64 %61
  store i32 0, ptr %83, align 4, !tbaa !479
  %84 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 3, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !465
  %86 = getelementptr inbounds i32, ptr %85, i64 %61
  store i32 0, ptr %86, align 4, !tbaa !479
  %87 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 4, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !467
  %89 = getelementptr inbounds i32, ptr %88, i64 %61
  store i32 0, ptr %89, align 4, !tbaa !479
  %90 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 4, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !468
  %92 = getelementptr inbounds i32, ptr %91, i64 %61
  store i32 0, ptr %92, align 4, !tbaa !479
  %93 = add nuw nsw i64 %61, 1
  %94 = trunc i64 %93 to i32
  %95 = icmp eq i32 %1, %94
  br i1 %95, label %96, label %60, !prof !480, !llvm.loop !481

96:                                               ; preds = %60, %52
  %97 = phi ptr [ %53, %52 ], [ %80, %60 ]
  %98 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 9
  store i32 %1, ptr %98, align 4, !tbaa !477
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_grow_insn_info() local_unnamed_addr #0 !prof !482 {
  %1 = tail call i32 @get_max_uid() #21
  %2 = add nsw i32 %1, 1
  %3 = load ptr, ptr @df, align 8, !tbaa !398
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 8, !tbaa !440
  %6 = icmp ult i32 %5, %2
  br i1 %6, label %7, label %26, !prof !483

7:                                                ; preds = %0
  %8 = lshr i32 %2, 2
  %9 = add i32 %8, %2
  %10 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !441
  %12 = zext i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = tail call ptr @xrealloc(ptr noundef %11, i64 noundef %13) #21
  %15 = load ptr, ptr @df, align 8, !tbaa !398
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 10
  store ptr %14, ptr %16, align 8, !tbaa !441
  %17 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 11
  %18 = load i32, ptr %17, align 8, !tbaa !440
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %14, i64 %19
  %21 = sub i32 %9, %18
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 %23, i1 false)
  %24 = load ptr, ptr @df, align 8, !tbaa !398
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 11
  store i32 %9, ptr %25, align 8, !tbaa !440
  br label %26

26:                                               ; preds = %7, %0
  ret void
}

; Function Attrs: optsize
declare void @df_grow_bb_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_scan_get_bb_info(i32 noundef %0) unnamed_addr #3 !prof !484 !PGOFuncName !485 {
  %2 = load ptr, ptr @df, align 8, !tbaa !398
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !398
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !473
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !486

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !472
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !398
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_scan_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !487 !PGOFuncName !488 {
  %3 = load ptr, ptr @df, align 8, !tbaa !398
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !398
  tail call void @df_grow_bb_info(ptr noundef %5) #21
  %6 = load ptr, ptr @df, align 8, !tbaa !398
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !398
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !472
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  store ptr %1, ptr %12, align 8, !tbaa !398
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_scan_add_problem() local_unnamed_addr #0 !prof !489 {
  tail call void @df_add_problem(ptr noundef nonnull @problem_SCAN) #21
  ret void
}

; Function Attrs: optsize
declare void @df_add_problem(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_scan_blocks() local_unnamed_addr #0 !prof !397 {
  %1 = load ptr, ptr @df, align 8, !tbaa !398
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 3, i32 6
  store i32 0, ptr %2, align 4, !tbaa !490
  %3 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 4, i32 6
  store i32 0, ptr %3, align 4, !tbaa !491
  %4 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !431
  tail call fastcc void @df_get_regular_block_artificial_uses(ptr noundef %5) #22
  %6 = load ptr, ptr @df, align 8, !tbaa !398
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !432
  tail call fastcc void @df_get_eh_block_artificial_uses(ptr noundef %8) #22
  %9 = load ptr, ptr @df, align 8, !tbaa !398
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !432
  %12 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !431
  %14 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %11, ptr noundef %13) #21
  %15 = load ptr, ptr @df, align 8, !tbaa !398
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 16
  %17 = load ptr, ptr %16, align 8, !tbaa !433
  tail call fastcc void @df_get_entry_block_def_set(ptr noundef %17) #22
  %18 = load ptr, ptr @df, align 8, !tbaa !398
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !433
  tail call fastcc void @df_record_entry_block_defs(ptr noundef %20) #22
  %21 = load ptr, ptr @df, align 8, !tbaa !398
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !434
  tail call fastcc void @df_get_exit_block_use_set(ptr noundef %23) #22
  %24 = load ptr, ptr @df, align 8, !tbaa !398
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !434
  tail call fastcc void @df_record_exit_block_uses(ptr noundef %26) #22
  %27 = load ptr, ptr @cfun, align 8, !tbaa !398
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !419
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !492
  %32 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %31, i32 noundef 0) #22
  tail call void @df_set_bb_dirty(ptr noundef %32) #21
  %33 = load ptr, ptr @cfun, align 8, !tbaa !398
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !419
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !492
  %38 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %37, i32 noundef 1) #22
  tail call void @df_set_bb_dirty(ptr noundef %38) #21
  %39 = load ptr, ptr @cfun, align 8, !tbaa !398
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !419
  %42 = load ptr, ptr %41, align 8, !tbaa !494
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !495
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !496
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %60, label %48, !prof !421

48:                                               ; preds = %0, %48
  %49 = phi ptr [ %53, %48 ], [ %44, %0 ]
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !422
  tail call void @df_bb_refs_record(i32 noundef %51, i8 noundef zeroext 1) #22
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !495
  %54 = load ptr, ptr @cfun, align 8, !tbaa !398
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !419
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !496
  %59 = icmp eq ptr %53, %58
  br i1 %59, label %60, label %48, !prof !497, !llvm.loop !498

60:                                               ; preds = %48, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_get_regular_block_artificial_uses(ptr noundef %0) unnamed_addr #0 !prof !397 !PGOFuncName !499 {
  tail call void @bitmap_clear(ptr noundef %0) #21
  %2 = load i32, ptr @reload_completed, align 4, !tbaa !479
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4, !prof !405

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !500
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %37, label %34, !prof !509

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 20) #21
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 6) #21
  %10 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !510
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12, !prof !509

12:                                               ; preds = %7
  %13 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 16) #21
  br label %14

14:                                               ; preds = %12, %7
  %15 = load i32, ptr @flag_pic, align 4, !tbaa !479
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %37, label %17, !prof !511

17:                                               ; preds = %14
  %18 = load i32, ptr @reload_completed, align 4, !tbaa !479
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !511

20:                                               ; preds = %17
  %21 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !398
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef %21) #22
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %37, label %27

24:                                               ; preds = %17
  %25 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 3), align 1, !tbaa !510
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %34

27:                                               ; preds = %20
  %28 = zext i32 %22 to i64
  %29 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !510
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
define internal fastcc void @df_get_eh_block_artificial_uses(ptr noundef %0) unnamed_addr #0 !prof !397 !PGOFuncName !512 {
  tail call void @bitmap_clear(ptr noundef %0) #21
  %2 = load i32, ptr @reload_completed, align 4, !tbaa !479
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4, !prof !405

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !500
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7, !prof !509

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 20) #21
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 6) #21
  br label %10

10:                                               ; preds = %7, %4
  %11 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !510
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13, !prof !509

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 16) #21
  br label %15

15:                                               ; preds = %10, %13, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_get_entry_block_def_set(ptr noundef %0) unnamed_addr #0 !prof !513 !PGOFuncName !514 {
  tail call void @bitmap_clear(ptr noundef %0) #21
  br label %2

2:                                                ; preds = %1, %8
  %3 = phi i32 [ 0, %1 ], [ %9, %8 ]
  %4 = tail call zeroext i8 @ix86_function_arg_regno_p(i32 noundef %3) #21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6, !prof !515

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %3) #21
  br label %8

8:                                                ; preds = %2, %6
  %9 = add nuw nsw i32 %3, 1
  %10 = icmp eq i32 %9, 53
  br i1 %10, label %11, label %2, !prof !516, !llvm.loop !517

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 7) #21
  %13 = load i32, ptr @epilogue_completed, align 4, !tbaa !479
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15, !prof !518

15:                                               ; preds = %11, %26
  %16 = phi i64 [ %27, %26 ], [ 0, %11 ]
  %17 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !510
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %26, !prof !519

20:                                               ; preds = %15
  %21 = trunc i64 %16 to i32
  %22 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %21) #22
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24, !prof !520

24:                                               ; preds = %20
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %21) #21
  br label %26

26:                                               ; preds = %15, %20, %24
  %27 = add nuw nsw i64 %16, 1
  %28 = icmp eq i64 %27, 53
  br i1 %28, label %29, label %15, !prof !521, !llvm.loop !522

29:                                               ; preds = %26, %11
  %30 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !523
  %31 = load ptr, ptr @current_function_decl, align 8, !tbaa !398
  %32 = tail call ptr %30(ptr noundef %31, i32 noundef 1) #21
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34, !prof !535

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
  %42 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !536
  %43 = load ptr, ptr @current_function_decl, align 8, !tbaa !398
  %44 = tail call ptr %42(ptr noundef %43, i8 noundef zeroext 1) #21
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46, !prof !535

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
  %54 = load i32, ptr @reload_completed, align 4, !tbaa !479
  %55 = icmp eq i32 %54, 0
  %56 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %57 = icmp ne i8 %56, 0
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %92, !prof !537

59:                                               ; preds = %53
  %60 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 20) #21
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 6) #21
  %62 = load i32, ptr @reload_completed, align 4, !tbaa !479
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %92, !prof !538

64:                                               ; preds = %59
  %65 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !510
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67, !prof !539

67:                                               ; preds = %64
  %68 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 16) #21
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i32, ptr @flag_pic, align 4, !tbaa !479
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %92, label %72, !prof !540

72:                                               ; preds = %69
  %73 = load i32, ptr @reload_completed, align 4, !tbaa !479
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75, !prof !540

75:                                               ; preds = %72
  %76 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !398
  %77 = tail call fastcc i32 @rhs_regno(ptr noundef %76) #22
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %92, label %82

79:                                               ; preds = %72
  %80 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 3), align 1, !tbaa !510
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %92, label %89

82:                                               ; preds = %75
  %83 = zext i32 %77 to i64
  %84 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !510
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
  br i1 %97, label %98, label %103, !prof !541

98:                                               ; preds = %92
  %99 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef 7) #21
  %100 = tail call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %99) #21
  %101 = tail call fastcc i32 @rhs_regno(ptr noundef %100) #22
  %102 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %101) #21
  br label %103

103:                                              ; preds = %98, %92
  %104 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 108), align 8, !tbaa !542
  tail call void %104(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_record_entry_block_defs(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !543 !PGOFuncName !544 {
  %2 = alloca %struct.df_collection_rec, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %4 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 53) #22, !range !545
  %5 = alloca i8, i64 %4, align 16
  %6 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 53, ptr noundef nonnull %5) #22
  store ptr %6, ptr %2, align 8, !tbaa !546
  call fastcc void @df_entry_block_defs_collect(ptr noundef nonnull %2, ptr noundef %0) #22
  %7 = load ptr, ptr @cfun, align 8, !tbaa !398
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !419
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !492
  %12 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %11, i32 noundef 0) #22
  call fastcc void @df_refs_add_to_chains(ptr noundef nonnull %2, ptr noundef %12, ptr noundef null) #22
  call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_get_exit_block_use_set(ptr noundef %0) unnamed_addr #0 !prof !548 !PGOFuncName !549 {
  tail call void @bitmap_clear(ptr noundef %0) #21
  %2 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 7) #21
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !479
  %4 = icmp eq i32 %3, 0
  %5 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %6 = icmp ne i8 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %8, label %11, !prof !550

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 20) #21
  %10 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 6) #21
  br label %11

11:                                               ; preds = %1, %8
  %12 = load i32, ptr @flag_pic, align 4, !tbaa !479
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %35, label %14, !prof !551

14:                                               ; preds = %11
  %15 = load i32, ptr @reload_completed, align 4, !tbaa !479
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !551

17:                                               ; preds = %14
  %18 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !398
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef %18) #22
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %35, label %24

21:                                               ; preds = %14
  %22 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 3), align 1, !tbaa !510
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %32

24:                                               ; preds = %17
  %25 = zext i32 %19 to i64
  %26 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !510
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !398
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
  %39 = load i8, ptr %38, align 1, !tbaa !510
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41, !prof !552

41:                                               ; preds = %36
  %42 = trunc i64 %37 to i32
  %43 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %42) #21
  br label %44

44:                                               ; preds = %36, %41
  %45 = add nuw nsw i64 %37, 1
  %46 = icmp eq i64 %45, 53
  br i1 %46, label %47, label %36, !prof !553, !llvm.loop !554

47:                                               ; preds = %44
  %48 = load i32, ptr @epilogue_completed, align 4, !tbaa !479
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %65, label %50, !prof !555

50:                                               ; preds = %47, %62
  %51 = phi i64 [ %63, %62 ], [ 0, %47 ]
  %52 = trunc i64 %51 to i32
  %53 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %52) #22
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %62, label %55, !prof !556

55:                                               ; preds = %50
  %56 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !557
  %57 = shl nuw nsw i64 1, %51
  %58 = and i64 %56, %57
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62, !prof !558

60:                                               ; preds = %55
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %52) #21
  br label %62

62:                                               ; preds = %50, %55, %60
  %63 = add nuw nsw i64 %51, 1
  %64 = icmp eq i64 %63, 53
  br i1 %64, label %65, label %50, !prof !521, !llvm.loop !559

65:                                               ; preds = %62, %47
  %66 = load i32, ptr @reload_completed, align 4, !tbaa !479
  %67 = icmp ne i32 %66, 0
  %68 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 29), align 1
  %69 = icmp ne i8 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %75, !prof !560

71:                                               ; preds = %65
  %72 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 0) #21
  %73 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 1) #21
  %74 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 29), align 1
  br label %75

75:                                               ; preds = %71, %65
  %76 = phi i8 [ %74, %71 ], [ %68, %65 ]
  %77 = load i32, ptr @epilogue_completed, align 4, !tbaa !479
  %78 = icmp eq i32 %77, 0
  %79 = icmp ne i8 %76, 0
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %89, !prof !561

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
define internal fastcc void @df_record_exit_block_uses(ptr noundef %0) unnamed_addr #0 !prof !562 !PGOFuncName !563 {
  %2 = alloca %struct.df_collection_rec, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %3 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 53) #22, !range !545
  %4 = alloca i8, i64 %3, align 16
  %5 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 53, ptr noundef nonnull %4) #22
  %6 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !564
  call fastcc void @df_exit_block_uses_collect(ptr noundef nonnull %2, ptr noundef %0) #22
  %7 = load ptr, ptr @cfun, align 8, !tbaa !398
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !419
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !492
  %12 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %11, i32 noundef 1) #22
  call fastcc void @df_refs_add_to_chains(ptr noundef nonnull %2, ptr noundef %12, ptr noundef null) #22
  call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare void @df_set_bb_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !565 !PGOFuncName !566 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !398
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_bb_refs_record(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !567 {
  %3 = alloca %struct.df_collection_rec, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !398
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !419
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !492
  %9 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %8, i32 noundef %0) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %10 = load ptr, ptr @df, align 8, !tbaa !398
  %11 = icmp eq ptr %10, null
  br i1 %11, label %84, label %12, !prof !568

12:                                               ; preds = %2
  %13 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21, !prof !569

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !398
  %18 = getelementptr inbounds %struct.dataflow, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !406
  %20 = tail call ptr @pool_alloc(ptr noundef %19) #21
  tail call fastcc void @df_scan_set_bb_info(i32 noundef %0, ptr noundef %20) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  br label %21

21:                                               ; preds = %15, %12
  %22 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 128) #22, !range !545
  %23 = alloca i8, i64 %22, align 16
  %24 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 128, ptr noundef nonnull %23) #22
  store ptr %24, ptr %3, align 8, !tbaa !546
  %25 = call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 32) #22, !range !545
  %26 = alloca i8, i64 %25, align 16
  %27 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %26) #22
  %28 = getelementptr inbounds %struct.df_collection_rec, ptr %3, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !564
  %29 = alloca i8, i64 %25, align 16
  %30 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %29) #22
  %31 = getelementptr inbounds %struct.df_collection_rec, ptr %3, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !570
  %32 = alloca [264 x i8], align 16
  %33 = call fastcc ptr @VEC_df_mw_hardreg_ptr_stack_alloc1(ptr noundef nonnull %32) #22
  %34 = getelementptr inbounds %struct.df_collection_rec, ptr %3, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !571
  %35 = icmp eq i8 %1, 0
  br i1 %35, label %83, label %36, !prof !569

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !510
  %39 = load ptr, ptr %38, align 8, !tbaa !510
  %40 = icmp eq ptr %39, null
  br i1 %40, label %83, label %41, !prof !572

41:                                               ; preds = %36, %77
  %42 = phi ptr [ %81, %77 ], [ %39, %36 ]
  %43 = phi i32 [ %78, %77 ], [ 0, %36 ]
  %44 = load ptr, ptr %37, align 8, !tbaa !510
  %45 = getelementptr inbounds %struct.rtl_bb_info, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !573
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !510
  %49 = icmp eq ptr %42, %48
  br i1 %49, label %83, label %50, !prof !575

50:                                               ; preds = %41
  %51 = load ptr, ptr @df, align 8, !tbaa !398
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !441
  %54 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !510
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !398
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60, !prof !576

60:                                               ; preds = %50
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3744, ptr noundef nonnull @.str.9) #21
  br label %61

61:                                               ; preds = %50, %60
  %62 = call ptr @df_insn_create_insn_record(ptr noundef nonnull %42) #22
  %63 = load i32, ptr %42, align 8
  %64 = and i32 %63, 65535
  %65 = add nsw i32 %64, -7
  %66 = icmp ult i32 %65, 4
  br i1 %66, label %67, label %77, !prof !577

67:                                               ; preds = %61
  %68 = add nsw i32 %43, 1
  %69 = getelementptr inbounds %struct.df_insn_info, ptr %62, i64 0, i32 5
  store i32 %43, ptr %69, align 8, !tbaa !578
  %70 = load ptr, ptr @df, align 8, !tbaa !398
  %71 = getelementptr inbounds %struct.df, ptr %70, i64 0, i32 10
  %72 = load ptr, ptr %71, align 8, !tbaa !441
  %73 = load i32, ptr %54, align 8, !tbaa !510
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %72, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !398
  call fastcc void @df_insn_refs_collect(ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %76) #22
  call fastcc void @df_refs_add_to_chains(ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull %42) #22
  br label %77

77:                                               ; preds = %61, %67
  %78 = phi i32 [ %68, %67 ], [ %43, %61 ]
  %79 = getelementptr inbounds %struct.df_insn_info, ptr %62, i64 0, i32 5
  store i32 %78, ptr %79, align 8, !tbaa !578
  %80 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !510
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %41, !prof !579, !llvm.loop !580

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @df_ref_create(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 !prof !581 {
  tail call void @df_grow_reg_info() #22
  %10 = icmp eq ptr %2, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 734, ptr noundef nonnull @.str.9) #21
  br label %12

12:                                               ; preds = %9, %11
  %13 = and i32 %7, %6
  %14 = icmp eq i32 %13, -1
  %15 = icmp eq ptr %1, null
  %16 = select i1 %15, i32 0, i32 2
  %17 = select i1 %14, i32 %16, i32 3
  %18 = load ptr, ptr @df, align 8, !tbaa !398
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !441
  %21 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !510
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !398
  %26 = tail call fastcc ptr @df_ref_create_structure(i32 noundef %17, ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %25, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #22
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65280
  %29 = icmp eq i32 %28, 0
  %30 = load i32, ptr %21, align 8, !tbaa !510
  %31 = sext i32 %30 to i64
  br i1 %29, label %32, label %45

32:                                               ; preds = %12
  %33 = load ptr, ptr @df, align 8, !tbaa !398
  %34 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !469
  %36 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 3
  %37 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !441
  %39 = getelementptr inbounds ptr, ptr %38, i64 %31
  %40 = load ptr, ptr %39, align 8, !tbaa !398
  %41 = getelementptr inbounds %struct.df_insn_info, ptr %40, i64 0, i32 1
  %42 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 3, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !582
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %80, label %65

45:                                               ; preds = %12
  %46 = and i32 %27, 262144
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr @df, align 8, !tbaa !398
  %49 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 4
  %50 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !441
  %52 = getelementptr inbounds ptr, ptr %51, i64 %31
  %53 = load ptr, ptr %52, align 8, !tbaa !398
  %54 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 4, i32 6
  %55 = load i32, ptr %54, align 4, !tbaa !582
  br i1 %47, label %60, label %56

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !471
  %59 = getelementptr inbounds %struct.df_insn_info, ptr %53, i64 0, i32 3
  switch i32 %55, label %80 [
    i32 2, label %65
    i32 4, label %65
    i32 6, label %65
  ]

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !470
  %63 = getelementptr inbounds %struct.df_insn_info, ptr %53, i64 0, i32 2
  %64 = icmp eq i32 %55, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %56, %56, %56, %32, %60
  %66 = phi ptr [ %48, %60 ], [ %33, %32 ], [ %48, %56 ], [ %48, %56 ], [ %48, %56 ]
  %67 = phi ptr [ %62, %60 ], [ %35, %32 ], [ %58, %56 ], [ %58, %56 ], [ %58, %56 ]
  %68 = phi ptr [ %63, %60 ], [ %41, %32 ], [ %59, %56 ], [ %59, %56 ], [ %59, %56 ]
  %69 = phi ptr [ %49, %60 ], [ %36, %32 ], [ %49, %56 ], [ %49, %56 ], [ %49, %56 ]
  %70 = getelementptr inbounds %struct.df, ptr %66, i64 0, i32 28
  %71 = load i8, ptr %70, align 1, !tbaa !583
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.df, ptr %66, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !584
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !422
  %78 = tail call i32 @bitmap_bit_p(ptr noundef %75, i32 noundef %77) #21
  %79 = trunc i32 %78 to i8
  br label %80

80:                                               ; preds = %56, %32, %73, %65, %60
  %81 = phi ptr [ %67, %73 ], [ %67, %65 ], [ %62, %60 ], [ %35, %32 ], [ %58, %56 ]
  %82 = phi ptr [ %68, %73 ], [ %68, %65 ], [ %63, %60 ], [ %41, %32 ], [ %59, %56 ]
  %83 = phi ptr [ %69, %73 ], [ %69, %65 ], [ %49, %60 ], [ %36, %32 ], [ %49, %56 ]
  %84 = phi i8 [ %79, %73 ], [ 1, %65 ], [ 0, %60 ], [ 0, %32 ], [ 0, %56 ]
  %85 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 6
  %86 = load i32, ptr %85, align 8, !tbaa !510
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %81, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !398
  tail call fastcc void @df_install_ref(ptr noundef nonnull %26, ptr noundef %89, ptr noundef nonnull %83, i8 noundef zeroext %84) #22
  %90 = icmp eq i8 %84, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.df_ref_info, ptr %83, i64 0, i32 6
  %93 = load i32, ptr %92, align 4, !tbaa !582
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
  store i32 %101, ptr %92, align 4, !tbaa !582
  br label %102

102:                                              ; preds = %100, %80
  %103 = load ptr, ptr %82, align 8, !tbaa !398
  %104 = load ptr, ptr %103, align 8, !tbaa !398
  %105 = icmp eq ptr %104, null
  br i1 %105, label %125, label %106

106:                                              ; preds = %102, %106
  %107 = phi i32 [ %109, %106 ], [ 0, %102 ]
  %108 = phi ptr [ %110, %106 ], [ %103, %102 ]
  %109 = add i32 %107, 1
  %110 = getelementptr inbounds ptr, ptr %108, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !398
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %106, !llvm.loop !585

113:                                              ; preds = %106
  %114 = icmp eq i32 %109, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %113
  %116 = add i32 %107, 3
  %117 = zext i32 %116 to i64
  %118 = shl nuw nsw i64 %117, 3
  %119 = tail call ptr @xrealloc(ptr noundef nonnull %103, i64 noundef %118) #21
  store ptr %119, ptr %82, align 8, !tbaa !398
  %120 = zext i32 %109 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  store ptr %26, ptr %121, align 8, !tbaa !398
  %122 = add i32 %107, 2
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds ptr, ptr %119, i64 %123
  store ptr null, ptr %124, align 8, !tbaa !398
  tail call void @spec_qsort(ptr noundef %119, i64 noundef %123, i64 noundef 8, ptr noundef nonnull @df_ref_compare) #21
  br label %128

125:                                              ; preds = %102, %113
  %126 = tail call ptr @xmalloc(i64 noundef 16) #21
  store ptr %26, ptr %126, align 8, !tbaa !398
  %127 = getelementptr inbounds ptr, ptr %126, i64 1
  store ptr null, ptr %127, align 8, !tbaa !398
  store ptr %126, ptr %82, align 8, !tbaa !398
  br label %128

128:                                              ; preds = %125, %115
  %129 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !510
  %131 = load ptr, ptr %130, align 8, !tbaa !586
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 7
  br i1 %134, label %136, label %135

135:                                              ; preds = %128
  tail call void @df_set_bb_dirty(ptr noundef %3) #21
  br label %136

136:                                              ; preds = %135, %128
  ret ptr %26
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @df_ref_create_structure(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #0 !prof !587 !PGOFuncName !588 {
  %12 = load i32, ptr %2, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 39
  br i1 %14, label %15, label %18, !prof !589

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !510
  br label %18

18:                                               ; preds = %11, %15
  %19 = phi ptr [ %17, %15 ], [ %2, %11 ]
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef %19) #22
  %21 = load ptr, ptr @df, align 8, !tbaa !398
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !398
  %24 = getelementptr inbounds %struct.dataflow, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !402
  switch i32 %0, label %54 [
    i32 0, label %26
    i32 1, label %30
    i32 2, label %36
    i32 3, label %42
  ], !prof !590

26:                                               ; preds = %18
  %27 = load ptr, ptr %25, align 8, !tbaa !408
  %28 = tail call ptr @pool_alloc(ptr noundef %27) #21
  %29 = icmp eq ptr %3, null
  br i1 %29, label %54, label %51, !prof !591

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.df_scan_problem_data, ptr %25, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !413
  %33 = tail call ptr @pool_alloc(ptr noundef %32) #21
  %34 = getelementptr inbounds %struct.df_artificial_ref, ptr %33, i64 0, i32 1
  store ptr %4, ptr %34, align 8, !tbaa !510
  %35 = icmp eq ptr %3, null
  br i1 %35, label %54, label %51, !prof !592

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.df_scan_problem_data, ptr %25, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !414
  %39 = tail call ptr @pool_alloc(ptr noundef %38) #21
  %40 = getelementptr inbounds %struct.df_regular_ref, ptr %39, i64 0, i32 1
  store ptr %3, ptr %40, align 8, !tbaa !510
  %41 = icmp eq ptr %3, null
  br i1 %41, label %51, label %54, !prof !593

42:                                               ; preds = %18
  %43 = getelementptr inbounds %struct.df_scan_problem_data, ptr %25, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !415
  %45 = tail call ptr @pool_alloc(ptr noundef %44) #21
  %46 = getelementptr inbounds %struct.df_extract_ref, ptr %45, i64 0, i32 1
  store i32 %8, ptr %46, align 8, !tbaa !510
  %47 = getelementptr inbounds %struct.df_extract_ref, ptr %45, i64 0, i32 2
  store i32 %9, ptr %47, align 4, !tbaa !510
  %48 = getelementptr inbounds %struct.df_extract_ref, ptr %45, i64 0, i32 3
  store i32 %10, ptr %48, align 8, !tbaa !510
  %49 = getelementptr inbounds %struct.df_regular_ref, ptr %45, i64 0, i32 1
  store ptr %3, ptr %49, align 8, !tbaa !510
  %50 = icmp eq ptr %3, null
  br i1 %50, label %51, label %54, !prof !594

51:                                               ; preds = %42, %36, %30, %26
  %52 = phi i32 [ 2827, %26 ], [ 2833, %30 ], [ 2839, %36 ], [ 2848, %42 ]
  %53 = phi ptr [ %28, %26 ], [ %33, %30 ], [ %39, %36 ], [ %45, %42 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef %52, ptr noundef nonnull @.str.9) #21
  br label %54

54:                                               ; preds = %51, %42, %36, %30, %26, %18
  %55 = phi ptr [ null, %18 ], [ %45, %42 ], [ %39, %36 ], [ %33, %30 ], [ %28, %26 ], [ %53, %51 ]
  %56 = and i32 %0, 255
  %57 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 7
  store i32 -1, ptr %57, align 4, !tbaa !510
  %58 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 1
  store ptr %2, ptr %58, align 8, !tbaa !510
  %59 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 6
  store i32 %20, ptr %59, align 8, !tbaa !510
  %60 = shl i32 %6, 8
  %61 = and i32 %60, 65280
  %62 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 3
  store ptr %5, ptr %62, align 8, !tbaa !510
  %63 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 2
  store ptr null, ptr %63, align 8, !tbaa !510
  %64 = shl i32 %7, 16
  %65 = or disjoint i32 %61, %64
  %66 = or disjoint i32 %65, %56
  store i32 %66, ptr %55, align 8
  %67 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %67, i8 0, i64 16, i1 false)
  %68 = load ptr, ptr @df, align 8, !tbaa !398
  %69 = getelementptr inbounds %struct.df, ptr %68, i64 0, i32 26
  %70 = load i32, ptr %69, align 8, !tbaa !595
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 8, !tbaa !595
  %72 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 8
  store i32 %70, ptr %72, align 8, !tbaa !510
  %73 = load i32, ptr %55, align 8
  %74 = and i32 %73, -524289
  store i32 %74, ptr %55, align 8
  %75 = icmp sgt i32 %20, 52
  %76 = and i32 %73, 255
  %77 = icmp eq i32 %76, 1
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %97, label %79, !prof !596

79:                                               ; preds = %54
  %80 = and i32 %73, 65280
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85, !prof !597

82:                                               ; preds = %79
  %83 = and i32 %73, 4194304
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %95, label %97, !prof !598

85:                                               ; preds = %79
  %86 = load i1, ptr @elim_reg_set, align 8
  %87 = select i1 %86, i64 1114112, i64 0
  %88 = zext nneg i32 %20 to i64
  %89 = shl nuw i64 1, %88
  %90 = and i64 %87, %89
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %95, label %92, !prof !599

92:                                               ; preds = %85
  %93 = and i32 %20, -5
  %94 = icmp eq i32 %93, 16
  br i1 %94, label %97, label %95, !prof !600

95:                                               ; preds = %85, %92, %82
  %96 = or i32 %73, 524288
  store i32 %96, ptr %55, align 8
  br label %97

97:                                               ; preds = %95, %82, %92, %54
  %98 = phi i32 [ %74, %82 ], [ %74, %92 ], [ %74, %54 ], [ %96, %95 ]
  %99 = icmp eq ptr %1, null
  br i1 %99, label %112, label %100, !prof !601

100:                                              ; preds = %97
  %101 = and i32 %98, 65280
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103, !prof !602

103:                                              ; preds = %100
  %104 = and i32 %98, 262144
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106, !prof !603

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

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_install_ref(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !604 !PGOFuncName !605 {
  %5 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !510
  %7 = load ptr, ptr %1, align 8, !tbaa !606
  store ptr %0, ptr %1, align 8, !tbaa !606
  %8 = getelementptr inbounds %struct.df_reg_info, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !608
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !608
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 524288
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14, !prof !609

14:                                               ; preds = %4
  %15 = icmp ult i32 %6, 53
  br i1 %15, label %17, label %16, !prof !610

16:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2627, ptr noundef nonnull @.str.9) #21
  br label %17

17:                                               ; preds = %14, %16
  %18 = load ptr, ptr @df, align 8, !tbaa !398
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 25
  %20 = load ptr, ptr %19, align 8, !tbaa !611
  %21 = zext i32 %6 to i64
  %22 = getelementptr inbounds i32, ptr %20, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !479
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4, !tbaa !479
  br label %25

25:                                               ; preds = %17, %4
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !510
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33, !prof !612

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !510
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33, !prof !612

33:                                               ; preds = %29, %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2632, ptr noundef nonnull @.str.9) #21
  br label %34

34:                                               ; preds = %29, %33
  store ptr %7, ptr %26, align 8, !tbaa !510
  %35 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 5
  store ptr null, ptr %35, align 8, !tbaa !510
  %36 = icmp eq ptr %7, null
  br i1 %36, label %39, label %37, !prof !613

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 5
  store ptr %0, ptr %38, align 8, !tbaa !510
  br label %39

39:                                               ; preds = %37, %34
  %40 = icmp eq i8 %3, 0
  br i1 %40, label %54, label %41, !prof !612

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.df_ref_info, ptr %2, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !582
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2644, ptr noundef nonnull @.str.9) #21
  br label %46

46:                                               ; preds = %41, %45
  tail call fastcc void @df_check_and_grow_ref_info(ptr noundef nonnull %2) #22
  %47 = getelementptr inbounds %struct.df_ref_info, ptr %2, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !614
  %49 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  store i32 %48, ptr %49, align 4, !tbaa !510
  %50 = load ptr, ptr %2, align 8, !tbaa !615
  %51 = zext i32 %48 to i64
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  store ptr %0, ptr %52, align 8, !tbaa !398
  %53 = add i32 %48, 1
  store i32 %53, ptr %47, align 4, !tbaa !614
  br label %56

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  store i32 -1, ptr %55, align 4, !tbaa !510
  br label %56

56:                                               ; preds = %54, %46
  %57 = getelementptr inbounds %struct.df_ref_info, ptr %2, i64 0, i32 5
  %58 = load i32, ptr %57, align 8, !tbaa !616
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 8, !tbaa !616
  ret void
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @df_ref_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !617 !PGOFuncName !618 {
  %3 = load ptr, ptr %0, align 8, !tbaa !398
  %4 = load ptr, ptr %1, align 8, !tbaa !398
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %108, label %6, !prof !619

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 8
  %8 = and i32 %7, 255
  %9 = load i32, ptr %4, align 8
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %14, label %12, !prof !620

12:                                               ; preds = %6
  %13 = sub nsw i32 %8, %10
  br label %108

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %3, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !510
  %17 = getelementptr inbounds %struct.df_base_ref, ptr %4, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !510
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %22, label %20, !prof !621

20:                                               ; preds = %14
  %21 = sub nsw i32 %16, %18
  br label %108

22:                                               ; preds = %14
  %23 = lshr i32 %7, 8
  %24 = and i32 %23, 255
  %25 = lshr i32 %9, 8
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %30, label %28, !prof !622

28:                                               ; preds = %22
  %29 = sub nsw i32 %24, %26
  br label %108

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.df_base_ref, ptr %3, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !510
  %33 = getelementptr inbounds %struct.df_base_ref, ptr %4, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !510
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %42, label %36, !prof !623

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.df_base_ref, ptr %3, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !510
  %39 = getelementptr inbounds %struct.df_base_ref, ptr %4, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !510
  %41 = sub nsw i32 %38, %40
  br label %108

42:                                               ; preds = %30
  %43 = trunc i32 %7 to i8
  switch i8 %43, label %47 [
    i8 1, label %67
    i8 2, label %44
    i8 3, label %44
  ], !prof !624

44:                                               ; preds = %42, %42
  %45 = getelementptr inbounds %struct.df_regular_ref, ptr %3, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !510
  br label %47

47:                                               ; preds = %42, %44
  %48 = phi ptr [ %46, %44 ], [ null, %42 ]
  %49 = and i32 %9, 254
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %54, !prof !625

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.df_regular_ref, ptr %4, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !510
  br label %54

54:                                               ; preds = %47, %51
  %55 = phi ptr [ %53, %51 ], [ null, %47 ]
  %56 = icmp eq ptr %48, %55
  br i1 %56, label %63, label %57, !prof !626

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.df_base_ref, ptr %3, i64 0, i32 8
  %59 = load i32, ptr %58, align 8, !tbaa !510
  %60 = getelementptr inbounds %struct.df_base_ref, ptr %4, i64 0, i32 8
  %61 = load i32, ptr %60, align 8, !tbaa !510
  %62 = sub nsw i32 %59, %61
  br label %108

63:                                               ; preds = %54
  %64 = ashr i32 %7, 16
  %65 = ashr i32 %9, 16
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %84, label %71

67:                                               ; preds = %42
  %68 = ashr i32 %7, 16
  %69 = ashr i32 %9, 16
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %108, label %71

71:                                               ; preds = %67, %63
  %72 = phi i32 [ %69, %67 ], [ %65, %63 ]
  %73 = phi i32 [ %68, %67 ], [ %64, %63 ]
  %74 = and i32 %7, 268435456
  %75 = lshr exact i32 %74, 28
  %76 = lshr i32 %9, 28
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %81

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
  %88 = load i32, ptr %87, align 4, !tbaa !510
  %89 = getelementptr inbounds %struct.df_extract_ref, ptr %4, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !510
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = sub nsw i32 %88, %90
  br label %108

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.df_extract_ref, ptr %3, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !510
  %97 = getelementptr inbounds %struct.df_extract_ref, ptr %4, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !510
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %102, label %100

100:                                              ; preds = %94
  %101 = sub nsw i32 %96, %98
  br label %108

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.df_extract_ref, ptr %3, i64 0, i32 3
  %104 = load i32, ptr %103, align 8, !tbaa !510
  %105 = getelementptr inbounds %struct.df_extract_ref, ptr %4, i64 0, i32 3
  %106 = load i32, ptr %105, align 8, !tbaa !510
  %107 = sub i32 %104, %106
  br label %108

108:                                              ; preds = %67, %102, %84, %81, %2, %100, %92, %79, %57, %36, %28, %20, %12
  %109 = phi i32 [ %13, %12 ], [ %21, %20 ], [ %29, %28 ], [ %41, %36 ], [ %62, %57 ], [ %80, %79 ], [ %93, %92 ], [ %101, %100 ], [ 0, %2 ], [ %83, %81 ], [ 0, %84 ], [ %107, %102 ], [ 0, %67 ]
  ret i32 %109
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_ref_remove(ptr noundef %0) local_unnamed_addr #0 !prof !627 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65280
  %4 = icmp eq i32 %3, 0
  %5 = and i32 %2, 255
  %6 = icmp eq i32 %5, 1
  br i1 %4, label %7, label %27, !prof !628

7:                                                ; preds = %1
  br i1 %6, label %8, label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !510
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !422
  %13 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %12) #22
  tail call fastcc void @df_ref_compress_rec(ptr noundef %13, ptr noundef nonnull %0) #22
  br label %53

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !510
  %17 = load ptr, ptr %16, align 8, !tbaa !586
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !510
  %20 = load ptr, ptr @df, align 8, !tbaa !398
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !441
  %23 = zext i32 %19 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !398
  %26 = getelementptr inbounds %struct.df_insn_info, ptr %25, i64 0, i32 1
  tail call fastcc void @df_ref_compress_rec(ptr noundef nonnull %26, ptr noundef nonnull %0) #22
  br label %53

27:                                               ; preds = %1
  br i1 %6, label %28, label %35, !prof !628

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !510
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !422
  %33 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %32) #22
  %34 = getelementptr inbounds %struct.df_scan_bb_info, ptr %33, i64 0, i32 1
  tail call fastcc void @df_ref_compress_rec(ptr noundef nonnull %34, ptr noundef nonnull %0) #22
  br label %53

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !510
  %38 = load ptr, ptr %37, align 8, !tbaa !586
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !510
  %41 = load ptr, ptr @df, align 8, !tbaa !398
  %42 = getelementptr inbounds %struct.df, ptr %41, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !441
  %44 = zext i32 %40 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !398
  %47 = and i32 %2, 262144
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49, !prof !629

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
  %55 = load ptr, ptr %54, align 8, !tbaa !510
  %56 = load ptr, ptr %55, align 8, !tbaa !586
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 7
  br i1 %59, label %71, label %60, !prof !628

60:                                               ; preds = %53
  %61 = load i32, ptr %0, align 8
  %62 = and i32 %61, 255
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %66, !prof !628

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  br label %68

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 1
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi ptr [ %65, %64 ], [ %67, %66 ]
  %70 = load ptr, ptr %69, align 8, !tbaa !510
  tail call void @df_set_bb_dirty(ptr noundef %70) #21
  br label %71

71:                                               ; preds = %68, %53
  tail call fastcc void @df_reg_chain_unlink(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_ref_compress_rec(ptr nocapture noundef %0, ptr noundef readnone %1) unnamed_addr #0 !prof !627 !PGOFuncName !630 {
  %3 = load ptr, ptr %0, align 8, !tbaa !398
  %4 = getelementptr inbounds ptr, ptr %3, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !398
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7, !prof !631

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %13, %7 ], [ %3, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !398
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %9, %1
  %12 = or i1 %10, %11
  %13 = getelementptr inbounds ptr, ptr %8, i64 1
  br i1 %12, label %14, label %7, !prof !632, !llvm.loop !633

14:                                               ; preds = %7
  br i1 %10, label %21, label %15, !prof !634

15:                                               ; preds = %14, %15
  %16 = phi ptr [ %17, %15 ], [ %8, %14 ]
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !398
  store ptr %18, ptr %16, align 8, !tbaa !398
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %15, !prof !635, !llvm.loop !636

20:                                               ; preds = %2
  tail call void @free(ptr noundef nonnull %3) #22
  store ptr @df_null_ref_rec, ptr %0, align 8, !tbaa !398
  br label %21

21:                                               ; preds = %15, %14, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_reg_chain_unlink(ptr noundef %0) unnamed_addr #0 !prof !637 !PGOFuncName !638 {
  %2 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !510
  %4 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !510
  %6 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !510
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65280
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr @df, align 8, !tbaa !398
  br i1 %10, label %12, label %21, !prof !639

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !510
  %15 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !469
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !398
  %20 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 3
  br label %42

21:                                               ; preds = %1
  %22 = and i32 %8, 262144
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !510
  %26 = zext i32 %25 to i64
  br i1 %23, label %36, label %27, !prof !640

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !471
  %30 = getelementptr inbounds ptr, ptr %29, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !398
  %32 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 4, i32 6
  %33 = load i32, ptr %32, align 4, !tbaa !491
  switch i32 %33, label %73 [
    i32 2, label %34
    i32 4, label %34
    i32 6, label %34
  ], !prof !641

34:                                               ; preds = %27, %27, %27
  %35 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 4
  br label %42

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !470
  %39 = getelementptr inbounds ptr, ptr %38, i64 %26
  %40 = load ptr, ptr %39, align 8, !tbaa !398
  %41 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 4
  br label %42

42:                                               ; preds = %36, %34, %12
  %43 = phi ptr [ %20, %12 ], [ %35, %34 ], [ %41, %36 ]
  %44 = phi ptr [ %19, %12 ], [ %31, %34 ], [ %40, %36 ]
  %45 = load ptr, ptr %43, align 8, !tbaa !398
  %46 = icmp eq ptr %45, null
  br i1 %46, label %73, label %47, !prof !642

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 28
  %49 = load i8, ptr %48, align 1, !tbaa !583
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %70, label %51, !prof !643

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !584
  %54 = and i32 %8, 255
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  br label %63

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !510
  %61 = load ptr, ptr %60, align 8, !tbaa !586
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 1
  br label %63

63:                                               ; preds = %58, %56
  %64 = phi ptr [ %57, %56 ], [ %62, %58 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !510
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 9
  %67 = load i32, ptr %66, align 8, !tbaa !422
  %68 = tail call i32 @bitmap_bit_p(ptr noundef %53, i32 noundef %67) #21
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %47, %63
  %71 = sext i32 %7 to i64
  %72 = getelementptr inbounds ptr, ptr %45, i64 %71
  store ptr null, ptr %72, align 8, !tbaa !398
  br label %73

73:                                               ; preds = %70, %27, %63, %42
  %74 = phi ptr [ %44, %63 ], [ %44, %42 ], [ %31, %27 ], [ %44, %70 ]
  %75 = load ptr, ptr @df, align 8, !tbaa !398
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 4
  %77 = load ptr, ptr %76, align 8, !tbaa !398
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79, !prof !644

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !510
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  tail call void @df_chain_unlink(ptr noundef nonnull %0) #21
  br label %84

84:                                               ; preds = %83, %79, %73
  %85 = getelementptr inbounds %struct.df_reg_info, ptr %74, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !608
  %87 = add i32 %86, -1
  store i32 %87, ptr %85, align 8, !tbaa !608
  %88 = load i32, ptr %0, align 8
  %89 = and i32 %88, 524288
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %106, label %91, !prof !645

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %93 = load i32, ptr %92, align 8, !tbaa !510
  %94 = icmp ult i32 %93, 53
  br i1 %94, label %97, label %95, !prof !646

95:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 937, ptr noundef nonnull @.str.9) #21
  %96 = load i32, ptr %92, align 8, !tbaa !510
  br label %97

97:                                               ; preds = %91, %95
  %98 = phi i32 [ %93, %91 ], [ %96, %95 ]
  %99 = load ptr, ptr @df, align 8, !tbaa !398
  %100 = getelementptr inbounds %struct.df, ptr %99, i64 0, i32 25
  %101 = load ptr, ptr %100, align 8, !tbaa !611
  %102 = zext i32 %98 to i64
  %103 = getelementptr inbounds i32, ptr %101, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !479
  %105 = add i32 %104, -1
  store i32 %105, ptr %103, align 4, !tbaa !479
  br label %106

106:                                              ; preds = %97, %84
  %107 = icmp eq ptr %5, null
  br i1 %107, label %110, label %108, !prof !647

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.df_base_ref, ptr %5, i64 0, i32 4
  br label %114

110:                                              ; preds = %106
  %111 = load ptr, ptr %74, align 8, !tbaa !606
  %112 = icmp eq ptr %111, %0
  br i1 %112, label %114, label %113, !prof !648

113:                                              ; preds = %110
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 947, ptr noundef nonnull @.str.9) #21
  br label %114

114:                                              ; preds = %113, %110, %108
  %115 = phi ptr [ %109, %108 ], [ %74, %110 ], [ %74, %113 ]
  store ptr %3, ptr %115, align 8, !tbaa !510
  %116 = icmp eq ptr %3, null
  br i1 %116, label %119, label %117, !prof !649

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.df_base_ref, ptr %3, i64 0, i32 5
  store ptr %5, ptr %118, align 8, !tbaa !510
  br label %119

119:                                              ; preds = %117, %114
  tail call fastcc void @df_free_ref(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @df_insn_create_insn_record(ptr noundef %0) local_unnamed_addr #0 !prof !650 {
  %2 = load ptr, ptr @df, align 8, !tbaa !398
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !398
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !402
  tail call void @df_grow_insn_info() #22
  %7 = load ptr, ptr @df, align 8, !tbaa !398
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !441
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !510
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !398
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %26, !prof !651

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.df_scan_problem_data, ptr %6, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !416
  %19 = tail call ptr @pool_alloc(ptr noundef %18) #21
  %20 = load ptr, ptr @df, align 8, !tbaa !398
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !441
  %23 = load i32, ptr %10, align 8, !tbaa !510
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  store ptr %19, ptr %25, align 8, !tbaa !398
  br label %26

26:                                               ; preds = %16, %1
  %27 = phi ptr [ %14, %1 ], [ %19, %16 ]
  %28 = getelementptr inbounds i8, ptr %27, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %28, i8 0, i64 40, i1 false)
  store ptr %0, ptr %27, align 8, !tbaa !586
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_insn_delete(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !652 {
  %3 = load ptr, ptr @df, align 8, !tbaa !398
  %4 = icmp eq ptr %3, null
  br i1 %4, label %106, label %5, !prof !653

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !398
  tail call void @df_grow_bb_info(ptr noundef %7) #21
  tail call void @df_grow_reg_info() #22
  %8 = icmp eq ptr %0, null
  br i1 %8, label %10, label %9, !prof !654

9:                                                ; preds = %5
  tail call void @df_set_bb_dirty(ptr noundef nonnull %0) #21
  br label %10

10:                                               ; preds = %9, %5
  %11 = load ptr, ptr @df, align 8, !tbaa !398
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !440
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %15, label %25, !prof !655

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !441
  %18 = zext i32 %1 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !398
  %21 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 27
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 32
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %49, label %30, !prof !656

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 27
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 32
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %49, label %44, !prof !656

30:                                               ; preds = %15
  %31 = icmp eq ptr %20, null
  br i1 %31, label %44, label %32, !prof !657

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !436
  %35 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %34, i32 noundef %1) #21
  %36 = load ptr, ptr @df, align 8, !tbaa !398
  %37 = getelementptr inbounds %struct.df, ptr %36, i64 0, i32 20
  %38 = load ptr, ptr %37, align 8, !tbaa !437
  %39 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %38, i32 noundef %1) #21
  %40 = load ptr, ptr @df, align 8, !tbaa !398
  %41 = getelementptr inbounds %struct.df, ptr %40, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !435
  %43 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %42, i32 noundef %1) #21
  br label %44

44:                                               ; preds = %25, %32, %30
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !398
  %46 = icmp eq ptr %45, null
  br i1 %46, label %106, label %47, !prof !658

47:                                               ; preds = %44
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %45, ptr noundef nonnull @.str.10, i32 noundef %1) #22
  br label %106

49:                                               ; preds = %25, %15
  %50 = phi ptr [ null, %25 ], [ %20, %15 ]
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !398
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53, !prof !659

53:                                               ; preds = %49
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %51, ptr noundef nonnull @.str.11, i32 noundef %1) #22
  %55 = load ptr, ptr @df, align 8, !tbaa !398
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi ptr [ %55, %53 ], [ %11, %49 ]
  %58 = getelementptr inbounds %struct.df, ptr %57, i64 0, i32 18
  %59 = load ptr, ptr %58, align 8, !tbaa !435
  %60 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %59, i32 noundef %1) #21
  %61 = load ptr, ptr @df, align 8, !tbaa !398
  %62 = getelementptr inbounds %struct.df, ptr %61, i64 0, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !436
  %64 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %63, i32 noundef %1) #21
  %65 = load ptr, ptr @df, align 8, !tbaa !398
  %66 = getelementptr inbounds %struct.df, ptr %65, i64 0, i32 20
  %67 = load ptr, ptr %66, align 8, !tbaa !437
  %68 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %67, i32 noundef %1) #21
  %69 = icmp eq ptr %50, null
  br i1 %69, label %106, label %70, !prof !660

70:                                               ; preds = %56
  %71 = load ptr, ptr @df, align 8, !tbaa !398
  %72 = getelementptr inbounds %struct.df, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !398
  %74 = getelementptr inbounds %struct.dataflow, ptr %73, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !402
  %76 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !443
  %78 = icmp eq ptr %77, null
  br i1 %78, label %98, label %79, !prof !661

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !451
  tail call fastcc void @df_mw_hardreg_chain_delete(ptr noundef %81) #22
  %82 = load ptr, ptr @df, align 8, !tbaa !398
  %83 = getelementptr inbounds %struct.df, ptr %82, i64 0, i32 1, i64 4
  %84 = load ptr, ptr %83, align 8, !tbaa !398
  %85 = icmp eq ptr %84, null
  br i1 %85, label %92, label %86, !prof !662

86:                                               ; preds = %79
  %87 = load ptr, ptr %76, align 8, !tbaa !443
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %87) #22
  %88 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !447
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %89) #22
  %90 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !449
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %91) #22
  br label %92

92:                                               ; preds = %86, %79
  %93 = load ptr, ptr %76, align 8, !tbaa !443
  tail call fastcc void @df_ref_chain_delete(ptr noundef %93) #22
  %94 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !447
  tail call fastcc void @df_ref_chain_delete(ptr noundef %95) #22
  %96 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !449
  tail call fastcc void @df_ref_chain_delete(ptr noundef %97) #22
  br label %98

98:                                               ; preds = %92, %70
  %99 = getelementptr inbounds %struct.df_scan_problem_data, ptr %75, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !416
  tail call void @pool_free(ptr noundef %100, ptr noundef nonnull %50) #21
  %101 = load ptr, ptr @df, align 8, !tbaa !398
  %102 = getelementptr inbounds %struct.df, ptr %101, i64 0, i32 10
  %103 = load ptr, ptr %102, align 8, !tbaa !441
  %104 = zext i32 %1 to i64
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  store ptr null, ptr %105, align 8, !tbaa !398
  br label %106

106:                                              ; preds = %56, %98, %44, %47, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_mw_hardreg_chain_delete(ptr noundef readonly %0) unnamed_addr #0 !prof !663 !PGOFuncName !664 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3, !prof !665

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !398
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6, !prof !666

6:                                                ; preds = %3
  %7 = load ptr, ptr @df, align 8, !tbaa !398
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !398
  %10 = getelementptr inbounds %struct.dataflow, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !402
  %12 = getelementptr inbounds %struct.df_scan_problem_data, ptr %11, i64 0, i32 6
  br label %13

13:                                               ; preds = %6, %13
  %14 = phi ptr [ %4, %6 ], [ %18, %13 ]
  %15 = phi ptr [ %0, %6 ], [ %17, %13 ]
  %16 = load ptr, ptr %12, align 8, !tbaa !418
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %14) #21
  %17 = getelementptr inbounds ptr, ptr %15, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !398
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !prof !667, !llvm.loop !668

20:                                               ; preds = %13, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_ref_chain_delete_du_chain(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !669 !PGOFuncName !670 {
  %2 = load ptr, ptr %0, align 8, !tbaa !398
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4, !prof !671

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %13, %11 ], [ %2, %1 ]
  %6 = phi ptr [ %12, %11 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.df_base_ref, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !510
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !672

10:                                               ; preds = %4
  tail call void @df_chain_unlink(ptr noundef nonnull %5) #21
  br label %11

11:                                               ; preds = %10, %4
  %12 = getelementptr inbounds ptr, ptr %6, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !398
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %4, !prof !673, !llvm.loop !674

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_ref_chain_delete(ptr nocapture noundef %0) unnamed_addr #0 !prof !675 !PGOFuncName !676 {
  %2 = load ptr, ptr %0, align 8, !tbaa !398
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4, !prof !677

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %8, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %7, %4 ], [ %0, %1 ]
  tail call fastcc void @df_reg_chain_unlink(ptr noundef nonnull %5) #22
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !398
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4, !prof !678, !llvm.loop !679

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !398
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !680

13:                                               ; preds = %10
  tail call void @free(ptr noundef nonnull %0) #22
  br label %14

14:                                               ; preds = %1, %13, %10
  ret void
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @df_insn_rescan(ptr noundef %0) local_unnamed_addr #0 !prof !681 {
  %2 = alloca %struct.df_collection_rec, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !510
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !510
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %7 = load ptr, ptr @df, align 8, !tbaa !398
  %8 = icmp eq ptr %7, null
  br i1 %8, label %147, label %9, !prof !682

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = add nsw i32 %11, -7
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %147, !prof !683

14:                                               ; preds = %9
  %15 = icmp eq ptr %6, null
  br i1 %15, label %16, label %21, !prof !684

16:                                               ; preds = %14
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !398
  %18 = icmp eq ptr %17, null
  br i1 %18, label %147, label %19, !prof !685

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %17, ptr noundef nonnull @.str.12, i32 noundef %4) #22
  br label %147

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 27
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %147, !prof !686

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !398
  tail call void @df_grow_bb_info(ptr noundef %28) #21
  tail call void @df_grow_reg_info() #22
  %29 = load ptr, ptr @df, align 8, !tbaa !398
  %30 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 11
  %31 = load i32, ptr %30, align 8, !tbaa !440
  %32 = icmp ult i32 %4, %31
  br i1 %32, label %33, label %44, !prof !687

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !441
  %36 = zext i32 %4 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !398
  %39 = icmp eq ptr %38, null
  %40 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 27
  %41 = load i8, ptr %40, align 4
  %42 = and i8 %41, 32
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %75, label %49, !prof !688

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 27
  %46 = load i8, ptr %45, align 4
  %47 = and i8 %46, 32
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %75, label %50, !prof !688

49:                                               ; preds = %33
  br i1 %39, label %50, label %56, !prof !689

50:                                               ; preds = %44, %49
  %51 = tail call ptr @df_insn_create_insn_record(ptr noundef nonnull %0) #22
  %52 = getelementptr inbounds %struct.df_insn_info, ptr %51, i64 0, i32 1
  store ptr @df_null_ref_rec, ptr %52, align 8, !tbaa !443
  %53 = getelementptr inbounds %struct.df_insn_info, ptr %51, i64 0, i32 2
  store ptr @df_null_ref_rec, ptr %53, align 8, !tbaa !447
  %54 = getelementptr inbounds %struct.df_insn_info, ptr %51, i64 0, i32 3
  store ptr @df_null_ref_rec, ptr %54, align 8, !tbaa !449
  %55 = getelementptr inbounds %struct.df_insn_info, ptr %51, i64 0, i32 4
  store ptr @df_null_mw_rec, ptr %55, align 8, !tbaa !451
  br label %56

56:                                               ; preds = %50, %49
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !398
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59, !prof !690

59:                                               ; preds = %56
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %57, ptr noundef nonnull @.str.13, i32 noundef %4) #22
  br label %61

61:                                               ; preds = %59, %56
  %62 = load ptr, ptr @df, align 8, !tbaa !398
  %63 = getelementptr inbounds %struct.df, ptr %62, i64 0, i32 18
  %64 = load ptr, ptr %63, align 8, !tbaa !435
  %65 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %64, i32 noundef %4) #21
  %66 = load ptr, ptr @df, align 8, !tbaa !398
  %67 = getelementptr inbounds %struct.df, ptr %66, i64 0, i32 20
  %68 = load ptr, ptr %67, align 8, !tbaa !437
  %69 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %68, i32 noundef %4) #21
  %70 = load ptr, ptr @df, align 8, !tbaa !398
  %71 = getelementptr inbounds %struct.df, ptr %70, i64 0, i32 19
  %72 = load ptr, ptr %71, align 8, !tbaa !436
  %73 = load i32, ptr %3, align 8, !tbaa !510
  %74 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %72, i32 noundef %73) #21
  br label %147

75:                                               ; preds = %44, %33
  %76 = phi i1 [ true, %44 ], [ %39, %33 ]
  %77 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 128) #22, !range !545
  %78 = alloca i8, i64 %77, align 16
  %79 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 128, ptr noundef nonnull %78) #22
  store ptr %79, ptr %2, align 8, !tbaa !546
  %80 = call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 32) #22, !range !545
  %81 = alloca i8, i64 %80, align 16
  %82 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %81) #22
  %83 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 1
  store ptr %82, ptr %83, align 8, !tbaa !564
  %84 = alloca i8, i64 %80, align 16
  %85 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %84) #22
  %86 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 2
  store ptr %85, ptr %86, align 8, !tbaa !570
  %87 = alloca [264 x i8], align 16
  %88 = call fastcc ptr @VEC_df_mw_hardreg_ptr_stack_alloc1(ptr noundef nonnull %87) #22
  %89 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 3
  store ptr %88, ptr %89, align 8, !tbaa !571
  %90 = load ptr, ptr @df, align 8, !tbaa !398
  %91 = getelementptr inbounds %struct.df, ptr %90, i64 0, i32 18
  %92 = load ptr, ptr %91, align 8, !tbaa !435
  %93 = call zeroext i8 @bitmap_clear_bit(ptr noundef %92, i32 noundef %4) #21
  %94 = load ptr, ptr @df, align 8, !tbaa !398
  %95 = getelementptr inbounds %struct.df, ptr %94, i64 0, i32 19
  %96 = load ptr, ptr %95, align 8, !tbaa !436
  %97 = call zeroext i8 @bitmap_clear_bit(ptr noundef %96, i32 noundef %4) #21
  %98 = load ptr, ptr @df, align 8, !tbaa !398
  %99 = getelementptr inbounds %struct.df, ptr %98, i64 0, i32 20
  %100 = load ptr, ptr %99, align 8, !tbaa !437
  %101 = call zeroext i8 @bitmap_clear_bit(ptr noundef %100, i32 noundef %4) #21
  br i1 %76, label %134, label %102, !prof !691

102:                                              ; preds = %75
  %103 = call fastcc zeroext i8 @df_insn_refs_verify(ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %0, i8 noundef zeroext 0) #22, !range !692
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %110, label %105, !prof !693

105:                                              ; preds = %102
  call fastcc void @df_free_collection_rec(ptr noundef nonnull %2) #22
  %106 = load ptr, ptr @dump_file, align 8, !tbaa !398
  %107 = icmp eq ptr %106, null
  br i1 %107, label %147, label %108, !prof !694

108:                                              ; preds = %105
  %109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %106, ptr noundef nonnull @.str.14, i32 noundef %4) #22
  br label %147

110:                                              ; preds = %102
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !398
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113, !prof !695

113:                                              ; preds = %110
  %114 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %111, ptr noundef nonnull @.str.15, i32 noundef %4) #22
  br label %115

115:                                              ; preds = %110, %113
  %116 = load ptr, ptr @df, align 8, !tbaa !398
  %117 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 10
  %118 = load ptr, ptr %117, align 8, !tbaa !441
  %119 = load i32, ptr %3, align 8, !tbaa !510
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %118, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !398
  %123 = getelementptr inbounds %struct.df_insn_info, ptr %122, i64 0, i32 5
  %124 = load i32, ptr %123, align 8, !tbaa !578
  call void @df_insn_delete(ptr noundef null, i32 noundef %4) #22
  %125 = call ptr @df_insn_create_insn_record(ptr noundef nonnull %0) #22
  %126 = load ptr, ptr @df, align 8, !tbaa !398
  %127 = getelementptr inbounds %struct.df, ptr %126, i64 0, i32 10
  %128 = load ptr, ptr %127, align 8, !tbaa !441
  %129 = load i32, ptr %3, align 8, !tbaa !510
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %128, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !398
  %133 = getelementptr inbounds %struct.df_insn_info, ptr %132, i64 0, i32 5
  store i32 %124, ptr %133, align 8, !tbaa !578
  br label %140

134:                                              ; preds = %75
  %135 = call ptr @df_insn_create_insn_record(ptr noundef nonnull %0) #22
  call fastcc void @df_insn_refs_collect(ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef %135) #22
  %136 = load ptr, ptr @dump_file, align 8, !tbaa !398
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138, !prof !696

138:                                              ; preds = %134
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %136, ptr noundef nonnull @.str.16, i32 noundef %4) #22
  br label %140

140:                                              ; preds = %115, %134, %138
  call fastcc void @df_refs_add_to_chains(ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %0) #22
  %141 = load i32, ptr %0, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 7
  br i1 %143, label %144, label %145, !prof !697

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
define internal fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !698 !PGOFuncName !699 {
  %3 = tail call ptr @vec_stack_p_reserve_exact_1(i32 noundef %0, ptr noundef %1) #21
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef %0) unnamed_addr #7 !prof !698 !PGOFuncName !700 {
  %2 = zext nneg i32 %0 to i64
  %3 = shl nuw nsw i64 %2, 3
  %4 = add nuw nsw i64 %3, 8
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_df_mw_hardreg_ptr_stack_alloc1(ptr noundef %0) unnamed_addr #0 !prof !701 !PGOFuncName !702 {
  %2 = tail call ptr @vec_stack_p_reserve_exact_1(i32 noundef 32, ptr noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @df_insn_refs_verify(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !703 !PGOFuncName !704 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !510
  %7 = load ptr, ptr @df, align 8, !tbaa !398
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !441
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !398
  tail call fastcc void @df_insn_refs_collect(ptr noundef %0, ptr noundef %1, ptr noundef %12) #22
  %13 = load ptr, ptr @df, align 8, !tbaa !398
  %14 = getelementptr inbounds %struct.df, ptr %13, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !441
  %16 = zext i32 %6 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !398
  %19 = getelementptr inbounds %struct.df_insn_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !443
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %32, !prof !705

22:                                               ; preds = %4
  %23 = icmp eq i8 %3, 0
  br i1 %23, label %72, label %24

24:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4512, ptr noundef nonnull @.str.9) #21
  %25 = load ptr, ptr @df, align 8, !tbaa !398
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !441
  %28 = getelementptr inbounds ptr, ptr %27, i64 %16
  %29 = load ptr, ptr %28, align 8, !tbaa !398
  %30 = getelementptr inbounds %struct.df_insn_info, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !443
  br label %32

32:                                               ; preds = %24, %4
  %33 = phi ptr [ %31, %24 ], [ %20, %4 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !546
  %35 = tail call fastcc zeroext i8 @df_refs_verify(ptr noundef %34, ptr noundef %33, i8 noundef zeroext %3) #22, !range !692
  %36 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !564
  %38 = load ptr, ptr @df, align 8, !tbaa !398
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !441
  %41 = getelementptr inbounds ptr, ptr %40, i64 %16
  %42 = load ptr, ptr %41, align 8, !tbaa !398
  %43 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !447
  %45 = tail call fastcc zeroext i8 @df_refs_verify(ptr noundef %37, ptr noundef %44, i8 noundef zeroext %3) #22, !range !692
  %46 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !570
  %48 = load ptr, ptr @df, align 8, !tbaa !398
  %49 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !441
  %51 = getelementptr inbounds ptr, ptr %50, i64 %16
  %52 = load ptr, ptr %51, align 8, !tbaa !398
  %53 = getelementptr inbounds %struct.df_insn_info, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !449
  %55 = tail call fastcc zeroext i8 @df_refs_verify(ptr noundef %47, ptr noundef %54, i8 noundef zeroext %3) #22, !range !692
  %56 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !571
  %58 = load ptr, ptr @df, align 8, !tbaa !398
  %59 = getelementptr inbounds %struct.df, ptr %58, i64 0, i32 10
  %60 = load ptr, ptr %59, align 8, !tbaa !441
  %61 = getelementptr inbounds ptr, ptr %60, i64 %16
  %62 = load ptr, ptr %61, align 8, !tbaa !398
  %63 = getelementptr inbounds %struct.df_insn_info, ptr %62, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !451
  %65 = tail call fastcc zeroext i8 @df_mws_verify(ptr noundef %57, ptr noundef %64, i8 noundef zeroext %3) #22, !range !692
  %66 = icmp ne i8 %35, 0
  %67 = icmp ne i8 %45, 0
  %68 = select i1 %66, i1 %67, i1 false
  %69 = icmp ne i8 %55, 0
  %70 = select i1 %68, i1 %69, i1 false
  %71 = select i1 %70, i8 %65, i8 0, !prof !706
  br label %72

72:                                               ; preds = %22, %32
  %73 = phi i8 [ %71, %32 ], [ 0, %22 ]
  ret i8 %73
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_free_collection_rec(ptr nocapture noundef %0) unnamed_addr #0 !prof !707 !PGOFuncName !708 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @df, align 8, !tbaa !398
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !398
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !402
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %9 = load ptr, ptr %0, align 8, !tbaa !546
  %10 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %2) #22, !range !709
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17, !prof !710

12:                                               ; preds = %17, %1
  %13 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !564
  %15 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %2) #22, !range !709
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %29, !prof !711

17:                                               ; preds = %1, %17
  %18 = phi i32 [ %20, %17 ], [ 0, %1 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !398
  tail call fastcc void @df_free_ref(ptr noundef %19) #22
  %20 = add i32 %18, 1
  %21 = load ptr, ptr %0, align 8, !tbaa !546
  %22 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %21, i32 noundef %20, ptr noundef nonnull %2) #22, !range !709
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %12, label %17, !prof !712, !llvm.loop !713

24:                                               ; preds = %29, %12
  %25 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !570
  %27 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %2) #22, !range !709
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %41, !prof !714

29:                                               ; preds = %12, %29
  %30 = phi i32 [ %32, %29 ], [ 0, %12 ]
  %31 = load ptr, ptr %2, align 8, !tbaa !398
  tail call fastcc void @df_free_ref(ptr noundef %31) #22
  %32 = add i32 %30, 1
  %33 = load ptr, ptr %13, align 8, !tbaa !564
  %34 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %33, i32 noundef %32, ptr noundef nonnull %2) #22, !range !709
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %24, label %29, !prof !715, !llvm.loop !716

36:                                               ; preds = %41, %24
  %37 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !571
  %39 = call fastcc i32 @VEC_df_mw_hardreg_ptr_base_iterate(ptr noundef %38, i32 noundef 0, ptr noundef nonnull %3) #22, !range !709
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %57, label %48, !prof !714

41:                                               ; preds = %24, %41
  %42 = phi i32 [ %44, %41 ], [ 0, %24 ]
  %43 = load ptr, ptr %2, align 8, !tbaa !398
  tail call fastcc void @df_free_ref(ptr noundef %43) #22
  %44 = add i32 %42, 1
  %45 = load ptr, ptr %25, align 8, !tbaa !570
  %46 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %45, i32 noundef %44, ptr noundef nonnull %2) #22, !range !709
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %36, label %41, !prof !667, !llvm.loop !717

48:                                               ; preds = %36, %48
  %49 = phi i32 [ %53, %48 ], [ 0, %36 ]
  %50 = getelementptr inbounds %struct.df_scan_problem_data, ptr %8, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !418
  %52 = load ptr, ptr %3, align 8, !tbaa !398
  tail call void @pool_free(ptr noundef %51, ptr noundef %52) #21
  %53 = add i32 %49, 1
  %54 = load ptr, ptr %37, align 8, !tbaa !571
  %55 = call fastcc i32 @VEC_df_mw_hardreg_ptr_base_iterate(ptr noundef %54, i32 noundef %53, ptr noundef nonnull %3) #22, !range !709
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %48, !prof !667, !llvm.loop !718

57:                                               ; preds = %48, %36
  tail call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %0) #22
  tail call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %13) #22
  tail call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %25) #22
  tail call fastcc void @VEC_df_mw_hardreg_ptr_stack_free(ptr noundef nonnull %37) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_insn_refs_collect(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !719 !PGOFuncName !720 {
  %4 = load ptr, ptr %2, align 8, !tbaa !586
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !510
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 14
  %10 = load ptr, ptr %0, align 8, !tbaa !546
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %10, i32 noundef 0) #22
  %11 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !564
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %12, i32 noundef 0) #22
  %13 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !570
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %14, i32 noundef 0) #22
  %15 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !571
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_truncate(ptr noundef %16, i32 noundef 0) #22
  %17 = load ptr, ptr %2, align 8, !tbaa !586
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !510
  tail call fastcc void @df_defs_record(ptr noundef nonnull %0, ptr noundef %19, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0) #22
  %20 = load ptr, ptr %2, align 8, !tbaa !586
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 1, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !510
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24, !prof !721

24:                                               ; preds = %3, %38
  %25 = phi ptr [ %40, %38 ], [ %22, %3 ]
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 16
  %28 = trunc i32 %27 to i8
  switch i8 %28, label %38 [
    i8 3, label %29
    i8 4, label %29
    i8 28, label %31
  ], !prof !722

29:                                               ; preds = %24, %24
  %30 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  tail call fastcc void @df_uses_record(i32 noundef 2, ptr noundef nonnull %0, ptr noundef nonnull %30, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 4, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %38

31:                                               ; preds = %24
  %32 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !398
  %33 = getelementptr inbounds ptr, ptr %32, i64 20
  %34 = load ptr, ptr %33, align 8, !tbaa !398
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %34, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  %35 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !398
  %36 = getelementptr inbounds ptr, ptr %35, i64 6
  %37 = load ptr, ptr %36, align 8, !tbaa !398
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %37, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %38

38:                                               ; preds = %29, %31, %24
  %39 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !510
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %24, !prof !723, !llvm.loop !724

42:                                               ; preds = %38
  %43 = load ptr, ptr %2, align 8, !tbaa !586
  br label %44

44:                                               ; preds = %42, %3
  %45 = phi ptr [ %43, %42 ], [ %20, %3 ]
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %52, !prof !725

49:                                               ; preds = %44
  %50 = zext i1 %9 to i32
  tail call fastcc void @df_get_call_refs(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %50) #22
  %51 = load ptr, ptr %2, align 8, !tbaa !586
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi ptr [ %51, %49 ], [ %45, %44 ]
  %54 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 1
  tail call fastcc void @df_uses_record(i32 noundef 2, ptr noundef nonnull %0, ptr noundef nonnull %54, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br i1 %9, label %55, label %56, !prof !726

55:                                               ; preds = %52
  tail call fastcc void @df_get_conditional_uses(ptr noundef nonnull %0) #22
  br label %56

56:                                               ; preds = %55, %52
  tail call fastcc void @df_canonize_collection_rec(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_refs_add_to_chains(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 !prof !727 !PGOFuncName !728 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %89, label %5, !prof !729

5:                                                ; preds = %3
  %6 = load ptr, ptr @df, align 8, !tbaa !398
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !441
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !510
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !398
  %14 = load ptr, ptr %0, align 8, !tbaa !546
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16, !prof !730

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.df_insn_info, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !443
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20, !prof !731

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !398
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  tail call void @free(ptr noundef nonnull %18) #22
  %24 = load ptr, ptr %0, align 8, !tbaa !546
  %25 = load ptr, ptr @df, align 8, !tbaa !398
  br label %26

26:                                               ; preds = %23, %20, %16
  %27 = phi ptr [ %25, %23 ], [ %6, %20 ], [ %6, %16 ]
  %28 = phi ptr [ %24, %23 ], [ %14, %20 ], [ %14, %16 ]
  %29 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !469
  %31 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 3
  %32 = tail call fastcc ptr @df_install_refs(ptr noundef %1, ptr noundef %28, ptr noundef %30, ptr noundef nonnull %31, i8 noundef zeroext 0) #22
  store ptr %32, ptr %17, align 8, !tbaa !443
  br label %33

33:                                               ; preds = %26, %5
  %34 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !564
  %36 = icmp eq ptr %35, null
  br i1 %36, label %53, label %37, !prof !730

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.df_insn_info, ptr %13, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !447
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41, !prof !731

41:                                               ; preds = %37
  %42 = load ptr, ptr %39, align 8, !tbaa !398
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  tail call void @free(ptr noundef nonnull %39) #22
  %45 = load ptr, ptr %34, align 8, !tbaa !564
  br label %46

46:                                               ; preds = %44, %41, %37
  %47 = phi ptr [ %45, %44 ], [ %35, %41 ], [ %35, %37 ]
  %48 = load ptr, ptr @df, align 8, !tbaa !398
  %49 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !470
  %51 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 4
  %52 = tail call fastcc ptr @df_install_refs(ptr noundef %1, ptr noundef %47, ptr noundef %50, ptr noundef nonnull %51, i8 noundef zeroext 0) #22
  store ptr %52, ptr %38, align 8, !tbaa !447
  br label %53

53:                                               ; preds = %46, %33
  %54 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !570
  %56 = icmp eq ptr %55, null
  br i1 %56, label %73, label %57, !prof !732

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.df_insn_info, ptr %13, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !449
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61, !prof !733

61:                                               ; preds = %57
  %62 = load ptr, ptr %59, align 8, !tbaa !398
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  tail call void @free(ptr noundef nonnull %59) #22
  %65 = load ptr, ptr %54, align 8, !tbaa !570
  br label %66

66:                                               ; preds = %64, %61, %57
  %67 = phi ptr [ %65, %64 ], [ %55, %61 ], [ %55, %57 ]
  %68 = load ptr, ptr @df, align 8, !tbaa !398
  %69 = getelementptr inbounds %struct.df, ptr %68, i64 0, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !471
  %71 = getelementptr inbounds %struct.df, ptr %68, i64 0, i32 4
  %72 = tail call fastcc ptr @df_install_refs(ptr noundef %1, ptr noundef %67, ptr noundef %70, ptr noundef nonnull %71, i8 noundef zeroext 1) #22
  store ptr %72, ptr %58, align 8, !tbaa !449
  br label %73

73:                                               ; preds = %66, %53
  %74 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !571
  %76 = icmp eq ptr %75, null
  br i1 %76, label %121, label %77, !prof !730

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.df_insn_info, ptr %13, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !451
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81, !prof !731

81:                                               ; preds = %77
  %82 = load ptr, ptr %79, align 8, !tbaa !398
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  tail call void @free(ptr noundef nonnull %79) #22
  %85 = load ptr, ptr %74, align 8, !tbaa !571
  br label %86

86:                                               ; preds = %84, %81, %77
  %87 = phi ptr [ %85, %84 ], [ %75, %81 ], [ %75, %77 ]
  %88 = tail call fastcc ptr @df_install_mws(ptr noundef %87) #22
  store ptr %88, ptr %78, align 8, !tbaa !451
  br label %121

89:                                               ; preds = %3
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %91 = load i32, ptr %90, align 8, !tbaa !422
  %92 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %91) #22
  %93 = load ptr, ptr %92, align 8, !tbaa !456
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95, !prof !734

95:                                               ; preds = %89
  %96 = load ptr, ptr %93, align 8, !tbaa !398
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98, !prof !511

98:                                               ; preds = %95
  tail call void @free(ptr noundef nonnull %93) #22
  br label %99

99:                                               ; preds = %98, %95, %89
  %100 = load ptr, ptr %0, align 8, !tbaa !546
  %101 = load ptr, ptr @df, align 8, !tbaa !398
  %102 = getelementptr inbounds %struct.df, ptr %101, i64 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !469
  %104 = getelementptr inbounds %struct.df, ptr %101, i64 0, i32 3
  %105 = tail call fastcc ptr @df_install_refs(ptr noundef nonnull %1, ptr noundef %100, ptr noundef %103, ptr noundef nonnull %104, i8 noundef zeroext 0) #22
  store ptr %105, ptr %92, align 8, !tbaa !456
  %106 = getelementptr inbounds %struct.df_scan_bb_info, ptr %92, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !459
  %108 = icmp eq ptr %107, null
  br i1 %108, label %113, label %109, !prof !735

109:                                              ; preds = %99
  %110 = load ptr, ptr %107, align 8, !tbaa !398
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112, !prof !736

112:                                              ; preds = %109
  tail call void @free(ptr noundef nonnull %107) #22
  br label %113

113:                                              ; preds = %112, %109, %99
  %114 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !564
  %116 = load ptr, ptr @df, align 8, !tbaa !398
  %117 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 6
  %118 = load ptr, ptr %117, align 8, !tbaa !470
  %119 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 4
  %120 = tail call fastcc ptr @df_install_refs(ptr noundef nonnull %1, ptr noundef %115, ptr noundef %118, ptr noundef nonnull %119, i8 noundef zeroext 0) #22
  store ptr %120, ptr %106, align 8, !tbaa !459
  br label %121

121:                                              ; preds = %73, %86, %113
  ret void
}

; Function Attrs: optsize
declare void @df_set_bb_dirty_nonlr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_stack_free(ptr nocapture noundef %0) unnamed_addr #0 !prof !698 !PGOFuncName !737 {
  %2 = load ptr, ptr %0, align 8, !tbaa !398
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !738

4:                                                ; preds = %1
  tail call void @vec_stack_free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !398
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_stack_free(ptr nocapture noundef %0) unnamed_addr #0 !prof !701 !PGOFuncName !739 {
  %2 = load ptr, ptr %0, align 8, !tbaa !398
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !740

4:                                                ; preds = %1
  tail call void @vec_stack_free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !398
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @df_insn_rescan_debug_internal(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !581 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !510
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 7
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !510
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !510
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 25
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !510
  %18 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !398
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %7, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1331, ptr noundef nonnull @.str.9) #21
  br label %21

21:                                               ; preds = %15, %20
  %22 = load ptr, ptr @df, align 8, !tbaa !398
  %23 = icmp eq ptr %22, null
  br i1 %23, label %91, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %2, align 8, !tbaa !510
  %26 = getelementptr inbounds %struct.df, ptr %22, i64 0, i32 11
  %27 = load i32, ptr %26, align 8, !tbaa !440
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %91

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.df, ptr %22, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !441
  %32 = sext i32 %25 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !398
  %35 = icmp eq ptr %34, null
  br i1 %35, label %91, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !398
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %37, ptr noundef nonnull @.str.17, i32 noundef %3) #22
  %41 = load ptr, ptr @df, align 8, !tbaa !398
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi ptr [ %41, %39 ], [ %22, %36 ]
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 18
  %45 = load ptr, ptr %44, align 8, !tbaa !435
  %46 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %45, i32 noundef %3) #21
  %47 = load ptr, ptr @df, align 8, !tbaa !398
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 19
  %49 = load ptr, ptr %48, align 8, !tbaa !436
  %50 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %49, i32 noundef %3) #21
  %51 = load ptr, ptr @df, align 8, !tbaa !398
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 20
  %53 = load ptr, ptr %52, align 8, !tbaa !437
  %54 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %53, i32 noundef %3) #21
  %55 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !443
  %57 = icmp eq ptr %56, null
  br i1 %57, label %91, label %58

58:                                               ; preds = %42
  %59 = icmp eq ptr %56, @df_null_ref_rec
  br i1 %59, label %60, label %72

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !447
  %63 = icmp eq ptr %62, @df_null_ref_rec
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !449
  %67 = icmp eq ptr %66, @df_null_ref_rec
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !451
  %71 = icmp eq ptr %70, @df_null_mw_rec
  br i1 %71, label %91, label %72

72:                                               ; preds = %68, %64, %60, %58
  %73 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !451
  tail call fastcc void @df_mw_hardreg_chain_delete(ptr noundef %74) #22
  %75 = load ptr, ptr @df, align 8, !tbaa !398
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 4
  %77 = load ptr, ptr %76, align 8, !tbaa !398
  %78 = icmp eq ptr %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr %55, align 8, !tbaa !443
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %80) #22
  %81 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !447
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %82) #22
  %83 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !449
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %84) #22
  br label %85

85:                                               ; preds = %79, %72
  %86 = load ptr, ptr %55, align 8, !tbaa !443
  tail call fastcc void @df_ref_chain_delete(ptr noundef %86) #22
  %87 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !447
  tail call fastcc void @df_ref_chain_delete(ptr noundef %88) #22
  %89 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !449
  tail call fastcc void @df_ref_chain_delete(ptr noundef %90) #22
  store ptr @df_null_ref_rec, ptr %55, align 8, !tbaa !443
  store ptr @df_null_ref_rec, ptr %87, align 8, !tbaa !447
  store ptr @df_null_ref_rec, ptr %89, align 8, !tbaa !449
  store ptr @df_null_mw_rec, ptr %73, align 8, !tbaa !451
  br label %91

91:                                               ; preds = %24, %68, %42, %29, %21, %85
  %92 = phi i8 [ 1, %85 ], [ 0, %21 ], [ 0, %29 ], [ 0, %42 ], [ 0, %68 ], [ 0, %24 ]
  ret i8 %92
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_insn_rescan_all() local_unnamed_addr #0 !prof !581 {
  %1 = alloca %struct.bitmap_iterator, align 8
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %4 = load ptr, ptr @df, align 8, !tbaa !398
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 27
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = tail call i32 @df_clear_flags(i32 noundef 16) #21
  %11 = load ptr, ptr @df, align 8, !tbaa !398
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
  %21 = load ptr, ptr @df, align 8, !tbaa !398
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi ptr [ %21, %19 ], [ %16, %14 ]
  %24 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !435
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %25) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #22
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !692
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr @df, align 8, !tbaa !398
  br label %30

30:                                               ; preds = %28, %45
  %31 = phi ptr [ %29, %28 ], [ %46, %45 ]
  %32 = load i32, ptr %2, align 4, !tbaa !479
  %33 = getelementptr inbounds %struct.df, ptr %31, i64 0, i32 11
  %34 = load i32, ptr %33, align 8, !tbaa !440
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.df, ptr %31, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !441
  %39 = zext i32 %32 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !398
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  tail call void @df_insn_delete(ptr noundef null, i32 noundef %32) #22
  %44 = load ptr, ptr @df, align 8, !tbaa !398
  br label %45

45:                                               ; preds = %30, %43, %36
  %46 = phi ptr [ %31, %30 ], [ %44, %43 ], [ %31, %36 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %47 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !692
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %30, !llvm.loop !741

49:                                               ; preds = %45, %22
  tail call void @bitmap_obstack_free(ptr noundef %3) #21
  %50 = load ptr, ptr @df, align 8, !tbaa !398
  %51 = getelementptr inbounds %struct.df, ptr %50, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !435
  tail call void @bitmap_clear(ptr noundef %52) #21
  %53 = load ptr, ptr @df, align 8, !tbaa !398
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !436
  tail call void @bitmap_clear(ptr noundef %55) #21
  %56 = load ptr, ptr @df, align 8, !tbaa !398
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 20
  %58 = load ptr, ptr %57, align 8, !tbaa !437
  tail call void @bitmap_clear(ptr noundef %58) #21
  %59 = load ptr, ptr @cfun, align 8, !tbaa !398
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !419
  %62 = load ptr, ptr %61, align 8, !tbaa !494
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !495
  %65 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !496
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %99, label %68

68:                                               ; preds = %49, %90
  %69 = phi ptr [ %91, %90 ], [ %59, %49 ]
  %70 = phi ptr [ %93, %90 ], [ %64, %49 ]
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !510
  %73 = load ptr, ptr %72, align 8, !tbaa !510
  %74 = icmp eq ptr %73, null
  br i1 %74, label %90, label %75

75:                                               ; preds = %68, %83
  %76 = phi ptr [ %86, %83 ], [ %73, %68 ]
  %77 = load ptr, ptr %71, align 8, !tbaa !510
  %78 = getelementptr inbounds %struct.rtl_bb_info, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !573
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !510
  %82 = icmp eq ptr %76, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %75
  %84 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %76) #22, !range !692
  %85 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !510
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %75, !llvm.loop !742

88:                                               ; preds = %83, %75
  %89 = load ptr, ptr @cfun, align 8, !tbaa !398
  br label %90

90:                                               ; preds = %88, %68
  %91 = phi ptr [ %89, %88 ], [ %69, %68 ]
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !495
  %94 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !419
  %96 = getelementptr inbounds %struct.control_flow_graph, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !496
  %98 = icmp eq ptr %93, %97
  br i1 %98, label %99, label %68, !llvm.loop !743

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !744 !PGOFuncName !745 {
  %4 = load ptr, ptr %1, align 8, !tbaa !746
  store ptr %4, ptr %0, align 8, !tbaa !748
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !750
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !751

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !748
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !752
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !754

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !755
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !557
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !756
  %21 = icmp eq i64 %19, 0
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %16, %22
  store i32 %23, ptr %2, align 4, !tbaa !479
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !757 !PGOFuncName !758 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !756
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !759

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !760

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !479
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !761, !llvm.loop !762

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !479
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !479
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !755
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !748
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !755
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !763

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !557
  store i64 %35, ptr %3, align 8, !tbaa !756
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !764

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !479
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !479
  %40 = load i32, ptr %23, align 8, !tbaa !755
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !755
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !765, !llvm.loop !766

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !767
  store ptr %44, ptr %0, align 8, !tbaa !748
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !768

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !752
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !479
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !756
  store i32 %16, ptr %1, align 4, !tbaa !479
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !769 !PGOFuncName !770 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !756
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !756
  %6 = load i32, ptr %1, align 4, !tbaa !479
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !479
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_process_deferred_rescans() local_unnamed_addr #0 !prof !771 {
  %1 = alloca %struct.bitmap_iterator, align 8
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %4 = load ptr, ptr @df, align 8, !tbaa !398
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 27
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9, !prof !772

9:                                                ; preds = %0
  %10 = tail call i32 @df_clear_flags(i32 noundef 16) #21
  %11 = load ptr, ptr @df, align 8, !tbaa !398
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 27
  %13 = load i8, ptr %12, align 4
  br label %14

14:                                               ; preds = %9, %0
  %15 = phi i8 [ %13, %9 ], [ %6, %0 ]
  %16 = and i8 %15, 32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18, !prof !773

18:                                               ; preds = %14
  %19 = tail call i32 @df_clear_flags(i32 noundef 32) #21
  br label %20

20:                                               ; preds = %18, %14
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !398
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !772

23:                                               ; preds = %20
  %24 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 42, i64 1, ptr nonnull %21)
  br label %25

25:                                               ; preds = %23, %20
  %26 = load ptr, ptr @df, align 8, !tbaa !398
  %27 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 18
  %28 = load ptr, ptr %27, align 8, !tbaa !435
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %28) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #22
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !692
  %30 = icmp eq i8 %29, 0
  %31 = load ptr, ptr @df, align 8, !tbaa !398
  br i1 %30, label %51, label %32, !prof !774

32:                                               ; preds = %25, %47
  %33 = phi ptr [ %48, %47 ], [ %31, %25 ]
  %34 = load i32, ptr %2, align 4, !tbaa !479
  %35 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 11
  %36 = load i32, ptr %35, align 8, !tbaa !440
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %47, !prof !658

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !441
  %41 = zext i32 %34 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !398
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !775

45:                                               ; preds = %38
  tail call void @df_insn_delete(ptr noundef null, i32 noundef %34) #22
  %46 = load ptr, ptr @df, align 8, !tbaa !398
  br label %47

47:                                               ; preds = %32, %45, %38
  %48 = phi ptr [ %33, %32 ], [ %46, %45 ], [ %33, %38 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !692
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %32, !prof !776, !llvm.loop !777

51:                                               ; preds = %47, %25
  %52 = phi ptr [ %31, %25 ], [ %48, %47 ]
  %53 = getelementptr inbounds %struct.df, ptr %52, i64 0, i32 19
  %54 = load ptr, ptr %53, align 8, !tbaa !436
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %54) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #22
  %55 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !692
  %56 = icmp eq i8 %55, 0
  %57 = load ptr, ptr @df, align 8, !tbaa !398
  br i1 %56, label %79, label %58, !prof !774

58:                                               ; preds = %51, %75
  %59 = phi ptr [ %76, %75 ], [ %57, %51 ]
  %60 = load i32, ptr %2, align 4, !tbaa !479
  %61 = getelementptr inbounds %struct.df, ptr %59, i64 0, i32 11
  %62 = load i32, ptr %61, align 8, !tbaa !440
  %63 = icmp ult i32 %60, %62
  br i1 %63, label %64, label %75, !prof !778

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.df, ptr %59, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !441
  %67 = zext i32 %60 to i64
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !398
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71, !prof !775

71:                                               ; preds = %64
  %72 = load ptr, ptr %69, align 8, !tbaa !586
  %73 = tail call zeroext i8 @df_insn_rescan(ptr noundef %72) #22, !range !692
  %74 = load ptr, ptr @df, align 8, !tbaa !398
  br label %75

75:                                               ; preds = %58, %71, %64
  %76 = phi ptr [ %59, %58 ], [ %74, %71 ], [ %59, %64 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %77 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !692
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %58, !prof !779, !llvm.loop !780

79:                                               ; preds = %75, %51
  %80 = phi ptr [ %57, %51 ], [ %76, %75 ]
  %81 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 20
  %82 = load ptr, ptr %81, align 8, !tbaa !437
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %82) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #22
  %83 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !692
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %107, label %85, !prof !774

85:                                               ; preds = %79
  %86 = load ptr, ptr @df, align 8, !tbaa !398
  br label %87

87:                                               ; preds = %85, %103
  %88 = phi ptr [ %86, %85 ], [ %104, %103 ]
  %89 = load i32, ptr %2, align 4, !tbaa !479
  %90 = getelementptr inbounds %struct.df, ptr %88, i64 0, i32 11
  %91 = load i32, ptr %90, align 8, !tbaa !440
  %92 = icmp ult i32 %89, %91
  br i1 %92, label %93, label %103, !prof !781

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.df, ptr %88, i64 0, i32 10
  %95 = load ptr, ptr %94, align 8, !tbaa !441
  %96 = zext i32 %89 to i64
  %97 = getelementptr inbounds ptr, ptr %95, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !398
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100, !prof !775

100:                                              ; preds = %93
  %101 = load ptr, ptr %98, align 8, !tbaa !586
  tail call void @df_notes_rescan(ptr noundef %101) #22
  %102 = load ptr, ptr @df, align 8, !tbaa !398
  br label %103

103:                                              ; preds = %87, %100, %93
  %104 = phi ptr [ %88, %87 ], [ %102, %100 ], [ %88, %93 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %105 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !692
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %87, !prof !782, !llvm.loop !783

107:                                              ; preds = %103, %79
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !398
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110, !prof !772

110:                                              ; preds = %107
  %111 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 40, i64 1, ptr nonnull %108)
  br label %112

112:                                              ; preds = %110, %107
  tail call void @bitmap_obstack_free(ptr noundef %3) #21
  %113 = load ptr, ptr @df, align 8, !tbaa !398
  %114 = getelementptr inbounds %struct.df, ptr %113, i64 0, i32 18
  %115 = load ptr, ptr %114, align 8, !tbaa !435
  tail call void @bitmap_clear(ptr noundef %115) #21
  %116 = load ptr, ptr @df, align 8, !tbaa !398
  %117 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 19
  %118 = load ptr, ptr %117, align 8, !tbaa !436
  tail call void @bitmap_clear(ptr noundef %118) #21
  %119 = load ptr, ptr @df, align 8, !tbaa !398
  %120 = getelementptr inbounds %struct.df, ptr %119, i64 0, i32 20
  %121 = load ptr, ptr %120, align 8, !tbaa !437
  tail call void @bitmap_clear(ptr noundef %121) #21
  br i1 %8, label %124, label %122, !prof !772

122:                                              ; preds = %112
  %123 = tail call i32 @df_set_flags(i32 noundef 16) #21
  br label %124

124:                                              ; preds = %122, %112
  br i1 %17, label %127, label %125, !prof !773

125:                                              ; preds = %124
  %126 = tail call i32 @df_set_flags(i32 noundef 32) #21
  br label %127

127:                                              ; preds = %125, %124
  %128 = load ptr, ptr @df, align 8, !tbaa !398
  %129 = getelementptr inbounds %struct.df, ptr %128, i64 0, i32 29
  %130 = load i8, ptr %129, align 2, !tbaa !784
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %135, label %132, !prof !785

132:                                              ; preds = %127
  tail call void @df_update_entry_exit_and_calls() #22
  %133 = load ptr, ptr @df, align 8, !tbaa !398
  %134 = getelementptr inbounds %struct.df, ptr %133, i64 0, i32 29
  store i8 0, ptr %134, align 2, !tbaa !784
  br label %135

135:                                              ; preds = %132, %127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_notes_rescan(ptr noundef %0) local_unnamed_addr #0 !prof !786 {
  %2 = alloca %struct.df_collection_rec, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !510
  %5 = load ptr, ptr @df, align 8, !tbaa !398
  %6 = icmp eq ptr %5, null
  br i1 %6, label %156, label %7, !prof !787

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 27
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %156, !prof !788

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !510
  %15 = icmp eq ptr %14, null
  br i1 %15, label %156, label %16, !prof !789

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !398
  tail call void @df_grow_bb_info(ptr noundef %18) #21
  tail call void @df_grow_reg_info() #22
  %19 = load i32, ptr %3, align 8, !tbaa !510
  %20 = load ptr, ptr @df, align 8, !tbaa !398
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 11
  %22 = load i32, ptr %21, align 8, !tbaa !440
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %34, !prof !788

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !441
  %27 = sext i32 %19 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !398
  %30 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 27
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 32
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %64, label %39, !prof !790

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 27
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, 32
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %64, label %41, !prof !790

39:                                               ; preds = %24
  %40 = icmp eq ptr %29, null
  br i1 %40, label %41, label %48, !prof !791

41:                                               ; preds = %34, %39
  %42 = tail call ptr @df_insn_create_insn_record(ptr noundef nonnull %0) #22
  %43 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 1
  store ptr @df_null_ref_rec, ptr %43, align 8, !tbaa !443
  %44 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 2
  store ptr @df_null_ref_rec, ptr %44, align 8, !tbaa !447
  %45 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 3
  store ptr @df_null_ref_rec, ptr %45, align 8, !tbaa !449
  %46 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 4
  store ptr @df_null_mw_rec, ptr %46, align 8, !tbaa !451
  %47 = load ptr, ptr @df, align 8, !tbaa !398
  br label %48

48:                                               ; preds = %41, %39
  %49 = phi ptr [ %47, %41 ], [ %20, %39 ]
  %50 = getelementptr inbounds %struct.df, ptr %49, i64 0, i32 18
  %51 = load ptr, ptr %50, align 8, !tbaa !435
  %52 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %51, i32 noundef %4) #21
  %53 = load ptr, ptr @df, align 8, !tbaa !398
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !436
  %56 = tail call i32 @bitmap_bit_p(ptr noundef %55, i32 noundef %4) #21
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %156, !prof !792

58:                                               ; preds = %48
  %59 = load ptr, ptr @df, align 8, !tbaa !398
  %60 = getelementptr inbounds %struct.df, ptr %59, i64 0, i32 20
  %61 = load ptr, ptr %60, align 8, !tbaa !437
  %62 = load i32, ptr %3, align 8, !tbaa !510
  %63 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %61, i32 noundef %62) #21
  br label %156

64:                                               ; preds = %34, %24
  %65 = phi ptr [ null, %34 ], [ %29, %24 ]
  %66 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 18
  %67 = load ptr, ptr %66, align 8, !tbaa !435
  %68 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %67, i32 noundef %4) #21
  %69 = load ptr, ptr @df, align 8, !tbaa !398
  %70 = getelementptr inbounds %struct.df, ptr %69, i64 0, i32 20
  %71 = load ptr, ptr %70, align 8, !tbaa !437
  %72 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %71, i32 noundef %4) #21
  %73 = icmp eq ptr %65, null
  br i1 %73, label %154, label %74, !prof !793

74:                                               ; preds = %64
  %75 = load ptr, ptr %13, align 8, !tbaa !510
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  %76 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 32) #22, !range !545
  %77 = alloca i8, i64 %76, align 16
  %78 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %77) #22
  %79 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 2
  store ptr %78, ptr %79, align 8, !tbaa !570
  %80 = alloca [264 x i8], align 16
  %81 = call fastcc ptr @VEC_df_mw_hardreg_ptr_stack_alloc1(ptr noundef nonnull %80) #22
  %82 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 3
  store ptr %81, ptr %82, align 8, !tbaa !571
  %83 = call fastcc i32 @df_mw_hardreg_chain_delete_eq_uses(ptr noundef nonnull %65) #22
  %84 = getelementptr inbounds %struct.df_insn_info, ptr %65, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !449
  call fastcc void @df_ref_chain_delete(ptr noundef %85) #22
  store ptr null, ptr %84, align 8, !tbaa !449
  %86 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !510
  %88 = icmp eq ptr %87, null
  br i1 %88, label %102, label %89, !prof !794

89:                                               ; preds = %74, %98
  %90 = phi ptr [ %100, %98 ], [ %87, %74 ]
  %91 = load i32, ptr %90, align 8
  %92 = lshr i32 %91, 16
  %93 = trunc i32 %92 to i8
  %94 = add i8 %93, -3
  %95 = icmp ult i8 %94, 2
  br i1 %95, label %96, label %98, !prof !795

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  call fastcc void @df_uses_record(i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull %97, i32 noundef 1, ptr noundef %75, ptr noundef nonnull %65, i32 noundef 4, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %98

98:                                               ; preds = %89, %96
  %99 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !510
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %89, !prof !796, !llvm.loop !797

102:                                              ; preds = %98, %74
  call fastcc void @df_canonize_collection_rec(ptr noundef nonnull %2) #22
  %103 = load ptr, ptr %82, align 8
  %104 = call fastcc i32 @VEC_df_mw_hardreg_ptr_base_length(ptr noundef %103) #22
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %153, label %106, !prof !798

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.df_insn_info, ptr %65, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !451
  %109 = load ptr, ptr %108, align 8, !tbaa !398
  %110 = icmp eq ptr %109, null
  br i1 %110, label %142, label %111

111:                                              ; preds = %106, %111
  %112 = phi ptr [ %115, %111 ], [ %108, %106 ]
  %113 = phi i32 [ %114, %111 ], [ 0, %106 ]
  %114 = add i32 %113, 1
  %115 = getelementptr inbounds ptr, ptr %112, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !398
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %111, !llvm.loop !799

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
  store ptr %127, ptr %107, align 8, !tbaa !451
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
  %137 = load ptr, ptr %107, align 8, !tbaa !451
  %138 = add i32 %114, %104
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %137, i64 %139
  store ptr null, ptr %140, align 8, !tbaa !398
  %141 = load ptr, ptr %107, align 8, !tbaa !451
  call void @spec_qsort(ptr noundef %141, i64 noundef %139, i64 noundef 8, ptr noundef nonnull @df_mw_compare) #21
  br label %153

142:                                              ; preds = %106, %118
  %143 = add i32 %104, 1
  %144 = zext i32 %143 to i64
  %145 = shl nuw nsw i64 %144, 3
  %146 = call ptr @xmalloc(i64 noundef %145) #21
  store ptr %146, ptr %107, align 8, !tbaa !451
  %147 = load ptr, ptr %82, align 8
  %148 = call fastcc ptr @VEC_df_mw_hardreg_ptr_base_address(ptr noundef %147) #22
  %149 = zext i32 %104 to i64
  %150 = shl nuw nsw i64 %149, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %146, ptr align 8 %148, i64 %150, i1 false)
  %151 = load ptr, ptr %107, align 8, !tbaa !451
  %152 = getelementptr inbounds ptr, ptr %151, i64 %149
  store ptr null, ptr %152, align 8, !tbaa !398
  br label %153

153:                                              ; preds = %129, %142, %102
  call fastcc void @VEC_df_mw_hardreg_ptr_stack_free(ptr noundef nonnull %82) #22
  call fastcc void @df_refs_add_to_chains(ptr noundef nonnull %2, ptr noundef %75, ptr noundef %0) #22
  call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %79) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  br label %156

154:                                              ; preds = %64
  %155 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %0) #22, !range !692
  br label %156

156:                                              ; preds = %153, %154, %48, %58, %12, %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_update_entry_exit_and_calls() local_unnamed_addr #0 !prof !800 {
  tail call void @df_update_entry_block_defs() #22
  tail call void @df_update_exit_block_uses() #22
  %1 = load ptr, ptr @cfun, align 8, !tbaa !398
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !419
  %4 = load ptr, ptr %3, align 8, !tbaa !494
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !495
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !496
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %46, label %10, !prof !801

10:                                               ; preds = %0, %37
  %11 = phi ptr [ %38, %37 ], [ %1, %0 ]
  %12 = phi ptr [ %40, %37 ], [ %6, %0 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !510
  %15 = load ptr, ptr %14, align 8, !tbaa !510
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17, !prof !421

17:                                               ; preds = %10, %31
  %18 = phi ptr [ %33, %31 ], [ %15, %10 ]
  %19 = load ptr, ptr %13, align 8, !tbaa !510
  %20 = getelementptr inbounds %struct.rtl_bb_info, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !573
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !510
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %35, label %25, !prof !802

25:                                               ; preds = %17
  %26 = load i32, ptr %18, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %31, !prof !803

29:                                               ; preds = %25
  %30 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %18) #22, !range !692
  br label %31

31:                                               ; preds = %25, %29
  %32 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !510
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %17, !prof !804, !llvm.loop !805

35:                                               ; preds = %31, %17
  %36 = load ptr, ptr @cfun, align 8, !tbaa !398
  br label %37

37:                                               ; preds = %35, %10
  %38 = phi ptr [ %36, %35 ], [ %11, %10 ]
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !495
  %41 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !419
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !496
  %45 = icmp eq ptr %40, %44
  br i1 %45, label %46, label %10, !prof !806, !llvm.loop !807

46:                                               ; preds = %37, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_maybe_reorganize_use_refs(i32 noundef %0) local_unnamed_addr #0 !prof !808 {
  %2 = load ptr, ptr @df, align 8, !tbaa !398
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 4
  %4 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 4, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !491
  %6 = icmp eq i32 %5, %0
  br i1 %6, label %21, label %7, !prof !809

7:                                                ; preds = %1
  switch i32 %0, label %18 [
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 6, label %11
    i32 0, label %12
    i32 1, label %17
    i32 2, label %17
  ], !prof !810

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
  %13 = load ptr, ptr %3, align 8, !tbaa !466
  tail call void @free(ptr noundef %13) #22
  %14 = load ptr, ptr @df, align 8, !tbaa !398
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 4
  store ptr null, ptr %15, align 8, !tbaa !466
  %16 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 4, i32 3
  store i32 0, ptr %16, align 8, !tbaa !811
  br label %18

17:                                               ; preds = %7, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1928, ptr noundef nonnull @.str.9) #21
  br label %18

18:                                               ; preds = %7, %17, %12, %11, %10, %9, %8
  %19 = load ptr, ptr @df, align 8, !tbaa !398
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 4, i32 6
  store i32 %0, ptr %20, align 4, !tbaa !491
  br label %21

21:                                               ; preds = %1, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_reorganize_refs_by_reg(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !489 !PGOFuncName !812 {
  %5 = load ptr, ptr @df, align 8, !tbaa !398
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 28
  %7 = load i8, ptr %6, align 1, !tbaa !583
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !511

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
define internal fastcc void @df_reorganize_refs_by_insn(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !397 !PGOFuncName !813 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = tail call fastcc i32 @df_count_refs(i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  %8 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 5
  store i32 %7, ptr %8, align 8, !tbaa !616
  tail call fastcc void @df_check_and_grow_ref_info(ptr noundef %0) #22
  %9 = load ptr, ptr @df, align 8, !tbaa !398
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !584
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13, !prof !736

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %6) #22
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !692
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %13, %16
  %17 = phi i32 [ %25, %16 ], [ 0, %13 ]
  %18 = load ptr, ptr @cfun, align 8, !tbaa !398
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !419
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !492
  %23 = load i32, ptr %6, align 4, !tbaa !479
  %24 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %22, i32 noundef %23) #22
  %25 = tail call fastcc i32 @df_reorganize_refs_by_insn_bb(ptr noundef %24, i32 noundef %17, ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !692
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %16, !llvm.loop !814

28:                                               ; preds = %16, %13
  %29 = phi i32 [ 0, %13 ], [ %25, %16 ]
  %30 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 4
  store i32 %29, ptr %30, align 4, !tbaa !614
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %47

31:                                               ; preds = %4
  %32 = load ptr, ptr @cfun, align 8, !tbaa !398
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !419
  %35 = load ptr, ptr %34, align 8, !tbaa !398
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !421

37:                                               ; preds = %31, %37
  %38 = phi ptr [ %42, %37 ], [ %35, %31 ]
  %39 = phi i32 [ %40, %37 ], [ 0, %31 ]
  %40 = tail call fastcc i32 @df_reorganize_refs_by_insn_bb(ptr noundef nonnull %38, i32 noundef %39, ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !398
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %37, !prof !815, !llvm.loop !816

44:                                               ; preds = %37, %31
  %45 = phi i32 [ 0, %31 ], [ %40, %37 ]
  %46 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 4
  store i32 %45, ptr %46, align 4, !tbaa !614
  br label %47

47:                                               ; preds = %44, %28
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_maybe_reorganize_def_refs(i32 noundef %0) local_unnamed_addr #0 !prof !817 {
  %2 = load ptr, ptr @df, align 8, !tbaa !398
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 3
  %4 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 3, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !490
  %6 = icmp eq i32 %5, %0
  br i1 %6, label %19, label %7, !prof !818

7:                                                ; preds = %1
  switch i32 %0, label %16 [
    i32 3, label %8
    i32 5, label %9
    i32 0, label %10
    i32 6, label %15
    i32 4, label %15
    i32 1, label %15
    i32 2, label %15
  ], !prof !819

8:                                                ; preds = %7
  tail call fastcc void @df_reorganize_refs_by_reg(ptr noundef nonnull %3, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  br label %16

9:                                                ; preds = %7
  tail call fastcc void @df_reorganize_refs_by_insn(ptr noundef nonnull %3, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  br label %16

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !tbaa !463
  tail call void @free(ptr noundef %11) #22
  %12 = load ptr, ptr @df, align 8, !tbaa !398
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 3
  store ptr null, ptr %13, align 8, !tbaa !463
  %14 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 3, i32 3
  store i32 0, ptr %14, align 8, !tbaa !820
  br label %16

15:                                               ; preds = %7, %7, %7, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1964, ptr noundef nonnull @.str.9) #21
  br label %16

16:                                               ; preds = %7, %15, %10, %9, %8
  %17 = load ptr, ptr @df, align 8, !tbaa !398
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 3, i32 6
  store i32 %0, ptr %18, align 4, !tbaa !490
  br label %19

19:                                               ; preds = %1, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_insn_change_bb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !821 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !510
  %6 = load i32, ptr %3, align 8, !tbaa !510
  %7 = icmp eq ptr %5, %1
  br i1 %7, label %58, label %8, !prof !822

8:                                                ; preds = %2
  store ptr %1, ptr %4, align 8, !tbaa !510
  %9 = load ptr, ptr @df, align 8, !tbaa !398
  %10 = icmp eq ptr %9, null
  br i1 %10, label %58, label %11, !prof !823

11:                                               ; preds = %8
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !398
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !824

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.20, i32 noundef %6) #22
  %16 = load ptr, ptr @df, align 8, !tbaa !398
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi ptr [ %16, %14 ], [ %9, %11 ]
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !440
  %21 = icmp ult i32 %6, %20
  br i1 %21, label %22, label %29, !prof !825

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !441
  %25 = zext i32 %6 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !398
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36, !prof !826

29:                                               ; preds = %17, %22
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !398
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32, !prof !827

32:                                               ; preds = %29
  %33 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 17, i64 1, ptr nonnull %30)
  br label %34

34:                                               ; preds = %32, %29
  %35 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %0) #22, !range !692
  br label %58

36:                                               ; preds = %22
  %37 = load i32, ptr %0, align 8
  %38 = and i32 %37, 65535
  %39 = add nsw i32 %38, -7
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %41, label %58, !prof !828

41:                                               ; preds = %36
  tail call void @df_set_bb_dirty(ptr noundef %1) #21
  %42 = icmp eq ptr %5, null
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !398
  %44 = icmp eq ptr %43, null
  br i1 %42, label %53, label %45, !prof !829

45:                                               ; preds = %41
  br i1 %44, label %52, label %46, !prof !830

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !422
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !422
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %43, ptr noundef nonnull @.str.22, i32 noundef %48, i32 noundef %50) #22
  br label %52

52:                                               ; preds = %46, %45
  tail call void @df_set_bb_dirty(ptr noundef nonnull %5) #21
  br label %58

53:                                               ; preds = %41
  br i1 %44, label %58, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !422
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %43, ptr noundef nonnull @.str.23, i32 noundef %56) #22
  br label %58

58:                                               ; preds = %36, %52, %54, %53, %8, %2, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_ref_change_reg_with_loc(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !831 {
  %4 = load ptr, ptr @df, align 8, !tbaa !398
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i32 %0, -1
  %7 = or i1 %6, %5
  %8 = icmp eq i32 %0, %1
  %9 = or i1 %8, %7
  br i1 %9, label %34, label %10, !prof !832

10:                                               ; preds = %3
  tail call void @df_grow_reg_info() #22
  %11 = load ptr, ptr @df, align 8, !tbaa !398
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !469
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !398
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds ptr, ptr %13, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !398
  tail call fastcc void @df_ref_change_reg_with_loc_1(ptr noundef %16, ptr noundef %19, i32 noundef %1, ptr noundef %2) #22
  %20 = load ptr, ptr @df, align 8, !tbaa !398
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !470
  %23 = getelementptr inbounds ptr, ptr %22, i64 %14
  %24 = load ptr, ptr %23, align 8, !tbaa !398
  %25 = getelementptr inbounds ptr, ptr %22, i64 %17
  %26 = load ptr, ptr %25, align 8, !tbaa !398
  tail call fastcc void @df_ref_change_reg_with_loc_1(ptr noundef %24, ptr noundef %26, i32 noundef %1, ptr noundef %2) #22
  %27 = load ptr, ptr @df, align 8, !tbaa !398
  %28 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !471
  %30 = getelementptr inbounds ptr, ptr %29, i64 %14
  %31 = load ptr, ptr %30, align 8, !tbaa !398
  %32 = getelementptr inbounds ptr, ptr %29, i64 %17
  %33 = load ptr, ptr %32, align 8, !tbaa !398
  tail call fastcc void @df_ref_change_reg_with_loc_1(ptr noundef %31, ptr noundef %33, i32 noundef %1, ptr noundef %2) #22
  br label %34

34:                                               ; preds = %3, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_ref_change_reg_with_loc_1(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef readnone %3) unnamed_addr #0 !prof !833 !PGOFuncName !834 {
  %5 = load ptr, ptr %0, align 8, !tbaa !606
  %6 = icmp eq ptr %5, null
  br i1 %6, label %105, label %7, !prof !835

7:                                                ; preds = %4, %102
  %8 = phi ptr [ %103, %102 ], [ %5, %4 ]
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 254
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %99, !prof !836

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.df_regular_ref, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !510
  %15 = icmp eq ptr %14, null
  br i1 %15, label %99, label %16, !prof !837

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !398
  %18 = icmp eq ptr %17, %3
  br i1 %18, label %19, label %99, !prof !838

19:                                               ; preds = %16
  %20 = sext i32 %2 to i64
  %21 = getelementptr inbounds %struct.df_base_ref, ptr %8, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !510
  %23 = getelementptr inbounds %struct.df_base_ref, ptr %8, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !510
  %25 = getelementptr inbounds %struct.df_base_ref, ptr %8, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !510
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %8, i64 0, i32 6
  store i32 %2, ptr %27, align 8, !tbaa !510
  %28 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !398
  %29 = getelementptr inbounds ptr, ptr %28, i64 %20
  %30 = load ptr, ptr %29, align 8, !tbaa !398
  %31 = getelementptr inbounds %struct.df_base_ref, ptr %8, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !510
  %32 = icmp eq ptr %24, null
  br i1 %32, label %35, label %33, !prof !839

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.df_base_ref, ptr %24, i64 0, i32 4
  br label %35

35:                                               ; preds = %19, %33
  %36 = phi ptr [ %34, %33 ], [ %0, %19 ]
  store ptr %22, ptr %36, align 8, !tbaa !510
  %37 = icmp eq ptr %22, null
  br i1 %37, label %40, label %38, !prof !840

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.df_base_ref, ptr %22, i64 0, i32 5
  store ptr %24, ptr %39, align 8, !tbaa !510
  br label %40

40:                                               ; preds = %38, %35
  %41 = getelementptr inbounds %struct.df_reg_info, ptr %0, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !608
  %43 = add i32 %42, -1
  store i32 %43, ptr %41, align 8, !tbaa !608
  store ptr null, ptr %23, align 8, !tbaa !510
  %44 = load ptr, ptr %1, align 8, !tbaa !606
  store ptr %44, ptr %21, align 8, !tbaa !510
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !841

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.df_base_ref, ptr %44, i64 0, i32 5
  store ptr %8, ptr %47, align 8, !tbaa !510
  br label %48

48:                                               ; preds = %46, %40
  %49 = getelementptr inbounds %struct.df_reg_info, ptr %1, i64 0, i32 1
  store ptr %8, ptr %1, align 8, !tbaa !606
  %50 = load i32, ptr %49, align 8, !tbaa !608
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 8, !tbaa !608
  %52 = load i32, ptr %8, align 8
  %53 = and i32 %52, 255
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %58, !prof !842

55:                                               ; preds = %48
  %56 = load ptr, ptr %13, align 8, !tbaa !510
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %64

58:                                               ; preds = %48
  %59 = load ptr, ptr %25, align 8, !tbaa !510
  %60 = load ptr, ptr %59, align 8, !tbaa !586
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !510
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64, !prof !842

64:                                               ; preds = %58, %55
  %65 = phi ptr [ %56, %55 ], [ %62, %58 ]
  tail call void @df_set_bb_dirty(ptr noundef nonnull %65) #21
  %66 = load i32, ptr %8, align 8
  br label %67

67:                                               ; preds = %64, %58, %55
  %68 = phi i32 [ %66, %64 ], [ %52, %58 ], [ %52, %55 ]
  %69 = and i32 %68, 262144
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71, !prof !843

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.df_insn_info, ptr %26, i64 0, i32 3
  br label %75

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.df_insn_info, ptr %26, i64 0, i32 2
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi ptr [ %72, %71 ], [ %74, %73 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !398
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !398
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80, !prof !838

80:                                               ; preds = %75
  %81 = load ptr, ptr %25, align 8, !tbaa !510
  %82 = load ptr, ptr %81, align 8, !tbaa !586
  %83 = getelementptr inbounds %struct.rtx_def, ptr %82, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !510
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %78, ptr noundef nonnull @.str.44, i32 noundef %84) #22
  br label %86

86:                                               ; preds = %80, %75
  %87 = load ptr, ptr %77, align 8, !tbaa !398
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89, !prof !844

89:                                               ; preds = %86, %89
  %90 = phi i32 [ %92, %89 ], [ 0, %86 ]
  %91 = phi ptr [ %93, %89 ], [ %77, %86 ]
  %92 = add i32 %90, 1
  %93 = getelementptr inbounds ptr, ptr %91, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !398
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %89, !prof !845, !llvm.loop !846

96:                                               ; preds = %89, %86
  %97 = phi i32 [ 0, %86 ], [ %92, %89 ]
  %98 = zext i32 %97 to i64
  tail call void @spec_qsort(ptr noundef nonnull %77, i64 noundef %98, i64 noundef 8, ptr noundef nonnull @df_ref_compare) #21
  br label %102

99:                                               ; preds = %7, %16, %12
  %100 = getelementptr inbounds %struct.df_base_ref, ptr %8, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !510
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi ptr [ %101, %99 ], [ %22, %96 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %7, !prof !847, !llvm.loop !848

105:                                              ; preds = %102, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @df_mw_hardreg_chain_delete_eq_uses(ptr nocapture noundef %0) unnamed_addr #0 !prof !849 !PGOFuncName !850 {
  %2 = getelementptr inbounds %struct.df_insn_info, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !451
  %4 = load ptr, ptr %3, align 8, !tbaa !398
  %5 = icmp eq ptr %4, null
  br i1 %5, label %52, label %6, !prof !798

6:                                                ; preds = %1
  %7 = load ptr, ptr @df, align 8, !tbaa !398
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !398
  %10 = getelementptr inbounds %struct.dataflow, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !402
  %12 = getelementptr inbounds %struct.df_scan_problem_data, ptr %11, i64 0, i32 6
  br label %13

13:                                               ; preds = %6, %36
  %14 = phi i32 [ 0, %6 ], [ %39, %36 ]
  %15 = phi i32 [ 0, %6 ], [ %38, %36 ]
  %16 = phi ptr [ %3, %6 ], [ %37, %36 ]
  %17 = phi ptr [ %4, %6 ], [ %40, %36 ]
  %18 = getelementptr inbounds %struct.df_mw_hardreg, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 262144
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr %12, align 8, !tbaa !418
  tail call void @pool_free(ptr noundef %23, ptr noundef nonnull %17) #21
  %24 = load ptr, ptr %16, align 8, !tbaa !398
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22, %26
  %27 = phi ptr [ %28, %26 ], [ %16, %22 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !398
  store ptr %29, ptr %27, align 8, !tbaa !398
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26, !llvm.loop !851

31:                                               ; preds = %26, %22
  %32 = add i32 %15, 1
  br label %36

33:                                               ; preds = %13
  %34 = getelementptr inbounds ptr, ptr %16, i64 1
  %35 = add i32 %14, 1
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi ptr [ %16, %31 ], [ %34, %33 ]
  %38 = phi i32 [ %32, %31 ], [ %15, %33 ]
  %39 = phi i32 [ %14, %31 ], [ %35, %33 ]
  %40 = load ptr, ptr %37, align 8, !tbaa !398
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %13, !llvm.loop !852

42:                                               ; preds = %36
  %43 = icmp eq i32 %39, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %42
  %45 = load ptr, ptr %2, align 8, !tbaa !451
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %45, align 8, !tbaa !398
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void @free(ptr noundef nonnull %45) #22
  br label %51

51:                                               ; preds = %50, %47, %44
  store ptr @df_null_mw_rec, ptr %2, align 8, !tbaa !451
  br label %52

52:                                               ; preds = %42, %1, %51
  %53 = phi i32 [ 0, %51 ], [ 0, %1 ], [ %38, %42 ]
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_uses_record(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 !prof !853 !PGOFuncName !854 {
  %11 = load ptr, ptr %2, align 8, !tbaa !398
  %12 = icmp eq ptr %11, null
  br i1 %12, label %208, label %13, !prof !855

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
  ], !prof !856

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !510
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 43
  br i1 %33, label %34, label %208, !prof !857

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
  %44 = load ptr, ptr %38, align 8, !tbaa !398
  %45 = icmp eq ptr %44, null
  br i1 %45, label %208, label %13, !prof !858

46:                                               ; preds = %22
  %47 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %48 = and i32 %18, 4
  br label %36

49:                                               ; preds = %22
  %50 = or i32 %18, 16
  %51 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !510
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 65535
  %55 = icmp eq i32 %54, 37
  br i1 %55, label %56, label %36, !prof !859

56:                                               ; preds = %49, %22
  %57 = phi i32 [ %18, %22 ], [ %50, %49 ]
  tail call fastcc void @df_ref_record(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef %4, ptr noundef %5, i32 noundef %19, i32 noundef %57, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  br label %208

58:                                               ; preds = %22, %22
  %59 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !510
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 30
  br i1 %63, label %64, label %170, !prof !860

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 2
  %66 = load ptr, ptr %65, align 8, !tbaa !510
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 30
  br i1 %69, label %70, label %170, !prof !861

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %72 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !510
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !510
  %77 = trunc i64 %76 to i32
  %78 = lshr i32 %25, 16
  %79 = and i32 %78, 255
  %80 = icmp eq i32 %26, 120
  br i1 %80, label %81, label %83, !prof !862

81:                                               ; preds = %70
  %82 = or i32 %18, 512
  br label %36

83:                                               ; preds = %70
  %84 = or i32 %18, 256
  br label %36

85:                                               ; preds = %22
  %86 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !510
  %88 = and i32 %18, 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90, !prof !863

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
  ], !prof !864

95:                                               ; preds = %91
  %96 = tail call zeroext i8 @df_read_modify_subreg_p(ptr noundef nonnull %87) #22, !range !692
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %208, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %100 = or i32 %18, 2080
  br label %36

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  br label %36

103:                                              ; preds = %91
  %104 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !510
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 65535
  %108 = icmp eq i32 %107, 39
  br i1 %108, label %109, label %36, !prof !865

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  br label %36

111:                                              ; preds = %91
  %112 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1
  %113 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !510
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, 65535
  %117 = icmp eq i32 %116, 30
  br i1 %117, label %118, label %139

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.rtx_def, ptr %87, i64 0, i32 1, i32 0, i32 0, i64 2
  %120 = load ptr, ptr %119, align 8, !tbaa !510
  %121 = load i32, ptr %120, align 8
  %122 = and i32 %121, 65535
  %123 = icmp eq i32 %122, 30
  br i1 %123, label %124, label %139

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %126 = load i64, ptr %125, align 8, !tbaa !510
  %127 = trunc i64 %126 to i32
  %128 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !510
  %130 = trunc i64 %129 to i32
  %131 = lshr i32 %93, 16
  %132 = and i32 %131, 255
  %133 = load ptr, ptr %112, align 8, !tbaa !510
  %134 = load i32, ptr %133, align 8
  %135 = and i32 %134, 65535
  %136 = icmp eq i32 %135, 43
  br i1 %136, label %137, label %36

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
  %146 = load ptr, ptr %145, align 8, !tbaa !510
  %147 = load i32, ptr %146, align 8, !tbaa !866
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %208

149:                                              ; preds = %144, %149
  %150 = phi i64 [ %153, %149 ], [ 0, %144 ]
  %151 = phi ptr [ %154, %149 ], [ %146, %144 ]
  %152 = getelementptr inbounds %struct.rtvec_def, ptr %151, i64 0, i32 1, i64 %150
  tail call fastcc void @df_uses_record(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %152, i32 noundef 1, ptr noundef %4, ptr noundef %5, i32 noundef %18, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  %153 = add nuw nsw i64 %150, 1
  %154 = load ptr, ptr %145, align 8, !tbaa !510
  %155 = load i32, ptr %154, align 8, !tbaa !866
  %156 = sext i32 %155 to i64
  %157 = icmp slt i64 %153, %156
  br i1 %157, label %149, label %208, !llvm.loop !868

158:                                              ; preds = %22
  %159 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %36

160:                                              ; preds = %22, %22, %22, %22, %22, %22
  %161 = load ptr, ptr %5, align 8, !tbaa !586
  %162 = load i32, ptr %161, align 8
  %163 = and i32 %162, 65535
  %164 = icmp eq i32 %163, 7
  br i1 %164, label %165, label %166, !prof !869

165:                                              ; preds = %160
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3379, ptr noundef nonnull @.str.9) #21
  br label %166

166:                                              ; preds = %160, %165
  %167 = or i32 %18, 32800
  %168 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !510
  tail call fastcc void @df_ref_record(i32 noundef %21, ptr noundef %1, ptr noundef %169, ptr noundef nonnull %168, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %167, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  br label %170

170:                                              ; preds = %166, %22, %142, %58, %64
  %171 = zext nneg i32 %26 to i64
  %172 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !398
  %174 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %171
  %175 = load i8, ptr %174, align 1, !tbaa !510
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %208, label %177, !prof !870

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %179 = zext i8 %175 to i64
  br label %180

180:                                              ; preds = %177, %203
  %181 = phi i64 [ %179, %177 ], [ %182, %203 ]
  %182 = add nsw i64 %181, -1
  %183 = getelementptr inbounds i8, ptr %173, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !510
  switch i8 %184, label %203 [
    i8 101, label %190
    i8 69, label %185
  ], !prof !871

185:                                              ; preds = %180
  %186 = getelementptr inbounds [1 x %union.rtunion_def], ptr %178, i64 0, i64 %182
  %187 = load ptr, ptr %186, align 8, !tbaa !510
  %188 = load i32, ptr %187, align 8, !tbaa !866
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %194, label %203, !prof !872

190:                                              ; preds = %180
  %191 = icmp eq i64 %182, 0
  br i1 %191, label %205, label %192, !prof !873

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
  %199 = load ptr, ptr %186, align 8, !tbaa !510
  %200 = load i32, ptr %199, align 8, !tbaa !866
  %201 = sext i32 %200 to i64
  %202 = icmp slt i64 %198, %201
  br i1 %202, label %194, label %203, !prof !874, !llvm.loop !875

203:                                              ; preds = %194, %185, %180, %192
  %204 = icmp sgt i64 %181, 1
  br i1 %204, label %180, label %208, !prof !876, !llvm.loop !877

205:                                              ; preds = %190
  %206 = load ptr, ptr %178, align 8, !tbaa !398
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %22, !prof !878

208:                                              ; preds = %95, %91, %91, %91, %91, %91, %28, %36, %205, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %170, %203, %149, %10, %144, %141, %56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_canonize_collection_rec(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !879 !PGOFuncName !880 {
  tail call fastcc void @df_sort_and_compress_refs(ptr noundef %0) #22
  %2 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  tail call fastcc void @df_sort_and_compress_refs(ptr noundef nonnull %2) #22
  %3 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  tail call fastcc void @df_sort_and_compress_refs(ptr noundef nonnull %3) #22
  %4 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  tail call fastcc void @df_sort_and_compress_mws(ptr noundef nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_df_mw_hardreg_ptr_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !881 !PGOFuncName !882 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !883

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !884
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_df_mw_hardreg_ptr_base_address(ptr noundef readnone %0) unnamed_addr #7 !prof !581 !PGOFuncName !886 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @df_mw_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !581 !PGOFuncName !887 {
  %3 = load ptr, ptr %0, align 8, !tbaa !398
  %4 = load ptr, ptr %1, align 8, !tbaa !398
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %48, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.df_mw_hardreg, ptr %3, i64 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 65535
  %10 = getelementptr inbounds %struct.df_mw_hardreg, ptr %4, i64 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = sub nsw i32 %9, %12
  br label %48

16:                                               ; preds = %6
  %17 = ashr i32 %8, 16
  %18 = ashr i32 %11, 16
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = sub nsw i32 %17, %18
  br label %48

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.df_mw_hardreg, ptr %3, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !888
  %25 = getelementptr inbounds %struct.df_mw_hardreg, ptr %4, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !888
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = sub i32 %24, %26
  br label %48

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.df_mw_hardreg, ptr %3, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !890
  %33 = getelementptr inbounds %struct.df_mw_hardreg, ptr %4, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !890
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = sub i32 %32, %34
  br label %48

38:                                               ; preds = %30
  %39 = load ptr, ptr %3, align 8, !tbaa !891
  %40 = load ptr, ptr %4, align 8, !tbaa !891
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.df_mw_hardreg, ptr %3, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !892
  %45 = getelementptr inbounds %struct.df_mw_hardreg, ptr %4, i64 0, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !892
  %47 = sub i32 %44, %46
  br label %48

48:                                               ; preds = %38, %2, %42, %36, %28, %20, %14
  %49 = phi i32 [ %15, %14 ], [ %21, %20 ], [ %29, %28 ], [ %37, %36 ], [ %47, %42 ], [ 0, %2 ], [ 0, %38 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @df_read_modify_subreg_p(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !581 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !510
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !510
  %14 = lshr i32 %2, 16
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !510
  %19 = icmp ugt i8 %13, %18
  %20 = icmp ugt i8 %13, 4
  %21 = and i1 %20, %19
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %1, %5
  %24 = phi i8 [ %22, %5 ], [ 0, %1 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_recompute_luids(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !581 {
  tail call void @df_grow_insn_info() #22
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !510
  %4 = load ptr, ptr %3, align 8, !tbaa !510
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %1, %33
  %7 = phi ptr [ %43, %33 ], [ %4, %1 ]
  %8 = phi i32 [ %41, %33 ], [ 0, %1 ]
  %9 = load ptr, ptr %2, align 8, !tbaa !510
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !573
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !510
  %14 = icmp eq ptr %7, %13
  br i1 %14, label %45, label %15

15:                                               ; preds = %6
  %16 = load ptr, ptr @df, align 8, !tbaa !398
  %17 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !441
  %19 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !510
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !398
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
  store i32 %8, ptr %35, align 8, !tbaa !578
  %36 = load i32, ptr %7, align 8
  %37 = and i32 %36, 65535
  %38 = add nsw i32 %37, -7
  %39 = icmp ult i32 %38, 4
  %40 = zext i1 %39 to i32
  %41 = add nuw nsw i32 %8, %40
  %42 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !510
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %6, !llvm.loop !893

45:                                               ; preds = %6, %33, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_bb_refs_collect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !894 !PGOFuncName !895 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 8, !tbaa !546
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %5, i32 noundef 0) #22
  %6 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !564
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %7, i32 noundef 0) #22
  %8 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !570
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %9, i32 noundef 0) #22
  %10 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !571
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_truncate(ptr noundef %11, i32 noundef 0) #22
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !422
  switch i32 %13, label %22 [
    i32 0, label %14
    i32 1, label %18
  ], !prof !896

14:                                               ; preds = %2
  %15 = load ptr, ptr @df, align 8, !tbaa !398
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 16
  %17 = load ptr, ptr %16, align 8, !tbaa !433
  tail call fastcc void @df_entry_block_defs_collect(ptr noundef nonnull %0, ptr noundef %17) #22
  br label %64

18:                                               ; preds = %2
  %19 = load ptr, ptr @df, align 8, !tbaa !398
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !434
  tail call fastcc void @df_exit_block_uses_collect(ptr noundef nonnull %0, ptr noundef %21) #22
  br label %64

22:                                               ; preds = %2
  %23 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef nonnull %1) #22, !range !692
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25, !prof !897

25:                                               ; preds = %22
  %26 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !398
  %27 = load ptr, ptr %26, align 8, !tbaa !398
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef nonnull %0, ptr noundef %27, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 2, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  %28 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !398
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !398
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef nonnull %0, ptr noundef %30, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 2, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %31

31:                                               ; preds = %25, %22
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %33 = load i32, ptr %32, align 8, !tbaa !898
  %34 = and i32 %33, 256
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !897

36:                                               ; preds = %31
  %37 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !398
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef nonnull %0, ptr noundef %37, ptr noundef null, ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, i32 noundef 2, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, ptr %12, align 8, !tbaa !422
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %63, !prof !897

41:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %42 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef nonnull %1) #22, !range !692
  %43 = icmp eq i8 %42, 0
  %44 = load ptr, ptr @df, align 8, !tbaa !398
  br i1 %43, label %47, label %45, !prof !897

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 15
  br label %49

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 14
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi ptr [ %46, %45 ], [ %48, %47 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !398
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %51, ptr noundef nonnull %4) #22
  %52 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #22, !range !692
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %62, label %54, !prof !899

54:                                               ; preds = %49, %54
  %55 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !398
  %56 = load i32, ptr %4, align 4, !tbaa !479
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !398
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef nonnull %0, ptr noundef %59, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %60 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #22, !range !692
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %54, !prof !900, !llvm.loop !901

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
define dso_local void @df_update_entry_block_defs() local_unnamed_addr #0 !prof !800 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  tail call fastcc void @df_get_entry_block_def_set(ptr noundef %1) #22
  %2 = load ptr, ptr @df, align 8, !tbaa !398
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !433
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6, !prof !572

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @bitmap_equal_p(ptr noundef nonnull %4, ptr noundef %1) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %32, !prof !902

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef 0) #22
  %11 = load ptr, ptr %10, align 8, !tbaa !456
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %11) #22
  %12 = load ptr, ptr %10, align 8, !tbaa !456
  tail call fastcc void @df_ref_chain_delete(ptr noundef %12) #22
  store ptr null, ptr %10, align 8, !tbaa !456
  br label %22

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !398
  %16 = getelementptr inbounds %struct.dataflow, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !402
  %18 = getelementptr inbounds %struct.df_scan_problem_data, ptr %17, i64 0, i32 7
  %19 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %18) #21
  %20 = load ptr, ptr @df, align 8, !tbaa !398
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 16
  store ptr %19, ptr %21, align 8, !tbaa !433
  br label %22

22:                                               ; preds = %13, %9
  tail call fastcc void @df_record_entry_block_defs(ptr noundef %1) #22
  %23 = load ptr, ptr @df, align 8, !tbaa !398
  %24 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !433
  tail call void @bitmap_copy(ptr noundef %25, ptr noundef %1) #21
  %26 = load ptr, ptr @cfun, align 8, !tbaa !398
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !419
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !492
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
define dso_local void @df_update_exit_block_uses() local_unnamed_addr #0 !prof !903 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  tail call fastcc void @df_get_exit_block_use_set(ptr noundef %1) #22
  %2 = load ptr, ptr @df, align 8, !tbaa !398
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !434
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !904

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @bitmap_equal_p(ptr noundef nonnull %4, ptr noundef %1) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %33, !prof !905

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef 1) #22
  %11 = getelementptr inbounds %struct.df_scan_bb_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !459
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %12) #22
  %13 = load ptr, ptr %11, align 8, !tbaa !459
  tail call fastcc void @df_ref_chain_delete(ptr noundef %13) #22
  store ptr null, ptr %11, align 8, !tbaa !459
  br label %23

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !398
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !402
  %19 = getelementptr inbounds %struct.df_scan_problem_data, ptr %18, i64 0, i32 7
  %20 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %19) #21
  %21 = load ptr, ptr @df, align 8, !tbaa !398
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 17
  store ptr %20, ptr %22, align 8, !tbaa !434
  br label %23

23:                                               ; preds = %14, %9
  tail call fastcc void @df_record_exit_block_uses(ptr noundef %1) #22
  %24 = load ptr, ptr @df, align 8, !tbaa !398
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !434
  tail call void @bitmap_copy(ptr noundef %26, ptr noundef %1) #21
  %27 = load ptr, ptr @cfun, align 8, !tbaa !398
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !419
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !492
  %32 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %31, i32 noundef 1) #22
  tail call void @df_set_bb_dirty(ptr noundef %32) #21
  br label %33

33:                                               ; preds = %6, %23
  tail call void @bitmap_obstack_free(ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @df_hard_reg_init() local_unnamed_addr #13 !prof !489 {
  %1 = load i1, ptr @initialized, align 1
  br i1 %1, label %3, label %2, !prof !906

2:                                                ; preds = %0
  store i1 true, ptr @elim_reg_set, align 8
  store i1 true, ptr @initialized, align 1
  br label %3

3:                                                ; preds = %0, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @df_hard_reg_used_p(i32 noundef %0) local_unnamed_addr #3 !prof !907 {
  %2 = load ptr, ptr @df, align 8, !tbaa !398
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !611
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !479
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @df_hard_reg_used_count(i32 noundef %0) local_unnamed_addr #3 !prof !581 {
  %2 = load ptr, ptr @df, align 8, !tbaa !398
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !611
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !479
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @df_regs_ever_live_p(i32 noundef %0) local_unnamed_addr #14 !prof !908 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [53 x i8], ptr @regs_ever_live, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !510
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @df_set_regs_ever_live(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #15 !prof !909 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [53 x i8], ptr @regs_ever_live, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !510
  %6 = icmp eq i8 %5, %1
  br i1 %6, label %12, label %7, !prof !910

7:                                                ; preds = %2
  store i8 %1, ptr %4, align 1, !tbaa !510
  %8 = load ptr, ptr @df, align 8, !tbaa !398
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !911

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 29
  store i8 1, ptr %11, align 2, !tbaa !784
  br label %12

12:                                               ; preds = %2, %10, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_compute_regs_ever_live(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !912 {
  %2 = load ptr, ptr @df, align 8, !tbaa !398
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 29
  %4 = load i8, ptr %3, align 2, !tbaa !784
  %5 = icmp eq i8 %0, 0
  br i1 %5, label %7, label %6, !prof !913

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
  %15 = load i8, ptr %14, align 1, !tbaa !510
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21, !prof !914

17:                                               ; preds = %12
  %18 = trunc i64 %13 to i32
  %19 = tail call zeroext i8 @df_hard_reg_used_p(i32 noundef %18) #22, !range !692
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24, !prof !915

21:                                               ; preds = %12, %17
  %22 = add nuw nsw i64 %13, 1
  %23 = icmp eq i64 %22, 53
  br i1 %23, label %28, label %12, !prof !916, !llvm.loop !917

24:                                               ; preds = %17
  %25 = getelementptr inbounds [53 x i8], ptr @regs_ever_live, i64 0, i64 %13
  store i8 1, ptr %25, align 1, !tbaa !510
  %26 = add nuw nsw i64 %13, 1
  %27 = icmp eq i64 %26, 53
  br i1 %27, label %29, label %9, !prof !916, !llvm.loop !917

28:                                               ; preds = %21
  br i1 %11, label %31, label %29, !prof !918

29:                                               ; preds = %24, %28
  tail call void @df_update_entry_exit_and_calls() #22
  %30 = load ptr, ptr @df, align 8, !tbaa !398
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi ptr [ %30, %29 ], [ %2, %28 ]
  %33 = getelementptr inbounds %struct.df, ptr %32, i64 0, i32 29
  store i8 0, ptr %33, align 2, !tbaa !784
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_scan_verify() local_unnamed_addr #0 !prof !581 {
  %1 = load ptr, ptr @df, align 8, !tbaa !398
  %2 = icmp eq ptr %1, null
  br i1 %2, label %129, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !477
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %70, label %7

7:                                                ; preds = %3, %63
  %8 = phi i64 [ %65, %63 ], [ 0, %3 ]
  %9 = phi ptr [ %64, %63 ], [ %1, %3 ]
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !469
  %12 = getelementptr inbounds ptr, ptr %11, i64 %8
  %13 = load ptr, ptr %12, align 8, !tbaa !398
  %14 = load ptr, ptr %13, align 8, !tbaa !606
  %15 = trunc i64 %8 to i32
  %16 = tail call fastcc i32 @df_reg_chain_mark(ptr noundef %14, i32 noundef %15, i8 noundef zeroext 1, i8 noundef zeroext 0) #22
  %17 = load ptr, ptr @df, align 8, !tbaa !398
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !469
  %20 = getelementptr inbounds ptr, ptr %19, i64 %8
  %21 = load ptr, ptr %20, align 8, !tbaa !398
  %22 = getelementptr inbounds %struct.df_reg_info, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !608
  %24 = icmp eq i32 %16, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4647, ptr noundef nonnull @.str.9) #21
  %26 = load ptr, ptr @df, align 8, !tbaa !398
  br label %27

27:                                               ; preds = %7, %25
  %28 = phi ptr [ %17, %7 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !470
  %31 = getelementptr inbounds ptr, ptr %30, i64 %8
  %32 = load ptr, ptr %31, align 8, !tbaa !398
  %33 = load ptr, ptr %32, align 8, !tbaa !606
  %34 = tail call fastcc i32 @df_reg_chain_mark(ptr noundef %33, i32 noundef %15, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  %35 = load ptr, ptr @df, align 8, !tbaa !398
  %36 = getelementptr inbounds %struct.df, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !470
  %38 = getelementptr inbounds ptr, ptr %37, i64 %8
  %39 = load ptr, ptr %38, align 8, !tbaa !398
  %40 = getelementptr inbounds %struct.df_reg_info, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !608
  %42 = icmp eq i32 %34, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4649, ptr noundef nonnull @.str.9) #21
  %44 = load ptr, ptr @df, align 8, !tbaa !398
  br label %45

45:                                               ; preds = %27, %43
  %46 = phi ptr [ %35, %27 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.df, ptr %46, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !471
  %49 = getelementptr inbounds ptr, ptr %48, i64 %8
  %50 = load ptr, ptr %49, align 8, !tbaa !398
  %51 = load ptr, ptr %50, align 8, !tbaa !606
  %52 = tail call fastcc i32 @df_reg_chain_mark(ptr noundef %51, i32 noundef %15, i8 noundef zeroext 0, i8 noundef zeroext 1) #22
  %53 = load ptr, ptr @df, align 8, !tbaa !398
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !471
  %56 = getelementptr inbounds ptr, ptr %55, i64 %8
  %57 = load ptr, ptr %56, align 8, !tbaa !398
  %58 = getelementptr inbounds %struct.df_reg_info, ptr %57, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !608
  %60 = icmp eq i32 %52, %59
  br i1 %60, label %63, label %61

61:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4651, ptr noundef nonnull @.str.9) #21
  %62 = load ptr, ptr @df, align 8, !tbaa !398
  br label %63

63:                                               ; preds = %45, %61
  %64 = phi ptr [ %53, %45 ], [ %62, %61 ]
  %65 = add nuw nsw i64 %8, 1
  %66 = getelementptr inbounds %struct.df, ptr %64, i64 0, i32 9
  %67 = load i32, ptr %66, align 4, !tbaa !477
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %7, label %70, !llvm.loop !919

70:                                               ; preds = %63, %3
  %71 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %72 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  tail call fastcc void @df_get_regular_block_artificial_uses(ptr noundef %71) #22
  tail call fastcc void @df_get_eh_block_artificial_uses(ptr noundef %72) #22
  %73 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %72, ptr noundef %71) #21
  %74 = load ptr, ptr @df, align 8, !tbaa !398
  %75 = getelementptr inbounds %struct.df, ptr %74, i64 0, i32 14
  %76 = load ptr, ptr %75, align 8, !tbaa !431
  %77 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %71, ptr noundef %76) #21
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4668, ptr noundef nonnull @.str.9) #21
  br label %80

80:                                               ; preds = %70, %79
  %81 = load ptr, ptr @df, align 8, !tbaa !398
  %82 = getelementptr inbounds %struct.df, ptr %81, i64 0, i32 15
  %83 = load ptr, ptr %82, align 8, !tbaa !432
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
  %88 = load ptr, ptr @cfun, align 8, !tbaa !398
  %89 = getelementptr inbounds %struct.function, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !419
  %91 = load ptr, ptr %90, align 8, !tbaa !398
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %98, %87
  %94 = load ptr, ptr @df, align 8, !tbaa !398
  %95 = getelementptr inbounds %struct.df, ptr %94, i64 0, i32 9
  %96 = load i32, ptr %95, align 4, !tbaa !477
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %129, label %103

98:                                               ; preds = %87, %98
  %99 = phi ptr [ %101, %98 ], [ %91, %87 ]
  tail call fastcc void @df_bb_verify(ptr noundef nonnull %99) #22
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !398
  %102 = icmp eq ptr %101, null
  br i1 %102, label %93, label %98, !llvm.loop !920

103:                                              ; preds = %93, %103
  %104 = phi i64 [ %123, %103 ], [ 0, %93 ]
  %105 = phi ptr [ %124, %103 ], [ %94, %93 ]
  %106 = getelementptr inbounds %struct.df, ptr %105, i64 0, i32 5
  %107 = load ptr, ptr %106, align 8, !tbaa !469
  %108 = getelementptr inbounds ptr, ptr %107, i64 %104
  %109 = load ptr, ptr %108, align 8, !tbaa !398
  %110 = load ptr, ptr %109, align 8, !tbaa !606
  tail call fastcc void @df_reg_chain_verify_unmarked(ptr noundef %110) #22
  %111 = load ptr, ptr @df, align 8, !tbaa !398
  %112 = getelementptr inbounds %struct.df, ptr %111, i64 0, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !470
  %114 = getelementptr inbounds ptr, ptr %113, i64 %104
  %115 = load ptr, ptr %114, align 8, !tbaa !398
  %116 = load ptr, ptr %115, align 8, !tbaa !606
  tail call fastcc void @df_reg_chain_verify_unmarked(ptr noundef %116) #22
  %117 = load ptr, ptr @df, align 8, !tbaa !398
  %118 = getelementptr inbounds %struct.df, ptr %117, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !471
  %120 = getelementptr inbounds ptr, ptr %119, i64 %104
  %121 = load ptr, ptr %120, align 8, !tbaa !398
  %122 = load ptr, ptr %121, align 8, !tbaa !606
  tail call fastcc void @df_reg_chain_verify_unmarked(ptr noundef %122) #22
  %123 = add nuw nsw i64 %104, 1
  %124 = load ptr, ptr @df, align 8, !tbaa !398
  %125 = getelementptr inbounds %struct.df, ptr %124, i64 0, i32 9
  %126 = load i32, ptr %125, align 4, !tbaa !477
  %127 = zext i32 %126 to i64
  %128 = icmp ult i64 %123, %127
  br i1 %128, label %103, label %129, !llvm.loop !921

129:                                              ; preds = %103, %93, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @df_reg_chain_mark(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !581 !PGOFuncName !922 {
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
  %17 = load ptr, ptr @df, align 8, !tbaa !398
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 4
  %19 = load ptr, ptr %18, align 8, !tbaa !398
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !510
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4383, ptr noundef nonnull @.str.9) #21
  br label %26

26:                                               ; preds = %25, %21, %16
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !510
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
  %49 = load ptr, ptr %48, align 8, !tbaa !510
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
  %57 = load ptr, ptr %56, align 8, !tbaa !510
  %58 = icmp eq ptr %57, %10
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4398, ptr noundef nonnull @.str.9) #21
  %60 = load ptr, ptr %48, align 8, !tbaa !510
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi ptr [ %60, %59 ], [ %49, %55 ]
  %63 = add i32 %11, 1
  %64 = load i32, ptr %10, align 8
  %65 = or i32 %64, 1073741824
  store i32 %65, ptr %10, align 8
  %66 = icmp eq ptr %62, null
  br i1 %66, label %67, label %9, !llvm.loop !923

67:                                               ; preds = %61, %51, %4
  %68 = phi i32 [ 0, %4 ], [ %52, %51 ], [ %63, %61 ]
  ret i32 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_entry_block_bitmap_verify() unnamed_addr #0 !prof !581 !PGOFuncName !924 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  tail call fastcc void @df_get_entry_block_def_set(ptr noundef %1) #22
  %2 = load ptr, ptr @df, align 8, !tbaa !398
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !433
  %5 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %1, ptr noundef %4) #21
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !398
  tail call void @print_current_pass(ptr noundef %8) #21
  %9 = load ptr, ptr @stderr, align 8, !tbaa !398
  %10 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 19, i64 1, ptr %9) #24
  %11 = load ptr, ptr @stderr, align 8, !tbaa !398
  tail call void @df_print_regset(ptr noundef %11, ptr noundef %1) #21
  %12 = load ptr, ptr @stderr, align 8, !tbaa !398
  %13 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 23, i64 1, ptr %12) #24
  %14 = load ptr, ptr @stderr, align 8, !tbaa !398
  %15 = load ptr, ptr @df, align 8, !tbaa !398
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 16
  %17 = load ptr, ptr %16, align 8, !tbaa !433
  tail call void @df_print_regset(ptr noundef %14, ptr noundef %17) #21
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4589, ptr noundef nonnull @.str.9) #21
  br label %18

18:                                               ; preds = %7, %0
  tail call void @bitmap_obstack_free(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_exit_block_bitmap_verify() unnamed_addr #0 !prof !581 !PGOFuncName !925 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  tail call fastcc void @df_get_exit_block_use_set(ptr noundef %1) #22
  %2 = load ptr, ptr @df, align 8, !tbaa !398
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !434
  %5 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %1, ptr noundef %4) #21
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !398
  tail call void @print_current_pass(ptr noundef %8) #21
  %9 = load ptr, ptr @stderr, align 8, !tbaa !398
  %10 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 18, i64 1, ptr %9) #24
  %11 = load ptr, ptr @stderr, align 8, !tbaa !398
  tail call void @df_print_regset(ptr noundef %11, ptr noundef %1) #21
  %12 = load ptr, ptr @stderr, align 8, !tbaa !398
  %13 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 22, i64 1, ptr %12) #24
  %14 = load ptr, ptr @stderr, align 8, !tbaa !398
  %15 = load ptr, ptr @df, align 8, !tbaa !398
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !434
  tail call void @df_print_regset(ptr noundef %14, ptr noundef %17) #21
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4618, ptr noundef nonnull @.str.9) #21
  br label %18

18:                                               ; preds = %7, %0
  tail call void @bitmap_obstack_free(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_bb_verify(ptr noundef %0) unnamed_addr #0 !prof !581 !PGOFuncName !926 {
  %2 = alloca %struct.df_collection_rec, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !422
  %5 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %4) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %6 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 128) #22, !range !545
  %7 = alloca i8, i64 %6, align 16
  %8 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 128, ptr noundef nonnull %7) #22
  store ptr %8, ptr %2, align 8, !tbaa !546
  %9 = call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 32) #22, !range !545
  %10 = alloca i8, i64 %9, align 16
  %11 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %10) #22
  %12 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !564
  %13 = alloca i8, i64 %9, align 16
  %14 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %13) #22
  %15 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !570
  %16 = alloca [264 x i8], align 16
  %17 = call fastcc ptr @VEC_df_mw_hardreg_ptr_stack_alloc1(ptr noundef nonnull %16) #22
  %18 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !571
  %19 = icmp eq ptr %5, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4548, ptr noundef nonnull @.str.9) #21
  br label %21

21:                                               ; preds = %1, %20
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !510
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !510
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %21, %41
  %28 = phi ptr [ %43, %41 ], [ %25, %21 ]
  %29 = load ptr, ptr %22, align 8, !tbaa !510
  %30 = load ptr, ptr %29, align 8, !tbaa !927
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !510
  %33 = icmp eq ptr %28, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %27
  %35 = load i32, ptr %28, align 8
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -7
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call fastcc zeroext i8 @df_insn_refs_verify(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %28, i8 noundef zeroext 1) #22, !range !692
  call fastcc void @df_free_collection_rec(ptr noundef nonnull %2) #22
  br label %41

41:                                               ; preds = %34, %39
  %42 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !510
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %27, !llvm.loop !928

45:                                               ; preds = %27, %41, %21
  call fastcc void @df_bb_refs_collect(ptr noundef nonnull %2, ptr noundef nonnull %0) #22
  %46 = load ptr, ptr %2, align 8, !tbaa !546
  %47 = load i32, ptr %3, align 8, !tbaa !422
  %48 = call fastcc ptr @df_get_artificial_defs(i32 noundef %47) #22
  %49 = call fastcc zeroext i8 @df_refs_verify(ptr noundef %46, ptr noundef %48, i8 noundef zeroext 1) #22, !range !692
  %50 = load ptr, ptr %12, align 8, !tbaa !564
  %51 = load i32, ptr %3, align 8, !tbaa !422
  %52 = call fastcc ptr @df_get_artificial_uses(i32 noundef %51) #22
  %53 = call fastcc zeroext i8 @df_refs_verify(ptr noundef %50, ptr noundef %52, i8 noundef zeroext 1) #22, !range !692
  call fastcc void @df_free_collection_rec(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_reg_chain_verify_unmarked(ptr noundef readonly %0) unnamed_addr #0 !prof !581 !PGOFuncName !929 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !510
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %3, !llvm.loop !930

13:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_scan_free_bb_info(ptr noundef %0, ptr noundef %1) #0 !prof !931 !PGOFuncName !932 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !422
  %5 = icmp eq ptr %1, null
  br i1 %5, label %52, label %6, !prof !933

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !510
  %9 = load ptr, ptr %8, align 8, !tbaa !510
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11, !prof !934

11:                                               ; preds = %6, %27
  %12 = phi ptr [ %29, %27 ], [ %9, %6 ]
  %13 = load ptr, ptr %7, align 8, !tbaa !510
  %14 = getelementptr inbounds %struct.rtl_bb_info, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !573
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !510
  %18 = icmp eq ptr %12, %17
  br i1 %18, label %31, label %19, !prof !935

19:                                               ; preds = %11
  %20 = load i32, ptr %12, align 8
  %21 = and i32 %20, 65535
  %22 = add nsw i32 %21, -7
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !510
  tail call void @df_insn_delete(ptr noundef nonnull %0, i32 noundef %26) #22
  br label %27

27:                                               ; preds = %19, %24
  %28 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !510
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %11, !prof !667, !llvm.loop !936

31:                                               ; preds = %11, %27, %6
  %32 = load ptr, ptr @df, align 8, !tbaa !398
  %33 = getelementptr inbounds %struct.df, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !398
  %35 = getelementptr inbounds %struct.dataflow, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !473
  %37 = icmp ult i32 %4, %36
  br i1 %37, label %38, label %40, !prof !935

38:                                               ; preds = %31
  %39 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %4) #22
  br label %40

40:                                               ; preds = %38, %31
  %41 = phi ptr [ %39, %38 ], [ %1, %31 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !456
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %42) #22
  %43 = getelementptr inbounds %struct.df_scan_bb_info, ptr %41, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !459
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %44) #22
  %45 = load ptr, ptr %41, align 8, !tbaa !456
  tail call fastcc void @df_ref_chain_delete(ptr noundef %45) #22
  %46 = load ptr, ptr %43, align 8, !tbaa !459
  tail call fastcc void @df_ref_chain_delete(ptr noundef %46) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %47 = load ptr, ptr @df, align 8, !tbaa !398
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !398
  %50 = getelementptr inbounds %struct.dataflow, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !406
  tail call void @pool_free(ptr noundef %51, ptr noundef nonnull %41) #21
  br label %52

52:                                               ; preds = %40, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_scan_free() #0 !prof !489 !PGOFuncName !937 {
  %1 = load ptr, ptr @df, align 8, !tbaa !398
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !398
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !402
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !509

7:                                                ; preds = %0
  tail call fastcc void @df_scan_free_internal() #22
  %8 = load ptr, ptr @df, align 8, !tbaa !398
  br label %9

9:                                                ; preds = %7, %0
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !584
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !511

14:                                               ; preds = %9
  tail call void @bitmap_obstack_free(ptr noundef nonnull %12) #21
  %15 = load ptr, ptr @df, align 8, !tbaa !398
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 2
  store ptr null, ptr %16, align 8, !tbaa !584
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi ptr [ %15, %14 ], [ %10, %9 ]
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !398
  tail call void @free(ptr noundef %20) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_scan_start_dump(ptr noundef %0) #0 !prof !581 !PGOFuncName !938 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 25, i64 1, ptr %0)
  %3 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !398
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %3) #21
  %4 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 24, i64 1, ptr %0)
  %5 = load ptr, ptr @df, align 8, !tbaa !398
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !428
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %7) #21
  %8 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 35, i64 1, ptr %0)
  %9 = load ptr, ptr @df, align 8, !tbaa !398
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !431
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %11) #21
  %12 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 30, i64 1, ptr %0)
  %13 = load ptr, ptr @df, align 8, !tbaa !398
  %14 = getelementptr inbounds %struct.df, ptr %13, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !432
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %15) #21
  %16 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 22, i64 1, ptr %0)
  %17 = load ptr, ptr @df, align 8, !tbaa !398
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !433
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %19) #21
  %20 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 21, i64 1, ptr %0)
  %21 = load ptr, ptr @df, align 8, !tbaa !398
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !434
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %23) #21
  %24 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 20, i64 1, ptr %0)
  br label %25

25:                                               ; preds = %1, %34
  %26 = phi i64 [ 0, %1 ], [ %35, %34 ]
  %27 = trunc i64 %26 to i32
  %28 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %27) #22
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %26
  %32 = load ptr, ptr %31, align 8, !tbaa !398
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %27, ptr noundef %32) #22
  br label %34

34:                                               ; preds = %25, %30
  %35 = add nuw nsw i64 %26, 1
  %36 = icmp eq i64 %35, 53
  br i1 %36, label %37, label %25, !llvm.loop !939

37:                                               ; preds = %34
  %38 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 16, i64 1, ptr %0)
  %39 = load ptr, ptr @df, align 8, !tbaa !398
  %40 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 9
  %41 = load i32, ptr %40, align 4, !tbaa !477
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %149

43:                                               ; preds = %37, %139
  %44 = phi ptr [ %140, %139 ], [ %39, %37 ]
  %45 = phi i64 [ %144, %139 ], [ 0, %37 ]
  %46 = phi i32 [ %143, %139 ], [ 0, %37 ]
  %47 = phi i32 [ %142, %139 ], [ 0, %37 ]
  %48 = phi i32 [ %141, %139 ], [ 0, %37 ]
  %49 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !469
  %51 = getelementptr inbounds ptr, ptr %50, i64 %45
  %52 = load ptr, ptr %51, align 8, !tbaa !398
  %53 = getelementptr inbounds %struct.df_reg_info, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !608
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !470
  %59 = getelementptr inbounds ptr, ptr %58, i64 %45
  %60 = load ptr, ptr %59, align 8, !tbaa !398
  %61 = getelementptr inbounds %struct.df_reg_info, ptr %60, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !608
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !471
  %67 = getelementptr inbounds ptr, ptr %66, i64 %45
  %68 = load ptr, ptr %67, align 8, !tbaa !398
  %69 = getelementptr inbounds %struct.df_reg_info, ptr %68, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !608
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %139, label %72

72:                                               ; preds = %64, %56, %43
  %73 = trunc i64 %45 to i32
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %73) #22
  %75 = load ptr, ptr @df, align 8, !tbaa !398
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !469
  %78 = getelementptr inbounds ptr, ptr %77, i64 %45
  %79 = load ptr, ptr %78, align 8, !tbaa !398
  %80 = getelementptr inbounds %struct.df_reg_info, ptr %79, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !608
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %72
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %81) #22
  %85 = load ptr, ptr @df, align 8, !tbaa !398
  %86 = getelementptr inbounds %struct.df, ptr %85, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !469
  %88 = getelementptr inbounds ptr, ptr %87, i64 %45
  %89 = load ptr, ptr %88, align 8, !tbaa !398
  %90 = getelementptr inbounds %struct.df_reg_info, ptr %89, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !608
  %92 = add i32 %91, %48
  br label %93

93:                                               ; preds = %83, %72
  %94 = phi ptr [ %85, %83 ], [ %75, %72 ]
  %95 = phi i32 [ %92, %83 ], [ %48, %72 ]
  %96 = phi ptr [ @.str.36, %83 ], [ @.str.33, %72 ]
  %97 = getelementptr inbounds %struct.df, ptr %94, i64 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !470
  %99 = getelementptr inbounds ptr, ptr %98, i64 %45
  %100 = load ptr, ptr %99, align 8, !tbaa !398
  %101 = getelementptr inbounds %struct.df_reg_info, ptr %100, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !608
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %93
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull %96, i32 noundef %102) #22
  %106 = load ptr, ptr @df, align 8, !tbaa !398
  %107 = getelementptr inbounds %struct.df, ptr %106, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !470
  %109 = getelementptr inbounds ptr, ptr %108, i64 %45
  %110 = load ptr, ptr %109, align 8, !tbaa !398
  %111 = getelementptr inbounds %struct.df_reg_info, ptr %110, i64 0, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !608
  %113 = add i32 %112, %47
  br label %114

114:                                              ; preds = %104, %93
  %115 = phi ptr [ %106, %104 ], [ %94, %93 ]
  %116 = phi i32 [ %113, %104 ], [ %47, %93 ]
  %117 = phi ptr [ @.str.36, %104 ], [ %96, %93 ]
  %118 = getelementptr inbounds %struct.df, ptr %115, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !471
  %120 = getelementptr inbounds ptr, ptr %119, i64 %45
  %121 = load ptr, ptr %120, align 8, !tbaa !398
  %122 = getelementptr inbounds %struct.df_reg_info, ptr %121, i64 0, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !608
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %114
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef nonnull %117, i32 noundef %123) #22
  %127 = load ptr, ptr @df, align 8, !tbaa !398
  %128 = getelementptr inbounds %struct.df, ptr %127, i64 0, i32 7
  %129 = load ptr, ptr %128, align 8, !tbaa !471
  %130 = getelementptr inbounds ptr, ptr %129, i64 %45
  %131 = load ptr, ptr %130, align 8, !tbaa !398
  %132 = getelementptr inbounds %struct.df_reg_info, ptr %131, i64 0, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !608
  %134 = add i32 %133, %46
  br label %135

135:                                              ; preds = %125, %114
  %136 = phi i32 [ %134, %125 ], [ %46, %114 ]
  %137 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 2, i64 1, ptr %0)
  %138 = load ptr, ptr @df, align 8, !tbaa !398
  br label %139

139:                                              ; preds = %64, %135
  %140 = phi ptr [ %138, %135 ], [ %44, %64 ]
  %141 = phi i32 [ %95, %135 ], [ %48, %64 ]
  %142 = phi i32 [ %116, %135 ], [ %47, %64 ]
  %143 = phi i32 [ %136, %135 ], [ %46, %64 ]
  %144 = add nuw nsw i64 %45, 1
  %145 = getelementptr inbounds %struct.df, ptr %140, i64 0, i32 9
  %146 = load i32, ptr %145, align 4, !tbaa !477
  %147 = sext i32 %146 to i64
  %148 = icmp slt i64 %144, %147
  br i1 %148, label %43, label %149, !llvm.loop !940

149:                                              ; preds = %139, %37
  %150 = phi i32 [ 0, %37 ], [ %141, %139 ]
  %151 = phi i32 [ 0, %37 ], [ %142, %139 ]
  %152 = phi i32 [ 0, %37 ], [ %143, %139 ]
  %153 = load ptr, ptr @cfun, align 8, !tbaa !398
  %154 = getelementptr inbounds %struct.function, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !419
  %156 = load ptr, ptr %155, align 8, !tbaa !494
  %157 = getelementptr inbounds %struct.control_flow_graph, ptr %155, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !496
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %156, i64 0, i32 6
  %160 = load ptr, ptr %159, align 8, !tbaa !495
  %161 = icmp eq ptr %160, %158
  br i1 %161, label %203, label %162

162:                                              ; preds = %149, %197
  %163 = phi ptr [ %201, %197 ], [ %160, %149 ]
  %164 = phi i32 [ %199, %197 ], [ 0, %149 ]
  %165 = phi i32 [ %198, %197 ], [ 0, %149 ]
  %166 = getelementptr inbounds %struct.basic_block_def, ptr %163, i64 0, i32 7
  %167 = load ptr, ptr %166, align 8, !tbaa !510
  %168 = load ptr, ptr %167, align 8, !tbaa !510
  %169 = icmp eq ptr %168, null
  br i1 %169, label %197, label %170

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.rtl_bb_info, ptr %167, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !573
  %173 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1, i32 0, i32 0, i64 2
  %174 = load ptr, ptr %173, align 8, !tbaa !510
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
  %195 = load ptr, ptr %194, align 8, !tbaa !510
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %175, !llvm.loop !941

197:                                              ; preds = %191, %175, %162
  %198 = phi i32 [ %165, %162 ], [ %178, %175 ], [ %192, %191 ]
  %199 = phi i32 [ %164, %162 ], [ %177, %175 ], [ %193, %191 ]
  %200 = getelementptr inbounds %struct.basic_block_def, ptr %163, i64 0, i32 6
  %201 = load ptr, ptr %200, align 8, !tbaa !495
  %202 = icmp eq ptr %201, %158
  br i1 %202, label %203, label %162, !llvm.loop !942

203:                                              ; preds = %197, %149
  %204 = phi i32 [ 0, %149 ], [ %198, %197 ]
  %205 = phi i32 [ 0, %149 ], [ %199, %197 ]
  %206 = add nsw i32 %151, %150
  %207 = add nsw i32 %206, %152
  %208 = add nsw i32 %205, %204
  %209 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %207, i32 noundef %150, i32 noundef %151, i32 noundef %152, i32 noundef %208, i32 noundef %204, i32 noundef %205) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_scan_start_block(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !581 !PGOFuncName !943 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !422
  %5 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %4) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %4) #22
  %9 = load ptr, ptr %5, align 8, !tbaa !456
  tail call void @df_refs_chain_dump(ptr noundef %9, i8 noundef zeroext 1, ptr noundef %1) #21
  %10 = load i32, ptr %3, align 8, !tbaa !422
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %10) #22
  %12 = getelementptr inbounds %struct.df_scan_bb_info, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !459
  tail call void @df_refs_chain_dump(ptr noundef %13, i8 noundef zeroext 1, ptr noundef %1) #21
  %14 = tail call i32 @fputc(i32 10, ptr %1)
  br label %15

15:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: optsize
declare void @df_print_regset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_refs_chain_dump(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_chain_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_free_ref(ptr noundef %0) unnamed_addr #0 !prof !944 !PGOFuncName !945 {
  %2 = load ptr, ptr @df, align 8, !tbaa !398
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !398
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !402
  %7 = load i32, ptr %0, align 8
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %18 [
    i8 0, label %15
    i8 1, label %9
    i8 2, label %11
    i8 3, label %13
  ], !prof !946

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
  %17 = load ptr, ptr %16, align 8, !tbaa !398
  tail call void @pool_free(ptr noundef %17, ptr noundef nonnull %0) #21
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: optsize
declare ptr @vec_stack_p_reserve_exact_1(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_df_ref_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !947 !PGOFuncName !948 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !949

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !950
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !952

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !398
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !398
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_df_mw_hardreg_ptr_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !953 !PGOFuncName !954 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !955

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !884
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !955

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !398
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !398
  ret i32 %14
}

; Function Attrs: optsize
declare void @vec_stack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_reorganize_refs_by_reg_by_insn(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !581 !PGOFuncName !956 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %7 = load ptr, ptr @df, align 8, !tbaa !398
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !477
  %10 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 27
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 0, i32 53
  %15 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !957
  %17 = zext i32 %9 to i64
  %18 = shl nuw nsw i64 %17, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %16, i8 0, i64 %18, i1 false)
  %19 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !958
  %21 = load ptr, ptr @df, align 8, !tbaa !398
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 4, !tbaa !477
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %20, i8 0, i64 %25, i1 false)
  %26 = tail call fastcc i32 @df_count_refs(i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  %27 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 5
  store i32 %26, ptr %27, align 8, !tbaa !616
  tail call fastcc void @df_check_and_grow_ref_info(ptr noundef %0) #22
  %28 = load ptr, ptr @df, align 8, !tbaa !398
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !584
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %30, ptr noundef nonnull %6) #22
  %31 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !692
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %4
  %34 = load ptr, ptr @cfun, align 8, !tbaa !398
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !419
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !492
  %39 = icmp eq i8 %1, 0
  %40 = icmp eq i8 %2, 0
  %41 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 10
  %42 = icmp eq i8 %3, 0
  br label %49

43:                                               ; preds = %185, %4
  %44 = icmp ult i32 %14, %9
  br i1 %44, label %45, label %197

45:                                               ; preds = %43
  %46 = load ptr, ptr %15, align 8, !tbaa !957
  %47 = load ptr, ptr %19, align 8, !tbaa !958
  %48 = zext nneg i32 %14 to i64
  br label %188

49:                                               ; preds = %33, %185
  %50 = load i32, ptr %6, align 4, !tbaa !479
  %51 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %38, i32 noundef %50) #22
  br i1 %39, label %70, label %52

52:                                               ; preds = %49
  %53 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %50) #22
  %54 = load ptr, ptr %53, align 8, !tbaa !398
  %55 = icmp eq ptr %54, null
  br i1 %55, label %70, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %19, align 8, !tbaa !958
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi ptr [ %54, %56 ], [ %68, %58 ]
  %60 = phi ptr [ %53, %56 ], [ %67, %58 ]
  %61 = getelementptr inbounds %struct.df_base_ref, ptr %59, i64 0, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !510
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %57, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !479
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4, !tbaa !479
  %67 = getelementptr inbounds ptr, ptr %60, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !398
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %58, !llvm.loop !959

70:                                               ; preds = %58, %52, %49
  br i1 %40, label %89, label %71

71:                                               ; preds = %70
  %72 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %50) #22
  %73 = load ptr, ptr %72, align 8, !tbaa !398
  %74 = icmp eq ptr %73, null
  br i1 %74, label %89, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %19, align 8, !tbaa !958
  br label %77

77:                                               ; preds = %75, %77
  %78 = phi ptr [ %73, %75 ], [ %87, %77 ]
  %79 = phi ptr [ %72, %75 ], [ %86, %77 ]
  %80 = getelementptr inbounds %struct.df_base_ref, ptr %78, i64 0, i32 6
  %81 = load i32, ptr %80, align 8, !tbaa !510
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, ptr %76, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !479
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 4, !tbaa !479
  %86 = getelementptr inbounds ptr, ptr %79, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !398
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %77, !llvm.loop !960

89:                                               ; preds = %77, %71, %70
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !510
  %92 = load ptr, ptr %91, align 8, !tbaa !510
  %93 = icmp eq ptr %92, null
  br i1 %93, label %185, label %94

94:                                               ; preds = %89, %181
  %95 = phi ptr [ %183, %181 ], [ %92, %89 ]
  %96 = load ptr, ptr %90, align 8, !tbaa !510
  %97 = getelementptr inbounds %struct.rtl_bb_info, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !573
  %99 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1, i32 0, i32 0, i64 2
  %100 = load ptr, ptr %99, align 8, !tbaa !510
  %101 = icmp eq ptr %95, %100
  br i1 %101, label %185, label %102

102:                                              ; preds = %94
  %103 = load i32, ptr %95, align 8
  %104 = and i32 %103, 65535
  %105 = add nsw i32 %104, -7
  %106 = icmp ult i32 %105, 4
  br i1 %106, label %107, label %181

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %109 = load i32, ptr %108, align 8, !tbaa !510
  br i1 %39, label %133, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %41, align 8, !tbaa !441
  %112 = zext i32 %109 to i64
  %113 = getelementptr inbounds ptr, ptr %111, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !398
  %115 = getelementptr inbounds %struct.df_insn_info, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !443
  %117 = load ptr, ptr %116, align 8, !tbaa !398
  %118 = icmp eq ptr %117, null
  br i1 %118, label %133, label %119

119:                                              ; preds = %110
  %120 = load ptr, ptr %19, align 8, !tbaa !958
  br label %121

121:                                              ; preds = %119, %121
  %122 = phi ptr [ %117, %119 ], [ %131, %121 ]
  %123 = phi ptr [ %116, %119 ], [ %130, %121 ]
  %124 = getelementptr inbounds %struct.df_base_ref, ptr %122, i64 0, i32 6
  %125 = load i32, ptr %124, align 8, !tbaa !510
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, ptr %120, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !479
  %129 = add i32 %128, 1
  store i32 %129, ptr %127, align 4, !tbaa !479
  %130 = getelementptr inbounds ptr, ptr %123, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !398
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %121, !llvm.loop !961

133:                                              ; preds = %121, %110, %107
  br i1 %40, label %157, label %134

134:                                              ; preds = %133
  %135 = load ptr, ptr %41, align 8, !tbaa !441
  %136 = zext i32 %109 to i64
  %137 = getelementptr inbounds ptr, ptr %135, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !398
  %139 = getelementptr inbounds %struct.df_insn_info, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !447
  %141 = load ptr, ptr %140, align 8, !tbaa !398
  %142 = icmp eq ptr %141, null
  br i1 %142, label %157, label %143

143:                                              ; preds = %134
  %144 = load ptr, ptr %19, align 8, !tbaa !958
  br label %145

145:                                              ; preds = %143, %145
  %146 = phi ptr [ %141, %143 ], [ %155, %145 ]
  %147 = phi ptr [ %140, %143 ], [ %154, %145 ]
  %148 = getelementptr inbounds %struct.df_base_ref, ptr %146, i64 0, i32 6
  %149 = load i32, ptr %148, align 8, !tbaa !510
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, ptr %144, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !479
  %153 = add i32 %152, 1
  store i32 %153, ptr %151, align 4, !tbaa !479
  %154 = getelementptr inbounds ptr, ptr %147, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !398
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %145, !llvm.loop !962

157:                                              ; preds = %145, %134, %133
  br i1 %42, label %181, label %158

158:                                              ; preds = %157
  %159 = load ptr, ptr %41, align 8, !tbaa !441
  %160 = zext i32 %109 to i64
  %161 = getelementptr inbounds ptr, ptr %159, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !398
  %163 = getelementptr inbounds %struct.df_insn_info, ptr %162, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !449
  %165 = load ptr, ptr %164, align 8, !tbaa !398
  %166 = icmp eq ptr %165, null
  br i1 %166, label %181, label %167

167:                                              ; preds = %158
  %168 = load ptr, ptr %19, align 8, !tbaa !958
  br label %169

169:                                              ; preds = %167, %169
  %170 = phi ptr [ %165, %167 ], [ %179, %169 ]
  %171 = phi ptr [ %164, %167 ], [ %178, %169 ]
  %172 = getelementptr inbounds %struct.df_base_ref, ptr %170, i64 0, i32 6
  %173 = load i32, ptr %172, align 8, !tbaa !510
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32, ptr %168, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !479
  %177 = add i32 %176, 1
  store i32 %177, ptr %175, align 4, !tbaa !479
  %178 = getelementptr inbounds ptr, ptr %171, i64 1
  %179 = load ptr, ptr %178, align 8, !tbaa !398
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %169, !llvm.loop !963

181:                                              ; preds = %169, %158, %102, %157
  %182 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 2
  %183 = load ptr, ptr %182, align 8, !tbaa !510
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %94, !llvm.loop !964

185:                                              ; preds = %94, %181, %89
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %186 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !692
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %43, label %49, !llvm.loop !965

188:                                              ; preds = %45, %188
  %189 = phi i64 [ %48, %45 ], [ %195, %188 ]
  %190 = phi i32 [ 0, %45 ], [ %194, %188 ]
  %191 = getelementptr inbounds i32, ptr %46, i64 %189
  store i32 %190, ptr %191, align 4, !tbaa !479
  %192 = getelementptr inbounds i32, ptr %47, i64 %189
  %193 = load i32, ptr %192, align 4, !tbaa !479
  %194 = add i32 %193, %190
  store i32 0, ptr %192, align 4, !tbaa !479
  %195 = add nuw nsw i64 %189, 1
  %196 = icmp eq i64 %195, %17
  br i1 %196, label %197, label %188, !llvm.loop !966

197:                                              ; preds = %188, %43
  %198 = phi i32 [ 0, %43 ], [ %194, %188 ]
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %30, ptr noundef nonnull %6) #22
  %199 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !692
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %405, label %201

201:                                              ; preds = %197
  %202 = icmp eq i8 %1, 0
  %203 = icmp eq i8 %2, 0
  %204 = icmp eq i8 %3, 0
  br label %205

205:                                              ; preds = %201, %402
  %206 = load ptr, ptr @cfun, align 8, !tbaa !398
  %207 = getelementptr inbounds %struct.function, ptr %206, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !419
  %209 = getelementptr inbounds %struct.control_flow_graph, ptr %208, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !492
  %211 = load i32, ptr %6, align 4, !tbaa !479
  %212 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %210, i32 noundef %211) #22
  br i1 %202, label %241, label %213

213:                                              ; preds = %205
  %214 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %211) #22
  %215 = load ptr, ptr %214, align 8, !tbaa !398
  %216 = icmp eq ptr %215, null
  br i1 %216, label %241, label %217

217:                                              ; preds = %213, %237
  %218 = phi ptr [ %239, %237 ], [ %215, %213 ]
  %219 = phi ptr [ %238, %237 ], [ %214, %213 ]
  %220 = getelementptr inbounds %struct.df_base_ref, ptr %218, i64 0, i32 6
  %221 = load i32, ptr %220, align 8, !tbaa !510
  %222 = icmp ult i32 %221, %14
  br i1 %222, label %237, label %223

223:                                              ; preds = %217
  %224 = load ptr, ptr %15, align 8, !tbaa !957
  %225 = zext i32 %221 to i64
  %226 = getelementptr inbounds i32, ptr %224, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !479
  %228 = load ptr, ptr %19, align 8, !tbaa !958
  %229 = getelementptr inbounds i32, ptr %228, i64 %225
  %230 = load i32, ptr %229, align 4, !tbaa !479
  %231 = add i32 %230, 1
  store i32 %231, ptr %229, align 4, !tbaa !479
  %232 = add i32 %230, %227
  %233 = getelementptr inbounds %struct.df_base_ref, ptr %218, i64 0, i32 7
  store i32 %232, ptr %233, align 4, !tbaa !510
  %234 = load ptr, ptr %0, align 8, !tbaa !615
  %235 = zext i32 %232 to i64
  %236 = getelementptr inbounds ptr, ptr %234, i64 %235
  store ptr %218, ptr %236, align 8, !tbaa !398
  br label %237

237:                                              ; preds = %223, %217
  %238 = getelementptr inbounds ptr, ptr %219, i64 1
  %239 = load ptr, ptr %238, align 8, !tbaa !398
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %217, !llvm.loop !967

241:                                              ; preds = %237, %213, %205
  br i1 %203, label %270, label %242

242:                                              ; preds = %241
  %243 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %211) #22
  %244 = load ptr, ptr %243, align 8, !tbaa !398
  %245 = icmp eq ptr %244, null
  br i1 %245, label %270, label %246

246:                                              ; preds = %242, %266
  %247 = phi ptr [ %268, %266 ], [ %244, %242 ]
  %248 = phi ptr [ %267, %266 ], [ %243, %242 ]
  %249 = getelementptr inbounds %struct.df_base_ref, ptr %247, i64 0, i32 6
  %250 = load i32, ptr %249, align 8, !tbaa !510
  %251 = icmp ult i32 %250, %14
  br i1 %251, label %266, label %252

252:                                              ; preds = %246
  %253 = load ptr, ptr %15, align 8, !tbaa !957
  %254 = zext i32 %250 to i64
  %255 = getelementptr inbounds i32, ptr %253, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !479
  %257 = load ptr, ptr %19, align 8, !tbaa !958
  %258 = getelementptr inbounds i32, ptr %257, i64 %254
  %259 = load i32, ptr %258, align 4, !tbaa !479
  %260 = add i32 %259, 1
  store i32 %260, ptr %258, align 4, !tbaa !479
  %261 = add i32 %259, %256
  %262 = getelementptr inbounds %struct.df_base_ref, ptr %247, i64 0, i32 7
  store i32 %261, ptr %262, align 4, !tbaa !510
  %263 = load ptr, ptr %0, align 8, !tbaa !615
  %264 = zext i32 %261 to i64
  %265 = getelementptr inbounds ptr, ptr %263, i64 %264
  store ptr %247, ptr %265, align 8, !tbaa !398
  br label %266

266:                                              ; preds = %252, %246
  %267 = getelementptr inbounds ptr, ptr %248, i64 1
  %268 = load ptr, ptr %267, align 8, !tbaa !398
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %246, !llvm.loop !968

270:                                              ; preds = %266, %242, %241
  %271 = getelementptr inbounds %struct.basic_block_def, ptr %212, i64 0, i32 7
  %272 = load ptr, ptr %271, align 8, !tbaa !510
  %273 = load ptr, ptr %272, align 8, !tbaa !510
  %274 = icmp eq ptr %273, null
  br i1 %274, label %402, label %275

275:                                              ; preds = %270, %398
  %276 = phi ptr [ %400, %398 ], [ %273, %270 ]
  %277 = load ptr, ptr %271, align 8, !tbaa !510
  %278 = getelementptr inbounds %struct.rtl_bb_info, ptr %277, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !573
  %280 = getelementptr inbounds %struct.rtx_def, ptr %279, i64 0, i32 1, i32 0, i32 0, i64 2
  %281 = load ptr, ptr %280, align 8, !tbaa !510
  %282 = icmp eq ptr %276, %281
  br i1 %282, label %402, label %283

283:                                              ; preds = %275
  %284 = load i32, ptr %276, align 8
  %285 = and i32 %284, 65535
  %286 = add nsw i32 %285, -7
  %287 = icmp ult i32 %286, 4
  br i1 %287, label %288, label %398

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.rtx_def, ptr %276, i64 0, i32 1
  %290 = load i32, ptr %289, align 8, !tbaa !510
  br i1 %202, label %326, label %291

291:                                              ; preds = %288
  %292 = load ptr, ptr @df, align 8, !tbaa !398
  %293 = getelementptr inbounds %struct.df, ptr %292, i64 0, i32 10
  %294 = load ptr, ptr %293, align 8, !tbaa !441
  %295 = zext i32 %290 to i64
  %296 = getelementptr inbounds ptr, ptr %294, i64 %295
  %297 = load ptr, ptr %296, align 8, !tbaa !398
  %298 = getelementptr inbounds %struct.df_insn_info, ptr %297, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !443
  %300 = load ptr, ptr %299, align 8, !tbaa !398
  %301 = icmp eq ptr %300, null
  br i1 %301, label %326, label %302

302:                                              ; preds = %291, %322
  %303 = phi ptr [ %324, %322 ], [ %300, %291 ]
  %304 = phi ptr [ %323, %322 ], [ %299, %291 ]
  %305 = getelementptr inbounds %struct.df_base_ref, ptr %303, i64 0, i32 6
  %306 = load i32, ptr %305, align 8, !tbaa !510
  %307 = icmp ult i32 %306, %14
  br i1 %307, label %322, label %308

308:                                              ; preds = %302
  %309 = load ptr, ptr %15, align 8, !tbaa !957
  %310 = zext i32 %306 to i64
  %311 = getelementptr inbounds i32, ptr %309, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !479
  %313 = load ptr, ptr %19, align 8, !tbaa !958
  %314 = getelementptr inbounds i32, ptr %313, i64 %310
  %315 = load i32, ptr %314, align 4, !tbaa !479
  %316 = add i32 %315, 1
  store i32 %316, ptr %314, align 4, !tbaa !479
  %317 = add i32 %315, %312
  %318 = getelementptr inbounds %struct.df_base_ref, ptr %303, i64 0, i32 7
  store i32 %317, ptr %318, align 4, !tbaa !510
  %319 = load ptr, ptr %0, align 8, !tbaa !615
  %320 = zext i32 %317 to i64
  %321 = getelementptr inbounds ptr, ptr %319, i64 %320
  store ptr %303, ptr %321, align 8, !tbaa !398
  br label %322

322:                                              ; preds = %308, %302
  %323 = getelementptr inbounds ptr, ptr %304, i64 1
  %324 = load ptr, ptr %323, align 8, !tbaa !398
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %302, !llvm.loop !969

326:                                              ; preds = %322, %291, %288
  br i1 %203, label %362, label %327

327:                                              ; preds = %326
  %328 = load ptr, ptr @df, align 8, !tbaa !398
  %329 = getelementptr inbounds %struct.df, ptr %328, i64 0, i32 10
  %330 = load ptr, ptr %329, align 8, !tbaa !441
  %331 = zext i32 %290 to i64
  %332 = getelementptr inbounds ptr, ptr %330, i64 %331
  %333 = load ptr, ptr %332, align 8, !tbaa !398
  %334 = getelementptr inbounds %struct.df_insn_info, ptr %333, i64 0, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !447
  %336 = load ptr, ptr %335, align 8, !tbaa !398
  %337 = icmp eq ptr %336, null
  br i1 %337, label %362, label %338

338:                                              ; preds = %327, %358
  %339 = phi ptr [ %360, %358 ], [ %336, %327 ]
  %340 = phi ptr [ %359, %358 ], [ %335, %327 ]
  %341 = getelementptr inbounds %struct.df_base_ref, ptr %339, i64 0, i32 6
  %342 = load i32, ptr %341, align 8, !tbaa !510
  %343 = icmp ult i32 %342, %14
  br i1 %343, label %358, label %344

344:                                              ; preds = %338
  %345 = load ptr, ptr %15, align 8, !tbaa !957
  %346 = zext i32 %342 to i64
  %347 = getelementptr inbounds i32, ptr %345, i64 %346
  %348 = load i32, ptr %347, align 4, !tbaa !479
  %349 = load ptr, ptr %19, align 8, !tbaa !958
  %350 = getelementptr inbounds i32, ptr %349, i64 %346
  %351 = load i32, ptr %350, align 4, !tbaa !479
  %352 = add i32 %351, 1
  store i32 %352, ptr %350, align 4, !tbaa !479
  %353 = add i32 %351, %348
  %354 = getelementptr inbounds %struct.df_base_ref, ptr %339, i64 0, i32 7
  store i32 %353, ptr %354, align 4, !tbaa !510
  %355 = load ptr, ptr %0, align 8, !tbaa !615
  %356 = zext i32 %353 to i64
  %357 = getelementptr inbounds ptr, ptr %355, i64 %356
  store ptr %339, ptr %357, align 8, !tbaa !398
  br label %358

358:                                              ; preds = %344, %338
  %359 = getelementptr inbounds ptr, ptr %340, i64 1
  %360 = load ptr, ptr %359, align 8, !tbaa !398
  %361 = icmp eq ptr %360, null
  br i1 %361, label %362, label %338, !llvm.loop !970

362:                                              ; preds = %358, %327, %326
  br i1 %204, label %398, label %363

363:                                              ; preds = %362
  %364 = load ptr, ptr @df, align 8, !tbaa !398
  %365 = getelementptr inbounds %struct.df, ptr %364, i64 0, i32 10
  %366 = load ptr, ptr %365, align 8, !tbaa !441
  %367 = zext i32 %290 to i64
  %368 = getelementptr inbounds ptr, ptr %366, i64 %367
  %369 = load ptr, ptr %368, align 8, !tbaa !398
  %370 = getelementptr inbounds %struct.df_insn_info, ptr %369, i64 0, i32 3
  %371 = load ptr, ptr %370, align 8, !tbaa !449
  %372 = load ptr, ptr %371, align 8, !tbaa !398
  %373 = icmp eq ptr %372, null
  br i1 %373, label %398, label %374

374:                                              ; preds = %363, %394
  %375 = phi ptr [ %396, %394 ], [ %372, %363 ]
  %376 = phi ptr [ %395, %394 ], [ %371, %363 ]
  %377 = getelementptr inbounds %struct.df_base_ref, ptr %375, i64 0, i32 6
  %378 = load i32, ptr %377, align 8, !tbaa !510
  %379 = icmp ult i32 %378, %14
  br i1 %379, label %394, label %380

380:                                              ; preds = %374
  %381 = load ptr, ptr %15, align 8, !tbaa !957
  %382 = zext i32 %378 to i64
  %383 = getelementptr inbounds i32, ptr %381, i64 %382
  %384 = load i32, ptr %383, align 4, !tbaa !479
  %385 = load ptr, ptr %19, align 8, !tbaa !958
  %386 = getelementptr inbounds i32, ptr %385, i64 %382
  %387 = load i32, ptr %386, align 4, !tbaa !479
  %388 = add i32 %387, 1
  store i32 %388, ptr %386, align 4, !tbaa !479
  %389 = add i32 %387, %384
  %390 = getelementptr inbounds %struct.df_base_ref, ptr %375, i64 0, i32 7
  store i32 %389, ptr %390, align 4, !tbaa !510
  %391 = load ptr, ptr %0, align 8, !tbaa !615
  %392 = zext i32 %389 to i64
  %393 = getelementptr inbounds ptr, ptr %391, i64 %392
  store ptr %375, ptr %393, align 8, !tbaa !398
  br label %394

394:                                              ; preds = %380, %374
  %395 = getelementptr inbounds ptr, ptr %376, i64 1
  %396 = load ptr, ptr %395, align 8, !tbaa !398
  %397 = icmp eq ptr %396, null
  br i1 %397, label %398, label %374, !llvm.loop !971

398:                                              ; preds = %394, %363, %283, %362
  %399 = getelementptr inbounds %struct.rtx_def, ptr %276, i64 0, i32 1, i32 0, i32 0, i64 2
  %400 = load ptr, ptr %399, align 8, !tbaa !510
  %401 = icmp eq ptr %400, null
  br i1 %401, label %402, label %275, !llvm.loop !972

402:                                              ; preds = %275, %398, %270
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %403 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !692
  %404 = icmp eq i8 %403, 0
  br i1 %404, label %405, label %205, !llvm.loop !973

405:                                              ; preds = %402, %197
  %406 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 4
  store i32 %198, ptr %406, align 4, !tbaa !614
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_reorganize_refs_by_reg_by_reg(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !489 !PGOFuncName !974 {
  %5 = load ptr, ptr @df, align 8, !tbaa !398
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !477
  %8 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 27
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12, !prof !511

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !957
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %14, i8 0, i64 212, i1 false)
  %15 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !958
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %16, i8 0, i64 212, i1 false)
  br label %17

17:                                               ; preds = %4, %12
  %18 = phi i32 [ 53, %12 ], [ 0, %4 ]
  %19 = tail call fastcc i32 @df_count_refs(i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  %20 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 5
  store i32 %19, ptr %20, align 8, !tbaa !616
  tail call fastcc void @df_check_and_grow_ref_info(ptr noundef %0) #22
  %21 = icmp ult i32 %18, %7
  br i1 %21, label %22, label %124, !prof !975

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
  %34 = load ptr, ptr %23, align 8, !tbaa !957
  %35 = getelementptr inbounds i32, ptr %34, i64 %32
  store i32 %33, ptr %35, align 4, !tbaa !479
  br i1 %24, label %61, label %36, !prof !976

36:                                               ; preds = %31
  %37 = load ptr, ptr @df, align 8, !tbaa !398
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !469
  %40 = getelementptr inbounds ptr, ptr %39, i64 %32
  %41 = load ptr, ptr %40, align 8, !tbaa !398
  %42 = load ptr, ptr %41, align 8, !tbaa !606
  %43 = icmp eq ptr %42, null
  br i1 %43, label %61, label %44, !prof !977

44:                                               ; preds = %36, %59
  %45 = phi ptr [ %55, %59 ], [ %42, %36 ]
  %46 = phi i32 [ %53, %59 ], [ 0, %36 ]
  %47 = phi i32 [ %51, %59 ], [ %33, %36 ]
  %48 = load ptr, ptr %0, align 8, !tbaa !615
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  store ptr %45, ptr %50, align 8, !tbaa !398
  %51 = add i32 %47, 1
  %52 = getelementptr inbounds %struct.df_base_ref, ptr %45, i64 0, i32 7
  store i32 %47, ptr %52, align 4, !tbaa !510
  %53 = add nuw nsw i32 %46, 1
  %54 = getelementptr inbounds %struct.df_base_ref, ptr %45, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !510
  %56 = load i32, ptr %25, align 8, !tbaa !978
  %57 = icmp ult i32 %51, %56
  br i1 %57, label %59, label %58, !prof !979

58:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1573, ptr noundef nonnull @.str.9) #21
  br label %59

59:                                               ; preds = %44, %58
  %60 = icmp eq ptr %55, null
  br i1 %60, label %61, label %44, !prof !980, !llvm.loop !981

61:                                               ; preds = %59, %36, %31
  %62 = phi i32 [ %33, %31 ], [ %33, %36 ], [ %51, %59 ]
  %63 = phi i32 [ 0, %31 ], [ 0, %36 ], [ %53, %59 ]
  br i1 %26, label %89, label %64, !prof !982

64:                                               ; preds = %61
  %65 = load ptr, ptr @df, align 8, !tbaa !398
  %66 = getelementptr inbounds %struct.df, ptr %65, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !470
  %68 = getelementptr inbounds ptr, ptr %67, i64 %32
  %69 = load ptr, ptr %68, align 8, !tbaa !398
  %70 = load ptr, ptr %69, align 8, !tbaa !606
  %71 = icmp eq ptr %70, null
  br i1 %71, label %89, label %72

72:                                               ; preds = %64, %87
  %73 = phi ptr [ %83, %87 ], [ %70, %64 ]
  %74 = phi i32 [ %81, %87 ], [ %63, %64 ]
  %75 = phi i32 [ %79, %87 ], [ %62, %64 ]
  %76 = load ptr, ptr %0, align 8, !tbaa !615
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77
  store ptr %73, ptr %78, align 8, !tbaa !398
  %79 = add i32 %75, 1
  %80 = getelementptr inbounds %struct.df_base_ref, ptr %73, i64 0, i32 7
  store i32 %75, ptr %80, align 4, !tbaa !510
  %81 = add nuw nsw i32 %74, 1
  %82 = getelementptr inbounds %struct.df_base_ref, ptr %73, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !510
  %84 = load i32, ptr %25, align 8, !tbaa !978
  %85 = icmp ult i32 %79, %84
  br i1 %85, label %87, label %86

86:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1585, ptr noundef nonnull @.str.9) #21
  br label %87

87:                                               ; preds = %72, %86
  %88 = icmp eq ptr %83, null
  br i1 %88, label %89, label %72, !llvm.loop !983

89:                                               ; preds = %87, %64, %61
  %90 = phi i32 [ %62, %61 ], [ %62, %64 ], [ %79, %87 ]
  %91 = phi i32 [ %63, %61 ], [ %63, %64 ], [ %81, %87 ]
  br i1 %27, label %117, label %92, !prof !982

92:                                               ; preds = %89
  %93 = load ptr, ptr @df, align 8, !tbaa !398
  %94 = getelementptr inbounds %struct.df, ptr %93, i64 0, i32 7
  %95 = load ptr, ptr %94, align 8, !tbaa !471
  %96 = getelementptr inbounds ptr, ptr %95, i64 %32
  %97 = load ptr, ptr %96, align 8, !tbaa !398
  %98 = load ptr, ptr %97, align 8, !tbaa !606
  %99 = icmp eq ptr %98, null
  br i1 %99, label %117, label %100

100:                                              ; preds = %92, %115
  %101 = phi ptr [ %111, %115 ], [ %98, %92 ]
  %102 = phi i32 [ %109, %115 ], [ %91, %92 ]
  %103 = phi i32 [ %107, %115 ], [ %90, %92 ]
  %104 = load ptr, ptr %0, align 8, !tbaa !615
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds ptr, ptr %104, i64 %105
  store ptr %101, ptr %106, align 8, !tbaa !398
  %107 = add i32 %103, 1
  %108 = getelementptr inbounds %struct.df_base_ref, ptr %101, i64 0, i32 7
  store i32 %103, ptr %108, align 4, !tbaa !510
  %109 = add nsw i32 %102, 1
  %110 = getelementptr inbounds %struct.df_base_ref, ptr %101, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !510
  %112 = load i32, ptr %25, align 8, !tbaa !978
  %113 = icmp ult i32 %107, %112
  br i1 %113, label %115, label %114

114:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1597, ptr noundef nonnull @.str.9) #21
  br label %115

115:                                              ; preds = %100, %114
  %116 = icmp eq ptr %111, null
  br i1 %116, label %117, label %100, !llvm.loop !984

117:                                              ; preds = %115, %92, %89
  %118 = phi i32 [ %90, %89 ], [ %90, %92 ], [ %107, %115 ]
  %119 = phi i32 [ %91, %89 ], [ %91, %92 ], [ %109, %115 ]
  %120 = load ptr, ptr %28, align 8, !tbaa !958
  %121 = getelementptr inbounds i32, ptr %120, i64 %32
  store i32 %119, ptr %121, align 4, !tbaa !479
  %122 = add nuw nsw i64 %32, 1
  %123 = icmp eq i64 %122, %30
  br i1 %123, label %124, label %31, !prof !985, !llvm.loop !986

124:                                              ; preds = %117, %17
  %125 = phi i32 [ 0, %17 ], [ %118, %117 ]
  %126 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 4
  store i32 %125, ptr %126, align 4, !tbaa !614
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @df_count_refs(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #16 !prof !562 !PGOFuncName !987 {
  %4 = load ptr, ptr @df, align 8, !tbaa !398
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !477
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %48, label %8, !prof !988

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
  br i1 %9, label %26, label %19, !prof !989

19:                                               ; preds = %16
  %20 = load ptr, ptr %10, align 8, !tbaa !469
  %21 = getelementptr inbounds ptr, ptr %20, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !398
  %23 = getelementptr inbounds %struct.df_reg_info, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !608
  %25 = add i32 %24, %18
  br label %26

26:                                               ; preds = %19, %16
  %27 = phi i32 [ %25, %19 ], [ %18, %16 ]
  br i1 %11, label %35, label %28, !prof !990

28:                                               ; preds = %26
  %29 = load ptr, ptr %12, align 8, !tbaa !470
  %30 = getelementptr inbounds ptr, ptr %29, i64 %17
  %31 = load ptr, ptr %30, align 8, !tbaa !398
  %32 = getelementptr inbounds %struct.df_reg_info, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !608
  %34 = add i32 %33, %27
  br label %35

35:                                               ; preds = %28, %26
  %36 = phi i32 [ %34, %28 ], [ %27, %26 ]
  br i1 %13, label %44, label %37, !prof !990

37:                                               ; preds = %35
  %38 = load ptr, ptr %14, align 8, !tbaa !471
  %39 = getelementptr inbounds ptr, ptr %38, i64 %17
  %40 = load ptr, ptr %39, align 8, !tbaa !398
  %41 = getelementptr inbounds %struct.df_reg_info, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !608
  %43 = add i32 %42, %36
  br label %44

44:                                               ; preds = %35, %37
  %45 = phi i32 [ %43, %37 ], [ %36, %35 ]
  %46 = add nuw nsw i64 %17, 1
  %47 = icmp eq i64 %46, %15
  br i1 %47, label %48, label %16, !prof !991, !llvm.loop !992

48:                                               ; preds = %44, %3
  %49 = phi i32 [ 0, %3 ], [ %45, %44 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_check_and_grow_ref_info(ptr nocapture noundef %0) unnamed_addr #0 !prof !562 !PGOFuncName !993 {
  %2 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !978
  %4 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !616
  %6 = add i32 %5, 1
  %7 = icmp ult i32 %3, %6
  br i1 %7, label %8, label %11, !prof !540

8:                                                ; preds = %1
  %9 = lshr i32 %5, 2
  %10 = add i32 %6, %9
  tail call fastcc void @df_grow_ref_info(ptr noundef nonnull %0, i32 noundef %10) #22
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_defs(i32 noundef %0) unnamed_addr #3 !prof !581 !PGOFuncName !994 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #22
  %3 = load ptr, ptr %2, align 8, !tbaa !456
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_uses(i32 noundef %0) unnamed_addr #3 !prof !995 !PGOFuncName !996 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #22
  %3 = getelementptr inbounds %struct.df_scan_bb_info, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !459
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_grow_ref_info(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !562 !PGOFuncName !997 {
  %3 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !978
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %17, !prof !540

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !615
  %8 = zext i32 %1 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = tail call ptr @xrealloc(ptr noundef %7, i64 noundef %9) #21
  store ptr %10, ptr %0, align 8, !tbaa !615
  %11 = load i32, ptr %3, align 8, !tbaa !978
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = sub i32 %1, %11
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 %16, i1 false)
  store i32 %1, ptr %3, align 8, !tbaa !978
  br label %17

17:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @df_reorganize_refs_by_insn_bb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #17 !prof !995 !PGOFuncName !998 {
  %7 = icmp eq i8 %3, 0
  br i1 %7, label %13, label %8, !prof !999

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !422
  %11 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %10) #22
  %12 = tail call fastcc i32 @df_add_refs_to_table(i32 noundef %1, ptr noundef %2, ptr noundef %11) #22
  br label %13

13:                                               ; preds = %8, %6
  %14 = phi i32 [ %12, %8 ], [ %1, %6 ]
  %15 = icmp eq i8 %4, 0
  br i1 %15, label %21, label %16, !prof !1000

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !422
  %19 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %18) #22
  %20 = tail call fastcc i32 @df_add_refs_to_table(i32 noundef %14, ptr noundef %2, ptr noundef %19) #22
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i32 [ %20, %16 ], [ %14, %13 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !510
  %25 = load ptr, ptr %24, align 8, !tbaa !510
  %26 = icmp eq ptr %25, null
  br i1 %26, label %85, label %27, !prof !1001

27:                                               ; preds = %21
  %28 = icmp eq i8 %5, 0
  br label %29

29:                                               ; preds = %27, %80
  %30 = phi ptr [ %25, %27 ], [ %83, %80 ]
  %31 = phi i32 [ %22, %27 ], [ %81, %80 ]
  %32 = load ptr, ptr %23, align 8, !tbaa !510
  %33 = getelementptr inbounds %struct.rtl_bb_info, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !573
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !510
  %37 = icmp eq ptr %30, %36
  br i1 %37, label %85, label %38, !prof !1002

38:                                               ; preds = %29
  %39 = load i32, ptr %30, align 8
  %40 = and i32 %39, 65535
  %41 = add nsw i32 %40, -7
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %43, label %80, !prof !1003

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !510
  br i1 %7, label %56, label %46, !prof !1004

46:                                               ; preds = %43
  %47 = load ptr, ptr @df, align 8, !tbaa !398
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !441
  %50 = zext i32 %45 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !398
  %53 = getelementptr inbounds %struct.df_insn_info, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !443
  %55 = tail call fastcc i32 @df_add_refs_to_table(i32 noundef %31, ptr noundef %2, ptr noundef %54) #22
  br label %56

56:                                               ; preds = %46, %43
  %57 = phi i32 [ %55, %46 ], [ %31, %43 ]
  br i1 %15, label %68, label %58, !prof !1005

58:                                               ; preds = %56
  %59 = load ptr, ptr @df, align 8, !tbaa !398
  %60 = getelementptr inbounds %struct.df, ptr %59, i64 0, i32 10
  %61 = load ptr, ptr %60, align 8, !tbaa !441
  %62 = zext i32 %45 to i64
  %63 = getelementptr inbounds ptr, ptr %61, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !398
  %65 = getelementptr inbounds %struct.df_insn_info, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !447
  %67 = tail call fastcc i32 @df_add_refs_to_table(i32 noundef %57, ptr noundef %2, ptr noundef %66) #22
  br label %68

68:                                               ; preds = %58, %56
  %69 = phi i32 [ %67, %58 ], [ %57, %56 ]
  br i1 %28, label %80, label %70, !prof !1005

70:                                               ; preds = %68
  %71 = load ptr, ptr @df, align 8, !tbaa !398
  %72 = getelementptr inbounds %struct.df, ptr %71, i64 0, i32 10
  %73 = load ptr, ptr %72, align 8, !tbaa !441
  %74 = zext i32 %45 to i64
  %75 = getelementptr inbounds ptr, ptr %73, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !398
  %77 = getelementptr inbounds %struct.df_insn_info, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !449
  %79 = tail call fastcc i32 @df_add_refs_to_table(i32 noundef %69, ptr noundef %2, ptr noundef %78) #22
  br label %80

80:                                               ; preds = %38, %68, %70
  %81 = phi i32 [ %31, %38 ], [ %79, %70 ], [ %69, %68 ]
  %82 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %83 = load ptr, ptr %82, align 8, !tbaa !510
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %29, !prof !1006, !llvm.loop !1007

85:                                               ; preds = %29, %80, %21
  %86 = phi i32 [ %22, %21 ], [ %81, %80 ], [ %31, %29 ]
  ret i32 %86
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @df_add_refs_to_table(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #17 !prof !1008 !PGOFuncName !1009 {
  %4 = load ptr, ptr %2, align 8, !tbaa !398
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6, !prof !1010

6:                                                ; preds = %3
  %7 = load ptr, ptr @df, align 8, !tbaa !398
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
  br i1 %16, label %21, label %17, !prof !1011

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !510
  %20 = icmp ugt i32 %19, 52
  br i1 %20, label %21, label %29

21:                                               ; preds = %17, %8
  %22 = load ptr, ptr %1, align 8, !tbaa !615
  %23 = zext i32 %11 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  store ptr %10, ptr %24, align 8, !tbaa !398
  %25 = add i32 %11, 1
  %26 = load ptr, ptr %12, align 8, !tbaa !398
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 7
  store i32 %11, ptr %27, align 4, !tbaa !510
  %28 = load ptr, ptr @df, align 8, !tbaa !398
  br label %29

29:                                               ; preds = %21, %17
  %30 = phi ptr [ %28, %21 ], [ %9, %17 ]
  %31 = phi i32 [ %25, %21 ], [ %11, %17 ]
  %32 = getelementptr inbounds ptr, ptr %12, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !398
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %8, !prof !1012, !llvm.loop !1013

35:                                               ; preds = %29, %3
  %36 = phi i32 [ %0, %3 ], [ %31, %29 ]
  ret i32 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_sort_and_compress_refs(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1014 !PGOFuncName !1015 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !398
  %7 = tail call fastcc i32 @VEC_df_ref_base_length(ptr noundef %6) #22
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %66, label %9, !prof !1016

9:                                                ; preds = %1
  %10 = icmp eq i32 %7, 2
  br i1 %10, label %13, label %11, !prof !1017

11:                                               ; preds = %9
  %12 = add i32 %7, -1
  br label %20

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %14 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %6, i32 noundef 0) #22
  store ptr %14, ptr %2, align 8, !tbaa !398
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %15 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %6, i32 noundef 1) #22
  store ptr %15, ptr %3, align 8, !tbaa !398
  %16 = call i32 @df_ref_compare(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %19, !prof !1018

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
  br i1 %22, label %66, label %23, !prof !1019

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %24 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %6, i32 noundef %21) #22
  store ptr %24, ptr %4, align 8, !tbaa !398
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %25 = add i32 %21, 1
  %26 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %6, i32 noundef %25) #22
  store ptr %26, ptr %5, align 8, !tbaa !398
  %27 = call i32 @df_ref_compare(ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %28 = icmp sgt i32 %27, -1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br i1 %28, label %29, label %20

29:                                               ; preds = %23
  %30 = icmp eq i32 %21, %12
  br i1 %30, label %66, label %31, !prof !775

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
  br i1 %40, label %41, label %60, !prof !1020

41:                                               ; preds = %35, %49
  %42 = phi i32 [ %53, %49 ], [ %39, %35 ]
  %43 = phi i32 [ %52, %49 ], [ %36, %35 ]
  %44 = load ptr, ptr %0, align 8, !tbaa !398
  %45 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %44, i32 noundef %37) #22
  %46 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %44, i32 noundef %42) #22
  %47 = tail call fastcc zeroext i8 @df_ref_equal_p(ptr noundef %45, ptr noundef %46) #22, !range !692
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49, !prof !1021

49:                                               ; preds = %41
  %50 = load ptr, ptr %0, align 8, !tbaa !398
  %51 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %50, i32 noundef %42) #22
  tail call fastcc void @df_free_ref(ptr noundef %51) #22
  %52 = add i32 %43, 1
  %53 = add i32 %38, %52
  %54 = icmp ult i32 %53, %7
  br i1 %54, label %41, label %60, !prof !1022, !llvm.loop !1023

55:                                               ; preds = %41
  %56 = icmp eq i32 %43, 0
  br i1 %56, label %60, label %57, !prof !1021

57:                                               ; preds = %55
  %58 = load ptr, ptr %0, align 8, !tbaa !398
  %59 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %58, i32 noundef %42) #22
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %58, i32 noundef %38, ptr noundef %59) #22
  br label %60

60:                                               ; preds = %49, %35, %55, %57
  %61 = phi i32 [ 0, %55 ], [ %43, %57 ], [ %36, %35 ], [ %52, %49 ]
  %62 = sub i32 %7, %61
  %63 = icmp ult i32 %38, %62
  br i1 %63, label %35, label %64, !prof !1024, !llvm.loop !1025

64:                                               ; preds = %60
  %65 = load ptr, ptr %0, align 8, !tbaa !398
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %65, i32 noundef %62) #22
  br label %66

66:                                               ; preds = %20, %29, %1, %64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_sort_and_compress_mws(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !879 !PGOFuncName !1026 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @df, align 8, !tbaa !398
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !398
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !402
  %9 = load ptr, ptr %0, align 8, !tbaa !398
  %10 = tail call fastcc i32 @VEC_df_mw_hardreg_ptr_base_length(ptr noundef %9) #22
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %55, label %12, !prof !1027

12:                                               ; preds = %1
  %13 = icmp eq i32 %10, 2
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %15 = tail call fastcc ptr @VEC_df_mw_hardreg_ptr_base_index(ptr noundef %9, i32 noundef 0) #22
  store ptr %15, ptr %2, align 8, !tbaa !398
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %16 = tail call fastcc ptr @VEC_df_mw_hardreg_ptr_base_index(ptr noundef %9, i32 noundef 1) #22
  store ptr %16, ptr %3, align 8, !tbaa !398
  %17 = call i32 @df_mw_compare(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_replace(ptr noundef %9, i32 noundef 0, ptr noundef %16) #22
  %20 = load ptr, ptr %0, align 8, !tbaa !398
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
  %26 = getelementptr inbounds %struct.df_scan_problem_data, ptr %8, i64 0, i32 6
  br label %27

27:                                               ; preds = %25, %49
  %28 = phi i32 [ 0, %25 ], [ %50, %49 ]
  %29 = phi i32 [ 0, %25 ], [ %30, %49 ]
  %30 = add nuw i32 %29, 1
  %31 = add i32 %30, %28
  %32 = icmp ult i32 %31, %10
  br i1 %32, label %33, label %49

33:                                               ; preds = %27, %41
  %34 = phi i32 [ %44, %41 ], [ %31, %27 ]
  %35 = phi i32 [ %43, %41 ], [ %28, %27 ]
  %36 = load ptr, ptr %0, align 8, !tbaa !398
  %37 = tail call fastcc ptr @VEC_df_mw_hardreg_ptr_base_index(ptr noundef %36, i32 noundef %29) #22
  %38 = tail call fastcc ptr @VEC_df_mw_hardreg_ptr_base_index(ptr noundef %36, i32 noundef %34) #22
  %39 = tail call fastcc zeroext i8 @df_mw_equal_p(ptr noundef %37, ptr noundef %38) #22, !range !692
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load ptr, ptr %26, align 8, !tbaa !418
  tail call void @pool_free(ptr noundef %42, ptr noundef %38) #21
  %43 = add i32 %35, 1
  %44 = add i32 %30, %43
  %45 = icmp ult i32 %44, %10
  br i1 %45, label %33, label %49, !llvm.loop !1028

46:                                               ; preds = %33
  %47 = icmp eq i32 %35, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %46
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_replace(ptr noundef %36, i32 noundef %30, ptr noundef %38) #22
  br label %49

49:                                               ; preds = %41, %27, %46, %48
  %50 = phi i32 [ 0, %46 ], [ %35, %48 ], [ %28, %27 ], [ %43, %41 ]
  %51 = sub i32 %10, %50
  %52 = icmp ult i32 %30, %51
  br i1 %52, label %27, label %53, !llvm.loop !1029

53:                                               ; preds = %49
  %54 = load ptr, ptr %0, align 8, !tbaa !398
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_truncate(ptr noundef %54, i32 noundef %51) #22
  br label %55

55:                                               ; preds = %1, %53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_df_ref_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !1030 !PGOFuncName !1031 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1032

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !950
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_df_ref_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !1033 !PGOFuncName !1034 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !398
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @df_swap_refs(ptr nocapture noundef readonly %0) unnamed_addr #18 !prof !1035 !PGOFuncName !1036 {
  %2 = load ptr, ptr %0, align 8, !tbaa !398
  %3 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %2, i32 noundef 0) #22
  %4 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %2, i32 noundef 1) #22
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %2, i32 noundef 0, ptr noundef %4) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !398
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %5, i32 noundef 1, ptr noundef %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_df_ref_base_address(ptr noundef readnone %0) unnamed_addr #7 !prof !1037 !PGOFuncName !1038 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !1039
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @df_ref_equal_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !1040 !PGOFuncName !1041 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %92, label %4, !prof !1042

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %92, label %6, !prof !1042

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 255
  %9 = load i32, ptr %1, align 8
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %92, !prof !1043

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !510
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !510
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %92, !prof !1044

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !510
  %21 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !510
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %24, label %92, !prof !1045

24:                                               ; preds = %18
  %25 = xor i32 %9, %7
  %26 = and i32 %25, -1342177536
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %92, !prof !1046

28:                                               ; preds = %24
  %29 = icmp eq i32 %8, 1
  br i1 %29, label %30, label %33, !prof !1047

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  %32 = getelementptr inbounds %struct.df_artificial_ref, ptr %1, i64 0, i32 1
  br label %42

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !510
  %36 = load ptr, ptr %35, align 8, !tbaa !586
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 1
  %38 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !510
  %40 = load ptr, ptr %39, align 8, !tbaa !586
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 1
  br label %42

42:                                               ; preds = %33, %30
  %43 = phi ptr [ %31, %30 ], [ %37, %33 ]
  %44 = phi ptr [ %32, %30 ], [ %41, %33 ]
  %45 = load ptr, ptr %43, align 8, !tbaa !510
  %46 = load ptr, ptr %44, align 8, !tbaa !510
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %92, !prof !1048

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !510
  %51 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !510
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %54, label %92, !prof !1048

54:                                               ; preds = %48
  %55 = trunc i32 %7 to i8
  switch i8 %55, label %91 [
    i8 1, label %92
    i8 0, label %92
    i8 3, label %56
    i8 2, label %74
  ], !prof !1049

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.df_extract_ref, ptr %0, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !510
  %59 = getelementptr inbounds %struct.df_extract_ref, ptr %1, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !510
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.df_extract_ref, ptr %0, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !510
  %65 = getelementptr inbounds %struct.df_extract_ref, ptr %1, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !510
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.df_extract_ref, ptr %0, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !510
  %71 = getelementptr inbounds %struct.df_extract_ref, ptr %1, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !510
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %68, %54
  %75 = and i32 %7, 254
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %80, !prof !1050

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.df_regular_ref, ptr %0, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !510
  br label %80

80:                                               ; preds = %74, %77
  %81 = phi ptr [ %79, %77 ], [ null, %74 ]
  %82 = and i32 %9, 254
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %87, !prof !1050

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.df_regular_ref, ptr %1, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !510
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
define internal fastcc void @VEC_df_ref_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #10 !prof !1051 !PGOFuncName !1052 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !398
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_df_ref_base_truncate(ptr noundef writeonly %0, i32 noundef %1) unnamed_addr #19 !prof !1053 !PGOFuncName !1054 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4, !prof !1055

4:                                                ; preds = %2
  store i32 %1, ptr %0, align 8, !tbaa !950
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_df_mw_hardreg_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !581 !PGOFuncName !1056 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !398
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #10 !prof !581 !PGOFuncName !1057 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !398
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @df_mw_equal_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #5 !prof !581 !PGOFuncName !1058 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %29, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !891
  %8 = load ptr, ptr %1, align 8, !tbaa !891
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.df_mw_hardreg, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !888
  %19 = getelementptr inbounds %struct.df_mw_hardreg, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !888
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !890
  %25 = getelementptr inbounds %struct.df_mw_hardreg, ptr %1, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !890
  %27 = icmp eq i32 %24, %26
  %28 = zext i1 %27 to i8
  br label %29

29:                                               ; preds = %4, %22, %16, %10, %6, %2
  %30 = phi i8 [ 0, %2 ], [ 1, %4 ], [ 0, %16 ], [ 0, %10 ], [ 0, %6 ], [ %28, %22 ]
  ret i8 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_base_truncate(ptr noundef writeonly %0, i32 noundef %1) unnamed_addr #19 !prof !1059 !PGOFuncName !1060 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4, !prof !1061

4:                                                ; preds = %2
  store i32 %1, ptr %0, align 8, !tbaa !884
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_install_refs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !1062 !PGOFuncName !1063 {
  %6 = alloca ptr, align 8
  %7 = tail call fastcc i32 @VEC_df_ref_base_length(ptr noundef %1) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %51, label %9, !prof !1064

9:                                                ; preds = %5
  %10 = add i32 %7, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = tail call ptr @xmalloc(i64 noundef %12) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  %14 = getelementptr inbounds %struct.df_ref_info, ptr %3, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !582
  switch i32 %15, label %31 [
    i32 2, label %16
    i32 4, label %16
    i32 6, label %16
    i32 1, label %17
    i32 3, label %17
    i32 5, label %17
  ], !prof !1065

16:                                               ; preds = %9, %9, %9
  store i32 2, ptr %14, align 4, !tbaa !582
  br label %19

17:                                               ; preds = %9, %9, %9
  store i32 1, ptr %14, align 4, !tbaa !582
  %18 = icmp eq i8 %4, 0
  br i1 %18, label %19, label %31, !prof !775

19:                                               ; preds = %16, %17
  %20 = load ptr, ptr @df, align 8, !tbaa !398
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 28
  %22 = load i8, ptr %21, align 1, !tbaa !583
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !584
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !422
  %29 = tail call i32 @bitmap_bit_p(ptr noundef %26, i32 noundef %28) #21
  %30 = trunc i32 %29 to i8
  br label %31

31:                                               ; preds = %9, %24, %19, %17
  %32 = phi i8 [ %30, %24 ], [ 1, %19 ], [ 0, %17 ], [ 0, %9 ]
  %33 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %6) #22, !range !709
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35, !prof !1066

35:                                               ; preds = %31, %35
  %36 = phi i32 [ %45, %35 ], [ 0, %31 ]
  %37 = load ptr, ptr %6, align 8, !tbaa !398
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds ptr, ptr %13, i64 %38
  store ptr %37, ptr %39, align 8, !tbaa !398
  %40 = getelementptr inbounds %struct.df_base_ref, ptr %37, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !510
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %2, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !398
  tail call fastcc void @df_install_ref(ptr noundef %37, ptr noundef %44, ptr noundef %3, i8 noundef zeroext %32) #22
  %45 = add i32 %36, 1
  %46 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %1, i32 noundef %45, ptr noundef nonnull %6) #22, !range !709
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %35, !prof !1067, !llvm.loop !1068

48:                                               ; preds = %35, %31
  %49 = zext i32 %7 to i64
  %50 = getelementptr inbounds ptr, ptr %13, i64 %49
  store ptr null, ptr %50, align 8, !tbaa !398
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  br label %51

51:                                               ; preds = %5, %48
  %52 = phi ptr [ %13, %48 ], [ @df_null_ref_rec, %5 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_install_mws(ptr noundef %0) unnamed_addr #0 !prof !1069 !PGOFuncName !1070 {
  %2 = tail call fastcc i32 @VEC_df_mw_hardreg_ptr_base_length(ptr noundef %0) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4, !prof !731

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
  store ptr null, ptr %12, align 8, !tbaa !398
  br label %13

13:                                               ; preds = %1, %4
  %14 = phi ptr [ %8, %4 ], [ @df_null_mw_rec, %1 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1071 !PGOFuncName !1072 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !510
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_stack_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !587 !PGOFuncName !1073 {
  tail call fastcc void @VEC_df_ref_stack_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !398
  tail call fastcc void @VEC_df_ref_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_stack_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !587 !PGOFuncName !1074 {
  %2 = load ptr, ptr %0, align 8, !tbaa !398
  %3 = tail call fastcc i32 @VEC_df_ref_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !601

5:                                                ; preds = %1
  %6 = tail call ptr @vec_stack_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !398
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_df_ref_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !587 !PGOFuncName !1075 {
  %3 = load i32, ptr %0, align 8, !tbaa !950
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !950
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !398
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_df_ref_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !587 !PGOFuncName !1076 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !601

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1077
  %6 = load i32, ptr %0, align 8, !tbaa !950
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
define internal fastcc void @df_ref_record(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #0 !prof !587 !PGOFuncName !1078 {
  %12 = load i32, ptr %2, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %14 [
    i16 37, label %16
    i16 39, label %16
  ], !prof !1079

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2918, ptr noundef nonnull @.str.9) #21
  %15 = load i32, ptr %2, align 8
  br label %16

16:                                               ; preds = %11, %11, %14
  %17 = phi i32 [ %12, %11 ], [ %12, %11 ], [ %15, %14 ]
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 39
  br i1 %19, label %20, label %23, !prof !1080

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !510
  br label %23

23:                                               ; preds = %16, %20
  %24 = phi ptr [ %22, %20 ], [ %2, %16 ]
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef %24) #22
  %26 = icmp ult i32 %25, 53
  br i1 %26, label %27, label %104, !prof !1081

27:                                               ; preds = %23
  %28 = load ptr, ptr @df, align 8, !tbaa !398
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !398
  %31 = getelementptr inbounds %struct.dataflow, ptr %30, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !402
  br i1 %19, label %33, label %47, !prof !1082

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !510
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load i32, ptr %39, align 8, !tbaa !510
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
  br i1 %56, label %82, label %57, !prof !1083

57:                                               ; preds = %52
  %58 = icmp eq ptr %5, null
  br i1 %58, label %82, label %59

59:                                               ; preds = %57
  %60 = load i32, ptr %2, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 39
  %63 = or i32 %7, 16
  %64 = select i1 %62, i32 %63, i32 %7
  %65 = or i32 %64, 4096
  %66 = getelementptr inbounds %struct.df_scan_problem_data, ptr %32, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !418
  %68 = tail call ptr @pool_alloc(ptr noundef %67) #21
  %69 = getelementptr inbounds %struct.df_mw_hardreg, ptr %68, i64 0, i32 1
  %70 = and i32 %6, 65535
  %71 = shl i32 %65, 16
  %72 = or disjoint i32 %71, %70
  store i32 %72, ptr %69, align 8
  store ptr %2, ptr %68, align 8, !tbaa !891
  %73 = getelementptr inbounds %struct.df_mw_hardreg, ptr %68, i64 0, i32 2
  store i32 %53, ptr %73, align 4, !tbaa !888
  %74 = add i32 %54, -1
  %75 = getelementptr inbounds %struct.df_mw_hardreg, ptr %68, i64 0, i32 3
  store i32 %74, ptr %75, align 8, !tbaa !890
  %76 = load ptr, ptr @df, align 8, !tbaa !398
  %77 = getelementptr inbounds %struct.df, ptr %76, i64 0, i32 26
  %78 = load i32, ptr %77, align 8, !tbaa !595
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 8, !tbaa !595
  %80 = getelementptr inbounds %struct.df_mw_hardreg, ptr %68, i64 0, i32 4
  store i32 %78, ptr %80, align 4, !tbaa !892
  %81 = getelementptr inbounds %struct.df_collection_rec, ptr %1, i64 0, i32 3
  tail call fastcc void @VEC_df_mw_hardreg_ptr_stack_safe_push(ptr noundef nonnull %81, ptr noundef nonnull %68) #22
  br label %82

82:                                               ; preds = %59, %57, %52
  %83 = phi i32 [ %65, %59 ], [ %7, %57 ], [ %7, %52 ]
  %84 = icmp ult i32 %53, %54
  br i1 %84, label %85, label %106, !prof !1084

85:                                               ; preds = %82
  %86 = zext i32 %53 to i64
  br label %87

87:                                               ; preds = %85, %100
  %88 = phi i64 [ %86, %85 ], [ %101, %100 ]
  %89 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !398
  %90 = getelementptr inbounds ptr, ptr %89, i64 %88
  %91 = load ptr, ptr %90, align 8, !tbaa !398
  %92 = tail call fastcc ptr @df_ref_create_structure(i32 noundef %0, ptr noundef %1, ptr noundef %91, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %83, i32 noundef %8, i32 noundef %9, i32 noundef %10) #22
  %93 = getelementptr inbounds %struct.df_base_ref, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !510
  %95 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1, i32 0, i32 0, i64 1
  %96 = load i32, ptr %95, align 8, !tbaa !510
  %97 = zext i32 %96 to i64
  %98 = icmp eq i64 %88, %97
  br i1 %98, label %100, label %99, !prof !1083

99:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2967, ptr noundef nonnull @.str.9) #21
  br label %100

100:                                              ; preds = %99, %87
  %101 = add nuw nsw i64 %88, 1
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %54, %102
  br i1 %103, label %106, label %87, !prof !1084, !llvm.loop !1085

104:                                              ; preds = %23
  %105 = tail call fastcc ptr @df_ref_create_structure(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #22
  br label %106

106:                                              ; preds = %100, %82, %104
  ret void
}

; Function Attrs: optsize
declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @subreg_nregs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #14 !prof !1086 !PGOFuncName !1087 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !510
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_stack_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !581 !PGOFuncName !1088 {
  tail call fastcc void @VEC_df_mw_hardreg_ptr_stack_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !398
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_stack_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !581 !PGOFuncName !1089 {
  %2 = load ptr, ptr %0, align 8, !tbaa !398
  %3 = tail call fastcc i32 @VEC_df_mw_hardreg_ptr_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_stack_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !398
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !581 !PGOFuncName !1090 {
  %3 = load i32, ptr %0, align 8, !tbaa !884
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !884
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !398
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_df_mw_hardreg_ptr_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !581 !PGOFuncName !1091 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1092
  %6 = load i32, ptr %0, align 8, !tbaa !884
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_defs_record(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !1093 !PGOFuncName !1094 {
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
  ], !prof !1095

11:                                               ; preds = %6, %6
  %12 = and i32 %9, 65535
  %13 = icmp eq i32 %12, 25
  %14 = select i1 %13, i32 128, i32 0
  %15 = or i32 %14, %8
  tail call fastcc void @df_def_record_1(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3, i32 noundef %15) #22
  br label %33

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !510
  br label %6

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !510
  %22 = load i32, ptr %21, align 8, !tbaa !866
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %33, !prof !872

24:                                               ; preds = %19
  %25 = zext nneg i32 %22 to i64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ %25, %24 ], [ %28, %26 ]
  %28 = add nsw i64 %27, -1
  %29 = load ptr, ptr %20, align 8, !tbaa !510
  %30 = getelementptr inbounds %struct.rtvec_def, ptr %29, i64 0, i32 1, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !398
  tail call fastcc void @df_defs_record(ptr noundef %0, ptr noundef %31, ptr noundef %2, ptr noundef %3, i32 noundef %8) #22
  %32 = icmp ugt i64 %27, 1
  br i1 %32, label %26, label %33, !prof !874, !llvm.loop !1096

33:                                               ; preds = %6, %26, %19, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_get_call_refs(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !1097 !PGOFuncName !1098 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %9 = load ptr, ptr %0, align 8, !tbaa !546
  %10 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %7) #22, !range !709
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12, !prof !1099

12:                                               ; preds = %4, %12
  %13 = phi i32 [ %18, %12 ], [ 0, %4 ]
  %14 = load ptr, ptr %7, align 8, !tbaa !398
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %14, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !510
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %8, i32 noundef %16) #21
  %18 = add i32 %13, 1
  %19 = load ptr, ptr %0, align 8, !tbaa !546
  %20 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %19, i32 noundef %18, ptr noundef nonnull %7) #22, !range !709
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %12, !prof !1100, !llvm.loop !1101

22:                                               ; preds = %12, %4
  %23 = load ptr, ptr %2, align 8, !tbaa !586
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !510
  %26 = icmp eq ptr %25, null
  br i1 %26, label %52, label %27, !prof !1102

27:                                               ; preds = %22, %48
  %28 = phi ptr [ %50, %48 ], [ %25, %22 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !510
  %31 = load i32, ptr %30, align 8
  %32 = trunc i32 %31 to i16
  switch i16 %32, label %48 [
    i16 24, label %33
    i16 25, label %35
  ]

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  tail call fastcc void @df_uses_record(i32 noundef 2, ptr noundef nonnull %0, ptr noundef nonnull %34, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %48

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !510
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
  %46 = load ptr, ptr %29, align 8, !tbaa !510
  tail call fastcc void @df_defs_record(ptr noundef nonnull %0, ptr noundef %46, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3) #22
  br label %48

47:                                               ; preds = %35
  tail call fastcc void @df_uses_record(i32 noundef 2, ptr noundef nonnull %0, ptr noundef nonnull %29, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %48

48:                                               ; preds = %41, %45, %27, %33, %47
  %49 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !510
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %27, !prof !667, !llvm.loop !1103

52:                                               ; preds = %48, %22
  %53 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !398
  %54 = getelementptr inbounds ptr, ptr %53, i64 7
  %55 = load ptr, ptr %54, align 8, !tbaa !398
  %56 = or i32 %3, 8192
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %55, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %56, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %57

57:                                               ; preds = %52, %69
  %58 = phi i64 [ 0, %52 ], [ %70, %69 ]
  %59 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !510
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %69, label %62, !prof !1104

62:                                               ; preds = %57
  %63 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !398
  %64 = getelementptr inbounds ptr, ptr %63, i64 %58
  %65 = load ptr, ptr %64, align 8, !tbaa !398
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %65, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %3, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  %66 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !398
  %67 = getelementptr inbounds ptr, ptr %66, i64 %58
  %68 = load ptr, ptr %67, align 8, !tbaa !398
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %68, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %3, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %69

69:                                               ; preds = %57, %62
  %70 = add nuw nsw i64 %58, 1
  %71 = icmp eq i64 %70, 53
  br i1 %71, label %72, label %57, !prof !1105, !llvm.loop !1106

72:                                               ; preds = %69
  %73 = load ptr, ptr %2, align 8, !tbaa !586
  %74 = load i32, ptr %73, align 8
  %75 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !398
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %75, ptr noundef nonnull %6) #22
  %76 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !692
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %110, label %78, !prof !1107

78:                                               ; preds = %72
  %79 = and i32 %74, 16777216
  %80 = icmp eq i32 %79, 0
  %81 = or i32 %3, 64
  br label %82

82:                                               ; preds = %78, %107
  %83 = load i32, ptr %6, align 4, !tbaa !479
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !510
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %107, !prof !1108

88:                                               ; preds = %82
  %89 = tail call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %83) #21
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %107, !prof !1109

91:                                               ; preds = %88
  br i1 %80, label %103, label %92, !prof !1110

92:                                               ; preds = %91
  %93 = load ptr, ptr @df, align 8, !tbaa !398
  %94 = getelementptr inbounds %struct.df, ptr %93, i64 0, i32 17
  %95 = load ptr, ptr %94, align 8, !tbaa !434
  %96 = tail call i32 @bitmap_bit_p(ptr noundef %95, i32 noundef %83) #21
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98, !prof !1111

98:                                               ; preds = %92
  %99 = add i32 %83, 1
  %100 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !1112
  %101 = tail call i32 @refers_to_regno_p(i32 noundef %83, i32 noundef %99, ptr noundef %100, ptr noundef null) #21
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98, %92, %91
  %104 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !398
  %105 = getelementptr inbounds ptr, ptr %104, i64 %84
  %106 = load ptr, ptr %105, align 8, !tbaa !398
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %106, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %81, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %107

107:                                              ; preds = %82, %88, %98, %103
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %108 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !692
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %82, !prof !1113, !llvm.loop !1114

110:                                              ; preds = %107, %72
  tail call void @bitmap_obstack_free(ptr noundef %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_get_conditional_uses(ptr noundef %0) unnamed_addr #0 !prof !581 !PGOFuncName !1115 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %3 = load ptr, ptr %0, align 8, !tbaa !546
  %4 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #22, !range !709
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %64, label %6

6:                                                ; preds = %1, %59
  %7 = phi ptr [ %60, %59 ], [ %3, %1 ]
  %8 = phi i32 [ %61, %59 ], [ 0, %1 ]
  %9 = load ptr, ptr %2, align 8, !tbaa !398
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
  %18 = load i32, ptr %17, align 8, !tbaa !510
  %19 = getelementptr inbounds %struct.df_extract_ref, ptr %9, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !510
  %21 = getelementptr inbounds %struct.df_extract_ref, ptr %9, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !510
  br label %23

23:                                               ; preds = %16, %13
  %24 = phi i32 [ %18, %16 ], [ -1, %13 ]
  %25 = phi i32 [ %20, %16 ], [ -1, %13 ]
  %26 = phi i32 [ %22, %16 ], [ 0, %13 ]
  %27 = and i32 %10, 255
  %28 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !510
  %30 = and i32 %10, 254
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.df_regular_ref, ptr %9, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !510
  br label %41

35:                                               ; preds = %23
  %36 = icmp eq i32 %27, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.df_artificial_ref, ptr %9, i64 0, i32 1
  %39 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !510
  br label %47

41:                                               ; preds = %32, %35
  %42 = phi ptr [ %34, %32 ], [ null, %35 ]
  %43 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !510
  %45 = load ptr, ptr %44, align 8, !tbaa !586
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 1
  br label %47

47:                                               ; preds = %41, %37
  %48 = phi ptr [ %40, %37 ], [ %44, %41 ]
  %49 = phi ptr [ null, %37 ], [ %42, %41 ]
  %50 = phi ptr [ %38, %37 ], [ %46, %41 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !510
  %52 = ashr i32 %10, 16
  %53 = and i32 %52, -2
  %54 = tail call fastcc ptr @df_ref_create_structure(i32 noundef %27, ptr noundef nonnull %0, ptr noundef %29, ptr noundef %49, ptr noundef %51, ptr noundef %48, i32 noundef 1, i32 noundef %53, i32 noundef %24, i32 noundef %25, i32 noundef %26) #22
  %55 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 6
  %56 = load i32, ptr %55, align 8, !tbaa !510
  %57 = getelementptr inbounds %struct.df_base_ref, ptr %54, i64 0, i32 6
  store i32 %56, ptr %57, align 8, !tbaa !510
  %58 = load ptr, ptr %0, align 8, !tbaa !546
  br label %59

59:                                               ; preds = %6, %47
  %60 = phi ptr [ %7, %6 ], [ %58, %47 ]
  %61 = add i32 %8, 1
  %62 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %60, i32 noundef %61, ptr noundef nonnull %2) #22, !range !709
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %6, !llvm.loop !1116

64:                                               ; preds = %59, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_def_record_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !1117 !PGOFuncName !1118 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !398
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %37 [
    i16 15, label %10
    i16 40, label %32
  ], !prof !1119

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !510
  %13 = load i32, ptr %12, align 8, !tbaa !866
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %100

15:                                               ; preds = %10
  %16 = or i32 %4, 128
  %17 = zext nneg i32 %13 to i64
  br label %18

18:                                               ; preds = %15, %30
  %19 = phi i64 [ %17, %15 ], [ %20, %30 ]
  %20 = add nsw i64 %19, -1
  %21 = load ptr, ptr %11, align 8, !tbaa !510
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %21, i64 0, i32 1, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !398
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
  br i1 %31, label %18, label %100, !llvm.loop !1120

32:                                               ; preds = %5
  %33 = or i32 %4, 1072
  %34 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !398
  %36 = load i32, ptr %35, align 8
  br label %37

37:                                               ; preds = %5, %32
  %38 = phi i32 [ %36, %32 ], [ %8, %5 ]
  %39 = phi ptr [ %34, %32 ], [ %6, %5 ]
  %40 = phi ptr [ %35, %32 ], [ %7, %5 ]
  %41 = phi i32 [ %33, %32 ], [ %4, %5 ]
  %42 = and i32 %38, 65535
  %43 = icmp eq i32 %42, 120
  br i1 %43, label %44, label %74, !prof !1121

44:                                               ; preds = %37
  %45 = or i32 %41, 560
  %46 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %47 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !510
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 30
  br i1 %51, label %52, label %67

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !510
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 30
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !510
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !510
  %64 = trunc i64 %63 to i32
  %65 = lshr i32 %38, 16
  %66 = and i32 %65, 255
  br label %67

67:                                               ; preds = %58, %52, %44
  %68 = phi i32 [ %64, %58 ], [ -1, %52 ], [ -1, %44 ]
  %69 = phi i32 [ %61, %58 ], [ -1, %52 ], [ -1, %44 ]
  %70 = phi i32 [ %66, %58 ], [ 0, %52 ], [ 0, %44 ]
  %71 = phi i32 [ 3, %58 ], [ 2, %52 ], [ 2, %44 ]
  %72 = load ptr, ptr %46, align 8, !tbaa !398
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
  ], !prof !1122

84:                                               ; preds = %74
  tail call fastcc void @df_ref_record(i32 noundef %81, ptr noundef %0, ptr noundef nonnull %77, ptr noundef nonnull %76, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef %82, i32 noundef %79, i32 noundef %78, i32 noundef %80) #22
  %85 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %77) #22
  %86 = icmp eq i32 %85, 7
  br i1 %86, label %87, label %100, !prof !1123

87:                                               ; preds = %84
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef %0, ptr noundef nonnull %77, ptr noundef null, ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef %82, i32 noundef %79, i32 noundef %78, i32 noundef %80) #22
  br label %100

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !510
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 37
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = tail call zeroext i8 @df_read_modify_subreg_p(ptr noundef nonnull %77) #22, !range !692
  %96 = icmp eq i8 %95, 0
  %97 = or i32 %82, 48
  %98 = select i1 %96, i32 %82, i32 %97
  %99 = or i32 %98, 2048
  tail call fastcc void @df_ref_record(i32 noundef %81, ptr noundef %0, ptr noundef nonnull %77, ptr noundef nonnull %76, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef %99, i32 noundef %79, i32 noundef %78, i32 noundef %80) #22
  br label %100

100:                                              ; preds = %30, %10, %87, %84, %94, %88, %74
  ret void
}

; Function Attrs: optsize
declare i32 @refers_to_regno_p(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_entry_block_defs_collect(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !543 !PGOFuncName !1124 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #22
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !692
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7, !prof !1125

7:                                                ; preds = %2, %7
  %8 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !398
  %9 = load i32, ptr %3, align 4, !tbaa !479
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !398
  %13 = load ptr, ptr @cfun, align 8, !tbaa !398
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !419
  %16 = load ptr, ptr %15, align 8, !tbaa !494
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef %0, ptr noundef %12, ptr noundef null, ptr noundef %16, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #22
  %17 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !692
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %7, !prof !1126, !llvm.loop !1127

19:                                               ; preds = %7, %2
  tail call fastcc void @df_canonize_collection_rec(ptr noundef %0) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_exit_block_uses_collect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !562 !PGOFuncName !1128 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #22
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !692
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7, !prof !988

7:                                                ; preds = %2, %7
  %8 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !398
  %9 = load i32, ptr %3, align 4, !tbaa !479
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !398
  %13 = load ptr, ptr @cfun, align 8, !tbaa !398
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !419
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !496
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef %0, ptr noundef %12, ptr noundef null, ptr noundef %17, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #22
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !692
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %7, !prof !1129, !llvm.loop !1130

20:                                               ; preds = %7, %2
  %21 = load i32, ptr @reload_completed, align 4, !tbaa !479
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %46, label %23, !prof !1131

23:                                               ; preds = %20
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef 16) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %46, !prof !736

26:                                               ; preds = %23
  %27 = load ptr, ptr @cfun, align 8, !tbaa !398
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !419
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !496
  %32 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef %31) #22, !range !692
  %33 = icmp ne i8 %32, 0
  %34 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16
  %35 = icmp ne i8 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %46, !prof !572

37:                                               ; preds = %26
  %38 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !398
  %39 = getelementptr inbounds ptr, ptr %38, i64 16
  %40 = load ptr, ptr %39, align 8, !tbaa !398
  %41 = load ptr, ptr @cfun, align 8, !tbaa !398
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !419
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !496
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef %0, ptr noundef %40, ptr noundef null, ptr noundef %45, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %46

46:                                               ; preds = %37, %26, %23, %20
  tail call fastcc void @df_canonize_collection_rec(ptr noundef %0) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_eh_pred(ptr noundef %0) unnamed_addr #0 !prof !1132 !PGOFuncName !1133 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #22
  store i32 0, ptr %3, align 8, !tbaa.struct !1134
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !1135
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #22, !range !692
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8, !prof !1136

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !398
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !1137
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !1139

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #22
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #22, !range !692
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !prof !1140, !llvm.loop !1141

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 !prof !1132 !PGOFuncName !1142 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1143 !PGOFuncName !1144 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #22, !range !692
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1145

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #22
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !398
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1146 !PGOFuncName !1147 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1148

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #22
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #22
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !1139

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.45, i32 noundef 738, ptr noundef nonnull @.str.9) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !1149
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !1149
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1143 !PGOFuncName !1151 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1152

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1146 !PGOFuncName !1153 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1148

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #22
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #22
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !1154 !PGOFuncName !1155 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1156

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1157
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1159 !PGOFuncName !1160 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1161

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.45, i32 noundef 687, ptr noundef nonnull @.str.9) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !398
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !1146 !PGOFuncName !1162 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !398
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @ix86_function_arg_regno_p(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_mark_reg(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !548 !PGOFuncName !1163 {
  %3 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #22
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 16711680
  %6 = icmp eq i32 %5, 65536
  br i1 %6, label %7, label %8, !prof !1164

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3877, ptr noundef nonnull @.str.9) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = icmp slt i32 %3, 53
  br i1 %9, label %10, label %19, !prof !551

10:                                               ; preds = %8
  %11 = sext i32 %3 to i64
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %11, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !510
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
define internal fastcc zeroext i8 @df_refs_verify(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !1165 !PGOFuncName !1166 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %5 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #22, !range !709
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7, !prof !1167

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  br label %9

9:                                                ; preds = %7, %33
  %10 = phi i32 [ 0, %7 ], [ %35, %33 ]
  %11 = phi ptr [ %1, %7 ], [ %34, %33 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !398
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14, !prof !1168

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8, !tbaa !398
  %16 = tail call fastcc zeroext i8 @df_ref_equal_p(ptr noundef %15, ptr noundef nonnull %12) #22, !range !692
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20, !prof !1169

18:                                               ; preds = %14, %9
  br i1 %8, label %47, label %19, !prof !1170

19:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4431, ptr noundef nonnull @.str.9) #21
  br label %21

20:                                               ; preds = %14
  br i1 %8, label %33, label %21, !prof !918

21:                                               ; preds = %19, %20
  %22 = load ptr, ptr %11, align 8, !tbaa !398
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 1073741824
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4440, ptr noundef nonnull @.str.9) #21
  %27 = load ptr, ptr %11, align 8, !tbaa !398
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
  %36 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %0, i32 noundef %35, ptr noundef nonnull %4) #22, !range !709
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %9, !prof !1171, !llvm.loop !1172

38:                                               ; preds = %33, %3
  %39 = phi ptr [ %1, %3 ], [ %34, %33 ]
  %40 = icmp eq i8 %2, 0
  %41 = load ptr, ptr %39, align 8, !tbaa !398
  %42 = icmp eq ptr %41, null
  br i1 %40, label %45, label %43, !prof !1173

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
define internal fastcc zeroext i8 @df_mws_verify(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !703 !PGOFuncName !1174 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %5 = call fastcc i32 @VEC_df_mw_hardreg_ptr_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #22, !range !709
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7, !prof !1175

7:                                                ; preds = %3, %19
  %8 = phi i32 [ %21, %19 ], [ 0, %3 ]
  %9 = phi ptr [ %20, %19 ], [ %1, %3 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !398
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 8, !tbaa !398
  %14 = tail call fastcc zeroext i8 @df_mw_equal_p(ptr noundef %13, ptr noundef nonnull %10) #22, !range !692
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %7
  %17 = icmp eq i8 %2, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4470, ptr noundef nonnull @.str.9) #21
  br label %19

19:                                               ; preds = %18, %12
  %20 = getelementptr inbounds ptr, ptr %9, i64 1
  %21 = add i32 %8, 1
  %22 = call fastcc i32 @VEC_df_mw_hardreg_ptr_base_iterate(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %4) #22, !range !709
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %7, !prof !667, !llvm.loop !1176

24:                                               ; preds = %19, %3
  %25 = phi ptr [ %1, %3 ], [ %20, %19 ]
  %26 = icmp eq i8 %2, 0
  %27 = load ptr, ptr %25, align 8, !tbaa !398
  %28 = icmp eq ptr %27, null
  br i1 %26, label %31, label %29, !prof !1177

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
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nounwind optsize }
attributes #22 = { optsize }
attributes #23 = { nounwind }
attributes #24 = { cold }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!396}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395}
!35 = !{ptr @df_scan_alloc, ptr @get_max_uid, i64 76}
!36 = !{ptr @df_scan_alloc, ptr @df_scan_free_internal, i64 38}
!37 = !{ptr @df_scan_alloc, ptr @create_alloc_pool, i64 608}
!38 = !{ptr @df_scan_alloc, ptr @xmalloc, i64 76}
!39 = !{ptr @df_scan_alloc, ptr @bitmap_obstack_initialize, i64 152}
!40 = !{ptr @df_scan_alloc, ptr @df_grow_reg_info, i64 76}
!41 = !{ptr @df_scan_alloc, ptr @df_grow_insn_info, i64 76}
!42 = !{ptr @df_scan_alloc, ptr @df_grow_bb_info, i64 76}
!43 = !{ptr @df_scan_alloc, ptr @df_scan_get_bb_info, i64 367907}
!44 = !{ptr @df_scan_alloc, ptr @pool_alloc, i64 367906}
!45 = !{ptr @df_scan_alloc, ptr @df_scan_set_bb_info, i64 367906}
!46 = !{ptr @df_scan_alloc, ptr @bitmap_obstack_alloc_stat, i64 608}
!47 = !{ptr @df_scan_free_internal, ptr @free, i64 1810629}
!48 = !{ptr @df_scan_free_internal, ptr @df_scan_get_bb_info, i64 338378}
!49 = !{ptr @df_scan_free_internal, ptr @bitmap_obstack_free, i64 608}
!50 = !{ptr @df_scan_free_internal, ptr @free_alloc_pool, i64 608}
!51 = !{ptr @df_scan_free_internal, ptr @bitmap_obstack_release, i64 152}
!52 = !{ptr @df_grow_reg_info, ptr @max_reg_num, i64 2979511}
!53 = !{ptr @df_grow_reg_info, ptr @xrealloc, i64 539}
!54 = !{ptr @df_grow_reg_info, ptr @pool_alloc, i64 1752015}
!55 = !{ptr @df_grow_insn_info, ptr @get_max_uid, i64 2917323}
!56 = !{ptr @df_grow_insn_info, ptr @xrealloc, i64 111}
!57 = !{ptr @df_scan_set_bb_info, ptr @df_grow_bb_info, i64 442422}
!58 = !{ptr @df_scan_add_problem, ptr @df_add_problem, i64 38}
!59 = !{ptr @df_scan_blocks, ptr @df_get_regular_block_artificial_uses, i64 76}
!60 = !{ptr @df_scan_blocks, ptr @df_get_eh_block_artificial_uses, i64 76}
!61 = !{ptr @df_scan_blocks, ptr @bitmap_ior_into, i64 76}
!62 = !{ptr @df_scan_blocks, ptr @df_get_entry_block_def_set, i64 76}
!63 = !{ptr @df_scan_blocks, ptr @df_record_entry_block_defs, i64 76}
!64 = !{ptr @df_scan_blocks, ptr @df_get_exit_block_use_set, i64 76}
!65 = !{ptr @df_scan_blocks, ptr @df_record_exit_block_uses, i64 76}
!66 = !{ptr @df_scan_blocks, ptr @VEC_basic_block_base_index, i64 152}
!67 = !{ptr @df_scan_blocks, ptr @df_set_bb_dirty, i64 152}
!68 = !{ptr @df_scan_blocks, ptr @df_bb_refs_record, i64 367757}
!69 = !{ptr @df_get_regular_block_artificial_uses, ptr @bitmap_clear, i64 76}
!70 = !{ptr @df_get_regular_block_artificial_uses, ptr @bitmap_set_bit, i64 227}
!71 = !{ptr @df_get_eh_block_artificial_uses, ptr @bitmap_clear, i64 76}
!72 = !{ptr @df_get_eh_block_artificial_uses, ptr @bitmap_set_bit, i64 111}
!73 = !{ptr @df_get_entry_block_def_set, ptr @bitmap_clear, i64 230}
!74 = !{ptr @df_get_entry_block_def_set, ptr @ix86_function_arg_regno_p, i64 12138}
!75 = !{ptr @df_get_entry_block_def_set, ptr @bitmap_set_bit, i64 1608}
!76 = !{ptr @df_get_entry_block_def_set, ptr @df_regs_ever_live_p, i64 160}
!77 = !{ptr @df_get_entry_block_def_set, ptr @gen_rtx_REG, i64 231}
!78 = !{ptr @df_get_entry_block_def_set, ptr @gen_rtx_MEM, i64 231}
!79 = !{ptr @df_get_entry_block_def_set, ptr @rhs_regno, i64 1}
!80 = !{ptr @df_record_entry_block_defs, ptr @VEC_df_ref_base_embedded_size, i64 152}
!81 = !{ptr @df_record_entry_block_defs, ptr @VEC_df_ref_stack_alloc1, i64 152}
!82 = !{ptr @df_record_entry_block_defs, ptr @df_entry_block_defs_collect, i64 152}
!83 = !{ptr @df_record_entry_block_defs, ptr @VEC_basic_block_base_index, i64 152}
!84 = !{ptr @df_record_entry_block_defs, ptr @df_refs_add_to_chains, i64 152}
!85 = !{ptr @df_record_entry_block_defs, ptr @VEC_df_ref_stack_free, i64 152}
!86 = !{ptr @df_get_exit_block_use_set, ptr @bitmap_clear, i64 268}
!87 = !{ptr @df_get_exit_block_use_set, ptr @bitmap_set_bit, i64 963}
!88 = !{ptr @df_get_exit_block_use_set, ptr @df_regs_ever_live_p, i64 2105}
!89 = !{ptr @df_get_exit_block_use_set, ptr @gen_rtx_REG, i64 1}
!90 = !{ptr @df_get_exit_block_use_set, ptr @diddle_return_value, i64 268}
!91 = !{ptr @df_record_exit_block_uses, ptr @VEC_df_ref_base_embedded_size, i64 114}
!92 = !{ptr @df_record_exit_block_uses, ptr @VEC_df_ref_stack_alloc1, i64 114}
!93 = !{ptr @df_record_exit_block_uses, ptr @df_exit_block_uses_collect, i64 114}
!94 = !{ptr @df_record_exit_block_uses, ptr @VEC_basic_block_base_index, i64 114}
!95 = !{ptr @df_record_exit_block_uses, ptr @df_refs_add_to_chains, i64 114}
!96 = !{ptr @df_record_exit_block_uses, ptr @VEC_df_ref_stack_free, i64 114}
!97 = !{ptr @df_bb_refs_record, ptr @VEC_basic_block_base_index, i64 524953}
!98 = !{ptr @df_bb_refs_record, ptr @df_scan_get_bb_info, i64 442269}
!99 = !{ptr @df_bb_refs_record, ptr @pool_alloc, i64 69676}
!100 = !{ptr @df_bb_refs_record, ptr @df_scan_set_bb_info, i64 69676}
!101 = !{ptr @df_bb_refs_record, ptr @VEC_df_ref_base_embedded_size, i64 884538}
!102 = !{ptr @df_bb_refs_record, ptr @VEC_df_ref_stack_alloc1, i64 1326807}
!103 = !{ptr @df_bb_refs_record, ptr @VEC_df_mw_hardreg_ptr_stack_alloc1, i64 442269}
!104 = !{ptr @df_bb_refs_record, ptr @fancy_abort, i64 1}
!105 = !{ptr @df_bb_refs_record, ptr @df_insn_create_insn_record, i64 1842519}
!106 = !{ptr @df_bb_refs_record, ptr @df_insn_refs_collect, i64 1245594}
!107 = !{ptr @df_bb_refs_record, ptr @df_refs_add_to_chains, i64 1687863}
!108 = !{ptr @df_bb_refs_record, ptr @df_bb_refs_collect, i64 442269}
!109 = !{ptr @df_bb_refs_record, ptr @VEC_df_ref_stack_free, i64 1326807}
!110 = !{ptr @df_bb_refs_record, ptr @VEC_df_mw_hardreg_ptr_stack_free, i64 442269}
!111 = !{ptr @df_bb_refs_record, ptr @df_set_bb_dirty, i64 442269}
!112 = !{ptr @df_ref_create_structure, ptr @rhs_regno, i64 23214123}
!113 = !{ptr @df_ref_create_structure, ptr @pool_alloc, i64 23214122}
!114 = !{ptr @df_ref_create_structure, ptr @fancy_abort, i64 4}
!115 = !{ptr @df_ref_create_structure, ptr @VEC_df_ref_stack_safe_push, i64 23214122}
!116 = !{ptr @df_install_ref, ptr @fancy_abort, i64 3}
!117 = !{ptr @df_install_ref, ptr @df_check_and_grow_ref_info, i64 1}
!118 = !{ptr @df_ref_remove, ptr @df_scan_get_bb_info, i64 1}
!119 = !{ptr @df_ref_remove, ptr @df_ref_compress_rec, i64 14362}
!120 = !{ptr @df_ref_remove, ptr @df_set_bb_dirty, i64 14362}
!121 = !{ptr @df_ref_remove, ptr @df_reg_chain_unlink, i64 14363}
!122 = !{ptr @df_ref_compress_rec, ptr @free, i64 14339}
!123 = !{ptr @df_reg_chain_unlink, ptr @bitmap_bit_p, i64 1}
!124 = !{ptr @df_reg_chain_unlink, ptr @df_chain_unlink, i64 1}
!125 = !{ptr @df_reg_chain_unlink, ptr @fancy_abort, i64 2}
!126 = !{ptr @df_reg_chain_unlink, ptr @df_free_ref, i64 1221410}
!127 = !{ptr @df_insn_create_insn_record, ptr @df_grow_insn_info, i64 2916648}
!128 = !{ptr @df_insn_create_insn_record, ptr @pool_alloc, i64 2916647}
!129 = !{ptr @df_insn_delete, ptr @df_grow_bb_info, i64 1360686}
!130 = !{ptr @df_insn_delete, ptr @df_grow_reg_info, i64 1360686}
!131 = !{ptr @df_insn_delete, ptr @df_set_bb_dirty, i64 73686}
!132 = !{ptr @df_insn_delete, ptr @bitmap_clear_bit, i64 3995199}
!133 = !{ptr @df_insn_delete, ptr @bitmap_set_bit, i64 86856}
!134 = !{ptr @df_insn_delete, ptr @fprintf, i64 2}
!135 = !{ptr @df_insn_delete, ptr @df_mw_hardreg_chain_delete, i64 1036185}
!136 = !{ptr @df_insn_delete, ptr @df_ref_chain_delete_du_chain, i64 3}
!137 = !{ptr @df_insn_delete, ptr @df_ref_chain_delete, i64 3108555}
!138 = !{ptr @df_insn_delete, ptr @pool_free, i64 1260441}
!139 = !{ptr @df_mw_hardreg_chain_delete, ptr @pool_free, i64 1}
!140 = !{ptr @df_ref_chain_delete_du_chain, ptr @df_chain_unlink, i64 1}
!141 = !{ptr @df_ref_chain_delete, ptr @df_reg_chain_unlink, i64 1207048}
!142 = !{ptr @df_ref_chain_delete, ptr @free, i64 933419}
!143 = !{ptr @df_insn_rescan, ptr @fprintf, i64 5}
!144 = !{ptr @df_insn_rescan, ptr @df_grow_bb_info, i64 1414515}
!145 = !{ptr @df_insn_rescan, ptr @df_grow_reg_info, i64 1414515}
!146 = !{ptr @df_insn_rescan, ptr @df_insn_create_insn_record, i64 932007}
!147 = !{ptr @df_insn_rescan, ptr @bitmap_clear_bit, i64 4146533}
!148 = !{ptr @df_insn_rescan, ptr @bitmap_set_bit, i64 97012}
!149 = !{ptr @df_insn_rescan, ptr @VEC_df_ref_base_embedded_size, i64 2635006}
!150 = !{ptr @df_insn_rescan, ptr @VEC_df_ref_stack_alloc1, i64 3952509}
!151 = !{ptr @df_insn_rescan, ptr @VEC_df_mw_hardreg_ptr_stack_alloc1, i64 1317503}
!152 = !{ptr @df_insn_rescan, ptr @df_insn_refs_verify, i64 812404}
!153 = !{ptr @df_insn_rescan, ptr @df_free_collection_rec, i64 385498}
!154 = !{ptr @df_insn_rescan, ptr @df_insn_delete, i64 426907}
!155 = !{ptr @df_insn_rescan, ptr @df_insn_refs_collect, i64 505099}
!156 = !{ptr @df_insn_rescan, ptr @df_refs_add_to_chains, i64 932005}
!157 = !{ptr @df_insn_rescan, ptr @df_set_bb_dirty_nonlr, i64 1}
!158 = !{ptr @df_insn_rescan, ptr @df_set_bb_dirty, i64 932004}
!159 = !{ptr @df_insn_rescan, ptr @VEC_df_ref_stack_free, i64 2796015}
!160 = !{ptr @df_insn_rescan, ptr @VEC_df_mw_hardreg_ptr_stack_free, i64 932005}
!161 = !{ptr @VEC_df_ref_stack_alloc1, ptr @vec_stack_p_reserve_exact_1, i64 5336308}
!162 = !{ptr @VEC_df_mw_hardreg_ptr_stack_alloc1, ptr @vec_stack_p_reserve_exact_1, i64 1816488}
!163 = !{ptr @df_insn_refs_verify, ptr @df_insn_refs_collect, i64 812407}
!164 = !{ptr @df_insn_refs_verify, ptr @fancy_abort, i64 1}
!165 = !{ptr @df_insn_refs_verify, ptr @df_refs_verify, i64 2437221}
!166 = !{ptr @df_insn_refs_verify, ptr @df_mws_verify, i64 812407}
!167 = !{ptr @df_free_collection_rec, ptr @VEC_df_ref_base_iterate, i64 14274345}
!168 = !{ptr @df_free_collection_rec, ptr @df_free_ref, i64 13117848}
!169 = !{ptr @df_free_collection_rec, ptr @VEC_df_mw_hardreg_ptr_base_iterate, i64 385500}
!170 = !{ptr @df_free_collection_rec, ptr @pool_free, i64 1}
!171 = !{ptr @df_free_collection_rec, ptr @VEC_df_ref_stack_free, i64 1156497}
!172 = !{ptr @df_free_collection_rec, ptr @VEC_df_mw_hardreg_ptr_stack_free, i64 385499}
!173 = !{ptr @df_insn_refs_collect, ptr @VEC_df_ref_base_truncate, i64 7713753}
!174 = !{ptr @df_insn_refs_collect, ptr @VEC_df_mw_hardreg_ptr_base_truncate, i64 2571251}
!175 = !{ptr @df_insn_refs_collect, ptr @df_defs_record, i64 2571251}
!176 = !{ptr @df_insn_refs_collect, ptr @df_uses_record, i64 2611010}
!177 = !{ptr @df_insn_refs_collect, ptr @df_ref_record, i64 2}
!178 = !{ptr @df_insn_refs_collect, ptr @df_get_call_refs, i64 413826}
!179 = !{ptr @df_insn_refs_collect, ptr @df_get_conditional_uses, i64 1}
!180 = !{ptr @df_insn_refs_collect, ptr @df_canonize_collection_rec, i64 2571251}
!181 = !{ptr @df_refs_add_to_chains, ptr @free, i64 6}
!182 = !{ptr @df_refs_add_to_chains, ptr @df_install_refs, i64 7499035}
!183 = !{ptr @df_refs_add_to_chains, ptr @df_install_mws, i64 2185750}
!184 = !{ptr @df_refs_add_to_chains, ptr @df_scan_get_bb_info, i64 442537}
!185 = !{ptr @VEC_df_ref_stack_free, ptr @vec_stack_free, i64 5336307}
!186 = !{ptr @VEC_df_mw_hardreg_ptr_stack_free, ptr @vec_stack_free, i64 1816487}
!187 = !{ptr @df_process_deferred_rescans, ptr @bitmap_obstack_alloc_stat, i64 2137}
!188 = !{ptr @df_process_deferred_rescans, ptr @df_clear_flags, i64 131}
!189 = !{ptr @df_process_deferred_rescans, ptr @fwrite, i64 2}
!190 = !{ptr @df_process_deferred_rescans, ptr @bitmap_copy, i64 6411}
!191 = !{ptr @df_process_deferred_rescans, ptr @bmp_iter_set_init, i64 6411}
!192 = !{ptr @df_process_deferred_rescans, ptr @bmp_iter_set, i64 171982}
!193 = !{ptr @df_process_deferred_rescans, ptr @df_insn_delete, i64 86815}
!194 = !{ptr @df_process_deferred_rescans, ptr @bmp_iter_next, i64 165571}
!195 = !{ptr @df_process_deferred_rescans, ptr @df_insn_rescan, i64 62300}
!196 = !{ptr @df_process_deferred_rescans, ptr @df_notes_rescan, i64 16453}
!197 = !{ptr @df_process_deferred_rescans, ptr @bitmap_obstack_free, i64 2137}
!198 = !{ptr @df_process_deferred_rescans, ptr @bitmap_clear, i64 6411}
!199 = !{ptr @df_process_deferred_rescans, ptr @df_set_flags, i64 131}
!200 = !{ptr @df_process_deferred_rescans, ptr @df_update_entry_exit_and_calls, i64 39}
!201 = !{ptr @df_notes_rescan, ptr @df_grow_bb_info, i64 94977}
!202 = !{ptr @df_notes_rescan, ptr @df_grow_reg_info, i64 94977}
!203 = !{ptr @df_notes_rescan, ptr @df_insn_create_insn_record, i64 1}
!204 = !{ptr @df_notes_rescan, ptr @bitmap_clear_bit, i64 151686}
!205 = !{ptr @df_notes_rescan, ptr @bitmap_bit_p, i64 38268}
!206 = !{ptr @df_notes_rescan, ptr @bitmap_set_bit, i64 17289}
!207 = !{ptr @df_notes_rescan, ptr @VEC_df_ref_base_embedded_size, i64 56708}
!208 = !{ptr @df_notes_rescan, ptr @VEC_df_ref_stack_alloc1, i64 56708}
!209 = !{ptr @df_notes_rescan, ptr @VEC_df_mw_hardreg_ptr_stack_alloc1, i64 56708}
!210 = !{ptr @df_notes_rescan, ptr @df_mw_hardreg_chain_delete_eq_uses, i64 56708}
!211 = !{ptr @df_notes_rescan, ptr @df_ref_chain_delete, i64 56708}
!212 = !{ptr @df_notes_rescan, ptr @df_uses_record, i64 50196}
!213 = !{ptr @df_notes_rescan, ptr @df_canonize_collection_rec, i64 56708}
!214 = !{ptr @df_notes_rescan, ptr @VEC_df_mw_hardreg_ptr_base_length, i64 56708}
!215 = !{ptr @df_notes_rescan, ptr @xmalloc, i64 1}
!216 = !{ptr @df_notes_rescan, ptr @VEC_df_mw_hardreg_ptr_base_address, i64 1}
!217 = !{ptr @df_notes_rescan, ptr @VEC_df_mw_hardreg_ptr_stack_free, i64 56708}
!218 = !{ptr @df_notes_rescan, ptr @df_refs_add_to_chains, i64 56708}
!219 = !{ptr @df_notes_rescan, ptr @VEC_df_ref_stack_free, i64 56708}
!220 = !{ptr @df_notes_rescan, ptr @df_insn_rescan, i64 1}
!221 = !{ptr @df_update_entry_exit_and_calls, ptr @df_update_entry_block_defs, i64 154}
!222 = !{ptr @df_update_entry_exit_and_calls, ptr @df_update_exit_block_uses, i64 154}
!223 = !{ptr @df_update_entry_exit_and_calls, ptr @df_insn_rescan, i64 272324}
!224 = !{ptr @df_maybe_reorganize_use_refs, ptr @df_reorganize_refs_by_reg, i64 2}
!225 = !{ptr @df_maybe_reorganize_use_refs, ptr @df_reorganize_refs_by_insn, i64 75}
!226 = !{ptr @df_maybe_reorganize_use_refs, ptr @free, i64 74}
!227 = !{ptr @df_maybe_reorganize_use_refs, ptr @fancy_abort, i64 2}
!228 = !{ptr @df_reorganize_refs_by_reg, ptr @df_reorganize_refs_by_reg_by_insn, i64 1}
!229 = !{ptr @df_reorganize_refs_by_reg, ptr @df_reorganize_refs_by_reg_by_reg, i64 37}
!230 = !{ptr @df_reorganize_refs_by_insn, ptr @df_count_refs, i64 76}
!231 = !{ptr @df_reorganize_refs_by_insn, ptr @df_check_and_grow_ref_info, i64 76}
!232 = !{ptr @df_reorganize_refs_by_insn, ptr @bmp_iter_set_init, i64 1}
!233 = !{ptr @df_reorganize_refs_by_insn, ptr @bmp_iter_set, i64 20}
!234 = !{ptr @df_reorganize_refs_by_insn, ptr @VEC_basic_block_base_index, i64 19}
!235 = !{ptr @df_reorganize_refs_by_insn, ptr @df_reorganize_refs_by_insn_bb, i64 361226}
!236 = !{ptr @df_reorganize_refs_by_insn, ptr @bmp_iter_next, i64 19}
!237 = !{ptr @df_maybe_reorganize_def_refs, ptr @df_reorganize_refs_by_reg, i64 36}
!238 = !{ptr @df_maybe_reorganize_def_refs, ptr @df_reorganize_refs_by_insn, i64 1}
!239 = !{ptr @df_maybe_reorganize_def_refs, ptr @free, i64 36}
!240 = !{ptr @df_maybe_reorganize_def_refs, ptr @fancy_abort, i64 4}
!241 = !{ptr @df_insn_change_bb, ptr @fprintf, i64 3}
!242 = !{ptr @df_insn_change_bb, ptr @fwrite, i64 1}
!243 = !{ptr @df_insn_change_bb, ptr @df_insn_rescan, i64 70112}
!244 = !{ptr @df_insn_change_bb, ptr @df_set_bb_dirty, i64 151999}
!245 = !{ptr @df_ref_change_reg_with_loc, ptr @df_grow_reg_info, i64 109136}
!246 = !{ptr @df_ref_change_reg_with_loc, ptr @df_ref_change_reg_with_loc_1, i64 327408}
!247 = !{ptr @df_ref_change_reg_with_loc_1, ptr @df_set_bb_dirty, i64 1}
!248 = !{ptr @df_ref_change_reg_with_loc_1, ptr @spec_qsort, i64 1}
!249 = !{ptr @df_mw_hardreg_chain_delete_eq_uses, ptr @pool_free, i64 16}
!250 = !{ptr @df_uses_record, ptr @df_ref_record, i64 1716855}
!251 = !{ptr @df_uses_record, ptr @fancy_abort, i64 3}
!252 = !{ptr @df_uses_record, ptr @df_uses_record, i64 6182854}
!253 = !{ptr @df_uses_record, ptr @df_read_modify_subreg_p, i64 1}
!254 = !{ptr @df_canonize_collection_rec, ptr @df_sort_and_compress_refs, i64 9211494}
!255 = !{ptr @df_canonize_collection_rec, ptr @df_sort_and_compress_mws, i64 3070498}
!256 = !{ptr @df_bb_refs_collect, ptr @VEC_df_ref_base_truncate, i64 1326810}
!257 = !{ptr @df_bb_refs_collect, ptr @VEC_df_mw_hardreg_ptr_base_truncate, i64 442270}
!258 = !{ptr @df_bb_refs_collect, ptr @df_entry_block_defs_collect, i64 1}
!259 = !{ptr @df_bb_refs_collect, ptr @df_exit_block_uses_collect, i64 1}
!260 = !{ptr @df_bb_refs_collect, ptr @bb_has_eh_pred, i64 884535}
!261 = !{ptr @df_bb_refs_collect, ptr @df_ref_record, i64 1322508}
!262 = !{ptr @df_bb_refs_collect, ptr @bmp_iter_set_init, i64 442267}
!263 = !{ptr @df_bb_refs_collect, ptr @bmp_iter_set, i64 1764772}
!264 = !{ptr @df_bb_refs_collect, ptr @bmp_iter_next, i64 1322505}
!265 = !{ptr @df_bb_refs_collect, ptr @df_canonize_collection_rec, i64 442268}
!266 = !{ptr @df_update_entry_block_defs, ptr @bitmap_obstack_alloc_stat, i64 155}
!267 = !{ptr @df_update_entry_block_defs, ptr @df_get_entry_block_def_set, i64 154}
!268 = !{ptr @df_update_entry_block_defs, ptr @bitmap_equal_p, i64 153}
!269 = !{ptr @df_update_entry_block_defs, ptr @df_scan_get_bb_info, i64 76}
!270 = !{ptr @df_update_entry_block_defs, ptr @df_ref_chain_delete_du_chain, i64 76}
!271 = !{ptr @df_update_entry_block_defs, ptr @df_ref_chain_delete, i64 76}
!272 = !{ptr @df_update_entry_block_defs, ptr @df_record_entry_block_defs, i64 77}
!273 = !{ptr @df_update_entry_block_defs, ptr @bitmap_copy, i64 77}
!274 = !{ptr @df_update_entry_block_defs, ptr @VEC_basic_block_base_index, i64 77}
!275 = !{ptr @df_update_entry_block_defs, ptr @df_set_bb_dirty, i64 77}
!276 = !{ptr @df_update_entry_block_defs, ptr @bitmap_obstack_free, i64 154}
!277 = !{ptr @df_update_exit_block_uses, ptr @bitmap_obstack_alloc_stat, i64 193}
!278 = !{ptr @df_update_exit_block_uses, ptr @df_get_exit_block_use_set, i64 192}
!279 = !{ptr @df_update_exit_block_uses, ptr @bitmap_equal_p, i64 191}
!280 = !{ptr @df_update_exit_block_uses, ptr @df_scan_get_bb_info, i64 38}
!281 = !{ptr @df_update_exit_block_uses, ptr @df_ref_chain_delete_du_chain, i64 38}
!282 = !{ptr @df_update_exit_block_uses, ptr @df_ref_chain_delete, i64 38}
!283 = !{ptr @df_update_exit_block_uses, ptr @df_record_exit_block_uses, i64 39}
!284 = !{ptr @df_update_exit_block_uses, ptr @bitmap_copy, i64 39}
!285 = !{ptr @df_update_exit_block_uses, ptr @VEC_basic_block_base_index, i64 39}
!286 = !{ptr @df_update_exit_block_uses, ptr @df_set_bb_dirty, i64 39}
!287 = !{ptr @df_update_exit_block_uses, ptr @bitmap_obstack_free, i64 192}
!288 = !{ptr @df_compute_regs_ever_live, ptr @df_hard_reg_used_p, i64 56265}
!289 = !{ptr @df_compute_regs_ever_live, ptr @df_update_entry_exit_and_calls, i64 4}
!290 = !{ptr @df_scan_free_bb_info, ptr @df_scan_get_bb_info, i64 99591}
!291 = !{ptr @df_scan_free_bb_info, ptr @df_ref_chain_delete_du_chain, i64 199184}
!292 = !{ptr @df_scan_free_bb_info, ptr @df_ref_chain_delete, i64 199184}
!293 = !{ptr @df_scan_free_bb_info, ptr @pool_free, i64 99592}
!294 = !{ptr @df_scan_free, ptr @df_scan_free_internal, i64 37}
!295 = !{ptr @df_scan_free, ptr @bitmap_obstack_free, i64 1}
!296 = !{ptr @df_scan_free, ptr @free, i64 38}
!297 = !{ptr @df_free_ref, ptr @pool_free, i64 14339288}
!298 = !{ptr @df_reorganize_refs_by_reg_by_reg, ptr @df_count_refs, i64 38}
!299 = !{ptr @df_reorganize_refs_by_reg_by_reg, ptr @df_check_and_grow_ref_info, i64 38}
!300 = !{ptr @df_reorganize_refs_by_reg_by_reg, ptr @fancy_abort, i64 21}
!301 = !{ptr @df_check_and_grow_ref_info, ptr @df_grow_ref_info, i64 113}
!302 = !{ptr @df_get_artificial_uses, ptr @df_scan_get_bb_info, i64 370711}
!303 = !{ptr @df_grow_ref_info, ptr @xrealloc, i64 113}
!304 = !{ptr @df_reorganize_refs_by_insn_bb, ptr @df_get_artificial_defs, i64 1}
!305 = !{ptr @df_reorganize_refs_by_insn_bb, ptr @df_add_refs_to_table, i64 3095292}
!306 = !{ptr @df_reorganize_refs_by_insn_bb, ptr @df_get_artificial_uses, i64 370710}
!307 = !{ptr @df_sort_and_compress_refs, ptr @VEC_df_ref_base_length, i64 9211494}
!308 = !{ptr @df_sort_and_compress_refs, ptr @VEC_df_ref_base_index, i64 34358472}
!309 = !{ptr @df_sort_and_compress_refs, ptr @df_ref_compare, i64 4161478}
!310 = !{ptr @df_sort_and_compress_refs, ptr @df_swap_refs, i64 91656}
!311 = !{ptr @df_sort_and_compress_refs, ptr @VEC_df_ref_base_address, i64 115347}
!312 = !{ptr @df_sort_and_compress_refs, ptr @spec_qsort, i64 115347}
!313 = !{ptr @df_sort_and_compress_refs, ptr @df_ref_equal_p, i64 13017757}
!314 = !{ptr @df_sort_and_compress_refs, ptr @df_free_ref, i64 1}
!315 = !{ptr @df_sort_and_compress_refs, ptr @VEC_df_ref_base_replace, i64 1}
!316 = !{ptr @df_sort_and_compress_refs, ptr @VEC_df_ref_base_truncate, i64 585730}
!317 = !{ptr @df_sort_and_compress_mws, ptr @VEC_df_mw_hardreg_ptr_base_length, i64 3070498}
!318 = !{ptr @df_sort_and_compress_mws, ptr @VEC_df_mw_hardreg_ptr_base_index, i64 520}
!319 = !{ptr @df_sort_and_compress_mws, ptr @df_mw_equal_p, i64 260}
!320 = !{ptr @df_sort_and_compress_mws, ptr @pool_free, i64 252}
!321 = !{ptr @df_sort_and_compress_mws, ptr @VEC_df_mw_hardreg_ptr_base_replace, i64 5}
!322 = !{ptr @df_sort_and_compress_mws, ptr @VEC_df_mw_hardreg_ptr_base_truncate, i64 1}
!323 = !{ptr @df_swap_refs, ptr @VEC_df_ref_base_index, i64 183310}
!324 = !{ptr @df_swap_refs, ptr @VEC_df_ref_base_replace, i64 183310}
!325 = !{ptr @df_ref_equal_p, ptr @fancy_abort, i64 1}
!326 = !{ptr @df_install_refs, ptr @VEC_df_ref_base_length, i64 7499039}
!327 = !{ptr @df_install_refs, ptr @xmalloc, i64 2781284}
!328 = !{ptr @df_install_refs, ptr @bitmap_bit_p, i64 2}
!329 = !{ptr @df_install_refs, ptr @VEC_df_ref_base_iterate, i64 12877526}
!330 = !{ptr @df_install_refs, ptr @df_install_ref, i64 10096242}
!331 = !{ptr @df_install_mws, ptr @VEC_df_mw_hardreg_ptr_base_length, i64 2185752}
!332 = !{ptr @df_install_mws, ptr @xmalloc, i64 1}
!333 = !{ptr @df_install_mws, ptr @VEC_df_mw_hardreg_ptr_base_address, i64 1}
!334 = !{ptr @VEC_df_ref_stack_safe_push, ptr @VEC_df_ref_stack_reserve, i64 23214123}
!335 = !{ptr @VEC_df_ref_stack_safe_push, ptr @VEC_df_ref_base_quick_push, i64 23214123}
!336 = !{ptr @VEC_df_ref_stack_reserve, ptr @VEC_df_ref_base_space, i64 23214123}
!337 = !{ptr @VEC_df_ref_stack_reserve, ptr @vec_stack_p_reserve, i64 1}
!338 = !{ptr @df_ref_record, ptr @fancy_abort, i64 2}
!339 = !{ptr @df_ref_record, ptr @rhs_regno, i64 45849340}
!340 = !{ptr @df_ref_record, ptr @subreg_regno_offset, i64 197}
!341 = !{ptr @df_ref_record, ptr @subreg_nregs, i64 197}
!342 = !{ptr @df_ref_record, ptr @end_hard_regno, i64 22635217}
!343 = !{ptr @df_ref_record, ptr @pool_alloc, i64 1}
!344 = !{ptr @df_ref_record, ptr @VEC_df_mw_hardreg_ptr_stack_safe_push, i64 1}
!345 = !{ptr @df_ref_record, ptr @df_ref_create_structure, i64 23214123}
!346 = !{ptr @df_defs_record, ptr @df_def_record_1, i64 1823414}
!347 = !{ptr @df_defs_record, ptr @df_defs_record, i64 332099}
!348 = !{ptr @df_get_call_refs, ptr @bitmap_obstack_alloc_stat, i64 413825}
!349 = !{ptr @df_get_call_refs, ptr @VEC_df_ref_base_iterate, i64 814402}
!350 = !{ptr @df_get_call_refs, ptr @bitmap_set_bit, i64 400577}
!351 = !{ptr @df_get_call_refs, ptr @df_ref_record, i64 19049154}
!352 = !{ptr @df_get_call_refs, ptr @bmp_iter_set_init, i64 413825}
!353 = !{ptr @df_get_call_refs, ptr @bmp_iter_set, i64 19449730}
!354 = !{ptr @df_get_call_refs, ptr @bitmap_bit_p, i64 19041125}
!355 = !{ptr @df_get_call_refs, ptr @refers_to_regno_p, i64 1}
!356 = !{ptr @df_get_call_refs, ptr @bmp_iter_next, i64 19035905}
!357 = !{ptr @df_get_call_refs, ptr @bitmap_obstack_free, i64 413825}
!358 = !{ptr @df_def_record_1, ptr @df_def_record_1, i64 15}
!359 = !{ptr @df_def_record_1, ptr @df_ref_record, i64 1273591}
!360 = !{ptr @df_def_record_1, ptr @rhs_regno, i64 1273193}
!361 = !{ptr @df_entry_block_defs_collect, ptr @bmp_iter_set_init, i64 152}
!362 = !{ptr @df_entry_block_defs_collect, ptr @bmp_iter_set, i64 1171}
!363 = !{ptr @df_entry_block_defs_collect, ptr @df_ref_record, i64 1019}
!364 = !{ptr @df_entry_block_defs_collect, ptr @bmp_iter_next, i64 1019}
!365 = !{ptr @df_entry_block_defs_collect, ptr @df_canonize_collection_rec, i64 152}
!366 = !{ptr @df_exit_block_uses_collect, ptr @bmp_iter_set_init, i64 114}
!367 = !{ptr @df_exit_block_uses_collect, ptr @bmp_iter_set, i64 641}
!368 = !{ptr @df_exit_block_uses_collect, ptr @df_ref_record, i64 527}
!369 = !{ptr @df_exit_block_uses_collect, ptr @bmp_iter_next, i64 527}
!370 = !{ptr @df_exit_block_uses_collect, ptr @bitmap_bit_p, i64 76}
!371 = !{ptr @df_exit_block_uses_collect, ptr @bb_has_eh_pred, i64 75}
!372 = !{ptr @df_exit_block_uses_collect, ptr @df_canonize_collection_rec, i64 114}
!373 = !{ptr @bb_has_eh_pred, ptr @ei_start_1, i64 884616}
!374 = !{ptr @bb_has_eh_pred, ptr @ei_cond, i64 2236954}
!375 = !{ptr @bb_has_eh_pred, ptr @ei_next, i64 1352338}
!376 = !{ptr @ei_cond, ptr @ei_end_p, i64 2236956}
!377 = !{ptr @ei_cond, ptr @ei_edge, i64 1352340}
!378 = !{ptr @ei_next, ptr @ei_container, i64 2704679}
!379 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 1352340}
!380 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!381 = !{ptr @ei_end_p, ptr @ei_container, i64 4334561}
!382 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 2236956}
!383 = !{ptr @ei_edge, ptr @ei_container, i64 2704679}
!384 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 1352340}
!385 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!386 = !{ptr @df_mark_reg, ptr @rhs_regno, i64 268}
!387 = !{ptr @df_mark_reg, ptr @fancy_abort, i64 1}
!388 = !{ptr @df_mark_reg, ptr @bitmap_set_range, i64 267}
!389 = !{ptr @df_mark_reg, ptr @bitmap_set_bit, i64 1}
!390 = !{ptr @df_refs_verify, ptr @VEC_df_ref_base_iterate, i64 15941764}
!391 = !{ptr @df_refs_verify, ptr @df_ref_equal_p, i64 13943128}
!392 = !{ptr @df_refs_verify, ptr @fancy_abort, i64 3}
!393 = !{ptr @df_mws_verify, ptr @VEC_df_mw_hardreg_ptr_base_iterate, i64 812408}
!394 = !{ptr @df_mws_verify, ptr @df_mw_equal_p, i64 1}
!395 = !{ptr @df_mws_verify, ptr @fancy_abort, i64 2}
!396 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!397 = !{!"function_entry_count", i64 76}
!398 = !{!399, !399, i64 0}
!399 = !{!"any pointer", !400, i64 0}
!400 = !{!"omnipotent char", !401, i64 0}
!401 = !{!"Simple C/C++ TBAA"}
!402 = !{!403, !399, i64 40}
!403 = !{!"dataflow", !399, i64 0, !399, i64 8, !404, i64 16, !399, i64 24, !399, i64 32, !399, i64 40, !404, i64 48, !400, i64 52, !400, i64 53, !400, i64 54}
!404 = !{!"int", !400, i64 0}
!405 = !{!"branch_weights", i32 39, i32 39}
!406 = !{!403, !399, i64 24}
!407 = !{!403, !400, i64 52}
!408 = !{!409, !399, i64 0}
!409 = !{!"df_scan_problem_data", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !399, i64 32, !399, i64 40, !399, i64 48, !410, i64 56, !410, i64 160}
!410 = !{!"bitmap_obstack", !399, i64 0, !399, i64 8, !411, i64 16}
!411 = !{!"obstack", !412, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !399, i64 32, !412, i64 40, !404, i64 48, !399, i64 56, !399, i64 64, !399, i64 72, !404, i64 80, !404, i64 80, !404, i64 80}
!412 = !{!"long", !400, i64 0}
!413 = !{!409, !399, i64 8}
!414 = !{!409, !399, i64 16}
!415 = !{!409, !399, i64 24}
!416 = !{!409, !399, i64 32}
!417 = !{!409, !399, i64 40}
!418 = !{!409, !399, i64 48}
!419 = !{!420, !399, i64 8}
!420 = !{!"function", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !399, i64 32, !399, i64 40, !399, i64 48, !399, i64 56, !399, i64 64, !399, i64 72, !399, i64 80, !399, i64 88, !399, i64 96, !404, i64 104, !404, i64 108, !404, i64 112, !404, i64 116, !404, i64 120, !404, i64 124, !399, i64 128, !404, i64 136, !404, i64 137, !404, i64 138, !404, i64 138, !404, i64 138, !404, i64 138, !404, i64 138, !404, i64 138, !404, i64 138, !404, i64 139, !404, i64 139, !404, i64 139, !404, i64 139, !404, i64 139, !404, i64 139, !404, i64 139}
!421 = !{!"branch_weights", i32 1, i32 153}
!422 = !{!423, !404, i64 80}
!423 = !{!"basic_block_def", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !400, i64 32, !399, i64 48, !399, i64 56, !400, i64 64, !412, i64 72, !404, i64 80, !404, i64 84, !404, i64 88, !404, i64 92, !404, i64 96}
!424 = !{!"branch_weights", i32 372748, i32 1}
!425 = !{!"branch_weights", i32 153, i32 745343}
!426 = distinct !{!426, !427}
!427 = !{!"llvm.loop.mustprogress"}
!428 = !{!429, !399, i64 264}
!429 = !{!"df", !400, i64 0, !400, i64 64, !399, i64 128, !430, i64 136, !430, i64 176, !399, i64 216, !399, i64 224, !399, i64 232, !404, i64 240, !404, i64 244, !399, i64 248, !404, i64 256, !404, i64 260, !399, i64 264, !399, i64 272, !399, i64 280, !399, i64 288, !399, i64 296, !399, i64 304, !399, i64 312, !399, i64 320, !399, i64 328, !399, i64 336, !404, i64 344, !404, i64 348, !399, i64 352, !404, i64 360, !404, i64 364, !400, i64 365, !400, i64 366}
!430 = !{!"df_ref_info", !399, i64 0, !399, i64 8, !399, i64 16, !404, i64 24, !404, i64 28, !404, i64 32, !404, i64 36}
!431 = !{!429, !399, i64 272}
!432 = !{!429, !399, i64 280}
!433 = !{!429, !399, i64 288}
!434 = !{!429, !399, i64 296}
!435 = !{!429, !399, i64 304}
!436 = !{!429, !399, i64 312}
!437 = !{!429, !399, i64 320}
!438 = !{!403, !400, i64 54}
!439 = !{!"df-scan.c:df_scan_free_internal"}
!440 = !{!429, !404, i64 256}
!441 = !{!429, !399, i64 248}
!442 = !{!"branch_weights", i32 1822285, i32 1656205}
!443 = !{!444, !399, i64 8}
!444 = !{!"df_insn_info", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !399, i64 32, !404, i64 40}
!445 = !{!"branch_weights", i32 506641, i32 1149565}
!446 = !{!"branch_weights", i32 505550, i32 644016}
!447 = !{!444, !399, i64 16}
!448 = !{!"branch_weights", i32 303399, i32 846167}
!449 = !{!444, !399, i64 24}
!450 = !{!"branch_weights", i32 1149050, i32 516}
!451 = !{!444, !399, i64 32}
!452 = !{!"branch_weights", i32 1149565, i32 1}
!453 = !{!"branch_weights", i32 6956825, i32 153}
!454 = distinct !{!454, !427}
!455 = !{!"branch_weights", i32 1, i32 342830}
!456 = !{!457, !399, i64 0}
!457 = !{!"df_scan_bb_info", !399, i64 0, !399, i64 8}
!458 = !{!"branch_weights", i32 342754, i32 77}
!459 = !{!457, !399, i64 8}
!460 = !{!"branch_weights", i32 77, i32 342754}
!461 = !{!"branch_weights", i32 153, i32 685507}
!462 = distinct !{!462, !427}
!463 = !{!429, !399, i64 136}
!464 = !{!429, !399, i64 144}
!465 = !{!429, !399, i64 152}
!466 = !{!429, !399, i64 176}
!467 = !{!429, !399, i64 184}
!468 = !{!429, !399, i64 192}
!469 = !{!429, !399, i64 216}
!470 = !{!429, !399, i64 224}
!471 = !{!429, !399, i64 232}
!472 = !{!403, !399, i64 8}
!473 = !{!403, !404, i64 16}
!474 = !{!"function_entry_count", i64 2979511}
!475 = !{!429, !404, i64 240}
!476 = !{!"branch_weights", i32 77, i32 2979436}
!477 = !{!429, !404, i64 244}
!478 = !{!"branch_weights", i32 584005, i32 2395507}
!479 = !{!404, !404, i64 0}
!480 = !{!"branch_weights", i32 584005, i32 0}
!481 = distinct !{!481, !427}
!482 = !{!"function_entry_count", i64 2917323}
!483 = !{!"branch_weights", i32 111, i32 2917214}
!484 = !{!"function_entry_count", i64 2070800}
!485 = !{!"df-scan.c:df_scan_get_bb_info"}
!486 = !{!"branch_weights", i32 2070801, i32 1}
!487 = !{!"function_entry_count", i64 442422}
!488 = !{!"df-scan.c:df_scan_set_bb_info"}
!489 = !{!"function_entry_count", i64 38}
!490 = !{!429, !404, i64 172}
!491 = !{!429, !404, i64 212}
!492 = !{!493, !399, i64 16}
!493 = !{!"control_flow_graph", !399, i64 0, !399, i64 8, !399, i64 16, !404, i64 24, !404, i64 28, !404, i64 32, !399, i64 40, !404, i64 48, !400, i64 52, !400, i64 60, !404, i64 68, !404, i64 72}
!494 = !{!493, !399, i64 0}
!495 = !{!423, !399, i64 56}
!496 = !{!493, !399, i64 8}
!497 = !{!"branch_weights", i32 153, i32 745039}
!498 = distinct !{!498, !427}
!499 = !{!"df-scan.c:df_get_regular_block_artificial_uses"}
!500 = !{!501, !400, i64 477}
!501 = !{!"rtl_data", !502, i64 0, !503, i64 40, !504, i64 96, !505, i64 112, !507, i64 208, !508, i64 248, !404, i64 312, !399, i64 320, !399, i64 328, !399, i64 336, !399, i64 344, !399, i64 352, !399, i64 360, !399, i64 368, !399, i64 376, !399, i64 384, !399, i64 392, !412, i64 400, !399, i64 408, !399, i64 416, !399, i64 424, !404, i64 432, !404, i64 436, !404, i64 440, !404, i64 444, !404, i64 448, !404, i64 452, !399, i64 456, !400, i64 464, !400, i64 465, !400, i64 466, !400, i64 467, !400, i64 468, !400, i64 469, !400, i64 470, !400, i64 471, !400, i64 472, !400, i64 473, !400, i64 474, !400, i64 475, !400, i64 476, !400, i64 477, !400, i64 478, !400, i64 479, !400, i64 480, !400, i64 481, !400, i64 482, !400, i64 483, !400, i64 484, !400, i64 485}
!502 = !{!"expr_status", !404, i64 0, !404, i64 4, !404, i64 8, !399, i64 16, !399, i64 24, !399, i64 32}
!503 = !{!"emit_status", !404, i64 0, !404, i64 4, !399, i64 8, !399, i64 16, !399, i64 24, !404, i64 32, !404, i64 36, !404, i64 40, !404, i64 44, !399, i64 48}
!504 = !{!"varasm_status", !399, i64 0, !404, i64 8}
!505 = !{!"incoming_args", !404, i64 0, !404, i64 4, !404, i64 8, !399, i64 16, !506, i64 24, !399, i64 88}
!506 = !{!"ix86_args", !404, i64 0, !404, i64 4, !404, i64 8, !404, i64 12, !404, i64 16, !404, i64 20, !404, i64 24, !404, i64 28, !404, i64 32, !404, i64 36, !404, i64 40, !404, i64 44, !404, i64 48, !404, i64 52, !404, i64 56, !404, i64 60}
!507 = !{!"function_subsections", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !399, i64 32}
!508 = !{!"rtl_eh", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !399, i64 32, !399, i64 40, !400, i64 48}
!509 = !{!"branch_weights", i32 1, i32 39}
!510 = !{!400, !400, i64 0}
!511 = !{!"branch_weights", i32 39, i32 1}
!512 = !{!"df-scan.c:df_get_eh_block_artificial_uses"}
!513 = !{!"function_entry_count", i64 230}
!514 = !{!"df-scan.c:df_get_entry_block_def_set"}
!515 = !{!"branch_weights", i32 11501, i32 691}
!516 = !{!"branch_weights", i32 231, i32 11960}
!517 = distinct !{!517, !427}
!518 = !{!"branch_weights", i32 191, i32 41}
!519 = !{!"branch_weights", i32 161, i32 1961}
!520 = !{!"branch_weights", i32 43, i32 119}
!521 = !{!"branch_weights", i32 41, i32 2080}
!522 = distinct !{!522, !427}
!523 = !{!524, !399, i64 1488}
!524 = !{!"gcc_target", !525, i64 0, !527, i64 368, !528, i64 664, !404, i64 744, !399, i64 752, !399, i64 760, !399, i64 768, !399, i64 776, !399, i64 784, !399, i64 792, !399, i64 800, !399, i64 808, !399, i64 816, !399, i64 824, !399, i64 832, !399, i64 840, !399, i64 848, !399, i64 856, !399, i64 864, !399, i64 872, !399, i64 880, !399, i64 888, !399, i64 896, !399, i64 904, !399, i64 912, !399, i64 920, !399, i64 928, !399, i64 936, !399, i64 944, !399, i64 952, !399, i64 960, !399, i64 968, !399, i64 976, !399, i64 984, !399, i64 992, !399, i64 1000, !399, i64 1008, !399, i64 1016, !399, i64 1024, !399, i64 1032, !399, i64 1040, !399, i64 1048, !399, i64 1056, !412, i64 1064, !412, i64 1072, !399, i64 1080, !399, i64 1088, !399, i64 1096, !399, i64 1104, !399, i64 1112, !399, i64 1120, !399, i64 1128, !399, i64 1136, !399, i64 1144, !399, i64 1152, !399, i64 1160, !399, i64 1168, !529, i64 1176, !399, i64 1232, !399, i64 1240, !399, i64 1248, !399, i64 1256, !399, i64 1264, !399, i64 1272, !399, i64 1280, !399, i64 1288, !399, i64 1296, !399, i64 1304, !399, i64 1312, !399, i64 1320, !399, i64 1328, !399, i64 1336, !399, i64 1344, !399, i64 1352, !399, i64 1360, !399, i64 1368, !399, i64 1376, !399, i64 1384, !399, i64 1392, !399, i64 1400, !399, i64 1408, !399, i64 1416, !399, i64 1424, !399, i64 1432, !399, i64 1440, !399, i64 1448, !399, i64 1456, !412, i64 1464, !530, i64 1472, !399, i64 1664, !399, i64 1672, !399, i64 1680, !399, i64 1688, !399, i64 1696, !399, i64 1704, !399, i64 1712, !399, i64 1720, !399, i64 1728, !399, i64 1736, !399, i64 1744, !399, i64 1752, !399, i64 1760, !399, i64 1768, !399, i64 1776, !531, i64 1784, !532, i64 1792, !533, i64 1896, !534, i64 1968, !399, i64 2016, !400, i64 2024, !400, i64 2025, !400, i64 2026, !400, i64 2027, !400, i64 2028, !400, i64 2029, !400, i64 2030, !400, i64 2031, !400, i64 2032, !400, i64 2033, !400, i64 2034, !400, i64 2035}
!525 = !{!"asm_out", !399, i64 0, !399, i64 8, !399, i64 16, !526, i64 24, !526, i64 56, !399, i64 88, !399, i64 96, !399, i64 104, !399, i64 112, !399, i64 120, !399, i64 128, !399, i64 136, !399, i64 144, !399, i64 152, !399, i64 160, !399, i64 168, !399, i64 176, !399, i64 184, !399, i64 192, !399, i64 200, !399, i64 208, !399, i64 216, !399, i64 224, !399, i64 232, !399, i64 240, !399, i64 248, !399, i64 256, !399, i64 264, !399, i64 272, !399, i64 280, !399, i64 288, !399, i64 296, !399, i64 304, !399, i64 312, !399, i64 320, !399, i64 328, !399, i64 336, !399, i64 344, !399, i64 352, !399, i64 360}
!526 = !{!"asm_int_op", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24}
!527 = !{!"sched", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !399, i64 32, !399, i64 40, !399, i64 48, !399, i64 56, !399, i64 64, !399, i64 72, !399, i64 80, !399, i64 88, !399, i64 96, !399, i64 104, !399, i64 112, !399, i64 120, !399, i64 128, !399, i64 136, !399, i64 144, !399, i64 152, !399, i64 160, !399, i64 168, !399, i64 176, !399, i64 184, !399, i64 192, !399, i64 200, !399, i64 208, !399, i64 216, !399, i64 224, !399, i64 232, !399, i64 240, !399, i64 248, !399, i64 256, !399, i64 264, !399, i64 272, !399, i64 280, !399, i64 288}
!528 = !{!"vectorize", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !399, i64 32, !399, i64 40, !399, i64 48, !399, i64 56, !399, i64 64, !399, i64 72}
!529 = !{!"addr_space", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !399, i64 32, !399, i64 40, !399, i64 48}
!530 = !{!"calls", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !399, i64 32, !399, i64 40, !399, i64 48, !399, i64 56, !399, i64 64, !399, i64 72, !399, i64 80, !399, i64 88, !399, i64 96, !399, i64 104, !399, i64 112, !399, i64 120, !399, i64 128, !399, i64 136, !399, i64 144, !399, i64 152, !399, i64 160, !399, i64 168, !399, i64 176, !399, i64 184}
!531 = !{!"c", !399, i64 0}
!532 = !{!"cxx", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !399, i64 32, !399, i64 40, !399, i64 48, !399, i64 56, !399, i64 64, !399, i64 72, !399, i64 80, !399, i64 88, !399, i64 96}
!533 = !{!"emutls", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !399, i64 32, !399, i64 40, !399, i64 48, !399, i64 56, !400, i64 64, !400, i64 65}
!534 = !{!"target_option_hooks", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !399, i64 32, !399, i64 40}
!535 = !{!"branch_weights", i32 231, i32 1}
!536 = !{!524, !399, i64 1640}
!537 = !{!"branch_weights", i32 27259, i32 117}
!538 = !{!"branch_weights", i32 1069054371, i32 1078429277}
!539 = !{!"branch_weights", i32 1, i32 115}
!540 = !{!"branch_weights", i32 115, i32 1}
!541 = !{!"branch_weights", i32 1, i32 231}
!542 = !{!524, !399, i64 2016}
!543 = !{!"function_entry_count", i64 152}
!544 = !{!"df-scan.c:df_record_entry_block_defs"}
!545 = !{i64 264, i64 1033}
!546 = !{!547, !399, i64 0}
!547 = !{!"df_collection_rec", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24}
!548 = !{!"function_entry_count", i64 268}
!549 = !{!"df-scan.c:df_get_exit_block_use_set"}
!550 = !{!"branch_weights", i32 31743, i32 117}
!551 = !{!"branch_weights", i32 269, i32 1}
!552 = !{!"branch_weights", i32 14205, i32 1}
!553 = !{!"branch_weights", i32 269, i32 13936}
!554 = distinct !{!554, !427}
!555 = !{!"branch_weights", i32 229, i32 41}
!556 = !{!"branch_weights", i32 1824, i32 298}
!557 = !{!412, !412, i64 0}
!558 = !{!"branch_weights", i32 159, i32 140}
!559 = distinct !{!559, !427}
!560 = !{!"branch_weights", i32 117, i32 31743}
!561 = !{!"branch_weights", i32 229, i32 61871}
!562 = !{!"function_entry_count", i64 114}
!563 = !{!"df-scan.c:df_record_exit_block_uses"}
!564 = !{!547, !399, i64 8}
!565 = !{!"function_entry_count", i64 525485}
!566 = !{!"df-scan.c:VEC_basic_block_base_index"}
!567 = !{!"function_entry_count", i64 524953}
!568 = !{!"branch_weights", i32 82684, i32 442271}
!569 = !{!"branch_weights", i32 69676, i32 372596}
!570 = !{!547, !399, i64 16}
!571 = !{!547, !399, i64 24}
!572 = !{!"branch_weights", i32 1, i32 155}
!573 = !{!574, !399, i64 8}
!574 = !{!"rtl_bb_info", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !404, i64 32}
!575 = !{!"branch_weights", i32 372596, i32 1854578}
!576 = !{!"branch_weights", i32 1854578, i32 1}
!577 = !{!"branch_weights", i32 -707615199, i32 1719163536}
!578 = !{!444, !404, i64 40}
!579 = !{!"branch_weights", i32 155, i32 8908385}
!580 = distinct !{!580, !427}
!581 = !{!"function_entry_count", i64 0}
!582 = !{!430, !404, i64 36}
!583 = !{!429, !400, i64 365}
!584 = !{!429, !399, i64 128}
!585 = distinct !{!585, !427}
!586 = !{!444, !399, i64 0}
!587 = !{!"function_entry_count", i64 23214123}
!588 = !{!"df-scan.c:df_ref_create_structure"}
!589 = !{!"branch_weights", i32 30628, i32 23183497}
!590 = !{!"branch_weights", i32 1, i32 19049596, i32 1324073, i32 2840440, i32 18}
!591 = !{!"branch_weights", i32 19049596, i32 1}
!592 = !{!"branch_weights", i32 1324073, i32 1}
!593 = !{!"branch_weights", i32 1, i32 2840440}
!594 = !{!"branch_weights", i32 1, i32 18}
!595 = !{!429, !404, i64 360}
!596 = !{!"branch_weights", i32 328600026, i32 -614614994}
!597 = !{!"branch_weights", i32 19638604, i32 1672741}
!598 = !{!"branch_weights", i32 1003231, i32 18635374}
!599 = !{!"branch_weights", i32 1672647, i32 95}
!600 = !{!"branch_weights", i32 9121, i32 95}
!601 = !{!"branch_weights", i32 1, i32 23214124}
!602 = !{!"branch_weights", i32 19909681, i32 3304444}
!603 = !{!"branch_weights", i32 3288442, i32 16003}
!604 = !{!"function_entry_count", i64 10096244}
!605 = !{!"df-scan.c:df_install_ref"}
!606 = !{!607, !399, i64 0}
!607 = !{!"df_reg_info", !399, i64 0, !404, i64 8}
!608 = !{!607, !404, i64 8}
!609 = !{!"branch_weights", i32 8089302, i32 2006944}
!610 = !{!"branch_weights", i32 2006944, i32 1}
!611 = !{!429, !399, i64 352}
!612 = !{!"branch_weights", i32 10096245, i32 1}
!613 = !{!"branch_weights", i32 354660, i32 9741586}
!614 = !{!430, !404, i64 28}
!615 = !{!430, !399, i64 0}
!616 = !{!430, !404, i64 32}
!617 = !{!"function_entry_count", i64 59499388}
!618 = !{!"df-scan.c:df_ref_compare"}
!619 = !{!"branch_weights", i32 1, i32 59499389}
!620 = !{!"branch_weights", i32 48282346, i32 11217044}
!621 = !{!"branch_weights", i32 2714, i32 48279633}
!622 = !{!"branch_weights", i32 2224, i32 491}
!623 = !{!"branch_weights", i32 2224, i32 1}
!624 = !{!"branch_weights", i32 2224, i32 4450, i32 9892352, i32 2224}
!625 = !{!"branch_weights", i32 4449, i32 1}
!626 = !{!"branch_weights", i32 1, i32 2224}
!627 = !{!"function_entry_count", i64 14363}
!628 = !{!"branch_weights", i32 1, i32 14364}
!629 = !{!"branch_weights", i32 14364, i32 1}
!630 = !{!"df-scan.c:df_ref_compress_rec"}
!631 = !{!"branch_weights", i32 14341, i32 24}
!632 = !{!"branch_weights", i32 1176, i32 1128}
!633 = distinct !{!633, !427}
!634 = !{!"branch_weights", i32 1, i32 191}
!635 = !{!"branch_weights", i32 191, i32 1}
!636 = distinct !{!636, !427}
!637 = !{!"function_entry_count", i64 1221410}
!638 = !{!"df-scan.c:df_reg_chain_unlink"}
!639 = !{!"branch_weights", i32 274595, i32 946817}
!640 = !{!"branch_weights", i32 931330, i32 15488}
!641 = !{!"branch_weights", i32 15488, i32 1, i32 1, i32 1}
!642 = !{!"branch_weights", i32 2118570999, i32 28912649}
!643 = !{!"branch_weights", i32 16236, i32 1}
!644 = !{!"branch_weights", i32 1221411, i32 1}
!645 = !{!"branch_weights", i32 600075, i32 621337}
!646 = !{!"branch_weights", i32 621337, i32 1}
!647 = !{!"branch_weights", i32 289845, i32 931567}
!648 = !{!"branch_weights", i32 289845, i32 1}
!649 = !{!"branch_weights", i32 169869, i32 1051543}
!650 = !{!"function_entry_count", i64 2916648}
!651 = !{!"branch_weights", i32 2916649, i32 1}
!652 = !{!"function_entry_count", i64 1470557}
!653 = !{!"branch_weights", i32 109871, i32 1360688}
!654 = !{!"branch_weights", i32 1287003, i32 73686}
!655 = !{!"branch_weights", i32 1360688, i32 1}
!656 = !{!"branch_weights", i32 1273832, i32 86857}
!657 = !{!"branch_weights", i32 23146, i32 2147460502}
!658 = !{!"branch_weights", i32 86857, i32 1}
!659 = !{!"branch_weights", i32 1273832, i32 1}
!660 = !{!"branch_weights", i32 13388, i32 1260445}
!661 = !{!"branch_weights", i32 224257, i32 1036189}
!662 = !{!"branch_weights", i32 1036189, i32 1}
!663 = !{!"function_entry_count", i64 1036188}
!664 = !{!"df-scan.c:df_mw_hardreg_chain_delete"}
!665 = !{!"branch_weights", i32 1, i32 1036189}
!666 = !{!"branch_weights", i32 1036188, i32 1}
!667 = !{!"branch_weights", i32 1, i32 0}
!668 = distinct !{!668, !427}
!669 = !{!"function_entry_count", i64 199300}
!670 = !{!"df-scan.c:df_ref_chain_delete_du_chain"}
!671 = !{!"branch_weights", i32 1, i32 199300}
!672 = !{!"branch_weights", i32 326501, i32 1}
!673 = !{!"branch_weights", i32 199300, i32 127201}
!674 = distinct !{!674, !427}
!675 = !{!"function_entry_count", i64 3364575}
!676 = !{!"df-scan.c:df_ref_chain_delete"}
!677 = !{!"branch_weights", i32 2157528, i32 1207048}
!678 = !{!"branch_weights", i32 1207048, i32 0}
!679 = distinct !{!679, !427}
!680 = !{!"branch_weights", i32 486817633, i32 1660666015}
!681 = !{!"function_entry_count", i64 1696941}
!682 = !{!"branch_weights", i32 210607, i32 1486336}
!683 = !{!"branch_weights", i32 -1388537650, i32 143293501}
!684 = !{!"branch_weights", i32 1590, i32 1414911}
!685 = !{!"branch_weights", i32 1590, i32 1}
!686 = !{!"branch_weights", i32 1414519, i32 393}
!687 = !{!"branch_weights", i32 1414510, i32 10}
!688 = !{!"branch_weights", i32 1317508, i32 97012}
!689 = !{!"branch_weights", i32 6954, i32 2147476694}
!690 = !{!"branch_weights", i32 97012, i32 1}
!691 = !{!"branch_weights", i32 505101, i32 812408}
!692 = !{i8 0, i8 2}
!693 = !{!"branch_weights", i32 426909, i32 385500}
!694 = !{!"branch_weights", i32 385500, i32 1}
!695 = !{!"branch_weights", i32 426909, i32 1}
!696 = !{!"branch_weights", i32 505101, i32 1}
!697 = !{!"branch_weights", i32 1, i32 932009}
!698 = !{!"function_entry_count", i64 5336308}
!699 = !{!"df-scan.c:VEC_df_ref_stack_alloc1"}
!700 = !{!"df-scan.c:VEC_df_ref_base_embedded_size"}
!701 = !{!"function_entry_count", i64 1816488}
!702 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_stack_alloc1"}
!703 = !{!"function_entry_count", i64 812407}
!704 = !{!"df-scan.c:df_insn_refs_verify"}
!705 = !{!"branch_weights", i32 1, i32 812408}
!706 = !{!"branch_weights", i32 -792750580, i32 -416526791}
!707 = !{!"function_entry_count", i64 385499}
!708 = !{!"df-scan.c:df_free_collection_rec"}
!709 = !{i32 0, i32 2}
!710 = !{!"branch_weights", i32 1, i32 385499}
!711 = !{!"branch_weights", i32 28244, i32 357256}
!712 = !{!"branch_weights", i32 385499, i32 12375126}
!713 = distinct !{!713, !427}
!714 = !{!"branch_weights", i32 385499, i32 1}
!715 = !{!"branch_weights", i32 357256, i32 0}
!716 = distinct !{!716, !427}
!717 = distinct !{!717, !427}
!718 = distinct !{!718, !427}
!719 = !{!"function_entry_count", i64 2571251}
!720 = !{!"df-scan.c:df_insn_refs_collect"}
!721 = !{!"branch_weights", i32 966986, i32 1604266}
!722 = !{!"branch_weights", i32 1564509, i32 37071, i32 2688, i32 1}
!723 = !{!"branch_weights", i32 1604266, i32 0}
!724 = distinct !{!724, !427}
!725 = !{!"branch_weights", i32 413826, i32 2157427}
!726 = !{!"branch_weights", i32 1, i32 2571252}
!727 = !{!"function_entry_count", i64 2684999}
!728 = !{!"df-scan.c:df_refs_add_to_chains"}
!729 = !{!"branch_weights", i32 442537, i32 2242464}
!730 = !{!"branch_weights", i32 56712, i32 2185753}
!731 = !{!"branch_weights", i32 2185753, i32 1}
!732 = !{!"branch_weights", i32 1, i32 2242464}
!733 = !{!"branch_weights", i32 2242464, i32 1}
!734 = !{!"branch_weights", i32 442499, i32 39}
!735 = !{!"branch_weights", i32 442461, i32 77}
!736 = !{!"branch_weights", i32 77, i32 1}
!737 = !{!"df-scan.c:VEC_df_ref_stack_free"}
!738 = !{!"branch_weights", i32 1, i32 5336309}
!739 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_stack_free"}
!740 = !{!"branch_weights", i32 1, i32 1816489}
!741 = distinct !{!741, !427}
!742 = distinct !{!742, !427}
!743 = distinct !{!743, !427}
!744 = !{!"function_entry_count", i64 862772}
!745 = !{!"df-scan.c:bmp_iter_set_init"}
!746 = !{!747, !399, i64 0}
!747 = !{!"bitmap_head_def", !399, i64 0, !399, i64 8, !404, i64 16, !399, i64 24}
!748 = !{!749, !399, i64 0}
!749 = !{!"", !399, i64 0, !399, i64 8, !404, i64 16, !412, i64 24}
!750 = !{!749, !399, i64 8}
!751 = !{!"branch_weights", i32 6107, i32 856667}
!752 = !{!753, !404, i64 16}
!753 = !{!"bitmap_element_def", !399, i64 0, !399, i64 8, !404, i64 16, !400, i64 24}
!754 = !{!"branch_weights", i32 862567, i32 207}
!755 = !{!749, !404, i64 16}
!756 = !{!749, !412, i64 24}
!757 = !{!"function_entry_count", i64 21388440}
!758 = !{!"df-scan.c:bmp_iter_set"}
!759 = !{!"branch_weights", i32 901145, i32 20487297}
!760 = !{!"branch_weights", i32 9545785, i32 10979884}
!761 = !{!"branch_weights", i32 0, i32 9545785}
!762 = distinct !{!762, !427}
!763 = !{!"branch_weights", i32 1, i32 886640}
!764 = !{!"branch_weights", i32 872137, i32 38373}
!765 = !{!"branch_weights", i32 886640, i32 23869}
!766 = distinct !{!766, !427}
!767 = !{!753, !399, i64 0}
!768 = !{!"branch_weights", i32 862773, i32 23869}
!769 = !{!"function_entry_count", i64 20525668}
!770 = !{!"df-scan.c:bmp_iter_next"}
!771 = !{!"function_entry_count", i64 2137}
!772 = !{!"branch_weights", i32 2138, i32 1}
!773 = !{!"branch_weights", i32 2009, i32 130}
!774 = !{!"branch_weights", i32 1, i32 2137}
!775 = !{!"branch_weights", i32 0, i32 -2147483648}
!776 = !{!"branch_weights", i32 2137, i32 84720}
!777 = distinct !{!777, !427}
!778 = !{!"branch_weights", i32 62330, i32 1}
!779 = !{!"branch_weights", i32 2137, i32 60193}
!780 = distinct !{!780, !427}
!781 = !{!"branch_weights", i32 16462, i32 1}
!782 = !{!"branch_weights", i32 2137, i32 14325}
!783 = distinct !{!783, !427}
!784 = !{!429, !400, i64 366}
!785 = !{!"branch_weights", i32 2100, i32 39}
!786 = !{!"function_entry_count", i64 96225}
!787 = !{!"branch_weights", i32 1246, i32 94981}
!788 = !{!"branch_weights", i32 94981, i32 1}
!789 = !{!"branch_weights", i32 1, i32 94981}
!790 = !{!"branch_weights", i32 56712, i32 38270}
!791 = !{!"branch_weights", i32 33503, i32 2147450145}
!792 = !{!"branch_weights", i32 17290, i32 20981}
!793 = !{!"branch_weights", i32 1, i32 56712}
!794 = !{!"branch_weights", i32 1, i32 56711}
!795 = !{!"branch_weights", i32 50201, i32 44757}
!796 = !{!"branch_weights", i32 56711, i32 38245}
!797 = distinct !{!797, !427}
!798 = !{!"branch_weights", i32 56712, i32 1}
!799 = distinct !{!799, !427}
!800 = !{!"function_entry_count", i64 154}
!801 = !{!"branch_weights", i32 1, i32 154}
!802 = !{!"branch_weights", i32 682147, i32 3574895}
!803 = !{!"branch_weights", i32 190144583, i32 -2021457544}
!804 = !{!"branch_weights", i32 153, i32 8513777}
!805 = distinct !{!805, !427}
!806 = !{!"branch_weights", i32 154, i32 681993}
!807 = distinct !{!807, !427}
!808 = !{!"function_entry_count", i64 1180}
!809 = !{!"branch_weights", i32 1029, i32 153}
!810 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 77, i32 77, i32 1, i32 1}
!811 = !{!429, !404, i64 200}
!812 = !{!"df-scan.c:df_reorganize_refs_by_reg"}
!813 = !{!"df-scan.c:df_reorganize_refs_by_insn"}
!814 = distinct !{!814, !427}
!815 = !{!"branch_weights", i32 153, i32 741271}
!816 = distinct !{!816, !427}
!817 = !{!"function_entry_count", i64 1142}
!818 = !{!"branch_weights", i32 1067, i32 77}
!819 = !{!"branch_weights", i32 1, i32 39, i32 1, i32 39, i32 1, i32 1, i32 1, i32 1}
!820 = !{!429, !404, i64 160}
!821 = !{!"function_entry_count", i64 1849287}
!822 = !{!"branch_weights", i32 580098, i32 1269191}
!823 = !{!"branch_weights", i32 1122940, i32 146252}
!824 = !{!"branch_weights", i32 146252, i32 1}
!825 = !{!"branch_weights", i32 146247, i32 6}
!826 = !{!"branch_weights", i32 70109, i32 76144}
!827 = !{!"branch_weights", i32 70109, i32 1}
!828 = !{!"branch_weights", i32 -721737619, i32 6592901}
!829 = !{!"branch_weights", i32 1, i32 76004}
!830 = !{!"branch_weights", i32 76004, i32 1}
!831 = !{!"function_entry_count", i64 303912}
!832 = !{!"branch_weights", i32 -26219265, i32 -1903136850}
!833 = !{!"function_entry_count", i64 327408}
!834 = !{!"df-scan.c:df_ref_change_reg_with_loc_1"}
!835 = !{!"branch_weights", i32 1, i32 327408}
!836 = !{!"branch_weights", i32 -1276494693, i32 20524362}
!837 = !{!"branch_weights", i32 889450, i32 1}
!838 = !{!"branch_weights", i32 356504, i32 1}
!839 = !{!"branch_weights", i32 356480, i32 25}
!840 = !{!"branch_weights", i32 214115, i32 142390}
!841 = !{!"branch_weights", i32 236, i32 356269}
!842 = !{!"branch_weights", i32 1, i32 356504}
!843 = !{!"branch_weights", i32 356443, i32 62}
!844 = !{!"branch_weights", i32 1115, i32 355389}
!845 = !{!"branch_weights", i32 355389, i32 0}
!846 = distinct !{!846, !427}
!847 = !{!"branch_weights", i32 327408, i32 924208}
!848 = distinct !{!848, !427}
!849 = !{!"function_entry_count", i64 56711}
!850 = !{!"df-scan.c:df_mw_hardreg_chain_delete_eq_uses"}
!851 = distinct !{!851, !427}
!852 = distinct !{!852, !427}
!853 = !{!"function_entry_count", i64 9086702}
!854 = !{!"df-scan.c:df_uses_record"}
!855 = !{!"branch_weights", i32 1, i32 127}
!856 = !{!"branch_weights", i32 2521904, i32 848033, i32 591092, i32 2255252, i32 53755, i32 1, i32 1, i32 1, i32 756162, i32 1, i32 1, i32 1, i32 81389, i32 646739, i32 30824, i32 1536352, i32 1, i32 22023, i32 2203868, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 89, i32 1, i32 1, i32 1, i32 1}
!857 = !{!"branch_weights", i32 153, i32 81237}
!858 = !{!"branch_weights", i32 127, i32 16129}
!859 = !{!"branch_weights", i32 30824, i32 1}
!860 = !{!"branch_weights", i32 22023, i32 1}
!861 = !{!"branch_weights", i32 1142, i32 20882}
!862 = !{!"branch_weights", i32 1142, i32 1}
!863 = !{!"branch_weights", i32 2203868, i32 1}
!864 = !{!"branch_weights", i32 1, i32 1, i32 1175279, i32 1, i32 1, i32 847941, i32 1, i32 163970, i32 16681, i32 1}
!865 = !{!"branch_weights", i32 1, i32 16681}
!866 = !{!867, !404, i64 0}
!867 = !{!"rtvec_def", !404, i64 0, !400, i64 8}
!868 = distinct !{!868, !427}
!869 = !{!"branch_weights", i32 1, i32 89}
!870 = !{!"branch_weights", i32 1, i32 82105}
!871 = !{!"branch_weights", i32 98028, i32 -649375639, i32 52447956}
!872 = !{!"branch_weights", i32 81858, i32 1}
!873 = !{!"branch_weights", i32 2460767, i32 3229081}
!874 = !{!"branch_weights", i32 82011, i32 81858}
!875 = distinct !{!875, !427}
!876 = !{!"branch_weights", i32 5689752, i32 82105}
!877 = distinct !{!877, !427}
!878 = !{!"branch_weights", i32 127, i32 1478075905}
!879 = !{!"function_entry_count", i64 3070498}
!880 = !{!"df-scan.c:df_canonize_collection_rec"}
!881 = !{!"function_entry_count", i64 5312961}
!882 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_base_length"}
!883 = !{!"branch_weights", i32 267, i32 5312696}
!884 = !{!885, !404, i64 0}
!885 = !{!"VEC_df_mw_hardreg_ptr_base", !404, i64 0, !404, i64 4, !400, i64 8}
!886 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_base_address"}
!887 = !{!"df-scan.c:df_mw_compare"}
!888 = !{!889, !404, i64 12}
!889 = !{!"df_mw_hardreg", !399, i64 0, !404, i64 8, !404, i64 10, !404, i64 12, !404, i64 16, !404, i64 20}
!890 = !{!889, !404, i64 16}
!891 = !{!889, !399, i64 0}
!892 = !{!889, !404, i64 20}
!893 = distinct !{!893, !427}
!894 = !{!"function_entry_count", i64 442270}
!895 = !{!"df-scan.c:df_bb_refs_collect"}
!896 = !{!"branch_weights", i32 -1238660461, i32 6910, i32 6910}
!897 = !{!"branch_weights", i32 442271, i32 1}
!898 = !{!423, !404, i64 96}
!899 = !{!"branch_weights", i32 1, i32 442270}
!900 = !{!"branch_weights", i32 442270, i32 880247}
!901 = distinct !{!901, !427}
!902 = !{!"branch_weights", i32 77, i32 79}
!903 = !{!"function_entry_count", i64 192}
!904 = !{!"branch_weights", i32 1, i32 193}
!905 = !{!"branch_weights", i32 39, i32 155}
!906 = !{!"branch_weights", i32 38, i32 2}
!907 = !{!"function_entry_count", i64 56314}
!908 = !{!"function_entry_count", i64 37326}
!909 = !{!"function_entry_count", i64 108823}
!910 = !{!"branch_weights", i32 108656, i32 169}
!911 = !{!"branch_weights", i32 1, i32 169}
!912 = !{!"function_entry_count", i64 1147}
!913 = !{!"branch_weights", i32 1072, i32 77}
!914 = !{!"branch_weights", i32 56315, i32 4478}
!915 = !{!"branch_weights", i32 56085, i32 231}
!916 = !{!"branch_weights", i32 1148, i32 59644}
!917 = distinct !{!917, !427}
!918 = !{!"branch_weights", i32 -2147483648, i32 0}
!919 = distinct !{!919, !427}
!920 = distinct !{!920, !427}
!921 = distinct !{!921, !427}
!922 = !{!"df-scan.c:df_reg_chain_mark"}
!923 = distinct !{!923, !427}
!924 = !{!"df-scan.c:df_entry_block_bitmap_verify"}
!925 = !{!"df-scan.c:df_exit_block_bitmap_verify"}
!926 = !{!"df-scan.c:df_bb_verify"}
!927 = !{!574, !399, i64 0}
!928 = distinct !{!928, !427}
!929 = !{!"df-scan.c:df_reg_chain_verify_unmarked"}
!930 = distinct !{!930, !427}
!931 = !{!"function_entry_count", i64 99593}
!932 = !{!"df-scan.c:df_scan_free_bb_info"}
!933 = !{!"branch_weights", i32 1, i32 99594}
!934 = !{!"branch_weights", i32 99593, i32 1}
!935 = !{!"branch_weights", i32 99594, i32 1}
!936 = distinct !{!936, !427}
!937 = !{!"df-scan.c:df_scan_free"}
!938 = !{!"df-scan.c:df_scan_start_dump"}
!939 = distinct !{!939, !427}
!940 = distinct !{!940, !427}
!941 = distinct !{!941, !427}
!942 = distinct !{!942, !427}
!943 = !{!"df-scan.c:df_scan_start_block"}
!944 = !{!"function_entry_count", i64 14339289}
!945 = !{!"df-scan.c:df_free_ref"}
!946 = !{!"branch_weights", i32 1, i32 12711517, i32 326501, i32 1301257, i32 18}
!947 = !{!"function_entry_count", i64 43545432}
!948 = !{!"df-scan.c:VEC_df_ref_base_iterate"}
!949 = !{!"branch_weights", i32 1, i32 43545433}
!950 = !{!951, !404, i64 0}
!951 = !{!"VEC_df_ref_base", !404, i64 0, !404, i64 4, !400, i64 8}
!952 = !{!"branch_weights", i32 37203436, i32 6341998}
!953 = !{!"function_entry_count", i64 1197906}
!954 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_base_iterate"}
!955 = !{!"branch_weights", i32 1, i32 1197907}
!956 = !{!"df-scan.c:df_reorganize_refs_by_reg_by_insn"}
!957 = !{!430, !399, i64 8}
!958 = !{!430, !399, i64 16}
!959 = distinct !{!959, !427}
!960 = distinct !{!960, !427}
!961 = distinct !{!961, !427}
!962 = distinct !{!962, !427}
!963 = distinct !{!963, !427}
!964 = distinct !{!964, !427}
!965 = distinct !{!965, !427}
!966 = distinct !{!966, !427}
!967 = distinct !{!967, !427}
!968 = distinct !{!968, !427}
!969 = distinct !{!969, !427}
!970 = distinct !{!970, !427}
!971 = distinct !{!971, !427}
!972 = distinct !{!972, !427}
!973 = distinct !{!973, !427}
!974 = !{!"df-scan.c:df_reorganize_refs_by_reg_by_reg"}
!975 = !{!"branch_weights", i32 155, i32 1}
!976 = !{!"branch_weights", i32 1, i32 292003}
!977 = !{!"branch_weights", i32 1, i32 292002}
!978 = !{!430, !404, i64 24}
!979 = !{!"branch_weights", i32 3571235, i32 1}
!980 = !{!"branch_weights", i32 292002, i32 3279233}
!981 = distinct !{!981, !427}
!982 = !{!"branch_weights", i32 292003, i32 1}
!983 = distinct !{!983, !427}
!984 = distinct !{!984, !427}
!985 = !{!"branch_weights", i32 155, i32 1167857}
!986 = distinct !{!986, !427}
!987 = !{!"df-scan.c:df_count_refs"}
!988 = !{!"branch_weights", i32 1, i32 229}
!989 = !{!"branch_weights", i32 583323, i32 292003}
!990 = !{!"branch_weights", i32 292003, i32 583323}
!991 = !{!"branch_weights", i32 229, i32 1750421}
!992 = distinct !{!992, !427}
!993 = !{!"df-scan.c:df_check_and_grow_ref_info"}
!994 = !{!"df-scan.c:df_get_artificial_defs"}
!995 = !{!"function_entry_count", i64 370711}
!996 = !{!"df-scan.c:df_get_artificial_uses"}
!997 = !{!"df-scan.c:df_grow_ref_info"}
!998 = !{!"df-scan.c:df_reorganize_refs_by_insn_bb"}
!999 = !{!"branch_weights", i32 370712, i32 1}
!1000 = !{!"branch_weights", i32 1, i32 370712}
!1001 = !{!"branch_weights", i32 1, i32 228}
!1002 = !{!"branch_weights", i32 370712, i32 1906197}
!1003 = !{!"branch_weights", i32 -1183791299, i32 1220910344}
!1004 = !{!"branch_weights", i32 1368973, i32 1}
!1005 = !{!"branch_weights", i32 1, i32 1368973}
!1006 = !{!"branch_weights", i32 228, i32 2276452}
!1007 = distinct !{!1007, !427}
!1008 = !{!"function_entry_count", i64 3108655}
!1009 = !{!"df-scan.c:df_add_refs_to_table"}
!1010 = !{!"branch_weights", i32 380264, i32 2728392}
!1011 = !{!"branch_weights", i32 2728392, i32 1}
!1012 = !{!"branch_weights", i32 2728392, i32 0}
!1013 = distinct !{!1013, !427}
!1014 = !{!"function_entry_count", i64 9211494}
!1015 = !{!"df-scan.c:df_sort_and_compress_refs"}
!1016 = !{!"branch_weights", i32 8107480, i32 1104016}
!1017 = !{!"branch_weights", i32 470384, i32 633633}
!1018 = !{!"branch_weights", i32 91656, i32 378729}
!1019 = !{!"branch_weights", i32 232503, i32 1655826}
!1020 = !{!"branch_weights", i32 871513, i32 1}
!1021 = !{!"branch_weights", i32 19369276, i32 1}
!1022 = !{!"branch_weights", i32 17626250, i32 871513}
!1023 = distinct !{!1023, !427}
!1024 = !{!"branch_weights", i32 18497762, i32 871514}
!1025 = distinct !{!1025, !427}
!1026 = !{!"df-scan.c:df_sort_and_compress_mws"}
!1027 = !{!"branch_weights", i32 3070499, i32 1}
!1028 = distinct !{!1028, !427}
!1029 = distinct !{!1029, !427}
!1030 = !{!"function_entry_count", i64 16710533}
!1031 = !{!"df-scan.c:VEC_df_ref_base_length"}
!1032 = !{!"branch_weights", i32 114221, i32 16596314}
!1033 = !{!"function_entry_count", i64 41431250}
!1034 = !{!"df-scan.c:VEC_df_ref_base_index"}
!1035 = !{!"function_entry_count", i64 91655}
!1036 = !{!"df-scan.c:df_swap_refs"}
!1037 = !{!"function_entry_count", i64 401130}
!1038 = !{!"df-scan.c:VEC_df_ref_base_address"}
!1039 = !{!"branch_weights", i32 1, i32 401131}
!1040 = !{!"function_entry_count", i64 32066475}
!1041 = !{!"df-scan.c:df_ref_equal_p"}
!1042 = !{!"branch_weights", i32 1, i32 32066476}
!1043 = !{!"branch_weights", i32 31665485, i32 400992}
!1044 = !{!"branch_weights", i32 13539500, i32 18125986}
!1045 = !{!"branch_weights", i32 13539497, i32 4}
!1046 = !{!"branch_weights", i32 -1500534355, i32 2727228}
!1047 = !{!"branch_weights", i32 1, i32 13526298}
!1048 = !{!"branch_weights", i32 13526298, i32 1}
!1049 = !{!"branch_weights", i32 1, i32 1, i32 12700740, i32 1, i32 825559}
!1050 = !{!"branch_weights", i32 1651119, i32 1}
!1051 = !{!"function_entry_count", i64 183310}
!1052 = !{!"df-scan.c:VEC_df_ref_base_replace"}
!1053 = !{!"function_entry_count", i64 9912076}
!1054 = !{!"df-scan.c:VEC_df_ref_base_truncate"}
!1055 = !{!"branch_weights", i32 1, i32 9912077}
!1056 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_base_index"}
!1057 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_base_replace"}
!1058 = !{!"df-scan.c:df_mw_equal_p"}
!1059 = !{!"function_entry_count", i64 3013521}
!1060 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_base_truncate"}
!1061 = !{!"branch_weights", i32 1, i32 3013522}
!1062 = !{!"function_entry_count", i64 7499039}
!1063 = !{!"df-scan.c:df_install_refs"}
!1064 = !{!"branch_weights", i32 4717756, i32 2781285}
!1065 = !{!"branch_weights", i32 2781285, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!1066 = !{!"branch_weights", i32 1, i32 2781284}
!1067 = !{!"branch_weights", i32 2781284, i32 7314961}
!1068 = distinct !{!1068, !427}
!1069 = !{!"function_entry_count", i64 2185752}
!1070 = !{!"df-scan.c:df_install_mws"}
!1071 = !{!"function_entry_count", i64 70336927}
!1072 = !{!"df-scan.c:rhs_regno"}
!1073 = !{!"df-scan.c:VEC_df_ref_stack_safe_push"}
!1074 = !{!"df-scan.c:VEC_df_ref_stack_reserve"}
!1075 = !{!"df-scan.c:VEC_df_ref_base_quick_push"}
!1076 = !{!"df-scan.c:VEC_df_ref_base_space"}
!1077 = !{!951, !404, i64 4}
!1078 = !{!"df-scan.c:df_ref_record"}
!1079 = !{!"branch_weights", i32 120, i32 -1503462401, i32 3711402}
!1080 = !{!"branch_weights", i32 30824, i32 23183301}
!1081 = !{!"branch_weights", i32 22635416, i32 578709}
!1082 = !{!"branch_weights", i32 197, i32 22635220}
!1083 = !{!"branch_weights", i32 22635416, i32 1}
!1084 = !{!"branch_weights", i32 22635415, i32 1}
!1085 = distinct !{!1085, !427}
!1086 = !{!"function_entry_count", i64 22635219}
!1087 = !{!"df-scan.c:end_hard_regno"}
!1088 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_stack_safe_push"}
!1089 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_stack_reserve"}
!1090 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_base_quick_push"}
!1091 = !{!"df-scan.c:VEC_df_mw_hardreg_ptr_base_space"}
!1092 = !{!885, !404, i64 4}
!1093 = !{!"function_entry_count", i64 2735119}
!1094 = !{!"df-scan.c:df_defs_record"}
!1095 = !{!"branch_weights", i32 -1708194343, i32 -1132788891, i32 -1132788891, i32 7029, i32 575398422}
!1096 = distinct !{!1096, !427}
!1097 = !{!"function_entry_count", i64 413825}
!1098 = !{!"df-scan.c:df_get_call_refs"}
!1099 = !{!"branch_weights", i32 13248, i32 400578}
!1100 = !{!"branch_weights", i32 400578, i32 0}
!1101 = distinct !{!1101, !427}
!1102 = !{!"branch_weights", i32 413825, i32 1}
!1103 = distinct !{!1103, !427}
!1104 = !{!"branch_weights", i32 21932726, i32 1}
!1105 = !{!"branch_weights", i32 413826, i32 21518900}
!1106 = distinct !{!1106, !427}
!1107 = !{!"branch_weights", i32 1, i32 413825}
!1108 = !{!"branch_weights", i32 19035951, i32 1}
!1109 = !{!"branch_weights", i32 18635374, i32 400578}
!1110 = !{!"branch_weights", i32 18630154, i32 5221}
!1111 = !{!"branch_weights", i32 5221, i32 1}
!1112 = !{!501, !399, i64 320}
!1113 = !{!"branch_weights", i32 413825, i32 18622126}
!1114 = distinct !{!1114, !427}
!1115 = !{!"df-scan.c:df_get_conditional_uses"}
!1116 = distinct !{!1116, !427}
!1117 = !{!"function_entry_count", i64 2285255}
!1118 = !{!"df-scan.c:df_def_record_1"}
!1119 = !{!"branch_weights", i32 -1763582084, i32 1115, i32 18613454}
!1120 = distinct !{!1120, !427}
!1121 = !{!"branch_weights", i32 1, i32 2285256}
!1122 = !{!"branch_weights", i32 2000526351, i32 -1778261142, i32 1976}
!1123 = !{!"branch_weights", i32 398, i32 1272798}
!1124 = !{!"df-scan.c:df_entry_block_defs_collect"}
!1125 = !{!"branch_weights", i32 1, i32 152}
!1126 = !{!"branch_weights", i32 152, i32 874}
!1127 = distinct !{!1127, !427}
!1128 = !{!"df-scan.c:df_exit_block_uses_collect"}
!1129 = !{!"branch_weights", i32 229, i32 835}
!1130 = distinct !{!1130, !427}
!1131 = !{!"branch_weights", i32 39, i32 77}
!1132 = !{!"function_entry_count", i64 884616}
!1133 = !{!"df-scan.c:bb_has_eh_pred"}
!1134 = !{i64 0, i64 4, !479, i64 8, i64 8, !398}
!1135 = !{i64 0, i64 8, !398}
!1136 = !{!"branch_weights", i32 1, i32 884616}
!1137 = !{!1138, !404, i64 48}
!1138 = !{!"edge_def", !399, i64 0, !399, i64 8, !400, i64 16, !399, i64 24, !399, i64 32, !404, i64 40, !404, i64 44, !404, i64 48, !404, i64 52, !412, i64 56}
!1139 = !{!"branch_weights", i32 1352341, i32 1}
!1140 = !{!"branch_weights", i32 884616, i32 467725}
!1141 = distinct !{!1141, !427}
!1142 = !{!"df-scan.c:ei_start_1"}
!1143 = !{!"function_entry_count", i64 2236956}
!1144 = !{!"df-scan.c:ei_cond"}
!1145 = !{!"branch_weights", i32 1352341, i32 884617}
!1146 = !{!"function_entry_count", i64 1352340}
!1147 = !{!"df-scan.c:ei_next"}
!1148 = !{!"branch_weights", i32 1, i32 1352341}
!1149 = !{!1150, !404, i64 0}
!1150 = !{!"", !404, i64 0, !399, i64 8}
!1151 = !{!"df-scan.c:ei_end_p"}
!1152 = !{!"branch_weights", i32 139351, i32 2097607}
!1153 = !{!"df-scan.c:ei_edge"}
!1154 = !{!"function_entry_count", i64 3589296}
!1155 = !{!"df-scan.c:VEC_edge_base_length"}
!1156 = !{!"branch_weights", i32 139351, i32 3449947}
!1157 = !{!1158, !404, i64 0}
!1158 = !{!"VEC_edge_base", !404, i64 0, !404, i64 4, !400, i64 8}
!1159 = !{!"function_entry_count", i64 9743922}
!1160 = !{!"df-scan.c:ei_container"}
!1161 = !{!"branch_weights", i32 1, i32 9743923}
!1162 = !{!"df-scan.c:VEC_edge_base_index"}
!1163 = !{!"df-scan.c:df_mark_reg"}
!1164 = !{!"branch_weights", i32 1, i32 269}
!1165 = !{!"function_entry_count", i64 2437221}
!1166 = !{!"df-scan.c:df_refs_verify"}
!1167 = !{!"branch_weights", i32 1, i32 1990391}
!1168 = !{!"branch_weights", i32 20023, i32 13568714}
!1169 = !{!"branch_weights", i32 426809, i32 13141906}
!1170 = !{!"branch_weights", i32 446831, i32 1}
!1171 = !{!"branch_weights", i32 1990391, i32 11598345}
!1172 = distinct !{!1172, !427}
!1173 = !{!"branch_weights", i32 1990392, i32 1}
!1174 = !{!"df-scan.c:df_mws_verify"}
!1175 = !{!"branch_weights", i32 812407, i32 1}
!1176 = distinct !{!1176, !427}
!1177 = !{!"branch_weights", i32 812408, i32 1}
