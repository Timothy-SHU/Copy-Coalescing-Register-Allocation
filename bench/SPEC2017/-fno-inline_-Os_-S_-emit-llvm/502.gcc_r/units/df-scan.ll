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
define dso_local void @df_scan_alloc(ptr nocapture readnone %0) #0 {
  %2 = tail call i32 @get_max_uid() #21
  %3 = load ptr, ptr @df, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.dataflow, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call fastcc void @df_scan_free_internal() #22
  br label %10

10:                                               ; preds = %9, %1
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str, i64 noundef 16, i64 noundef 400) #21
  %12 = load ptr, ptr @df, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.dataflow, ptr %14, i64 0, i32 3
  store ptr %11, ptr %15, align 8, !tbaa !12
  %16 = tail call ptr @xmalloc(i64 noundef 264) #21
  %17 = load ptr, ptr @df, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.dataflow, ptr %19, i64 0, i32 5
  store ptr %16, ptr %20, align 8, !tbaa !9
  %21 = load ptr, ptr %18, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.dataflow, ptr %21, i64 0, i32 7
  store i8 1, ptr %22, align 4, !tbaa !13
  %23 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.1, i64 noundef 64, i64 noundef 400) #21
  store ptr %23, ptr %16, align 8, !tbaa !14
  %24 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.2, i64 noundef 72, i64 noundef 400) #21
  %25 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !19
  %26 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.3, i64 noundef 72, i64 noundef 400) #21
  %27 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !20
  %28 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.4, i64 noundef 88, i64 noundef 400) #21
  %29 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !21
  %30 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.5, i64 noundef 48, i64 noundef 400) #21
  %31 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 4
  store ptr %30, ptr %31, align 8, !tbaa !22
  %32 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.6, i64 noundef 16, i64 noundef 400) #21
  %33 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 5
  store ptr %32, ptr %33, align 8, !tbaa !23
  %34 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.7, i64 noundef 24, i64 noundef 400) #21
  %35 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 6
  store ptr %34, ptr %35, align 8, !tbaa !24
  %36 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 7
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull %36) #21
  %37 = getelementptr inbounds %struct.df_scan_problem_data, ptr %16, i64 0, i32 8
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull %37) #21
  tail call void @df_grow_reg_info() #22
  tail call void @df_grow_insn_info() #22
  %38 = load ptr, ptr @df, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  tail call void @df_grow_bb_info(ptr noundef %40) #21
  %41 = load ptr, ptr @cfun, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !25
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %10, %59
  %47 = phi ptr [ %62, %59 ], [ %44, %10 ]
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !27
  %50 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %49) #22
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load ptr, ptr @df, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.dataflow, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !12
  %58 = tail call ptr @pool_alloc(ptr noundef %57) #21
  tail call fastcc void @df_scan_set_bb_info(i32 noundef %49, ptr noundef %58) #22
  br label %59

59:                                               ; preds = %52, %46
  %60 = phi ptr [ %50, %46 ], [ %58, %52 ]
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  %62 = load ptr, ptr %61, align 8, !tbaa !5
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %46, !llvm.loop !29

64:                                               ; preds = %59, %10
  %65 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %36) #21
  %66 = load ptr, ptr @df, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.df, ptr %66, i64 0, i32 13
  store ptr %65, ptr %67, align 8, !tbaa !31
  %68 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %36) #21
  %69 = load ptr, ptr @df, align 8, !tbaa !5
  %70 = getelementptr inbounds %struct.df, ptr %69, i64 0, i32 14
  store ptr %68, ptr %70, align 8, !tbaa !34
  %71 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %36) #21
  %72 = load ptr, ptr @df, align 8, !tbaa !5
  %73 = getelementptr inbounds %struct.df, ptr %72, i64 0, i32 15
  store ptr %71, ptr %73, align 8, !tbaa !35
  %74 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %36) #21
  %75 = load ptr, ptr @df, align 8, !tbaa !5
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 16
  store ptr %74, ptr %76, align 8, !tbaa !36
  %77 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %36) #21
  %78 = load ptr, ptr @df, align 8, !tbaa !5
  %79 = getelementptr inbounds %struct.df, ptr %78, i64 0, i32 17
  store ptr %77, ptr %79, align 8, !tbaa !37
  %80 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %37) #21
  %81 = load ptr, ptr @df, align 8, !tbaa !5
  %82 = getelementptr inbounds %struct.df, ptr %81, i64 0, i32 18
  store ptr %80, ptr %82, align 8, !tbaa !38
  %83 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %37) #21
  %84 = load ptr, ptr @df, align 8, !tbaa !5
  %85 = getelementptr inbounds %struct.df, ptr %84, i64 0, i32 19
  store ptr %83, ptr %85, align 8, !tbaa !39
  %86 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %37) #21
  %87 = load ptr, ptr @df, align 8, !tbaa !5
  %88 = getelementptr inbounds %struct.df, ptr %87, i64 0, i32 20
  store ptr %86, ptr %88, align 8, !tbaa !40
  %89 = getelementptr inbounds %struct.df, ptr %87, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !5
  %91 = getelementptr inbounds %struct.dataflow, ptr %90, i64 0, i32 9
  store i8 0, ptr %91, align 2, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_scan_free_internal() unnamed_addr #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !42
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %56, label %9

9:                                                ; preds = %0, %49
  %10 = phi i64 [ %50, %49 ], [ 0, %0 ]
  %11 = phi ptr [ %51, %49 ], [ %1, %0 ]
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = getelementptr inbounds ptr, ptr %13, i64 %10
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.df_insn_info, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %19) #22
  br label %25

25:                                               ; preds = %17, %21, %24
  %26 = getelementptr inbounds %struct.df_insn_info, ptr %15, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @free(ptr noundef nonnull %27) #22
  br label %33

33:                                               ; preds = %25, %29, %32
  %34 = getelementptr inbounds %struct.df_insn_info, ptr %15, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %35, align 8, !tbaa !5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @free(ptr noundef nonnull %35) #22
  br label %41

41:                                               ; preds = %33, %37, %40
  %42 = getelementptr inbounds %struct.df_insn_info, ptr %15, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 8, !tbaa !5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @free(ptr noundef nonnull %43) #22
  br label %49

49:                                               ; preds = %41, %45, %48, %9
  %50 = add nuw nsw i64 %10, 1
  %51 = load ptr, ptr @df, align 8, !tbaa !5
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 11
  %53 = load i32, ptr %52, align 8, !tbaa !42
  %54 = zext i32 %53 to i64
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %9, label %56, !llvm.loop !49

56:                                               ; preds = %49, %0
  %57 = phi ptr [ %1, %0 ], [ %51, %49 ]
  %58 = load ptr, ptr @cfun, align 8, !tbaa !5
  %59 = getelementptr inbounds %struct.function, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !25
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  %62 = icmp eq ptr %61, null
  br i1 %62, label %90, label %63

63:                                               ; preds = %56, %84
  %64 = phi ptr [ %86, %84 ], [ %61, %56 ]
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !27
  %67 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %66) #22
  %68 = icmp eq ptr %67, null
  br i1 %68, label %84, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr %67, align 8, !tbaa !50
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %70, align 8, !tbaa !5
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  tail call void @free(ptr noundef nonnull %70) #22
  br label %76

76:                                               ; preds = %69, %72, %75
  %77 = getelementptr inbounds %struct.df_scan_bb_info, ptr %67, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !52
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %78, align 8, !tbaa !5
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  tail call void @free(ptr noundef nonnull %78) #22
  br label %84

84:                                               ; preds = %76, %80, %83, %63
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %63, !llvm.loop !53

88:                                               ; preds = %84
  %89 = load ptr, ptr @df, align 8, !tbaa !5
  br label %90

90:                                               ; preds = %88, %56
  %91 = phi ptr [ %89, %88 ], [ %57, %56 ]
  %92 = getelementptr inbounds %struct.df, ptr %91, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !54
  tail call void @free(ptr noundef %93) #22
  %94 = load ptr, ptr @df, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.df, ptr %94, i64 0, i32 3, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !55
  tail call void @free(ptr noundef %96) #22
  %97 = load ptr, ptr @df, align 8, !tbaa !5
  %98 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 3, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !56
  tail call void @free(ptr noundef %99) #22
  %100 = load ptr, ptr @df, align 8, !tbaa !5
  %101 = getelementptr inbounds %struct.df, ptr %100, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %101, i8 0, i64 40, i1 false)
  %102 = getelementptr inbounds %struct.df, ptr %100, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !57
  tail call void @free(ptr noundef %103) #22
  %104 = load ptr, ptr @df, align 8, !tbaa !5
  %105 = getelementptr inbounds %struct.df, ptr %104, i64 0, i32 4, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !58
  tail call void @free(ptr noundef %106) #22
  %107 = load ptr, ptr @df, align 8, !tbaa !5
  %108 = getelementptr inbounds %struct.df, ptr %107, i64 0, i32 4, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !59
  tail call void @free(ptr noundef %109) #22
  %110 = load ptr, ptr @df, align 8, !tbaa !5
  %111 = getelementptr inbounds %struct.df, ptr %110, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %111, i8 0, i64 40, i1 false)
  %112 = getelementptr inbounds %struct.df, ptr %110, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !60
  tail call void @free(ptr noundef %113) #22
  %114 = load ptr, ptr @df, align 8, !tbaa !5
  %115 = getelementptr inbounds %struct.df, ptr %114, i64 0, i32 5
  store ptr null, ptr %115, align 8, !tbaa !60
  %116 = getelementptr inbounds %struct.df, ptr %114, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !61
  tail call void @free(ptr noundef %117) #22
  %118 = load ptr, ptr @df, align 8, !tbaa !5
  %119 = getelementptr inbounds %struct.df, ptr %118, i64 0, i32 6
  store ptr null, ptr %119, align 8, !tbaa !61
  %120 = getelementptr inbounds %struct.df, ptr %118, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !62
  tail call void @free(ptr noundef %121) #22
  %122 = load ptr, ptr @df, align 8, !tbaa !5
  %123 = getelementptr inbounds %struct.df, ptr %122, i64 0, i32 7
  %124 = getelementptr inbounds %struct.df, ptr %122, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %123, i8 0, i64 16, i1 false)
  %125 = load ptr, ptr %124, align 8, !tbaa !43
  tail call void @free(ptr noundef %125) #22
  %126 = load ptr, ptr @df, align 8, !tbaa !5
  %127 = getelementptr inbounds %struct.df, ptr %126, i64 0, i32 10
  store ptr null, ptr %127, align 8, !tbaa !43
  %128 = getelementptr inbounds %struct.df, ptr %126, i64 0, i32 11
  store i32 0, ptr %128, align 8, !tbaa !42
  %129 = getelementptr inbounds %struct.df, ptr %126, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !5
  %131 = getelementptr inbounds %struct.dataflow, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !63
  tail call void @free(ptr noundef %132) #22
  %133 = load ptr, ptr @df, align 8, !tbaa !5
  %134 = getelementptr inbounds %struct.df, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !5
  %136 = getelementptr inbounds %struct.dataflow, ptr %135, i64 0, i32 1
  store ptr null, ptr %136, align 8, !tbaa !63
  %137 = load ptr, ptr %134, align 8, !tbaa !5
  %138 = getelementptr inbounds %struct.dataflow, ptr %137, i64 0, i32 2
  store i32 0, ptr %138, align 8, !tbaa !64
  %139 = getelementptr inbounds %struct.df, ptr %133, i64 0, i32 13
  %140 = load ptr, ptr %139, align 8, !tbaa !31
  tail call void @bitmap_obstack_free(ptr noundef %140) #21
  %141 = load ptr, ptr @df, align 8, !tbaa !5
  %142 = getelementptr inbounds %struct.df, ptr %141, i64 0, i32 13
  store ptr null, ptr %142, align 8, !tbaa !31
  %143 = getelementptr inbounds %struct.df, ptr %141, i64 0, i32 14
  %144 = load ptr, ptr %143, align 8, !tbaa !34
  tail call void @bitmap_obstack_free(ptr noundef %144) #21
  %145 = load ptr, ptr @df, align 8, !tbaa !5
  %146 = getelementptr inbounds %struct.df, ptr %145, i64 0, i32 14
  store ptr null, ptr %146, align 8, !tbaa !34
  %147 = getelementptr inbounds %struct.df, ptr %145, i64 0, i32 15
  %148 = load ptr, ptr %147, align 8, !tbaa !35
  tail call void @bitmap_obstack_free(ptr noundef %148) #21
  %149 = load ptr, ptr @df, align 8, !tbaa !5
  %150 = getelementptr inbounds %struct.df, ptr %149, i64 0, i32 15
  store ptr null, ptr %150, align 8, !tbaa !35
  %151 = getelementptr inbounds %struct.df, ptr %149, i64 0, i32 16
  %152 = load ptr, ptr %151, align 8, !tbaa !36
  tail call void @bitmap_obstack_free(ptr noundef %152) #21
  %153 = load ptr, ptr @df, align 8, !tbaa !5
  %154 = getelementptr inbounds %struct.df, ptr %153, i64 0, i32 16
  store ptr null, ptr %154, align 8, !tbaa !36
  %155 = getelementptr inbounds %struct.df, ptr %153, i64 0, i32 17
  %156 = load ptr, ptr %155, align 8, !tbaa !37
  tail call void @bitmap_obstack_free(ptr noundef %156) #21
  %157 = load ptr, ptr @df, align 8, !tbaa !5
  %158 = getelementptr inbounds %struct.df, ptr %157, i64 0, i32 17
  store ptr null, ptr %158, align 8, !tbaa !37
  %159 = getelementptr inbounds %struct.df, ptr %157, i64 0, i32 18
  %160 = load ptr, ptr %159, align 8, !tbaa !38
  tail call void @bitmap_obstack_free(ptr noundef %160) #21
  %161 = load ptr, ptr @df, align 8, !tbaa !5
  %162 = getelementptr inbounds %struct.df, ptr %161, i64 0, i32 18
  store ptr null, ptr %162, align 8, !tbaa !38
  %163 = getelementptr inbounds %struct.df, ptr %161, i64 0, i32 19
  %164 = load ptr, ptr %163, align 8, !tbaa !39
  tail call void @bitmap_obstack_free(ptr noundef %164) #21
  %165 = load ptr, ptr @df, align 8, !tbaa !5
  %166 = getelementptr inbounds %struct.df, ptr %165, i64 0, i32 19
  store ptr null, ptr %166, align 8, !tbaa !39
  %167 = getelementptr inbounds %struct.df, ptr %165, i64 0, i32 20
  %168 = load ptr, ptr %167, align 8, !tbaa !40
  tail call void @bitmap_obstack_free(ptr noundef %168) #21
  %169 = load ptr, ptr @df, align 8, !tbaa !5
  %170 = getelementptr inbounds %struct.df, ptr %169, i64 0, i32 20
  store ptr null, ptr %170, align 8, !tbaa !40
  %171 = getelementptr inbounds %struct.df, ptr %169, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !5
  %173 = getelementptr inbounds %struct.dataflow, ptr %172, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !12
  tail call void @free_alloc_pool(ptr noundef %174) #21
  %175 = load ptr, ptr %5, align 8, !tbaa !14
  tail call void @free_alloc_pool(ptr noundef %175) #21
  %176 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !19
  tail call void @free_alloc_pool(ptr noundef %177) #21
  %178 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !20
  tail call void @free_alloc_pool(ptr noundef %179) #21
  %180 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !21
  tail call void @free_alloc_pool(ptr noundef %181) #21
  %182 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !22
  tail call void @free_alloc_pool(ptr noundef %183) #21
  %184 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 5
  %185 = load ptr, ptr %184, align 8, !tbaa !23
  tail call void @free_alloc_pool(ptr noundef %185) #21
  %186 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 6
  %187 = load ptr, ptr %186, align 8, !tbaa !24
  tail call void @free_alloc_pool(ptr noundef %187) #21
  %188 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 7
  tail call void @bitmap_obstack_release(ptr noundef nonnull %188) #21
  %189 = getelementptr inbounds %struct.df_scan_problem_data, ptr %5, i64 0, i32 8
  tail call void @bitmap_obstack_release(ptr noundef nonnull %189) #21
  %190 = load ptr, ptr @df, align 8, !tbaa !5
  %191 = getelementptr inbounds %struct.df, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !5
  %193 = getelementptr inbounds %struct.dataflow, ptr %192, i64 0, i32 5
  %194 = load ptr, ptr %193, align 8, !tbaa !9
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
define dso_local void @df_grow_reg_info() local_unnamed_addr #0 {
  %1 = tail call i32 @max_reg_num() #21
  %2 = load ptr, ptr @df, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !65
  %9 = icmp ult i32 %8, %1
  br i1 %9, label %10, label %52

10:                                               ; preds = %0
  %11 = lshr i32 %1, 2
  %12 = add i32 %11, %1
  %13 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = tail call ptr @xrealloc(ptr noundef %14, i64 noundef %16) #21
  %18 = load ptr, ptr @df, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 5
  store ptr %17, ptr %19, align 8, !tbaa !60
  %20 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !61
  %22 = tail call ptr @xrealloc(ptr noundef %21, i64 noundef %16) #21
  %23 = load ptr, ptr @df, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 6
  store ptr %22, ptr %24, align 8, !tbaa !61
  %25 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  %27 = tail call ptr @xrealloc(ptr noundef %26, i64 noundef %16) #21
  %28 = load ptr, ptr @df, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 7
  store ptr %27, ptr %29, align 8, !tbaa !62
  %30 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 3, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  %32 = shl nuw nsw i64 %15, 2
  %33 = tail call ptr @xrealloc(ptr noundef %31, i64 noundef %32) #21
  %34 = load ptr, ptr @df, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 3, i32 1
  store ptr %33, ptr %35, align 8, !tbaa !55
  %36 = getelementptr inbounds %struct.df, ptr %34, i64 0, i32 3, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !56
  %38 = tail call ptr @xrealloc(ptr noundef %37, i64 noundef %32) #21
  %39 = load ptr, ptr @df, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 3, i32 2
  store ptr %38, ptr %40, align 8, !tbaa !56
  %41 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 4, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !58
  %43 = tail call ptr @xrealloc(ptr noundef %42, i64 noundef %32) #21
  %44 = load ptr, ptr @df, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 4, i32 1
  store ptr %43, ptr %45, align 8, !tbaa !58
  %46 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 4, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = tail call ptr @xrealloc(ptr noundef %47, i64 noundef %32) #21
  %49 = load ptr, ptr @df, align 8, !tbaa !5
  %50 = getelementptr inbounds %struct.df, ptr %49, i64 0, i32 4, i32 2
  store ptr %48, ptr %50, align 8, !tbaa !59
  %51 = getelementptr inbounds %struct.df, ptr %49, i64 0, i32 8
  store i32 %12, ptr %51, align 8, !tbaa !65
  br label %52

52:                                               ; preds = %10, %0
  %53 = phi ptr [ %49, %10 ], [ %2, %0 ]
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 9
  %55 = load i32, ptr %54, align 4, !tbaa !66
  %56 = icmp ult i32 %55, %1
  br i1 %56, label %57, label %96

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.df_scan_problem_data, ptr %6, i64 0, i32 5
  %59 = zext i32 %55 to i64
  br label %60

60:                                               ; preds = %57, %60
  %61 = phi i64 [ %59, %57 ], [ %93, %60 ]
  %62 = load ptr, ptr %58, align 8, !tbaa !23
  %63 = tail call ptr @pool_alloc(ptr noundef %62) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  %64 = load ptr, ptr @df, align 8, !tbaa !5
  %65 = getelementptr inbounds %struct.df, ptr %64, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !60
  %67 = getelementptr inbounds ptr, ptr %66, i64 %61
  store ptr %63, ptr %67, align 8, !tbaa !5
  %68 = load ptr, ptr %58, align 8, !tbaa !23
  %69 = tail call ptr @pool_alloc(ptr noundef %68) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  %70 = load ptr, ptr @df, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.df, ptr %70, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !61
  %73 = getelementptr inbounds ptr, ptr %72, i64 %61
  store ptr %69, ptr %73, align 8, !tbaa !5
  %74 = load ptr, ptr %58, align 8, !tbaa !23
  %75 = tail call ptr @pool_alloc(ptr noundef %74) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, i8 0, i64 16, i1 false)
  %76 = load ptr, ptr @df, align 8, !tbaa !5
  %77 = getelementptr inbounds %struct.df, ptr %76, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !62
  %79 = getelementptr inbounds ptr, ptr %78, i64 %61
  store ptr %75, ptr %79, align 8, !tbaa !5
  %80 = load ptr, ptr @df, align 8, !tbaa !5
  %81 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 3, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !55
  %83 = getelementptr inbounds i32, ptr %82, i64 %61
  store i32 0, ptr %83, align 4, !tbaa !67
  %84 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 3, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !56
  %86 = getelementptr inbounds i32, ptr %85, i64 %61
  store i32 0, ptr %86, align 4, !tbaa !67
  %87 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 4, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !58
  %89 = getelementptr inbounds i32, ptr %88, i64 %61
  store i32 0, ptr %89, align 4, !tbaa !67
  %90 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 4, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !59
  %92 = getelementptr inbounds i32, ptr %91, i64 %61
  store i32 0, ptr %92, align 4, !tbaa !67
  %93 = add nuw nsw i64 %61, 1
  %94 = trunc i64 %93 to i32
  %95 = icmp eq i32 %1, %94
  br i1 %95, label %96, label %60, !llvm.loop !68

96:                                               ; preds = %60, %52
  %97 = phi ptr [ %53, %52 ], [ %80, %60 ]
  %98 = getelementptr inbounds %struct.df, ptr %97, i64 0, i32 9
  store i32 %1, ptr %98, align 4, !tbaa !66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_grow_insn_info() local_unnamed_addr #0 {
  %1 = tail call i32 @get_max_uid() #21
  %2 = add nsw i32 %1, 1
  %3 = load ptr, ptr @df, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 11
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %6 = icmp ult i32 %5, %2
  br i1 %6, label %7, label %26

7:                                                ; preds = %0
  %8 = lshr i32 %2, 2
  %9 = add i32 %8, %2
  %10 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = zext i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = tail call ptr @xrealloc(ptr noundef %11, i64 noundef %13) #21
  %15 = load ptr, ptr @df, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 10
  store ptr %14, ptr %16, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 11
  %18 = load i32, ptr %17, align 8, !tbaa !42
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %14, i64 %19
  %21 = sub i32 %9, %18
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 %23, i1 false)
  %24 = load ptr, ptr @df, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 11
  store i32 %9, ptr %25, align 8, !tbaa !42
  br label %26

26:                                               ; preds = %7, %0
  ret void
}

; Function Attrs: optsize
declare void @df_grow_bb_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_scan_get_bb_info(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @df, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !64
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_scan_set_bb_info(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @df, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  tail call void @df_grow_bb_info(ptr noundef %5) #21
  %6 = load ptr, ptr @df, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.dataflow, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  store ptr %1, ptr %12, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_scan_add_problem() local_unnamed_addr #0 {
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
define dso_local void @df_scan_blocks() local_unnamed_addr #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 3, i32 6
  store i32 0, ptr %2, align 4, !tbaa !69
  %3 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 4, i32 6
  store i32 0, ptr %3, align 4, !tbaa !70
  %4 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  tail call fastcc void @df_get_regular_block_artificial_uses(ptr noundef %5) #22
  %6 = load ptr, ptr @df, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  tail call fastcc void @df_get_eh_block_artificial_uses(ptr noundef %8) #22
  %9 = load ptr, ptr @df, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %11, ptr noundef %13) #21
  %15 = load ptr, ptr @df, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 16
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  tail call fastcc void @df_get_entry_block_def_set(ptr noundef %17) #22
  %18 = load ptr, ptr @df, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !36
  tail call fastcc void @df_record_entry_block_defs(ptr noundef %20) #22
  %21 = load ptr, ptr @df, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !37
  tail call fastcc void @df_get_exit_block_use_set(ptr noundef %23) #22
  %24 = load ptr, ptr @df, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !37
  tail call fastcc void @df_record_exit_block_uses(ptr noundef %26) #22
  %27 = load ptr, ptr @cfun, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  %32 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %31, i32 noundef 0) #22
  tail call void @df_set_bb_dirty(ptr noundef %32) #21
  %33 = load ptr, ptr @cfun, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !25
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !71
  %38 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %37, i32 noundef 1) #22
  tail call void @df_set_bb_dirty(ptr noundef %38) #21
  %39 = load ptr, ptr @cfun, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !25
  %42 = load ptr, ptr %41, align 8, !tbaa !73
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !74
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !75
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %0, %48
  %49 = phi ptr [ %53, %48 ], [ %44, %0 ]
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !27
  tail call void @df_bb_refs_record(i32 noundef %51, i8 noundef zeroext 1) #22
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !74
  %54 = load ptr, ptr @cfun, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !25
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !75
  %59 = icmp eq ptr %53, %58
  br i1 %59, label %60, label %48, !llvm.loop !76

60:                                               ; preds = %48, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_get_regular_block_artificial_uses(ptr noundef %0) unnamed_addr #0 {
  tail call void @bitmap_clear(ptr noundef %0) #21
  %2 = load i32, ptr @reload_completed, align 4, !tbaa !67
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !77
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %37, label %34

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 20) #21
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 6) #21
  %10 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !86
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 16) #21
  br label %14

14:                                               ; preds = %12, %7
  %15 = load i32, ptr @flag_pic, align 4, !tbaa !67
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr @reload_completed, align 4, !tbaa !67
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !5
  %22 = tail call fastcc i32 @rhs_regno(ptr noundef %21) #22
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %37, label %27

24:                                               ; preds = %17
  %25 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 3), align 1, !tbaa !86
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %34

27:                                               ; preds = %20
  %28 = zext i32 %22 to i64
  %29 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !86
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
define internal fastcc void @df_get_eh_block_artificial_uses(ptr noundef %0) unnamed_addr #0 {
  tail call void @bitmap_clear(ptr noundef %0) #21
  %2 = load i32, ptr @reload_completed, align 4, !tbaa !67
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !77
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 20) #21
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 6) #21
  br label %10

10:                                               ; preds = %7, %4
  %11 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !86
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 16) #21
  br label %15

15:                                               ; preds = %10, %13, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_get_entry_block_def_set(ptr noundef %0) unnamed_addr #0 {
  tail call void @bitmap_clear(ptr noundef %0) #21
  br label %2

2:                                                ; preds = %1, %8
  %3 = phi i32 [ 0, %1 ], [ %9, %8 ]
  %4 = tail call zeroext i8 @ix86_function_arg_regno_p(i32 noundef %3) #21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %3) #21
  br label %8

8:                                                ; preds = %2, %6
  %9 = add nuw nsw i32 %3, 1
  %10 = icmp eq i32 %9, 53
  br i1 %10, label %11, label %2, !llvm.loop !87

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 7) #21
  %13 = load i32, ptr @epilogue_completed, align 4, !tbaa !67
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %11, %26
  %16 = phi i64 [ %27, %26 ], [ 0, %11 ]
  %17 = getelementptr inbounds [53 x i8], ptr @call_used_regs, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !86
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = trunc i64 %16 to i32
  %22 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %21) #22
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %21) #21
  br label %26

26:                                               ; preds = %15, %20, %24
  %27 = add nuw nsw i64 %16, 1
  %28 = icmp eq i64 %27, 53
  br i1 %28, label %29, label %15, !llvm.loop !88

29:                                               ; preds = %26, %11
  %30 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !89
  %31 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %32 = tail call ptr %30(ptr noundef %31, i32 noundef 1) #21
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

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
  %42 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !101
  %43 = load ptr, ptr @current_function_decl, align 8, !tbaa !5
  %44 = tail call ptr %42(ptr noundef %43, i8 noundef zeroext 1) #21
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

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
  %54 = load i32, ptr @reload_completed, align 4, !tbaa !67
  %55 = icmp eq i32 %54, 0
  %56 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %57 = icmp ne i8 %56, 0
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %53
  %60 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 20) #21
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 6) #21
  %62 = load i32, ptr @reload_completed, align 4, !tbaa !67
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %59
  %65 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !86
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 16) #21
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i32, ptr @flag_pic, align 4, !tbaa !67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr @reload_completed, align 4, !tbaa !67
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !5
  %77 = tail call fastcc i32 @rhs_regno(ptr noundef %76) #22
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %92, label %82

79:                                               ; preds = %72
  %80 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 3), align 1, !tbaa !86
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %92, label %89

82:                                               ; preds = %75
  %83 = zext i32 %77 to i64
  %84 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !86
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
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = tail call ptr @gen_rtx_REG(i32 noundef 0, i32 noundef 7) #21
  %100 = tail call ptr @gen_rtx_MEM(i32 noundef 0, ptr noundef %99) #21
  %101 = tail call fastcc i32 @rhs_regno(ptr noundef %100) #22
  %102 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %101) #21
  br label %103

103:                                              ; preds = %98, %92
  %104 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 108), align 8, !tbaa !102
  tail call void %104(ptr noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_record_entry_block_defs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.df_collection_rec, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %4 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 53) #22, !range !103
  %5 = alloca i8, i64 %4, align 16
  %6 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 53, ptr noundef nonnull %5) #22
  store ptr %6, ptr %2, align 8, !tbaa !104
  call fastcc void @df_entry_block_defs_collect(ptr noundef nonnull %2, ptr noundef %0) #22
  %7 = load ptr, ptr @cfun, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %11, i32 noundef 0) #22
  call fastcc void @df_refs_add_to_chains(ptr noundef nonnull %2, ptr noundef %12, ptr noundef null) #22
  call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_get_exit_block_use_set(ptr noundef %0) unnamed_addr #0 {
  tail call void @bitmap_clear(ptr noundef %0) #21
  %2 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 7) #21
  %3 = load i32, ptr @reload_completed, align 4, !tbaa !67
  %4 = icmp eq i32 %3, 0
  %5 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %6 = icmp ne i8 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 20) #21
  %10 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 6) #21
  br label %11

11:                                               ; preds = %1, %8
  %12 = load i32, ptr @flag_pic, align 4, !tbaa !67
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr @reload_completed, align 4, !tbaa !67
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !5
  %19 = tail call fastcc i32 @rhs_regno(ptr noundef %18) #22
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %35, label %24

21:                                               ; preds = %14
  %22 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 3), align 1, !tbaa !86
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %35, label %32

24:                                               ; preds = %17
  %25 = zext i32 %19 to i64
  %26 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !86
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !5
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
  %39 = load i8, ptr %38, align 1, !tbaa !86
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = trunc i64 %37 to i32
  %43 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %42) #21
  br label %44

44:                                               ; preds = %36, %41
  %45 = add nuw nsw i64 %37, 1
  %46 = icmp eq i64 %45, 53
  br i1 %46, label %47, label %36, !llvm.loop !106

47:                                               ; preds = %44
  %48 = load i32, ptr @epilogue_completed, align 4, !tbaa !67
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %47, %62
  %51 = phi i64 [ %63, %62 ], [ 0, %47 ]
  %52 = trunc i64 %51 to i32
  %53 = tail call zeroext i8 @df_regs_ever_live_p(i32 noundef %52) #22
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !107
  %57 = shl nuw nsw i64 1, %51
  %58 = and i64 %56, %57
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %52) #21
  br label %62

62:                                               ; preds = %50, %55, %60
  %63 = add nuw nsw i64 %51, 1
  %64 = icmp eq i64 %63, 53
  br i1 %64, label %65, label %50, !llvm.loop !108

65:                                               ; preds = %62, %47
  %66 = load i32, ptr @reload_completed, align 4, !tbaa !67
  %67 = icmp ne i32 %66, 0
  %68 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 29), align 1
  %69 = icmp ne i8 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 0) #21
  %73 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef 1) #21
  %74 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 29), align 1
  br label %75

75:                                               ; preds = %71, %65
  %76 = phi i8 [ %74, %71 ], [ %68, %65 ]
  %77 = load i32, ptr @epilogue_completed, align 4, !tbaa !67
  %78 = icmp eq i32 %77, 0
  %79 = icmp ne i8 %76, 0
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %89

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
define internal fastcc void @df_record_exit_block_uses(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.df_collection_rec, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %3 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 53) #22, !range !103
  %4 = alloca i8, i64 %3, align 16
  %5 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 53, ptr noundef nonnull %4) #22
  %6 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !109
  call fastcc void @df_exit_block_uses_collect(ptr noundef nonnull %2, ptr noundef %0) #22
  %7 = load ptr, ptr @cfun, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %11, i32 noundef 1) #22
  call fastcc void @df_refs_add_to_chains(ptr noundef nonnull %2, ptr noundef %12, ptr noundef null) #22
  call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare void @df_set_bb_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_bb_refs_record(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.df_collection_rec, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %8, i32 noundef %0) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %10 = load ptr, ptr @df, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %84, label %12

12:                                               ; preds = %2
  %13 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.dataflow, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  %20 = tail call ptr @pool_alloc(ptr noundef %19) #21
  tail call fastcc void @df_scan_set_bb_info(i32 noundef %0, ptr noundef %20) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  br label %21

21:                                               ; preds = %15, %12
  %22 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 128) #22, !range !103
  %23 = alloca i8, i64 %22, align 16
  %24 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 128, ptr noundef nonnull %23) #22
  store ptr %24, ptr %3, align 8, !tbaa !104
  %25 = call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 32) #22, !range !103
  %26 = alloca i8, i64 %25, align 16
  %27 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %26) #22
  %28 = getelementptr inbounds %struct.df_collection_rec, ptr %3, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !109
  %29 = alloca i8, i64 %25, align 16
  %30 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %29) #22
  %31 = getelementptr inbounds %struct.df_collection_rec, ptr %3, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !110
  %32 = alloca [264 x i8], align 16
  %33 = call fastcc ptr @VEC_df_mw_hardreg_ptr_stack_alloc1(ptr noundef nonnull %32) #22
  %34 = getelementptr inbounds %struct.df_collection_rec, ptr %3, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !111
  %35 = icmp eq i8 %1, 0
  br i1 %35, label %83, label %36

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %9, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !86
  %39 = load ptr, ptr %38, align 8, !tbaa !86
  %40 = icmp eq ptr %39, null
  br i1 %40, label %83, label %41

41:                                               ; preds = %36, %77
  %42 = phi ptr [ %81, %77 ], [ %39, %36 ]
  %43 = phi i32 [ %78, %77 ], [ 0, %36 ]
  %44 = load ptr, ptr %37, align 8, !tbaa !86
  %45 = getelementptr inbounds %struct.rtl_bb_info, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !112
  %47 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1, i32 0, i32 0, i64 2
  %48 = load ptr, ptr %47, align 8, !tbaa !86
  %49 = icmp eq ptr %42, %48
  br i1 %49, label %83, label %50

50:                                               ; preds = %41
  %51 = load ptr, ptr @df, align 8, !tbaa !5
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !43
  %54 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !86
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3744, ptr noundef nonnull @.str.9) #21
  br label %61

61:                                               ; preds = %50, %60
  %62 = call ptr @df_insn_create_insn_record(ptr noundef nonnull %42) #22
  %63 = load i32, ptr %42, align 8
  %64 = and i32 %63, 65535
  %65 = add nsw i32 %64, -7
  %66 = icmp ult i32 %65, 4
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = add nsw i32 %43, 1
  %69 = getelementptr inbounds %struct.df_insn_info, ptr %62, i64 0, i32 5
  store i32 %43, ptr %69, align 8, !tbaa !114
  %70 = load ptr, ptr @df, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.df, ptr %70, i64 0, i32 10
  %72 = load ptr, ptr %71, align 8, !tbaa !43
  %73 = load i32, ptr %54, align 8, !tbaa !86
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %72, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !5
  call fastcc void @df_insn_refs_collect(ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %76) #22
  call fastcc void @df_refs_add_to_chains(ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull %42) #22
  br label %77

77:                                               ; preds = %61, %67
  %78 = phi i32 [ %68, %67 ], [ %43, %61 ]
  %79 = getelementptr inbounds %struct.df_insn_info, ptr %62, i64 0, i32 5
  store i32 %78, ptr %79, align 8, !tbaa !114
  %80 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !86
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %41, !llvm.loop !115

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
define dso_local noundef ptr @df_ref_create(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
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
  %18 = load ptr, ptr @df, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !86
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = tail call fastcc ptr @df_ref_create_structure(i32 noundef %17, ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %25, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #22
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65280
  %29 = icmp eq i32 %28, 0
  %30 = load i32, ptr %21, align 8, !tbaa !86
  %31 = sext i32 %30 to i64
  br i1 %29, label %32, label %45

32:                                               ; preds = %12
  %33 = load ptr, ptr @df, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  %36 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 3
  %37 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = getelementptr inbounds ptr, ptr %38, i64 %31
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.df_insn_info, ptr %40, i64 0, i32 1
  %42 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 3, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !116
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %80, label %65

45:                                               ; preds = %12
  %46 = and i32 %27, 262144
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr @df, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 4
  %50 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !43
  %52 = getelementptr inbounds ptr, ptr %51, i64 %31
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 4, i32 6
  %55 = load i32, ptr %54, align 4, !tbaa !116
  br i1 %47, label %60, label %56

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !62
  %59 = getelementptr inbounds %struct.df_insn_info, ptr %53, i64 0, i32 3
  switch i32 %55, label %80 [
    i32 2, label %65
    i32 4, label %65
    i32 6, label %65
  ]

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !61
  %63 = getelementptr inbounds %struct.df_insn_info, ptr %53, i64 0, i32 2
  %64 = icmp eq i32 %55, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %56, %56, %56, %32, %60
  %66 = phi ptr [ %48, %60 ], [ %33, %32 ], [ %48, %56 ], [ %48, %56 ], [ %48, %56 ]
  %67 = phi ptr [ %62, %60 ], [ %35, %32 ], [ %58, %56 ], [ %58, %56 ], [ %58, %56 ]
  %68 = phi ptr [ %63, %60 ], [ %41, %32 ], [ %59, %56 ], [ %59, %56 ], [ %59, %56 ]
  %69 = phi ptr [ %49, %60 ], [ %36, %32 ], [ %49, %56 ], [ %49, %56 ], [ %49, %56 ]
  %70 = getelementptr inbounds %struct.df, ptr %66, i64 0, i32 28
  %71 = load i8, ptr %70, align 1, !tbaa !117
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.df, ptr %66, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !118
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !27
  %78 = tail call i32 @bitmap_bit_p(ptr noundef %75, i32 noundef %77) #21
  %79 = trunc i32 %78 to i8
  br label %80

80:                                               ; preds = %56, %32, %73, %65, %60
  %81 = phi ptr [ %67, %73 ], [ %67, %65 ], [ %62, %60 ], [ %35, %32 ], [ %58, %56 ]
  %82 = phi ptr [ %68, %73 ], [ %68, %65 ], [ %63, %60 ], [ %41, %32 ], [ %59, %56 ]
  %83 = phi ptr [ %69, %73 ], [ %69, %65 ], [ %49, %60 ], [ %36, %32 ], [ %49, %56 ]
  %84 = phi i8 [ %79, %73 ], [ 1, %65 ], [ 0, %60 ], [ 0, %32 ], [ 0, %56 ]
  %85 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 6
  %86 = load i32, ptr %85, align 8, !tbaa !86
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %81, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  tail call fastcc void @df_install_ref(ptr noundef nonnull %26, ptr noundef %89, ptr noundef nonnull %83, i8 noundef zeroext %84) #22
  %90 = icmp eq i8 %84, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.df_ref_info, ptr %83, i64 0, i32 6
  %93 = load i32, ptr %92, align 4, !tbaa !116
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
  store i32 %101, ptr %92, align 4, !tbaa !116
  br label %102

102:                                              ; preds = %100, %80
  %103 = load ptr, ptr %82, align 8, !tbaa !5
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  %105 = icmp eq ptr %104, null
  br i1 %105, label %125, label %106

106:                                              ; preds = %102, %106
  %107 = phi i32 [ %109, %106 ], [ 0, %102 ]
  %108 = phi ptr [ %110, %106 ], [ %103, %102 ]
  %109 = add i32 %107, 1
  %110 = getelementptr inbounds ptr, ptr %108, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !5
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %106, !llvm.loop !119

113:                                              ; preds = %106
  %114 = icmp eq i32 %109, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %113
  %116 = add i32 %107, 3
  %117 = zext i32 %116 to i64
  %118 = shl nuw nsw i64 %117, 3
  %119 = tail call ptr @xrealloc(ptr noundef nonnull %103, i64 noundef %118) #21
  store ptr %119, ptr %82, align 8, !tbaa !5
  %120 = zext i32 %109 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  store ptr %26, ptr %121, align 8, !tbaa !5
  %122 = add i32 %107, 2
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds ptr, ptr %119, i64 %123
  store ptr null, ptr %124, align 8, !tbaa !5
  tail call void @spec_qsort(ptr noundef %119, i64 noundef %123, i64 noundef 8, ptr noundef nonnull @df_ref_compare) #21
  br label %128

125:                                              ; preds = %102, %113
  %126 = tail call ptr @xmalloc(i64 noundef 16) #21
  store ptr %26, ptr %126, align 8, !tbaa !5
  %127 = getelementptr inbounds ptr, ptr %126, i64 1
  store ptr null, ptr %127, align 8, !tbaa !5
  store ptr %126, ptr %82, align 8, !tbaa !5
  br label %128

128:                                              ; preds = %125, %115
  %129 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !86
  %131 = load ptr, ptr %130, align 8, !tbaa !120
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
define internal fastcc noundef ptr @df_ref_create_structure(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #0 {
  %12 = load i32, ptr %2, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 39
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  br label %18

18:                                               ; preds = %11, %15
  %19 = phi ptr [ %17, %15 ], [ %2, %11 ]
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef %19) #22
  %21 = load ptr, ptr @df, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.dataflow, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !9
  switch i32 %0, label %54 [
    i32 0, label %26
    i32 1, label %30
    i32 2, label %36
    i32 3, label %42
  ]

26:                                               ; preds = %18
  %27 = load ptr, ptr %25, align 8, !tbaa !14
  %28 = tail call ptr @pool_alloc(ptr noundef %27) #21
  %29 = icmp eq ptr %3, null
  br i1 %29, label %54, label %51

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.df_scan_problem_data, ptr %25, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = tail call ptr @pool_alloc(ptr noundef %32) #21
  %34 = getelementptr inbounds %struct.df_artificial_ref, ptr %33, i64 0, i32 1
  store ptr %4, ptr %34, align 8, !tbaa !86
  %35 = icmp eq ptr %3, null
  br i1 %35, label %54, label %51

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.df_scan_problem_data, ptr %25, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !20
  %39 = tail call ptr @pool_alloc(ptr noundef %38) #21
  %40 = getelementptr inbounds %struct.df_regular_ref, ptr %39, i64 0, i32 1
  store ptr %3, ptr %40, align 8, !tbaa !86
  %41 = icmp eq ptr %3, null
  br i1 %41, label %51, label %54

42:                                               ; preds = %18
  %43 = getelementptr inbounds %struct.df_scan_problem_data, ptr %25, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !21
  %45 = tail call ptr @pool_alloc(ptr noundef %44) #21
  %46 = getelementptr inbounds %struct.df_extract_ref, ptr %45, i64 0, i32 1
  store i32 %8, ptr %46, align 8, !tbaa !86
  %47 = getelementptr inbounds %struct.df_extract_ref, ptr %45, i64 0, i32 2
  store i32 %9, ptr %47, align 4, !tbaa !86
  %48 = getelementptr inbounds %struct.df_extract_ref, ptr %45, i64 0, i32 3
  store i32 %10, ptr %48, align 8, !tbaa !86
  %49 = getelementptr inbounds %struct.df_regular_ref, ptr %45, i64 0, i32 1
  store ptr %3, ptr %49, align 8, !tbaa !86
  %50 = icmp eq ptr %3, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %42, %36, %30, %26
  %52 = phi i32 [ 2827, %26 ], [ 2833, %30 ], [ 2839, %36 ], [ 2848, %42 ]
  %53 = phi ptr [ %28, %26 ], [ %33, %30 ], [ %39, %36 ], [ %45, %42 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef %52, ptr noundef nonnull @.str.9) #21
  br label %54

54:                                               ; preds = %51, %42, %36, %30, %26, %18
  %55 = phi ptr [ null, %18 ], [ %45, %42 ], [ %39, %36 ], [ %33, %30 ], [ %28, %26 ], [ %53, %51 ]
  %56 = and i32 %0, 255
  %57 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 7
  store i32 -1, ptr %57, align 4, !tbaa !86
  %58 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 1
  store ptr %2, ptr %58, align 8, !tbaa !86
  %59 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 6
  store i32 %20, ptr %59, align 8, !tbaa !86
  %60 = shl i32 %6, 8
  %61 = and i32 %60, 65280
  %62 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 3
  store ptr %5, ptr %62, align 8, !tbaa !86
  %63 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 2
  store ptr null, ptr %63, align 8, !tbaa !86
  %64 = shl i32 %7, 16
  %65 = or disjoint i32 %61, %64
  %66 = or disjoint i32 %65, %56
  store i32 %66, ptr %55, align 8
  %67 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %67, i8 0, i64 16, i1 false)
  %68 = load ptr, ptr @df, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.df, ptr %68, i64 0, i32 26
  %70 = load i32, ptr %69, align 8, !tbaa !121
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 8, !tbaa !121
  %72 = getelementptr inbounds %struct.df_base_ref, ptr %55, i64 0, i32 8
  store i32 %70, ptr %72, align 8, !tbaa !86
  %73 = load i32, ptr %55, align 8
  %74 = and i32 %73, -524289
  store i32 %74, ptr %55, align 8
  %75 = icmp sgt i32 %20, 52
  %76 = and i32 %73, 255
  %77 = icmp eq i32 %76, 1
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %97, label %79

79:                                               ; preds = %54
  %80 = and i32 %73, 65280
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = and i32 %73, 4194304
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %95, label %97

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
  br i1 %94, label %97, label %95

95:                                               ; preds = %85, %82
  %96 = or i32 %73, 524288
  store i32 %96, ptr %55, align 8
  br label %97

97:                                               ; preds = %95, %85, %82, %54
  %98 = phi i32 [ %74, %85 ], [ %74, %82 ], [ %74, %54 ], [ %96, %95 ]
  %99 = icmp eq ptr %1, null
  br i1 %99, label %112, label %100

100:                                              ; preds = %97
  %101 = and i32 %98, 65280
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = and i32 %98, 262144
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

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
define internal fastcc void @df_install_ref(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !86
  %7 = load ptr, ptr %1, align 8, !tbaa !122
  store ptr %0, ptr %1, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.df_reg_info, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !124
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !124
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 524288
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %4
  %15 = icmp ult i32 %6, 53
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2627, ptr noundef nonnull @.str.9) #21
  br label %17

17:                                               ; preds = %14, %16
  %18 = load ptr, ptr @df, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 25
  %20 = load ptr, ptr %19, align 8, !tbaa !125
  %21 = zext i32 %6 to i64
  %22 = getelementptr inbounds i32, ptr %20, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !67
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4, !tbaa !67
  br label %25

25:                                               ; preds = %17, %4
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !86
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29, %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2632, ptr noundef nonnull @.str.9) #21
  br label %34

34:                                               ; preds = %29, %33
  store ptr %7, ptr %26, align 8, !tbaa !86
  %35 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 5
  store ptr null, ptr %35, align 8, !tbaa !86
  %36 = icmp eq ptr %7, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.df_base_ref, ptr %7, i64 0, i32 5
  store ptr %0, ptr %38, align 8, !tbaa !86
  br label %39

39:                                               ; preds = %37, %34
  %40 = icmp eq i8 %3, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.df_ref_info, ptr %2, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !116
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2644, ptr noundef nonnull @.str.9) #21
  br label %46

46:                                               ; preds = %41, %45
  tail call fastcc void @df_check_and_grow_ref_info(ptr noundef nonnull %2) #22
  %47 = getelementptr inbounds %struct.df_ref_info, ptr %2, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !126
  %49 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  store i32 %48, ptr %49, align 4, !tbaa !86
  %50 = load ptr, ptr %2, align 8, !tbaa !127
  %51 = zext i32 %48 to i64
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  store ptr %0, ptr %52, align 8, !tbaa !5
  %53 = add i32 %48, 1
  store i32 %53, ptr %47, align 4, !tbaa !126
  br label %56

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  store i32 -1, ptr %55, align 4, !tbaa !86
  br label %56

56:                                               ; preds = %54, %46
  %57 = getelementptr inbounds %struct.df_ref_info, ptr %2, i64 0, i32 5
  %58 = load i32, ptr %57, align 8, !tbaa !128
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 8, !tbaa !128
  ret void
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @df_ref_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = load ptr, ptr %1, align 8, !tbaa !5
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %108, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 8
  %8 = and i32 %7, 255
  %9 = load i32, ptr %4, align 8
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = sub nsw i32 %8, %10
  br label %108

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %3, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !86
  %17 = getelementptr inbounds %struct.df_base_ref, ptr %4, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !86
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = sub nsw i32 %16, %18
  br label %108

22:                                               ; preds = %14
  %23 = lshr i32 %7, 8
  %24 = and i32 %23, 255
  %25 = lshr i32 %9, 8
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = sub nsw i32 %24, %26
  br label %108

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.df_base_ref, ptr %3, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !86
  %33 = getelementptr inbounds %struct.df_base_ref, ptr %4, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.df_base_ref, ptr %3, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !86
  %39 = getelementptr inbounds %struct.df_base_ref, ptr %4, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !86
  %41 = sub nsw i32 %38, %40
  br label %108

42:                                               ; preds = %30
  %43 = trunc i32 %7 to i8
  switch i8 %43, label %47 [
    i8 1, label %67
    i8 2, label %44
    i8 3, label %44
  ]

44:                                               ; preds = %42, %42
  %45 = getelementptr inbounds %struct.df_regular_ref, ptr %3, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !86
  br label %47

47:                                               ; preds = %42, %44
  %48 = phi ptr [ %46, %44 ], [ null, %42 ]
  %49 = and i32 %9, 254
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.df_regular_ref, ptr %4, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !86
  br label %54

54:                                               ; preds = %47, %51
  %55 = phi ptr [ %53, %51 ], [ null, %47 ]
  %56 = icmp eq ptr %48, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.df_base_ref, ptr %3, i64 0, i32 8
  %59 = load i32, ptr %58, align 8, !tbaa !86
  %60 = getelementptr inbounds %struct.df_base_ref, ptr %4, i64 0, i32 8
  %61 = load i32, ptr %60, align 8, !tbaa !86
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
  %88 = load i32, ptr %87, align 4, !tbaa !86
  %89 = getelementptr inbounds %struct.df_extract_ref, ptr %4, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !86
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = sub nsw i32 %88, %90
  br label %108

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.df_extract_ref, ptr %3, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !86
  %97 = getelementptr inbounds %struct.df_extract_ref, ptr %4, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !86
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %102, label %100

100:                                              ; preds = %94
  %101 = sub nsw i32 %96, %98
  br label %108

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.df_extract_ref, ptr %3, i64 0, i32 3
  %104 = load i32, ptr %103, align 8, !tbaa !86
  %105 = getelementptr inbounds %struct.df_extract_ref, ptr %4, i64 0, i32 3
  %106 = load i32, ptr %105, align 8, !tbaa !86
  %107 = sub i32 %104, %106
  br label %108

108:                                              ; preds = %67, %102, %84, %81, %2, %100, %92, %79, %57, %36, %28, %20, %12
  %109 = phi i32 [ %13, %12 ], [ %21, %20 ], [ %29, %28 ], [ %41, %36 ], [ %62, %57 ], [ %80, %79 ], [ %93, %92 ], [ %101, %100 ], [ 0, %2 ], [ %83, %81 ], [ 0, %84 ], [ %107, %102 ], [ 0, %67 ]
  ret i32 %109
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_ref_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65280
  %4 = icmp eq i32 %3, 0
  %5 = and i32 %2, 255
  %6 = icmp eq i32 %5, 1
  br i1 %4, label %7, label %27

7:                                                ; preds = %1
  br i1 %6, label %8, label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !86
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !27
  %13 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %12) #22
  tail call fastcc void @df_ref_compress_rec(ptr noundef %13, ptr noundef nonnull %0) #22
  br label %53

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  %17 = load ptr, ptr %16, align 8, !tbaa !120
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !86
  %20 = load ptr, ptr @df, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = zext i32 %19 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.df_insn_info, ptr %25, i64 0, i32 1
  tail call fastcc void @df_ref_compress_rec(ptr noundef nonnull %26, ptr noundef nonnull %0) #22
  br label %53

27:                                               ; preds = %1
  br i1 %6, label %28, label %35

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !86
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !27
  %33 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %32) #22
  %34 = getelementptr inbounds %struct.df_scan_bb_info, ptr %33, i64 0, i32 1
  tail call fastcc void @df_ref_compress_rec(ptr noundef nonnull %34, ptr noundef nonnull %0) #22
  br label %53

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !86
  %38 = load ptr, ptr %37, align 8, !tbaa !120
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !86
  %41 = load ptr, ptr @df, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.df, ptr %41, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !43
  %44 = zext i32 %40 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = and i32 %2, 262144
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

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
  %55 = load ptr, ptr %54, align 8, !tbaa !86
  %56 = load ptr, ptr %55, align 8, !tbaa !120
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 7
  br i1 %59, label %68, label %60

60:                                               ; preds = %53
  %61 = load i32, ptr %0, align 8
  %62 = and i32 %61, 255
  %63 = icmp eq i32 %62, 1
  %64 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  %65 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 1
  %66 = select i1 %63, ptr %64, ptr %65
  %67 = load ptr, ptr %66, align 8, !tbaa !86
  tail call void @df_set_bb_dirty(ptr noundef %67) #21
  br label %68

68:                                               ; preds = %60, %53
  tail call fastcc void @df_reg_chain_unlink(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_ref_compress_rec(ptr nocapture noundef %0, ptr noundef readnone %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = getelementptr inbounds ptr, ptr %3, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %13, %7 ], [ %3, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %9, %1
  %12 = or i1 %10, %11
  %13 = getelementptr inbounds ptr, ptr %8, i64 1
  br i1 %12, label %14, label %7, !llvm.loop !129

14:                                               ; preds = %7
  br i1 %10, label %21, label %15

15:                                               ; preds = %14, %15
  %16 = phi ptr [ %17, %15 ], [ %8, %14 ]
  %17 = getelementptr inbounds ptr, ptr %16, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  store ptr %18, ptr %16, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %15, !llvm.loop !130

20:                                               ; preds = %2
  tail call void @free(ptr noundef nonnull %3) #22
  store ptr @df_null_ref_rec, ptr %0, align 8, !tbaa !5
  br label %21

21:                                               ; preds = %15, %14, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_reg_chain_unlink(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !86
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 65280
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr @df, align 8, !tbaa !5
  br i1 %10, label %12, label %21

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !86
  %15 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 3
  br label %42

21:                                               ; preds = %1
  %22 = and i32 %8, 262144
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !86
  %26 = zext i32 %25 to i64
  br i1 %23, label %36, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !62
  %30 = getelementptr inbounds ptr, ptr %29, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 4, i32 6
  %33 = load i32, ptr %32, align 4, !tbaa !70
  switch i32 %33, label %73 [
    i32 2, label %34
    i32 4, label %34
    i32 6, label %34
  ]

34:                                               ; preds = %27, %27, %27
  %35 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 4
  br label %42

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !61
  %39 = getelementptr inbounds ptr, ptr %38, i64 %26
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 4
  br label %42

42:                                               ; preds = %36, %34, %12
  %43 = phi ptr [ %20, %12 ], [ %35, %34 ], [ %41, %36 ]
  %44 = phi ptr [ %19, %12 ], [ %31, %34 ], [ %40, %36 ]
  %45 = load ptr, ptr %43, align 8, !tbaa !5
  %46 = icmp eq ptr %45, null
  br i1 %46, label %73, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 28
  %49 = load i8, ptr %48, align 1, !tbaa !117
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !118
  %54 = and i32 %8, 255
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  br label %63

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !86
  %61 = load ptr, ptr %60, align 8, !tbaa !120
  %62 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 1
  br label %63

63:                                               ; preds = %58, %56
  %64 = phi ptr [ %57, %56 ], [ %62, %58 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !86
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 9
  %67 = load i32, ptr %66, align 8, !tbaa !27
  %68 = tail call i32 @bitmap_bit_p(ptr noundef %53, i32 noundef %67) #21
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %47, %63
  %71 = sext i32 %7 to i64
  %72 = getelementptr inbounds ptr, ptr %45, i64 %71
  store ptr null, ptr %72, align 8, !tbaa !5
  br label %73

73:                                               ; preds = %70, %27, %63, %42
  %74 = phi ptr [ %44, %63 ], [ %44, %42 ], [ %31, %27 ], [ %44, %70 ]
  %75 = load ptr, ptr @df, align 8, !tbaa !5
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 4
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !86
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  tail call void @df_chain_unlink(ptr noundef nonnull %0) #21
  br label %84

84:                                               ; preds = %83, %79, %73
  %85 = getelementptr inbounds %struct.df_reg_info, ptr %74, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !124
  %87 = add i32 %86, -1
  store i32 %87, ptr %85, align 8, !tbaa !124
  %88 = load i32, ptr %0, align 8
  %89 = and i32 %88, 524288
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %93 = load i32, ptr %92, align 8, !tbaa !86
  %94 = icmp ult i32 %93, 53
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 937, ptr noundef nonnull @.str.9) #21
  %96 = load i32, ptr %92, align 8, !tbaa !86
  br label %97

97:                                               ; preds = %91, %95
  %98 = phi i32 [ %93, %91 ], [ %96, %95 ]
  %99 = load ptr, ptr @df, align 8, !tbaa !5
  %100 = getelementptr inbounds %struct.df, ptr %99, i64 0, i32 25
  %101 = load ptr, ptr %100, align 8, !tbaa !125
  %102 = zext i32 %98 to i64
  %103 = getelementptr inbounds i32, ptr %101, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !67
  %105 = add i32 %104, -1
  store i32 %105, ptr %103, align 4, !tbaa !67
  br label %106

106:                                              ; preds = %97, %84
  %107 = icmp eq ptr %5, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.df_base_ref, ptr %5, i64 0, i32 4
  br label %114

110:                                              ; preds = %106
  %111 = load ptr, ptr %74, align 8, !tbaa !122
  %112 = icmp eq ptr %111, %0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 947, ptr noundef nonnull @.str.9) #21
  br label %114

114:                                              ; preds = %113, %110, %108
  %115 = phi ptr [ %109, %108 ], [ %74, %110 ], [ %74, %113 ]
  store ptr %3, ptr %115, align 8, !tbaa !86
  %116 = icmp eq ptr %3, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.df_base_ref, ptr %3, i64 0, i32 5
  store ptr %5, ptr %118, align 8, !tbaa !86
  br label %119

119:                                              ; preds = %117, %114
  tail call fastcc void @df_free_ref(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @df_insn_create_insn_record(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  tail call void @df_grow_insn_info() #22
  %7 = load ptr, ptr @df, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !86
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.df_scan_problem_data, ptr %6, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = tail call ptr @pool_alloc(ptr noundef %18) #21
  %20 = load ptr, ptr @df, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = load i32, ptr %10, align 8, !tbaa !86
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  store ptr %19, ptr %25, align 8, !tbaa !5
  br label %26

26:                                               ; preds = %16, %1
  %27 = phi ptr [ %14, %1 ], [ %19, %16 ]
  %28 = getelementptr inbounds i8, ptr %27, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %28, i8 0, i64 40, i1 false)
  store ptr %0, ptr %27, align 8, !tbaa !120
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_insn_delete(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @df, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %106, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  tail call void @df_grow_bb_info(ptr noundef %7) #21
  tail call void @df_grow_reg_info() #22
  %8 = icmp eq ptr %0, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @df_set_bb_dirty(ptr noundef nonnull %0) #21
  br label %10

10:                                               ; preds = %9, %5
  %11 = load ptr, ptr @df, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !42
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = zext i32 %1 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 27
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 32
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %49, label %30

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 27
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 32
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %49, label %44

30:                                               ; preds = %15
  %31 = icmp eq ptr %20, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !39
  %35 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %34, i32 noundef %1) #21
  %36 = load ptr, ptr @df, align 8, !tbaa !5
  %37 = getelementptr inbounds %struct.df, ptr %36, i64 0, i32 20
  %38 = load ptr, ptr %37, align 8, !tbaa !40
  %39 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %38, i32 noundef %1) #21
  %40 = load ptr, ptr @df, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.df, ptr %40, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !38
  %43 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %42, i32 noundef %1) #21
  br label %44

44:                                               ; preds = %25, %32, %30
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %46 = icmp eq ptr %45, null
  br i1 %46, label %106, label %47

47:                                               ; preds = %44
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %45, ptr noundef nonnull @.str.10, i32 noundef %1) #22
  br label %106

49:                                               ; preds = %25, %15
  %50 = phi ptr [ null, %25 ], [ %20, %15 ]
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %51, ptr noundef nonnull @.str.11, i32 noundef %1) #22
  %55 = load ptr, ptr @df, align 8, !tbaa !5
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi ptr [ %55, %53 ], [ %11, %49 ]
  %58 = getelementptr inbounds %struct.df, ptr %57, i64 0, i32 18
  %59 = load ptr, ptr %58, align 8, !tbaa !38
  %60 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %59, i32 noundef %1) #21
  %61 = load ptr, ptr @df, align 8, !tbaa !5
  %62 = getelementptr inbounds %struct.df, ptr %61, i64 0, i32 19
  %63 = load ptr, ptr %62, align 8, !tbaa !39
  %64 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %63, i32 noundef %1) #21
  %65 = load ptr, ptr @df, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.df, ptr %65, i64 0, i32 20
  %67 = load ptr, ptr %66, align 8, !tbaa !40
  %68 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %67, i32 noundef %1) #21
  %69 = icmp eq ptr %50, null
  br i1 %69, label %106, label %70

70:                                               ; preds = %56
  %71 = load ptr, ptr @df, align 8, !tbaa !5
  %72 = getelementptr inbounds %struct.df, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  %74 = getelementptr inbounds %struct.dataflow, ptr %73, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !9
  %76 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !44
  %78 = icmp eq ptr %77, null
  br i1 %78, label %98, label %79

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !48
  tail call fastcc void @df_mw_hardreg_chain_delete(ptr noundef %81) #22
  %82 = load ptr, ptr @df, align 8, !tbaa !5
  %83 = getelementptr inbounds %struct.df, ptr %82, i64 0, i32 1, i64 4
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = icmp eq ptr %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %79
  %87 = load ptr, ptr %76, align 8, !tbaa !44
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %87) #22
  %88 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %89) #22
  %90 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !47
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %91) #22
  br label %92

92:                                               ; preds = %86, %79
  %93 = load ptr, ptr %76, align 8, !tbaa !44
  tail call fastcc void @df_ref_chain_delete(ptr noundef %93) #22
  %94 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !46
  tail call fastcc void @df_ref_chain_delete(ptr noundef %95) #22
  %96 = getelementptr inbounds %struct.df_insn_info, ptr %50, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !47
  tail call fastcc void @df_ref_chain_delete(ptr noundef %97) #22
  br label %98

98:                                               ; preds = %92, %70
  %99 = getelementptr inbounds %struct.df_scan_problem_data, ptr %75, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !22
  tail call void @pool_free(ptr noundef %100, ptr noundef nonnull %50) #21
  %101 = load ptr, ptr @df, align 8, !tbaa !5
  %102 = getelementptr inbounds %struct.df, ptr %101, i64 0, i32 10
  %103 = load ptr, ptr %102, align 8, !tbaa !43
  %104 = zext i32 %1 to i64
  %105 = getelementptr inbounds ptr, ptr %103, i64 %104
  store ptr null, ptr %105, align 8, !tbaa !5
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
define internal fastcc void @df_mw_hardreg_chain_delete(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @df, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.dataflow, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.df_scan_problem_data, ptr %11, i64 0, i32 6
  br label %13

13:                                               ; preds = %6, %13
  %14 = phi ptr [ %4, %6 ], [ %18, %13 ]
  %15 = phi ptr [ %0, %6 ], [ %17, %13 ]
  %16 = load ptr, ptr %12, align 8, !tbaa !24
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %14) #21
  %17 = getelementptr inbounds ptr, ptr %15, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !131

20:                                               ; preds = %13, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_ref_chain_delete_du_chain(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %13, %11 ], [ %2, %1 ]
  %6 = phi ptr [ %12, %11 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.df_base_ref, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @df_chain_unlink(ptr noundef nonnull %5) #21
  br label %11

11:                                               ; preds = %10, %4
  %12 = getelementptr inbounds ptr, ptr %6, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %4, !llvm.loop !132

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_ref_chain_delete(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %8, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %7, %4 ], [ %0, %1 ]
  tail call fastcc void @df_reg_chain_unlink(ptr noundef nonnull %5) #22
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4, !llvm.loop !133

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @free(ptr noundef nonnull %0) #22
  br label %14

14:                                               ; preds = %1, %13, %10
  ret void
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @df_insn_rescan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.df_collection_rec, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %7 = load ptr, ptr @df, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %147, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = add nsw i32 %11, -7
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %147

14:                                               ; preds = %9
  %15 = icmp eq ptr %6, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %147, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %17, ptr noundef nonnull @.str.12, i32 noundef %4) #22
  br label %147

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 27
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %147

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  tail call void @df_grow_bb_info(ptr noundef %28) #21
  tail call void @df_grow_reg_info() #22
  %29 = load ptr, ptr @df, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 11
  %31 = load i32, ptr %30, align 8, !tbaa !42
  %32 = icmp ult i32 %4, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !43
  %36 = zext i32 %4 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = icmp eq ptr %38, null
  %40 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 27
  %41 = load i8, ptr %40, align 4
  %42 = and i8 %41, 32
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %75, label %49

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.df, ptr %29, i64 0, i32 27
  %46 = load i8, ptr %45, align 4
  %47 = and i8 %46, 32
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %75, label %50

49:                                               ; preds = %33
  br i1 %39, label %50, label %56

50:                                               ; preds = %44, %49
  %51 = tail call ptr @df_insn_create_insn_record(ptr noundef nonnull %0) #22
  %52 = getelementptr inbounds %struct.df_insn_info, ptr %51, i64 0, i32 1
  store ptr @df_null_ref_rec, ptr %52, align 8, !tbaa !44
  %53 = getelementptr inbounds %struct.df_insn_info, ptr %51, i64 0, i32 2
  store ptr @df_null_ref_rec, ptr %53, align 8, !tbaa !46
  %54 = getelementptr inbounds %struct.df_insn_info, ptr %51, i64 0, i32 3
  store ptr @df_null_ref_rec, ptr %54, align 8, !tbaa !47
  %55 = getelementptr inbounds %struct.df_insn_info, ptr %51, i64 0, i32 4
  store ptr @df_null_mw_rec, ptr %55, align 8, !tbaa !48
  br label %56

56:                                               ; preds = %50, %49
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %57, ptr noundef nonnull @.str.13, i32 noundef %4) #22
  br label %61

61:                                               ; preds = %59, %56
  %62 = load ptr, ptr @df, align 8, !tbaa !5
  %63 = getelementptr inbounds %struct.df, ptr %62, i64 0, i32 18
  %64 = load ptr, ptr %63, align 8, !tbaa !38
  %65 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %64, i32 noundef %4) #21
  %66 = load ptr, ptr @df, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.df, ptr %66, i64 0, i32 20
  %68 = load ptr, ptr %67, align 8, !tbaa !40
  %69 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %68, i32 noundef %4) #21
  %70 = load ptr, ptr @df, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.df, ptr %70, i64 0, i32 19
  %72 = load ptr, ptr %71, align 8, !tbaa !39
  %73 = load i32, ptr %3, align 8, !tbaa !86
  %74 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %72, i32 noundef %73) #21
  br label %147

75:                                               ; preds = %44, %33
  %76 = phi i1 [ true, %44 ], [ %39, %33 ]
  %77 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 128) #22, !range !103
  %78 = alloca i8, i64 %77, align 16
  %79 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 128, ptr noundef nonnull %78) #22
  store ptr %79, ptr %2, align 8, !tbaa !104
  %80 = call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 32) #22, !range !103
  %81 = alloca i8, i64 %80, align 16
  %82 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %81) #22
  %83 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 1
  store ptr %82, ptr %83, align 8, !tbaa !109
  %84 = alloca i8, i64 %80, align 16
  %85 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %84) #22
  %86 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 2
  store ptr %85, ptr %86, align 8, !tbaa !110
  %87 = alloca [264 x i8], align 16
  %88 = call fastcc ptr @VEC_df_mw_hardreg_ptr_stack_alloc1(ptr noundef nonnull %87) #22
  %89 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 3
  store ptr %88, ptr %89, align 8, !tbaa !111
  %90 = load ptr, ptr @df, align 8, !tbaa !5
  %91 = getelementptr inbounds %struct.df, ptr %90, i64 0, i32 18
  %92 = load ptr, ptr %91, align 8, !tbaa !38
  %93 = call zeroext i8 @bitmap_clear_bit(ptr noundef %92, i32 noundef %4) #21
  %94 = load ptr, ptr @df, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.df, ptr %94, i64 0, i32 19
  %96 = load ptr, ptr %95, align 8, !tbaa !39
  %97 = call zeroext i8 @bitmap_clear_bit(ptr noundef %96, i32 noundef %4) #21
  %98 = load ptr, ptr @df, align 8, !tbaa !5
  %99 = getelementptr inbounds %struct.df, ptr %98, i64 0, i32 20
  %100 = load ptr, ptr %99, align 8, !tbaa !40
  %101 = call zeroext i8 @bitmap_clear_bit(ptr noundef %100, i32 noundef %4) #21
  br i1 %76, label %134, label %102

102:                                              ; preds = %75
  %103 = call fastcc zeroext i8 @df_insn_refs_verify(ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %0, i8 noundef zeroext 0) #22, !range !134
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  call fastcc void @df_free_collection_rec(ptr noundef nonnull %2) #22
  %106 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %107 = icmp eq ptr %106, null
  br i1 %107, label %147, label %108

108:                                              ; preds = %105
  %109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %106, ptr noundef nonnull @.str.14, i32 noundef %4) #22
  br label %147

110:                                              ; preds = %102
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %111, ptr noundef nonnull @.str.15, i32 noundef %4) #22
  br label %115

115:                                              ; preds = %110, %113
  %116 = load ptr, ptr @df, align 8, !tbaa !5
  %117 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 10
  %118 = load ptr, ptr %117, align 8, !tbaa !43
  %119 = load i32, ptr %3, align 8, !tbaa !86
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %118, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !5
  %123 = getelementptr inbounds %struct.df_insn_info, ptr %122, i64 0, i32 5
  %124 = load i32, ptr %123, align 8, !tbaa !114
  call void @df_insn_delete(ptr noundef null, i32 noundef %4) #22
  %125 = call ptr @df_insn_create_insn_record(ptr noundef nonnull %0) #22
  %126 = load ptr, ptr @df, align 8, !tbaa !5
  %127 = getelementptr inbounds %struct.df, ptr %126, i64 0, i32 10
  %128 = load ptr, ptr %127, align 8, !tbaa !43
  %129 = load i32, ptr %3, align 8, !tbaa !86
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %128, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !5
  %133 = getelementptr inbounds %struct.df_insn_info, ptr %132, i64 0, i32 5
  store i32 %124, ptr %133, align 8, !tbaa !114
  br label %140

134:                                              ; preds = %75
  %135 = call ptr @df_insn_create_insn_record(ptr noundef nonnull %0) #22
  call fastcc void @df_insn_refs_collect(ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef %135) #22
  %136 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %136, ptr noundef nonnull @.str.16, i32 noundef %4) #22
  br label %140

140:                                              ; preds = %115, %134, %138
  call fastcc void @df_refs_add_to_chains(ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %0) #22
  %141 = load i32, ptr %0, align 8
  %142 = and i32 %141, 65535
  %143 = icmp eq i32 %142, 7
  br i1 %143, label %144, label %145

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
define internal fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @vec_stack_p_reserve_exact_1(i32 noundef %0, ptr noundef %1) #21
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef %0) unnamed_addr #7 {
  %2 = zext nneg i32 %0 to i64
  %3 = shl nuw nsw i64 %2, 3
  %4 = add nuw nsw i64 %3, 8
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_df_mw_hardreg_ptr_stack_alloc1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_stack_p_reserve_exact_1(i32 noundef 32, ptr noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @df_insn_refs_verify(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !86
  %7 = load ptr, ptr @df, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = sext i32 %6 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  tail call fastcc void @df_insn_refs_collect(ptr noundef %0, ptr noundef %1, ptr noundef %12) #22
  %13 = load ptr, ptr @df, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.df, ptr %13, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = zext i32 %6 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.df_insn_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = icmp eq i8 %3, 0
  br i1 %23, label %72, label %24

24:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4512, ptr noundef nonnull @.str.9) #21
  %25 = load ptr, ptr @df, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.df, ptr %25, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = getelementptr inbounds ptr, ptr %27, i64 %16
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.df_insn_info, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  br label %32

32:                                               ; preds = %24, %4
  %33 = phi ptr [ %31, %24 ], [ %20, %4 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !104
  %35 = tail call fastcc zeroext i8 @df_refs_verify(ptr noundef %34, ptr noundef %33, i8 noundef zeroext %3) #22, !range !134
  %36 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !109
  %38 = load ptr, ptr @df, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.df, ptr %38, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = getelementptr inbounds ptr, ptr %40, i64 %16
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = tail call fastcc zeroext i8 @df_refs_verify(ptr noundef %37, ptr noundef %44, i8 noundef zeroext %3) #22, !range !134
  %46 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !110
  %48 = load ptr, ptr @df, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !43
  %51 = getelementptr inbounds ptr, ptr %50, i64 %16
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = getelementptr inbounds %struct.df_insn_info, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !47
  %55 = tail call fastcc zeroext i8 @df_refs_verify(ptr noundef %47, ptr noundef %54, i8 noundef zeroext %3) #22, !range !134
  %56 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !111
  %58 = load ptr, ptr @df, align 8, !tbaa !5
  %59 = getelementptr inbounds %struct.df, ptr %58, i64 0, i32 10
  %60 = load ptr, ptr %59, align 8, !tbaa !43
  %61 = getelementptr inbounds ptr, ptr %60, i64 %16
  %62 = load ptr, ptr %61, align 8, !tbaa !5
  %63 = getelementptr inbounds %struct.df_insn_info, ptr %62, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !48
  %65 = tail call fastcc zeroext i8 @df_mws_verify(ptr noundef %57, ptr noundef %64, i8 noundef zeroext %3) #22, !range !134
  %66 = icmp ne i8 %35, 0
  %67 = icmp ne i8 %45, 0
  %68 = select i1 %66, i1 %67, i1 false
  %69 = icmp ne i8 %55, 0
  %70 = select i1 %68, i1 %69, i1 false
  %71 = select i1 %70, i8 %65, i8 0
  br label %72

72:                                               ; preds = %22, %32
  %73 = phi i8 [ %71, %32 ], [ 0, %22 ]
  ret i8 %73
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_free_collection_rec(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @df, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %9 = load ptr, ptr %0, align 8, !tbaa !104
  %10 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %2) #22, !range !135
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %17, %1
  %13 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !109
  %15 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %2) #22, !range !135
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %29

17:                                               ; preds = %1, %17
  %18 = phi i32 [ %20, %17 ], [ 0, %1 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !5
  tail call fastcc void @df_free_ref(ptr noundef %19) #22
  %20 = add i32 %18, 1
  %21 = load ptr, ptr %0, align 8, !tbaa !104
  %22 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %21, i32 noundef %20, ptr noundef nonnull %2) #22, !range !135
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %12, label %17, !llvm.loop !136

24:                                               ; preds = %29, %12
  %25 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !110
  %27 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %2) #22, !range !135
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %43

29:                                               ; preds = %12, %29
  %30 = phi i32 [ %32, %29 ], [ 0, %12 ]
  %31 = load ptr, ptr %2, align 8, !tbaa !5
  tail call fastcc void @df_free_ref(ptr noundef %31) #22
  %32 = add i32 %30, 1
  %33 = load ptr, ptr %13, align 8, !tbaa !109
  %34 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %33, i32 noundef %32, ptr noundef nonnull %2) #22, !range !135
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %24, label %29, !llvm.loop !137

36:                                               ; preds = %43, %24
  %37 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !111
  %39 = call fastcc i32 @VEC_df_mw_hardreg_ptr_base_iterate(ptr noundef %38, i32 noundef 0, ptr noundef nonnull %3) #22, !range !135
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.df_scan_problem_data, ptr %8, i64 0, i32 6
  br label %50

43:                                               ; preds = %24, %43
  %44 = phi i32 [ %46, %43 ], [ 0, %24 ]
  %45 = load ptr, ptr %2, align 8, !tbaa !5
  tail call fastcc void @df_free_ref(ptr noundef %45) #22
  %46 = add i32 %44, 1
  %47 = load ptr, ptr %25, align 8, !tbaa !110
  %48 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %47, i32 noundef %46, ptr noundef nonnull %2) #22, !range !135
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %36, label %43, !llvm.loop !138

50:                                               ; preds = %41, %50
  %51 = phi i32 [ 0, %41 ], [ %54, %50 ]
  %52 = load ptr, ptr %42, align 8, !tbaa !24
  %53 = load ptr, ptr %3, align 8, !tbaa !5
  tail call void @pool_free(ptr noundef %52, ptr noundef %53) #21
  %54 = add i32 %51, 1
  %55 = load ptr, ptr %37, align 8, !tbaa !111
  %56 = call fastcc i32 @VEC_df_mw_hardreg_ptr_base_iterate(ptr noundef %55, i32 noundef %54, ptr noundef nonnull %3) #22, !range !135
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %50, !llvm.loop !139

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
define internal fastcc void @df_insn_refs_collect(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 14
  %10 = load ptr, ptr %0, align 8, !tbaa !104
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %10, i32 noundef 0) #22
  %11 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !109
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %12, i32 noundef 0) #22
  %13 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %14, i32 noundef 0) #22
  %15 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !111
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_truncate(ptr noundef %16, i32 noundef 0) #22
  %17 = load ptr, ptr %2, align 8, !tbaa !120
  %18 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !86
  tail call fastcc void @df_defs_record(ptr noundef nonnull %0, ptr noundef %19, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0) #22
  %20 = load ptr, ptr %2, align 8, !tbaa !120
  %21 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 1, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %3, %38
  %25 = phi ptr [ %40, %38 ], [ %22, %3 ]
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 16
  %28 = trunc i32 %27 to i8
  switch i8 %28, label %38 [
    i8 3, label %29
    i8 4, label %29
    i8 28, label %31
  ]

29:                                               ; preds = %24, %24
  %30 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  tail call fastcc void @df_uses_record(i32 noundef 2, ptr noundef nonnull %0, ptr noundef nonnull %30, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 4, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %38

31:                                               ; preds = %24
  %32 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %33 = getelementptr inbounds ptr, ptr %32, i64 20
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %34, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  %35 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %36 = getelementptr inbounds ptr, ptr %35, i64 6
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %37, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %38

38:                                               ; preds = %29, %31, %24
  %39 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !86
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %24, !llvm.loop !140

42:                                               ; preds = %38
  %43 = load ptr, ptr %2, align 8, !tbaa !120
  br label %44

44:                                               ; preds = %42, %3
  %45 = phi ptr [ %43, %42 ], [ %20, %3 ]
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = zext i1 %9 to i32
  tail call fastcc void @df_get_call_refs(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %50) #22
  %51 = load ptr, ptr %2, align 8, !tbaa !120
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi ptr [ %51, %49 ], [ %45, %44 ]
  %54 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 1
  tail call fastcc void @df_uses_record(i32 noundef 2, ptr noundef nonnull %0, ptr noundef nonnull %54, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br i1 %9, label %55, label %56

55:                                               ; preds = %52
  tail call fastcc void @df_get_conditional_uses(ptr noundef nonnull %0) #22
  br label %56

56:                                               ; preds = %55, %52
  tail call fastcc void @df_canonize_collection_rec(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_refs_add_to_chains(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %89, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @df, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.df, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !86
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = load ptr, ptr %0, align 8, !tbaa !104
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.df_insn_info, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  tail call void @free(ptr noundef nonnull %18) #22
  %24 = load ptr, ptr %0, align 8, !tbaa !104
  %25 = load ptr, ptr @df, align 8, !tbaa !5
  br label %26

26:                                               ; preds = %23, %20, %16
  %27 = phi ptr [ %25, %23 ], [ %6, %20 ], [ %6, %16 ]
  %28 = phi ptr [ %24, %23 ], [ %14, %20 ], [ %14, %16 ]
  %29 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 3
  %32 = tail call fastcc ptr @df_install_refs(ptr noundef %1, ptr noundef %28, ptr noundef %30, ptr noundef nonnull %31, i8 noundef zeroext 0) #22
  store ptr %32, ptr %17, align 8, !tbaa !44
  br label %33

33:                                               ; preds = %26, %5
  %34 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !109
  %36 = icmp eq ptr %35, null
  br i1 %36, label %53, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.df_insn_info, ptr %13, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %39, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  tail call void @free(ptr noundef nonnull %39) #22
  %45 = load ptr, ptr %34, align 8, !tbaa !109
  br label %46

46:                                               ; preds = %44, %41, %37
  %47 = phi ptr [ %45, %44 ], [ %35, %41 ], [ %35, %37 ]
  %48 = load ptr, ptr @df, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !61
  %51 = getelementptr inbounds %struct.df, ptr %48, i64 0, i32 4
  %52 = tail call fastcc ptr @df_install_refs(ptr noundef %1, ptr noundef %47, ptr noundef %50, ptr noundef nonnull %51, i8 noundef zeroext 0) #22
  store ptr %52, ptr %38, align 8, !tbaa !46
  br label %53

53:                                               ; preds = %46, %33
  %54 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !110
  %56 = icmp eq ptr %55, null
  br i1 %56, label %73, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.df_insn_info, ptr %13, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !47
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %59, align 8, !tbaa !5
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  tail call void @free(ptr noundef nonnull %59) #22
  %65 = load ptr, ptr %54, align 8, !tbaa !110
  br label %66

66:                                               ; preds = %64, %61, %57
  %67 = phi ptr [ %65, %64 ], [ %55, %61 ], [ %55, %57 ]
  %68 = load ptr, ptr @df, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.df, ptr %68, i64 0, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !62
  %71 = getelementptr inbounds %struct.df, ptr %68, i64 0, i32 4
  %72 = tail call fastcc ptr @df_install_refs(ptr noundef %1, ptr noundef %67, ptr noundef %70, ptr noundef nonnull %71, i8 noundef zeroext 1) #22
  store ptr %72, ptr %58, align 8, !tbaa !47
  br label %73

73:                                               ; preds = %66, %53
  %74 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !111
  %76 = icmp eq ptr %75, null
  br i1 %76, label %121, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.df_insn_info, ptr %13, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !48
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %79, align 8, !tbaa !5
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  tail call void @free(ptr noundef nonnull %79) #22
  %85 = load ptr, ptr %74, align 8, !tbaa !111
  br label %86

86:                                               ; preds = %84, %81, %77
  %87 = phi ptr [ %85, %84 ], [ %75, %81 ], [ %75, %77 ]
  %88 = tail call fastcc ptr @df_install_mws(ptr noundef %87) #22
  store ptr %88, ptr %78, align 8, !tbaa !48
  br label %121

89:                                               ; preds = %3
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %91 = load i32, ptr %90, align 8, !tbaa !27
  %92 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %91) #22
  %93 = load ptr, ptr %92, align 8, !tbaa !50
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = load ptr, ptr %93, align 8, !tbaa !5
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  tail call void @free(ptr noundef nonnull %93) #22
  br label %99

99:                                               ; preds = %98, %95, %89
  %100 = load ptr, ptr %0, align 8, !tbaa !104
  %101 = load ptr, ptr @df, align 8, !tbaa !5
  %102 = getelementptr inbounds %struct.df, ptr %101, i64 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !60
  %104 = getelementptr inbounds %struct.df, ptr %101, i64 0, i32 3
  %105 = tail call fastcc ptr @df_install_refs(ptr noundef nonnull %1, ptr noundef %100, ptr noundef %103, ptr noundef nonnull %104, i8 noundef zeroext 0) #22
  store ptr %105, ptr %92, align 8, !tbaa !50
  %106 = getelementptr inbounds %struct.df_scan_bb_info, ptr %92, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !52
  %108 = icmp eq ptr %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %99
  %110 = load ptr, ptr %107, align 8, !tbaa !5
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  tail call void @free(ptr noundef nonnull %107) #22
  br label %113

113:                                              ; preds = %112, %109, %99
  %114 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !109
  %116 = load ptr, ptr @df, align 8, !tbaa !5
  %117 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 6
  %118 = load ptr, ptr %117, align 8, !tbaa !61
  %119 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 4
  %120 = tail call fastcc ptr @df_install_refs(ptr noundef nonnull %1, ptr noundef %115, ptr noundef %118, ptr noundef nonnull %119, i8 noundef zeroext 0) #22
  store ptr %120, ptr %106, align 8, !tbaa !52
  br label %121

121:                                              ; preds = %73, %86, %113
  ret void
}

; Function Attrs: optsize
declare void @df_set_bb_dirty_nonlr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_stack_free(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @vec_stack_free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_stack_free(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @vec_stack_free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @df_insn_rescan_debug_internal(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !86
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 7
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 25
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  %18 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !5
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %7, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1331, ptr noundef nonnull @.str.9) #21
  br label %21

21:                                               ; preds = %15, %20
  %22 = load ptr, ptr @df, align 8, !tbaa !5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %91, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %2, align 8, !tbaa !86
  %26 = getelementptr inbounds %struct.df, ptr %22, i64 0, i32 11
  %27 = load i32, ptr %26, align 8, !tbaa !42
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %91

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.df, ptr %22, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = sext i32 %25 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %91, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %37, ptr noundef nonnull @.str.17, i32 noundef %3) #22
  %41 = load ptr, ptr @df, align 8, !tbaa !5
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi ptr [ %41, %39 ], [ %22, %36 ]
  %44 = getelementptr inbounds %struct.df, ptr %43, i64 0, i32 18
  %45 = load ptr, ptr %44, align 8, !tbaa !38
  %46 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %45, i32 noundef %3) #21
  %47 = load ptr, ptr @df, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 19
  %49 = load ptr, ptr %48, align 8, !tbaa !39
  %50 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %49, i32 noundef %3) #21
  %51 = load ptr, ptr @df, align 8, !tbaa !5
  %52 = getelementptr inbounds %struct.df, ptr %51, i64 0, i32 20
  %53 = load ptr, ptr %52, align 8, !tbaa !40
  %54 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %53, i32 noundef %3) #21
  %55 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !44
  %57 = icmp eq ptr %56, null
  br i1 %57, label %91, label %58

58:                                               ; preds = %42
  %59 = icmp eq ptr %56, @df_null_ref_rec
  br i1 %59, label %60, label %72

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = icmp eq ptr %62, @df_null_ref_rec
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !47
  %67 = icmp eq ptr %66, @df_null_ref_rec
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !48
  %71 = icmp eq ptr %70, @df_null_mw_rec
  br i1 %71, label %91, label %72

72:                                               ; preds = %68, %64, %60, %58
  %73 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !48
  tail call fastcc void @df_mw_hardreg_chain_delete(ptr noundef %74) #22
  %75 = load ptr, ptr @df, align 8, !tbaa !5
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 1, i64 4
  %77 = load ptr, ptr %76, align 8, !tbaa !5
  %78 = icmp eq ptr %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr %55, align 8, !tbaa !44
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %80) #22
  %81 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %82) #22
  %83 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !47
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %84) #22
  br label %85

85:                                               ; preds = %79, %72
  %86 = load ptr, ptr %55, align 8, !tbaa !44
  tail call fastcc void @df_ref_chain_delete(ptr noundef %86) #22
  %87 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !46
  tail call fastcc void @df_ref_chain_delete(ptr noundef %88) #22
  %89 = getelementptr inbounds %struct.df_insn_info, ptr %34, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !47
  tail call fastcc void @df_ref_chain_delete(ptr noundef %90) #22
  store ptr @df_null_ref_rec, ptr %55, align 8, !tbaa !44
  store ptr @df_null_ref_rec, ptr %87, align 8, !tbaa !46
  store ptr @df_null_ref_rec, ptr %89, align 8, !tbaa !47
  store ptr @df_null_mw_rec, ptr %73, align 8, !tbaa !48
  br label %91

91:                                               ; preds = %24, %68, %42, %29, %21, %85
  %92 = phi i8 [ 1, %85 ], [ 0, %21 ], [ 0, %29 ], [ 0, %42 ], [ 0, %68 ], [ 0, %24 ]
  ret i8 %92
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_insn_rescan_all() local_unnamed_addr #0 {
  %1 = alloca %struct.bitmap_iterator, align 8
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %4 = load ptr, ptr @df, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 27
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = tail call i32 @df_clear_flags(i32 noundef 16) #21
  %11 = load ptr, ptr @df, align 8, !tbaa !5
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
  %21 = load ptr, ptr @df, align 8, !tbaa !5
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi ptr [ %21, %19 ], [ %16, %14 ]
  %24 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %25) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #22
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !134
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr @df, align 8, !tbaa !5
  br label %30

30:                                               ; preds = %28, %45
  %31 = phi ptr [ %29, %28 ], [ %46, %45 ]
  %32 = load i32, ptr %2, align 4, !tbaa !67
  %33 = getelementptr inbounds %struct.df, ptr %31, i64 0, i32 11
  %34 = load i32, ptr %33, align 8, !tbaa !42
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.df, ptr %31, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = zext i32 %32 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  tail call void @df_insn_delete(ptr noundef null, i32 noundef %32) #22
  %44 = load ptr, ptr @df, align 8, !tbaa !5
  br label %45

45:                                               ; preds = %30, %43, %36
  %46 = phi ptr [ %31, %30 ], [ %44, %43 ], [ %31, %36 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %47 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !134
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %30, !llvm.loop !141

49:                                               ; preds = %45, %22
  tail call void @bitmap_obstack_free(ptr noundef %3) #21
  %50 = load ptr, ptr @df, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.df, ptr %50, i64 0, i32 18
  %52 = load ptr, ptr %51, align 8, !tbaa !38
  tail call void @bitmap_clear(ptr noundef %52) #21
  %53 = load ptr, ptr @df, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !39
  tail call void @bitmap_clear(ptr noundef %55) #21
  %56 = load ptr, ptr @df, align 8, !tbaa !5
  %57 = getelementptr inbounds %struct.df, ptr %56, i64 0, i32 20
  %58 = load ptr, ptr %57, align 8, !tbaa !40
  tail call void @bitmap_clear(ptr noundef %58) #21
  %59 = load ptr, ptr @cfun, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !25
  %62 = load ptr, ptr %61, align 8, !tbaa !73
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !74
  %65 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !75
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %99, label %68

68:                                               ; preds = %49, %90
  %69 = phi ptr [ %91, %90 ], [ %59, %49 ]
  %70 = phi ptr [ %93, %90 ], [ %64, %49 ]
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !86
  %73 = load ptr, ptr %72, align 8, !tbaa !86
  %74 = icmp eq ptr %73, null
  br i1 %74, label %90, label %75

75:                                               ; preds = %68, %83
  %76 = phi ptr [ %86, %83 ], [ %73, %68 ]
  %77 = load ptr, ptr %71, align 8, !tbaa !86
  %78 = getelementptr inbounds %struct.rtl_bb_info, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !112
  %80 = getelementptr inbounds %struct.rtx_def, ptr %79, i64 0, i32 1, i32 0, i32 0, i64 2
  %81 = load ptr, ptr %80, align 8, !tbaa !86
  %82 = icmp eq ptr %76, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %75
  %84 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %76) #22, !range !134
  %85 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 2
  %86 = load ptr, ptr %85, align 8, !tbaa !86
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %75, !llvm.loop !142

88:                                               ; preds = %83, %75
  %89 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %90

90:                                               ; preds = %88, %68
  %91 = phi ptr [ %89, %88 ], [ %69, %68 ]
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !74
  %94 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !25
  %96 = getelementptr inbounds %struct.control_flow_graph, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !75
  %98 = icmp eq ptr %93, %97
  br i1 %98, label %99, label %68, !llvm.loop !143

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
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = load ptr, ptr %1, align 8, !tbaa !144
  store ptr %4, ptr %0, align 8, !tbaa !146
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !148
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !146
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !149
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !151
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !107
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !152
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !67
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !152
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !67
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !153

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !67
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !67
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !151
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !146
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !151
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !107
  store i64 %35, ptr %3, align 8, !tbaa !152
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !67
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !67
  %40 = load i32, ptr %23, align 8, !tbaa !151
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !151
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !154

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !155
  store ptr %44, ptr %0, align 8, !tbaa !146
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !149
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !67
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !152
  store i32 %16, ptr %1, align 4, !tbaa !67
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !152
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !152
  %6 = load i32, ptr %1, align 4, !tbaa !67
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !67
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_process_deferred_rescans() local_unnamed_addr #0 {
  %1 = alloca %struct.bitmap_iterator, align 8
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %4 = load ptr, ptr @df, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 27
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = tail call i32 @df_clear_flags(i32 noundef 16) #21
  %11 = load ptr, ptr @df, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 27
  %13 = load i8, ptr %12, align 4
  br label %14

14:                                               ; preds = %9, %0
  %15 = phi i8 [ %13, %9 ], [ %6, %0 ]
  %16 = and i8 %15, 32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @df_clear_flags(i32 noundef 32) #21
  br label %20

20:                                               ; preds = %18, %14
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 42, i64 1, ptr nonnull %21)
  br label %25

25:                                               ; preds = %23, %20
  %26 = load ptr, ptr @df, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.df, ptr %26, i64 0, i32 18
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %28) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #22
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !134
  %30 = icmp eq i8 %29, 0
  %31 = load ptr, ptr @df, align 8, !tbaa !5
  br i1 %30, label %51, label %32

32:                                               ; preds = %25, %47
  %33 = phi ptr [ %48, %47 ], [ %31, %25 ]
  %34 = load i32, ptr %2, align 4, !tbaa !67
  %35 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 11
  %36 = load i32, ptr %35, align 8, !tbaa !42
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.df, ptr %33, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = zext i32 %34 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  tail call void @df_insn_delete(ptr noundef null, i32 noundef %34) #22
  %46 = load ptr, ptr @df, align 8, !tbaa !5
  br label %47

47:                                               ; preds = %32, %45, %38
  %48 = phi ptr [ %33, %32 ], [ %46, %45 ], [ %33, %38 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !134
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %32, !llvm.loop !156

51:                                               ; preds = %47, %25
  %52 = phi ptr [ %31, %25 ], [ %48, %47 ]
  %53 = getelementptr inbounds %struct.df, ptr %52, i64 0, i32 19
  %54 = load ptr, ptr %53, align 8, !tbaa !39
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %54) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #22
  %55 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !134
  %56 = icmp eq i8 %55, 0
  %57 = load ptr, ptr @df, align 8, !tbaa !5
  br i1 %56, label %79, label %58

58:                                               ; preds = %51, %75
  %59 = phi ptr [ %76, %75 ], [ %57, %51 ]
  %60 = load i32, ptr %2, align 4, !tbaa !67
  %61 = getelementptr inbounds %struct.df, ptr %59, i64 0, i32 11
  %62 = load i32, ptr %61, align 8, !tbaa !42
  %63 = icmp ult i32 %60, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.df, ptr %59, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !43
  %67 = zext i32 %60 to i64
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = load ptr, ptr %69, align 8, !tbaa !120
  %73 = tail call zeroext i8 @df_insn_rescan(ptr noundef %72) #22, !range !134
  %74 = load ptr, ptr @df, align 8, !tbaa !5
  br label %75

75:                                               ; preds = %58, %71, %64
  %76 = phi ptr [ %59, %58 ], [ %74, %71 ], [ %59, %64 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %77 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !134
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %58, !llvm.loop !157

79:                                               ; preds = %75, %51
  %80 = phi ptr [ %57, %51 ], [ %76, %75 ]
  %81 = getelementptr inbounds %struct.df, ptr %80, i64 0, i32 20
  %82 = load ptr, ptr %81, align 8, !tbaa !40
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %82) #21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %2) #22
  %83 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !134
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %107, label %85

85:                                               ; preds = %79
  %86 = load ptr, ptr @df, align 8, !tbaa !5
  br label %87

87:                                               ; preds = %85, %103
  %88 = phi ptr [ %86, %85 ], [ %104, %103 ]
  %89 = load i32, ptr %2, align 4, !tbaa !67
  %90 = getelementptr inbounds %struct.df, ptr %88, i64 0, i32 11
  %91 = load i32, ptr %90, align 8, !tbaa !42
  %92 = icmp ult i32 %89, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.df, ptr %88, i64 0, i32 10
  %95 = load ptr, ptr %94, align 8, !tbaa !43
  %96 = zext i32 %89 to i64
  %97 = getelementptr inbounds ptr, ptr %95, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %93
  %101 = load ptr, ptr %98, align 8, !tbaa !120
  tail call void @df_notes_rescan(ptr noundef %101) #22
  %102 = load ptr, ptr @df, align 8, !tbaa !5
  br label %103

103:                                              ; preds = %87, %100, %93
  %104 = phi ptr [ %88, %87 ], [ %102, %100 ], [ %88, %93 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #22
  %105 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %1, ptr noundef nonnull %2) #22, !range !134
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %87, !llvm.loop !158

107:                                              ; preds = %103, %79
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 40, i64 1, ptr nonnull %108)
  br label %112

112:                                              ; preds = %110, %107
  tail call void @bitmap_obstack_free(ptr noundef %3) #21
  %113 = load ptr, ptr @df, align 8, !tbaa !5
  %114 = getelementptr inbounds %struct.df, ptr %113, i64 0, i32 18
  %115 = load ptr, ptr %114, align 8, !tbaa !38
  tail call void @bitmap_clear(ptr noundef %115) #21
  %116 = load ptr, ptr @df, align 8, !tbaa !5
  %117 = getelementptr inbounds %struct.df, ptr %116, i64 0, i32 19
  %118 = load ptr, ptr %117, align 8, !tbaa !39
  tail call void @bitmap_clear(ptr noundef %118) #21
  %119 = load ptr, ptr @df, align 8, !tbaa !5
  %120 = getelementptr inbounds %struct.df, ptr %119, i64 0, i32 20
  %121 = load ptr, ptr %120, align 8, !tbaa !40
  tail call void @bitmap_clear(ptr noundef %121) #21
  br i1 %8, label %124, label %122

122:                                              ; preds = %112
  %123 = tail call i32 @df_set_flags(i32 noundef 16) #21
  br label %124

124:                                              ; preds = %122, %112
  br i1 %17, label %127, label %125

125:                                              ; preds = %124
  %126 = tail call i32 @df_set_flags(i32 noundef 32) #21
  br label %127

127:                                              ; preds = %125, %124
  %128 = load ptr, ptr @df, align 8, !tbaa !5
  %129 = getelementptr inbounds %struct.df, ptr %128, i64 0, i32 29
  %130 = load i8, ptr %129, align 2, !tbaa !159
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  tail call void @df_update_entry_exit_and_calls() #22
  %133 = load ptr, ptr @df, align 8, !tbaa !5
  %134 = getelementptr inbounds %struct.df, ptr %133, i64 0, i32 29
  store i8 0, ptr %134, align 2, !tbaa !159
  br label %135

135:                                              ; preds = %132, %127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_notes_rescan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.df_collection_rec, align 8
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !86
  %5 = load ptr, ptr @df, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %156, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 27
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %156

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = icmp eq ptr %14, null
  br i1 %15, label %156, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  tail call void @df_grow_bb_info(ptr noundef %18) #21
  tail call void @df_grow_reg_info() #22
  %19 = load i32, ptr %3, align 8, !tbaa !86
  %20 = load ptr, ptr @df, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 11
  %22 = load i32, ptr %21, align 8, !tbaa !42
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = sext i32 %19 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 27
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 32
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %64, label %39

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 27
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, 32
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %64, label %41

39:                                               ; preds = %24
  %40 = icmp eq ptr %29, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %34, %39
  %42 = tail call ptr @df_insn_create_insn_record(ptr noundef nonnull %0) #22
  %43 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 1
  store ptr @df_null_ref_rec, ptr %43, align 8, !tbaa !44
  %44 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 2
  store ptr @df_null_ref_rec, ptr %44, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 3
  store ptr @df_null_ref_rec, ptr %45, align 8, !tbaa !47
  %46 = getelementptr inbounds %struct.df_insn_info, ptr %42, i64 0, i32 4
  store ptr @df_null_mw_rec, ptr %46, align 8, !tbaa !48
  %47 = load ptr, ptr @df, align 8, !tbaa !5
  br label %48

48:                                               ; preds = %41, %39
  %49 = phi ptr [ %47, %41 ], [ %20, %39 ]
  %50 = getelementptr inbounds %struct.df, ptr %49, i64 0, i32 18
  %51 = load ptr, ptr %50, align 8, !tbaa !38
  %52 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %51, i32 noundef %4) #21
  %53 = load ptr, ptr @df, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !39
  %56 = tail call i32 @bitmap_bit_p(ptr noundef %55, i32 noundef %4) #21
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %156

58:                                               ; preds = %48
  %59 = load ptr, ptr @df, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.df, ptr %59, i64 0, i32 20
  %61 = load ptr, ptr %60, align 8, !tbaa !40
  %62 = load i32, ptr %3, align 8, !tbaa !86
  %63 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %61, i32 noundef %62) #21
  br label %156

64:                                               ; preds = %34, %24
  %65 = phi ptr [ null, %34 ], [ %29, %24 ]
  %66 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 18
  %67 = load ptr, ptr %66, align 8, !tbaa !38
  %68 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %67, i32 noundef %4) #21
  %69 = load ptr, ptr @df, align 8, !tbaa !5
  %70 = getelementptr inbounds %struct.df, ptr %69, i64 0, i32 20
  %71 = load ptr, ptr %70, align 8, !tbaa !40
  %72 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %71, i32 noundef %4) #21
  %73 = icmp eq ptr %65, null
  br i1 %73, label %154, label %74

74:                                               ; preds = %64
  %75 = load ptr, ptr %13, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  %76 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 32) #22, !range !103
  %77 = alloca i8, i64 %76, align 16
  %78 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %77) #22
  %79 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 2
  store ptr %78, ptr %79, align 8, !tbaa !110
  %80 = alloca [264 x i8], align 16
  %81 = call fastcc ptr @VEC_df_mw_hardreg_ptr_stack_alloc1(ptr noundef nonnull %80) #22
  %82 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 3
  store ptr %81, ptr %82, align 8, !tbaa !111
  %83 = call fastcc i32 @df_mw_hardreg_chain_delete_eq_uses(ptr noundef nonnull %65) #22
  %84 = getelementptr inbounds %struct.df_insn_info, ptr %65, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !47
  call fastcc void @df_ref_chain_delete(ptr noundef %85) #22
  store ptr null, ptr %84, align 8, !tbaa !47
  %86 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !86
  %88 = icmp eq ptr %87, null
  br i1 %88, label %102, label %89

89:                                               ; preds = %74, %98
  %90 = phi ptr [ %100, %98 ], [ %87, %74 ]
  %91 = load i32, ptr %90, align 8
  %92 = lshr i32 %91, 16
  %93 = trunc i32 %92 to i8
  %94 = add i8 %93, -3
  %95 = icmp ult i8 %94, 2
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  call fastcc void @df_uses_record(i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull %97, i32 noundef 1, ptr noundef %75, ptr noundef nonnull %65, i32 noundef 4, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %98

98:                                               ; preds = %89, %96
  %99 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1, i32 0, i32 0, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !86
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %89, !llvm.loop !160

102:                                              ; preds = %98, %74
  call fastcc void @df_canonize_collection_rec(ptr noundef nonnull %2) #22
  %103 = load ptr, ptr %82, align 8
  %104 = call fastcc i32 @VEC_df_mw_hardreg_ptr_base_length(ptr noundef %103) #22
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %153, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.df_insn_info, ptr %65, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !48
  %109 = load ptr, ptr %108, align 8, !tbaa !5
  %110 = icmp eq ptr %109, null
  br i1 %110, label %142, label %111

111:                                              ; preds = %106, %111
  %112 = phi ptr [ %115, %111 ], [ %108, %106 ]
  %113 = phi i32 [ %114, %111 ], [ 0, %106 ]
  %114 = add i32 %113, 1
  %115 = getelementptr inbounds ptr, ptr %112, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %111, !llvm.loop !161

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
  store ptr %127, ptr %107, align 8, !tbaa !48
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
  %137 = load ptr, ptr %107, align 8, !tbaa !48
  %138 = add i32 %114, %104
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %137, i64 %139
  store ptr null, ptr %140, align 8, !tbaa !5
  %141 = load ptr, ptr %107, align 8, !tbaa !48
  call void @spec_qsort(ptr noundef %141, i64 noundef %139, i64 noundef 8, ptr noundef nonnull @df_mw_compare) #21
  br label %153

142:                                              ; preds = %106, %118
  %143 = add i32 %104, 1
  %144 = zext i32 %143 to i64
  %145 = shl nuw nsw i64 %144, 3
  %146 = call ptr @xmalloc(i64 noundef %145) #21
  store ptr %146, ptr %107, align 8, !tbaa !48
  %147 = load ptr, ptr %82, align 8
  %148 = call fastcc ptr @VEC_df_mw_hardreg_ptr_base_address(ptr noundef %147) #22
  %149 = zext i32 %104 to i64
  %150 = shl nuw nsw i64 %149, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %146, ptr align 8 %148, i64 %150, i1 false)
  %151 = load ptr, ptr %107, align 8, !tbaa !48
  %152 = getelementptr inbounds ptr, ptr %151, i64 %149
  store ptr null, ptr %152, align 8, !tbaa !5
  br label %153

153:                                              ; preds = %129, %142, %102
  call fastcc void @VEC_df_mw_hardreg_ptr_stack_free(ptr noundef nonnull %82) #22
  call fastcc void @df_refs_add_to_chains(ptr noundef nonnull %2, ptr noundef %75, ptr noundef %0) #22
  call fastcc void @VEC_df_ref_stack_free(ptr noundef nonnull %79) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  br label %156

154:                                              ; preds = %64
  %155 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %0) #22, !range !134
  br label %156

156:                                              ; preds = %153, %154, %48, %58, %12, %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_update_entry_exit_and_calls() local_unnamed_addr #0 {
  tail call void @df_update_entry_block_defs() #22
  tail call void @df_update_exit_block_uses() #22
  %1 = load ptr, ptr @cfun, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %46, label %10

10:                                               ; preds = %0, %37
  %11 = phi ptr [ %38, %37 ], [ %1, %0 ]
  %12 = phi ptr [ %40, %37 ], [ %6, %0 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %10, %31
  %18 = phi ptr [ %33, %31 ], [ %15, %10 ]
  %19 = load ptr, ptr %13, align 8, !tbaa !86
  %20 = getelementptr inbounds %struct.rtl_bb_info, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !112
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %17
  %26 = load i32, ptr %18, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %18) #22, !range !134
  br label %31

31:                                               ; preds = %25, %29
  %32 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !86
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %17, !llvm.loop !162

35:                                               ; preds = %31, %17
  %36 = load ptr, ptr @cfun, align 8, !tbaa !5
  br label %37

37:                                               ; preds = %35, %10
  %38 = phi ptr [ %36, %35 ], [ %11, %10 ]
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !74
  %41 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !25
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !75
  %45 = icmp eq ptr %40, %44
  br i1 %45, label %46, label %10, !llvm.loop !163

46:                                               ; preds = %37, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_maybe_reorganize_use_refs(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 4
  %4 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 4, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !70
  %6 = icmp eq i32 %5, %0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  switch i32 %0, label %18 [
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 6, label %11
    i32 0, label %12
    i32 1, label %17
    i32 2, label %17
  ]

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
  %13 = load ptr, ptr %3, align 8, !tbaa !57
  tail call void @free(ptr noundef %13) #22
  %14 = load ptr, ptr @df, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 4
  store ptr null, ptr %15, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.df, ptr %14, i64 0, i32 4, i32 3
  store i32 0, ptr %16, align 8, !tbaa !164
  br label %18

17:                                               ; preds = %7, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1928, ptr noundef nonnull @.str.9) #21
  br label %18

18:                                               ; preds = %7, %17, %12, %11, %10, %9, %8
  %19 = load ptr, ptr @df, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 4, i32 6
  store i32 %0, ptr %20, align 4, !tbaa !70
  br label %21

21:                                               ; preds = %1, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_reorganize_refs_by_reg(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = load ptr, ptr @df, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 28
  %7 = load i8, ptr %6, align 1, !tbaa !117
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

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
define internal fastcc void @df_reorganize_refs_by_insn(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = tail call fastcc i32 @df_count_refs(i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  %8 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 5
  store i32 %7, ptr %8, align 8, !tbaa !128
  tail call fastcc void @df_check_and_grow_ref_info(ptr noundef %0) #22
  %9 = load ptr, ptr @df, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !118
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %6) #22
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !134
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %13, %16
  %17 = phi i32 [ %25, %16 ], [ 0, %13 ]
  %18 = load ptr, ptr @cfun, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !25
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = load i32, ptr %6, align 4, !tbaa !67
  %24 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %22, i32 noundef %23) #22
  %25 = tail call fastcc i32 @df_reorganize_refs_by_insn_bb(ptr noundef %24, i32 noundef %17, ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !134
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %16, !llvm.loop !165

28:                                               ; preds = %16, %13
  %29 = phi i32 [ 0, %13 ], [ %25, %16 ]
  %30 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 4
  store i32 %29, ptr %30, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %47

31:                                               ; preds = %4
  %32 = load ptr, ptr @cfun, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !25
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %31, %37
  %38 = phi ptr [ %42, %37 ], [ %35, %31 ]
  %39 = phi i32 [ %40, %37 ], [ 0, %31 ]
  %40 = tail call fastcc i32 @df_reorganize_refs_by_insn_bb(ptr noundef nonnull %38, i32 noundef %39, ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %37, !llvm.loop !166

44:                                               ; preds = %37, %31
  %45 = phi i32 [ 0, %31 ], [ %40, %37 ]
  %46 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 4
  store i32 %45, ptr %46, align 4, !tbaa !126
  br label %47

47:                                               ; preds = %44, %28
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_maybe_reorganize_def_refs(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 3
  %4 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 3, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !69
  %6 = icmp eq i32 %5, %0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  switch i32 %0, label %16 [
    i32 3, label %8
    i32 5, label %9
    i32 0, label %10
    i32 6, label %15
    i32 4, label %15
    i32 1, label %15
    i32 2, label %15
  ]

8:                                                ; preds = %7
  tail call fastcc void @df_reorganize_refs_by_reg(ptr noundef nonnull %3, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  br label %16

9:                                                ; preds = %7
  tail call fastcc void @df_reorganize_refs_by_insn(ptr noundef nonnull %3, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  br label %16

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !tbaa !54
  tail call void @free(ptr noundef %11) #22
  %12 = load ptr, ptr @df, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 3
  store ptr null, ptr %13, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 3, i32 3
  store i32 0, ptr %14, align 8, !tbaa !167
  br label %16

15:                                               ; preds = %7, %7, %7, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1964, ptr noundef nonnull @.str.9) #21
  br label %16

16:                                               ; preds = %7, %15, %10, %9, %8
  %17 = load ptr, ptr @df, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 3, i32 6
  store i32 %0, ptr %18, align 4, !tbaa !69
  br label %19

19:                                               ; preds = %1, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_insn_change_bb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = load i32, ptr %3, align 8, !tbaa !86
  %7 = icmp eq ptr %5, %1
  br i1 %7, label %58, label %8

8:                                                ; preds = %2
  store ptr %1, ptr %4, align 8, !tbaa !86
  %9 = load ptr, ptr @df, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %58, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.20, i32 noundef %6) #22
  %16 = load ptr, ptr @df, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi ptr [ %16, %14 ], [ %9, %11 ]
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !42
  %21 = icmp ult i32 %6, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = zext i32 %6 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %17, %22
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 17, i64 1, ptr nonnull %30)
  br label %34

34:                                               ; preds = %32, %29
  %35 = tail call zeroext i8 @df_insn_rescan(ptr noundef nonnull %0) #22, !range !134
  br label %58

36:                                               ; preds = %22
  %37 = load i32, ptr %0, align 8
  %38 = and i32 %37, 65535
  %39 = add nsw i32 %38, -7
  %40 = icmp ult i32 %39, 4
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  tail call void @df_set_bb_dirty(ptr noundef %1) #21
  %42 = icmp eq ptr %5, null
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %44 = icmp eq ptr %43, null
  br i1 %42, label %53, label %45

45:                                               ; preds = %41
  br i1 %44, label %52, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %48 = load i32, ptr %47, align 8, !tbaa !27
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !27
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %43, ptr noundef nonnull @.str.22, i32 noundef %48, i32 noundef %50) #22
  br label %52

52:                                               ; preds = %46, %45
  tail call void @df_set_bb_dirty(ptr noundef nonnull %5) #21
  br label %58

53:                                               ; preds = %41
  br i1 %44, label %58, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !27
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %43, ptr noundef nonnull @.str.23, i32 noundef %56) #22
  br label %58

58:                                               ; preds = %36, %52, %54, %53, %8, %2, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_ref_change_reg_with_loc(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @df, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i32 %0, -1
  %7 = or i1 %6, %5
  %8 = icmp eq i32 %0, %1
  %9 = or i1 %8, %7
  br i1 %9, label %34, label %10

10:                                               ; preds = %3
  tail call void @df_grow_reg_info() #22
  %11 = load ptr, ptr @df, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.df, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds ptr, ptr %13, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  tail call fastcc void @df_ref_change_reg_with_loc_1(ptr noundef %16, ptr noundef %19, i32 noundef %1, ptr noundef %2) #22
  %20 = load ptr, ptr @df, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = getelementptr inbounds ptr, ptr %22, i64 %14
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = getelementptr inbounds ptr, ptr %22, i64 %17
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  tail call fastcc void @df_ref_change_reg_with_loc_1(ptr noundef %24, ptr noundef %26, i32 noundef %1, ptr noundef %2) #22
  %27 = load ptr, ptr @df, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.df, ptr %27, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !62
  %30 = getelementptr inbounds ptr, ptr %29, i64 %14
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = getelementptr inbounds ptr, ptr %29, i64 %17
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  tail call fastcc void @df_ref_change_reg_with_loc_1(ptr noundef %31, ptr noundef %33, i32 noundef %1, ptr noundef %2) #22
  br label %34

34:                                               ; preds = %3, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_ref_change_reg_with_loc_1(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef readnone %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !122
  %6 = icmp eq ptr %5, null
  br i1 %6, label %101, label %7

7:                                                ; preds = %4
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.df_reg_info, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.df_reg_info, ptr %1, i64 0, i32 1
  br label %11

11:                                               ; preds = %7, %98
  %12 = phi ptr [ %5, %7 ], [ %99, %98 ]
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 254
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %95

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.df_regular_ref, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = icmp eq ptr %18, null
  br i1 %19, label %95, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !5
  %22 = icmp eq ptr %21, %3
  br i1 %22, label %23, label %95

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.df_base_ref, ptr %12, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  %26 = getelementptr inbounds %struct.df_base_ref, ptr %12, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !86
  %28 = getelementptr inbounds %struct.df_base_ref, ptr %12, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !86
  %30 = getelementptr inbounds %struct.df_base_ref, ptr %12, i64 0, i32 6
  store i32 %2, ptr %30, align 8, !tbaa !86
  %31 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %32 = getelementptr inbounds ptr, ptr %31, i64 %8
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.df_base_ref, ptr %12, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !86
  %35 = icmp eq ptr %27, null
  %36 = getelementptr inbounds %struct.df_base_ref, ptr %27, i64 0, i32 4
  %37 = select i1 %35, ptr %0, ptr %36
  store ptr %25, ptr %37, align 8, !tbaa !86
  %38 = icmp eq ptr %25, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.df_base_ref, ptr %25, i64 0, i32 5
  store ptr %27, ptr %40, align 8, !tbaa !86
  br label %41

41:                                               ; preds = %39, %23
  %42 = load i32, ptr %9, align 8, !tbaa !124
  %43 = add i32 %42, -1
  store i32 %43, ptr %9, align 8, !tbaa !124
  store ptr null, ptr %26, align 8, !tbaa !86
  %44 = load ptr, ptr %1, align 8, !tbaa !122
  store ptr %44, ptr %24, align 8, !tbaa !86
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.df_base_ref, ptr %44, i64 0, i32 5
  store ptr %12, ptr %47, align 8, !tbaa !86
  br label %48

48:                                               ; preds = %46, %41
  store ptr %12, ptr %1, align 8, !tbaa !122
  %49 = load i32, ptr %10, align 8, !tbaa !124
  %50 = add i32 %49, 1
  store i32 %50, ptr %10, align 8, !tbaa !124
  %51 = load i32, ptr %12, align 8
  %52 = and i32 %51, 255
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load ptr, ptr %17, align 8, !tbaa !86
  %56 = icmp eq ptr %55, null
  br i1 %56, label %66, label %63

57:                                               ; preds = %48
  %58 = load ptr, ptr %28, align 8, !tbaa !86
  %59 = load ptr, ptr %58, align 8, !tbaa !120
  %60 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !86
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57, %54
  %64 = phi ptr [ %55, %54 ], [ %61, %57 ]
  tail call void @df_set_bb_dirty(ptr noundef nonnull %64) #21
  %65 = load i32, ptr %12, align 8
  br label %66

66:                                               ; preds = %63, %57, %54
  %67 = phi i32 [ %65, %63 ], [ %51, %57 ], [ %51, %54 ]
  %68 = and i32 %67, 262144
  %69 = icmp eq i32 %68, 0
  %70 = getelementptr inbounds %struct.df_insn_info, ptr %29, i64 0, i32 3
  %71 = getelementptr inbounds %struct.df_insn_info, ptr %29, i64 0, i32 2
  %72 = select i1 %69, ptr %71, ptr %70
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %66
  %77 = load ptr, ptr %28, align 8, !tbaa !86
  %78 = load ptr, ptr %77, align 8, !tbaa !120
  %79 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !86
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %74, ptr noundef nonnull @.str.44, i32 noundef %80) #22
  br label %82

82:                                               ; preds = %76, %66
  %83 = load ptr, ptr %73, align 8, !tbaa !5
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %82, %85
  %86 = phi i32 [ %88, %85 ], [ 0, %82 ]
  %87 = phi ptr [ %89, %85 ], [ %73, %82 ]
  %88 = add i32 %86, 1
  %89 = getelementptr inbounds ptr, ptr %87, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !5
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %85, !llvm.loop !168

92:                                               ; preds = %85, %82
  %93 = phi i32 [ 0, %82 ], [ %88, %85 ]
  %94 = zext i32 %93 to i64
  tail call void @spec_qsort(ptr noundef nonnull %73, i64 noundef %94, i64 noundef 8, ptr noundef nonnull @df_ref_compare) #21
  br label %98

95:                                               ; preds = %11, %20, %16
  %96 = getelementptr inbounds %struct.df_base_ref, ptr %12, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !86
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi ptr [ %97, %95 ], [ %25, %92 ]
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %11, !llvm.loop !169

101:                                              ; preds = %98, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @df_mw_hardreg_chain_delete_eq_uses(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.df_insn_info, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %52, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @df, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.dataflow, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !9
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
  %23 = load ptr, ptr %12, align 8, !tbaa !24
  tail call void @pool_free(ptr noundef %23, ptr noundef nonnull %17) #21
  %24 = load ptr, ptr %16, align 8, !tbaa !5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22, %26
  %27 = phi ptr [ %28, %26 ], [ %16, %22 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  store ptr %29, ptr %27, align 8, !tbaa !5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26, !llvm.loop !170

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
  %40 = load ptr, ptr %37, align 8, !tbaa !5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %13, !llvm.loop !171

42:                                               ; preds = %36
  %43 = icmp eq i32 %39, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %42
  %45 = load ptr, ptr %2, align 8, !tbaa !48
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %45, align 8, !tbaa !5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void @free(ptr noundef nonnull %45) #22
  br label %51

51:                                               ; preds = %50, %47, %44
  store ptr @df_null_mw_rec, ptr %2, align 8, !tbaa !48
  br label %52

52:                                               ; preds = %42, %1, %51
  %53 = phi i32 [ 0, %51 ], [ 0, %1 ], [ %38, %42 ]
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_uses_record(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 {
  %11 = load ptr, ptr %2, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %206, label %13

13:                                               ; preds = %10, %37
  %14 = phi ptr [ %45, %37 ], [ %11, %10 ]
  %15 = phi i32 [ %44, %37 ], [ %9, %10 ]
  %16 = phi i32 [ %43, %37 ], [ %8, %10 ]
  %17 = phi i32 [ %42, %37 ], [ %7, %10 ]
  %18 = phi i32 [ %41, %37 ], [ %6, %10 ]
  %19 = phi i32 [ %40, %37 ], [ %3, %10 ]
  %20 = phi ptr [ %39, %37 ], [ %2, %10 ]
  %21 = phi i32 [ %38, %37 ], [ %0, %10 ]
  %22 = or i32 %18, 32800
  br label %23

23:                                               ; preds = %13, %203
  %24 = phi ptr [ %14, %13 ], [ %204, %203 ]
  %25 = phi ptr [ %20, %13 ], [ %176, %203 ]
  %26 = load i32, ptr %24, align 8
  %27 = and i32 %26, 65535
  %28 = trunc i32 %26 to i16
  switch i16 %28, label %168 [
    i16 44, label %206
    i16 45, label %206
    i16 30, label %206
    i16 35, label %206
    i16 32, label %206
    i16 31, label %206
    i16 33, label %206
    i16 36, label %206
    i16 46, label %206
    i16 20, label %206
    i16 21, label %206
    i16 25, label %29
    i16 43, label %47
    i16 39, label %50
    i16 37, label %57
    i16 119, label %59
    i16 120, label %59
    i16 23, label %84
    i16 79, label %159
    i16 17, label %141
    i16 19, label %141
    i16 29, label %141
    i16 16, label %141
    i16 138, label %157
    i16 74, label %159
    i16 76, label %159
    i16 75, label %159
    i16 77, label %159
    i16 78, label %159
  ]

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp eq i32 %33, 43
  br i1 %34, label %35, label %206

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  br label %37

37:                                               ; preds = %35, %47, %71, %97, %100, %102, %136, %138, %157, %50, %123
  %38 = phi i32 [ %21, %35 ], [ %21, %47 ], [ 3, %71 ], [ %21, %97 ], [ %21, %100 ], [ %21, %102 ], [ 3, %136 ], [ %21, %138 ], [ %21, %157 ], [ %21, %50 ], [ 3, %123 ]
  %39 = phi ptr [ %36, %35 ], [ %48, %47 ], [ %72, %71 ], [ %98, %97 ], [ %101, %100 ], [ %109, %102 ], [ %137, %136 ], [ %111, %138 ], [ %158, %157 ], [ %52, %50 ], [ %111, %123 ]
  %40 = phi i32 [ 3, %35 ], [ 2, %47 ], [ %19, %71 ], [ 1, %97 ], [ 3, %100 ], [ 1, %102 ], [ 3, %136 ], [ 1, %138 ], [ 1, %157 ], [ %19, %50 ], [ 1, %123 ]
  %41 = phi i32 [ %18, %35 ], [ %49, %47 ], [ %83, %71 ], [ %99, %97 ], [ %18, %100 ], [ 1056, %102 ], [ 512, %136 ], [ 544, %138 ], [ %18, %157 ], [ %51, %50 ], [ 544, %123 ]
  %42 = phi i32 [ %17, %35 ], [ %17, %47 ], [ %75, %71 ], [ %17, %97 ], [ %17, %100 ], [ %17, %102 ], [ %126, %136 ], [ %17, %138 ], [ %17, %157 ], [ %17, %50 ], [ %126, %123 ]
  %43 = phi i32 [ %16, %35 ], [ %16, %47 ], [ %78, %71 ], [ %16, %97 ], [ %16, %100 ], [ %16, %102 ], [ %129, %136 ], [ %16, %138 ], [ %16, %157 ], [ %16, %50 ], [ %129, %123 ]
  %44 = phi i32 [ %15, %35 ], [ %15, %47 ], [ %80, %71 ], [ %15, %97 ], [ %15, %100 ], [ %15, %102 ], [ %131, %136 ], [ %15, %138 ], [ %15, %157 ], [ %15, %50 ], [ %131, %123 ]
  %45 = load ptr, ptr %39, align 8, !tbaa !5
  %46 = icmp eq ptr %45, null
  br i1 %46, label %206, label %13

47:                                               ; preds = %23
  %48 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %49 = and i32 %18, 4
  br label %37

50:                                               ; preds = %23
  %51 = or i32 %18, 16
  %52 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !86
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 37
  br i1 %56, label %57, label %37

57:                                               ; preds = %50, %23
  %58 = phi i32 [ %18, %23 ], [ %51, %50 ]
  tail call fastcc void @df_ref_record(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef %4, ptr noundef %5, i32 noundef %19, i32 noundef %58, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  br label %206

59:                                               ; preds = %23, %23
  %60 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !86
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 30
  br i1 %64, label %65, label %168

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 2
  %67 = load ptr, ptr %66, align 8, !tbaa !86
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 30
  br i1 %70, label %71, label %168

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %73 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !86
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds %struct.rtx_def, ptr %67, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !86
  %78 = trunc i64 %77 to i32
  %79 = lshr i32 %26, 16
  %80 = and i32 %79, 255
  %81 = icmp eq i32 %27, 120
  %82 = select i1 %81, i32 512, i32 256
  %83 = or i32 %82, %18
  br label %37

84:                                               ; preds = %23
  %85 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !86
  %87 = and i32 %18, 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3229, ptr noundef nonnull @.str.9) #21
  br label %90

90:                                               ; preds = %84, %89
  %91 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call fastcc void @df_uses_record(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %91, i32 noundef 1, ptr noundef %4, ptr noundef %5, i32 noundef %18, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  %92 = load i32, ptr %86, align 8
  %93 = trunc i32 %92 to i16
  switch i16 %93, label %140 [
    i16 39, label %94
    i16 37, label %206
    i16 15, label %206
    i16 38, label %206
    i16 36, label %206
    i16 46, label %206
    i16 43, label %100
    i16 40, label %102
    i16 120, label %110
  ]

94:                                               ; preds = %90
  %95 = tail call zeroext i8 @df_read_modify_subreg_p(ptr noundef nonnull %86) #22, !range !134
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %206, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %99 = or i32 %18, 2080
  br label %37

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  br label %37

102:                                              ; preds = %90
  %103 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !86
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 65535
  %107 = icmp eq i32 %106, 39
  %108 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %109 = select i1 %107, ptr %108, ptr %103
  br label %37

110:                                              ; preds = %90
  %111 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %112 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 0, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !86
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, 65535
  %116 = icmp eq i32 %115, 30
  br i1 %116, label %117, label %138

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 0, i64 2
  %119 = load ptr, ptr %118, align 8, !tbaa !86
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, 65535
  %122 = icmp eq i32 %121, 30
  br i1 %122, label %123, label %138

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.rtx_def, ptr %113, i64 0, i32 1
  %125 = load i64, ptr %124, align 8, !tbaa !86
  %126 = trunc i64 %125 to i32
  %127 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1
  %128 = load i64, ptr %127, align 8, !tbaa !86
  %129 = trunc i64 %128 to i32
  %130 = lshr i32 %92, 16
  %131 = and i32 %130, 255
  %132 = load ptr, ptr %111, align 8, !tbaa !86
  %133 = load i32, ptr %132, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 43
  br i1 %135, label %136, label %37

136:                                              ; preds = %123
  %137 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1
  br label %37

138:                                              ; preds = %117, %110
  tail call fastcc void @df_uses_record(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %112, i32 noundef 1, ptr noundef %4, ptr noundef %5, i32 noundef %18, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  %139 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1, i32 0, i32 0, i64 2
  tail call fastcc void @df_uses_record(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %139, i32 noundef 1, ptr noundef %4, ptr noundef %5, i32 noundef %18, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  br label %37

140:                                              ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3314, ptr noundef nonnull @.str.9) #21
  br label %206

141:                                              ; preds = %23, %23, %23, %23
  %142 = icmp eq i32 %27, 17
  br i1 %142, label %143, label %168

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !86
  %146 = load i32, ptr %145, align 8, !tbaa !172
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %206

148:                                              ; preds = %143, %148
  %149 = phi i64 [ %152, %148 ], [ 0, %143 ]
  %150 = phi ptr [ %153, %148 ], [ %145, %143 ]
  %151 = getelementptr inbounds %struct.rtvec_def, ptr %150, i64 0, i32 1, i64 %149
  tail call fastcc void @df_uses_record(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %151, i32 noundef 1, ptr noundef %4, ptr noundef %5, i32 noundef %18, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  %152 = add nuw nsw i64 %149, 1
  %153 = load ptr, ptr %144, align 8, !tbaa !86
  %154 = load i32, ptr %153, align 8, !tbaa !172
  %155 = sext i32 %154 to i64
  %156 = icmp slt i64 %152, %155
  br i1 %156, label %148, label %206, !llvm.loop !174

157:                                              ; preds = %23
  %158 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %37

159:                                              ; preds = %23, %23, %23, %23, %23, %23
  %160 = load ptr, ptr %5, align 8, !tbaa !120
  %161 = load i32, ptr %160, align 8
  %162 = and i32 %161, 65535
  %163 = icmp eq i32 %162, 7
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3379, ptr noundef nonnull @.str.9) #21
  br label %165

165:                                              ; preds = %159, %164
  %166 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !86
  tail call fastcc void @df_ref_record(i32 noundef %21, ptr noundef %1, ptr noundef %167, ptr noundef nonnull %166, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %22, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  br label %168

168:                                              ; preds = %165, %23, %141, %59, %65
  %169 = zext nneg i32 %27 to i64
  %170 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !5
  %172 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %169
  %173 = load i8, ptr %172, align 1, !tbaa !86
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %206, label %175

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %177 = zext i8 %173 to i64
  br label %178

178:                                              ; preds = %175, %201
  %179 = phi i64 [ %177, %175 ], [ %180, %201 ]
  %180 = add nsw i64 %179, -1
  %181 = getelementptr inbounds i8, ptr %171, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !86
  switch i8 %182, label %201 [
    i8 101, label %188
    i8 69, label %183
  ]

183:                                              ; preds = %178
  %184 = getelementptr inbounds [1 x %union.rtunion_def], ptr %176, i64 0, i64 %180
  %185 = load ptr, ptr %184, align 8, !tbaa !86
  %186 = load i32, ptr %185, align 8, !tbaa !172
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %192, label %201

188:                                              ; preds = %178
  %189 = icmp eq i64 %180, 0
  br i1 %189, label %203, label %190

190:                                              ; preds = %188
  %191 = getelementptr inbounds [1 x %union.rtunion_def], ptr %176, i64 0, i64 %180
  tail call fastcc void @df_uses_record(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %191, i32 noundef %19, ptr noundef %4, ptr noundef %5, i32 noundef %18, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  br label %201

192:                                              ; preds = %183, %192
  %193 = phi i64 [ %196, %192 ], [ 0, %183 ]
  %194 = phi ptr [ %197, %192 ], [ %185, %183 ]
  %195 = getelementptr inbounds %struct.rtvec_def, ptr %194, i64 0, i32 1, i64 %193
  tail call fastcc void @df_uses_record(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %195, i32 noundef %19, ptr noundef %4, ptr noundef %5, i32 noundef %18, i32 noundef %17, i32 noundef %16, i32 noundef %15) #22
  %196 = add nuw nsw i64 %193, 1
  %197 = load ptr, ptr %184, align 8, !tbaa !86
  %198 = load i32, ptr %197, align 8, !tbaa !172
  %199 = sext i32 %198 to i64
  %200 = icmp slt i64 %196, %199
  br i1 %200, label %192, label %201, !llvm.loop !175

201:                                              ; preds = %192, %183, %178, %190
  %202 = icmp sgt i64 %179, 1
  br i1 %202, label %178, label %206, !llvm.loop !176

203:                                              ; preds = %188
  %204 = load ptr, ptr %176, align 8, !tbaa !5
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %23

206:                                              ; preds = %94, %90, %90, %90, %90, %90, %29, %37, %203, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %168, %201, %148, %10, %143, %140, %57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_canonize_collection_rec(ptr nocapture noundef readonly %0) unnamed_addr #0 {
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
define internal fastcc i32 @VEC_df_mw_hardreg_ptr_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !177
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_df_mw_hardreg_ptr_base_address(ptr noundef readnone %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @df_mw_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = load ptr, ptr %1, align 8, !tbaa !5
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
  %24 = load i32, ptr %23, align 4, !tbaa !179
  %25 = getelementptr inbounds %struct.df_mw_hardreg, ptr %4, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !179
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = sub i32 %24, %26
  br label %48

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.df_mw_hardreg, ptr %3, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !181
  %33 = getelementptr inbounds %struct.df_mw_hardreg, ptr %4, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !181
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = sub i32 %32, %34
  br label %48

38:                                               ; preds = %30
  %39 = load ptr, ptr %3, align 8, !tbaa !182
  %40 = load ptr, ptr %4, align 8, !tbaa !182
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.df_mw_hardreg, ptr %3, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !183
  %45 = getelementptr inbounds %struct.df_mw_hardreg, ptr %4, i64 0, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !183
  %47 = sub i32 %44, %46
  br label %48

48:                                               ; preds = %38, %2, %42, %36, %28, %20, %14
  %49 = phi i32 [ %15, %14 ], [ %21, %20 ], [ %29, %28 ], [ %37, %36 ], [ %47, %42 ], [ 0, %2 ], [ 0, %38 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @df_read_modify_subreg_p(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 39
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !86
  %14 = lshr i32 %2, 16
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !86
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
define dso_local void @df_recompute_luids(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @df_grow_insn_info() #22
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %1, %33
  %7 = phi ptr [ %43, %33 ], [ %4, %1 ]
  %8 = phi i32 [ %41, %33 ], [ 0, %1 ]
  %9 = load ptr, ptr %2, align 8, !tbaa !86
  %10 = getelementptr inbounds %struct.rtl_bb_info, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = icmp eq ptr %7, %13
  br i1 %14, label %45, label %15

15:                                               ; preds = %6
  %16 = load ptr, ptr @df, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.df, ptr %16, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !86
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !5
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
  store i32 %8, ptr %35, align 8, !tbaa !114
  %36 = load i32, ptr %7, align 8
  %37 = and i32 %36, 65535
  %38 = add nsw i32 %37, -7
  %39 = icmp ult i32 %38, 4
  %40 = zext i1 %39 to i32
  %41 = add nuw nsw i32 %8, %40
  %42 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !86
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %6, !llvm.loop !184

45:                                               ; preds = %6, %33, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_bb_refs_collect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 8, !tbaa !104
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %5, i32 noundef 0) #22
  %6 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !109
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %7, i32 noundef 0) #22
  %8 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %9, i32 noundef 0) #22
  %10 = getelementptr inbounds %struct.df_collection_rec, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !111
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_truncate(ptr noundef %11, i32 noundef 0) #22
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !27
  switch i32 %13, label %22 [
    i32 0, label %14
    i32 1, label %18
  ]

14:                                               ; preds = %2
  %15 = load ptr, ptr @df, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 16
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  tail call fastcc void @df_entry_block_defs_collect(ptr noundef nonnull %0, ptr noundef %17) #22
  br label %61

18:                                               ; preds = %2
  %19 = load ptr, ptr @df, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  tail call fastcc void @df_exit_block_uses_collect(ptr noundef nonnull %0, ptr noundef %21) #22
  br label %61

22:                                               ; preds = %2
  %23 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef nonnull %1) #22, !range !134
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef nonnull %0, ptr noundef %27, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 2, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  %28 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef nonnull %0, ptr noundef %30, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 2, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %31

31:                                               ; preds = %25, %22
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %33 = load i32, ptr %32, align 8, !tbaa !185
  %34 = and i32 %33, 256
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !5
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef nonnull %0, ptr noundef %37, ptr noundef null, ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, i32 noundef 2, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, ptr %12, align 8, !tbaa !27
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %42 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef nonnull %1) #22, !range !134
  %43 = icmp eq i8 %42, 0
  %44 = load ptr, ptr @df, align 8
  %45 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 15
  %46 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 14
  %47 = select i1 %43, ptr %46, ptr %45
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %48, ptr noundef nonnull %4) #22
  %49 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #22, !range !134
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %41, %51
  %52 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %53 = load i32, ptr %4, align 4, !tbaa !67
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %52, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef nonnull %0, ptr noundef %56, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %57 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #22, !range !134
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %51, !llvm.loop !186

59:                                               ; preds = %51, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  br label %60

60:                                               ; preds = %59, %38
  tail call fastcc void @df_canonize_collection_rec(ptr noundef nonnull %0) #22
  br label %61

61:                                               ; preds = %60, %18, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_update_entry_block_defs() local_unnamed_addr #0 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  tail call fastcc void @df_get_entry_block_def_set(ptr noundef %1) #22
  %2 = load ptr, ptr @df, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @bitmap_equal_p(ptr noundef nonnull %4, ptr noundef %1) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef 0) #22
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %11) #22
  %12 = load ptr, ptr %10, align 8, !tbaa !50
  tail call fastcc void @df_ref_chain_delete(ptr noundef %12) #22
  store ptr null, ptr %10, align 8, !tbaa !50
  br label %22

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.dataflow, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !9
  %18 = getelementptr inbounds %struct.df_scan_problem_data, ptr %17, i64 0, i32 7
  %19 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %18) #21
  %20 = load ptr, ptr @df, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 16
  store ptr %19, ptr %21, align 8, !tbaa !36
  br label %22

22:                                               ; preds = %13, %9
  tail call fastcc void @df_record_entry_block_defs(ptr noundef %1) #22
  %23 = load ptr, ptr @df, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.df, ptr %23, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !36
  tail call void @bitmap_copy(ptr noundef %25, ptr noundef %1) #21
  %26 = load ptr, ptr @cfun, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !25
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !71
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
define dso_local void @df_update_exit_block_uses() local_unnamed_addr #0 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  tail call fastcc void @df_get_exit_block_use_set(ptr noundef %1) #22
  %2 = load ptr, ptr @df, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %0
  %7 = tail call zeroext i8 @bitmap_equal_p(ptr noundef nonnull %4, ptr noundef %1) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef 1) #22
  %11 = getelementptr inbounds %struct.df_scan_bb_info, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %12) #22
  %13 = load ptr, ptr %11, align 8, !tbaa !52
  tail call fastcc void @df_ref_chain_delete(ptr noundef %13) #22
  store ptr null, ptr %11, align 8, !tbaa !52
  br label %23

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.dataflow, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = getelementptr inbounds %struct.df_scan_problem_data, ptr %18, i64 0, i32 7
  %20 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull %19) #21
  %21 = load ptr, ptr @df, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 17
  store ptr %20, ptr %22, align 8, !tbaa !37
  br label %23

23:                                               ; preds = %14, %9
  tail call fastcc void @df_record_exit_block_uses(ptr noundef %1) #22
  %24 = load ptr, ptr @df, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.df, ptr %24, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !37
  tail call void @bitmap_copy(ptr noundef %26, ptr noundef %1) #21
  %27 = load ptr, ptr @cfun, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  %32 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %31, i32 noundef 1) #22
  tail call void @df_set_bb_dirty(ptr noundef %32) #21
  br label %33

33:                                               ; preds = %6, %23
  tail call void @bitmap_obstack_free(ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @df_hard_reg_init() local_unnamed_addr #13 {
  %1 = load i1, ptr @initialized, align 1
  br i1 %1, label %3, label %2

2:                                                ; preds = %0
  store i1 true, ptr @elim_reg_set, align 8
  store i1 true, ptr @initialized, align 1
  br label %3

3:                                                ; preds = %0, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @df_hard_reg_used_p(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @df, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !125
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !67
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @df_hard_reg_used_count(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @df, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !125
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !67
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @df_regs_ever_live_p(i32 noundef %0) local_unnamed_addr #14 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [53 x i8], ptr @regs_ever_live, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !86
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @df_set_regs_ever_live(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #15 {
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [53 x i8], ptr @regs_ever_live, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !86
  %6 = icmp eq i8 %5, %1
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  store i8 %1, ptr %4, align 1, !tbaa !86
  %8 = load ptr, ptr @df, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.df, ptr %8, i64 0, i32 29
  store i8 1, ptr %11, align 2, !tbaa !159
  br label %12

12:                                               ; preds = %2, %10, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_compute_regs_ever_live(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 29
  %4 = load i8, ptr %3, align 2, !tbaa !159
  %5 = icmp eq i8 %0, 0
  br i1 %5, label %7, label %6

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
  %15 = load i8, ptr %14, align 1, !tbaa !86
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = trunc i64 %13 to i32
  %19 = tail call zeroext i8 @df_hard_reg_used_p(i32 noundef %18) #22, !range !134
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12, %17
  %22 = add nuw nsw i64 %13, 1
  %23 = icmp eq i64 %22, 53
  br i1 %23, label %28, label %12, !llvm.loop !187

24:                                               ; preds = %17
  %25 = getelementptr inbounds [53 x i8], ptr @regs_ever_live, i64 0, i64 %13
  store i8 1, ptr %25, align 1, !tbaa !86
  %26 = add nuw nsw i64 %13, 1
  %27 = icmp eq i64 %26, 53
  br i1 %27, label %29, label %9, !llvm.loop !187

28:                                               ; preds = %21
  br i1 %11, label %31, label %29

29:                                               ; preds = %24, %28
  tail call void @df_update_entry_exit_and_calls() #22
  %30 = load ptr, ptr @df, align 8, !tbaa !5
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi ptr [ %30, %29 ], [ %2, %28 ]
  %33 = getelementptr inbounds %struct.df, ptr %32, i64 0, i32 29
  store i8 0, ptr %33, align 2, !tbaa !159
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @df_scan_verify() local_unnamed_addr #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %129, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %70, label %7

7:                                                ; preds = %3, %63
  %8 = phi i64 [ %65, %63 ], [ 0, %3 ]
  %9 = phi ptr [ %64, %63 ], [ %1, %3 ]
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds ptr, ptr %11, i64 %8
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = load ptr, ptr %13, align 8, !tbaa !122
  %15 = trunc i64 %8 to i32
  %16 = tail call fastcc i32 @df_reg_chain_mark(ptr noundef %14, i32 noundef %15, i8 noundef zeroext 1, i8 noundef zeroext 0) #22
  %17 = load ptr, ptr @df, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = getelementptr inbounds ptr, ptr %19, i64 %8
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.df_reg_info, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !124
  %24 = icmp eq i32 %16, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4647, ptr noundef nonnull @.str.9) #21
  %26 = load ptr, ptr @df, align 8, !tbaa !5
  br label %27

27:                                               ; preds = %7, %25
  %28 = phi ptr [ %17, %7 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !61
  %31 = getelementptr inbounds ptr, ptr %30, i64 %8
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = load ptr, ptr %32, align 8, !tbaa !122
  %34 = tail call fastcc i32 @df_reg_chain_mark(ptr noundef %33, i32 noundef %15, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  %35 = load ptr, ptr @df, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.df, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !61
  %38 = getelementptr inbounds ptr, ptr %37, i64 %8
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.df_reg_info, ptr %39, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !124
  %42 = icmp eq i32 %34, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4649, ptr noundef nonnull @.str.9) #21
  %44 = load ptr, ptr @df, align 8, !tbaa !5
  br label %45

45:                                               ; preds = %27, %43
  %46 = phi ptr [ %35, %27 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.df, ptr %46, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = getelementptr inbounds ptr, ptr %48, i64 %8
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = load ptr, ptr %50, align 8, !tbaa !122
  %52 = tail call fastcc i32 @df_reg_chain_mark(ptr noundef %51, i32 noundef %15, i8 noundef zeroext 0, i8 noundef zeroext 1) #22
  %53 = load ptr, ptr @df, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.df, ptr %53, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !62
  %56 = getelementptr inbounds ptr, ptr %55, i64 %8
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = getelementptr inbounds %struct.df_reg_info, ptr %57, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !124
  %60 = icmp eq i32 %52, %59
  br i1 %60, label %63, label %61

61:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4651, ptr noundef nonnull @.str.9) #21
  %62 = load ptr, ptr @df, align 8, !tbaa !5
  br label %63

63:                                               ; preds = %45, %61
  %64 = phi ptr [ %53, %45 ], [ %62, %61 ]
  %65 = add nuw nsw i64 %8, 1
  %66 = getelementptr inbounds %struct.df, ptr %64, i64 0, i32 9
  %67 = load i32, ptr %66, align 4, !tbaa !66
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %7, label %70, !llvm.loop !188

70:                                               ; preds = %63, %3
  %71 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %72 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  tail call fastcc void @df_get_regular_block_artificial_uses(ptr noundef %71) #22
  tail call fastcc void @df_get_eh_block_artificial_uses(ptr noundef %72) #22
  %73 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %72, ptr noundef %71) #21
  %74 = load ptr, ptr @df, align 8, !tbaa !5
  %75 = getelementptr inbounds %struct.df, ptr %74, i64 0, i32 14
  %76 = load ptr, ptr %75, align 8, !tbaa !34
  %77 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %71, ptr noundef %76) #21
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4668, ptr noundef nonnull @.str.9) #21
  br label %80

80:                                               ; preds = %70, %79
  %81 = load ptr, ptr @df, align 8, !tbaa !5
  %82 = getelementptr inbounds %struct.df, ptr %81, i64 0, i32 15
  %83 = load ptr, ptr %82, align 8, !tbaa !35
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
  %88 = load ptr, ptr @cfun, align 8, !tbaa !5
  %89 = getelementptr inbounds %struct.function, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !25
  %91 = load ptr, ptr %90, align 8, !tbaa !5
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %98, %87
  %94 = load ptr, ptr @df, align 8, !tbaa !5
  %95 = getelementptr inbounds %struct.df, ptr %94, i64 0, i32 9
  %96 = load i32, ptr %95, align 4, !tbaa !66
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %129, label %103

98:                                               ; preds = %87, %98
  %99 = phi ptr [ %101, %98 ], [ %91, %87 ]
  tail call fastcc void @df_bb_verify(ptr noundef nonnull %99) #22
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !5
  %102 = icmp eq ptr %101, null
  br i1 %102, label %93, label %98, !llvm.loop !189

103:                                              ; preds = %93, %103
  %104 = phi i64 [ %123, %103 ], [ 0, %93 ]
  %105 = phi ptr [ %124, %103 ], [ %94, %93 ]
  %106 = getelementptr inbounds %struct.df, ptr %105, i64 0, i32 5
  %107 = load ptr, ptr %106, align 8, !tbaa !60
  %108 = getelementptr inbounds ptr, ptr %107, i64 %104
  %109 = load ptr, ptr %108, align 8, !tbaa !5
  %110 = load ptr, ptr %109, align 8, !tbaa !122
  tail call fastcc void @df_reg_chain_verify_unmarked(ptr noundef %110) #22
  %111 = load ptr, ptr @df, align 8, !tbaa !5
  %112 = getelementptr inbounds %struct.df, ptr %111, i64 0, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !61
  %114 = getelementptr inbounds ptr, ptr %113, i64 %104
  %115 = load ptr, ptr %114, align 8, !tbaa !5
  %116 = load ptr, ptr %115, align 8, !tbaa !122
  tail call fastcc void @df_reg_chain_verify_unmarked(ptr noundef %116) #22
  %117 = load ptr, ptr @df, align 8, !tbaa !5
  %118 = getelementptr inbounds %struct.df, ptr %117, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !62
  %120 = getelementptr inbounds ptr, ptr %119, i64 %104
  %121 = load ptr, ptr %120, align 8, !tbaa !5
  %122 = load ptr, ptr %121, align 8, !tbaa !122
  tail call fastcc void @df_reg_chain_verify_unmarked(ptr noundef %122) #22
  %123 = add nuw nsw i64 %104, 1
  %124 = load ptr, ptr @df, align 8, !tbaa !5
  %125 = getelementptr inbounds %struct.df, ptr %124, i64 0, i32 9
  %126 = load i32, ptr %125, align 4, !tbaa !66
  %127 = zext i32 %126 to i64
  %128 = icmp ult i64 %123, %127
  br i1 %128, label %103, label %129, !llvm.loop !190

129:                                              ; preds = %103, %93, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @df_reg_chain_mark(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
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
  %17 = load ptr, ptr @df, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 1, i64 4
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4383, ptr noundef nonnull @.str.9) #21
  br label %26

26:                                               ; preds = %25, %21, %16
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !86
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
  %49 = load ptr, ptr %48, align 8, !tbaa !86
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
  %57 = load ptr, ptr %56, align 8, !tbaa !86
  %58 = icmp eq ptr %57, %10
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4398, ptr noundef nonnull @.str.9) #21
  %60 = load ptr, ptr %48, align 8, !tbaa !86
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi ptr [ %60, %59 ], [ %49, %55 ]
  %63 = add i32 %11, 1
  %64 = load i32, ptr %10, align 8
  %65 = or i32 %64, 1073741824
  store i32 %65, ptr %10, align 8
  %66 = icmp eq ptr %62, null
  br i1 %66, label %67, label %9, !llvm.loop !191

67:                                               ; preds = %61, %51, %4
  %68 = phi i32 [ 0, %4 ], [ %52, %51 ], [ %63, %61 ]
  ret i32 %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_entry_block_bitmap_verify() unnamed_addr #0 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  tail call fastcc void @df_get_entry_block_def_set(ptr noundef %1) #22
  %2 = load ptr, ptr @df, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %1, ptr noundef %4) #21
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @print_current_pass(ptr noundef %8) #21
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 19, i64 1, ptr %9) #24
  %11 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @df_print_regset(ptr noundef %11, ptr noundef %1) #21
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %13 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 23, i64 1, ptr %12) #24
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %15 = load ptr, ptr @df, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 16
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  tail call void @df_print_regset(ptr noundef %14, ptr noundef %17) #21
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4589, ptr noundef nonnull @.str.9) #21
  br label %18

18:                                               ; preds = %7, %0
  tail call void @bitmap_obstack_free(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_exit_block_bitmap_verify() unnamed_addr #0 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  tail call fastcc void @df_get_exit_block_use_set(ptr noundef %1) #22
  %2 = load ptr, ptr @df, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %1, ptr noundef %4) #21
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @print_current_pass(ptr noundef %8) #21
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 18, i64 1, ptr %9) #24
  %11 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @df_print_regset(ptr noundef %11, ptr noundef %1) #21
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %13 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 22, i64 1, ptr %12) #24
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %15 = load ptr, ptr @df, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  tail call void @df_print_regset(ptr noundef %14, ptr noundef %17) #21
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4618, ptr noundef nonnull @.str.9) #21
  br label %18

18:                                               ; preds = %7, %0
  tail call void @bitmap_obstack_free(ptr noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_bb_verify(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.df_collection_rec, align 8
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %4) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #23
  %6 = tail call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 128) #22, !range !103
  %7 = alloca i8, i64 %6, align 16
  %8 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 128, ptr noundef nonnull %7) #22
  store ptr %8, ptr %2, align 8, !tbaa !104
  %9 = call fastcc i64 @VEC_df_ref_base_embedded_size(i32 noundef 32) #22, !range !103
  %10 = alloca i8, i64 %9, align 16
  %11 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %10) #22
  %12 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !109
  %13 = alloca i8, i64 %9, align 16
  %14 = call fastcc ptr @VEC_df_ref_stack_alloc1(i32 noundef 32, ptr noundef nonnull %13) #22
  %15 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !110
  %16 = alloca [264 x i8], align 16
  %17 = call fastcc ptr @VEC_df_mw_hardreg_ptr_stack_alloc1(ptr noundef nonnull %16) #22
  %18 = getelementptr inbounds %struct.df_collection_rec, ptr %2, i64 0, i32 3
  store ptr %17, ptr %18, align 8, !tbaa !111
  %19 = icmp eq ptr %5, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4548, ptr noundef nonnull @.str.9) #21
  br label %21

21:                                               ; preds = %1, %20
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %21, %41
  %28 = phi ptr [ %43, %41 ], [ %25, %21 ]
  %29 = load ptr, ptr %22, align 8, !tbaa !86
  %30 = load ptr, ptr %29, align 8, !tbaa !192
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !86
  %33 = icmp eq ptr %28, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %27
  %35 = load i32, ptr %28, align 8
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -7
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call fastcc zeroext i8 @df_insn_refs_verify(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %28, i8 noundef zeroext 1) #22, !range !134
  call fastcc void @df_free_collection_rec(ptr noundef nonnull %2) #22
  br label %41

41:                                               ; preds = %34, %39
  %42 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !86
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %27, !llvm.loop !193

45:                                               ; preds = %27, %41, %21
  call fastcc void @df_bb_refs_collect(ptr noundef nonnull %2, ptr noundef nonnull %0) #22
  %46 = load ptr, ptr %2, align 8, !tbaa !104
  %47 = load i32, ptr %3, align 8, !tbaa !27
  %48 = call fastcc ptr @df_get_artificial_defs(i32 noundef %47) #22
  %49 = call fastcc zeroext i8 @df_refs_verify(ptr noundef %46, ptr noundef %48, i8 noundef zeroext 1) #22, !range !134
  %50 = load ptr, ptr %12, align 8, !tbaa !109
  %51 = load i32, ptr %3, align 8, !tbaa !27
  %52 = call fastcc ptr @df_get_artificial_uses(i32 noundef %51) #22
  %53 = call fastcc zeroext i8 @df_refs_verify(ptr noundef %50, ptr noundef %52, i8 noundef zeroext 1) #22, !range !134
  call fastcc void @df_free_collection_rec(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_reg_chain_verify_unmarked(ptr noundef readonly %0) unnamed_addr #0 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %3, !llvm.loop !194

13:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_scan_free_bb_info(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = icmp eq ptr %1, null
  br i1 %5, label %52, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %6, %27
  %12 = phi ptr [ %29, %27 ], [ %9, %6 ]
  %13 = load ptr, ptr %7, align 8, !tbaa !86
  %14 = getelementptr inbounds %struct.rtl_bb_info, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !112
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  %18 = icmp eq ptr %12, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %11
  %20 = load i32, ptr %12, align 8
  %21 = and i32 %20, 65535
  %22 = add nsw i32 %21, -7
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !86
  tail call void @df_insn_delete(ptr noundef nonnull %0, i32 noundef %26) #22
  br label %27

27:                                               ; preds = %19, %24
  %28 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %29 = load ptr, ptr %28, align 8, !tbaa !86
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %11, !llvm.loop !195

31:                                               ; preds = %11, %27, %6
  %32 = load ptr, ptr @df, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.df, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.dataflow, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !64
  %37 = icmp ult i32 %4, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %4) #22
  br label %40

40:                                               ; preds = %38, %31
  %41 = phi ptr [ %39, %38 ], [ %1, %31 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !50
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %42) #22
  %43 = getelementptr inbounds %struct.df_scan_bb_info, ptr %41, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  tail call fastcc void @df_ref_chain_delete_du_chain(ptr noundef %44) #22
  %45 = load ptr, ptr %41, align 8, !tbaa !50
  tail call fastcc void @df_ref_chain_delete(ptr noundef %45) #22
  %46 = load ptr, ptr %43, align 8, !tbaa !52
  tail call fastcc void @df_ref_chain_delete(ptr noundef %46) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %47 = load ptr, ptr @df, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = getelementptr inbounds %struct.dataflow, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !12
  tail call void @pool_free(ptr noundef %51, ptr noundef nonnull %41) #21
  br label %52

52:                                               ; preds = %40, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_scan_free() #0 {
  %1 = load ptr, ptr @df, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.df, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.dataflow, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  tail call fastcc void @df_scan_free_internal() #22
  %8 = load ptr, ptr @df, align 8, !tbaa !5
  br label %9

9:                                                ; preds = %7, %0
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = getelementptr inbounds %struct.df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !118
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  tail call void @bitmap_obstack_free(ptr noundef nonnull %12) #21
  %15 = load ptr, ptr @df, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.df, ptr %15, i64 0, i32 2
  store ptr null, ptr %16, align 8, !tbaa !118
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi ptr [ %15, %14 ], [ %10, %9 ]
  %19 = getelementptr inbounds %struct.df, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  tail call void @free(ptr noundef %20) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_scan_start_dump(ptr noundef %0) #0 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 25, i64 1, ptr %0)
  %3 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !5
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %3) #21
  %4 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 24, i64 1, ptr %0)
  %5 = load ptr, ptr @df, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %7) #21
  %8 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 35, i64 1, ptr %0)
  %9 = load ptr, ptr @df, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.df, ptr %9, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %11) #21
  %12 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 30, i64 1, ptr %0)
  %13 = load ptr, ptr @df, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.df, ptr %13, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %15) #21
  %16 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 22, i64 1, ptr %0)
  %17 = load ptr, ptr @df, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.df, ptr %17, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  tail call void @df_print_regset(ptr noundef %0, ptr noundef %19) #21
  %20 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 21, i64 1, ptr %0)
  %21 = load ptr, ptr @df, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !37
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
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %27, ptr noundef %32) #22
  br label %34

34:                                               ; preds = %25, %30
  %35 = add nuw nsw i64 %26, 1
  %36 = icmp eq i64 %35, 53
  br i1 %36, label %37, label %25, !llvm.loop !196

37:                                               ; preds = %34
  %38 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 16, i64 1, ptr %0)
  %39 = load ptr, ptr @df, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.df, ptr %39, i64 0, i32 9
  %41 = load i32, ptr %40, align 4, !tbaa !66
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %149

43:                                               ; preds = %37, %139
  %44 = phi ptr [ %140, %139 ], [ %39, %37 ]
  %45 = phi i64 [ %144, %139 ], [ 0, %37 ]
  %46 = phi i32 [ %143, %139 ], [ 0, %37 ]
  %47 = phi i32 [ %142, %139 ], [ 0, %37 ]
  %48 = phi i32 [ %141, %139 ], [ 0, %37 ]
  %49 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !60
  %51 = getelementptr inbounds ptr, ptr %50, i64 %45
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = getelementptr inbounds %struct.df_reg_info, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !124
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !61
  %59 = getelementptr inbounds ptr, ptr %58, i64 %45
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = getelementptr inbounds %struct.df_reg_info, ptr %60, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !124
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.df, ptr %44, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !62
  %67 = getelementptr inbounds ptr, ptr %66, i64 %45
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.df_reg_info, ptr %68, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !124
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %139, label %72

72:                                               ; preds = %64, %56, %43
  %73 = trunc i64 %45 to i32
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %73) #22
  %75 = load ptr, ptr @df, align 8, !tbaa !5
  %76 = getelementptr inbounds %struct.df, ptr %75, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !60
  %78 = getelementptr inbounds ptr, ptr %77, i64 %45
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.df_reg_info, ptr %79, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !124
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %72
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %81) #22
  %85 = load ptr, ptr @df, align 8, !tbaa !5
  %86 = getelementptr inbounds %struct.df, ptr %85, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !60
  %88 = getelementptr inbounds ptr, ptr %87, i64 %45
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = getelementptr inbounds %struct.df_reg_info, ptr %89, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !124
  %92 = add i32 %91, %48
  br label %93

93:                                               ; preds = %83, %72
  %94 = phi ptr [ %85, %83 ], [ %75, %72 ]
  %95 = phi i32 [ %92, %83 ], [ %48, %72 ]
  %96 = phi ptr [ @.str.36, %83 ], [ @.str.33, %72 ]
  %97 = getelementptr inbounds %struct.df, ptr %94, i64 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !61
  %99 = getelementptr inbounds ptr, ptr %98, i64 %45
  %100 = load ptr, ptr %99, align 8, !tbaa !5
  %101 = getelementptr inbounds %struct.df_reg_info, ptr %100, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !124
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %93
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull %96, i32 noundef %102) #22
  %106 = load ptr, ptr @df, align 8, !tbaa !5
  %107 = getelementptr inbounds %struct.df, ptr %106, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !61
  %109 = getelementptr inbounds ptr, ptr %108, i64 %45
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  %111 = getelementptr inbounds %struct.df_reg_info, ptr %110, i64 0, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !124
  %113 = add i32 %112, %47
  br label %114

114:                                              ; preds = %104, %93
  %115 = phi ptr [ %106, %104 ], [ %94, %93 ]
  %116 = phi i32 [ %113, %104 ], [ %47, %93 ]
  %117 = phi ptr [ @.str.36, %104 ], [ %96, %93 ]
  %118 = getelementptr inbounds %struct.df, ptr %115, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !62
  %120 = getelementptr inbounds ptr, ptr %119, i64 %45
  %121 = load ptr, ptr %120, align 8, !tbaa !5
  %122 = getelementptr inbounds %struct.df_reg_info, ptr %121, i64 0, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !124
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %114
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef nonnull %117, i32 noundef %123) #22
  %127 = load ptr, ptr @df, align 8, !tbaa !5
  %128 = getelementptr inbounds %struct.df, ptr %127, i64 0, i32 7
  %129 = load ptr, ptr %128, align 8, !tbaa !62
  %130 = getelementptr inbounds ptr, ptr %129, i64 %45
  %131 = load ptr, ptr %130, align 8, !tbaa !5
  %132 = getelementptr inbounds %struct.df_reg_info, ptr %131, i64 0, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !124
  %134 = add i32 %133, %46
  br label %135

135:                                              ; preds = %125, %114
  %136 = phi i32 [ %134, %125 ], [ %46, %114 ]
  %137 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 2, i64 1, ptr %0)
  %138 = load ptr, ptr @df, align 8, !tbaa !5
  br label %139

139:                                              ; preds = %64, %135
  %140 = phi ptr [ %138, %135 ], [ %44, %64 ]
  %141 = phi i32 [ %95, %135 ], [ %48, %64 ]
  %142 = phi i32 [ %116, %135 ], [ %47, %64 ]
  %143 = phi i32 [ %136, %135 ], [ %46, %64 ]
  %144 = add nuw nsw i64 %45, 1
  %145 = getelementptr inbounds %struct.df, ptr %140, i64 0, i32 9
  %146 = load i32, ptr %145, align 4, !tbaa !66
  %147 = sext i32 %146 to i64
  %148 = icmp slt i64 %144, %147
  br i1 %148, label %43, label %149, !llvm.loop !197

149:                                              ; preds = %139, %37
  %150 = phi i32 [ 0, %37 ], [ %141, %139 ]
  %151 = phi i32 [ 0, %37 ], [ %142, %139 ]
  %152 = phi i32 [ 0, %37 ], [ %143, %139 ]
  %153 = load ptr, ptr @cfun, align 8, !tbaa !5
  %154 = getelementptr inbounds %struct.function, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !25
  %156 = load ptr, ptr %155, align 8, !tbaa !73
  %157 = getelementptr inbounds %struct.control_flow_graph, ptr %155, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !75
  %159 = getelementptr inbounds %struct.basic_block_def, ptr %156, i64 0, i32 6
  %160 = load ptr, ptr %159, align 8, !tbaa !74
  %161 = icmp eq ptr %160, %158
  br i1 %161, label %203, label %162

162:                                              ; preds = %149, %197
  %163 = phi ptr [ %201, %197 ], [ %160, %149 ]
  %164 = phi i32 [ %199, %197 ], [ 0, %149 ]
  %165 = phi i32 [ %198, %197 ], [ 0, %149 ]
  %166 = getelementptr inbounds %struct.basic_block_def, ptr %163, i64 0, i32 7
  %167 = load ptr, ptr %166, align 8, !tbaa !86
  %168 = load ptr, ptr %167, align 8, !tbaa !86
  %169 = icmp eq ptr %168, null
  br i1 %169, label %197, label %170

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.rtl_bb_info, ptr %167, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !112
  %173 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1, i32 0, i32 0, i64 2
  %174 = load ptr, ptr %173, align 8, !tbaa !86
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
  %195 = load ptr, ptr %194, align 8, !tbaa !86
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %175, !llvm.loop !198

197:                                              ; preds = %191, %175, %162
  %198 = phi i32 [ %165, %162 ], [ %178, %175 ], [ %192, %191 ]
  %199 = phi i32 [ %164, %162 ], [ %177, %175 ], [ %193, %191 ]
  %200 = getelementptr inbounds %struct.basic_block_def, ptr %163, i64 0, i32 6
  %201 = load ptr, ptr %200, align 8, !tbaa !74
  %202 = icmp eq ptr %201, %158
  br i1 %202, label %203, label %162, !llvm.loop !199

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
define internal void @df_scan_start_block(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %4) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %4) #22
  %9 = load ptr, ptr %5, align 8, !tbaa !50
  tail call void @df_refs_chain_dump(ptr noundef %9, i8 noundef zeroext 1, ptr noundef %1) #21
  %10 = load i32, ptr %3, align 8, !tbaa !27
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %10) #22
  %12 = getelementptr inbounds %struct.df_scan_bb_info, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !52
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
define internal fastcc void @df_free_ref(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @df, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = load i32, ptr %0, align 8
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %18 [
    i8 0, label %15
    i8 1, label %9
    i8 2, label %11
    i8 3, label %13
  ]

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
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  tail call void @pool_free(ptr noundef %17, ptr noundef nonnull %0) #21
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: optsize
declare ptr @vec_stack_p_reserve_exact_1(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_df_ref_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !200
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !5
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_df_mw_hardreg_ptr_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !177
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !5
  ret i32 %14
}

; Function Attrs: optsize
declare void @vec_stack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_reorganize_refs_by_reg_by_insn(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %7 = load ptr, ptr @df, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !66
  %10 = getelementptr inbounds %struct.df, ptr %7, i64 0, i32 27
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 0, i32 53
  %15 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !202
  %17 = zext i32 %9 to i64
  %18 = shl nuw nsw i64 %17, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %16, i8 0, i64 %18, i1 false)
  %19 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !203
  %21 = load ptr, ptr @df, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.df, ptr %21, i64 0, i32 9
  %23 = load i32, ptr %22, align 4, !tbaa !66
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %20, i8 0, i64 %25, i1 false)
  %26 = tail call fastcc i32 @df_count_refs(i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  %27 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 5
  store i32 %26, ptr %27, align 8, !tbaa !128
  tail call fastcc void @df_check_and_grow_ref_info(ptr noundef %0) #22
  %28 = load ptr, ptr @df, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !118
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %30, ptr noundef nonnull %6) #22
  %31 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !134
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %4
  %34 = load ptr, ptr @cfun, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !25
  %37 = getelementptr inbounds %struct.control_flow_graph, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !71
  %39 = icmp eq i8 %1, 0
  %40 = icmp eq i8 %2, 0
  %41 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 10
  %42 = icmp eq i8 %3, 0
  br label %49

43:                                               ; preds = %185, %4
  %44 = icmp ult i32 %14, %9
  br i1 %44, label %45, label %197

45:                                               ; preds = %43
  %46 = load ptr, ptr %15, align 8, !tbaa !202
  %47 = load ptr, ptr %19, align 8, !tbaa !203
  %48 = zext nneg i32 %14 to i64
  br label %188

49:                                               ; preds = %33, %185
  %50 = load i32, ptr %6, align 4, !tbaa !67
  %51 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %38, i32 noundef %50) #22
  br i1 %39, label %70, label %52

52:                                               ; preds = %49
  %53 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %50) #22
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = icmp eq ptr %54, null
  br i1 %55, label %70, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %19, align 8, !tbaa !203
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi ptr [ %54, %56 ], [ %68, %58 ]
  %60 = phi ptr [ %53, %56 ], [ %67, %58 ]
  %61 = getelementptr inbounds %struct.df_base_ref, ptr %59, i64 0, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !86
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %57, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !67
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4, !tbaa !67
  %67 = getelementptr inbounds ptr, ptr %60, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %58, !llvm.loop !204

70:                                               ; preds = %58, %52, %49
  br i1 %40, label %89, label %71

71:                                               ; preds = %70
  %72 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %50) #22
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  %74 = icmp eq ptr %73, null
  br i1 %74, label %89, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %19, align 8, !tbaa !203
  br label %77

77:                                               ; preds = %75, %77
  %78 = phi ptr [ %73, %75 ], [ %87, %77 ]
  %79 = phi ptr [ %72, %75 ], [ %86, %77 ]
  %80 = getelementptr inbounds %struct.df_base_ref, ptr %78, i64 0, i32 6
  %81 = load i32, ptr %80, align 8, !tbaa !86
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, ptr %76, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !67
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 4, !tbaa !67
  %86 = getelementptr inbounds ptr, ptr %79, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %77, !llvm.loop !205

89:                                               ; preds = %77, %71, %70
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !86
  %92 = load ptr, ptr %91, align 8, !tbaa !86
  %93 = icmp eq ptr %92, null
  br i1 %93, label %185, label %94

94:                                               ; preds = %89, %181
  %95 = phi ptr [ %183, %181 ], [ %92, %89 ]
  %96 = load ptr, ptr %90, align 8, !tbaa !86
  %97 = getelementptr inbounds %struct.rtl_bb_info, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !112
  %99 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1, i32 0, i32 0, i64 2
  %100 = load ptr, ptr %99, align 8, !tbaa !86
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
  %109 = load i32, ptr %108, align 8, !tbaa !86
  br i1 %39, label %133, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %41, align 8, !tbaa !43
  %112 = zext i32 %109 to i64
  %113 = getelementptr inbounds ptr, ptr %111, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !5
  %115 = getelementptr inbounds %struct.df_insn_info, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !44
  %117 = load ptr, ptr %116, align 8, !tbaa !5
  %118 = icmp eq ptr %117, null
  br i1 %118, label %133, label %119

119:                                              ; preds = %110
  %120 = load ptr, ptr %19, align 8, !tbaa !203
  br label %121

121:                                              ; preds = %119, %121
  %122 = phi ptr [ %117, %119 ], [ %131, %121 ]
  %123 = phi ptr [ %116, %119 ], [ %130, %121 ]
  %124 = getelementptr inbounds %struct.df_base_ref, ptr %122, i64 0, i32 6
  %125 = load i32, ptr %124, align 8, !tbaa !86
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, ptr %120, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !67
  %129 = add i32 %128, 1
  store i32 %129, ptr %127, align 4, !tbaa !67
  %130 = getelementptr inbounds ptr, ptr %123, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !5
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %121, !llvm.loop !206

133:                                              ; preds = %121, %110, %107
  br i1 %40, label %157, label %134

134:                                              ; preds = %133
  %135 = load ptr, ptr %41, align 8, !tbaa !43
  %136 = zext i32 %109 to i64
  %137 = getelementptr inbounds ptr, ptr %135, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !5
  %139 = getelementptr inbounds %struct.df_insn_info, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !46
  %141 = load ptr, ptr %140, align 8, !tbaa !5
  %142 = icmp eq ptr %141, null
  br i1 %142, label %157, label %143

143:                                              ; preds = %134
  %144 = load ptr, ptr %19, align 8, !tbaa !203
  br label %145

145:                                              ; preds = %143, %145
  %146 = phi ptr [ %141, %143 ], [ %155, %145 ]
  %147 = phi ptr [ %140, %143 ], [ %154, %145 ]
  %148 = getelementptr inbounds %struct.df_base_ref, ptr %146, i64 0, i32 6
  %149 = load i32, ptr %148, align 8, !tbaa !86
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, ptr %144, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !67
  %153 = add i32 %152, 1
  store i32 %153, ptr %151, align 4, !tbaa !67
  %154 = getelementptr inbounds ptr, ptr %147, i64 1
  %155 = load ptr, ptr %154, align 8, !tbaa !5
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %145, !llvm.loop !207

157:                                              ; preds = %145, %134, %133
  br i1 %42, label %181, label %158

158:                                              ; preds = %157
  %159 = load ptr, ptr %41, align 8, !tbaa !43
  %160 = zext i32 %109 to i64
  %161 = getelementptr inbounds ptr, ptr %159, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !5
  %163 = getelementptr inbounds %struct.df_insn_info, ptr %162, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !47
  %165 = load ptr, ptr %164, align 8, !tbaa !5
  %166 = icmp eq ptr %165, null
  br i1 %166, label %181, label %167

167:                                              ; preds = %158
  %168 = load ptr, ptr %19, align 8, !tbaa !203
  br label %169

169:                                              ; preds = %167, %169
  %170 = phi ptr [ %165, %167 ], [ %179, %169 ]
  %171 = phi ptr [ %164, %167 ], [ %178, %169 ]
  %172 = getelementptr inbounds %struct.df_base_ref, ptr %170, i64 0, i32 6
  %173 = load i32, ptr %172, align 8, !tbaa !86
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32, ptr %168, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !67
  %177 = add i32 %176, 1
  store i32 %177, ptr %175, align 4, !tbaa !67
  %178 = getelementptr inbounds ptr, ptr %171, i64 1
  %179 = load ptr, ptr %178, align 8, !tbaa !5
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %169, !llvm.loop !208

181:                                              ; preds = %169, %158, %102, %157
  %182 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 2
  %183 = load ptr, ptr %182, align 8, !tbaa !86
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %94, !llvm.loop !209

185:                                              ; preds = %94, %181, %89
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %186 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !134
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %43, label %49, !llvm.loop !210

188:                                              ; preds = %45, %188
  %189 = phi i64 [ %48, %45 ], [ %195, %188 ]
  %190 = phi i32 [ 0, %45 ], [ %194, %188 ]
  %191 = getelementptr inbounds i32, ptr %46, i64 %189
  store i32 %190, ptr %191, align 4, !tbaa !67
  %192 = getelementptr inbounds i32, ptr %47, i64 %189
  %193 = load i32, ptr %192, align 4, !tbaa !67
  %194 = add i32 %193, %190
  store i32 0, ptr %192, align 4, !tbaa !67
  %195 = add nuw nsw i64 %189, 1
  %196 = icmp eq i64 %195, %17
  br i1 %196, label %197, label %188, !llvm.loop !211

197:                                              ; preds = %188, %43
  %198 = phi i32 [ 0, %43 ], [ %194, %188 ]
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %30, ptr noundef nonnull %6) #22
  %199 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !134
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %405, label %201

201:                                              ; preds = %197
  %202 = icmp eq i8 %1, 0
  %203 = icmp eq i8 %2, 0
  %204 = icmp eq i8 %3, 0
  br label %205

205:                                              ; preds = %201, %402
  %206 = load ptr, ptr @cfun, align 8, !tbaa !5
  %207 = getelementptr inbounds %struct.function, ptr %206, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !25
  %209 = getelementptr inbounds %struct.control_flow_graph, ptr %208, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !71
  %211 = load i32, ptr %6, align 4, !tbaa !67
  %212 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %210, i32 noundef %211) #22
  br i1 %202, label %241, label %213

213:                                              ; preds = %205
  %214 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %211) #22
  %215 = load ptr, ptr %214, align 8, !tbaa !5
  %216 = icmp eq ptr %215, null
  br i1 %216, label %241, label %217

217:                                              ; preds = %213, %237
  %218 = phi ptr [ %239, %237 ], [ %215, %213 ]
  %219 = phi ptr [ %238, %237 ], [ %214, %213 ]
  %220 = getelementptr inbounds %struct.df_base_ref, ptr %218, i64 0, i32 6
  %221 = load i32, ptr %220, align 8, !tbaa !86
  %222 = icmp ult i32 %221, %14
  br i1 %222, label %237, label %223

223:                                              ; preds = %217
  %224 = load ptr, ptr %15, align 8, !tbaa !202
  %225 = zext i32 %221 to i64
  %226 = getelementptr inbounds i32, ptr %224, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !67
  %228 = load ptr, ptr %19, align 8, !tbaa !203
  %229 = getelementptr inbounds i32, ptr %228, i64 %225
  %230 = load i32, ptr %229, align 4, !tbaa !67
  %231 = add i32 %230, 1
  store i32 %231, ptr %229, align 4, !tbaa !67
  %232 = add i32 %230, %227
  %233 = getelementptr inbounds %struct.df_base_ref, ptr %218, i64 0, i32 7
  store i32 %232, ptr %233, align 4, !tbaa !86
  %234 = load ptr, ptr %0, align 8, !tbaa !127
  %235 = zext i32 %232 to i64
  %236 = getelementptr inbounds ptr, ptr %234, i64 %235
  store ptr %218, ptr %236, align 8, !tbaa !5
  br label %237

237:                                              ; preds = %223, %217
  %238 = getelementptr inbounds ptr, ptr %219, i64 1
  %239 = load ptr, ptr %238, align 8, !tbaa !5
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %217, !llvm.loop !212

241:                                              ; preds = %237, %213, %205
  br i1 %203, label %270, label %242

242:                                              ; preds = %241
  %243 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %211) #22
  %244 = load ptr, ptr %243, align 8, !tbaa !5
  %245 = icmp eq ptr %244, null
  br i1 %245, label %270, label %246

246:                                              ; preds = %242, %266
  %247 = phi ptr [ %268, %266 ], [ %244, %242 ]
  %248 = phi ptr [ %267, %266 ], [ %243, %242 ]
  %249 = getelementptr inbounds %struct.df_base_ref, ptr %247, i64 0, i32 6
  %250 = load i32, ptr %249, align 8, !tbaa !86
  %251 = icmp ult i32 %250, %14
  br i1 %251, label %266, label %252

252:                                              ; preds = %246
  %253 = load ptr, ptr %15, align 8, !tbaa !202
  %254 = zext i32 %250 to i64
  %255 = getelementptr inbounds i32, ptr %253, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !67
  %257 = load ptr, ptr %19, align 8, !tbaa !203
  %258 = getelementptr inbounds i32, ptr %257, i64 %254
  %259 = load i32, ptr %258, align 4, !tbaa !67
  %260 = add i32 %259, 1
  store i32 %260, ptr %258, align 4, !tbaa !67
  %261 = add i32 %259, %256
  %262 = getelementptr inbounds %struct.df_base_ref, ptr %247, i64 0, i32 7
  store i32 %261, ptr %262, align 4, !tbaa !86
  %263 = load ptr, ptr %0, align 8, !tbaa !127
  %264 = zext i32 %261 to i64
  %265 = getelementptr inbounds ptr, ptr %263, i64 %264
  store ptr %247, ptr %265, align 8, !tbaa !5
  br label %266

266:                                              ; preds = %252, %246
  %267 = getelementptr inbounds ptr, ptr %248, i64 1
  %268 = load ptr, ptr %267, align 8, !tbaa !5
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %246, !llvm.loop !213

270:                                              ; preds = %266, %242, %241
  %271 = getelementptr inbounds %struct.basic_block_def, ptr %212, i64 0, i32 7
  %272 = load ptr, ptr %271, align 8, !tbaa !86
  %273 = load ptr, ptr %272, align 8, !tbaa !86
  %274 = icmp eq ptr %273, null
  br i1 %274, label %402, label %275

275:                                              ; preds = %270, %398
  %276 = phi ptr [ %400, %398 ], [ %273, %270 ]
  %277 = load ptr, ptr %271, align 8, !tbaa !86
  %278 = getelementptr inbounds %struct.rtl_bb_info, ptr %277, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !112
  %280 = getelementptr inbounds %struct.rtx_def, ptr %279, i64 0, i32 1, i32 0, i32 0, i64 2
  %281 = load ptr, ptr %280, align 8, !tbaa !86
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
  %290 = load i32, ptr %289, align 8, !tbaa !86
  br i1 %202, label %326, label %291

291:                                              ; preds = %288
  %292 = load ptr, ptr @df, align 8, !tbaa !5
  %293 = getelementptr inbounds %struct.df, ptr %292, i64 0, i32 10
  %294 = load ptr, ptr %293, align 8, !tbaa !43
  %295 = zext i32 %290 to i64
  %296 = getelementptr inbounds ptr, ptr %294, i64 %295
  %297 = load ptr, ptr %296, align 8, !tbaa !5
  %298 = getelementptr inbounds %struct.df_insn_info, ptr %297, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !44
  %300 = load ptr, ptr %299, align 8, !tbaa !5
  %301 = icmp eq ptr %300, null
  br i1 %301, label %326, label %302

302:                                              ; preds = %291, %322
  %303 = phi ptr [ %324, %322 ], [ %300, %291 ]
  %304 = phi ptr [ %323, %322 ], [ %299, %291 ]
  %305 = getelementptr inbounds %struct.df_base_ref, ptr %303, i64 0, i32 6
  %306 = load i32, ptr %305, align 8, !tbaa !86
  %307 = icmp ult i32 %306, %14
  br i1 %307, label %322, label %308

308:                                              ; preds = %302
  %309 = load ptr, ptr %15, align 8, !tbaa !202
  %310 = zext i32 %306 to i64
  %311 = getelementptr inbounds i32, ptr %309, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !67
  %313 = load ptr, ptr %19, align 8, !tbaa !203
  %314 = getelementptr inbounds i32, ptr %313, i64 %310
  %315 = load i32, ptr %314, align 4, !tbaa !67
  %316 = add i32 %315, 1
  store i32 %316, ptr %314, align 4, !tbaa !67
  %317 = add i32 %315, %312
  %318 = getelementptr inbounds %struct.df_base_ref, ptr %303, i64 0, i32 7
  store i32 %317, ptr %318, align 4, !tbaa !86
  %319 = load ptr, ptr %0, align 8, !tbaa !127
  %320 = zext i32 %317 to i64
  %321 = getelementptr inbounds ptr, ptr %319, i64 %320
  store ptr %303, ptr %321, align 8, !tbaa !5
  br label %322

322:                                              ; preds = %308, %302
  %323 = getelementptr inbounds ptr, ptr %304, i64 1
  %324 = load ptr, ptr %323, align 8, !tbaa !5
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %302, !llvm.loop !214

326:                                              ; preds = %322, %291, %288
  br i1 %203, label %362, label %327

327:                                              ; preds = %326
  %328 = load ptr, ptr @df, align 8, !tbaa !5
  %329 = getelementptr inbounds %struct.df, ptr %328, i64 0, i32 10
  %330 = load ptr, ptr %329, align 8, !tbaa !43
  %331 = zext i32 %290 to i64
  %332 = getelementptr inbounds ptr, ptr %330, i64 %331
  %333 = load ptr, ptr %332, align 8, !tbaa !5
  %334 = getelementptr inbounds %struct.df_insn_info, ptr %333, i64 0, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !46
  %336 = load ptr, ptr %335, align 8, !tbaa !5
  %337 = icmp eq ptr %336, null
  br i1 %337, label %362, label %338

338:                                              ; preds = %327, %358
  %339 = phi ptr [ %360, %358 ], [ %336, %327 ]
  %340 = phi ptr [ %359, %358 ], [ %335, %327 ]
  %341 = getelementptr inbounds %struct.df_base_ref, ptr %339, i64 0, i32 6
  %342 = load i32, ptr %341, align 8, !tbaa !86
  %343 = icmp ult i32 %342, %14
  br i1 %343, label %358, label %344

344:                                              ; preds = %338
  %345 = load ptr, ptr %15, align 8, !tbaa !202
  %346 = zext i32 %342 to i64
  %347 = getelementptr inbounds i32, ptr %345, i64 %346
  %348 = load i32, ptr %347, align 4, !tbaa !67
  %349 = load ptr, ptr %19, align 8, !tbaa !203
  %350 = getelementptr inbounds i32, ptr %349, i64 %346
  %351 = load i32, ptr %350, align 4, !tbaa !67
  %352 = add i32 %351, 1
  store i32 %352, ptr %350, align 4, !tbaa !67
  %353 = add i32 %351, %348
  %354 = getelementptr inbounds %struct.df_base_ref, ptr %339, i64 0, i32 7
  store i32 %353, ptr %354, align 4, !tbaa !86
  %355 = load ptr, ptr %0, align 8, !tbaa !127
  %356 = zext i32 %353 to i64
  %357 = getelementptr inbounds ptr, ptr %355, i64 %356
  store ptr %339, ptr %357, align 8, !tbaa !5
  br label %358

358:                                              ; preds = %344, %338
  %359 = getelementptr inbounds ptr, ptr %340, i64 1
  %360 = load ptr, ptr %359, align 8, !tbaa !5
  %361 = icmp eq ptr %360, null
  br i1 %361, label %362, label %338, !llvm.loop !215

362:                                              ; preds = %358, %327, %326
  br i1 %204, label %398, label %363

363:                                              ; preds = %362
  %364 = load ptr, ptr @df, align 8, !tbaa !5
  %365 = getelementptr inbounds %struct.df, ptr %364, i64 0, i32 10
  %366 = load ptr, ptr %365, align 8, !tbaa !43
  %367 = zext i32 %290 to i64
  %368 = getelementptr inbounds ptr, ptr %366, i64 %367
  %369 = load ptr, ptr %368, align 8, !tbaa !5
  %370 = getelementptr inbounds %struct.df_insn_info, ptr %369, i64 0, i32 3
  %371 = load ptr, ptr %370, align 8, !tbaa !47
  %372 = load ptr, ptr %371, align 8, !tbaa !5
  %373 = icmp eq ptr %372, null
  br i1 %373, label %398, label %374

374:                                              ; preds = %363, %394
  %375 = phi ptr [ %396, %394 ], [ %372, %363 ]
  %376 = phi ptr [ %395, %394 ], [ %371, %363 ]
  %377 = getelementptr inbounds %struct.df_base_ref, ptr %375, i64 0, i32 6
  %378 = load i32, ptr %377, align 8, !tbaa !86
  %379 = icmp ult i32 %378, %14
  br i1 %379, label %394, label %380

380:                                              ; preds = %374
  %381 = load ptr, ptr %15, align 8, !tbaa !202
  %382 = zext i32 %378 to i64
  %383 = getelementptr inbounds i32, ptr %381, i64 %382
  %384 = load i32, ptr %383, align 4, !tbaa !67
  %385 = load ptr, ptr %19, align 8, !tbaa !203
  %386 = getelementptr inbounds i32, ptr %385, i64 %382
  %387 = load i32, ptr %386, align 4, !tbaa !67
  %388 = add i32 %387, 1
  store i32 %388, ptr %386, align 4, !tbaa !67
  %389 = add i32 %387, %384
  %390 = getelementptr inbounds %struct.df_base_ref, ptr %375, i64 0, i32 7
  store i32 %389, ptr %390, align 4, !tbaa !86
  %391 = load ptr, ptr %0, align 8, !tbaa !127
  %392 = zext i32 %389 to i64
  %393 = getelementptr inbounds ptr, ptr %391, i64 %392
  store ptr %375, ptr %393, align 8, !tbaa !5
  br label %394

394:                                              ; preds = %380, %374
  %395 = getelementptr inbounds ptr, ptr %376, i64 1
  %396 = load ptr, ptr %395, align 8, !tbaa !5
  %397 = icmp eq ptr %396, null
  br i1 %397, label %398, label %374, !llvm.loop !216

398:                                              ; preds = %394, %363, %283, %362
  %399 = getelementptr inbounds %struct.rtx_def, ptr %276, i64 0, i32 1, i32 0, i32 0, i64 2
  %400 = load ptr, ptr %399, align 8, !tbaa !86
  %401 = icmp eq ptr %400, null
  br i1 %401, label %402, label %275, !llvm.loop !217

402:                                              ; preds = %275, %398, %270
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %403 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !134
  %404 = icmp eq i8 %403, 0
  br i1 %404, label %405, label %205, !llvm.loop !218

405:                                              ; preds = %402, %197
  %406 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 4
  store i32 %198, ptr %406, align 4, !tbaa !126
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_reorganize_refs_by_reg_by_reg(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = load ptr, ptr @df, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !66
  %8 = getelementptr inbounds %struct.df, ptr %5, i64 0, i32 27
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !202
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %14, i8 0, i64 212, i1 false)
  %15 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !203
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %16, i8 0, i64 212, i1 false)
  br label %17

17:                                               ; preds = %4, %12
  %18 = phi i32 [ 53, %12 ], [ 0, %4 ]
  %19 = tail call fastcc i32 @df_count_refs(i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #22
  %20 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 5
  store i32 %19, ptr %20, align 8, !tbaa !128
  tail call fastcc void @df_check_and_grow_ref_info(ptr noundef %0) #22
  %21 = icmp ult i32 %18, %7
  br i1 %21, label %22, label %124

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
  %34 = load ptr, ptr %23, align 8, !tbaa !202
  %35 = getelementptr inbounds i32, ptr %34, i64 %32
  store i32 %33, ptr %35, align 4, !tbaa !67
  br i1 %24, label %61, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr @df, align 8, !tbaa !5
  %38 = getelementptr inbounds %struct.df, ptr %37, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !60
  %40 = getelementptr inbounds ptr, ptr %39, i64 %32
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = load ptr, ptr %41, align 8, !tbaa !122
  %43 = icmp eq ptr %42, null
  br i1 %43, label %61, label %44

44:                                               ; preds = %36, %59
  %45 = phi ptr [ %55, %59 ], [ %42, %36 ]
  %46 = phi i32 [ %53, %59 ], [ 0, %36 ]
  %47 = phi i32 [ %51, %59 ], [ %33, %36 ]
  %48 = load ptr, ptr %0, align 8, !tbaa !127
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  store ptr %45, ptr %50, align 8, !tbaa !5
  %51 = add i32 %47, 1
  %52 = getelementptr inbounds %struct.df_base_ref, ptr %45, i64 0, i32 7
  store i32 %47, ptr %52, align 4, !tbaa !86
  %53 = add nuw nsw i32 %46, 1
  %54 = getelementptr inbounds %struct.df_base_ref, ptr %45, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !86
  %56 = load i32, ptr %25, align 8, !tbaa !219
  %57 = icmp ult i32 %51, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1573, ptr noundef nonnull @.str.9) #21
  br label %59

59:                                               ; preds = %44, %58
  %60 = icmp eq ptr %55, null
  br i1 %60, label %61, label %44, !llvm.loop !220

61:                                               ; preds = %59, %36, %31
  %62 = phi i32 [ %33, %31 ], [ %33, %36 ], [ %51, %59 ]
  %63 = phi i32 [ 0, %31 ], [ 0, %36 ], [ %53, %59 ]
  br i1 %26, label %89, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr @df, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.df, ptr %65, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !61
  %68 = getelementptr inbounds ptr, ptr %67, i64 %32
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = load ptr, ptr %69, align 8, !tbaa !122
  %71 = icmp eq ptr %70, null
  br i1 %71, label %89, label %72

72:                                               ; preds = %64, %87
  %73 = phi ptr [ %83, %87 ], [ %70, %64 ]
  %74 = phi i32 [ %81, %87 ], [ %63, %64 ]
  %75 = phi i32 [ %79, %87 ], [ %62, %64 ]
  %76 = load ptr, ptr %0, align 8, !tbaa !127
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77
  store ptr %73, ptr %78, align 8, !tbaa !5
  %79 = add i32 %75, 1
  %80 = getelementptr inbounds %struct.df_base_ref, ptr %73, i64 0, i32 7
  store i32 %75, ptr %80, align 4, !tbaa !86
  %81 = add nuw nsw i32 %74, 1
  %82 = getelementptr inbounds %struct.df_base_ref, ptr %73, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !86
  %84 = load i32, ptr %25, align 8, !tbaa !219
  %85 = icmp ult i32 %79, %84
  br i1 %85, label %87, label %86

86:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1585, ptr noundef nonnull @.str.9) #21
  br label %87

87:                                               ; preds = %72, %86
  %88 = icmp eq ptr %83, null
  br i1 %88, label %89, label %72, !llvm.loop !221

89:                                               ; preds = %87, %64, %61
  %90 = phi i32 [ %62, %61 ], [ %62, %64 ], [ %79, %87 ]
  %91 = phi i32 [ %63, %61 ], [ %63, %64 ], [ %81, %87 ]
  br i1 %27, label %117, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr @df, align 8, !tbaa !5
  %94 = getelementptr inbounds %struct.df, ptr %93, i64 0, i32 7
  %95 = load ptr, ptr %94, align 8, !tbaa !62
  %96 = getelementptr inbounds ptr, ptr %95, i64 %32
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = load ptr, ptr %97, align 8, !tbaa !122
  %99 = icmp eq ptr %98, null
  br i1 %99, label %117, label %100

100:                                              ; preds = %92, %115
  %101 = phi ptr [ %111, %115 ], [ %98, %92 ]
  %102 = phi i32 [ %109, %115 ], [ %91, %92 ]
  %103 = phi i32 [ %107, %115 ], [ %90, %92 ]
  %104 = load ptr, ptr %0, align 8, !tbaa !127
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds ptr, ptr %104, i64 %105
  store ptr %101, ptr %106, align 8, !tbaa !5
  %107 = add i32 %103, 1
  %108 = getelementptr inbounds %struct.df_base_ref, ptr %101, i64 0, i32 7
  store i32 %103, ptr %108, align 4, !tbaa !86
  %109 = add nsw i32 %102, 1
  %110 = getelementptr inbounds %struct.df_base_ref, ptr %101, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !86
  %112 = load i32, ptr %25, align 8, !tbaa !219
  %113 = icmp ult i32 %107, %112
  br i1 %113, label %115, label %114

114:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1597, ptr noundef nonnull @.str.9) #21
  br label %115

115:                                              ; preds = %100, %114
  %116 = icmp eq ptr %111, null
  br i1 %116, label %117, label %100, !llvm.loop !222

117:                                              ; preds = %115, %92, %89
  %118 = phi i32 [ %90, %89 ], [ %90, %92 ], [ %107, %115 ]
  %119 = phi i32 [ %91, %89 ], [ %91, %92 ], [ %109, %115 ]
  %120 = load ptr, ptr %28, align 8, !tbaa !203
  %121 = getelementptr inbounds i32, ptr %120, i64 %32
  store i32 %119, ptr %121, align 4, !tbaa !67
  %122 = add nuw nsw i64 %32, 1
  %123 = icmp eq i64 %122, %30
  br i1 %123, label %124, label %31, !llvm.loop !223

124:                                              ; preds = %117, %17
  %125 = phi i32 [ 0, %17 ], [ %118, %117 ]
  %126 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 4
  store i32 %125, ptr %126, align 4, !tbaa !126
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @df_count_refs(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #16 {
  %4 = load ptr, ptr @df, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %48, label %8

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
  br i1 %9, label %26, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %10, align 8, !tbaa !60
  %21 = getelementptr inbounds ptr, ptr %20, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.df_reg_info, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !124
  %25 = add i32 %24, %18
  br label %26

26:                                               ; preds = %19, %16
  %27 = phi i32 [ %25, %19 ], [ %18, %16 ]
  br i1 %11, label %35, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %12, align 8, !tbaa !61
  %30 = getelementptr inbounds ptr, ptr %29, i64 %17
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.df_reg_info, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !124
  %34 = add i32 %33, %27
  br label %35

35:                                               ; preds = %28, %26
  %36 = phi i32 [ %34, %28 ], [ %27, %26 ]
  br i1 %13, label %44, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr %14, align 8, !tbaa !62
  %39 = getelementptr inbounds ptr, ptr %38, i64 %17
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.df_reg_info, ptr %40, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !124
  %43 = add i32 %42, %36
  br label %44

44:                                               ; preds = %35, %37
  %45 = phi i32 [ %43, %37 ], [ %36, %35 ]
  %46 = add nuw nsw i64 %17, 1
  %47 = icmp eq i64 %46, %15
  br i1 %47, label %48, label %16, !llvm.loop !224

48:                                               ; preds = %44, %3
  %49 = phi i32 [ 0, %3 ], [ %45, %44 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_check_and_grow_ref_info(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !219
  %4 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !128
  %6 = add i32 %5, 1
  %7 = icmp ult i32 %3, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = lshr i32 %5, 2
  %10 = add i32 %6, %9
  tail call fastcc void @df_grow_ref_info(ptr noundef nonnull %0, i32 noundef %10) #22
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_defs(i32 noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #22
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_get_artificial_uses(i32 noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc ptr @df_scan_get_bb_info(i32 noundef %0) #22
  %3 = getelementptr inbounds %struct.df_scan_bb_info, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_grow_ref_info(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.df_ref_info, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !219
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !127
  %8 = zext i32 %1 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = tail call ptr @xrealloc(ptr noundef %7, i64 noundef %9) #21
  store ptr %10, ptr %0, align 8, !tbaa !127
  %11 = load i32, ptr %3, align 8, !tbaa !219
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = sub i32 %1, %11
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 %16, i1 false)
  store i32 %1, ptr %3, align 8, !tbaa !219
  br label %17

17:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @df_reorganize_refs_by_insn_bb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #17 {
  %7 = icmp eq i8 %3, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !27
  %11 = tail call fastcc ptr @df_get_artificial_defs(i32 noundef %10) #22
  %12 = tail call fastcc i32 @df_add_refs_to_table(i32 noundef %1, ptr noundef %2, ptr noundef %11) #22
  br label %13

13:                                               ; preds = %8, %6
  %14 = phi i32 [ %12, %8 ], [ %1, %6 ]
  %15 = icmp eq i8 %4, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !27
  %19 = tail call fastcc ptr @df_get_artificial_uses(i32 noundef %18) #22
  %20 = tail call fastcc i32 @df_add_refs_to_table(i32 noundef %14, ptr noundef %2, ptr noundef %19) #22
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i32 [ %20, %16 ], [ %14, %13 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !86
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  %26 = icmp eq ptr %25, null
  br i1 %26, label %85, label %27

27:                                               ; preds = %21
  %28 = icmp eq i8 %5, 0
  br label %29

29:                                               ; preds = %27, %80
  %30 = phi ptr [ %25, %27 ], [ %83, %80 ]
  %31 = phi i32 [ %22, %27 ], [ %81, %80 ]
  %32 = load ptr, ptr %23, align 8, !tbaa !86
  %33 = getelementptr inbounds %struct.rtl_bb_info, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !112
  %35 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !86
  %37 = icmp eq ptr %30, %36
  br i1 %37, label %85, label %38

38:                                               ; preds = %29
  %39 = load i32, ptr %30, align 8
  %40 = and i32 %39, 65535
  %41 = add nsw i32 %40, -7
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %43, label %80

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !86
  br i1 %7, label %56, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @df, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.df, ptr %47, i64 0, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  %50 = zext i32 %45 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = getelementptr inbounds %struct.df_insn_info, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !44
  %55 = tail call fastcc i32 @df_add_refs_to_table(i32 noundef %31, ptr noundef %2, ptr noundef %54) #22
  br label %56

56:                                               ; preds = %46, %43
  %57 = phi i32 [ %55, %46 ], [ %31, %43 ]
  br i1 %15, label %68, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr @df, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.df, ptr %59, i64 0, i32 10
  %61 = load ptr, ptr %60, align 8, !tbaa !43
  %62 = zext i32 %45 to i64
  %63 = getelementptr inbounds ptr, ptr %61, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = getelementptr inbounds %struct.df_insn_info, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  %67 = tail call fastcc i32 @df_add_refs_to_table(i32 noundef %57, ptr noundef %2, ptr noundef %66) #22
  br label %68

68:                                               ; preds = %58, %56
  %69 = phi i32 [ %67, %58 ], [ %57, %56 ]
  br i1 %28, label %80, label %70

70:                                               ; preds = %68
  %71 = load ptr, ptr @df, align 8, !tbaa !5
  %72 = getelementptr inbounds %struct.df, ptr %71, i64 0, i32 10
  %73 = load ptr, ptr %72, align 8, !tbaa !43
  %74 = zext i32 %45 to i64
  %75 = getelementptr inbounds ptr, ptr %73, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !5
  %77 = getelementptr inbounds %struct.df_insn_info, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !47
  %79 = tail call fastcc i32 @df_add_refs_to_table(i32 noundef %69, ptr noundef %2, ptr noundef %78) #22
  br label %80

80:                                               ; preds = %38, %68, %70
  %81 = phi i32 [ %31, %38 ], [ %79, %70 ], [ %69, %68 ]
  %82 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %83 = load ptr, ptr %82, align 8, !tbaa !86
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %29, !llvm.loop !225

85:                                               ; preds = %29, %80, %21
  %86 = phi i32 [ %22, %21 ], [ %81, %80 ], [ %31, %29 ]
  ret i32 %86
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @df_add_refs_to_table(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #17 {
  %4 = load ptr, ptr %2, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @df, align 8, !tbaa !5
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
  br i1 %16, label %21, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !86
  %20 = icmp ugt i32 %19, 52
  br i1 %20, label %21, label %29

21:                                               ; preds = %17, %8
  %22 = load ptr, ptr %1, align 8, !tbaa !127
  %23 = zext i32 %11 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  store ptr %10, ptr %24, align 8, !tbaa !5
  %25 = add i32 %11, 1
  %26 = load ptr, ptr %12, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 7
  store i32 %11, ptr %27, align 4, !tbaa !86
  %28 = load ptr, ptr @df, align 8, !tbaa !5
  br label %29

29:                                               ; preds = %21, %17
  %30 = phi ptr [ %28, %21 ], [ %9, %17 ]
  %31 = phi i32 [ %25, %21 ], [ %11, %17 ]
  %32 = getelementptr inbounds ptr, ptr %12, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %8, !llvm.loop !226

35:                                               ; preds = %29, %3
  %36 = phi i32 [ %0, %3 ], [ %31, %29 ]
  ret i32 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_sort_and_compress_refs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !5
  %7 = tail call fastcc i32 @VEC_df_ref_base_length(ptr noundef %6) #22
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %66, label %9

9:                                                ; preds = %1
  %10 = icmp eq i32 %7, 2
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = add i32 %7, -1
  br label %20

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %14 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %6, i32 noundef 0) #22
  store ptr %14, ptr %2, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %15 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %6, i32 noundef 1) #22
  store ptr %15, ptr %3, align 8, !tbaa !5
  %16 = call i32 @df_ref_compare(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %19

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
  br i1 %22, label %66, label %23

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %24 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %6, i32 noundef %21) #22
  store ptr %24, ptr %4, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %25 = add i32 %21, 1
  %26 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %6, i32 noundef %25) #22
  store ptr %26, ptr %5, align 8, !tbaa !5
  %27 = call i32 @df_ref_compare(ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %28 = icmp sgt i32 %27, -1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br i1 %28, label %29, label %20

29:                                               ; preds = %23
  %30 = icmp eq i32 %21, %12
  br i1 %30, label %66, label %31

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
  br i1 %40, label %41, label %60

41:                                               ; preds = %35, %49
  %42 = phi i32 [ %53, %49 ], [ %39, %35 ]
  %43 = phi i32 [ %52, %49 ], [ %36, %35 ]
  %44 = load ptr, ptr %0, align 8, !tbaa !5
  %45 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %44, i32 noundef %37) #22
  %46 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %44, i32 noundef %42) #22
  %47 = tail call fastcc zeroext i8 @df_ref_equal_p(ptr noundef %45, ptr noundef %46) #22, !range !134
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %0, align 8, !tbaa !5
  %51 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %50, i32 noundef %42) #22
  tail call fastcc void @df_free_ref(ptr noundef %51) #22
  %52 = add i32 %43, 1
  %53 = add i32 %38, %52
  %54 = icmp ult i32 %53, %7
  br i1 %54, label %41, label %60, !llvm.loop !227

55:                                               ; preds = %41
  %56 = icmp eq i32 %43, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %55
  %58 = load ptr, ptr %0, align 8, !tbaa !5
  %59 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %58, i32 noundef %42) #22
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %58, i32 noundef %38, ptr noundef %59) #22
  br label %60

60:                                               ; preds = %49, %35, %55, %57
  %61 = phi i32 [ 0, %55 ], [ %43, %57 ], [ %36, %35 ], [ %52, %49 ]
  %62 = sub i32 %7, %61
  %63 = icmp ult i32 %38, %62
  br i1 %63, label %35, label %64, !llvm.loop !228

64:                                               ; preds = %60
  %65 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_df_ref_base_truncate(ptr noundef %65, i32 noundef %62) #22
  br label %66

66:                                               ; preds = %20, %29, %1, %64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_sort_and_compress_mws(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @df, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.df, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.dataflow, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = load ptr, ptr %0, align 8, !tbaa !5
  %10 = tail call fastcc i32 @VEC_df_mw_hardreg_ptr_base_length(ptr noundef %9) #22
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %55, label %12

12:                                               ; preds = %1
  %13 = icmp eq i32 %10, 2
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %15 = tail call fastcc ptr @VEC_df_mw_hardreg_ptr_base_index(ptr noundef %9, i32 noundef 0) #22
  store ptr %15, ptr %2, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %16 = tail call fastcc ptr @VEC_df_mw_hardreg_ptr_base_index(ptr noundef %9, i32 noundef 1) #22
  store ptr %16, ptr %3, align 8, !tbaa !5
  %17 = call i32 @df_mw_compare(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_replace(ptr noundef %9, i32 noundef 0, ptr noundef %16) #22
  %20 = load ptr, ptr %0, align 8, !tbaa !5
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
  %36 = load ptr, ptr %0, align 8, !tbaa !5
  %37 = tail call fastcc ptr @VEC_df_mw_hardreg_ptr_base_index(ptr noundef %36, i32 noundef %29) #22
  %38 = tail call fastcc ptr @VEC_df_mw_hardreg_ptr_base_index(ptr noundef %36, i32 noundef %34) #22
  %39 = tail call fastcc zeroext i8 @df_mw_equal_p(ptr noundef %37, ptr noundef %38) #22, !range !134
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load ptr, ptr %26, align 8, !tbaa !24
  tail call void @pool_free(ptr noundef %42, ptr noundef %38) #21
  %43 = add i32 %35, 1
  %44 = add i32 %30, %43
  %45 = icmp ult i32 %44, %10
  br i1 %45, label %33, label %49, !llvm.loop !229

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
  br i1 %52, label %27, label %53, !llvm.loop !230

53:                                               ; preds = %49
  %54 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_truncate(ptr noundef %54, i32 noundef %51) #22
  br label %55

55:                                               ; preds = %1, %53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_df_ref_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !200
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_df_ref_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @df_swap_refs(ptr nocapture noundef readonly %0) unnamed_addr #18 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %2, i32 noundef 0) #22
  %4 = tail call fastcc ptr @VEC_df_ref_base_index(ptr noundef %2, i32 noundef 1) #22
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %2, i32 noundef 0, ptr noundef %4) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_df_ref_base_replace(ptr noundef %5, i32 noundef 1, ptr noundef %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_df_ref_base_address(ptr noundef readnone %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @df_ref_equal_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %92, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %92, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 255
  %9 = load i32, ptr %1, align 8
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %92

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !86
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !86
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %92

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  %21 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %24, label %92

24:                                               ; preds = %18
  %25 = xor i32 %9, %7
  %26 = and i32 %25, -1342177536
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %92

28:                                               ; preds = %24
  %29 = icmp eq i32 %8, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  %32 = getelementptr inbounds %struct.df_artificial_ref, ptr %1, i64 0, i32 1
  br label %42

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !86
  %36 = load ptr, ptr %35, align 8, !tbaa !120
  %37 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 1
  %38 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !86
  %40 = load ptr, ptr %39, align 8, !tbaa !120
  %41 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 1
  br label %42

42:                                               ; preds = %33, %30
  %43 = phi ptr [ %31, %30 ], [ %37, %33 ]
  %44 = phi ptr [ %32, %30 ], [ %41, %33 ]
  %45 = load ptr, ptr %43, align 8, !tbaa !86
  %46 = load ptr, ptr %44, align 8, !tbaa !86
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %92

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !86
  %51 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !86
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %54, label %92

54:                                               ; preds = %48
  %55 = trunc i32 %7 to i8
  switch i8 %55, label %91 [
    i8 1, label %92
    i8 0, label %92
    i8 3, label %56
    i8 2, label %74
  ]

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.df_extract_ref, ptr %0, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !86
  %59 = getelementptr inbounds %struct.df_extract_ref, ptr %1, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !86
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.df_extract_ref, ptr %0, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !86
  %65 = getelementptr inbounds %struct.df_extract_ref, ptr %1, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !86
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.df_extract_ref, ptr %0, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !86
  %71 = getelementptr inbounds %struct.df_extract_ref, ptr %1, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !86
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %68, %54
  %75 = and i32 %7, 254
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.df_regular_ref, ptr %0, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !86
  br label %80

80:                                               ; preds = %74, %77
  %81 = phi ptr [ %79, %77 ], [ null, %74 ]
  %82 = and i32 %9, 254
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.df_regular_ref, ptr %1, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !86
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
define internal fastcc void @VEC_df_ref_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #10 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_df_ref_base_truncate(ptr noundef writeonly %0, i32 noundef %1) unnamed_addr #19 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  store i32 %1, ptr %0, align 8, !tbaa !200
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_df_mw_hardreg_ptr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #10 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @df_mw_equal_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %29, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !182
  %8 = load ptr, ptr %1, align 8, !tbaa !182
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
  %18 = load i32, ptr %17, align 4, !tbaa !179
  %19 = getelementptr inbounds %struct.df_mw_hardreg, ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !179
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.df_mw_hardreg, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !181
  %25 = getelementptr inbounds %struct.df_mw_hardreg, ptr %1, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !181
  %27 = icmp eq i32 %24, %26
  %28 = zext i1 %27 to i8
  br label %29

29:                                               ; preds = %4, %22, %16, %10, %6, %2
  %30 = phi i8 [ 0, %2 ], [ 1, %4 ], [ 0, %16 ], [ 0, %10 ], [ 0, %6 ], [ %28, %22 ]
  ret i8 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_base_truncate(ptr noundef writeonly %0, i32 noundef %1) unnamed_addr #19 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  store i32 %1, ptr %0, align 8, !tbaa !177
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_install_refs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = tail call fastcc i32 @VEC_df_ref_base_length(ptr noundef %1) #22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %51, label %9

9:                                                ; preds = %5
  %10 = add i32 %7, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = tail call ptr @xmalloc(i64 noundef %12) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  %14 = getelementptr inbounds %struct.df_ref_info, ptr %3, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !116
  switch i32 %15, label %31 [
    i32 2, label %16
    i32 4, label %16
    i32 6, label %16
    i32 1, label %17
    i32 3, label %17
    i32 5, label %17
  ]

16:                                               ; preds = %9, %9, %9
  store i32 2, ptr %14, align 4, !tbaa !116
  br label %19

17:                                               ; preds = %9, %9, %9
  store i32 1, ptr %14, align 4, !tbaa !116
  %18 = icmp eq i8 %4, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16, %17
  %20 = load ptr, ptr @df, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 28
  %22 = load i8, ptr %21, align 1, !tbaa !117
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.df, ptr %20, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !118
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !27
  %29 = tail call i32 @bitmap_bit_p(ptr noundef %26, i32 noundef %28) #21
  %30 = trunc i32 %29 to i8
  br label %31

31:                                               ; preds = %9, %24, %19, %17
  %32 = phi i8 [ %30, %24 ], [ 1, %19 ], [ 0, %17 ], [ 0, %9 ]
  %33 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %6) #22, !range !135
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %31, %35
  %36 = phi i32 [ %45, %35 ], [ 0, %31 ]
  %37 = load ptr, ptr %6, align 8, !tbaa !5
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds ptr, ptr %13, i64 %38
  store ptr %37, ptr %39, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.df_base_ref, ptr %37, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !86
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %2, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  tail call fastcc void @df_install_ref(ptr noundef %37, ptr noundef %44, ptr noundef %3, i8 noundef zeroext %32) #22
  %45 = add i32 %36, 1
  %46 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %1, i32 noundef %45, ptr noundef nonnull %6) #22, !range !135
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %35, !llvm.loop !231

48:                                               ; preds = %35, %31
  %49 = zext i32 %7 to i64
  %50 = getelementptr inbounds ptr, ptr %13, i64 %49
  store ptr null, ptr %50, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  br label %51

51:                                               ; preds = %5, %48
  %52 = phi ptr [ %13, %48 ], [ @df_null_ref_rec, %5 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @df_install_mws(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @VEC_df_mw_hardreg_ptr_base_length(ptr noundef %0) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

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
  store ptr null, ptr %12, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %1, %4
  %14 = phi ptr [ %8, %4 ], [ @df_null_mw_rec, %1 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !86
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_stack_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_df_ref_stack_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_df_ref_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_ref_stack_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_df_ref_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_stack_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_df_ref_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = load i32, ptr %0, align 8, !tbaa !200
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !200
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_df_ref_base_space(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_df_ref_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !232
  %6 = load i32, ptr %0, align 8, !tbaa !200
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
define internal fastcc void @df_ref_record(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #0 {
  %12 = load i32, ptr %2, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %14 [
    i16 37, label %16
    i16 39, label %16
  ]

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2918, ptr noundef nonnull @.str.9) #21
  %15 = load i32, ptr %2, align 8
  br label %16

16:                                               ; preds = %11, %11, %14
  %17 = phi i32 [ %12, %11 ], [ %12, %11 ], [ %15, %14 ]
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 39
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  br label %23

23:                                               ; preds = %16, %20
  %24 = phi ptr [ %22, %20 ], [ %2, %16 ]
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef %24) #22
  %26 = icmp ult i32 %25, 53
  br i1 %26, label %27, label %104

27:                                               ; preds = %23
  %28 = load ptr, ptr @df, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.df, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = getelementptr inbounds %struct.dataflow, ptr %30, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !9
  br i1 %19, label %33, label %47

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !86
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %40 = load i32, ptr %39, align 8, !tbaa !86
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
  %56 = icmp ne i32 %54, %55
  %57 = icmp ne ptr %5, null
  %58 = and i1 %57, %56
  br i1 %58, label %59, label %82

59:                                               ; preds = %52
  %60 = load i32, ptr %2, align 8
  %61 = and i32 %60, 65535
  %62 = icmp eq i32 %61, 39
  %63 = or i32 %7, 16
  %64 = select i1 %62, i32 %63, i32 %7
  %65 = or i32 %64, 4096
  %66 = getelementptr inbounds %struct.df_scan_problem_data, ptr %32, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !24
  %68 = tail call ptr @pool_alloc(ptr noundef %67) #21
  %69 = getelementptr inbounds %struct.df_mw_hardreg, ptr %68, i64 0, i32 1
  %70 = and i32 %6, 65535
  %71 = shl i32 %65, 16
  %72 = or disjoint i32 %71, %70
  store i32 %72, ptr %69, align 8
  store ptr %2, ptr %68, align 8, !tbaa !182
  %73 = getelementptr inbounds %struct.df_mw_hardreg, ptr %68, i64 0, i32 2
  store i32 %53, ptr %73, align 4, !tbaa !179
  %74 = add i32 %54, -1
  %75 = getelementptr inbounds %struct.df_mw_hardreg, ptr %68, i64 0, i32 3
  store i32 %74, ptr %75, align 8, !tbaa !181
  %76 = load ptr, ptr @df, align 8, !tbaa !5
  %77 = getelementptr inbounds %struct.df, ptr %76, i64 0, i32 26
  %78 = load i32, ptr %77, align 8, !tbaa !121
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 8, !tbaa !121
  %80 = getelementptr inbounds %struct.df_mw_hardreg, ptr %68, i64 0, i32 4
  store i32 %78, ptr %80, align 4, !tbaa !183
  %81 = getelementptr inbounds %struct.df_collection_rec, ptr %1, i64 0, i32 3
  tail call fastcc void @VEC_df_mw_hardreg_ptr_stack_safe_push(ptr noundef nonnull %81, ptr noundef nonnull %68) #22
  br label %82

82:                                               ; preds = %59, %52
  %83 = phi i32 [ %65, %59 ], [ %7, %52 ]
  %84 = icmp ult i32 %53, %54
  br i1 %84, label %85, label %106

85:                                               ; preds = %82
  %86 = zext i32 %53 to i64
  br label %87

87:                                               ; preds = %85, %100
  %88 = phi i64 [ %86, %85 ], [ %101, %100 ]
  %89 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %90 = getelementptr inbounds ptr, ptr %89, i64 %88
  %91 = load ptr, ptr %90, align 8, !tbaa !5
  %92 = tail call fastcc ptr @df_ref_create_structure(i32 noundef %0, ptr noundef %1, ptr noundef %91, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %83, i32 noundef %8, i32 noundef %9, i32 noundef %10) #22
  %93 = getelementptr inbounds %struct.df_base_ref, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !86
  %95 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1, i32 0, i32 0, i64 1
  %96 = load i32, ptr %95, align 8, !tbaa !86
  %97 = zext i32 %96 to i64
  %98 = icmp eq i64 %88, %97
  br i1 %98, label %100, label %99

99:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2967, ptr noundef nonnull @.str.9) #21
  br label %100

100:                                              ; preds = %87, %99
  %101 = add nuw nsw i64 %88, 1
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %54, %102
  br i1 %103, label %106, label %87, !llvm.loop !233

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
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #14 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !86
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_stack_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_df_mw_hardreg_ptr_stack_reserve(ptr noundef %0) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  tail call fastcc void @VEC_df_mw_hardreg_ptr_base_quick_push(ptr noundef %3, ptr noundef %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_stack_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = tail call fastcc i32 @VEC_df_mw_hardreg_ptr_base_space(ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_stack_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_df_mw_hardreg_ptr_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = load i32, ptr %0, align 8, !tbaa !177
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !177
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_df_mw_hardreg_ptr_base_space(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_df_mw_hardreg_ptr_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !234
  %6 = load i32, ptr %0, align 8, !tbaa !177
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_defs_record(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
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
  ]

11:                                               ; preds = %6, %6
  %12 = and i32 %9, 65535
  %13 = icmp eq i32 %12, 25
  %14 = select i1 %13, i32 128, i32 0
  %15 = or i32 %14, %8
  tail call fastcc void @df_def_record_1(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3, i32 noundef %15) #22
  br label %33

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  br label %6

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !86
  %22 = load i32, ptr %21, align 8, !tbaa !172
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = zext nneg i32 %22 to i64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ %25, %24 ], [ %28, %26 ]
  %28 = add nsw i64 %27, -1
  %29 = load ptr, ptr %20, align 8, !tbaa !86
  %30 = getelementptr inbounds %struct.rtvec_def, ptr %29, i64 0, i32 1, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  tail call fastcc void @df_defs_record(ptr noundef %0, ptr noundef %31, ptr noundef %2, ptr noundef %3, i32 noundef %8) #22
  %32 = icmp ugt i64 %27, 1
  br i1 %32, label %26, label %33, !llvm.loop !235

33:                                               ; preds = %6, %26, %19, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_get_call_refs(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @df_bitmap_obstack) #21
  %9 = load ptr, ptr %0, align 8, !tbaa !104
  %10 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %7) #22, !range !135
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %4, %12
  %13 = phi i32 [ %18, %12 ], [ 0, %4 ]
  %14 = load ptr, ptr %7, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.df_base_ref, ptr %14, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !86
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %8, i32 noundef %16) #21
  %18 = add i32 %13, 1
  %19 = load ptr, ptr %0, align 8, !tbaa !104
  %20 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %19, i32 noundef %18, ptr noundef nonnull %7) #22, !range !135
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %12, !llvm.loop !236

22:                                               ; preds = %12, %4
  %23 = load ptr, ptr %2, align 8, !tbaa !120
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1, i32 1, i32 0, i32 0, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  %26 = icmp eq ptr %25, null
  br i1 %26, label %52, label %27

27:                                               ; preds = %22, %48
  %28 = phi ptr [ %50, %48 ], [ %25, %22 ]
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !86
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
  %37 = load ptr, ptr %36, align 8, !tbaa !86
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
  %46 = load ptr, ptr %29, align 8, !tbaa !86
  tail call fastcc void @df_defs_record(ptr noundef nonnull %0, ptr noundef %46, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3) #22
  br label %48

47:                                               ; preds = %35
  tail call fastcc void @df_uses_record(i32 noundef 2, ptr noundef nonnull %0, ptr noundef nonnull %29, i32 noundef 1, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %48

48:                                               ; preds = %41, %45, %27, %33, %47
  %49 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !86
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %27, !llvm.loop !237

52:                                               ; preds = %48, %22
  %53 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %54 = getelementptr inbounds ptr, ptr %53, i64 7
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = or i32 %3, 8192
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %55, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %56, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %57

57:                                               ; preds = %52, %69
  %58 = phi i64 [ 0, %52 ], [ %70, %69 ]
  %59 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !86
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %64 = getelementptr inbounds ptr, ptr %63, i64 %58
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %65, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %3, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  %66 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %67 = getelementptr inbounds ptr, ptr %66, i64 %58
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %68, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %3, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %69

69:                                               ; preds = %57, %62
  %70 = add nuw nsw i64 %58, 1
  %71 = icmp eq i64 %70, 53
  br i1 %71, label %72, label %57, !llvm.loop !238

72:                                               ; preds = %69
  %73 = load ptr, ptr %2, align 8, !tbaa !120
  %74 = load i32, ptr %73, align 8
  %75 = load ptr, ptr @regs_invalidated_by_call_regset, align 8, !tbaa !5
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %75, ptr noundef nonnull %6) #22
  %76 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !134
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %110, label %78

78:                                               ; preds = %72
  %79 = and i32 %74, 16777216
  %80 = icmp eq i32 %79, 0
  %81 = or i32 %3, 64
  br label %82

82:                                               ; preds = %78, %107
  %83 = load i32, ptr %6, align 4, !tbaa !67
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [53 x i8], ptr @global_regs, i64 0, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !86
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %82
  %89 = tail call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %83) #21
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  br i1 %80, label %103, label %92

92:                                               ; preds = %91
  %93 = load ptr, ptr @df, align 8, !tbaa !5
  %94 = getelementptr inbounds %struct.df, ptr %93, i64 0, i32 17
  %95 = load ptr, ptr %94, align 8, !tbaa !37
  %96 = tail call i32 @bitmap_bit_p(ptr noundef %95, i32 noundef %83) #21
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %92
  %99 = add i32 %83, 1
  %100 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 7), align 8, !tbaa !239
  %101 = tail call i32 @refers_to_regno_p(i32 noundef %83, i32 noundef %99, ptr noundef %100, ptr noundef null) #21
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98, %92, %91
  %104 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %105 = getelementptr inbounds ptr, ptr %104, i64 %84
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %106, ptr noundef null, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %81, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %107

107:                                              ; preds = %82, %88, %98, %103
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %108 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #22, !range !134
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %82, !llvm.loop !240

110:                                              ; preds = %107, %72
  tail call void @bitmap_obstack_free(ptr noundef %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_get_conditional_uses(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %3 = load ptr, ptr %0, align 8, !tbaa !104
  %4 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #22, !range !135
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %64, label %6

6:                                                ; preds = %1, %59
  %7 = phi ptr [ %60, %59 ], [ %3, %1 ]
  %8 = phi i32 [ %61, %59 ], [ 0, %1 ]
  %9 = load ptr, ptr %2, align 8, !tbaa !5
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
  %18 = load i32, ptr %17, align 8, !tbaa !86
  %19 = getelementptr inbounds %struct.df_extract_ref, ptr %9, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !86
  %21 = getelementptr inbounds %struct.df_extract_ref, ptr %9, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !86
  br label %23

23:                                               ; preds = %16, %13
  %24 = phi i32 [ %18, %16 ], [ -1, %13 ]
  %25 = phi i32 [ %20, %16 ], [ -1, %13 ]
  %26 = phi i32 [ %22, %16 ], [ 0, %13 ]
  %27 = and i32 %10, 255
  %28 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !86
  %30 = and i32 %10, 254
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.df_regular_ref, ptr %9, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  br label %41

35:                                               ; preds = %23
  %36 = icmp eq i32 %27, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.df_artificial_ref, ptr %9, i64 0, i32 1
  %39 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !86
  br label %47

41:                                               ; preds = %32, %35
  %42 = phi ptr [ %34, %32 ], [ null, %35 ]
  %43 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !86
  %45 = load ptr, ptr %44, align 8, !tbaa !120
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1, i32 0, i32 1
  br label %47

47:                                               ; preds = %41, %37
  %48 = phi ptr [ %40, %37 ], [ %44, %41 ]
  %49 = phi ptr [ null, %37 ], [ %42, %41 ]
  %50 = phi ptr [ %38, %37 ], [ %46, %41 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !86
  %52 = ashr i32 %10, 16
  %53 = and i32 %52, -2
  %54 = tail call fastcc ptr @df_ref_create_structure(i32 noundef %27, ptr noundef nonnull %0, ptr noundef %29, ptr noundef %49, ptr noundef %51, ptr noundef %48, i32 noundef 1, i32 noundef %53, i32 noundef %24, i32 noundef %25, i32 noundef %26) #22
  %55 = getelementptr inbounds %struct.df_base_ref, ptr %9, i64 0, i32 6
  %56 = load i32, ptr %55, align 8, !tbaa !86
  %57 = getelementptr inbounds %struct.df_base_ref, ptr %54, i64 0, i32 6
  store i32 %56, ptr %57, align 8, !tbaa !86
  %58 = load ptr, ptr %0, align 8, !tbaa !104
  br label %59

59:                                               ; preds = %6, %47
  %60 = phi ptr [ %7, %6 ], [ %58, %47 ]
  %61 = add i32 %8, 1
  %62 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %60, i32 noundef %61, ptr noundef nonnull %2) #22, !range !135
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %6, !llvm.loop !241

64:                                               ; preds = %59, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_def_record_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %37 [
    i16 15, label %10
    i16 40, label %32
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = load i32, ptr %12, align 8, !tbaa !172
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %100

15:                                               ; preds = %10
  %16 = or i32 %4, 128
  %17 = zext nneg i32 %13 to i64
  br label %18

18:                                               ; preds = %15, %30
  %19 = phi i64 [ %17, %15 ], [ %20, %30 ]
  %20 = add nsw i64 %19, -1
  %21 = load ptr, ptr %11, align 8, !tbaa !86
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %21, i64 0, i32 1, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !5
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
  br i1 %31, label %18, label %100, !llvm.loop !242

32:                                               ; preds = %5
  %33 = or i32 %4, 1072
  %34 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = load i32, ptr %35, align 8
  br label %37

37:                                               ; preds = %5, %32
  %38 = phi i32 [ %36, %32 ], [ %8, %5 ]
  %39 = phi ptr [ %34, %32 ], [ %6, %5 ]
  %40 = phi ptr [ %35, %32 ], [ %7, %5 ]
  %41 = phi i32 [ %33, %32 ], [ %4, %5 ]
  %42 = and i32 %38, 65535
  %43 = icmp eq i32 %42, 120
  br i1 %43, label %44, label %74

44:                                               ; preds = %37
  %45 = or i32 %41, 560
  %46 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %47 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !86
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 30
  br i1 %51, label %52, label %67

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %54 = load ptr, ptr %53, align 8, !tbaa !86
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 30
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !86
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds %struct.rtx_def, ptr %54, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !86
  %64 = trunc i64 %63 to i32
  %65 = lshr i32 %38, 16
  %66 = and i32 %65, 255
  br label %67

67:                                               ; preds = %58, %52, %44
  %68 = phi i32 [ %64, %58 ], [ -1, %52 ], [ -1, %44 ]
  %69 = phi i32 [ %61, %58 ], [ -1, %52 ], [ -1, %44 ]
  %70 = phi i32 [ %66, %58 ], [ 0, %52 ], [ 0, %44 ]
  %71 = phi i32 [ 3, %58 ], [ 2, %52 ], [ 2, %44 ]
  %72 = load ptr, ptr %46, align 8, !tbaa !5
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
  ]

84:                                               ; preds = %74
  tail call fastcc void @df_ref_record(i32 noundef %81, ptr noundef %0, ptr noundef nonnull %77, ptr noundef nonnull %76, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef %82, i32 noundef %79, i32 noundef %78, i32 noundef %80) #22
  %85 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %77) #22
  %86 = icmp eq i32 %85, 7
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  tail call fastcc void @df_ref_record(i32 noundef 0, ptr noundef %0, ptr noundef nonnull %77, ptr noundef null, ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef %82, i32 noundef %79, i32 noundef %78, i32 noundef %80) #22
  br label %100

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !86
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 37
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = tail call zeroext i8 @df_read_modify_subreg_p(ptr noundef nonnull %77) #22, !range !134
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
define internal fastcc void @df_entry_block_defs_collect(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #22
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !134
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2, %7
  %8 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %9 = load i32, ptr %3, align 4, !tbaa !67
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = load ptr, ptr @cfun, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef %0, ptr noundef %12, ptr noundef null, ptr noundef %16, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #22
  %17 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !134
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %7, !llvm.loop !243

19:                                               ; preds = %7, %2
  tail call fastcc void @df_canonize_collection_rec(ptr noundef %0) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @df_exit_block_uses_collect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #22
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !134
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2, %7
  %8 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %9 = load i32, ptr %3, align 4, !tbaa !67
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = load ptr, ptr @cfun, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef %0, ptr noundef %12, ptr noundef null, ptr noundef %17, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #22
  %18 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #22, !range !134
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %7, !llvm.loop !244

20:                                               ; preds = %7, %2
  %21 = load i32, ptr @reload_completed, align 4, !tbaa !67
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef 16) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load ptr, ptr @cfun, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !75
  %32 = tail call fastcc zeroext i8 @bb_has_eh_pred(ptr noundef %31) #22, !range !134
  %33 = icmp ne i8 %32, 0
  %34 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16
  %35 = icmp ne i8 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !5
  %39 = getelementptr inbounds ptr, ptr %38, i64 16
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = load ptr, ptr @cfun, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !25
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !75
  tail call fastcc void @df_ref_record(i32 noundef 1, ptr noundef %0, ptr noundef %40, ptr noundef null, ptr noundef %45, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef 0) #22
  br label %46

46:                                               ; preds = %37, %26, %23, %20
  tail call fastcc void @df_canonize_collection_rec(ptr noundef %0) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bb_has_eh_pred(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %4 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #22
  store i32 0, ptr %3, align 8, !tbaa.struct !245
  %5 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %4, ptr %5, align 8, !tbaa.struct !246
  %6 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %4, ptr noundef nonnull %2) #22, !range !134
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1, %14
  %9 = load ptr, ptr %2, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !247
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  call fastcc void @ei_next(ptr noundef nonnull %3) #22
  %15 = load i32, ptr %3, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %2) #22, !range !134
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !249

19:                                               ; preds = %8, %14, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %14 ], [ 1, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #22, !range !134
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #22
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !5
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #22
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #22
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.45, i32 noundef 738, ptr noundef nonnull @.str.9) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !250
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !250
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #22
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #22
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !252
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.45, i32 noundef 687, ptr noundef nonnull @.str.9) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @ix86_function_arg_regno_p(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @df_mark_reg(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #22
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 16711680
  %6 = icmp eq i32 %5, 65536
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3877, ptr noundef nonnull @.str.9) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = icmp slt i32 %3, 53
  br i1 %9, label %10, label %19

10:                                               ; preds = %8
  %11 = sext i32 %3 to i64
  %12 = load i32, ptr %0, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %11, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !86
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
define internal fastcc zeroext i8 @df_refs_verify(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %5 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #22, !range !135
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  br label %9

9:                                                ; preds = %7, %33
  %10 = phi i32 [ 0, %7 ], [ %35, %33 ]
  %11 = phi ptr [ %1, %7 ], [ %34, %33 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8, !tbaa !5
  %16 = tail call fastcc zeroext i8 @df_ref_equal_p(ptr noundef %15, ptr noundef nonnull %12) #22, !range !134
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %9
  br i1 %8, label %47, label %19

19:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4431, ptr noundef nonnull @.str.9) #21
  br label %21

20:                                               ; preds = %14
  br i1 %8, label %33, label %21

21:                                               ; preds = %19, %20
  %22 = load ptr, ptr %11, align 8, !tbaa !5
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 1073741824
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4440, ptr noundef nonnull @.str.9) #21
  %27 = load ptr, ptr %11, align 8, !tbaa !5
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
  %36 = call fastcc i32 @VEC_df_ref_base_iterate(ptr noundef %0, i32 noundef %35, ptr noundef nonnull %4) #22, !range !135
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %9, !llvm.loop !254

38:                                               ; preds = %33, %3
  %39 = phi ptr [ %1, %3 ], [ %34, %33 ]
  %40 = icmp eq i8 %2, 0
  %41 = load ptr, ptr %39, align 8, !tbaa !5
  %42 = icmp eq ptr %41, null
  br i1 %40, label %45, label %43

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
define internal fastcc zeroext i8 @df_mws_verify(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %5 = call fastcc i32 @VEC_df_mw_hardreg_ptr_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #22, !range !135
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  br label %9

9:                                                ; preds = %7, %20
  %10 = phi i32 [ 0, %7 ], [ %22, %20 ]
  %11 = phi ptr [ %1, %7 ], [ %21, %20 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8, !tbaa !5
  %16 = tail call fastcc zeroext i8 @df_mw_equal_p(ptr noundef %15, ptr noundef nonnull %12) #22, !range !134
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %9
  br i1 %8, label %34, label %19

19:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4470, ptr noundef nonnull @.str.9) #21
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds ptr, ptr %11, i64 1
  %22 = add i32 %10, 1
  %23 = call fastcc i32 @VEC_df_mw_hardreg_ptr_base_iterate(ptr noundef %0, i32 noundef %22, ptr noundef nonnull %4) #22, !range !135
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %9, !llvm.loop !255

25:                                               ; preds = %20, %3
  %26 = phi ptr [ %1, %3 ], [ %21, %20 ]
  %27 = icmp eq i8 %2, 0
  %28 = load ptr, ptr %26, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %27, label %32, label %30

30:                                               ; preds = %25
  br i1 %29, label %34, label %31

31:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 4478, ptr noundef nonnull @.str.9) #21
  br label %34

32:                                               ; preds = %25
  %33 = zext i1 %29 to i8
  br label %34

34:                                               ; preds = %18, %31, %30, %32
  %35 = phi i8 [ %33, %32 ], [ 0, %30 ], [ 0, %31 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret i8 %35
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
!9 = !{!10, !6, i64 40}
!10 = !{!"dataflow", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !11, i64 48, !7, i64 52, !7, i64 53, !7, i64 54}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !6, i64 24}
!13 = !{!10, !7, i64 52}
!14 = !{!15, !6, i64 0}
!15 = !{!"df_scan_problem_data", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !16, i64 56, !16, i64 160}
!16 = !{!"bitmap_obstack", !6, i64 0, !6, i64 8, !17, i64 16}
!17 = !{!"obstack", !18, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !18, i64 40, !11, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !11, i64 80, !11, i64 80, !11, i64 80}
!18 = !{!"long", !7, i64 0}
!19 = !{!15, !6, i64 8}
!20 = !{!15, !6, i64 16}
!21 = !{!15, !6, i64 24}
!22 = !{!15, !6, i64 32}
!23 = !{!15, !6, i64 40}
!24 = !{!15, !6, i64 48}
!25 = !{!26, !6, i64 8}
!26 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !6, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!27 = !{!28, !11, i64 80}
!28 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !18, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!32, !6, i64 264}
!32 = !{!"df", !7, i64 0, !7, i64 64, !6, i64 128, !33, i64 136, !33, i64 176, !6, i64 216, !6, i64 224, !6, i64 232, !11, i64 240, !11, i64 244, !6, i64 248, !11, i64 256, !11, i64 260, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !11, i64 344, !11, i64 348, !6, i64 352, !11, i64 360, !11, i64 364, !7, i64 365, !7, i64 366}
!33 = !{!"df_ref_info", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36}
!34 = !{!32, !6, i64 272}
!35 = !{!32, !6, i64 280}
!36 = !{!32, !6, i64 288}
!37 = !{!32, !6, i64 296}
!38 = !{!32, !6, i64 304}
!39 = !{!32, !6, i64 312}
!40 = !{!32, !6, i64 320}
!41 = !{!10, !7, i64 54}
!42 = !{!32, !11, i64 256}
!43 = !{!32, !6, i64 248}
!44 = !{!45, !6, i64 8}
!45 = !{!"df_insn_info", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !11, i64 40}
!46 = !{!45, !6, i64 16}
!47 = !{!45, !6, i64 24}
!48 = !{!45, !6, i64 32}
!49 = distinct !{!49, !30}
!50 = !{!51, !6, i64 0}
!51 = !{!"df_scan_bb_info", !6, i64 0, !6, i64 8}
!52 = !{!51, !6, i64 8}
!53 = distinct !{!53, !30}
!54 = !{!32, !6, i64 136}
!55 = !{!32, !6, i64 144}
!56 = !{!32, !6, i64 152}
!57 = !{!32, !6, i64 176}
!58 = !{!32, !6, i64 184}
!59 = !{!32, !6, i64 192}
!60 = !{!32, !6, i64 216}
!61 = !{!32, !6, i64 224}
!62 = !{!32, !6, i64 232}
!63 = !{!10, !6, i64 8}
!64 = !{!10, !11, i64 16}
!65 = !{!32, !11, i64 240}
!66 = !{!32, !11, i64 244}
!67 = !{!11, !11, i64 0}
!68 = distinct !{!68, !30}
!69 = !{!32, !11, i64 172}
!70 = !{!32, !11, i64 212}
!71 = !{!72, !6, i64 16}
!72 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !6, i64 40, !11, i64 48, !7, i64 52, !7, i64 60, !11, i64 68, !11, i64 72}
!73 = !{!72, !6, i64 0}
!74 = !{!28, !6, i64 56}
!75 = !{!72, !6, i64 8}
!76 = distinct !{!76, !30}
!77 = !{!78, !7, i64 477}
!78 = !{!"rtl_data", !79, i64 0, !80, i64 40, !81, i64 96, !82, i64 112, !84, i64 208, !85, i64 248, !11, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !18, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !11, i64 432, !11, i64 436, !11, i64 440, !11, i64 444, !11, i64 448, !11, i64 452, !6, i64 456, !7, i64 464, !7, i64 465, !7, i64 466, !7, i64 467, !7, i64 468, !7, i64 469, !7, i64 470, !7, i64 471, !7, i64 472, !7, i64 473, !7, i64 474, !7, i64 475, !7, i64 476, !7, i64 477, !7, i64 478, !7, i64 479, !7, i64 480, !7, i64 481, !7, i64 482, !7, i64 483, !7, i64 484, !7, i64 485}
!79 = !{!"expr_status", !11, i64 0, !11, i64 4, !11, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!80 = !{!"emit_status", !11, i64 0, !11, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !6, i64 48}
!81 = !{!"varasm_status", !6, i64 0, !11, i64 8}
!82 = !{!"incoming_args", !11, i64 0, !11, i64 4, !11, i64 8, !6, i64 16, !83, i64 24, !6, i64 88}
!83 = !{!"ix86_args", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60}
!84 = !{!"function_subsections", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!85 = !{!"rtl_eh", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !7, i64 48}
!86 = !{!7, !7, i64 0}
!87 = distinct !{!87, !30}
!88 = distinct !{!88, !30}
!89 = !{!90, !6, i64 1488}
!90 = !{!"gcc_target", !91, i64 0, !93, i64 368, !94, i64 664, !11, i64 744, !6, i64 752, !6, i64 760, !6, i64 768, !6, i64 776, !6, i64 784, !6, i64 792, !6, i64 800, !6, i64 808, !6, i64 816, !6, i64 824, !6, i64 832, !6, i64 840, !6, i64 848, !6, i64 856, !6, i64 864, !6, i64 872, !6, i64 880, !6, i64 888, !6, i64 896, !6, i64 904, !6, i64 912, !6, i64 920, !6, i64 928, !6, i64 936, !6, i64 944, !6, i64 952, !6, i64 960, !6, i64 968, !6, i64 976, !6, i64 984, !6, i64 992, !6, i64 1000, !6, i64 1008, !6, i64 1016, !6, i64 1024, !6, i64 1032, !6, i64 1040, !6, i64 1048, !6, i64 1056, !18, i64 1064, !18, i64 1072, !6, i64 1080, !6, i64 1088, !6, i64 1096, !6, i64 1104, !6, i64 1112, !6, i64 1120, !6, i64 1128, !6, i64 1136, !6, i64 1144, !6, i64 1152, !6, i64 1160, !6, i64 1168, !95, i64 1176, !6, i64 1232, !6, i64 1240, !6, i64 1248, !6, i64 1256, !6, i64 1264, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !6, i64 1304, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !6, i64 1344, !6, i64 1352, !6, i64 1360, !6, i64 1368, !6, i64 1376, !6, i64 1384, !6, i64 1392, !6, i64 1400, !6, i64 1408, !6, i64 1416, !6, i64 1424, !6, i64 1432, !6, i64 1440, !6, i64 1448, !6, i64 1456, !18, i64 1464, !96, i64 1472, !6, i64 1664, !6, i64 1672, !6, i64 1680, !6, i64 1688, !6, i64 1696, !6, i64 1704, !6, i64 1712, !6, i64 1720, !6, i64 1728, !6, i64 1736, !6, i64 1744, !6, i64 1752, !6, i64 1760, !6, i64 1768, !6, i64 1776, !97, i64 1784, !98, i64 1792, !99, i64 1896, !100, i64 1968, !6, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!91 = !{!"asm_out", !6, i64 0, !6, i64 8, !6, i64 16, !92, i64 24, !92, i64 56, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360}
!92 = !{!"asm_int_op", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!93 = !{!"sched", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288}
!94 = !{!"vectorize", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!95 = !{!"addr_space", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!96 = !{!"calls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184}
!97 = !{!"c", !6, i64 0}
!98 = !{!"cxx", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96}
!99 = !{!"emutls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !7, i64 64, !7, i64 65}
!100 = !{!"target_option_hooks", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!101 = !{!90, !6, i64 1640}
!102 = !{!90, !6, i64 2016}
!103 = !{i64 264, i64 1033}
!104 = !{!105, !6, i64 0}
!105 = !{!"df_collection_rec", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!106 = distinct !{!106, !30}
!107 = !{!18, !18, i64 0}
!108 = distinct !{!108, !30}
!109 = !{!105, !6, i64 8}
!110 = !{!105, !6, i64 16}
!111 = !{!105, !6, i64 24}
!112 = !{!113, !6, i64 8}
!113 = !{!"rtl_bb_info", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32}
!114 = !{!45, !11, i64 40}
!115 = distinct !{!115, !30}
!116 = !{!33, !11, i64 36}
!117 = !{!32, !7, i64 365}
!118 = !{!32, !6, i64 128}
!119 = distinct !{!119, !30}
!120 = !{!45, !6, i64 0}
!121 = !{!32, !11, i64 360}
!122 = !{!123, !6, i64 0}
!123 = !{!"df_reg_info", !6, i64 0, !11, i64 8}
!124 = !{!123, !11, i64 8}
!125 = !{!32, !6, i64 352}
!126 = !{!33, !11, i64 28}
!127 = !{!33, !6, i64 0}
!128 = !{!33, !11, i64 32}
!129 = distinct !{!129, !30}
!130 = distinct !{!130, !30}
!131 = distinct !{!131, !30}
!132 = distinct !{!132, !30}
!133 = distinct !{!133, !30}
!134 = !{i8 0, i8 2}
!135 = !{i32 0, i32 2}
!136 = distinct !{!136, !30}
!137 = distinct !{!137, !30}
!138 = distinct !{!138, !30}
!139 = distinct !{!139, !30}
!140 = distinct !{!140, !30}
!141 = distinct !{!141, !30}
!142 = distinct !{!142, !30}
!143 = distinct !{!143, !30}
!144 = !{!145, !6, i64 0}
!145 = !{!"bitmap_head_def", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24}
!146 = !{!147, !6, i64 0}
!147 = !{!"", !6, i64 0, !6, i64 8, !11, i64 16, !18, i64 24}
!148 = !{!147, !6, i64 8}
!149 = !{!150, !11, i64 16}
!150 = !{!"bitmap_element_def", !6, i64 0, !6, i64 8, !11, i64 16, !7, i64 24}
!151 = !{!147, !11, i64 16}
!152 = !{!147, !18, i64 24}
!153 = distinct !{!153, !30}
!154 = distinct !{!154, !30}
!155 = !{!150, !6, i64 0}
!156 = distinct !{!156, !30}
!157 = distinct !{!157, !30}
!158 = distinct !{!158, !30}
!159 = !{!32, !7, i64 366}
!160 = distinct !{!160, !30}
!161 = distinct !{!161, !30}
!162 = distinct !{!162, !30}
!163 = distinct !{!163, !30}
!164 = !{!32, !11, i64 200}
!165 = distinct !{!165, !30}
!166 = distinct !{!166, !30}
!167 = !{!32, !11, i64 160}
!168 = distinct !{!168, !30}
!169 = distinct !{!169, !30}
!170 = distinct !{!170, !30}
!171 = distinct !{!171, !30}
!172 = !{!173, !11, i64 0}
!173 = !{!"rtvec_def", !11, i64 0, !7, i64 8}
!174 = distinct !{!174, !30}
!175 = distinct !{!175, !30}
!176 = distinct !{!176, !30}
!177 = !{!178, !11, i64 0}
!178 = !{!"VEC_df_mw_hardreg_ptr_base", !11, i64 0, !11, i64 4, !7, i64 8}
!179 = !{!180, !11, i64 12}
!180 = !{!"df_mw_hardreg", !6, i64 0, !11, i64 8, !11, i64 10, !11, i64 12, !11, i64 16, !11, i64 20}
!181 = !{!180, !11, i64 16}
!182 = !{!180, !6, i64 0}
!183 = !{!180, !11, i64 20}
!184 = distinct !{!184, !30}
!185 = !{!28, !11, i64 96}
!186 = distinct !{!186, !30}
!187 = distinct !{!187, !30}
!188 = distinct !{!188, !30}
!189 = distinct !{!189, !30}
!190 = distinct !{!190, !30}
!191 = distinct !{!191, !30}
!192 = !{!113, !6, i64 0}
!193 = distinct !{!193, !30}
!194 = distinct !{!194, !30}
!195 = distinct !{!195, !30}
!196 = distinct !{!196, !30}
!197 = distinct !{!197, !30}
!198 = distinct !{!198, !30}
!199 = distinct !{!199, !30}
!200 = !{!201, !11, i64 0}
!201 = !{!"VEC_df_ref_base", !11, i64 0, !11, i64 4, !7, i64 8}
!202 = !{!33, !6, i64 8}
!203 = !{!33, !6, i64 16}
!204 = distinct !{!204, !30}
!205 = distinct !{!205, !30}
!206 = distinct !{!206, !30}
!207 = distinct !{!207, !30}
!208 = distinct !{!208, !30}
!209 = distinct !{!209, !30}
!210 = distinct !{!210, !30}
!211 = distinct !{!211, !30}
!212 = distinct !{!212, !30}
!213 = distinct !{!213, !30}
!214 = distinct !{!214, !30}
!215 = distinct !{!215, !30}
!216 = distinct !{!216, !30}
!217 = distinct !{!217, !30}
!218 = distinct !{!218, !30}
!219 = !{!33, !11, i64 24}
!220 = distinct !{!220, !30}
!221 = distinct !{!221, !30}
!222 = distinct !{!222, !30}
!223 = distinct !{!223, !30}
!224 = distinct !{!224, !30}
!225 = distinct !{!225, !30}
!226 = distinct !{!226, !30}
!227 = distinct !{!227, !30}
!228 = distinct !{!228, !30}
!229 = distinct !{!229, !30}
!230 = distinct !{!230, !30}
!231 = distinct !{!231, !30}
!232 = !{!201, !11, i64 4}
!233 = distinct !{!233, !30}
!234 = !{!178, !11, i64 4}
!235 = distinct !{!235, !30}
!236 = distinct !{!236, !30}
!237 = distinct !{!237, !30}
!238 = distinct !{!238, !30}
!239 = !{!78, !6, i64 320}
!240 = distinct !{!240, !30}
!241 = distinct !{!241, !30}
!242 = distinct !{!242, !30}
!243 = distinct !{!243, !30}
!244 = distinct !{!244, !30}
!245 = !{i64 0, i64 4, !67, i64 8, i64 8, !5}
!246 = !{i64 0, i64 8, !5}
!247 = !{!248, !11, i64 48}
!248 = !{!"edge_def", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !18, i64 56}
!249 = distinct !{!249, !30}
!250 = !{!251, !11, i64 0}
!251 = !{!"", !11, i64 0, !6, i64 8}
!252 = !{!253, !11, i64 0}
!253 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !7, i64 8}
!254 = distinct !{!254, !30}
!255 = distinct !{!255, !30}
